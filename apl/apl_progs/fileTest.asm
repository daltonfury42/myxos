integer main()
{
	integer fd;
	integer r;

	print("Opening file.");
	fd = Open("sample.dat");
	print(fd);

	print("Writing content:");
	integer i;
	i = 0;
	while (i < 1560) do
		print(Read(fd, r));
		print(r);
		i = i + 1;
	endwhile;

	print("Closing");
	print(Close(fd));
	
	print("Deleting file");
	print(Delete("sample.dat"));

	return 0;
}

