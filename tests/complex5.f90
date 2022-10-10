        SUBROUTINE EIXZ(Z,CEI)
        IMPLICIT NONE
        DOUBLE COMPLEX Z, CEI
        DOUBLE PRECISION PI
        PI=3.141592653589793D0
        CALL E1Z(-Z, CEI)
        CEI = -CEI
        IF (DIMAG(Z)>0) THEN
           CEI = CEI + (0d0,1d0)*PI
        ELSE IF (DIMAG(Z)<0) THEN
           CEI = CEI - (0d0,1d0)*PI
		END IF
        RETURN
        END