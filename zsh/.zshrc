export ZSH="/root/.oh-my-zsh"
ZSH_THEME="ys"
plugins=()
source $ZSH/oh-my-zsh.sh
case $LANG in
  en_US.UTF-8) fortune ;;
  zh_CN.UTF-8) fortune-zh ;;
esac                                                                                                                   1
