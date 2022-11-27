core_list=('.tmux.conf' '.zshrc' '.vimrc')
configs_list=('.vim' '.tmux' 'zsh')

# Move core files!
for curr_file in ${core_list[@]}; do
	echo "Copying ~/${curr_file} to ./core/${curr_file}"
	cp ~/${curr_file} ./core/${curr_file}
done;

# Move configs!
for curr_dir in ${configs_list[@]}; do
	echo "Copying ~/${curr_dir} to ./configs/${curr_dir}"
	cp -R ~/${curr_dir} ./configs
done;
