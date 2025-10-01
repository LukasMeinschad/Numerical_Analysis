program loops
implicit none

integer :: nfact = 1
integer :: n = 1
! Do loop construct enables a statment to be carried out iteratively, while given a condition is ture
! do var = start, stop [,step]
! end do
do n=1,10
    nfact = nfact * n
    ! print the value of the n and its factorial
    print*, n, " ", nfact
end do

! Example of a do while loop
do while (n<=10)
    nfact = nfact * n
    n = n+1 
    print* , n, " ", nfact
end do


end program loops
