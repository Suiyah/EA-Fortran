program machine_zero
    implicit none
    real :: zero_single, zero_double
    real(kind=16) :: zero_half

    zero_single = compute_machine_zero_single()
    print *, 'Machine zero for single-precision (REAL): ', zero_single

    zero_double = compute_machine_zero_double()
    print *, 'Machine zero for double-precision (REAL*8): ', zero_double

    zero_half = compute_machine_zero_half()
    print *, 'Machine zero for half-precision (REAL*16): ', zero_half

contains

    real function compute_machine_zero_single()
        implicit none
        real :: zero
        zero = 1.0
        do while (2.0 * zero /= zero)
            zero = zero / 2.0
        end do
        compute_machine_zero_single = zero
    end function compute_machine_zero_single

    real*8 function compute_machine_zero_double()
        implicit none
        real*8 :: zero
        zero = 1.0d0
        do while (2.0d0 * zero /= zero)
            zero = zero / 2.0d0
        end do
        compute_machine_zero_double = zero
    end function compute_machine_zero_double

    real(kind=16) function compute_machine_zero_half()
        implicit none
        real(kind=16) :: zero
        zero = 1.0_16
        do while (2.0_16 * zero /= zero)
            zero = zero / 2.0_16
        end do
        compute_machine_zero_half = zero
    end function compute_machine_zero_half

end program machine_zero
