program machine_epsilon
    implicit none
    real :: epsilon_single, epsilon_double
    real(kind=16) :: epsilon_half

    epsilon_single = compute_machine_epsilon_single()
    print *, 'Machine epsilon for single-precision (REAL): ', epsilon_single

    epsilon_double = compute_machine_epsilon_double()
    print *, 'Machine epsilon for double-precision (REAL*8): ', epsilon_double

    epsilon_half = compute_machine_epsilon_half()
    print *, 'Machine epsilon for half-precision (REAL*16): ', epsilon_half

contains

    real function compute_machine_epsilon_single()
        implicit none
        real :: epsilon
        epsilon = 1.0
        do while (1.0 + epsilon /= 1.0)
            epsilon = epsilon / 2.0
        end do
        compute_machine_epsilon_single = epsilon
    end function compute_machine_epsilon_single

    real*8 function compute_machine_epsilon_double()
        implicit none
        real*8 :: epsilon
        epsilon = 1.0d0
        do while (1.0d0 + epsilon /= 1.0d0)
            epsilon = epsilon / 2.0d0
        end do
        compute_machine_epsilon_double = epsilon
    end function compute_machine_epsilon_double

    real(kind=16) function compute_machine_epsilon_half()
        implicit none
        real(kind=16) :: epsilon
        epsilon = 1.0_16
        do while (1.0_16 + epsilon /= 1.0_16)
            epsilon = epsilon / 2.0_16
        end do
        compute_machine_epsilon_half = epsilon
    end function compute_machine_epsilon_half

end program machine_epsilon
