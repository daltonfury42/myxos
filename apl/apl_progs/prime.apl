decl
	integer isPrime(integer n);
enddecl
integer isPrime(integer n)
{
	integer i,isP;
	i=2;
	isP = 1;
	while( i < n ) do
		if (n%i == 0) then
			isP = 0;
		endif;
		i = i + 1;
	endwhile;
	return isP;
}

integer main()
{
	integer n;
	read(n);
	integer i;
	i = 2;
	while(i<n) do
		if (isPrime(i) == 1) then
			print(i);
		endif;
		i = i+1;
	endwhile;
	return 0;
}	
