/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_TAUCETI_SOURCE_PROOF_CANDIDATE / PARSING_NOT_RUN /
COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
Original Tau Ceti contributors, Apache-2.0,
TauCetiProject/TauCeti@2bdb755239d3bd84760e99bc83166bdf7cc75a6b.
Compatible isolated Lean v4.36.0-rc1 only, not grwtsk/math v4.34.1.
-/
import TauCetiThetaWeilRankTwoCriterion
import TauCeti.AlgebraicGeometry.EllipticCurve.Isogeny.MulByInt.DivisorPullback

set_option autoImplicit false
noncomputable section

/-!
# ONE original [n]-pullback function identity completes theta=Weil

The pinned original Tau Ceti theorem
`TauCeti.Isogeny.exists_principal_eq_weilPairingDivisor`
constructs an actual g_Q with divisor
[n]^*((Q)-(O)) for every genuine n-torsion point Q.

The earlier theta-commutator source is already a biadditive
alternating pairing; pinned `torsion_addEquiv_prod`
supplies the actual rank-two torsion basis.

This source CHOOSES only the genuine original Weil DIVISOR
FUNCTION from the pinned existence theorem, not a pairing.
It eliminates the arbitrary g and hg arguments of the
previous sign return. The entire theta=Weil comparison is
therefore reduced to ONE EXACT ELLIPTIC RATIONAL-FUNCTION
identity for that chosen g_Q and ONE oriented basis pair P,Q:

    f_P tau_{-P}(f_Q)/(f_Q tau_{-Q}(f_P))
           = tau_P(g_Q)/g_Q.

This identity has NOT yet been proved in pinned Lean source.
Its reciprocal corresponds to -e_n; no sign may be chosen
from an n=2-only test. The present file is a genuine
source-bound single-function PROOF TARGET, not a proof
of the missing divisor identity by assumption.
-/

namespace GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaWeilOneFunctionGate

open TauCeti
open GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalGeometricTheta
open GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaCommutatorBilinear
open GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaWeilRankTwoCriterion

variable {F : Type*} [Field F] [DecidableEq F] [IsSepClosed F]
  (W : WeierstrassCurve F) [W.IsElliptic]
  (n : ℕ) [NeZero n] (hN : (n : F) ≠ 0)

/-- The ORIGINAL second generator is an actual n-torsion
elliptic point. No chosen rank-two coefficient surrogate. -/
private theorem second_basis_point_torsion :
    (n : ℤ) •
      (secondTorsionGenerator W n hN : W.toAffine.Point) = 0 :=
  (Submodule.mem_torsionBy_iff _ _).mp
    (secondTorsionGenerator W n hN).property

/-- Exact original [n]-pullback isogeny, with source
nonvanishing and actual n-torsion of the basis point. -/
private theorem original_basis_weil_divisor_exists :
    ∃ g : W.toAffine.FunctionFieldˣ,
      Divisor.principal W.toAffine.isFunctionField g =
        Isogeny.weilPairingDivisor W
          (Isogeny.psiFunctionField_ne_zero W
            (by simpa using hN))
          (secondTorsionGenerator W n hN : W.toAffine.Point) :=
  Isogeny.exists_principal_eq_weilPairingDivisor W
    (by simpa using hN)
    (second_basis_point_torsion W n hN)

/-- A noncomputably chosen ORIGINAL Weil rational function:
its defining source property is the pinned [n]-pullback
divisor equation, not theta=Weil equality. -/
noncomputable def originalBasisWeilFunction :
    W.toAffine.FunctionFieldˣ :=
  Classical.choose (original_basis_weil_divisor_exists W n hN)

theorem originalBasisWeilFunction_divisor :
    Divisor.principal W.toAffine.isFunctionField
      (originalBasisWeilFunction W n hN) =
    Isogeny.weilPairingDivisor W
      (Isogeny.psiFunctionField_ne_zero W (by simpa using hN))
      (secondTorsionGenerator W n hN : W.toAffine.Point) :=
  Classical.choose_spec
    (original_basis_weil_divisor_exists W n hN)

/-- The exact remaining POSITIVE-ORIENTATION geometric
problem is ONE equality between the original Mumford
theta commutator rational function and the pinned
Weil isogeny pullback ratio at the chosen basis points. -/
def OriginalBasisFunctionRatio : Prop :=
  (commutatorFunction W.toAffine n
    (originalTorsionLift W.toAffine n
      (firstTorsionGenerator W n hN))
    (originalTorsionLift W.toAffine n
      (secondTorsionGenerator W n hN)) :
      W.toAffine.FunctionField) =
  W.toAffine.translation
    (Point.equivBaseChangeSelf W.toAffine
      (firstTorsionGenerator W n hN : W.toAffine.Point))
    (originalBasisWeilFunction W n hN) /
      (originalBasisWeilFunction W n hN :
        W.toAffine.FunctionField)

/-- A proof of that ONE explicit, honest original
rational-function identity yields the entire
source-original theta/Weil comparison on E[n].
The function's divisor certificate is now supplied
by pinned Tau Ceti; it is not an extra h_g premise. -/
theorem thetaPairing_eq_originalWeil_of_originalBasisFunctionRatio
    (h : OriginalBasisFunctionRatio W n hN) :
    thetaPairingAddHom W.toAffine n =
      Isogeny.weilPairing W n hN := by
  apply thetaPairing_eq_originalWeil_of_one_functionRatio
    W n hN
    (Isogeny.psiFunctionField_ne_zero W
      (by simpa using hN))
    (originalBasisWeilFunction W n hN)
  · have hg := originalBasisWeilFunction_divisor W n hN
    change Divisor.principal W.toAffine.isFunctionField
        (originalBasisWeilFunction W n hN) =
      Isogeny.weilPairingDivisor W
        (Isogeny.psiFunctionField_ne_zero W
          (by simpa using hN))
        (ThetaOriginalWeilSignReturn.thetaTorsionPoint W n
          (originalTorsionLift W.toAffine n
            (secondTorsionGenerator W n hN)))
    simpa only [] using hg
  · exact h

end GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaWeilOneFunctionGate
