#
# 定义需要链接的列表
# author: yantze@126.com
# date: 2017-11-30

# 当前文件的文件夹路径
CURRENT_SCRIPT_HOME=$(cd `dirname $0`; pwd)
echo $CURRENT_SCRIPT_HOME
# exit
TARGET_HOME=~/Library/Rime
# /Library/Input Methods/Squirrel.app

# 初始化目录
# mkdir $TARGET_HOME

set -x # set debug what command do, same set -o xtrace

# 链接系统文件
for file in `ls       \
  default.custom.yaml \
  squirrel.custom.yaml\
  rime_ice.custom.yaml\
  key_bindings.yaml   \
  # luna_pinyin*    \
  `; do
  # \rm -f "$TARGET_HOME/$file"
  ln -sf "$CURRENT_SCRIPT_HOME/$file" "$TARGET_HOME"
done


set +x
