# Geehon Motion System 项目接力上下文

更新日期：2026-08-03

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
     Vocoder
        |
    Bitcrusher
        |
Multiband Filter V2
        |
 Feedback Delay
        |
Master Output
        |
24-bit WAV Record / Export
```

- Dry 只来自 Source Mixer。
- FX 固定串联顺序：Vocoder → Bitcrusher → Multiband Filter V2 → Feedback Delay。
- Vocoder 使用模块内置干湿旁路；其余纯 Wet 模块由 Main 中的 `mt_serial_bypass` 以 20 ms 平滑旁路，关闭任一 FX 不会截断后续声音。
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
- 不依赖 MediaPipe 的 Left/Right 标签分配角色；浏览器以 `Hand0/Hand1` 保留独立检测，Left/Right 仅用于旧接口兼容。
- 可见画面右侧参数区内的手控制 X/Y/Pinch；左侧开关区依次以食指、食指+中指、前三指、四指、五指选择 Vocoder、Bitcrusher、Multiband、Delay、All Effects，握拳进入 HOLD。
- 数字手势稳定 300 ms 后锁定目标并恢复参数跟随；握拳稳定 100 ms 后冻结。开关手离开区域不会取消已锁定目标，参数手丢失时保留最后参数。
- 两区之间保留 10% 缓冲带；两手同区或位置不明确时冻结本帧更新。
- 区域稳定、数字/握拳确认和参数平滑均按帧时间戳计算，避免行为随摄像头 FPS 改变。
- Gesture 页新增即时 `GESTURE READ: 0–5` 读数；数字稳定确认后六段目标条自动跳到对应项，握拳 0 跳到 Hold。目标条仍可手动后备。
- 摄像头保持 4:3 原比例；参数区与开关区分别显示完整虚线边框和标签。
- 数字 1–4 只更新所选 FX；数字 5 同时更新四个 FX，未选中的 FX 保留最后参数。效果器 Enable/Bypass 仍由主界面独立控制。

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
- 2026-08-03：完成总 Patch `patchers/mt_portfolio_main.maxpat` 的 Patching View 整理。根层 138 个对象、203 条连接按 Source / Gesture / Serial FX / Perform Mirrors / Record-Master / Page Assets 分区；42 条连接保持纯直线，其余全部为正交折线，对象重叠为 0。内嵌 `pm-page-router` 的 35 个对象改为 5 个页面列，Trigger 出口按执行顺序直落到各消息块，再从列侧收束到统一出口；其余 5 个内嵌路由只修正旧斜线。新增 `test_main_patching_layout.js` 递归锁定对象数、连接数、端点、Presentation 和非布局结构，仅允许 `patching_rect` 与 `midpoints` 改变。Main、接口、全仓 maxpat 与 Max Project 静态检查通过；全量 31 项测试中 29 项通过，余下为 `test_master_monitor.js` 缺少顶层 `patcher.rect` 与既知 `test_mic_ui.js` PNG dependency cache，均不在本次总 Patch 理线改动范围内。待用户从 `.maxproj` 重开 Main 做人眼与声音验收。
- 2026-08-03：`p Mic_control` 已由用户在第一轮理线基础上人工精修，当前人工版是布局参考，后续不得被旧版自动布局覆盖。接口与完整性检查此前已通过；`test_mic_ui.js` 仍为修改前已有的 `PNG missing from dependency cache`。
- 2026-08-03：`p Mic_input`、用户人工精修后的 `p Mic_eq` 与 `p Mic_control` 是受保护的理线基准。理线规章 v1：对象摆放先检查完整 inlet/outlet 拓扑，允许下游错位，优先让连接从对应端口纯竖直向下；纯竖线优先于同层水平对齐。多输入/多输出不套固定主端口规则；inlet/outlet 箭头的物理编号顺序属于外部接口，绝不能交换。若纯竖线穿过无关对象，不专门加折点绕行；反馈或反向线先按就近最短处理，实测后再决定是否改走外围。纯竖线数量相同时优先线路更短，允许线与线交叉。所有非纯直线连接必须先按 Command+Y 整理，再按空间邻近关系把位置接近、方向一致的水平段或竖直段压到同一坐标；不按功能名称预设总线，也不强迫相距较远的线合并。间距采用自适应：同类对象尽量落在同一网格线，重复结构间距误差不超过一个 Max 小网格，功能组留白约为组内间距两倍，对象绝不重叠。不同颜色允许共线重叠；颜色只编码功能类型、采用全项目统一色表，且不限于现有蓝、橙、绿三色。
- 2026-08-03：理线规章 v1 首次试跑于 `patchers/control/mt_control_hand_jweb.maxpat`：只改对象坐标和非直线连接的正交折点，未改端点、对象、端口编号、Presentation 或功能。外层按 `jweb → p Hand_control → 数值/外部输出` 排成主干；内层将 Hand X、Hand Y、Pinch、Palm、Tracking 划为纵向处理链。`test_hand_control_interface.js` 与 `test_maxpat_integrity.js` 通过，待用户在 Max 中进行视觉验收并决定是否继续收束反馈/初始化支路。
- 2026-08-03：补充硬规则：Patching View 中任何两个对象矩形均不得相互覆盖；连线可以穿过无关对象。已审计 Main 的 16 个递归依赖及 `p Mic_input`、`p Mic_eq`、`p Mic_control`，对象重叠均为 0。已人工精修 Patch 只做碰撞分离并保留既有 patchline 折点；其余 Patch 完成对象分离和邻近收束。29 项静态测试中 28 项通过，唯一失败仍是既知 `test_mic_ui.js` 的 PNG dependency cache 断言。
- 2026-08-03：重新整理 `mt_record_export_editor.maxpat`。六路命令 `route` 与 Record/Stop/Preview/Reset/New/Export Trigger 逐端口纯竖连接；各 Trigger 的第一层目标按 outlet 对齐，窄目标同排、宽目标采用阶梯下沉。`pak f f` 的两路上游按 inlet 镜像对齐。保持 158 个对象、所有端点、Presentation 与功能不变，对象碰撞为 0；Record Editor、Main 与全仓完整性静态检查通过，待用户在 Max 中视觉验收。
- 2026-08-03：整理 Perform 摄像头底部 X/Y/Pinch 反馈：保留原有三个只读 `flonum` 和数据连线，改为 24 px 浅绿数值卡、深绿文字并隐藏默认黑色三角/下划线。生成脚本、Main 和回归断言已同步，全量静态检查通过，待 Max 重载页面确认视觉。
- 2026-08-03：修复 Perform v7 实机首次加载的 Master Monitor Console 错误：`line~` 改为 Max JSON 正确的 `newobj` 声明，左右声道 Peak 合并由无效的 `zl max` 改为原生 `maximum`。同时删除 Granular Performance 中未连接任何数据的静态深绿占位条。生成源、现有 patch、SVG/PNG 和回归测试已同步；全量静态检查通过（42 maxpat / 87 patcher / 3804 boxes / 3930 patchlines），待 Max 重开项目确认 Console 清除。
- 2026-08-03：Perform v7 已接入 Main，背景升级为 `perform_shell_v4.svg/.png`。顶栏只保留一个持久 DSP 开关；File 复用模块原有 0–1 播放头并新增只读进度出口；Granular 的 Play/Preset/Wet/Density/Size/Pitch、手势 0–5/Target/X/Y/Pinch/状态、Master Monitor 的 Gain/Mute/Peak 均通过现有对象或 `pattr @thru 2` 镜像，没有复制 DSP 或参数状态。L/R 表继续取唯一 Master Monitor 输出，Record 仍为 Post-FX / Pre-Monitor。全量静态检查通过（42 maxpat / 87 patcher / 3804 boxes / 3930 lines / 30 project patchers），待 Max 实机验收交互与视觉叠放。
- 2026-08-03：Master v4 已接入 Main。新增独立 `patchers/mixers/mt_master_monitor.maxpat`：双声道 `live.gain~` Monitor Level、20 ms 平滑 Mute、L/R 输出表与 Peak；共享 DSP 仍复用 Main 的 `ezdac~`。试听链改为 `Live/Preview → Master Monitor → Perform Meter / DAC`，录音仍从最终 FX 直接进入 Record Editor，因此 Monitor Level/Mute 不写入导出文件。Master 背景升级为 `master_detail_shell_v3.svg/.png`，左侧完整 `960 × 528` Record Editor，右侧 Monitor 面板；随后修复 `pm-master-bg` 未前移而被持久化 `main_shell` 遮住的层级遗漏，并加入回归断言。全量静态测试通过（42 maxpat / 87 patcher / 3757 boxes / 3869 lines / 30 project patchers），待 Max 实机验收。
- 2026-08-02：Gesture v3 已接入 Main，使用新背景 `gesture_detail_shell_v3.svg/.png`。左侧保留大幅 Camera / Control Workspace；右侧为 Gesture Read、六段 Control Target 与两排数字化 Mapping：上排显示归一化 X/Y/Pinch 原始值，下排显示当前插件的三项映射参数和值。`mt_fx_hand_mapper.js` 仅新增 3 个只读原始数据输出，未改映射算法；旧第四条 Gate 数据框退出页面，HOLD 继续显示在底部状态栏。全量静态测试通过，待 Max 摄像头实测数值刷新、目标切换和 HOLD 保持。
- 2026-08-02：Vocoder 关闭时其内部 `live.gain~` 仍显示干声电平，原因是该模块用内部 Dry/Wet 实现串联旁通。保持音频路径不变，改为让 `vm-gain` 的 `active` 状态跟随 `mt_vocoder_enable_state`，inactive 电平颜色设为透明；关闭时不再显示绿色电平，串联干声仍继续传递。五个底部参数标签统一为 9 pt、居中并划分互不重叠的区域。
- 2026-08-02：用户实机确认 FX 页右侧四条推子已可拖动，并与左侧插件 Output Gain 双向同步。右侧现使用四条 `live.gain~` 的内置 pre-fader 双声道电平显示；修复了子 patch 的 13 个 `inlet` 未按物理横坐标排列而造成 Current 与音频入口串位的问题。Bitcrusher、Multiband、Delay 改取各模块启用门控后的原始处理输出，不再取始终传递干声的 bypass 输出；Vocoder 监测另由其 Enable 状态门控。关闭的效果器不显示电平，监测音频不返回主链。
- 2026-08-02：FX v5 右侧推子在背景 `ignoreclick 1` 后仍无法拖动，说明遮挡并非唯一原因；横向 Slider 与竖向 Gain 的共同问题是 `pattr` 写入后立即同步回写 UI。现按 Source Mixer 架构重建：用单张 `fx_output_mixer_panel_v1.svg/.png` 的 `fpic @ignoreclick 1` 代替三层 panel，四条 `live.gain~` 自己持有参数值；四个跨层 `pattr` 使用原生 `@thru 2`，右侧写入时抑制自身回声，左侧插件发生外部变化时仍回传右侧，因此恢复双向同步且不形成即时回写环。未改音频链，待完全重载 Max Project 后复测。
- 2026-08-02：FX v5 已接入 Main。背景升级为 `fx_detail_shell_v4.svg/.png` 并提升到 `main_shell` 之上；选择器改为 `VOCODER / BITCRUSHER / MULTIBAND / FEEDBACK DELAY` 四段 Tab。左栏保持各插件原始比例：Multiband `1100 × 400`，Vocoder/Bitcrusher `760 × 268`，Feedback Delay `850 × 268`；右栏内嵌现成 `560 × 450` 竖向 `mt_fx_output_trim_panel.maxpat`。旧四条横向 Trim 已删除，Mixer 仍通过四个已有 Output Gain 参数桥双向同步，不接音频、不增加增益级；选择器同时驱动 Current 高亮。全量静态测试通过，待 Max 实机验收拖动、回显、切换与层级。
- 2026-08-02：完成 FX v5 效果图 `assets/ui/concepts/fx_detail_layout_v5_source_style_actual_ratio.png`（`1732 × 845`）。页面与 Source v3 使用同一视觉结构：顶部四段效果器选择器，左栏以最大模块 Multiband Filter 的 `1100:400` 比例为基准并小幅等比缩放，其他三个效果器后续在同一槽位居中；右栏固定四路竖向 `FX OUTPUT LEVELS`，顺序为 Vocoder、Bitcrusher、Multiband、Feedback Delay。当前仅为视觉稿，未接入 Main。
- 2026-08-02：Source v3 已按确认效果图接入 Main。修复了 Source 背景位于 `main_shell` 后方而被旧界面遮住的层级问题；背景升级为 `source_detail_shell_v3.svg/.png`。Source 选择器改为 `MIC INPUT / FILE PLAYER / GRANULAR` 三段 Tab；统一模块槽以 Granular `720 × 440` 为基准，Mic `420 × 280`、File `520 × 340` 居中且不拉伸，右侧 Mixer 保持 `760 × 320`。未改音频连线，全量静态测试通过，待 Max 重开项目视觉验收。
- 2026-08-02：根据 Max 实机截图重做 Source v3 效果图 `assets/ui/concepts/source_detail_layout_v3_granular_actual_ratio.png`（`1732 × 845`）。左栏以最大 Source 模块 Granular 的真实 `720 × 440` Presentation 为基准，右栏以 Source Mixer 的真实 `760 × 320` 为基准；Mic `420 × 280` 和 File `520 × 340` 后续在同一左栏居中、不拉伸。效果图已删除旧 Perform Overview、Master Utilities 与 Live Status；当前仅为视觉稿，未接入 Main。
- 2026-08-02：五个页面背景已统一换成新版本文件名，避免 Max 图片缓存：Perform `perform_shell_v3`、Source `source_detail_shell_v2`、FX `fx_detail_shell_v3`、Gesture `gesture_detail_shell_v2`、Master `master_detail_shell_v2`。Perform 删除旧 `FX RETURNS / PARALLEL PROCESSING / MASTER UTILITIES / 7-BAND EQ / LIVE STATUS` 烘焙内容，改为 Source、Gesture View、Effects、Record/Export、Master Output 五区；FX 右栏改为 `FX OUTPUT LEVELS` 预留区；Master 删除旧 `SERIAL EFFECT ORDER`。未移动插件、控件或音频连线，全量静态测试通过，待 Max 重开项目后视觉验收。
- 2026-08-02：完成 FX v4b 实际比例效果图 `assets/ui/concepts/fx_detail_layout_v4b_actual_ratio.png`（`1732 × 845`）。页面固定为左侧效果器编辑区、右侧四路竖向 `FX OUTPUT LEVELS`；左栏按最大 Multiband `1100 × 400` 横向比例预留，右栏按独立 `560 × 450` 控制台预留，两栏保留明确间距且不重叠。顶部使用四段 Effect Select，当前编辑项标记为 `EDITING`。
- 2026-08-02：新增独立 `patchers/mixers/mt_fx_output_trim_panel.maxpat`，作为四个串联效果器 Output Gain 的竖向控制面板。四条推子复用旧 Mixer 的 `live.gain~` 交互外观，只输出/接收 dB 控制值，不接音频、不增加增益级；另有 0–3 当前目标高亮。已加入 Max Project，尚未接入 Main，等待独立拖动与视觉实测。
- 2026-08-02：FX 页面首次实机暴露四项接入错误并已修复：`pattr` 改用父子 Scripting Name，Vocoder Output Gain 统一为 `vocoder_output_gain`；四条 `live.slider` 明确设为横向；删除遮挡当前行的高亮 panel，仅移动黄色 `CURRENT`；背景升级为新文件名 `fx_detail_shell_v2.svg/.png` 以绕开 Max 图片缓存。同时移除 Max 不存在的 `declare -path` 对象，并让 Record Editor 的 `EMPTY` 状态经 `prepend set` 更新 comment。全量静态检查通过，待重开 Max Project 后实机复测 Console、双向 Trim 和页面视觉。
- 2026-08-01：修复折叠拇指误判。数字 1–3 只按食指到小指的连续伸出数量判断，不再被拇指状态阻断；4/5 才判断拇指，且指尖必须明显伸出掌心范围。用户人工摄像头测试确认折拇指 3/4 与伸拇指 5 均通过。
- 2026-08-01：Gesture 页新增独立识别反馈，原始 0–5 结果即时显示；目标菜单保留时间防抖，确认后自动跳转。5 对应 All Effects，0 对应 Off/Hold；不联动效果器 Enable/Bypass。全量静态测试通过。
- 2026-08-01：Perform 的 Mic 卡片新增 `OPEN EQ` 按钮，通过 Mic 模块第二控制入口复用原有 `open -> pcontrol -> p-Mic-eq` 链路；未复制 EQ、未改音频 DSP。全量静态测试通过，待 Max 内点击验收。
- 2026-08-01：Mic EQ 移除独立 `FLAT` 按钮，改为 `FILTER TYPE` 与 `PRESET` 菜单。选中节点支持 Low/High Cut、Low/High Shelf、Bell、Notch；预设包含 Flat、Radio、Telephone、Warm Vocal、Air/Presence、Megaphone。Radio/Telephone/Megaphone 以双层高低切形成明显窄带。全量静态测试通过，待 Max 内听测和界面验收。
- 2026-08-01：完成 Perform v5 视觉概念稿 `assets/ui/concepts/perform_ui_concept_v5_serial_gesture.png`。三栏为 Source、Gesture View、Serial FX Chain；Mic 卡片内含 Open EQ，右侧按 Vocoder → Bitcrusher → Multiband → Delay 显示串联顺序，底栏只保留 Live Status、Record/Export、Master Output。当前仅为效果图，尚未落地 Max。
- 2026-08-01：根据反馈完成 Perform v6 概念稿 `assets/ui/concepts/perform_ui_concept_v6_expanded_sources.png`。删除重复 Live Status，顶栏只保留 DSP On；Source 左栏贯穿到底，File Player 增加进度条，Granular 增加波形、播放、Preset、Wet、Density、Size、Pitch 快控；Gesture View 的 Gate、Parameter Zone、Gesture Read、Target 统一放在四角。当前仅为效果图。
- 2026-08-01：生成 Source / FX / Gesture / Master 共用的空白内容背景 `assets/ui/detail_common_shell_v1.png`，精确尺寸 `1732 × 845`。只包含空白标题带、左大右小双栏工作区和底部分隔线，不烘焙页面标题、标签或控件；尚未替换现有四张详情页背景。
- 2026-08-01：Vocoder Presentation 已统一为商业模块样式：深绿标题栏、五个 `live.dial`、Preset 与 Output Gain；前三个手势控制按 X Brightness、Y Carrier Tone、Pinch Noise Mix 排列，Wet 与 Spectral Smooth 保持手动控制。未改 DSP 与连线。
- 2026-08-01：Gesture 页 Control Target 已由下拉菜单改为可见的 0–5 六段目标条，保留手动选择和识别后 `set` 回显；即时识别、映射参数与 HOLD/CONTROL 状态分层显示。
- 2026-08-01：新增 Record / Export 讨论稿 `assets/ui/concepts/record_export_concept_v1.svg/.png`；随后完成独立功能 Patch `patchers/mt_record_export_editor.maxpat`。模块使用 5 分钟立体声 `buffer~ / record~ / waveform~ / play~`，支持录音、选区零交叉吸附、选区试听、重置/清空和非破坏性 24-bit WAV 导出。
- 2026-08-01：Record / Export 独立 Patch 的测试界面按钮改为六列等宽操作栏，Record 与 Export 使用主色，其余使用次级色，增加按下态反馈与 Capture / Edit / Deliver 分组标签。未改录音 DSP、命令路由或 Patch 连线。
- 2026-08-01：用户已完成 Record / Export 独立 Patch 的 Max 实机测试，录音、停止、选区、试听与 WAV 导出验收通过。该模块现作为后续商业 UI 和 Main 接入的功能基线。
- 2026-08-01：Record / Export 独立 Patch 已升级为 `960 × 528` 商业 Presentation：顶部品牌/状态胶囊、中部波形编辑卡、六列操作栏，以及 Take Length / Selection Range / Export Format 三张信息卡。Elapsed 由调试毫秒数改为 `MM:SS`；New Take 与重新录制会同步重置时间显示。未改录音 DSP 或导出架构，待 Max 视觉验收后再接入 Main。
- 2026-08-01：Record / Export 已接入 Main。Master 内嵌唯一一份 `mt_record_export_editor.maxpat` 完整编辑器，Perform 只保留 Record、Stop、状态和 `MM:SS`；旧 `sfrecord~` 与 Choose File 录音链已删除。最终 FX 输出在试听前送入录音 buffer；试听通过独立 `mt_serial_bypass` 以 20 ms 在 Live / Preview 间平滑切换，避免叠音、爆音和试听回录。全量静态检查通过：40 个 `.maxpat`、85 个 patcher、3654 个对象、3744 条连线，Max Project 解析 28 个活动 patcher；待 Max 实机验证页面、录音和试听切换。
- 2026-08-01：Perform v6 的 Serial FX Chain 后续落地时删除插件卡片之间的箭头，避免被理解为可拖拽改序或控制连线。固定顺序改用 `01–04` 编号与 `TOP TO BOTTOM` 文案表达，四张插件卡保持纵向排列。
- 2026-08-01：Perform 右栏正式标题定为英文 `EFFECTS`。新增 Master v2 效果图 `assets/ui/concepts/master_detail_layout_v2_record_mixer.png`：左侧为完整 Record / Export 波形编辑器，右侧为最终监听 `MASTER MIXER`（Master Gain、L/R 表、Peak、Mute Monitor、Output On）；不复用旧并联 FX Returns 或 Source Mixer。
- 2026-08-01：新增 Master v3 效果图 `assets/ui/concepts/master_detail_layout_v3_fx_output_trim.png`。右侧 Master Mixer 上半部加入 Vocoder / Bitcrusher / Multiband / Feedback Delay 四条 `FX OUTPUT TRIM`，下半部保留 Master Output。四条控制计划只镜像各串联插件现有 Output Gain，不建立并联 Return；当前仅为效果图，尚未落地。
- 2026-08-01：修复 FX 页 Multiband 显示被横向裁切。根因是模块完整 Presentation 为 `1100 × 400`，但 FX 选择路由切换时错误设为 `794 × 500`；现改为 `[38, 200, 1100, 400]` 并加入回归断言。全量静态测试通过，待 Max 重载 Main 后视觉确认。后续 FX 页可利用右侧余量放四条现有 Output Gain 镜像。
- 2026-07-31：开关区升级为数字手势目标选择：1 Vocoder、2 Bitcrusher、3 Multiband、4 Delay、5 All Effects；握拳 HOLD。使用关节点伸直组合和时间防抖，不依赖手别标签或仅有的 MediaPipe 内置类别。
- 2026-07-31：主效果链由并联 Return 改为固定串联，移除 Main 中的 FX Return Mixer；最终 Delay 输出统一送往 DAC、表头与录音。FX / MASTER 页面文字已同步为 Serial Chain。
- 2026-07-31：四 FX 手势角色改为按空间区域分配，参数区与开关区之间含缓冲带；左右标签交换、同侧误判和区域歧义均有安全处理。
- 2026-07-31：手势帧新增时间戳，四 FX 参数平滑改为按实际帧间隔计算，避免响应速度随摄像头 FPS 改变。
- 2026-07-31：Feedback Delay 仅左右时间改为 `sig~ -> slide~`，20 ms 系数经 `mstosamps~` 跟随采样率；反馈量和启用/湿声继续使用确定性的 20 ms `line~`。静态检查通过，待 Max 内听测。
- 2026-07-28：修复 FX Return Mixer 后，全部音频模块运行测试通过。
- 2026-07-29：功能、音频、手势和 preset 测试通过。
- 已加入 24-bit WAV Record/Export；UI 整理后仍需最终运行复测。
- 用户负责 Max、摄像头和音频运行测试；Codex 负责静态 JSON、patchline 和接口检查。

## 当前未完成任务

1. 从 `.maxproj` 重开 Main，验收 Perform v7：单一 DSP、File Play/进度、Granular 快控、手势/Target 高亮、Record 与 Master Monitor 镜像。
2. 检查 Perform 的 Max 原生控件是否与 v4 背景精确叠放，并确认页面切换后状态持续同步。
3. 复测监听 Mute/Gain 不改变录音导出 WAV。

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
- Max 没有 Pure Data 风格的 `declare -path` 对象；资源解析依赖 `.maxproj` 的项目成员与搜索路径，不要重新加入 `declare`。
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

已完成主 Patch 实际加载的 `patchers/control/mt_control_hand_jweb.maxpat`、`patchers/effects/mt_mod_bitcrusher.maxpat` 与 `patchers/effects/mt_mod_multiband_filter_v2.maxpat` 理线：保持端口、对象与功能不变，仅分层移动对象或收束非直线 patch cord。`mt_control_pose_jweb` 未被主 Patch 引用，曾做的布局尝试已撤回。`p Mic_input`、`p Mic_eq`、`p Mic_control` 人工版继续受保护；后续仅处理 Main 的递归依赖。

已按空间邻近规则整理 `patchers/effects/mt_mod_feedback_delay.maxpat` 的根层和 Core 连线；保留该文件既有的 `slide~` 平滑功能修改。

已按同一空间邻近规则整理 `patchers/effects/mt_mod_vocoder.maxpat` 的根层和 `Vocoder_core`；保留既有商业 UI、Enable 门控与 Vocoder DSP。

2026-08-03 批量完成 Main 其余依赖理线：`mt_grain_voice`、`mt_granular_synth`、`mt_input_file_ui`、`mt_input_granular_ui`、`mt_input_mic_ui` 根层、`mt_input_mixer_ui`、`mt_vocoder_pfft`、`mt_serial_bypass`、`mt_record_export_editor`、`mt_fx_output_trim_panel`、`mt_master_monitor`。已有 midpoints 保留，只补空缺；Mic 的 `p Mic_input`、`p Mic_eq`、`p Mic_control` 完全跳过。对应模块、Main、Max Project 与全量完整性检查通过；`test_mic_ui.js` 仍只有既知的 `mic_panel_v1.png` dependency cache 断言失败，与理线无关。

收束补充：判断依据是线段在画面中的距离与方向。相互接近且同向的线段尽量重叠收束，距离较远则保持独立；“主干/总线”只是整理后的视觉结果，不是预先按功能划定的结构。

2026-08-03 用户要求重新整理 `Multiband_filter_v2_core`：15 个入口与 5 个出口继续按编号从左到右；Low / Mid / High 三套 DSP 采用一致的纵向列式结构，控制入口先垂直进入自身转换链，同源近邻分支再共用短水平段。仅调整 Core 的 Patching View 坐标与正交折点，149 个对象、192 条连接及全部端点保持不变；对象重叠审计为 0，待用户在 Max 中视觉验收。

2026-08-03 清理 `Multiband_filter_v2_core` 的遗留第 4 口：该口原为旧版内部噪声 `Test Input`，V2 删除测试支路后仍被生成脚本误保留。现从当前 patch 与 `build_multiband_filter_v2.js` 同步删除，原 5–15 号参数入口及父层连接连续前移为 4–14；新增结构回归断言，参数含义与 DSP 不变。

2026-08-03 完成 Main 实际使用的其余已整理 Patch 接口复查：在 Bitcrusher、Feedback Delay、Vocoder Core 中发现并删除同类的遗留空 `Test Input`，其后入口与父层连接只做连续前移，DSP 含义不变；16 个 Main 依赖、31 个递归 patcher 已无内外同时孤立的子 patch 端口。`mt_record_export_editor` 的根层入口/出口已按外部编号从左到右排列并清除全部对象重叠，`p-Granular-input` 的第 5 口移到第 4 口右侧。受保护的 `p Mic_input`、`p Mic_eq`、`p Mic_control` 未改。接口清理、Record、Granular、FX、Main、Max Project 与全仓 `.maxpat` 完整性检查通过；仍需用户在 Max 中做人眼与声音验收。
