```markdown
# SAS输出RTF与Word VBA联动示例项目

## 项目概述
本Project为PharmaSUG 2025 AA-106文章的配套演示资源，展示SAS输出RTF文件与Word VBA联动的实现方案。

## 文件清单
| 文件类型 | 文件名 | 说明 |
|---------|-------|------|
| SAS代码 | `class_u8.sas` | 经过升级的Unicode环境SAS代码 |
| Word模板 | `样式库.dotx` | 预配置的标题样式库 |
| VBA代码 | `Word VB code.txt` | 样式应用宏代码 |
| 输出文件 | `class.doc` | SAS生成的示例文档 |

## 使用流程
1. **运行SAS代码**
   - 在SAS Unicode环境下执行`class_u8.sas`
   - 生成输出文件`class.doc/rtf`

2. **配置Word开发环境**
   ```diff
   ! 若未显示"开发工具"选项卡：
   + 右键功能区 → 自定义功能区 → 勾选"开发工具"
   ```

3. **导入VBA代码**
   - 打开`class.doc` → 开发工具 → Visual Basic
   - 在`Normal-模块`中新建模块，粘贴`Word VB code.txt`内容

4. **执行宏命令**
   ```vba
   ' 将光标置于以下代码段内按F5运行
   Sub 标题样式()
     '...代码内容...
   End Sub
   ```

5. **效果验证**
   - 章节标题自动应用样式库配置
   - 全文域代码和自动序号刷新完成

## 注意事项
⚠️ **路径适配**
所有代码中的文件路径需根据实际环境调整

🔧 **扩展建议**
- 将样式库和VBA封装为`.dotm`模板文件
- 配置自定义UI界面

💬 **问题反馈**
如有疑问请联系作者讨论

## 致谢
特别感谢 @Joe Zhu 的建议贡献
```
