program precision_02
    integer, parameter :: dp = kind(0.d0)
    real(dp) :: x, x1
    x1 = 1.1_dp
    x = 1.1 - x1
    print *, x
    if (.not. (abs(x - 2.3841857821338408E-008_dp) < 1e-14_dp .or. abs(x) < 1e-14_dp)) error stop
end program
    