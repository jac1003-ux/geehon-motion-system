# Geehon Motion System

[English README](README.md)

Geehon Motion System 是一个处于作品集原型阶段的 Max/MSP 手势音乐系统。它将模块化音频输入、并联效果器、`jweb` 手部追踪和分页式乐器界面组合在一起，用于现场演示和音乐科技研究生作品集。

## 当前阶段

本仓库提供的是可以运行和继续开发的原型，并非已经封装完成的独立软件或商业插件。当前版本面向 Max 9，用于作品集展示、课程测试，以及后续对手势与声音参数映射的人体工学研究。

## 主要功能

- Mic 输入：支持单声道通道或立体声通道对选择
- File 输入：支持拖放、文件选择、波形点击定位、循环播放和时间反馈
- Granular 输入：支持录音、样本加载、预设、波形位置、密度、粒子长度、音高、散布、粒子增益和纹理增益
- 三路 Source Mixer，并提供独立 Dry Bus
- 并联效果器：pfft 频谱 Vocoder、实时 Vocal Chop、立体声 Tremolo
- 在 Max `jweb` 中运行的 MediaPipe 手部追踪
- 独立的 MediaPipe Pose 交互原型，提供 Singer 与 Instrumentalist 两套校准基准
- 失追时的 Hold、Return、Lost 与平滑重连保护
- 可选 MIDI CC 脚踏 clutch，并包含设备掉线保护
- Source、FX、Gesture、Master 四页式界面
- 关键开关与参数使用短 ramp，减少爆音和点击声

## 音频链路

```text
Mic / File / Granular
        |
        v
   Source Mixer
        |
        +---------------------------> Dry Return
        +---> pfft Vocoder ---------> Vocoder Return
        +---> Live Vocal Chop ------> Chop Return
        +---> Stereo Tremolo -------> Tremolo Return
                                         |
                                         v
                                  FX Return Mixer
                                         |
                                         v
                                     Main Out
```

各效果器输出独立的处理声层。输入原声只由 Dry Return 控制，避免效果器 bypass 时把隐藏的干声重复送入总线。

## 打开方式

1. 下载或克隆完整仓库，不要把单独的 `.maxpat` 从项目目录中拿出来运行。
2. 安装 Max 9。
3. 打开 `geehon-motion-system.maxproj`。
4. 在 Max Project 窗口中打开 `mt_portfolio_main.maxpat`。
5. 若要单独测试第一阶段 Pose 控制层，在同一 Project 窗口中打开 `mt_control_pose_demo.maxpat`。
6. macOS 询问摄像头权限时，允许 Max 使用摄像头。
7. Hand 或 Pose 模块加载 MediaPipe 库和模型时需要网络连接。
8. 打开 DSP，启用至少一个输入源，再提高对应 Source 和 FX Return 的增益。

## 当前手势映射

| 手势数据 | 当前控制目标 |
| --- | --- |
| Hand X | Tremolo Rate |
| Hand Y | Tremolo Depth |
| Pinch Distance | Tremolo Stereo Spread |
| Palm Width | 暂时预留 |

这些映射目前只是可运行原型。后续会从基准姿势、活动范围、疲劳程度、参数曲线和声音辨识度等方面继续评估，不把当前连接直接视为最终的人体工学方案。

## Pose 交互第一阶段

独立 Pose Demo 有意停在效果器映射之前，先输出经过校准和安全状态处理的人体特征，供下一阶段人体工学设计使用：

- **Singer：** 单独保存自然基准姿势，目标是在演唱时无需占用双手。
- **Instrumentalist：** 单独保存受乐器演奏姿势影响的自然基准。
- **失追保护：** 短暂保持最后数值，随后回到中性；重新识别时平滑接回实时数据。
- **可选脚踏 clutch：** MIDI Learn 可学习一个 CC 脚踏；设备掉线会关门，重新插入也不会自动重新激活。

`Energy`、`Space`、`Texture`、`Transform` 四个宏输出已经预留，但目前固定为 0 并明确标记为 `Unassigned`。第一阶段 Pose 原型没有接入 `mt_portfolio_main.maxpat`，也没有连接任何音频效果器。

## 文件结构

```text
geehon-motion-system.maxproj   正式 Max Project 入口
patchers/                      当前运行所需的 Max patch
  inputs/                      Mic、File、Granular 输入模块
  mixers/                      Source Mixer 与 FX Return Mixer
  effects/                     Vocoder、Vocal Chop、Tremolo
  control/                     手势追踪与控制路由
  dsp/                         Granular voice 与 pfft 处理核心
assets/ui/                     PNG 皮肤、可编辑 SVG 和 Logo
web/hand-landmarker/           jweb 页面与 MediaPipe 桥接代码
web/pose-landmarker/           Pose jweb 页面、运行代码、许可证与模型桥接
javascript/                    Max 运行时数学、校准、状态机和 MIDI 安全逻辑
media/                         可选本地音频，默认不提交 Git
tests/                         Patch 与仓库结构检查
scripts/                       维护脚本
docs/                          架构、依赖和设计过程文档
archive/                       旧版本和实验模块，不参与正式运行
```

## 开发检查

以下检查需要 Node.js，但运行乐器本身不需要 Node.js。

```bash
node tests/test_maxproj.js
node tests/test_maxpat_integrity.js
node tests/test_repository_structure.js
node tests/test_hand_control_interface.js
node tests/test_pose_feature_math.js
node tests/test_pose_interaction_state.js
node tests/test_pose_patch_interfaces.js
node tests/test_pose_demo.js
```

`tests/` 中还包含各个 UI 模块的独立检查。

## 依赖与来源

音频部分主要使用 Max/MSP 原生对象。Hand 与 Pose 追踪分别基于对应的 `jweb` Landmarker 项目进行适配，并在运行时加载 MediaPipe Tasks Vision。详细来源、网络要求和许可证说明见 [docs/dependencies.md](docs/dependencies.md)。

## 当前限制

- Hand 与 Pose 追踪目前依赖在线 MediaPipe CDN 与模型资源。
- 手势参数映射尚未完成人体工学定稿。
- Pose 的 Singer/Instrumentalist 长时间使用、疲劳表现和 MIDI 硬件行为仍需完成手工测试记录。
- 当前还没有封装为 VST、Audio Unit、Max for Live Device 或独立 App。
- 更换声卡、摄像头和电脑后仍需进行实际音频与摄像头测试。

## 项目文档

- [系统架构](docs/architecture.md)
- [依赖与来源](docs/dependencies.md)
- [设计过程记录](docs/design/)
- [版本记录](CHANGELOG.md)
