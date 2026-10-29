-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.CoordinateForm.Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.CoordinateForm.Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"dc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/dc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.NullCrossAnnihilation
import Mathlib.LinearAlgebra.Projectivization.Basic
import Mathlib.LinearAlgebra.Quotient.Basic

/-!
# Finite weighted feature geometry

A finite linear feature map gives a positive semidefinite Gram form by summing
nonnegative weighted coordinate products. With strictly positive weights its
null directions are exactly the kernel of the feature map. Quotienting by this
kernel produces a positive definite form, with the original pairing on classes.

Projective points are unoriented real lines in the null quotient: nonzero
quotient vectors modulo multiplication by any nonzero real scalar. This forgets
scale; the Gram value itself is not asserted to descend to projective points.
This is a finite exact construction, not a general analytic realization.
-/


namespace GRWTSK.Algebra.LinearAlgebra.CoordinateForm.Variantdc08c4c8aafc77e8d16659c4268c3d6f00cf48f5c050ce0cba56db9b861160c2

namespace FormalResearch.PositiveAtlas.FiniteFeatureGeometry

universe u v

noncomputable section

variable {I : Type u}
variable {V : Type v} [AddCommGroup V] [Module ℝ V]

section Finite

variable [Fintype I]

/-- The coordinate Gram form for a finite family of nonnegative real weights. -/
def coordinateForm (weight : I → ℝ) (hw : ∀ i, 0 ≤ weight i) :
    PositiveForm (I → ℝ) where
  form x y := ∑ i, weight i * (x i * y i)
  add_left x y z := by
    simp only [Pi.add_apply, add_mul, mul_add, Finset.sum_add_distrib]
  smul_left a x y := by
    simp only [Pi.smul_apply, smul_eq_mul, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro i _
    ring
  add_right x y z := by
    simp only [Pi.add_apply, mul_add, Finset.sum_add_distrib]
  smul_right a x y := by
    simp only [Pi.smul_apply, smul_eq_mul, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro i _
    ring
  symmetric x y := by
    apply Finset.sum_congr rfl
    intro i _
    rw [mul_comm (x i) (y i)]
  nonnegative x := Finset.sum_nonneg fun i _ => mul_nonneg (hw i) (mul_self_nonneg (x i))

/-- A strictly positively weighted coordinate vector is null exactly when it is zero. -/
theorem coordinateForm_isNull_iff (weight : I → ℝ) (hw : ∀ i, 0 < weight i)
    (x : I → ℝ) :
    (coordinateForm weight (fun i => (hw i).le)).IsNull x ↔ x = 0 := by
  change (∑ i, weight i * (x i * x i)) = 0 ↔ x = 0
  constructor
  · intro h
    have hterm := (Finset.sum_eq_zero_iff_of_nonneg
      (fun i (_ : i ∈ Finset.univ) => mul_nonneg (hw i).le (mul_self_nonneg (x i)))).mp h
    ext i
    have hsq : x i * x i = 0 :=
      (mul_eq_zero.mp (hterm i (Finset.mem_univ i))).resolve_left (ne_of_gt (hw i))
    exact (mul_self_eq_zero.mp hsq)
  · rintro rfl
    simp

/-- The weighted Gram form of a finite linear feature realization. -/
def featureForm (feature : V →ₗ[ℝ] (I → ℝ)) (weight : I → ℝ)
    (hw : ∀ i, 0 ≤ weight i) : PositiveForm V :=
  (coordinateForm weight hw).pullback feature

/-- The feature form is the explicit finite weighted Gram sum. -/
theorem featureForm_apply (feature : V →ₗ[ℝ] (I → ℝ)) (weight : I → ℝ)
    (hw : ∀ i, 0 ≤ weight i) (x y : V) :
    (featureForm feature weight hw).form x y =
      ∑ i, weight i * (feature x i * feature y i) := rfl

/-- Strictly positive weights identify feature-null directions with the linear kernel. -/
theorem featureForm_isNull_iff (feature : V →ₗ[ℝ] (I → ℝ)) (weight : I → ℝ)
    (hw : ∀ i, 0 < weight i) (x : V) :
    (featureForm feature weight (fun i => (hw i).le)).IsNull x ↔ x ∈ feature.ker :=
  coordinateForm_isNull_iff weight hw (feature x)

/-- The existing null-orthogonality theorem applies to the constructed feature form. -/
theorem featureForm_null_orthogonal (feature : V →ₗ[ℝ] (I → ℝ))
    (weight : I → ℝ) (hw : ∀ i, 0 ≤ weight i) {x : V}
    (hx : (featureForm feature weight hw).IsNull x) (y : V) :
    (featureForm feature weight hw).form x y = 0 :=
  (featureForm feature weight hw).null_orthogonal hx y

end Finite

/-- The null quotient is the vector-space quotient by the feature map's kernel. -/
abbrev NullQuotient (feature : V →ₗ[ℝ] (I → ℝ)) := V ⧸ feature.ker

/-- The feature map descends to its kernel quotient. -/
def quotientFeature (feature : V →ₗ[ℝ] (I → ℝ)) :
    NullQuotient feature →ₗ[ℝ] (I → ℝ) :=
  feature.ker.liftQ feature le_rfl

/-- Descended features of a quotient class are the original features. -/
theorem quotientFeature_mk (feature : V →ₗ[ℝ] (I → ℝ)) (x : V) :
    quotientFeature feature (Submodule.Quotient.mk x) = feature x := rfl

/-- The descended feature map is injective because the whole kernel was quotiented out. -/
theorem quotientFeature_injective (feature : V →ₗ[ℝ] (I → ℝ)) :
    Function.Injective (quotientFeature feature) := by
  apply LinearMap.ker_eq_bot.mp
  exact Submodule.ker_liftQ_eq_bot feature.ker feature le_rfl le_rfl

/-- Two representatives give the same quotient class exactly when their features agree. -/
theorem quotient_mk_eq_iff (feature : V →ₗ[ℝ] (I → ℝ)) (x y : V) :
    (Submodule.Quotient.mk x : NullQuotient feature) = Submodule.Quotient.mk y ↔
      feature x = feature y := by
  constructor
  · intro h
    exact congrArg (quotientFeature feature) h
  · intro h
    apply quotientFeature_injective feature
    exact h

/-- Unoriented real projective points of the feature-kernel quotient. -/
abbrev ProjectiveFeature (feature : V →ₗ[ℝ] (I → ℝ)) :=
  Projectivization ℝ (NullQuotient feature)

/-- Two nonzero quotient representatives give the same projective point exactly
when they differ by a nonzero real scalar. -/
theorem projective_mk_eq_iff (feature : V →ₗ[ℝ] (I → ℝ))
    (q r : NullQuotient feature) (hq : q ≠ 0) (hr : r ≠ 0) :
    Projectivization.mk ℝ q hq = Projectivization.mk ℝ r hr ↔
      ∃ a : ℝ, a ≠ 0 ∧ a • r = q := by
  rw [Projectivization.mk_eq_mk_iff']
  constructor
  · rintro ⟨a, ha⟩
    refine ⟨a, ?_, ha⟩
    intro hzero
    apply hq
    rw [hzero, zero_smul] at ha
    exact ha.symm
  · rintro ⟨a, _, ha⟩
    exact ⟨a, ha⟩

section Finite

variable [Fintype I]

/-- The positive form constructed on the feature-kernel quotient. -/
def quotientForm (feature : V →ₗ[ℝ] (I → ℝ)) (weight : I → ℝ)
    (hw : ∀ i, 0 ≤ weight i) : PositiveForm (NullQuotient feature) :=
  featureForm (quotientFeature feature) weight hw

/-- The quotient pairing agrees with the original Gram pairing on representatives. -/
theorem quotientForm_mk (feature : V →ₗ[ℝ] (I → ℝ)) (weight : I → ℝ)
    (hw : ∀ i, 0 ≤ weight i) (x y : V) :
    (quotientForm feature weight hw).form
        (Submodule.Quotient.mk x) (Submodule.Quotient.mk y) =
      (featureForm feature weight hw).form x y := rfl

/-- The descended form has no nonzero null direction when all weights are positive. -/
theorem quotientForm_isNull_iff (feature : V →ₗ[ℝ] (I → ℝ)) (weight : I → ℝ)
    (hw : ∀ i, 0 < weight i) (q : NullQuotient feature) :
    (quotientForm feature weight (fun i => (hw i).le)).IsNull q ↔ q = 0 := by
  change (featureForm (quotientFeature feature) weight (fun i => (hw i).le)).IsNull q ↔ _
  rw [featureForm_isNull_iff _ weight hw, LinearMap.mem_ker]
  constructor
  · intro h
    apply quotientFeature_injective feature
    simpa using h
  · rintro rfl
    exact map_zero _

/-- Nonzero quotient directions have strictly positive quadratic value. -/
theorem quotientForm_visible_iff (feature : V →ₗ[ℝ] (I → ℝ)) (weight : I → ℝ)
    (hw : ∀ i, 0 < weight i) (q : NullQuotient feature) :
    (quotientForm feature weight (fun i => (hw i).le)).Visible q ↔ q ≠ 0 := by
  change 0 < (quotientForm feature weight (fun i => (hw i).le)).form q q ↔ q ≠ 0
  constructor
  · intro h hq
    exact (ne_of_gt h) ((quotientForm_isNull_iff feature weight hw q).mpr hq)
  · intro h
    apply lt_of_le_of_ne ((quotientForm feature weight (fun i => (hw i).le)).nonnegative q)
    intro hz
    exact h ((quotientForm_isNull_iff feature weight hw q).mp hz.symm)

/-- Every chosen representative of a projective feature point is visible.
The representative is Mathlib's logical choice, not an executable normalization. -/
theorem projective_rep_visible (feature : V →ₗ[ℝ] (I → ℝ)) (weight : I → ℝ)
    (hw : ∀ i, 0 < weight i) (p : ProjectiveFeature feature) :
    (quotientForm feature weight (fun i => (hw i).le)).Visible p.rep :=
  (quotientForm_visible_iff feature weight hw p.rep).mpr p.rep_nonzero

/-- Rescaling a representative rescales its quadratic value by the scalar square. -/
theorem quotientForm_smul_self (feature : V →ₗ[ℝ] (I → ℝ)) (weight : I → ℝ)
    (hw : ∀ i, 0 ≤ weight i) (a : ℝ) (q : NullQuotient feature) :
    (quotientForm feature weight hw).form (a • q) (a • q) =
      a * a * (quotientForm feature weight hw).form q q := by
  rw [PositiveForm.smul_left, PositiveForm.smul_right, mul_assoc]

/-- The quotient identifies exactly differences with zero weighted Gram value. -/
theorem quotient_mk_eq_iff_isNull_sub (feature : V →ₗ[ℝ] (I → ℝ))
    (weight : I → ℝ) (hw : ∀ i, 0 < weight i) (x y : V) :
    (Submodule.Quotient.mk x : NullQuotient feature) = Submodule.Quotient.mk y ↔
      (featureForm feature weight (fun i => (hw i).le)).IsNull (x - y) := by
  rw [quotient_mk_eq_iff, featureForm_isNull_iff _ weight hw, LinearMap.mem_ker,
    map_sub, sub_eq_zero]

end Finite

/-- A rank-one realization that retains the first coordinate and forgets the second. -/
def firstCoordinateFeature : (ℝ × ℝ) →ₗ[ℝ] (Unit → ℝ) where
  toFun x _ := x.1
  map_add' _ _ := rfl
  map_smul' _ _ := rfl

/-- The rank-one realization has a nonzero null vector as well as a visible vector. -/
theorem firstCoordinateFeature_null_and_visible :
    ((0, 1) : ℝ × ℝ) ≠ 0 ∧
      (featureForm firstCoordinateFeature (fun _ => 1) (by intro _; norm_num)).IsNull
        (0, 1) ∧
      (featureForm firstCoordinateFeature (fun _ => 1) (by intro _; norm_num)).Visible
        (1, 0) := by
  norm_num [featureForm, coordinateForm, PositiveForm.pullback,
    PositiveForm.IsNull, PositiveForm.Visible, firstCoordinateFeature]

/-- Distinct vectors become equal in the quotient precisely by forgetting the null coordinate. -/
theorem firstCoordinateFeature_quotient_example :
    (Submodule.Quotient.mk (1, 0) : NullQuotient firstCoordinateFeature) =
      Submodule.Quotient.mk (1, 7) ∧
    (Submodule.Quotient.mk (1, 0) : NullQuotient firstCoordinateFeature) ≠ 0 := by
  constructor
  · rw [quotient_mk_eq_iff]
    rfl
  · intro h
    have hfeature := congrArg (quotientFeature firstCoordinateFeature) h
    have hfirst := congrFun hfeature ()
    norm_num [quotientFeature, firstCoordinateFeature] at hfirst

/-- Nonnegative weights alone permit a nonzero coordinate vector to be null. -/
theorem zero_weight_nonzero_null :
    (fun _ : Unit => (1 : ℝ)) ≠ 0 ∧
      (coordinateForm (fun _ : Unit => 0) (by intro _; exact le_rfl)).IsNull
        (fun _ => 1) := by
  constructor
  · intro h
    have := congrFun h ()
    norm_num at this
  · simp [PositiveForm.IsNull, coordinateForm]

end

end FormalResearch.PositiveAtlas.FiniteFeatureGeometry
