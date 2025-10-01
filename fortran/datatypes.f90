program datatype_testing
implicit none

    ! Fortran provides five intrinsic datatypes:
    ! Integer, Real type, complex type, logical type, character type
    integer :: largeval

    

    ! We can also specify the number of bytes using the kind specifier:

    ! two byte integer
    integer(kind = 2) :: shortval

    ! four byte integer
    integer(kind = 4) :: longval

    ! eight byte integer
    integer(kind = 8) :: verylongval

    ! sixteen byte integer
    integer(kind = 16) :: veryverylongval

    print *, huge(shortval)
    print *, huge(longval)
    print *, huge(verylongval)
    print *, huge(veryverylongval)

    ! Huge function gives the largest number that can be held by a specific integer datatype^
    print *, huge(largeval)


end program datatype_testing
