/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_TAUCETI_SOURCE_PROOF_CANDIDATE / PARSING_NOT_RUN /
COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
Original authors and source: The Tau Ceti contributors, Apache-2.0,
TauCetiProject/TauCeti@2bdb755239d3bd84760e99bc83166bdf7cc75a6b.
Compile in pinned Tau Ceti Lean v4.36.0-rc1; no root math imports.
-/
import TauCetiThetaCommutatorRootsOfUnity
import TauCeti.AlgebraicGeometry.EllipticCurve.Isogeny.MulByInt.WeilPairing.Basic

set_option autoImplicit false
noncomputable section

/-!
# EXACT sign-sensitive return from original theta commutator to Weil e_n

Both sides now live in the SAME ORIGINAL rootsOfUnity n F:

- The left is the original rational-function theta commutator
     f_T · tau_{-T}(f_S) / (f_S · tau_{-S}(f_T)).
  Its n-th root condition is PROVED from the actual theta
  group law and central scalar kernel in the preceding adapter.

- The right is pinned
     TauCeti.Isogeny.weilPairing W n hN S T,
  defined by the original isogeny pullback function g_T
  with divisor [n]^*([T]-[O]) and the exact formula
     algebraMap(e_n(S,T)) = tau_S(g_T) / g_T.

A concrete geometric equality of THESE TWO rational-function
ratios is the required missing bridge. The return below
proves their EXACT e_n equality when that source divisor/
pullback calculation is provided. The opposite ratio has the
inverse output and therefore cannot be interchanged without
an explicit sign proof.

The hratio input is a genuine statement about ORIGINAL
rational functions and a genuine original Weil divisor.
It is NOT an unconditional theorem, a fitted rank-two
symplectic Gram matrix, or a license to choose the sign.
Proving hratio from the source [n]-pullback and elliptic
Weil reciprocity is still the next distinct GEOMETRIC step.
-/

namespace GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaOriginalWeilSignReturn

open TauCeti
open GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalGeometricTheta
open GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaCommutatorRootsOfUnity

variable {F : Type*} [Field F] [DecidableEq F] [IsSepClosed F]
  (W : WeierstrassCurve F) [W.IsElliptic]
  (n : ℕ) [NeZero n] (hN : (n : F) ≠ 0)

/-- Actual theta point, read as the ORIGINAL `Submodule.torsionBy`
carrier used by pinned Tau Ceti's isogeny Weil pairing. -/
noncomputable def thetaTorsionPoint
    (x : ThetaLift W.toAffine n) :
    Submodule.torsionBy ℤ W.toAffine.Point (n : ℤ) :=
  ⟨x.point, (Submodule.mem_torsionBy_iff _ _).mpr x.point_torsion⟩

/-- Source EXACT positive-orientation return:
if the ORIGINAL elliptic theta commutator ratio equals
tau_S(g_T)/g_T for a function whose divisor is the genuine
[n]-pullback Weil divisor, then the theta pairing equals
the actual original Weil e_n(S,T), not an abstract dual.
The full arithmetic work is proving hratio. -/
theorem thetaCommutator_eq_originalWeil_of_functionRatio
    (x y : ThetaLift W.toAffine n)
    (hψ : psiFunctionField W n ≠ 0)
    (g : W.toAffine.FunctionFieldˣ)
    (hg : Divisor.principal W.toAffine.isFunctionField g =
      Isogeny.weilPairingDivisor W hψ (thetaTorsionPoint W n y))
    (hratio :
      (commutatorFunction W.toAffine n x y :
        W.toAffine.FunctionField) =
      W.toAffine.translation
        (Point.equivBaseChangeSelf W.toAffine x.point) g / g) :
    thetaCommutatorInMuN W.toAffine n x y =
      (Isogeny.weilPairing W n hN
        (thetaTorsionPoint W n x)
        (thetaTorsionPoint W n y)).toMul := by
  apply Subtype.ext
  apply Units.ext
  apply (algebraMap F W.toAffine.FunctionField).injective
  calc
    algebraMap F W.toAffine.FunctionField
        ((thetaCommutatorInMuN W.toAffine n x y : rootsOfUnity n F) : Fˣ) =
      (commutatorFunction W.toAffine n x y :
        W.toAffine.FunctionField) :=
      (thetaCommutatorScalar_spec W.toAffine n x y).symm
    _ = W.toAffine.translation
        (Point.equivBaseChangeSelf W.toAffine x.point) g / g :=
      hratio
    _ = algebraMap F W.toAffine.FunctionField
        ((Isogeny.weilPairing W n hN
          (thetaTorsionPoint W n x)
          (thetaTorsionPoint W n y)).toMul : Fˣ) :=
      (Isogeny.algebraMap_weilPairing W n hN hg).symm

/-- A *reversed* rational-function ratio yields the
INVERSE original Weil pairing. This is the hostile
sign control required by the exact source translation
convention and prevents a silent ± correction. -/
theorem thetaCommutator_eq_inverseWeil_of_inverseRatio
    (x y : ThetaLift W.toAffine n)
    (hψ : psiFunctionField W n ≠ 0)
    (g : W.toAffine.FunctionFieldˣ)
    (hg : Divisor.principal W.toAffine.isFunctionField g =
      Isogeny.weilPairingDivisor W hψ (thetaTorsionPoint W n y))
    (hratioInv :
      (commutatorFunction W.toAffine n x y :
        W.toAffine.FunctionField) =
      g / W.toAffine.translation
        (Point.equivBaseChangeSelf W.toAffine x.point) g) :
    thetaCommutatorInMuN W.toAffine n x y =
      ((Isogeny.weilPairing W n hN
        (thetaTorsionPoint W n x)
        (thetaTorsionPoint W n y)).toMul)⁻¹ := by
  apply Subtype.ext
  apply Units.ext
  apply (algebraMap F W.toAffine.FunctionField).injective
  calc
    algebraMap F W.toAffine.FunctionField
        ((thetaCommutatorInMuN W.toAffine n x y : rootsOfUnity n F) : Fˣ) =
      (commutatorFunction W.toAffine n x y :
        W.toAffine.FunctionField) :=
      (thetaCommutatorScalar_spec W.toAffine n x y).symm
    _ = g / W.toAffine.translation
        (Point.equivBaseChangeSelf W.toAffine x.point) g :=
      hratioInv
    _ = (W.toAffine.translation
          (Point.equivBaseChangeSelf W.toAffine x.point) g / g)⁻¹ := by
      field_simp
    _ = algebraMap F W.toAffine.FunctionField
        (((Isogeny.weilPairing W n hN
          (thetaTorsionPoint W n x)
          (thetaTorsionPoint W n y)).toMul : Fˣ)⁻¹) := by
      rw [← Isogeny.algebraMap_weilPairing W n hN hg]
      simp

end GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaOriginalWeilSignReturn
