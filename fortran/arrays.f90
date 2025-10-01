program arrays
implicit none
    ! A small programm to check out arrays in Fortran
    real :: numbers(5) ! one dimensional integer array
    integer :: matrix(3,5), i,j

    real, dimension(10) :: a,b
    integer :: asize, bsize

    do i =1,5
        numbers(i) = i*2.0
    end do

    ! display the values
    do i =1,5
        print*, numbers(i)
    end do

    ! assigning values to the array matrix
    do i=1,3
        do j =1,3
            matrix(i,j) = i+j
        end do
    end do

    ! display the values
    do i=1,3
        do j = 1,3
            print *, matrix(i,j)
        end do
    end do


    ! Some array related terms:

    ! Rank is the number of dimensions an array has
    ! Extend is the number of elements along a extension
    ! Shape is a one dimensional integer array
    ! Size is the number of elements an array contains

    ! Array section
    ! Fortran provides a easy way to refer several elements using 
    ! a single statment
    ! array([lower]:[upper][:stride])
    ! Stride here gives the increment
    a(1:7) = 5.0 ! Assigns 5
    a(8:) = 0.0 ! rest are seros
    b(2:10:2) = 3.9
    b(1:9:2) = 2.5

    ! display
    asize = size(a)
    bsize = size(b)

    do i=1, asize
        print *, a(i)
    end do

    do i=1, bsize
        print *, b(i)
    end do



end program arrays
