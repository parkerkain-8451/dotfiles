files_list=('.tmux.conf' '.zshrc' '.vimrc')
dirs_list=('.vim')

# Move files!
for curr_file in ${files_list[@]}; do
	echo "Moving ./configs/${curr_file} to ~/${curr_file}"
	cp ./configs/${curr_file} ~/${curr_file}
done;

# Move directories!
for curr_dir in ${dirs_list[@]}; do
	echo "Moving ./configs/${curr_dir} to ~/${curr_dir}"
	cp -R ./configs/${curr_dir} ~/${curr_dir}
done;
