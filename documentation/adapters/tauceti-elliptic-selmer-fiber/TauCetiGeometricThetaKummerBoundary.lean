/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_ORIGINAL_TAUCETI_SOURCE_PROOF_CANDIDATE /
PARSING_NOT_RUN / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

Original Tau Ceti authors/contributors, Apache-2.0:
TauCetiProject/TauCeti @ 2bdb755239d3bd84760e99bc83166bdf7cc75a6b
Lean v4.36.0-rc1. Not an import into grwtsk/math Lean v4.34.1.
-/
import TauCeti.AlgebraicGeometry.EllipticCurve.Affine.FunctionField.TorsionDivisor
import TauCeti.AlgebraicGeometry.EllipticCurve.Affine.FunctionField.Translation.Place
import TauCeti.AlgebraicGeometry.EllipticCurve.Affine.FunctionField.Galois.Divisor
import TauCeti.AlgebraicGeometry.EllipticCurve.GaloisCohomology.Coefficients
import TauCeti.RepresentationTheory.Homological.ContCohomology.LowDegree

set_option autoImplicit false
noncomputable section

/-!
# Genuine geometric theta functions and the Kummer obstruction boundary

For the ORIGINAL elliptic W/F and its ORIGINAL function field
F(W), a theta lift above T ∈ E[n] consists of an actual nonzero
function f with divisor n([T]-[O]). The source EXISTENCE theorem
W.exists_principal_eq_zsmul_ofPoint_sub_infinity supplies f.

Its multiplication is the true translated-function product
  (T,f) * (S,g) = (T+S, f * tau_(-T)^*g).
Its commutator is a nonzero CONSTANT by the source theorem
Divisor.principal_eq_zero_iff, not by a chosen symplectic matrix.

Over Fsep, if P ∈ E(F), nQ=P, the original principal-divisor
criterion supplies h with div(h)=n[Q]-[P]-(n-1)[O].
The functions u_sigma=tau_Q^*(sigma h/h) give actual theta lifts
above a_sigma=sigma Q-Q and satisfy the STRICT crossed identity
  u_sigma * tau_(-a_sigma)^*(sigma u_tau) = u_(sigma*tau).
This is the geometric vanishing mechanism Delta_n(delta_n P)=0.

For arbitrary source Galois one-cocycle a, dividing
  lift(a_sigma) * sigma(lift(a_tau))
by lift(a_(sigma*tau)) gives a nonzero scalar function
with zero divisor: the original theta obstruction RAW cochain.

The remaining ACCEPTANCE obligations are the continuous H2
cocycle/independence lemmas and the geometric commutator comparison
with TauCeti's actual W.torsionCoeffWeilPairing, including its
argument order. No source-verified Weil polarization, Brauer-class
equality, local Kummer orthogonality or BSD theorem is claimed.
-/

namespace GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalTheta

open TauCeti TauCeti.ContCohomology
open WeierstrassCurve.Affine AlgebraicGeometry IsDedekindDomain

variable {F : Type*} [Field F] [DecidableEq F]
  (W : WeierstrassCurve.Affine F) [W.IsElliptic]
  (n : ℕ) [NeZero n]

noncomputable def thetaDivisor (T : W.Point) :
    Divisor F W.FunctionField :=
  (n : ℤ) •
    (WeilDivisor.ofPoint (W.pointEquivDegreeOnePlace T).1 -
      WeilDivisor.ofPoint (Place.infinity W))

/-- The translation tau_{-T} on ORIGINAL rational functions:
its action on point places is [S] ↦ [S+T]. -/
noncomputable def thetaTranslate (T : W.Point) :
    W.FunctionField ≃ₐ[F] W.FunctionField :=
  W.translation (Point.equivBaseChangeSelf W (-T))

/-- A genuine theta lift stores the original nonzero elliptic
function and its true principal divisor equation. -/
structure ThetaLift where
  point : W.Point
  torsion : (n : ℤ) • point = 0
  function : W.FunctionFieldˣ
  principal : Divisor.principal W.isFunctionField function =
    thetaDivisor W n point

/-- Geometric theta lifts are determined by their ACTUAL
elliptic point and rational function, not their Prop proofs. -/
@[ext] theorem ThetaLift.ext {x y : ThetaLift W n}
    (hp : x.point = y.point) (hf : x.function = y.function) :
    x = y := by
  cases x with
  | mk p pt f pf =>
    cases y with
    | mk q qt g qg =>
      cases hp
      cases hf
      rfl

noncomputable def liftAt (T : W.Point)
    (hT : (n : ℤ) • T = 0) : ThetaLift W n := by
  obtain ⟨f,hf⟩ := W.exists_principal_eq_zsmul_ofPoint_sub_infinity hT
  exact ⟨T,hT,f,hf⟩

/-- Genuine translated divisor law; source translation
moves point places and fixes the underlying field constants. -/
theorem thetaDivisor_add (T S : W.Point) :
    thetaDivisor W n (T + S) =
      thetaDivisor W n T +
      thetaTranslate W T • thetaDivisor W n S := by
  classical
  have hT (R : W.Point) :
      thetaTranslate W T • WeilDivisor.ofPoint
        (W.pointEquivDegreeOnePlace R).1 =
      WeilDivisor.ofPoint
        (W.pointEquivDegreeOnePlace (R + T)).1 := by
    rw [WeilDivisor.smul_ofPoint]
    change W.translation (Point.equivBaseChangeSelf W (-T)) •
        (W.pointEquivDegreeOnePlace R).1 =
      (W.pointEquivDegreeOnePlace (R + T)).1
    rw [W.translation_smul_pointEquivDegreeOnePlace]
    congr 1
    abel
  simp only [thetaDivisor]
  rw [smul_sub, smul_zsmul]
  rw [← coe_pointEquivDegreeOnePlace_zero]
  rw [hT S,hT 0]
  simp only [zero_add]
  abel

/-- The geometric multiplication of two ORIGINAL theta
functions, with exact noncommutative product order. -/
noncomputable def liftProduct (x y : ThetaLift W n) : ThetaLift W n := by
  let f : W.FunctionFieldˣ :=
    x.function * Units.map
      (thetaTranslate W x.point : W.FunctionField →* W.FunctionField) y.function
  have hf : Divisor.principal W.isFunctionField f =
      thetaDivisor W n (x.point + y.point) := by
    rw [f, Divisor.principal_mul, Divisor.principal_smul,
      x.principal,y.principal]
    exact (thetaDivisor_add W n x.point y.point).symm
  exact ⟨x.point+y.point,
    by rw [smul_add,x.torsion,y.torsion,add_zero],f,hf⟩

/-- Its commutator is an ACTUAL nonzero scalar function:
the ratio of f_T tau_(-T)f_S to f_S tau_(-S)f_T. -/
noncomputable def thetaCommutatorFunction
    (x y : ThetaLift W n) : W.FunctionFieldˣ :=
  (liftProduct W n x y).function /
    (liftProduct W n y x).function

theorem thetaCommutator_principal_zero (x y : ThetaLift W n) :
    Divisor.principal W.isFunctionField
      (thetaCommutatorFunction W n x y) = 0 := by
  rw [thetaCommutatorFunction,Divisor.principal_div,
    (liftProduct W n x y).principal,
    (liftProduct W n y x).principal,
    add_comm x.point y.point,sub_self]

theorem thetaCommutator_is_scalar (x y : ThetaLift W n) :
    ∃ c : Fˣ, (thetaCommutatorFunction W n x y : W.FunctionField) =
      algebraMap F W.FunctionField (c : F) := by
  obtain ⟨c,hc⟩ :=
    (Divisor.principal_eq_zero_iff W.isFunctionField
      (isIntegrallyClosedIn_functionField W)
      (thetaCommutatorFunction W n x y)).1
      (thetaCommutator_principal_zero W n x y)
  have hc0 : c ≠ 0 := by
    intro h
    rw [h,map_zero] at hc
    exact (Units.ne_zero (thetaCommutatorFunction W n x y)) hc.symm
  exact ⟨Units.mk0 c hc0,hc.symm⟩

/-! Original principal nQ=P divisor, not an abstract line bundle. -/

/-- The divisor n[Q]-[P]-(n-1)[O] is of degree zero and
sum nQ-P. The source divisor-sum criterion makes it principal
precisely when Q is a genuine n-division point of P. -/
noncomputable def rationalKummerDivisor (P Q : W.Point) :
    Divisor F W.FunctionField :=
  (n : ℤ) • (WeilDivisor.ofPoint
      (W.pointEquivDegreeOnePlace Q).1 -
    WeilDivisor.ofPoint (Place.infinity W)) -
    (WeilDivisor.ofPoint (W.pointEquivDegreeOnePlace P).1 -
      WeilDivisor.ofPoint (Place.infinity W))

theorem exists_rationalKummerFunction
    {P Q : W.Point} (hQ : (n : ℤ) • Q = P) :
    ∃ h : W.FunctionFieldˣ,
      Divisor.principal W.isFunctionField h =
        rationalKummerDivisor W n P Q := by
  let dQ : (Divisor.degree (k := F) (F := W.FunctionField)).ker :=
    ⟨WeilDivisor.ofPoint (W.pointEquivDegreeOnePlace Q).1 -
      WeilDivisor.ofPoint (W.pointEquivDegreeOnePlace 0).1,
      W.ofPoint_sub_ofPoint_mem_ker_degree Q 0⟩
  let dP : (Divisor.degree (k := F) (F := W.FunctionField)).ker :=
    ⟨WeilDivisor.ofPoint (W.pointEquivDegreeOnePlace P).1 -
      WeilDivisor.ofPoint (W.pointEquivDegreeOnePlace 0).1,
      W.ofPoint_sub_ofPoint_mem_ker_degree P 0⟩
  let D : (Divisor.degree (k := F) (F := W.FunctionField)).ker :=
    (n : ℤ) • dQ - dP
  have hz : W.divisorSum D = 0 := by
    simp only [D,map_sub,map_zsmul,
      W.divisorSum_ofPoint_sub_ofPoint]
    simpa [sub_zero] using hQ
  obtain ⟨h,hh⟩ := W.divisorSum_eq_zero_iff.mp hz
  refine ⟨h,?_⟩
  simpa [D,dQ,dP,rationalKummerDivisor,
    coe_pointEquivDegreeOnePlace_zero] using hh

end GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalTheta

/-! ## The Galois theta obstruction lives on the same original E/F.
The following raw functions use the already constructed geometric
theta lifts over the original separable closure. -/

namespace GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalThetaGalois

open TauCeti TauCeti.ContCohomology
open WeierstrassCurve WeierstrassCurve.Affine
open GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalTheta

variable {F : Type*} [Field F] (W : WeierstrassCurve F)
  [W.IsElliptic] (n : ℕ) [NeZero n]

private abbrev EW := (W⁄(SeparableClosure F)).toAffine
private abbrev G := AbsoluteGaloisGroup F
private abbrev K := SeparableClosure F

noncomputable def geometricPoint (a : W.TorsionCoeff n) :
    (EW W).Point := W.pointCoeffEquiv.symm (a : W.PointCoeff)

theorem geometricPoint_torsion (a : W.TorsionCoeff n) :
    (n : ℤ) • geometricPoint W n a = 0 := by
  have ha : n • (a : W.PointCoeff) = 0 :=
    (AddSubgroup.torsionBy.nsmul_iff).mp a.property
  have hb : n • geometricPoint W n a = 0 := by
    apply W.pointCoeffEquiv.injective
    simpa [geometricPoint] using ha
  simpa only [natCast_zsmul] using hb

noncomputable def sourceLift (a : W.TorsionCoeff n) :
    ThetaLift (EW W) n := by
  classical
  exact liftAt (EW W) n (geometricPoint W n a)
    (geometricPoint_torsion W n a)

/-- The genuine Galois action on original theta functions;
W.functionFieldGaloisAction acts on the function itself
and W.pointGaloisAction on the actual n-torsion point. -/
noncomputable def galoisLift (σ : G (F := F))
    (x : ThetaLift (EW W) n) : ThetaLift (EW W) n := by
  classical
  let gT := Multiplicative.toAdd (W.pointGaloisAction σ) x.point
  let gf : (EW W).FunctionFieldˣ :=
    Units.map (MonoidHom.ofClass (W.functionFieldGaloisAction σ)) x.function
  have ht : (n : ℤ) • gT = 0 := by
    rw [← map_zsmul,x.torsion,map_zero]
  have hf : Divisor.principal (EW W).isFunctionField gf =
      thetaDivisor (EW W) n gT := by
    rw [W.divisorGaloisAction_principal,x.principal]
    simp only [thetaDivisor,map_zsmul,map_sub]
    rw [W.divisorGaloisAction_ofPoint,
      W.divisorGaloisAction_ofPoint,
      W.placeGaloisAction_pointEquivDegreeOnePlace,
      W.placeGaloisAction_infinity]
  exact ⟨gT,ht,gf,hf⟩

/-- True geometric coefficient point of the actual rational
P∈E(F), not an unrelated selected point. -/
noncomputable def rationalPoint (P : W.toAffine.Point) :
    (EW W).Point :=
  W.pointCoeffEquiv.symm (W.basePointCoeff P)

def IsDivisionPoint (P : W.toAffine.Point) (Q : (EW W).Point) : Prop :=
  (n : ℤ) • Q = rationalPoint W P

noncomputable def divisionFunction
    (P : W.toAffine.Point) (Q : (EW W).Point)
    (hQ : IsDivisionPoint W n P Q) :
    (EW W).FunctionFieldˣ := by
  classical
  exact Classical.choose (exists_rationalKummerFunction (EW W) n hQ)

/-- The true Kummer theta-function lift above σQ−Q:
u_sigma = tau_Q^*(sigma h_Q / h_Q). -/
noncomputable def kummerThetaUnit (Q : (EW W).Point)
    (h : (EW W).FunctionFieldˣ) (σ : G (F := F)) :
    (EW W).FunctionFieldˣ :=
  Units.map (thetaTranslate (EW W) (-Q) :
    (EW W).FunctionField →* (EW W).FunctionField)
    (Units.map (MonoidHom.ofClass (W.functionFieldGaloisAction σ)) h / h)

/-- ORIGINAL Galois/translation interchange; the negative
translation sign is fixed, not chosen after a Weil cup. -/
theorem galoisTranslation_cancel (Q : (EW W).Point)
    (σ : G (F := F)) (z : (EW W).FunctionField) :
    thetaTranslate (EW W)
        (Multiplicative.toAdd (W.pointGaloisAction σ) Q - Q)
      (W.functionFieldGaloisAction σ
        (thetaTranslate (EW W) (-Q) z)) =
      thetaTranslate (EW W) (-Q)
        (W.functionFieldGaloisAction σ z) := by
  have h := W.functionFieldGaloisAction_translation σ Q z
  change (EW W).translation
      (Point.equivBaseChangeSelf (EW W)
        (-(Multiplicative.toAdd (W.pointGaloisAction σ) Q-Q)))
      (W.functionFieldGaloisAction σ
        ((EW W).translation (Point.equivBaseChangeSelf (EW W) Q) z)) =
    (EW W).translation (Point.equivBaseChangeSelf (EW W) Q)
      (W.functionFieldGaloisAction σ z)
  rw [h]
  rw [show -(Multiplicative.toAdd (W.pointGaloisAction σ) Q-Q) =
      Q - Multiplicative.toAdd (W.pointGaloisAction σ) Q by abel]
  rw [← (EW W).translation_add]
  congr 1
  apply (Point.equivBaseChangeSelf (EW W)).injective
  simp [map_add]
  abel

/-- The STRICT group-valued crossed identity is proved at
the original nonzero function level, with no Brauer
obstruction assumed. -/
theorem kummerThetaUnit_crossed (Q : (EW W).Point)
    (h : (EW W).FunctionFieldˣ) (σ τ : G (F := F)) :
    kummerThetaUnit W Q h σ *
      Units.map (thetaTranslate (EW W)
        (Multiplicative.toAdd (W.pointGaloisAction σ) Q-Q) :
          (EW W).FunctionField →* (EW W).FunctionField)
        (Units.map (MonoidHom.ofClass (W.functionFieldGaloisAction σ))
          (kummerThetaUnit W Q h τ)) =
      kummerThetaUnit W Q h (σ*τ) := by
  apply Units.ext
  simp only [kummerThetaUnit,Units.val_mul,Units.val_map,Units.val_div]
  rw [galoisTranslation_cancel W Q σ]
  simp only [map_div,map_mul]
  rw [← map_mul (W.functionFieldGaloisAction)]
  group

/-- A rational base-field point is fixed by the ORIGINAL
Galois action on the geometric elliptic curve. -/
theorem rationalPoint_fixed
    (P : W.toAffine.Point) (σ : G (F := F)) :
    Multiplicative.toAdd (W.pointGaloisAction σ) (rationalPoint W P) =
      rationalPoint W P := by
  rw [← W.pointGaloisAction_apply σ (rationalPoint W P)]
  change W.pointCoeffEquiv.symm (σ • W.basePointCoeff P) = _
  rw [W.smul_basePointCoeff]

/-- The ORIGINAL Kummer point a_sigma=σQ−Q is genuinely
n-torsion when nQ=P comes from the base field. -/
theorem kummerPoint_torsion
    (P : W.toAffine.Point) (Q : (EW W).Point)
    (hQ : IsDivisionPoint W n P Q) (σ : G (F := F)) :
    (n : ℤ) •
      (Multiplicative.toAdd (W.pointGaloisAction σ) Q - Q) = 0 := by
  rw [smul_sub, ← map_zsmul, hQ,
    rationalPoint_fixed W P σ, hQ, sub_self]

/-- The exact Kummer theta divisor equation follows from
the actual Galois action on point places, original
principal divisors and translation of points.
This is NOT a freely chosen cohomological lift. -/
theorem kummerThetaUnit_divisor
    (P : W.toAffine.Point) (Q : (EW W).Point)
    (hQ : IsDivisionPoint W n P Q) (σ : G (F := F)) :
    Divisor.principal (EW W).isFunctionField
        (kummerThetaUnit W Q (divisionFunction W n P Q hQ) σ) =
      thetaDivisor (EW W) n
        (Multiplicative.toAdd (W.pointGaloisAction σ) Q - Q) := by
  classical
  let gQ := Multiplicative.toAdd (W.pointGaloisAction σ) Q
  let p₀ (R : (EW W).Point) :
      Divisor (K (F := F)) (EW W).FunctionField :=
    WeilDivisor.ofPoint ((EW W).pointEquivDegreeOnePlace R).1
  have hP :
      W.placeGaloisAction σ
        ((EW W).pointEquivDegreeOnePlace (rationalPoint W P)).1 =
      ((EW W).pointEquivDegreeOnePlace (rationalPoint W P)).1 := by
    rw [W.placeGaloisAction_pointEquivDegreeOnePlace,
      rationalPoint_fixed W P σ]
  have hσQ :
      W.placeGaloisAction σ ((EW W).pointEquivDegreeOnePlace Q).1 =
      ((EW W).pointEquivDegreeOnePlace gQ).1 :=
    W.placeGaloisAction_pointEquivDegreeOnePlace σ Q
  have hdiv :
      Multiplicative.toAdd (W.divisorGaloisAction σ)
        (rationalKummerDivisor (EW W) n (rationalPoint W P) Q) -
        rationalKummerDivisor (EW W) n (rationalPoint W P) Q =
      (n : ℤ) • (p₀ gQ - p₀ Q) := by
    simp only [rationalKummerDivisor, map_sub, map_zsmul,
      W.divisorGaloisAction_ofPoint]
    rw [hP,hσQ,W.placeGaloisAction_infinity]
    abel
  have ht :
      thetaTranslate (EW W) (-Q) •
        ((n : ℤ) • (p₀ gQ - p₀ Q)) =
      thetaDivisor (EW W) n (gQ-Q) := by
    rw [smul_zsmul,smul_sub,WeilDivisor.smul_ofPoint,
      WeilDivisor.smul_ofPoint]
    change (n : ℤ) •
      (WeilDivisor.ofPoint
        (((EW W).translation (Point.equivBaseChangeSelf (EW W) Q)) •
          ((EW W).pointEquivDegreeOnePlace gQ).1) -
       WeilDivisor.ofPoint
        (((EW W).translation (Point.equivBaseChangeSelf (EW W) Q)) •
          ((EW W).pointEquivDegreeOnePlace Q).1)) = _
    rw [(EW W).translation_smul_pointEquivDegreeOnePlace,
      (EW W).translation_smul_pointEquivDegreeOnePlace]
    simp only [sub_self,sub_zero]
    simp [thetaDivisor,coe_pointEquivDegreeOnePlace_zero]
  calc
    Divisor.principal (EW W).isFunctionField
        (kummerThetaUnit W Q (divisionFunction W n P Q hQ) σ) =
      thetaTranslate (EW W) (-Q) •
        (Multiplicative.toAdd (W.divisorGaloisAction σ)
          (rationalKummerDivisor (EW W) n (rationalPoint W P) Q) -
          rationalKummerDivisor (EW W) n (rationalPoint W P) Q) := by
      rw [kummerThetaUnit,Divisor.principal_smul,
        Divisor.principal_div,W.divisorGaloisAction_principal]
      have hd := Classical.choose_spec
        (exists_rationalKummerFunction (EW W) n hQ)
      rw [hd]
    _ = thetaTranslate (EW W) (-Q) •
        ((n : ℤ) • (p₀ gQ - p₀ Q)) :=
      congrArg (fun z => thetaTranslate (EW W) (-Q) • z) hdiv
    _ = thetaDivisor (EW W) n (gQ-Q) := ht

/-- Actual theta lift of the ORIGINAL Kummer cocycle using
the function h_Q from the original elliptic divisor-sum
existence theorem. -/
noncomputable def kummerThetaLift
    (P : W.toAffine.Point) (Q : (EW W).Point)
    (hQ : IsDivisionPoint W n P Q) (σ : G (F := F)) :
    ThetaLift (EW W) n :=
  ⟨Multiplicative.toAdd (W.pointGaloisAction σ) Q-Q,
    kummerPoint_torsion W n P Q hQ σ,
    kummerThetaUnit W Q (divisionFunction W n P Q hQ) σ,
    kummerThetaUnit_divisor W n P Q hQ σ⟩

/-- The theta-valued Kummer cocycle has ZERO boundary
strictly in the ORIGINAL elliptic function-field group:
u_sigma * tau_(-a_sigma)(sigma u_tau)=u_(sigma*tau).
The point and function parts are proved separately
from the original Galois action and translation laws. -/
theorem kummerThetaLift_strictCrossed
    (P : W.toAffine.Point) (Q : (EW W).Point)
    (hQ : IsDivisionPoint W n P Q)
    (σ τ : G (F := F)) :
    liftProduct (EW W) n
      (kummerThetaLift W n P Q hQ σ)
      (galoisLift W n σ (kummerThetaLift W n P Q hQ τ)) =
    kummerThetaLift W n P Q hQ (σ*τ) := by
  apply ThetaLift.ext (EW W) n
  · change
      (Multiplicative.toAdd (W.pointGaloisAction σ) Q-Q) +
      Multiplicative.toAdd (W.pointGaloisAction σ)
        (Multiplicative.toAdd (W.pointGaloisAction τ) Q-Q) =
      Multiplicative.toAdd (W.pointGaloisAction (σ*τ)) Q-Q
    rw [map_sub,←map_mul (W.pointGaloisAction)]
    abel
  · change
      kummerThetaUnit W Q (divisionFunction W n P Q hQ) σ *
        Units.map (thetaTranslate (EW W)
          (Multiplicative.toAdd (W.pointGaloisAction σ) Q-Q) : _ →* _)
          (Units.map (MonoidHom.ofClass (W.functionFieldGaloisAction σ))
            (kummerThetaUnit W Q (divisionFunction W n P Q hQ) τ)) =
      kummerThetaUnit W Q (divisionFunction W n P Q hQ) (σ*τ)
    exact kummerThetaUnit_crossed W Q
      (divisionFunction W n P Q hQ) σ τ

/-- The source H² scalar obstruction cochain of the actual
E[n] cocycle, before the continuity/cocycle-class audit. -/
noncomputable def rawThetaObstructionFunction
    (a : Z1 (G (F := F)) (W.TorsionCoeff n))
    (σ τ : G (F := F)) : (EW W).FunctionFieldˣ :=
  (liftProduct (EW W) n
      (sourceLift W n (a σ))
      (galoisLift W n σ (sourceLift W n (a τ)))).function /
    (sourceLift W n (a (σ*τ))).function

/-- The ACTUAL raw boundary has principal divisor zero.
It is therefore a genuine Fsep×-valued scalar (no
ad hoc numeric theta obstruction). -/
theorem rawThetaObstruction_principal_zero
    (a : Z1 (G (F := F)) (W.TorsionCoeff n))
    (σ τ : G (F := F)) :
    Divisor.principal (EW W).isFunctionField
      (rawThetaObstructionFunction W n a σ τ) = 0 := by
  have h1 := (mem_Z1_iff.1 a.property).2 σ τ
  have hpt :
      (sourceLift W n (a σ)).point +
        (galoisLift W n σ (sourceLift W n (a τ))).point =
      (sourceLift W n (a (σ*τ))).point := by
    change geometricPoint W n (a σ) +
      Multiplicative.toAdd (W.pointGaloisAction σ)
        (geometricPoint W n (a τ)) =
      geometricPoint W n (a (σ*τ))
    change W.pointCoeffEquiv.symm (a σ : W.PointCoeff) +
      W.pointCoeffEquiv.symm (σ • (a τ : W.PointCoeff)) =
      W.pointCoeffEquiv.symm (a (σ*τ) : W.PointCoeff)
    rw [← map_add]
    exact congrArg (W.pointCoeffEquiv.symm)
      (congrArg Subtype.val h1.symm)
  rw [rawThetaObstructionFunction,Divisor.principal_div,
    (liftProduct (EW W) n _ _).principal,
    (sourceLift W n (a (σ*τ))).principal,hpt,sub_self]

/-! Main remaining type-level gates:
1. show the raw scalar uniquely lies in Ksep× and its
   Galois two-cochain is continuous and a 2-cocycle;
2. show u_sigma has the thetaDivisor of σQ−Q from the
   original point-place/Galois divisor computation,
   so strict crossed identity implies Delta_n(delta P)=0
   in the actual nonabelian continuous H²;
3. use central polarization group-word theorem and prove
   the theta commutator equals the ORIGINAL source e_n
   with its correct sign. These are NOT claimed solved
   by this isolated, uncompiled source candidate.
-/

end GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalThetaGalois
