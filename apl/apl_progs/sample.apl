decl
	integer status;
	integer fd;
enddecl
integer main()
{
	print("Creating file");
	status = Create("newFile.dat");
	print(status);
	print("Opening file.");
	fd = Open("newFile.dat");
	print(fd);
	print("Deleting opened file");
	status = Delete("newFile.dat");
	print(status);
	print("CLosing file");
	status = Close(fd);
	print(status);
	print("Deleting file again");
	status = Delete("newFile.dat");
	print(status);
	return 0;
}
