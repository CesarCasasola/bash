files := file1 file2

somefile: $(files)
	echo "Look at this variable: "$(files)
	touch somefile

file1:
	touch file1

file2:
	touch file2

clean:
	rm -f somefile file1 file2
