program machine_infinity
    implicit none
    real :: inf_single
    real*8 :: inf_double
    real(kind=16) :: inf_half

    inf_single = compute_machine_infinity_single()
    print *, 'Machine infinity for single-precision (REAL): ', inf_single

    inf_double = compute_machine_infinity_double()
    print *, 'Machine infinity for double-precision (REAL*8): ', inf_double

    inf_half = compute_machine_infinity_half()
    print *, 'Machine infinity for half-precision (REAL*16): ', inf_half

contains

    real function compute_machine_infinity_single()
        implicit none
        compute_machine_infinity_single = huge(0.0)
    end function compute_machine_infinity_single

    real*8 function compute_machine_infinity_double()
        implicit none
        compute_machine_infinity_double = huge(0.0d0)
    end function compute_machine_infinity_double

    real(kind=16) function compute_machine_infinity_half()
        implicit none
        compute_machine_infinity_half = huge(0.0_16)
    end function compute_machine_infinity_half

end program machine_infinity
