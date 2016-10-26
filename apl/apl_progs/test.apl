integer main(){
	integer i, r, pid1, pid2, pid3;
	pid1 = Fork();
	breakpoint;
	if (pid1 == -2) then
		breakpoint;			
		pid2 = Fork();
		if (pid2 == -2) then		//CC

			print("CC");
			i = 3;
			r = Create("a.data");
			r = Open("a.data");
		
			while(i < 101) do
				r = Write(r, i);
				i = i+4;
			endwhile;
		
		else							//C
		
			r = Wait(pid2);
			print("C");
			i = 2;
			r = Create("b.data");
			r = Open("b.data");
		
			while(i < 101) do
				r = Write(r, i);
				i = i+4;
			endwhile;
		
		endif;
	else
		
		breakpoint;
		r = Wait(pid1);
		pid3 = Fork();
		if (pid3 == -2) then		//PC
		
			print("PC");
			i = 1;
			r = Create("c.data");
			r = Open("c.data");
		
			while(i < 101) do
				r = Write(r, i);
				i = i+4;
			endwhile;
		
		else							//P
		
			r = Wait(pid3);
			print("P");
			i = 0;
			r = Create("d.data");
			r = Open("d.data");
		
			while(i < 101) do
		
				r = Write(r, i);
				i = i+4;
			endwhile;
//			r = Exec("merge.xsm");
		endif;
	
	endif;

	return 0;
}
