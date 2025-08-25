本Project提供了一个SAS输出RTF文件与Word VB code联动的简要示例文件，
这部分文件为PharmaSUG 2025 AA-106文章的配套演示资源。

整体包含以下几个部分：
1.SAS示例代码：class_u8.sas
2.Word标题样式库：样式库.dotx
3.Word VB代码：Word VB code.txt
4.示例输出文件：class.doc

使用流程如下：
1.在SAS unicode环境下运行SAS code ， 该code撰写逻辑详见文章内的描述（不过该代码在文章的基础上进行了升级）；
2.运行SAS代码后，会生成一个doc/rtf文件，即对应package中的4.示例输出文件：class.doc；
3.打开class.doc后，在Word界面的功能区处，打开“开发工具”选项卡，点击“Visual Basic”；
（若无该选项卡，需要右键选择“自定义功能区”，将“开发工具”选项卡勾上）
4.在“Normal-模块”下插入一个宏模块，然后将package中的3.Word VB代码：Word VB code.txt内容粘贴进去；
5.在VB代码界面，将光标放置于“sub 标题样式……End Sub”之间，然后点击运行按钮或F5运行此段代码；
6.代码运行后，文档中的章节标题会使用样式库中配置的标准字体样式，同时全文的域代码和自动序号会进行刷新。

注意事项：
1.请留意所有代码中的路径，在不同环境下需要动态的进行调整；
2.本Project仅做一个初步的Demo示例，各同仁可在此基础上进行进一步的探索，
例如：将样式库和VB代码同步封存在.dotm格式文件中，并配置UI；
3.如有其他问题，可与本人进行交流讨论~


感谢：@Joe Zhu的建议~
