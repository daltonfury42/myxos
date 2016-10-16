
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
		PID = Fork();
		if(PID == -2) then
			ret = Exec(fileName);
			if (ret == -1) then 
				print(fileName);
				print(": command not found");
			endif;
		else
			ret = Wait(PID);
		endif;

	endwhile;
	return 0;
}
