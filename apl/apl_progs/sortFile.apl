decl
	integer sort();
enddecl

integer sort()
{
	print("Opening file to be sorted");
	integer fd;
	fd = Open("toSort.dat");
	print(fd);
	
	integer i;
	i = 0;
	integer buf;
	integer n;
	n = 0;
	while (Read(fd, buf) == 0) do
		if(buf == 0) then
			break;
		endif;
		n = n + 1;
	endwhile; 
	n = 9;
	print("Loaded Integers:");
	print(n);
	integer j;	
	integer a, b;
	i = 0;
	while(i<n) do
		j = 0;
		while(j < n-1) do
			buf = Seek(fd, j);
			buf = Read(fd, a);
			buf = Read(fd, b);
			if(a > b) then
				buf = Seek(fd, j);
				buf = Write(fd, b);
				buf = Write(fd, a);
			endif;
			j = j + 1;
		endwhile;
		i = i + 1;
	endwhile;
	return 0;
}

integer main()
{
	print("Creating file");
	print(Create("toSort.dat"));
	
	integer fd;
	print("Opening file");
	fd = Open("toSort.dat");
	integer buf;
	buf = Write(fd, 2);
	buf = Write(fd, 4);
	buf = Write(fd, 2);
	buf = Write(fd, 2);
	buf = Write(fd, 7);
	buf = Write(fd, 5);
	buf = Write(fd, 9);
	buf = Write(fd, 3);
	buf = Write(fd, 1);
	
	print("Closing file");
	print(Close(fd));
	
	buf = sort();
	return 0;
}
