program variables
implicit none
    ! Variable name in fortran can be composed of letters, digits and the underscore character.
    ! Name must obey the following rules
    ! Cannot be longer than 31 characters
    ! Must be composed of alphanumeric characters and underscores
    ! first character of a name must be a letter
    ! Names are case-insensitive

    ! Variables are declared at the beginning of a program in a type declaration statement

    integer :: total
    real :: average
    complex :: cx
    logical :: done
    character(len=50) :: message ! is a string of 80 characters

    ! Later one can assign values to these variables
    total = 20000
    average = 1666.67
    done = .true.
    message = "A big hello from me"
    cx = (3.0, 5.0) ! complex number cx = 3.0 + 5.0i

    print *, total
    print *, average
    print *, cx
    print *, done
    print *, message

end program variables

