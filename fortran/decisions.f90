program decisions
implicit none

! first we check out the normal if then statemen
    integer :: a = 10
    character :: grade = "B"
    integer :: marks = 78
    ! check the logical condition
    if (a < 20) then

    ! if condiiton is true print
    print*, "a is less then 20"
    end if 

    print*, "Value of a is ", a

! Another option is to use the if then else statement
    a = 100

    ! check the logical condition using a if statement
    if (a < 20) then

    ! if condition is true then print the following
    print *, "a is less then 20"
    else
    print*, "a is not less than 30"
end if

! Else-if can also be used several times

    if (a == 10) then
        print* , "Value of a is 10"
    else if (a == 20) then
        print* , "Value of a is 20"
    else if (a == 30) then
        print*, "Value of a is 30"
    end if

! Lastly we take a look at the select case construct 
    select case (grade)

        case ('A')
            print*, "Excellent"
        case ('B')
            print*, "Nice one"
        case ('C')
            print*, "Well done"
        case ('D')
            print*, "You passed"
        case ('F')
            print*, "Better luck next time"

    end select

! You can further specify a range for the selector
    select case (marks)

        case (91:100)
            print*, "Excellent!"
        case (81:90)
            print*, "very good!"
        case (71:80)
            print*, "Well done!"
        case (61:70)
            print*,"Not bad"
    end select
end program decisions

