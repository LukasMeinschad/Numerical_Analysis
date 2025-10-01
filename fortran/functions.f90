program calling_func

    real :: a
    a = area_of_circle(2.0)

    print*, "The aria of a circle with radius 2 is"
    print*, a

end programm calling_func

! now we specify the function to compute the area

function area_of_circle (r)

implicit none

    real :: area_of_circle
    real :: r
    real :: pi
 
    pi = 4*atan(1.0)
    area_of_circle = pi * r**2
end function area_of_circle

