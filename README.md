# ASRock-Z370m-Pro4-Hackintosh

~~暂时目标是让 macOS Monterey 跑起来~~
在 `macOS Sequoia` 正常运行。

## 详细配置

|项目|型号|
|----|----|
|处理器| 英特尔 i7-9700K|
|主板|华擎 Z370m Pro4|
|内存|DDR4 3200MHz 8GB x 4|
|硬盘|RD500、HHD 2TB|
|显卡|AMD Radeon RX580 2304SP 8GB (刷了 bios 免驱)|
|显示器|AOC 4K 显示器|
|无线网卡	|无|
|以太网卡	|英特尔 I219V|
|声卡|ALC892|

## BIOS 设置

- 高级 -> CPU 配置 -> CFG Lock -- 关闭（十分关键，不关闭会出现卡 EB，或者在 ACPI Error 错误后卡住，当时查了一天也没找到 ACPI Error 错误后卡住的原因）
- 高级 -> CPU 配置 -> Intel 虚拟化技术 -- 开启
- 引导 -> 闪速启动 -- 关闭
- ~~高级 -> USB 配置 -> XHCI Hand-off -- Enabled~~
- ~~引导 -> CSM(兼容性支持模块) -> CSM -- 关闭~~
- ~~高级 -> 芯片组配置 -> Above 4G Decoding -- 禁用(有核显的可以启用)~~
- ~~高级 -> 芯片组配置 -> VT-d -- 禁用(有核显的可以启用)~~
- ~~高级 -> 芯片组配置 -> IGPU 多监视器 -- 禁用(有核显的可以启用)~~
- ~~高级 -> 芯片组配置 -> 共享内存 -- 1024M(有核显的设置)~~

## 特性

> 参考 [ASRock-Z370-Pro4-Hackintosh](https://github.com/athlonreg/ASRock-Z370-Pro4-Hackintosh)

- [x] 更新 Kexts
- [x] 更新 OpenCore 到 1.0.1-RELEASE
- [x] 参考国光教程把 config.plist 更新了一遍
- [x] 参考国光教程把自定义 USB 驱动
- [x] 尝试更新到 `macOS Sequoia` 或者 `macOS Sonoma`(成功在 macOS Sequoia 运行成功，macOS Sonoma 就不试了)
- [x] 改用无头核显 ID

## 参考

- [国光的黑苹果安装教程](https://apple.sqlsec.com/)
- [远景论坛-黑苹果区](https://bbs.pcbeta.com/forum.php?gid=86)
- [OpenCore 发布](https://github.com/acidanthera/OpenCorePkg)
- [OC 官方提供的 Kexts 汇总](https://dortania.github.io/builds/)
- [OSX 上在旧系统中下载新系统的方法，记得翻墙](https://github.com/ninxsoft/Mist)
- [OpenCore 提供的 Patch 工具](https://github.com/dortania/OpenCore-Legacy-Patcher)
- [核显 ID 列表](https://blog.daliansky.net/Intel-core-display-platformID-finishing.html)