/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses the existing Frey open-ring evaluation, weighted spans and field bases.
Formalization assistance: OpenAI.

Coefficient transport is constructed on the original localized coordinate
ring before restricting to the old W_k. It changes coefficients, not the
geometric anchor or the parameter. Stage maps are semilinear over the named
coefficient map. No tensor-product, completion, H0, or metric comparison is
inferred. Unelaborated source proof scripts only.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedBasis

set_option autoImplicit false

noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedBaseChange

open FreyTorsionOpen FreyWeightedSections FreyWeightedBasis
open scoped BigOperators
attribute [local instance] FreyWeightedSections.coefficientAlgebra

section Rings
variable {R S U : Type*} [CommRing R] [CommRing S] [CommRing U]

/-- Universal evaluation in the target ORIGINAL open ring; no choice of basis enters. -/
def openMap (f : R →+* S) (a b : R) : OpenCurve a b →+* OpenCurve (f a) (f b) :=
  evaluate a b ((scalar (f a) (f b)).comp f)
    (x (f a) (f b)) (y (f a) (f b)) (invX (f a) (f b))
    (x_mul_invX (f a) (f b)) (curve_equation (f a) (f b))

@[simp] theorem openMap_scalar (f : R →+* S) (a b c : R) :
    openMap f a b (scalar a b c) = scalar (f a) (f b) (f c) := by
  simp [openMap]

@[simp] theorem openMap_x (f : R →+* S) (a b : R) :
    openMap f a b (x a b) = x (f a) (f b) := by simp [openMap]

@[simp] theorem openMap_y (f : R →+* S) (a b : R) :
    openMap f a b (y a b) = y (f a) (f b) := by simp [openMap]

@[simp] theorem openMap_invX (f : R →+* S) (a b : R) :
    openMap f a b (invX a b) = invX (f a) (f b) := by simp [openMap]

/-- Composition follows on the whole localization from its universal generators. -/
theorem openMap_comp (f : R →+* S) (g : S →+* U) (a b : R) :
    (openMap g (f a) (f b)).comp (openMap f a b) = openMap (g.comp f) a b := by
  apply hom_ext a b
  · intro c; simp
  · simp
  · simp

theorem openMap_id (a b : R) : openMap (RingHom.id R) a b = RingHom.id _ := by
  apply hom_ext a b
  · intro c; simp
  · simp
  · simp

/-- Coefficients are transported; this is not S-linearity of the source R-module. -/
theorem openMap_smul (f : R →+* S) (a b c : R) (u : OpenCurve a b) :
    openMap f a b (c • u) = f c • openMap f a b u := by
  change openMap f a b (scalar a b c * u) =
    scalar (f a) (f b) (f c) * openMap f a b u
  rw [map_mul, openMap_scalar]

/-- The inverse of ab is mapped from the SAME source witness. -/
theorem mapped_inverse (f : R →+* S) (a b l : R) (hl : a * b * l = 1) :
    f a * f b * f l = 1 := by
  simpa only [map_mul, map_one] using congrArg f hl

/-- Coefficient specialization commutes with the original nonlinear open involution. -/
theorem openMap_pullback (f : R →+* S) (a b l : R) (hl : a * b * l = 1) :
    (openMap f a b).comp (pullback a b l hl) =
      (pullback (f a) (f b) (f l) (mapped_inverse f a b l hl)).comp (openMap f a b) := by
  apply hom_ext a b
  · intro c; simp
  · simp [map_mul]
  · simp [map_mul]

/-- This square uses the actual weighted function maps, not matching matrix shapes. -/
theorem openMap_lift (f : R →+* S) (a b l : R) (hl : a * b * l = 1)
    (k : ℕ) (u : OpenCurve a b) :
    openMap f a b (FreyWeightedSections.lift a b l hl k u) =
      FreyWeightedSections.lift (f a) (f b) (f l) (mapped_inverse f a b l hl) k
        (openMap f a b u) := by
  simp only [lift_apply, map_mul, map_pow, openMap_x]
  exact congrArg (fun v => x (f a) (f b) ^ k * v)
    (DFunLike.congr_fun (openMap_pullback f a b l hl) u)

/-- Every element of the previous bounded span lands in the corresponding target span. -/
theorem openMap_mem_stage (f : R →+* S) (a b : R) (k : ℕ)
    (u : OpenCurve a b) (hu : u ∈ stage a b k) :
    openMap f a b u ∈ stage (f a) (f b) k := by
  change u ∈ Submodule.span R (generators a b k) at hu
  induction hu using Submodule.span_induction with
  | mem u hu =>
    rcases hu with ⟨i, hi, rfl⟩ | ⟨j, hj, rfl⟩
    · simpa only [map_pow, openMap_x] using
        (Submodule.subset_span (Or.inl ⟨i, hi, rfl⟩) :
          x (f a) (f b) ^ i ∈ stage (f a) (f b) k)
    · simpa only [map_mul, map_pow, openMap_y, openMap_x] using
        (Submodule.subset_span (Or.inr ⟨j, hj, rfl⟩) :
          y (f a) (f b) * x (f a) (f b) ^ j ∈ stage (f a) (f b) k)
  | zero => simpa only [map_zero] using (stage (f a) (f b) k).zero_mem
  | add u v _ _ hu hv =>
    simpa only [map_add] using (stage (f a) (f b) k).add_mem hu hv
  | smul c u _ hu =>
    rw [openMap_smul]
    exact (stage (f a) (f b) k).smul_mem (f c) hu

/-- Semilinear restriction of the independently constructed ring map. -/
def stageMap (f : R →+* S) (a b : R) (k : ℕ) :
    stage a b k →ₛₗ[f] stage (f a) (f b) k where
  toFun u := ⟨openMap f a b u, openMap_mem_stage f a b k u u.property⟩
  map_add' u v := Subtype.ext ((openMap f a b).map_add u v)
  map_smul' c u := Subtype.ext (openMap_smul f a b c u)

@[simp] theorem stageMap_coe (f : R →+* S) (a b : R) (k : ℕ) (u : stage a b k) :
    (stageMap f a b k u : OpenCurve (f a) (f b)) = openMap f a b u := rfl

theorem stageMap_comp (f : R →+* S) (g : S →+* U) (a b : R) (k : ℕ)
    (u : stage a b k) :
    stageMap g (f a) (f b) k (stageMap f a b k u) = stageMap (g.comp f) a b k u := by
  apply Subtype.ext
  exact DFunLike.congr_fun (openMap_comp f g a b) u

theorem stageMap_id (a b : R) (k : ℕ) (u : stage a b k) :
    stageMap (RingHom.id R) a b k u = u := by
  apply Subtype.ext
  exact DFunLike.congr_fun (openMap_id a b) u

/-- The automorphism square remains attached to the same restricted function map. -/
theorem stageMap_lift (f : R →+* S) (a b l : R) (hl : a * b * l = 1)
    (k : ℕ) (u : stage a b k) :
    stageMap f a b k (stageEquiv a b l hl k u) =
      stageEquiv (f a) (f b) (f l) (mapped_inverse f a b l hl) k
        (stageMap f a b k u) := by
  apply Subtype.ext
  exact openMap_lift f a b l hl k u

/-- Inverse naturality is derived, rather than presumed from forward naturality. -/
theorem stageMap_lift_symm (f : R →+* S) (a b l : R) (hl : a * b * l = 1)
    (k : ℕ) (u : stage a b k) :
    stageMap f a b k ((stageEquiv a b l hl k).symm u) =
      (stageEquiv (f a) (f b) (f l) (mapped_inverse f a b l hl) k).symm
        (stageMap f a b k u) := by
  apply (stageEquiv (f a) (f b) (f l) (mapped_inverse f a b l hl) k).injective
  rw [LinearEquiv.apply_symm_apply, ← stageMap_lift, LinearEquiv.apply_symm_apply]

end Rings

section Fields
variable {K L : Type*} [Field K] [Field L]

@[simp] theorem stageMap_basis (f : K →+* L) (a b : K) (k : ℕ) (i : Index k) :
    stageMap f a b k (basis a b k i) = basis (f a) (f b) k i := by
  apply Subtype.ext
  simp only [stageMap_coe, basis_coe]
  cases i <;> simp [atom]

/-- All finite coefficient vectors are transported, with source labels retained. -/
theorem stageMap_sum (f : K →+* L) (a b : K) (k : ℕ) (v : Index k → K) :
    stageMap f a b k (∑ i, v i • basis a b k i) =
      ∑ i, f (v i) • basis (f a) (f b) k i := by
  classical
  simp only [map_sum, map_smulₛₗ, stageMap_basis]

/-- Coordinate identity after the ring-map construction, not the definition of stageMap. -/
theorem stageMap_coordinates (f : K →+* L) (a b : K) (k : ℕ)
    (u : stage a b k) (i : Index k) :
    (basis (f a) (f b) k).repr (stageMap f a b k u) i = f ((basis a b k).repr u i) := by
  classical
  have h := stageMap_sum f a b k (fun j => (basis a b k).repr u j)
  rw [(basis a b k).sum_repr u] at h
  rw [h]
  simp [map_sum, Finsupp.single_apply]

/-- A larger coefficient field supplies new vectors; the raw map is not declared onto. -/
theorem stageMap_range_iff (f : K →+* L) (a b : K) (k : ℕ)
    (v : stage (f a) (f b) k) :
    (∃ u, stageMap f a b k u = v) ↔
      ∀ i : Index k, ∃ c : K, f c = (basis (f a) (f b) k).repr v i := by
  classical
  constructor
  · rintro ⟨u, rfl⟩ i
    exact ⟨(basis a b k).repr u i, (stageMap_coordinates f a b k u i).symm⟩
  · intro h
    let c : Index k → K := fun i => Classical.choose (h i)
    refine ⟨∑ i, c i • basis a b k i, ?_⟩
    apply (basis (f a) (f b) k).repr.injective
    ext i
    rw [stageMap_coordinates]
    have hc : (basis a b k).repr (∑ j, c j • basis a b k j) i = c i := by
      simp [map_sum, Finsupp.single_apply]
    rw [hc]
    exact Classical.choose_spec (h i)

/-- Faithfulness is proved on the selected stages under injective coefficients. -/
theorem stageMap_injective (f : K →+* L) (hf : Function.Injective f)
    (a b : K) (k : ℕ) : Function.Injective (stageMap f a b k) := by
  intro u v huv
  apply (basis a b k).repr.injective
  ext i
  apply hf
  have h := congrArg (fun w => (basis (f a) (f b) k).repr w i) huv
  simpa only [stageMap_coordinates] using h

end Fields
end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedBaseChange
