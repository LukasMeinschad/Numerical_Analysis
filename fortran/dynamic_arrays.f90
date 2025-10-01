program dynamic_arrays
implicit none
! dynamic array is an array, where the size is not known at compile time
! but will be known at execution time
! Dynamic arrays are declared with the attribute allocatable

    real, dimension (:,:),  allocatable :: darray
    integer :: s1, s2
    integer :: i,j

    print *, "Enter the size of the array:"
    read*, s1,s2

    ! next allocate the memory
    allocate ( darray(s1,s2) )

    do i=1, s1
        do j=1,s2
            darray(i,j) = i*j
            print*, "darray(",i,",",j,") =", darray(i,j)
        end do
    end do

    deallocate (darray)

end program dynamic_arrays
