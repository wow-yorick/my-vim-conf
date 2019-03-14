#/usr/bin
echo "备份旧配置"
mv ~/.vim ~/.vim-bak
mv ~/.vimrc ~/.vimrc-bak

echo "cp vim配置.vimrc"
cp ./vim-config-for-unix/.vimrc ~/.vimrc

echo "cp vim插件.vim"
cp -r ./vim-config-for-unix/.vim ~/.vim

echo "使用vundle安装插件"

vim -E -s -c "source ~/.vimrc" -c "PluginInstall" -c "qa!"


