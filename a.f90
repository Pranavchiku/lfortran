subroutine test_diag_int16()
integer, parameter :: n = 4
integer :: a(n, n), e(n,n)
e = diag1(diag(a))
contains
function diag(A) result(res)
integer, intent(in) :: A(:,:)
integer :: res(minval(shape(A)))
! integer :: i
! do i = 1, minval(shape(A))
!     res(i) = A(i,i)
! end do
end function diag

function diag1(v) result(res)
integer, intent(in) :: v(:)
integer :: res(size(v),size(v))
! integer :: i
! res = 0
! do i = 1, size(v)
!     res(i,i) = v(i)
! end do
end function diag1
end subroutine test_diag_int16

