# Max/MSP 手势音乐插件阶段作业说明

学生：纪弘创  
日期：2026-07-09

## 打开方式

1. 用 Max 9 打开 `mt_portfolio_main.maxpat`。
2. 点击左上角 `startwindow` 开启 DSP。
3. 选择并打开输入源：`Mic on`、`File on`、`Granular on` 可以任意组合。
4. 在 `MT FX Mixer` 里打开需要试听的效果层：`Vocoder FX`、`Chop FX`、`Tremolo FX`。
5. 右侧/底部 `Main out` 是总输出。

## 当前主链路

```text
Mic / File / Granular
  -> MT Input Mixer
  -> Original dry layer
  -> parallel FX layers: pfft Vocoder / Live Chop / Tremolo
  -> MT FX Mixer
  -> Main out
```

## 本阶段重点

- 三个输入模块：`mt_input_mic.maxpat`、`mt_input_file.maxpat`、`mt_input_granular.maxpat`。
- 一个输入混音器：`mt_input_mixer.maxpat`，负责三路输入的开关、音量和平衡。
- 一个并联效果层 mixer：`mt_fx_return_mixer.maxpat`，把原声和各效果 return 混合。
- 三个主要效果模块：
  - `mt_mod_vocoder.maxpat`：pfft 频谱 vocoder。
  - `mt_mod_vocal_chop.maxpat`：实时 vocal chop / slicer。
  - `mt_mod_tremolo.maxpat`：stereo tremolo / motion。
- `mt_control_hand_jweb.maxpat`：摄像头手势控制源，目前映射到 tremolo 的 rate / depth / stereo。

## 操作注意

- Source 模块、Input Mixer 和主页面的 Enable 已经做成联动：任意一处开关变化，其他位置会同步。
- FX 模块和 FX Mixer 的开关也已经联动，避免出现“模块开了但 mixer 没开”的误导。
- File 和 Granular 可以把测试音频放进 `media/` 文件夹再加载。
- 如果摄像头画面没有出现，先重新打开 `mt_portfolio_main.maxpat`，再点 `Reload Webcam` 和 `List Cameras`。
- `mt_mod_talkbox.maxpat` 和 `mt_mod_voice_transformer.maxpat` 保留为参考/备用展示，不是当前主 patch 必经链路。

## 推荐讲解顺序

1. 先展示 `mt_portfolio_main.maxpat` 的整体结构：Input -> Input Mixer -> parallel FX -> FX Mixer -> Main out。
2. 再单独解释 `Input Mixer` 为什么和 source 开关联动。
3. 重点讲 `pfft Vocoder` 和 `Live Chop`，它们比普通 tremolo 更能体现作品集技术深度。
4. 最后展示手势控制 tremolo 参数，说明后续会继续设计更符合人体工程的手势映射。
