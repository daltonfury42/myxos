decl
	integer option;
	integer result;
	string fileName;
	integer fileDescriptor;
	string wordToWrite;
	string wordRead;
	integer newLSeek;
enddecl

integer main()
{
	print("Enter option");
	print("1. Create");
	print("2. Open");
	print("3. Close");
	print("4. Delete");
	print("5. Write");
	print("6. Seek");
	print("7. Read");
	print("8. Exit");
	
	read(option);

	while(1==1) do
		if(option == 8) then
			break;
		endif;
		
		if(option == 1) then
			print("Filename? : ");
			read(fileName);	
			result = Create(fileName);
		endif;
		if(option == 2) then
			print("Filename? : ");
			read(fileName);	
			result = Open(fileName);
		endif;
		if(option == 3) then
			print("fileDescriptor? : ");
			read(fileDescriptor);	
			result = Close(fileDescriptor);
		endif;
		if(option == 4) then
			print("Filename? : ");
			read(fileName);	
			result = Delete(fileName);
		endif;

		if(option == 5) then
			print("fileDescriptor: ");
			read(fileDescriptor);
			print("wordToWrite: ");
			read(wordToWrite);
			result = Write(fileDescriptor,wordToWrite);
		endif;

		if(option == 6) then
			print("fileDescriptor: ");
			read(fileDescriptor);
			print("newLSeek: ");
			read(newLSeek);
			result = Seek(fileDescriptor,newLSeek);
		endif;
		
		if(option == 7) then
			print("fileDescriptor: ");
			read(fileDescriptor);
			//print("wordRead: ");
			//read(wordRead);
			result = Read(fileDescriptor,wordRead);
			print("wordRead = ");
			print(wordRead);
		endif;

		print("result = ");
		print(result);
		read(option);
	endwhile;
	
	return 0;
}
