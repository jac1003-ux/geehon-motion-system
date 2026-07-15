# Pose Interaction Profiles 设计规范

## 1. 目标

为 Geehon Motion System 增加一个独立于具体音频效果器的姿态交互层。第一阶段支持 `Singer` 与 `Instrumentalist` 两种表演者 Profile，共用一个 MediaPipe Pose Landmarker，并输出稳定、可校准、可安全失效的标准化身体特征。

本阶段只完成识别、特征提取、交互状态和独立测试，不把姿态数据绑定到 Vocoder、Vocal Chop、Tremolo 或后续效果器参数，也不修改现有手部映射。

## 2. 固定决策

- 第一阶段 Profile：`Singer`、`Instrumentalist`。
- 两种 Profile 共用一个 Pose Landmarker，不同时运行 Face 和 Pose 模型。
- 摄像头构图为头部到髋部，兼容坐姿和站姿，不要求全身入镜。
- Profile 由用户手动选择，演出中不自动切换。
- UI `Arm`、有效控制区域和可选 MIDI 脚踏 Clutch 共同决定是否输出控制数据。
- MIDI 脚踏采用按住生效、松开停止的 momentary 行为，并支持 MIDI Learn。
- 校准时保持自然姿势 3 秒。
- 显示镜像画面，但内部保持真实 Left/Right 骨骼标签；正方向代表表演者自身右侧。
- 左右、倾斜、角度和距离类特征使用 `-1.0..1.0`；能量、置信度和 Macro 使用 `0.0..1.0`。
- 识别丢失后保持最后有效值 300 ms，再用 800 ms 平滑回到中立值。
- 同时保留 Direct Raw Feature 和 Semantic Macro 两层接口。
- 第一阶段 Macro 仅保留接口和 UI，占位输出固定为 `0.0`，不建立最终声音映射。

## 3. 系统边界

### 包含

- 本地 `jweb` Pose 页面和摄像头选择。
- 33 个 Pose landmark 的结构化输出。
- 核心身体点置信度计算。
- 3 秒中立姿势校准。
- 姿态特征提取、归一化、死区和平滑。
- Profile 状态、Arm、控制区域和 MIDI Clutch。
- Tracking Lost 状态机。
- 镜像摄像头、骨骼、控制区域、状态和数值反馈。
- 独立 Demo 与结构/接口测试。

### 不包含

- 姿态到具体效果器参数的最终映射。
- 自动判断用户正在唱歌还是演奏乐器。
- Face blendshape、嘴型或表情控制。
- 同时运行多个视觉模型。
- 对现有 Hand Profile 的重写。
- 接入 `mt_portfolio_main.maxpat`。
- 将视觉识别或 DSP 导出到 RNBO、VST3、AU 或独立应用。

## 4. 模块结构

### `mt_control_pose_jweb.maxpat`

职责：

- 加载项目相对路径中的 Pose HTML 页面。
- 列出和选择摄像头。
- 输出镜像预览和 Pose 骨骼。
- 接收 `jweb` 返回的身体 landmark 数据。
- 将每帧数据写入实例安全的本地 dictionary。
- 输出摄像头错误、模型加载状态和原始帧状态。

该模块不计算音乐控制参数，也不负责 Profile。

### `mt_pose_feature_engine.maxpat`

职责：

- 读取标准化 Pose frame。
- 验证头部、肩膀和髋部核心点。
- 计算身体尺度和相对姿态。
- 输出 Direct Raw Features。
- 执行死区、范围限制和时间平滑。

该模块不决定数据是否被送往效果器。

### `mt_interaction_profile.maxpat`

职责：

- 管理 `Singer` / `Instrumentalist` Profile。
- 管理校准、Arm、控制区域和 MIDI Clutch。
- 管理 Tracking Lost 状态机。
- 生成统一的结构化输出 dictionary。
- 保留四个 Semantic Macro 输出。

### `mt_control_pose_demo.maxpat`

职责：

- 独立展示完整 Pose Interaction 系统。
- 提供所有测试控件、状态和数值反馈。
- 在确认前不连接音频模块或 Main patch。

## 5. Landmark 与特征定义

核心 landmark：

- Nose：0
- Left / Right Ear：7 / 8
- Left / Right Shoulder：11 / 12
- Left / Right Hip：23 / 24

定义：

- `shoulder_center`：左右肩中点。
- `hip_center`：左右髋中点。
- `shoulder_width`：左右肩距离，作为主要身体尺度。
- `torso_length`：肩中点到髋中点距离，作为备用身体尺度。
- `body_scale`：有效肩宽与躯干长度组合，防止用户离摄像头远近改变动作灵敏度。

输出特征：

| 字段 | 范围 | 定义 |
| --- | --- | --- |
| `torso_sway` | -1..1 | 当前肩/髋中心相对校准中心的水平位移 |
| `torso_lean` | -1..1 | 肩中点相对髋中点的水平偏移 |
| `shoulder_tilt` | -1..1 | 左右肩高度差相对肩宽的比值 |
| `head_turn` | -1..1 | Nose 相对耳部或肩部中心的水平偏移估计 |
| `body_proximity` | -1..1 | 当前肩宽相对校准肩宽的变化 |
| `motion_energy` | 0..1 | 核心 landmark 归一化速度的短时平均 |
| `tracking_confidence` | 0..1 | 核心 landmark visibility / presence 的组合值 |

所有左右类数值中：

- `0` 表示校准中立姿势。
- 正值表示表演者自身右侧。
- 负值表示表演者自身左侧。

## 6. Profile 行为

两个 Profile 始终计算并输出全部 Raw Features。Profile 只负责：

- 在 UI 中突出推荐特征。
- 在未来映射层中提供不同默认映射模板。
- 保存各自的校准数据和状态。

### Singer

推荐特征：

- `torso_sway`
- `torso_lean`
- `shoulder_tilt`
- `motion_energy`
- `body_proximity`

`head_turn`继续输出，但不是默认主控。嘴、下颌和面部表情不参与控制。

### Instrumentalist

推荐特征：

- `head_turn`
- `torso_sway`
- `shoulder_tilt`
- `motion_energy`
- `body_proximity`

手腕、手指和手部形状不参与控制，避免与键盘、吉他、弦乐器等主要演奏动作冲突。

## 7. 校准

校准总时长固定为 3 秒：

1. 前 1 秒为准备阶段，UI 显示保持自然姿势。
2. 后 2 秒采集有效 Pose frame。
3. 对每个中立特征使用中位数，避免单帧抖动和偶然动作污染基准。
4. 保存肩宽、躯干长度、肩/髋中心和头部中立位置。
5. Profile 分别保存校准值，坐姿和站姿切换后需要重新校准。

以下情况校准失败：

- 核心 landmark 不完整。
- 有效帧比例不足。
- 用户未处于控制区域。
- 身体尺度变化过大，说明用户在校准过程中移动明显。

失败时保留上一组有效校准，不输出半完成的新基准。

## 8. 控制区域与激活条件

画面叠加一个中央控制区域。区域用于确认表演者处于可稳定识别的位置，不作为声音参数。

第一版控制区域固定为归一化画面的中央范围：

- 水平：`0.15..0.85`
- 垂直：`0.10..0.90`
- 以肩中点和髋中点是否同时处于区域内作为判断依据。

最终有效状态：

```text
active =
  ui_arm
  AND calibrated
  AND tracking_valid
  AND inside_control_zone
  AND clutch_gate
```

`clutch_gate`规则：

- 未连接或未启用 MIDI 脚踏时固定为 `1`。
- 启用脚踏后，踏板按住为 `1`，松开为 `0`。
- 脚踏只控制输出门，不停止摄像头和特征计算。

离开控制区域时，使用与 Tracking Lost 相同的平滑回中立逻辑，不瞬间跳变。

## 9. Tracking Valid 与状态机

为避免置信度在阈值附近反复开关，Tracking Valid 使用进入/退出迟滞：

- 核心点平均置信度达到 `0.60` 并持续 150 ms 后进入 `VALID`。
- 核心点平均置信度低于 `0.45` 并持续 100 ms 后离开 `VALID`。
- `0.45..0.60` 为迟滞区，保持当前 Valid 状态。

状态：

```text
NO_CAMERA
POSITION
UNCALIBRATED
CALIBRATING
READY
ACTIVE
HOLD
RETURN
LOST
```

失效流程：

```text
ACTIVE
  -> HOLD 300 ms
  -> RETURN 800 ms
  -> LOST / NEUTRAL
```

如果在 `HOLD` 内恢复，使用短 ramp 接回实时值。如果在 `RETURN` 或 `LOST` 后恢复，先确认连续有效帧，再平滑接回，避免瞬时跳跃。

重新接回实时数据的 ramp 固定为 200 ms。

## 10. 平滑、死区与范围

- 所有特征先按校准身体尺度归一化，再进入死区和范围限制。
- 左右类中立区固定为归一化输出的 `0.04`，用于过滤自然站姿微动。
- 姿态位置和角度使用 80 ms 平滑，避免摄像头抖动。
- `motion_energy`使用 250 ms 独立时间窗口，不直接复用姿态平滑值。
- 所有输出在规定范围内 clip，不允许异常 landmark 生成超范围参数。
- 第一版的内部时间常数作为工程默认值，不在演出 UI 中暴露；测试后再决定是否加入 Advanced 设置。

## 11. 镜像与方向

- 用户看到水平镜像的视频，行为与普通自拍视频一致。
- 骨骼的 Left / Right 名称仍按表演者解剖方向保存。
- 特征方向在镜像转换后统一：表演者向自己的右侧移动时输出正值。
- 镜像只影响显示和坐标解释，不改变 outlet 顺序或 Profile 接口。

## 12. Max 接口合同

建议外部输入：

1. `enable / arm`
2. `profile`：`singer` 或 `instrumentalist`
3. `calibrate` bang
4. `clutch`：0 / 1，可由 MIDI Learn 或外部控制输入

建议外部输出：

1. Raw Feature Dictionary
2. `active` 0 / 1
3. `tracking_confidence` 0..1
4. `Energy` 0..1，第一阶段固定 0
5. `Space` 0..1，第一阶段固定 0
6. `Texture` 0..1，第一阶段固定 0
7. `Transform` 0..1，第一阶段固定 0

Raw Feature Dictionary 字段：

```text
profile
state
calibrated
tracking_valid
inside_control_zone
armed
torso_sway
torso_lean
shoulder_tilt
head_turn
body_proximity
motion_energy
```

约束：

- dictionary 使用实例安全名称，不依赖固定全局 `posedict`。
- outlet 的水平位置和编号必须与接口合同一致。
- 自动测试锁定 inlet / outlet 数量、顺序和主要字段。
- UI 数值显示从同一标准输出读取，不复制第二套计算逻辑。

## 13. Presentation UI

独立 Demo 的用户界面包括：

- Singer / Instrumentalist 分段选择。
- 摄像头菜单、Reload 和摄像头状态。
- Arm、Calibrate。
- MIDI Learn、脚踏连接和按下状态。
- 镜像摄像头画面、Pose 骨骼和控制区域。
- Tracking Confidence。
- 当前状态：Position / Calibrating / Ready / Active / Hold / Lost。
- 全部 Raw Feature 数值反馈。
- 四个 Macro 占位反馈，标记为 `Unassigned`。

UI 使用当前 Herbal Editorial 设计语言，但第一版优先保证识别、状态和接口正确。最终 PNG 皮肤在独立功能测试通过后制作。

## 14. 资源与许可证

第一阶段只引入 `jweb-pose-landmarker-main` 中运行必需的 HTML、JavaScript、CSS 和参考 patch，不把六个 ZIP 全部复制到正式运行目录。

来源代码使用 GNU GPL v3：

- 保留原始 `LICENSE`。
- 在 `docs/dependencies.md` 中记录来源、修改内容和运行时网络依赖。
- 当前作品集仓库继续遵守相应开源要求。
- 如果未来需要闭源商业发行，重新评估许可证，并考虑重写视觉桥接层或使用许可兼容实现。

MediaPipe JavaScript 库和模型目前仍由网络地址加载。离线本地化属于后续可靠性阶段，不在第一版范围内。

## 15. 错误处理

- 无摄像头：显示 `NO_CAMERA`，所有控制输出回中立。
- 摄像头被占用：显示明确错误，不自动反复重启。
- 网络/模型加载失败：显示模型加载错误，允许用户 Reload。
- 核心身体点不可见：进入 HOLD / RETURN，而不是输出异常数值。
- 校准失败：保留上一组有效校准。
- Profile 切换：不重启摄像头，但切换到对应校准；没有该 Profile 校准时进入 `UNCALIBRATED`。
- MIDI 设备断开：如果该场景已启用脚踏 Clutch，则立即关闭 `clutch_gate` 并显示警告；用户必须手动关闭脚踏模式后才能恢复无脚踏运行，避免断线时意外激活控制。

## 16. 验证计划

### 静态检查

- 所有 `.maxpat` JSON 可解析。
- 无重复 object id、无越界 patchline。
- 所有项目资源使用相对路径。
- Pose dictionary 字段完整。
- inlet / outlet 顺序与接口合同一致。
- 不存在固定用户路径或固定全局 dictionary 串台。

### Max 手动测试

1. 坐姿与站姿均可完成校准。
2. 表演者自身右移输出正值，镜像显示不改变语义。
3. Singer / Instrumentalist 切换不重启摄像头。
4. 两种 Profile 分别保存校准值。
5. 控制区域内外状态正确。
6. UI Arm 双向反馈正确。
7. MIDI Learn 后脚踏按住生效、松开停止。
8. 脚踏模式启用时断开 MIDI 设备，`clutch_gate` 立即关闭，且不会自动恢复激活。
9. 未校准时不输出 active 控制。
10. 遮挡身体后保持 300 ms，再于 800 ms 内回中立。
11. 重新识别时不发生数值跳变。
12. Max Console 无重复摄像头、固定 dictionary 或路由错误。
13. 连续运行 10 分钟无明显内存增长和摄像头重启。

### 人体工学记录

分别使用 Singer 与 Instrumentalist Profile 完成测试，记录：

- 动作与数值关系是否直观。
- 是否干扰演唱或乐器操作。
- 10 分钟内肩膀、颈部和躯干疲劳程度。
- 控制是否稳定、是否存在误触。
- 后续绑定声音时变化是否足够明显和有趣。

## 17. 实施顺序

1. 在独立功能分支写入本设计与依赖记录。
2. 引入最小 Pose web 运行资源并建立项目相对路径。
3. 完成 `mt_control_pose_jweb.maxpat`。
4. 完成特征引擎和校准逻辑。
5. 完成 Profile、Arm、控制区域、Clutch 和失效状态机。
6. 完成独立 Demo 和自动测试。
7. 由用户进行摄像头、坐姿、站姿和交互测试。
8. 功能确认后制作 Herbal Editorial UI。
9. 另行设计姿态到效果器的最终映射。
10. 最后才接入 `mt_portfolio_main.maxpat`。

## 18. 完成标准

第一阶段只有在以下条件全部满足后才视为完成：

- Singer 和 Instrumentalist 均可独立校准和运行。
- 摄像头、镜像、方向、Profile 和脚踏状态清楚可见。
- Raw Feature 输出稳定、范围正确、无明显空闲抖动。
- Tracking Lost 不产生参数突跳。
- 四个 Macro 接口存在但未绑定效果器。
- 现有 Hand、Source、FX 和 Main patch 行为不受影响。
- 自动检查通过，用户完成实际摄像头测试。
