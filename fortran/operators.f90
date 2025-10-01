program operators
implicit none
    ! Operator is a symbol that tells the compiler to perform specific mathematical or logical manipulations

    ! Arithmetric operators
    ! +, -, *, /, **
    
    ! Relational operators
    ! .eq., .ne., .gt., .lt., .ge., .le.

    ! Logical operators
    ! .and. , .or. , .not. , .eqv., .neqv. 
    integer :: a,b,c,d,e

    a = 20
    b = 10
    c = 15
    d = 5

    e = (a+b) * c/d 
    print *, "(a+b) * c/d = ", e

    e = ((a+b)*c)/d 
    print *, "((a+b)*c)/d = ", e


end program operators
