# Input Mixer Herbal Editorial 中文设计规范

## 目标

在不改变音频行为的前提下，为 `mt_input_mixer.maxpat` 制作可用于作品集展示的 Herbal Editorial UI 版本。该模块仍然负责平衡 Mic、File 和 Granular 三个输入源，并将混合结果送往 Dry Bus 和后续并联效果器。

## 本阶段范围

- 第一阶段新建独立的 UI 版本，不覆盖当前可正常运行的 `mt_input_mixer.maxpat`。
- 保持 `mt_portfolio_main.maxpat` 当前使用的 `760 x 320` 模块尺寸。
- 保留全部现有接口、Enable 状态同步、20 ms 平滑、增益、立体声混合与 Mute All 行为。
- 本阶段不修改 Mic、File、Granular、效果器模块和 Main。
- 以 Input Mixer 建立新的 Herbal Editorial 视觉标准，后续再逐步迁移其他模块的 PNG。

## 已确认的视觉方向

- 已确认视觉稿：本地视觉预览中的 `input-mixer-herbal-editorial-v3.html`。
- 风格比例：60% 商业调音台，40% 植物品牌气质。
- 清爽白和浅灰绿承担界面的大部分面积。
- 深茶绿只用于标题栏和少量需要高对比度的控件。
- 鼠尾草绿用于 Source 分区、启用状态和主要电平反馈。
- 菊花黄用于 Logo、Master 区和重要反馈。
- 低饱和青蓝只用于小型状态点和路由提示。
- Logo 为无梗菊花，其中一片花瓣替换为绿色茶叶。

## 配色角色

| 视觉角色 | 参考色值 | 用途 |
| --- | --- | --- |
| 清爽白 | `#FBFCF9` | Source 轨道表面和主要留白 |
| 浅灰绿 | `#EDF2EE` | 外壳与 Master 区背景 |
| 深茶绿 | `#2E4138` | 标题栏和少量高对比元素 |
| 鼠尾草绿 | `#7FA47B` | Source 身份、启用状态与电平 |
| 菊花黄 | `#E4BD46` | Logo、Master 强调和关键反馈 |
| 青蓝绿 | `#8CAEAA` | 小型路由和状态提示 |

这些色值是 PNG 资产的视觉基准。为了保证 Max 内的显示对比度，导出时可以做非常轻微的明暗调整，但不能改变各颜色承担的功能角色。

## Presentation 布局

### 标题栏

- 高度固定为 48 px，使用深茶绿色。
- 左侧只放无文字的花形 Logo。
- 中左显示 `SOURCE MIXER`，副标题显示 `MIC / FILE / GRANULAR`。
- 右侧显示 `SOURCE MIX / DRY BUS`，说明该模块在总系统中的作用。

### 三条 Source 轨道

- 三条等宽纵向轨道：`MIC`、`FILE` 和 `GRANULAR`。
- 每条轨道包含顶部 Enable、Source 小图标、纵向 `live.gain~`、dB 反馈和 L/R 路由状态。
- 图标位于 Source 名称下方：
  - Mic：圆润的麦克风图标。
  - File：文件与波形组合图标。
  - Granular：柔和的颗粒簇图标。
- 三条轨道使用相同结构和配色，通过名称与图标建立区别。
- Max 原生控件放在 PNG 上方，保持真实交互能力。

### Master 轨道

- Master 位于最右侧，并且比单条 Source 轨道更宽。
- Master 使用浅灰绿背景，不使用整块深色背景。
- 主要强调色为菊花黄。
- 包含 `SOURCE SUM`、`0.0 dB` 数值框、Mute All、Master `live.gain~` 和 Mixed L/R 状态。
- `SOURCE SUM / 0.0 dB` 数值区域高度为 54 px，并在数值下方保留额外空间，避免文字拥挤。

## 外部接口

新的 UI 模块必须保持当前接口顺序：

- Inlet 1：Mic 音频 L。
- Inlet 2：Mic 音频 R。
- Inlet 3：File 音频 L。
- Inlet 4：File 音频 R。
- Inlet 5：Granular 音频 L。
- Inlet 6：Granular 音频 R。
- Inlet 7：外部 Mic Enable。
- Inlet 8：外部 File Enable。
- Inlet 9：外部 Granular Enable。
- Outlet 1：混合音频 L。
- Outlet 2：混合音频 R。

整理 Patching Mode 对象位置时，不得改变 inlet 和 outlet 的左右顺序，否则可能改变父 Patch 中的接口编号。

## 功能行为

- 每条 Source Enable 必须继续与对应输入模块和 Main 控件完全同步。
- Source 开关继续使用 20 ms `line~` 平滑，避免爆音。
- 每路音频先经过 Enable Gate，再进入该路 `live.gain~`。
- Mic、File 和 Granular 可以任意 3 选 x 同时开启。
- Mute All 使用现有逻辑关闭三条 Source Enable。
- Master 接收三条 Source Gain 之后的立体声总和。
- Mixer 输出继续作为项目的 Dry Bus，同时为并联效果器提供输入源。
- 不增加 Dry/Wet、Pan、Solo、压缩器、Limiter 或自动增益控制。

## 资产与模块策略

- 正式背景皮肤：`assets/ui/input_mixer_panel_v1.png`，以 `1520 x 640` 双倍分辨率导出，通过 `fpic` 缩放显示为 `760 x 320`，提高 Retina 屏幕清晰度。
- 可选的可编辑参考文件：`assets/ui/input_mixer_panel_v1.svg`。
- 花形 Logo 单独导出大尺寸、标题栏尺寸和小图标尺寸，供后续模块复用。
- 第一版新建 UI Patch，不覆盖当前可运行的 Mixer。
- 独立测试通过后，再在 Main 中替换 Mixer bpatcher，并保持原来的 `760 x 320` 矩形区域。

## 后台整理规则

- Patching Mode 中应明确区分音频路由、状态同步与 Presentation UI 对象。
- 沿用现有 Enable 状态发送名称，保证 Main 兼容。
- 三条 Source 音频链保持平行、顺序一致且便于阅读。
- 除非 Presentation 新对象确实需要连接，否则保留当前 59 条有效 Patchline。
- 视觉装饰不使用初始化消息；只有真实启动行为才允许设置默认值。
- 状态、控制和音频连线继续使用项目已有的分类颜色。

## 测试要求

- 所有 Max JSON 可以解析，无重复 ID、悬空 Patchline 和错误接口编号。
- PNG 确实为 `1520 x 640`，不使用用户绝对路径，并通过 `fpic` autofit 显示为 `760 x 320`，位于原生控件下方。
- Presentation 尺寸保持 `760 x 320`，放入 Main 后不被裁切。
- Mic、File、Granular Enable 可以双向同步，并且不会形成状态反馈循环。
- 三条 Source Gain 和 Master Gain 均正常处理立体声音频，L/R 不交换。
- Mute All 可以关闭全部三路输入。
- 三条 Source Enable 全部关闭时，输出必须为数字静音。
- `0.0 dB` 下方有清晰留白。
- Max 原生控件在 PNG 上方保持可点击、可读。
- 独立 Max 测试通过后才能接入 Main。

## 后续全局换肤

当 Input Mixer 在 Max 中完成测试后，Herbal Editorial 将成为 Mic、File、Granular、FX Return Mixer、效果器、Gesture 和 Main 新 PNG 的目标视觉语言。其他模块的 DSP 行为和尺寸需要在各自阶段单独确认，本规范不会直接修改它们。

## 本阶段不包含

- 增加新的 Mixer 轨道。
- 把 FX Return 放进 Input Mixer。
- 手势参数映射。
- 新增 DSP、自动增益或动态处理。
- 立即替换现有 Mic、File 和 Granular PNG。
- 在 Mixer 独立测试前重新布局 Main。
