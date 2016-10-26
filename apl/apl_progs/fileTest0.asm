integer main()
{
	integer fd;
	integer r;
	
	print("Creating file");
	print(Create("sample.dat"));

	print("Opening file.");
	fd = Open("sample.dat");
	print(fd);

	print("Writing content:");
	integer i;
	i = 0;
	while (i < 1500) do
		print(Write(fd, i));
		i = i + 1;
	endwhile;

	print("Closing");
	print(Close(fd));
	
	return 0;
}

