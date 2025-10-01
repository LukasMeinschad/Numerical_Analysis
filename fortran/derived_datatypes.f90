program derivedatatype
implicit none

    ! fortran allows you to define derived data types
    ! To define a derived data type the type and end type statments are used
    ! An object of a derived data type is called a a structure
    
    type Books
        character(len=50) :: title
        character(len=50) :: author
        character(len=150) :: subject
        integer :: book_id
    end type Books


    ! declarying type variables
    type(Books) :: book1
    type(Books) :: book2

    ! Accessing components of the structure
    book1%title = "C Programming"
    book1%author = "Nuha Ali"
    book1%subject = "C Programming Tutorial"
    book1%book_id = 6495407

    ! Display Info
    print*, book1%title
    print*, book1%author
    print*, book1%subject
    print*, book1%book_id



end program derivedatatype

