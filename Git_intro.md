# 注意只比较被跟踪文件
# 工作区（现在写的区域） vs 暂存区 ——>（显示还未暂存的改动）
git diff

# 暂存区 vs HEAD（上次提交的内容）——>（已暂存、将被提交的改动）
git diff --staged
# 等同:
git diff --cached

# 工作区（包含暂存） vs HEAD（查看自上次提交以来的所有改动）
git diff HEAD

# 比较两个提交
git diff <commit1> <commit2>

# 只列出改动的文件名
git diff --name-only


# 常用快捷键
j / k：向下 / 向上滚动一行（如果你不想用鼠标滚轮的话）。

d / u：向下 / 向上滚动半屏。# down up

g：跳到开头。

G：跳到末尾（也就是你现在看到的 END 位置）。

/关键词：在 diff 结果里搜索。比如输入 /alu 然后回车，它会帮你高亮所有的 alu 模块改动。