integer main()
{
	string fileName;
	integer ret;
	integer PID;
	while(1==1) do
		print ("fury@xos~:");
		read(fileName);
		if(fileName == "exit") then
			Exit();
		endif;
		breakpoint;
		ret = Open(fileName);
		if(ret == -1) then
			print("Error!");
			continue;
		endif;
		ret = Close(ret);
		
		PID = Fork();
		if (PID == -1) then
			print("FE");
		endif;
		if(PID == -2) then
			ret = Exec(fileName);

			if (ret == -1) then 
				print("EE");
			endif;
		else
			ret = Wait(PID);
			if(ret == 0) then 
				print("Success");
			else
				print("WE");
			endif;
		endif;

	endwhile;
	return 0;
}
