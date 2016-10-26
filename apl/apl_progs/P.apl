integer main()
{
	integer ret;
	integer ret2;
	ret = Fork();
	if (ret == -1) then
		print("Fork Error");
	endif;
	
	if (ret != 0) then 		
		print("S P");
		ret2 = Fork();
		if (ret2 == -1) then
			print("Fork Error");
		endif;
		
		if (ret2 != 0) then 				// In P
		
			print("W PC");
			print(Wait(ret2));
			print("WE PC");

			print("W C");
			print(Wait(ret));
			print("WE C");

			print("E P");
		else 						// In PC
			print("PC");
		endif;
	else 				
		ret = Fork();
		if (ret == -1) then
			print("Fork Error");
		endif;
		if (ret != 0) then	// In C
			print("S C");
			print("W CC");
			print(Wait(ret));
			print("WE CC");
			print("E C");
		else 			// In CC
			print("CC");
		endif;
	endif;

	return 0;
}
