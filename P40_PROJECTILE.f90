PROGRAM Projectile
!-----------------------------------------------------------------------------------------------------
! このプログラムは、発射体の初期高度、初期速度、一定の加速度が与えられたとき、その速度と高度を計算する。
! InitialHeight    :発射体の初期高度（m）
! Height           :任意の時点における高度（m）
! InitialVelocity  :初期垂直速度（m/s）
! Velocity         :任意の時点における垂直速度（m/s）
! Acceleration     :重力加速度（m/s2)
! Time             :発射後の経過時間（秒）
!
! 入力 : InitialHeight, InitialVelocity, Time
! 出力 : Velocity, Height
!------------------------------------------------------------------------------------------------------

    IMPLICIT NONE
    REAL :: InitialHeight, Height, InitialVelocity, Velocity, Acceleration = -9.80665, Time

    ! InitialHeight, InitialVelocity, Timeの値を取得する
    PRINT *, "Enter the height (m) and velocity (m/s): "
    READ  *, InitialHeight, InitialVelocity
    PRINT *, "Enter time in seconds at which to calculation height and velocity!"
    READ  *, Time

    ! Height, Velocityを計算する
    Height   = 0.5 * Acceleration * Time ** 2 + InitialVelocity * Time + InitialHeight
    Velocity = Acceleration * Time + InitialVelocity

    ! Time, Velocity, Heightを表示する
    PRINT *, "At time", Time, "seconds"
    PRINT *, "the vertical velocity is", Velocity, "m/s"
    PRINT *, "and the height is", Height, "meters"

END PROGRAM Projectile

