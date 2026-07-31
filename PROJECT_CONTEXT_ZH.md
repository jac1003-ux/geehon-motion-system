# Geehon Motion System 项目接力上下文

更新日期：2026-07-31

## 后续任务怎么用

1. 新任务先读本文件，不需要回放完整聊天记录。
2. 用户当前指令和磁盘上的实际文件始终优先于本文件。
3. 只检查本次任务直接相关的 patch、脚本和资源。
4. 完成实质修改后，更新“当前状态”和“下一步”。

可直接对 Codex 说：

> 按项目上下文继续。只读本次直接相关文件，不回溯整段聊天，不改已经通过测试的 DSP 或人工理线。修改后先做静态检查，Max 运行测试交给我反馈。

## 项目目标

为英国音乐科技研究生申请制作一套基于 Max/MSP 的手势交互音乐处理系统。重点是稳定的模块化音频链路、直观的手势控制和可作为作品集展示的商业化 UI。

## 已确认架构

```text
Mic / File / Granular
        |
Source Mixer / Dry Bus
        |
        +-> Vocoder
        +-> Bitcrusher
        +-> Feedback Delay
        +-> Multiband Filter V2
        |
FX Return Mixer
        |
Master Output
        |
24-bit WAV Record / Export
```

- Dry 只来自 Source Mixer。
- FX 作为并联纯 Wet Return，不从效果器旁路泄漏干声。
- 正式主链路中的 FX 不保留 Test Input 或独立 `ezdac~`。

## 最终模块选择

- Input：Mic、File、Granular。
- FX：Vocoder、Bitcrusher、Feedback Delay、Multiband Filter V2。
- 已移出最终方案：Talkbox、Vocal Chop、Tremolo。
- Mic 内含 Noise Gate 和基于 `cascade~` 的七段 EQ 编辑器。
- 所有模块 enable 与 mixer 对应开关应双向同步。

## 手势方案

- 最终只使用手部，不加入面部或躯干控制。
- 结合 MediaPipe Hand Landmarker 与 Gesture Recognizer。
- 物理右手：连续控制参数；物理左手：张开控制、握拳保持。
- Gesture 页可选择：Off、Vocoder、Bitcrusher、Feedback Delay、Multiband Filter。
- 摄像头保持 4:3 原比例；活动区固定在画面右侧并显示完整虚线边框。
- 切换目标前先握拳保持，切换后再张开，未选中的 FX 保留最后参数。
- 注意镜像显示容易造成左右手误判；内部路由以物理左右手为准。

## UI 设计系统

- 五个页面：Perform、Source、FX、Gesture、Master。
- 品牌：JUHUA Motion Instrument。
- 配色：清爽白、茶叶绿、菊花黄；圆润、安静、轻量、细字体。
- PNG 负责背景和视觉分区，Max 原生对象负责真实交互。
- 修改 PNG 时使用新文件名，避免 Max 图片缓存继续显示旧图。
- Perform 是快速总览；Source、FX、Gesture、Master 用于详细操作。
- Master 只保留 Master Output 与 Record/Export，不重复 Source Mixer 或 EQ。

## 当前状态

- 稳定功能基线提交：`f0a669f`。
- 当前 UI 分支：`ui/commercial-redesign`。
- 2026-07-28：修复 FX Return Mixer 后，全部音频模块运行测试通过。
- 2026-07-29：功能、音频、手势和 preset 测试通过。
- 已加入 24-bit WAV Record/Export；UI 整理后仍需最终运行复测。
- 用户负责 Max、摄像头和音频运行测试；Codex 负责静态 JSON、patchline 和接口检查。

## 当前未完成任务

1. Perform 背景换成真正干净的新图，不包含烘焙进去的 `MASTER / UTILITIES`、`7-BAND EQ`、`MASTER RECORD`、`OUTPUT` 等旧内容。
2. Perform 页面增加真实可点击的 `OPEN EQ` 按钮，连接现有 Mic EQ 打开逻辑。
3. FX 页面解决详细效果器与 FX Return Mixer 重叠、裁切和尺寸不统一；允许压缩或重做 Return Mixer 的展示 UI，但不要破坏已通过测试的 DSP。

在继续上述 UI 工作前，必须先检查当前磁盘文件和 Git diff，不能假设前一次修改已经成功。

## 关键路径

- 主 patch：`patchers/mt_portfolio_main.maxpat`
- 输入：`patchers/inputs/`
- 效果器：`patchers/effects/`
- Mixer：`patchers/mixers/`
- 手势：`patchers/control/`
- JavaScript：`javascript/`
- UI 资源：`assets/ui/`
- Perform UI 脚本：`scripts/build_perform_ui.js`
- 静态检查：`tests/test_maxpat_integrity.js`
- Max Project：`geehon-motion-system.maxproj`

## 易错点

- 应从 `geehon-motion-system.maxproj` 打开；直接打开主 patch 可能导致 bpatcher 搜索路径失败。
- 主 patch 依赖：
  `declare -path inputs -path mixers -path effects -path control -path dsp -path ../javascript -path ../assets/ui`
- Max 的 inlet/outlet 编号受横向位置影响，移动前必须核对父子接口。
- 未经明确要求，不移动用户手工整理过的对象和 patch cord。
- 模块实例资源使用 `#0` 隔离。
- 避免 Max 不存在或报红的对象；以 Console 实际结果为准。
- 不使用巨型 `thispatcher` 消息；命令组保持在 20 条以内，防止 stack overflow。
- 不自动打开、关闭 Max，除非用户要求。

## 最小工作流程

1. 明确一个修改范围。
2. 读取当前 Git 状态和直接相关文件。
3. 做最小修改，不重写已通过测试的链路。
4. 运行 JSON、patchline、接口和 `git diff --check` 检查。
5. 把运行测试步骤交给用户，并按反馈继续。

## 下一步

先完成“当前未完成任务”的三个 UI 修复，再进行 Record/Export、页面切换、音频与手势的最终回归测试。
