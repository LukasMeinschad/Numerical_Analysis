program matrix_functions
implicit none

    ! dot_product function returns the scalar product of two input vecotrs
    ! matmul returns the matrix product of two matrices
    ! Dimensions have to be consisten (m,k) (k,n)

    real, dimension(5) :: a,b
    integer :: i, asize, bsize

    asize = size(a)
    bsize = size(b)

    do i=1, asize
        a(i) = i
    end do

    do i = 1, bsize
        b(i) = i*2
    end do

    do i=1, asize
        print *, a(i)
    end do

    do i = 1, bsize
        print *, b(i)
    end do 

    print*, "Vector multiplication"
    print*, dot_product(a,b)

end program matrix_functions
