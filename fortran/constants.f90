program constants
implicit none
    ! Constant refers to fixed values that the program cannot alter during its execution
    ! These fixed values are also called literals

    ! Constants can be of any of the basic data types like an integer constant, floating constant, character constant ...

    ! Named constants are declared with the parameter attribute

    real, parameter :: pi = 3.14159
    real, parameter :: g = 9.81

    ! Small program to calculate the vertical motion under gravity

    real :: s ! displacement
    real :: t ! time
    real :: u ! initial speed 

    ! Assining values
    t = 5.0
    u = 50

    ! displacment
    s = u * t - g * (t**2) / 2

    print *, "Time = ", t
    print *, "Displacement = " ,s


end program constants
