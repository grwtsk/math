/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_TAUCETI_SOURCE_PROOF_CANDIDATE / PARSING_NOT_RUN /
COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
Original Tau Ceti contributors, Apache-2.0,
TauCetiProject/TauCeti@2bdb755239d3bd84760e99bc83166bdf7cc75a6b.
Original Lean v4.36.0-rc1 only; do not import into root v4.34.1.
-/
import TauCetiThetaCommutatorRootsOfUnity
import TauCeti.GroupTheory.Commutator

set_option autoImplicit false
noncomputable section

/-!
# ACTUAL elliptic theta commutator: alternating biadditive E[n] pairing

The original geometric theta group has the REAL elliptic
rational-function law, with a faithful CENTRAL scalar kernel,
and the actual commutator has values in rootsOfUnity n F.

This source derives the alternating biadditive map

    E[n](F) ->+ E[n](F) ->+ Additive (rootsOfUnity n F)

by the REAL original theta group commutator. It does NOT
choose a rank-two Gram pairing or assume the Weil identity.
The genuine function-field scalar is independent of arbitrary
theta lifts over the SAME torsion points, using the original
fibre torsor and central kernel.

The remaining distinct arithmetic result is comparison with
Tau Ceti's independently defined Isogeny.weilPairing, using
its actual [n]-pullback divisor and the orientation of tau.
-/

namespace GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaCommutatorBilinear

open TauCeti
open GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalGeometricTheta
open GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaCommutatorRootsOfUnity

variable {F : Type*} [Field F] [DecidableEq F]
  (W : WeierstrassCurve.Affine F) [W.IsElliptic]
  (n : ℕ) [NeZero n]

private abbrev Torsion :=
  AddSubgroup.torsionBy W.Point (n : ℤ)

/-- Original geometric theta centrality at EVERY pair
of original rational-function lifts. -/
private theorem central_theta_commutator
    (x y z : ThetaLift W n) : Commute ⁅x,y⁆ z := by
  refine ⟨?_⟩
  change (x * y * x⁻¹ * y⁻¹) * z =
    z * (x * y * x⁻¹ * y⁻¹)
  exact thetaGroupCommutator_central W n x y z

/-- Noncommutative group algebra: when commutators are
central, the commutator is multiplicative in its
FIRST argument. No geometric sign hypothesis. -/
private theorem centralCommutator_mul_left
    (x y z : ThetaLift W n) :
    ⁅x*y,z⁆ = ⁅x,z⁆ * ⁅y,z⁆ := by
  calc
    ⁅x*y,z⁆ = x * ⁅y,z⁆ * x⁻¹ * ⁅x,z⁆ := by
      rw [commutatorElement_mul_left_eq_conj_mul]
    _ = ⁅y,z⁆ * ⁅x,z⁆ := by
      rw [(central_theta_commutator W n y z x).symm.eq]
      group
    _ = ⁅x,z⁆ * ⁅y,z⁆ :=
      (central_theta_commutator W n y z ⁅x,z⁆).eq

/-- Centrality also makes the commutator multiplicative
in its SECOND argument; reversing the two arguments
changes the source pairing to its inverse. -/
private theorem centralCommutator_mul_right
    (x y z : ThetaLift W n) :
    ⁅x,y*z⁆ = ⁅x,y⁆ * ⁅x,z⁆ := by
  calc
    ⁅x,y*z⁆ = ⁅x,y⁆ * (y * ⁅x,z⁆ * y⁻¹) := by
      rw [commutatorElement_mul_right_eq_mul_conj]
    _ = ⁅x,y⁆ * ⁅x,z⁆ := by
      rw [(central_theta_commutator W n x z y).symm.eq]
      group

/-- Genuine original theta scalar, included back into
the same actual group, IS its group commutator. -/
theorem thetaScalar_lift_eq_commutator
    (x y : ThetaLift W n) :
    scalarLift W n (thetaCommutatorScalar W n x y) =
      ⁅x,y⁆ := by
  obtain ⟨c,hc⟩ := exists_scalarLift_thetaGroupCommutator W n x y
  rw [thetaCommutatorScalar_eq_groupScalar W n x y hc]
  exact hc.symm

/-- Multiplicativity in the first lift, proved from the
actual original scalar inclusion rather than a chosen
Heisenberg character. -/
theorem thetaScalar_mul_left (x y z : ThetaLift W n) :
    thetaCommutatorScalar W n (x*y) z =
      thetaCommutatorScalar W n x z *
        thetaCommutatorScalar W n y z := by
  apply scalarLiftHom_injective W n
  change scalarLift W n (thetaCommutatorScalar W n (x*y) z) =
    scalarLift W n
      (thetaCommutatorScalar W n x z *
        thetaCommutatorScalar W n y z)
  rw [(scalarLiftHom W n).map_mul]
  change scalarLift W n (thetaCommutatorScalar W n (x*y) z) =
    scalarLift W n (thetaCommutatorScalar W n x z) *
      scalarLift W n (thetaCommutatorScalar W n y z)
  rw [thetaScalar_lift_eq_commutator,
    thetaScalar_lift_eq_commutator,
    thetaScalar_lift_eq_commutator]
  exact centralCommutator_mul_left W n x y z

/-- Multiplicativity in the second original theta lift. -/
theorem thetaScalar_mul_right (x y z : ThetaLift W n) :
    thetaCommutatorScalar W n x (y*z) =
      thetaCommutatorScalar W n x y *
        thetaCommutatorScalar W n x z := by
  apply scalarLiftHom_injective W n
  change scalarLift W n (thetaCommutatorScalar W n x (y*z)) =
    scalarLift W n
      (thetaCommutatorScalar W n x y *
        thetaCommutatorScalar W n x z)
  rw [(scalarLiftHom W n).map_mul]
  change scalarLift W n (thetaCommutatorScalar W n x (y*z)) =
    scalarLift W n (thetaCommutatorScalar W n x y) *
      scalarLift W n (thetaCommutatorScalar W n x z)
  rw [thetaScalar_lift_eq_commutator,
    thetaScalar_lift_eq_commutator,
    thetaScalar_lift_eq_commutator]
  exact centralCommutator_mul_right W n x y z

/-- Scalar lifts commute with everything, so their
genuine theta commutator is 1. -/
theorem thetaScalar_left_scalar (c : Fˣ) (x : ThetaLift W n) :
    thetaCommutatorScalar W n (scalarLift W n c) x = 1 := by
  apply scalarLiftHom_injective W n
  change scalarLift W n (thetaCommutatorScalar W n
      (scalarLift W n c) x) = scalarLift W n 1
  have hOne : scalarLift W n (1 : Fˣ) = 1 :=
    (scalarLiftHom W n).map_one
  rw [thetaScalar_lift_eq_commutator, hOne]
  exact commutatorElement_eq_one_iff_commute.mpr
    ⟨scalarLift_central W n c x⟩

theorem thetaScalar_right_scalar (x : ThetaLift W n) (c : Fˣ) :
    thetaCommutatorScalar W n x (scalarLift W n c) = 1 := by
  apply scalarLiftHom_injective W n
  change scalarLift W n (thetaCommutatorScalar W n x
      (scalarLift W n c)) = scalarLift W n 1
  have hOne : scalarLift W n (1 : Fˣ) = 1 :=
    (scalarLiftHom W n).map_one
  rw [thetaScalar_lift_eq_commutator, hOne]
  exact commutatorElement_eq_one_iff_commute.mpr
    ⟨(scalarLift_central W n c x).symm⟩

/-- The REAL theta commutator scalar depends only on
the underlying two original torsion points, not on
the choice of rational-function lifts or scalings. -/
theorem thetaScalar_eq_of_points
    (x x' y y' : ThetaLift W n)
    (hx : x.point = x'.point)
    (hy : y.point = y'.point) :
    thetaCommutatorScalar W n x y =
      thetaCommutatorScalar W n x' y' := by
  obtain ⟨c,hc⟩ :=
    (ThetaLift.existsUnique_scalar_mul_eq_of_point_eq W n x x' hx).exists
  obtain ⟨d,hd⟩ :=
    (ThetaLift.existsUnique_scalar_mul_eq_of_point_eq W n y y' hy).exists
  calc
    thetaCommutatorScalar W n x y =
      thetaCommutatorScalar W n
        (scalarLift W n c * x') (scalarLift W n d * y') := by
        rw [hc,hd]
    _ = thetaCommutatorScalar W n x' y' := by
      rw [thetaScalar_mul_left, thetaScalar_left_scalar,
        one_mul, thetaScalar_mul_right,
        thetaScalar_right_scalar, one_mul]

/-- The diagonal is 1 from the ACTUAL group commutator,
not from an imposed alternating Gram matrix. -/
theorem thetaScalar_self (x : ThetaLift W n) :
    thetaCommutatorScalar W n x x = 1 := by
  apply scalarLiftHom_injective W n
  change scalarLift W n (thetaCommutatorScalar W n x x) =
    scalarLift W n 1
  have hOne : scalarLift W n (1 : Fˣ) = 1 :=
    (scalarLiftHom W n).map_one
  rw [thetaScalar_lift_eq_commutator, hOne]
  simp [commutatorElement_def]

/-- A theta lift of an ORIGINAL torsion point in E[n].
The torsion certificate uses exactly the pinned subgroup
membership, not an unrelated coordinate representation. -/
noncomputable def originalTorsionLift (t : Torsion W n) :
    ThetaLift W n :=
  liftPoint W n t.1 ((Submodule.mem_torsionBy_iff _ _).mp t.2)

/-- Actual original theta commutator on two ORIGINAL
n-torsion points, already valued in the correct μ_n. -/
noncomputable def thetaPointPairing (s t : Torsion W n) :
    rootsOfUnity n F :=
  thetaCommutatorInMuN W n
    (originalTorsionLift W n s) (originalTorsionLift W n t)

/-- Source theta-point pairing is multiplicative in the
FIRST torsion point, independent of the theta lift chosen
for the sum s+t. -/
theorem thetaPointPairing_add_left
    (s t u : Torsion W n) :
    thetaPointPairing W n (s+t) u =
      thetaPointPairing W n s u *
        thetaPointPairing W n t u := by
  apply Subtype.ext
  change thetaCommutatorScalar W n (originalTorsionLift W n (s+t))
      (originalTorsionLift W n u) =
    thetaCommutatorScalar W n (originalTorsionLift W n s)
        (originalTorsionLift W n u) *
      thetaCommutatorScalar W n (originalTorsionLift W n t)
        (originalTorsionLift W n u)
  calc
    thetaCommutatorScalar W n (originalTorsionLift W n (s+t))
        (originalTorsionLift W n u) =
      thetaCommutatorScalar W n
        (originalTorsionLift W n s * originalTorsionLift W n t)
        (originalTorsionLift W n u) :=
      thetaScalar_eq_of_points W n _ _ _ _ (by
        change ((s+t : Torsion W n) : W.Point) =
          (s : W.Point) + (t : W.Point)
        rfl) rfl
    _ = _ := thetaScalar_mul_left W n _ _ _

/-- Source theta-point pairing is multiplicative in its
SECOND torsion point, preserving the ORIGINAL order. -/
theorem thetaPointPairing_add_right
    (s t u : Torsion W n) :
    thetaPointPairing W n s (t+u) =
      thetaPointPairing W n s t *
        thetaPointPairing W n s u := by
  apply Subtype.ext
  change thetaCommutatorScalar W n (originalTorsionLift W n s)
      (originalTorsionLift W n (t+u)) =
    thetaCommutatorScalar W n (originalTorsionLift W n s)
      (originalTorsionLift W n t) *
      thetaCommutatorScalar W n (originalTorsionLift W n s)
        (originalTorsionLift W n u)
  calc
    thetaCommutatorScalar W n (originalTorsionLift W n s)
        (originalTorsionLift W n (t+u)) =
      thetaCommutatorScalar W n
        (originalTorsionLift W n s)
        (originalTorsionLift W n t * originalTorsionLift W n u) :=
      thetaScalar_eq_of_points W n _ _ _ _ rfl (by
        change ((t+u : Torsion W n) : W.Point) =
          (t : W.Point) + (u : W.Point)
        rfl)
    _ = _ := thetaScalar_mul_right W n _ _ _

/-- Diagonal of the actual original torsion pairing is 1. -/
theorem thetaPointPairing_self (s : Torsion W n) :
    thetaPointPairing W n s s = 1 := by
  apply Subtype.ext
  change thetaCommutatorScalar W n (originalTorsionLift W n s)
      (originalTorsionLift W n s) = 1
  exact thetaScalar_self W n _

/-- Original theta commutator as a genuine alternating
BIADDITIVE group homomorphism, not an assumed pairing.
The codomain is the original additive μ_n representation. -/
noncomputable def thetaPairingAddHom :
    Torsion W n →+ Torsion W n →+ Additive (rootsOfUnity n F) := by
  let β : Torsion W n → Torsion W n → rootsOfUnity n F :=
    thetaPointPairing W n
  have hzeroLeft (u : Torsion W n) : β 0 u = 1 := by
    have h : originalTorsionLift W n (0 : Torsion W n) |>.point =
        (scalarLift W n 1).point := by rfl
    apply Subtype.ext
    change thetaCommutatorScalar W n (originalTorsionLift W n 0)
      (originalTorsionLift W n u) = 1
    rw [thetaScalar_eq_of_points W n _ _ _ _ h rfl]
    exact thetaScalar_left_scalar W n 1 _
  have hzeroRight (u : Torsion W n) : β u 0 = 1 := by
    have h : originalTorsionLift W n (0 : Torsion W n) |>.point =
        (scalarLift W n 1).point := by rfl
    apply Subtype.ext
    change thetaCommutatorScalar W n (originalTorsionLift W n u)
      (originalTorsionLift W n 0) = 1
    rw [thetaScalar_eq_of_points W n _ _ _ _ rfl h]
    exact thetaScalar_right_scalar W n _ 1
  refine {
    toFun := fun s =>
      { toFun := fun t => Additive.ofMul (β s t)
        map_zero' := ?_
        map_add' := ?_ }
    map_zero' := ?_
    map_add' := ?_
  }
  · apply Additive.toMul.injective
    exact hzeroRight s
  · intro t u
    apply Additive.toMul.injective
    change β s (t+u) = β s t * β s u
    exact thetaPointPairing_add_right W n s t u
  · apply AddMonoidHom.ext
    intro t
    apply Additive.toMul.injective
    exact hzeroLeft t
  · intro s t
    apply AddMonoidHom.ext
    intro u
    apply Additive.toMul.injective
    change β (s+t) u = β s u * β t u
    exact thetaPointPairing_add_left W n s t u

/-- The ORIGINAL theta pairing is alternating on TRUE E[n],
with no divisor comparison or bilinear-form assumptions. -/
theorem thetaPairingAddHom_self (s : Torsion W n) :
    thetaPairingAddHom W n s s = 0 := by
  apply Additive.toMul.injective
  exact thetaPointPairing_self W n s

end GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaCommutatorBilinear
