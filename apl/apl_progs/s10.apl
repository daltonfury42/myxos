integer main()
{
	breakpoint;
	integer childpid, retval;
	childpid = Fork();
	if(childpid == -2) then
		retval = Exec("s10.xsm");
	else
		while(childpid != -1) do
			print(childpid);
		endwhile;
	endif;
	return 0;
}
