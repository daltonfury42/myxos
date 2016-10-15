integer main()
{
	integer i;
	if (Fork() == -2) then
		i = Exec("odd.xsm");
	endif;
	i=2;
	while (i<21) do
		print(i);
		i = i+2;
	endwhile;
	return 0;
}
