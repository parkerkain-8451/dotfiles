files_list=('.tmux.conf' '.zshrc' '.vimrc')
dirs_list=('.vim')

# Move files!
for curr_file in ${files_list[@]}; do
	echo "Moving ~/${curr_file} to ./configs/${curr_file}"
	cp ~/${curr_file} ./configs/${curr_file}
done;

# Move directories!
for curr_dir in ${dirs_list[@]}; do
	echo "Moving ~/${curr_dir} to ./configs/${curr_dir}"
	cp -R ~/${curr_dir} ./configs/${curr_dir}
done;
