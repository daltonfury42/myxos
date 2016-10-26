decl
 integer ret1;
 integer ret2;
 integer ret;
 integer pid;
 integer fd1;
 integer fd2;
 integer fd3;
 integer x;
 integer y;
 integer mergesort(integer fd1,fd2,fd3);
enddecl


integer mergesort(integer fd1,fd2,fd3)
{ 
      ret1 = 0;
      ret2 = 0;
      ret1 = Read(fd1,x);
      ret2 = Read(fd2,y);
      while ret1!=-1 && ret2!=-1 do
             if (x<y) then
                ret = Write(fd3,x);
                ret1 = Read(fd1,x);
             
             else
                ret = Write(fd3,y);
                ret2 = Read(fd2,y);
             
             endif;
        endwhile;
        if (ret1 == -1) then
            while ret2!= -1 do
              ret2 = Read(fd2,y);
              ret = Write(fd3,y);
           endwhile;
        endif;
 
        if (ret2 == -1) then
           while ret1 != -1 do
               ret1 = Read(fd1,x);
               ret = Write(fd3,x);
           endwhile;
        endif;
  return 0;
}

integer main(){
     pid = Fork();
     if (pid == -2) then
        ret = Create("cd.data");
        fd1 = Open("c.data");
        fd2 = Open("d.data");
        fd3 = Open("cd.data");
        print(".");
	print(fd1);
	print(fd2);
	print(fd3);
	ret = mergesort(fd1,fd2,fd3);
     endif;
     
     if (pid > -1) then
        pid = Wait(pid);
        ret = Create("ab.data");
        fd1 = Open("a.data");
        fd2 = Open("b.data");
        fd3 = Open("ab.data");
        ret = mergesort(fd1,fd2,fd3);

        ret = Create("abcd.data");
        fd1 = Open("ab.data");
        fd2 = Open("cd.data");
        fd3 = Open("abcd.data");
        
        ret = mergesort(fd1,fd2,fd3);   
     endif; 

return 0;
}
