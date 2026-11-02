/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / PARSING_NOT_RUN / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
Original arithmetic and code sources: The Tau Ceti contributors, Apache-2.0,
TauCetiProject/TauCeti @ 2bdb755239d3bd84760e99bc83166bdf7cc75a6b.
Lean v4.36.0-rc1; NEVER a grwtsk/math v4.34.1 root import.
-/
import TauCeti.AlgebraicGeometry.EllipticCurve.Affine.FunctionField.TorsionDivisor
import TauCeti.AlgebraicGeometry.EllipticCurve.Affine.FunctionField.Translation.Place
import TauCeti.FieldTheory.FunctionField.Divisor.Automorphism
import TauCeti.FieldTheory.FunctionField.Divisor.Principal
import TauCeti.AlgebraicGeometry.EllipticCurve.Affine.FunctionField.Divisor.Sum

set_option autoImplicit false
noncomputable section

/-!
# Genuine Mumford theta lifts from the ORIGINAL elliptic rational function field

Fix the actual elliptic curve W/F and nonzero n. For T in E(F)[n],
D_T = n((T)-(O)) is principal by the pinned theorem
WeierstrassCurve.Affine.exists_principal_eq_zsmul_ofPoint_sub_infinity.
A theta lift is the POINT and the ACTUAL F(E) unit trivializing D_T.
Multiplication is (T,f)*(S,g)=(T+S,f*tau_{-T}^*g).
No artificial Heisenberg group, selected symplectic matrix, numerical
regulator, abstract line-bundle proxy, or assumed theta obstruction.

The divisor calculations below construct the raw geometric
central extension and its commutator scalar. They do NOT establish
that this scalar agrees with the ORIGINAL Weil pairing: that is
the nontrivial polarization/Weil reciprocity comparison still open.
-/

namespace GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalGeometricTheta
open TauCeti AlgebraicGeometry IsDedekindDomain
open WeierstrassCurve.Affine

variable {F : Type*} [Field F] [DecidableEq F]
  (W : WeierstrassCurve.Affine F) [W.IsElliptic]
  (n : ℕ) [NeZero n]

/-- The actual elliptic n-division divisor n(T)-n(O). -/
noncomputable def thetaDivisor (T : W.Point) :
    Divisor F W.FunctionField :=
  (n : ℤ) • (WeilDivisor.ofPoint (W.pointEquivDegreeOnePlace T).1 -
    WeilDivisor.ofPoint (Place.infinity W))

/-- Original function-field translation by -T; the original
point-place source makes its divisor action R ↦ R+T. -/
noncomputable def thetaTranslate (T : W.Point) :
    W.FunctionField ≃ₐ[F] W.FunctionField :=
  W.translation (Point.equivBaseChangeSelf W (-T))

/-- A REAL theta lift: an actual elliptic n-torsion point and
a unit of the ORIGINAL function field with the required divisor. -/
structure ThetaLift where
  point : W.Point
  point_torsion : (n : ℤ) • point = 0
  function : W.FunctionFieldˣ
  function_divisor : Divisor.principal W.isFunctionField function =
    thetaDivisor W n point

/-- The original elliptic principal-divisor theorem supplies
theta lifts without an existence axiom. -/
noncomputable def liftPoint (T : W.Point)
    (hT : (n : ℤ) • T = 0) : ThetaLift W n := by
  obtain ⟨f, hf⟩ :=
    W.exists_principal_eq_zsmul_ofPoint_sub_infinity hT
  exact ⟨T, hT, f, hf⟩

/-- The literal trivial unit above the identity point. -/
noncomputable def oneLift : ThetaLift W n := by
  refine ⟨0, by simp, 1, ?_⟩
  simp [thetaDivisor, Divisor.principal_one]

/-- Actual semilinear product of two ORIGINAL rational functions. -/
noncomputable def functionProduct (x y : ThetaLift W n) :
    W.FunctionFieldˣ :=
  x.function * Units.map
    (thetaTranslate W x.point :
      W.FunctionField →* W.FunctionField) y.function

/-- The original point-translation identity for the
divisors D_T=n((T)-(O)), including the sign of tau_-T. -/
theorem thetaDivisor_add_translate (T S : W.Point) :
    thetaDivisor W n (T + S) =
      thetaDivisor W n T +
        thetaTranslate W T • thetaDivisor W n S := by
  classical
  have ht (R : W.Point) :
      thetaTranslate W T •
        WeilDivisor.ofPoint (W.pointEquivDegreeOnePlace R).1 =
      WeilDivisor.ofPoint (W.pointEquivDegreeOnePlace (R + T)).1 := by
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
  rw [ht S, ht 0]
  simp only [zero_add]
  abel

/-- The function product has precisely the required
ORIGINAL divisor for a theta lift at T+S. -/
theorem functionProduct_divisor (x y : ThetaLift W n) :
    Divisor.principal W.isFunctionField
      (functionProduct W n x y) =
      thetaDivisor W n (x.point + y.point) := by
  rw [functionProduct, Divisor.principal_mul,
    Divisor.principal_smul,
    x.function_divisor, y.function_divisor]
  exact (thetaDivisor_add_translate W n x.point y.point).symm

/-- Genuine theta multiplication, not a fabricated
cocycle-valued group law. -/
noncomputable def liftMul (x y : ThetaLift W n) : ThetaLift W n :=
  ⟨x.point + y.point,
    by rw [smul_add, x.point_torsion, y.point_torsion, add_zero],
    functionProduct W n x y, functionProduct_divisor W n x y⟩

/-! ## The actual theta GROUP law and central scalar kernel

Prove associativity/inverses in the original rational function
field using the original translation composition law. The
scalar kernel is the actual constant field by the source
principal-divisor-zero criterion.
-/

/-- Original translations act associatively, in the
source pullback order. -/
theorem thetaTranslate_add (T S : W.Point) :
    thetaTranslate W (T + S) =
      (thetaTranslate W S).trans (thetaTranslate W T) := by
  change W.translation (Point.equivBaseChangeSelf W (-(T + S))) =
    (W.translation (Point.equivBaseChangeSelf W (-S))).trans
      (W.translation (Point.equivBaseChangeSelf W (-T)))
  rw [show -(T + S) = (-S) + (-T) by abel,
      map_add (Point.equivBaseChangeSelf W)]
  exact W.translation_add _ _

theorem thetaTranslate_add_units (T S : W.Point)
    (f : W.FunctionFieldˣ) :
    Units.map (thetaTranslate W (T + S) :
        W.FunctionField →* W.FunctionField) f =
      Units.map (thetaTranslate W T :
        W.FunctionField →* W.FunctionField)
        (Units.map (thetaTranslate W S :
          W.FunctionField →* W.FunctionField) f) := by
  apply Units.ext
  change thetaTranslate W (T + S) (f : W.FunctionField) =
    thetaTranslate W T (thetaTranslate W S (f : W.FunctionField))
  rw [thetaTranslate_add]
  rfl

@[simp] theorem thetaTranslate_zero_units (f : W.FunctionFieldˣ) :
    Units.map (thetaTranslate W (0 : W.Point) :
        W.FunctionField →* W.FunctionField) f = f := by
  apply Units.ext
  change thetaTranslate W (0 : W.Point) (f : W.FunctionField) = f
  simp [thetaTranslate, W.translation_zero]

/-- Extensionality depends on the real point and function,
not the proof certificates. -/
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

/-- Source-level associativity of the actual theta products. -/
theorem liftMul_assoc (x y z : ThetaLift W n) :
    liftMul W n (liftMul W n x y) z =
      liftMul W n x (liftMul W n y z) := by
  apply ThetaLift.ext W n
  · change (x.point + y.point) + z.point =
      x.point + (y.point + z.point)
    exact add_assoc _ _ _
  · change
      x.function *
          Units.map (thetaTranslate W x.point :
            W.FunctionField →* W.FunctionField) y.function *
          Units.map (thetaTranslate W (x.point + y.point) :
            W.FunctionField →* W.FunctionField) z.function =
      x.function *
          Units.map (thetaTranslate W x.point :
            W.FunctionField →* W.FunctionField)
            (y.function *
              Units.map (thetaTranslate W y.point :
                W.FunctionField →* W.FunctionField) z.function)
    rw [map_mul, ← thetaTranslate_add_units W x.point y.point z.function]
    group

/-- Genuine inverse: a translated reciprocal, not a
formal inverse in a manufactured Heisenberg group. -/
noncomputable def liftInv (x : ThetaLift W n) : ThetaLift W n := by
  let t := thetaTranslate W (-x.point)
  let u : W.FunctionFieldˣ :=
    Units.map (t : W.FunctionField →* W.FunctionField) x.function⁻¹
  have hzero : thetaDivisor W n (0 : W.Point) = 0 := by
    simp [thetaDivisor, ← coe_pointEquivDegreeOnePlace_zero]
  have hsum := thetaDivisor_add_translate W n (-x.point) x.point
  rw [neg_add_cancel, hzero] at hsum
  have hneg : -(t • thetaDivisor W n x.point) =
      thetaDivisor W n (-x.point) := by
    change -(thetaTranslate W (-x.point) • thetaDivisor W n x.point) = _
    abel
  have hdiv : Divisor.principal W.isFunctionField u =
      thetaDivisor W n (-x.point) := by
    change Divisor.principal W.isFunctionField
      (Units.map (t : W.FunctionField →* W.FunctionField) x.function⁻¹) = _
    rw [Divisor.principal_smul, Divisor.principal_inv,
      x.function_divisor, smul_neg]
    exact hneg
  exact ⟨-x.point, by rw [smul_neg, x.point_torsion, neg_zero], u, hdiv⟩

/-- The original elliptic function-field theta lifts form
an actual group. -/
noncomputable instance ThetaLift.instGroup : Group (ThetaLift W n) where
  mul := liftMul W n
  mul_assoc := liftMul_assoc W n
  one := oneLift W n
  one_mul x := by
    apply ThetaLift.ext W n
    · change (0 : W.Point) + x.point = x.point
      exact zero_add x.point
    · change (1 : W.FunctionFieldˣ) *
        Units.map (thetaTranslate W (0 : W.Point) : _ →* _) x.function =
        x.function
      simp
  mul_one x := by
    apply ThetaLift.ext W n
    · change x.point + 0 = x.point
      exact add_zero x.point
    · change x.function *
        Units.map (thetaTranslate W x.point : _ →* _) 1 =
        x.function
      simp
  inv := liftInv W n
  inv_mul_cancel x := by
    apply ThetaLift.ext W n
    · change -x.point + x.point = 0
      exact neg_add_cancel x.point
    · change
        Units.map (thetaTranslate W (-x.point) : _ →* _)
          x.function⁻¹ *
        Units.map (thetaTranslate W (-x.point) : _ →* _)
          x.function = 1
      rw [map_inv, inv_mul_cancel]

/-- A REAL scalar function regarded as a theta lift above O. -/
noncomputable def scalarLift (c : Fˣ) : ThetaLift W n := by
  let u : W.FunctionFieldˣ := Units.map (algebraMap F W.FunctionField) c
  have hdiv : Divisor.principal W.isFunctionField u = 0 := by
    apply (Divisor.principal_eq_zero_iff W.isFunctionField
      (isIntegrallyClosedIn_functionField W) u).2
    exact ⟨(c : F), rfl⟩
  exact ⟨0, by simp, u, by
    simpa [thetaDivisor, coe_pointEquivDegreeOnePlace_zero] using hdiv⟩

@[simp] theorem scalarLift_point (c : Fˣ) :
    (scalarLift W n c).point = 0 := rfl

/-- The fibre over the identity is EXACTLY the original
base field's nonzero constant functions. -/
theorem exists_scalarLift_of_point_eq_zero
    (x : ThetaLift W n) (hpoint : x.point = 0) :
    ∃ c : Fˣ, x = scalarLift W n c := by
  have hd : Divisor.principal W.isFunctionField x.function = 0 := by
    rw [x.function_divisor, hpoint]
    simp [thetaDivisor, coe_pointEquivDegreeOnePlace_zero]
  obtain ⟨c,hc⟩ := (Divisor.principal_eq_zero_iff W.isFunctionField
      (isIntegrallyClosedIn_functionField W) x.function).1 hd
  have hc0 : c ≠ 0 := by
    intro h
    rw [h, map_zero] at hc
    exact (Units.ne_zero x.function) hc.symm
  refine ⟨Units.mk0 c hc0, ?_⟩
  apply ThetaLift.ext W n
  · simpa using hpoint
  · apply Units.ext
    exact hc.symm

/-- Constants are fixed under genuine elliptic translation. -/
theorem thetaTranslate_scalar (T : W.Point) (c : Fˣ) :
    Units.map (thetaTranslate W T : W.FunctionField →* W.FunctionField)
      (Units.map (algebraMap F W.FunctionField) c) =
        Units.map (algebraMap F W.FunctionField) c := by
  apply Units.ext
  exact (thetaTranslate W T).commutes (c : F)

/-- Hence the source-geometric scalar kernel is CENTRAL,
as required by a Mumford theta extension. -/
theorem scalarLift_central (c : Fˣ) (x : ThetaLift W n) :
    liftMul W n (scalarLift W n c) x =
      liftMul W n x (scalarLift W n c) := by
  apply ThetaLift.ext W n
  · simp [scalarLift, liftMul]
  · change
      Units.map (algebraMap F W.FunctionField) c *
        Units.map (thetaTranslate W (0 : W.Point) : _ →* _) x.function =
      x.function *
        Units.map (thetaTranslate W x.point : _ →* _)
          (Units.map (algebraMap F W.FunctionField) c)
    rw [thetaTranslate_zero_units, thetaTranslate_scalar]
    exact mul_comm _ _

/-- Its actual scalar commutator is a function whose
principal divisor is zero. -/
noncomputable def commutatorFunction
    (x y : ThetaLift W n) : W.FunctionFieldˣ :=
  functionProduct W n x y / functionProduct W n y x

theorem commutatorFunction_principal_zero
    (x y : ThetaLift W n) :
    Divisor.principal W.isFunctionField
      (commutatorFunction W n x y) = 0 := by
  rw [commutatorFunction, Divisor.principal_div,
    functionProduct_divisor, functionProduct_divisor,
    add_comm x.point y.point, sub_self]

/-- The commutator really lies in the ORIGINAL constant
field; this is the nontrivial source geometric scalar
fact, prior to identifying it with e_n. -/
theorem commutatorFunction_is_constant
    (x y : ThetaLift W n) :
    ∃ c : Fˣ,
      (commutatorFunction W n x y : W.FunctionField) =
        algebraMap F W.FunctionField (c : F) := by
  obtain ⟨c, hc⟩ :=
    (Divisor.principal_eq_zero_iff W.isFunctionField
      (isIntegrallyClosedIn_functionField W)
      (commutatorFunction W n x y)).1
      (commutatorFunction_principal_zero W n x y)
  have hc0 : c ≠ 0 := by
    intro hcZ
    rw [hcZ, map_zero] at hc
    exact (Units.ne_zero (commutatorFunction W n x y)) hc.symm
  exact ⟨Units.mk0 c hc0, hc.symm⟩

/-- Nonzero scalar commutator extracted from actual F(E).
No equality to the Weil pairing is asserted here. -/
noncomputable def thetaCommutatorScalar
    (x y : ThetaLift W n) : Fˣ :=
  Classical.choose (commutatorFunction_is_constant W n x y)

theorem thetaCommutatorScalar_spec
    (x y : ThetaLift W n) :
    (commutatorFunction W n x y : W.FunctionField) =
      algebraMap F W.FunctionField
        (thetaCommutatorScalar W n x y : F) :=
  Classical.choose_spec (commutatorFunction_is_constant W n x y)

/-! ## The authentic principal divisor n(Q)-(P)-(n-1)(O)

For P=nQ rational, this is precisely the rational-function
trivialization needed to lift the original E[n]-valued
Kummer cocycle into the original theta extension.
-/

/-- No synthetic divisor: each point is read through the
original elliptic point-place equivalence. -/
noncomputable def kummerRationalDivisor (P Q : W.Point) :
    Divisor F W.FunctionField :=
  (n : ℤ) •
    (WeilDivisor.ofPoint (W.pointEquivDegreeOnePlace Q).1 -
      WeilDivisor.ofPoint (Place.infinity W)) -
    (WeilDivisor.ofPoint (W.pointEquivDegreeOnePlace P).1 -
      WeilDivisor.ofPoint (Place.infinity W))

/-- An actual rational function h with
div h = n(Q)-(P)-(n-1)(O), whenever nQ=P.
The proof invokes the original degree-zero divisor-sum
equivalence; this is the real elliptic geometry. -/
theorem exists_kummerRationalDivisor_function
    {P Q : W.Point} (hQ : (n : ℤ) • Q = P) :
    ∃ f : W.FunctionFieldˣ,
      Divisor.principal W.isFunctionField f =
        kummerRationalDivisor W n P Q := by
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
  have hsum : W.divisorSum D = 0 := by
    simp only [D, map_sub, map_zsmul,
      W.divisorSum_ofPoint_sub_ofPoint]
    simpa [sub_zero] using hQ
  obtain ⟨f, hf⟩ := W.divisorSum_eq_zero_iff.mp hsum
  refine ⟨f, ?_⟩
  simpa [D, dQ, dP, kummerRationalDivisor,
    coe_pointEquivDegreeOnePlace_zero] using hf

/-- A chosen *function* from the genuine principal-divisor
theorem, not a chosen obstruction class. -/
noncomputable def kummerRationalFunction
    {P Q : W.Point} (hQ : (n : ℤ) • Q = P) :
    W.FunctionFieldˣ :=
  Classical.choose (exists_kummerRationalDivisor_function W n hQ)

theorem kummerRationalFunction_divisor
    {P Q : W.Point} (hQ : (n : ℤ) • Q = P) :
    Divisor.principal W.isFunctionField
      (kummerRationalFunction W n hQ) =
        kummerRationalDivisor W n P Q :=
  Classical.choose_spec (exists_kummerRationalDivisor_function W n hQ)

end GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalGeometricTheta
