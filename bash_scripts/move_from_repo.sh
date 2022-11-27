# Move core files!
for curr_file in ./core/.[a-z]*; do
	# Skip .swp files
	if [[ $curr_file == *.swp ]]; then
		continue
	fi

	filename=$(echo "${curr_file}" | sed 's:.*/::')
	echo "Moving ${curr_file} to ~/${filename}"
 	cp ${curr_file} ~/${filename}
done;

# Move not hidden directories!
for curr_dir in ./configs/*; do
	dirname=$(echo "${curr_dir}" | sed 's:.*/::')
    echo "Moving ${curr_dir} to ~/${dirname}"
	cp -R ${curr_dir} ~/
done;

# Move hidden directories!
for curr_dir in ./configs/.[a-z]*; do
	dirname=$(echo "${curr_dir}" | sed 's:.*/::')
    echo "Moving ${curr_dir} to ~/${dirname}"
	cp -R ${curr_dir} ~/
done;
