program main
implicit none
integer :: x = 12
real :: A(3, 4, 5), B(3, 4, 5), C(3, 4, 5)
A = 1.0
B = 2.0
C = add(A, add(x + add((B(:1, :2, :5)**x), C), A))
contains
function add(A, B) result(r)
real, intent(in) :: A(:,:,:), B(:,:,:)
real :: r(size(A,1), size(A,2), size(A,3))
print *, "add: "
r = A + B
end function add
end program


