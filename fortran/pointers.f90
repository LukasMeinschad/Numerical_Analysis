program pointers
implicit none

! In most programming languages, a pointer variable stores the memory address of an object
! In fortran the pointer has even more functionality

! The allocate statment allows one to allocate space for a pointer object


    integer, pointer :: p1
    integer, target :: t1

    p1 => t1
    p1 = 1

    print *, p1
    print *, t1

    p1 = p1 + 4
    
    print *,p1
    print *,t1

    t1=8
    
    print *, p1
    print *, t1

end program pointers
