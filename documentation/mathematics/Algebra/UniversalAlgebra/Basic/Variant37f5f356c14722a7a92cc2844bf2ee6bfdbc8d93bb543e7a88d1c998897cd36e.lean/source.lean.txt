-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.GradedRing.Variant1624abb9a592322245eb19628884e82dae3073360719d495d7c80a2596eb8c14","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1624abb9a592322245eb19628884e82dae3073360719d495d7c80a2596eb8c14","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.GradedRing.Variant1624abb9a592322245eb19628884e82dae3073360719d495d7c80a2596eb8c14","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"1624abb9a592322245eb19628884e82dae3073360719d495d7c80a2596eb8c14","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/RingTheory/GradedAlgebra/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser, Kevin Buzzard, Jujian Zhang
-/
import Mathlib.Algebra.DirectSum.Algebra
import Mathlib.Algebra.DirectSum.Decomposition
import Mathlib.Algebra.DirectSum.Internal
import Mathlib.Algebra.DirectSum.Ring


namespace GRWTSK.Algebra.UniversalAlgebra.GradedRing.Variant1624abb9a592322245eb19628884e82dae3073360719d495d7c80a2596eb8c14

#align_import ring_theory.graded_algebra.basic from "leanprover-community/mathlib"@"70fd9563a21e7b963887c9360bd29b2393e6225a"

/-!
# Internally-graded rings and algebras

This file defines the typeclass `GradedAlgebra 𝒜`, for working with an algebra `A` that is
internally graded by a collection of submodules `𝒜 : ι → Submodule R A`.
See the docstring of that typeclass for more information.

## Main definitions

* `GradedRing 𝒜`: the typeclass, which is a combination of `SetLike.GradedMonoid`, and
  `DirectSum.Decomposition 𝒜`.
* `GradedAlgebra 𝒜`: A convenience alias for `GradedRing` when `𝒜` is a family of submodules.
* `DirectSum.decomposeRingEquiv 𝒜 : A ≃ₐ[R] ⨁ i, 𝒜 i`, a more bundled version of
  `DirectSum.decompose 𝒜`.
* `DirectSum.decomposeAlgEquiv 𝒜 : A ≃ₐ[R] ⨁ i, 𝒜 i`, a more bundled version of
  `DirectSum.decompose 𝒜`.
* `GradedAlgebra.proj 𝒜 i` is the linear map from `A` to its degree `i : ι` component, such that
  `proj 𝒜 i x = decompose 𝒜 x i`.

## Implementation notes

For now, we do not have internally-graded semirings and internally-graded rings; these can be
represented with `𝒜 : ι → Submodule ℕ A` and `𝒜 : ι → Submodule ℤ A` respectively, since all
`Semiring`s are ℕ-algebras via `algebraNat`, and all `Ring`s are `ℤ`-algebras via `algebraInt`.

## Tags

graded algebra, graded ring, graded semiring, decomposition
-/


open DirectSum BigOperators

variable {ι R A σ : Type*}

section GradedRing

variable [DecidableEq ι] [AddMonoid ι] [CommSemiring R] [Semiring A] [Algebra R A]

variable [SetLike σ A] [AddSubmonoidClass σ A] (𝒜 : ι → σ)

open DirectSum

/-- An internally-graded `R`-algebra `A` is one that can be decomposed into a collection
of `Submodule R A`s indexed by `ι` such that the canonical map `A → ⨁ i, 𝒜 i` is bijective and
respects multiplication, i.e. the product of an element of degree `i` and an element of degree `j`
is an element of degree `i + j`.

Note that the fact that `A` is internally-graded, `GradedAlgebra 𝒜`, implies an externally-graded
algebra structure `DirectSum.GAlgebra R (fun i ↦ ↥(𝒜 i))`, which in turn makes available an
`Algebra R (⨁ i, 𝒜 i)` instance.
-/
class GradedRing (𝒜 : ι → σ) extends SetLike.GradedMonoid 𝒜, DirectSum.Decomposition 𝒜
#align graded_ring GradedRing

variable [GradedRing 𝒜]

namespace DirectSum

/-- If `A` is graded by `ι` with degree `i` component `𝒜 i`, then it is isomorphic as
a ring to a direct sum of components. -/
def decomposeRingEquiv : A ≃+* ⨁ i, 𝒜 i :=
  RingEquiv.symm
    { (decomposeAddEquiv 𝒜).symm with
      map_mul' := (coeRingHom 𝒜).map_mul
      map_add' := (coeRingHom 𝒜).map_add }
#align direct_sum.decompose_ring_equiv DirectSum.decomposeRingEquiv

@[simp]
theorem decompose_one : decompose 𝒜 (1 : A) = 1 :=
  map_one (decomposeRingEquiv 𝒜)
#align direct_sum.decompose_one DirectSum.decompose_one

@[simp]
theorem decompose_symm_one : (decompose 𝒜).symm 1 = (1 : A) :=
  map_one (decomposeRingEquiv 𝒜).symm
#align direct_sum.decompose_symm_one DirectSum.decompose_symm_one

@[simp]
theorem decompose_mul (x y : A) : decompose 𝒜 (x * y) = decompose 𝒜 x * decompose 𝒜 y :=
  map_mul (decomposeRingEquiv 𝒜) x y
#align direct_sum.decompose_mul DirectSum.decompose_mul

@[simp]
theorem decompose_symm_mul (x y : ⨁ i, 𝒜 i) :
    (decompose 𝒜).symm (x * y) = (decompose 𝒜).symm x * (decompose 𝒜).symm y :=
  map_mul (decomposeRingEquiv 𝒜).symm x y
#align direct_sum.decompose_symm_mul DirectSum.decompose_symm_mul

end DirectSum

/-- The projection maps of a graded ring -/
def GradedRing.proj (i : ι) : A →+ A :=
  (AddSubmonoidClass.subtype (𝒜 i)).comp <|
    (DFinsupp.evalAddMonoidHom i).comp <|
      RingHom.toAddMonoidHom <| RingEquiv.toRingHom <| DirectSum.decomposeRingEquiv 𝒜
#align graded_ring.proj GradedRing.proj

@[simp]
theorem GradedRing.proj_apply (i : ι) (r : A) :
    GradedRing.proj 𝒜 i r = (decompose 𝒜 r : ⨁ i, 𝒜 i) i :=
  rfl
#align graded_ring.proj_apply GradedRing.proj_apply

theorem GradedRing.proj_recompose (a : ⨁ i, 𝒜 i) (i : ι) :
    GradedRing.proj 𝒜 i ((decompose 𝒜).symm a) = (decompose 𝒜).symm (DirectSum.of _ i (a i)) := by
  rw [GradedRing.proj_apply, decompose_symm_of, Equiv.apply_symm_apply]
#align graded_ring.proj_recompose GradedRing.proj_recompose

theorem GradedRing.mem_support_iff [∀ (i) (x : 𝒜 i), Decidable (x ≠ 0)] (r : A) (i : ι) :
    i ∈ (decompose 𝒜 r).support ↔ GradedRing.proj 𝒜 i r ≠ 0 :=
  DFinsupp.mem_support_iff.trans ZeroMemClass.coe_eq_zero.not.symm
#align graded_ring.mem_support_iff GradedRing.mem_support_iff

end GradedRing

section AddCancelMonoid

open DirectSum

variable [DecidableEq ι] [Semiring A] [SetLike σ A] [AddSubmonoidClass σ A] (𝒜 : ι → σ)

variable {i j : ι}

namespace DirectSum

theorem coe_decompose_mul_add_of_left_mem [AddLeftCancelMonoid ι] [GradedRing 𝒜] {a b : A}
    (a_mem : a ∈ 𝒜 i) : (decompose 𝒜 (a * b) (i + j) : A) = a * decompose 𝒜 b j := by
  lift a to 𝒜 i using a_mem
  rw [decompose_mul, decompose_coe, coe_of_mul_apply_add]
#align direct_sum.coe_decompose_mul_add_of_left_mem DirectSum.coe_decompose_mul_add_of_left_mem

theorem coe_decompose_mul_add_of_right_mem [AddRightCancelMonoid ι] [GradedRing 𝒜] {a b : A}
    (b_mem : b ∈ 𝒜 j) : (decompose 𝒜 (a * b) (i + j) : A) = decompose 𝒜 a i * b := by
  lift b to 𝒜 j using b_mem
  rw [decompose_mul, decompose_coe, coe_mul_of_apply_add]
#align direct_sum.coe_decompose_mul_add_of_right_mem DirectSum.coe_decompose_mul_add_of_right_mem

theorem decompose_mul_add_left [AddLeftCancelMonoid ι] [GradedRing 𝒜] (a : 𝒜 i) {b : A} :
    decompose 𝒜 (↑a * b) (i + j) =
      @GradedMonoid.GMul.mul ι (fun i => 𝒜 i) _ _ _ _ a (decompose 𝒜 b j) :=
  Subtype.ext <| coe_decompose_mul_add_of_left_mem 𝒜 a.2
#align direct_sum.decompose_mul_add_left DirectSum.decompose_mul_add_left

theorem decompose_mul_add_right [AddRightCancelMonoid ι] [GradedRing 𝒜] {a : A} (b : 𝒜 j) :
    decompose 𝒜 (a * ↑b) (i + j) =
      @GradedMonoid.GMul.mul ι (fun i => 𝒜 i) _ _ _ _ (decompose 𝒜 a i) b :=
  Subtype.ext <| coe_decompose_mul_add_of_right_mem 𝒜 b.2
#align direct_sum.decompose_mul_add_right DirectSum.decompose_mul_add_right

end DirectSum

end AddCancelMonoid

section GradedAlgebra

variable [DecidableEq ι] [AddMonoid ι] [CommSemiring R] [Semiring A] [Algebra R A]

variable (𝒜 : ι → Submodule R A)

/-- A special case of `GradedRing` with `σ = Submodule R A`. This is useful both because it
can avoid typeclass search, and because it provides a more concise name. -/
@[reducible]
def GradedAlgebra :=
  GradedRing 𝒜
#align graded_algebra GradedAlgebra

/-- A helper to construct a `GradedAlgebra` when the `SetLike.GradedMonoid` structure is already
available. This makes the `left_inv` condition easier to prove, and phrases the `right_inv`
condition in a way that allows custom `@[ext]` lemmas to apply.

See note [reducible non-instances]. -/
@[reducible]
def GradedAlgebra.ofAlgHom [SetLike.GradedMonoid 𝒜] (decompose : A →ₐ[R] ⨁ i, 𝒜 i)
    (right_inv : (DirectSum.coeAlgHom 𝒜).comp decompose = AlgHom.id R A)
    (left_inv : ∀ i (x : 𝒜 i), decompose (x : A) = DirectSum.of (fun i => ↥(𝒜 i)) i x) :
    GradedAlgebra 𝒜 where
  decompose' := decompose
  left_inv := AlgHom.congr_fun right_inv
  right_inv := by
    suffices decompose.comp (DirectSum.coeAlgHom 𝒜) = AlgHom.id _ _ from AlgHom.congr_fun this
    -- Porting note: was ext i x : 2
    refine DirectSum.algHom_ext' _ _ fun i => ?_
    ext x
    exact (decompose.congr_arg <| DirectSum.coeAlgHom_of _ _ _).trans (left_inv i x)
#align graded_algebra.of_alg_hom GradedAlgebra.ofAlgHom

variable [GradedAlgebra 𝒜]

namespace DirectSum

/-- If `A` is graded by `ι` with degree `i` component `𝒜 i`, then it is isomorphic as
an algebra to a direct sum of components. -/
@[simps!]
def decomposeAlgEquiv : A ≃ₐ[R] ⨁ i, 𝒜 i :=
  AlgEquiv.symm
    { (decomposeAddEquiv 𝒜).symm with
      map_mul' := (coeAlgHom 𝒜).map_mul
      map_add' := (coeAlgHom 𝒜).map_add
      commutes' := (coeAlgHom 𝒜).commutes }
#align direct_sum.decompose_alg_equiv DirectSum.decomposeAlgEquiv

end DirectSum

open DirectSum

/-- The projection maps of graded algebra-/
def GradedAlgebra.proj (𝒜 : ι → Submodule R A) [GradedAlgebra 𝒜] (i : ι) : A →ₗ[R] A :=
  (𝒜 i).subtype.comp <| (DFinsupp.lapply i).comp <| (decomposeAlgEquiv 𝒜).toAlgHom.toLinearMap
#align graded_algebra.proj GradedAlgebra.proj

@[simp]
theorem GradedAlgebra.proj_apply (i : ι) (r : A) :
    GradedAlgebra.proj 𝒜 i r = (decompose 𝒜 r : ⨁ i, 𝒜 i) i :=
  rfl
#align graded_algebra.proj_apply GradedAlgebra.proj_apply

theorem GradedAlgebra.proj_recompose (a : ⨁ i, 𝒜 i) (i : ι) :
    GradedAlgebra.proj 𝒜 i ((decompose 𝒜).symm a) = (decompose 𝒜).symm (of _ i (a i)) := by
  rw [GradedAlgebra.proj_apply, decompose_symm_of, Equiv.apply_symm_apply]
#align graded_algebra.proj_recompose GradedAlgebra.proj_recompose

theorem GradedAlgebra.mem_support_iff [DecidableEq A] (r : A) (i : ι) :
    i ∈ (decompose 𝒜 r).support ↔ GradedAlgebra.proj 𝒜 i r ≠ 0 :=
  DFinsupp.mem_support_iff.trans Submodule.coe_eq_zero.not.symm
#align graded_algebra.mem_support_iff GradedAlgebra.mem_support_iff

end GradedAlgebra

section CanonicalOrder

open SetLike.GradedMonoid DirectSum

variable [Semiring A] [DecidableEq ι]

variable [CanonicallyOrderedAddMonoid ι]

variable [SetLike σ A] [AddSubmonoidClass σ A] (𝒜 : ι → σ) [GradedRing 𝒜]

/-- If `A` is graded by a canonically ordered add monoid, then the projection map `x ↦ x₀` is a ring
homomorphism.
-/
@[simps]
def GradedRing.projZeroRingHom : A →+* A where
  toFun a := decompose 𝒜 a 0
  map_one' :=
    -- Porting note: qualified `one_mem`
    decompose_of_mem_same 𝒜 SetLike.GradedOne.one_mem
  map_zero' := by
    simp only -- Porting note: added
    rw [decompose_zero]
    rfl
  map_add' _ _ := by
    simp only -- Porting note: added
    rw [decompose_add]
    rfl
  map_mul' := by
    refine' DirectSum.Decomposition.inductionOn 𝒜 (fun x => _) _ _
    · simp only [zero_mul, decompose_zero, zero_apply, ZeroMemClass.coe_zero]
    · rintro i ⟨c, hc⟩
      refine' DirectSum.Decomposition.inductionOn 𝒜 _ _ _
      · simp only [mul_zero, decompose_zero, zero_apply, ZeroMemClass.coe_zero]
      · rintro j ⟨c', hc'⟩
        · simp only [Subtype.coe_mk]
          by_cases h : i + j = 0
          · rw [decompose_of_mem_same 𝒜
                (show c * c' ∈ 𝒜 0 from h ▸ SetLike.GradedMul.mul_mem hc hc'),
              decompose_of_mem_same 𝒜 (show c ∈ 𝒜 0 from (add_eq_zero_iff.mp h).1 ▸ hc),
              decompose_of_mem_same 𝒜 (show c' ∈ 𝒜 0 from (add_eq_zero_iff.mp h).2 ▸ hc')]
          · rw [decompose_of_mem_ne 𝒜 (SetLike.GradedMul.mul_mem hc hc') h]
            cases' show i ≠ 0 ∨ j ≠ 0 by rwa [add_eq_zero_iff, not_and_or] at h with h' h'
            · simp only [decompose_of_mem_ne 𝒜 hc h', zero_mul]
            · simp only [decompose_of_mem_ne 𝒜 hc' h', mul_zero]
      · intro _ _ hd he
        simp only at hd he -- Porting note: added
        simp only [mul_add, decompose_add, add_apply, AddMemClass.coe_add, hd, he]
    · rintro _ _ ha hb _
      simp only at ha hb -- Porting note: added
      simp only [add_mul, decompose_add, add_apply, AddMemClass.coe_add, ha, hb]
#align graded_ring.proj_zero_ring_hom GradedRing.projZeroRingHom

variable {a b : A} {n i : ι}

namespace DirectSum

theorem coe_decompose_mul_of_left_mem_of_not_le (a_mem : a ∈ 𝒜 i) (h : ¬i ≤ n) :
    (decompose 𝒜 (a * b) n : A) = 0 := by
  lift a to 𝒜 i using a_mem
  rwa [decompose_mul, decompose_coe, coe_of_mul_apply_of_not_le]
#align direct_sum.coe_decompose_mul_of_left_mem_of_not_le DirectSum.coe_decompose_mul_of_left_mem_of_not_le

theorem coe_decompose_mul_of_right_mem_of_not_le (b_mem : b ∈ 𝒜 i) (h : ¬i ≤ n) :
    (decompose 𝒜 (a * b) n : A) = 0 := by
  lift b to 𝒜 i using b_mem
  rwa [decompose_mul, decompose_coe, coe_mul_of_apply_of_not_le]
#align direct_sum.coe_decompose_mul_of_right_mem_of_not_le DirectSum.coe_decompose_mul_of_right_mem_of_not_le

variable [Sub ι] [OrderedSub ι] [ContravariantClass ι ι (· + ·) (· ≤ ·)]

theorem coe_decompose_mul_of_left_mem_of_le (a_mem : a ∈ 𝒜 i) (h : i ≤ n) :
    (decompose 𝒜 (a * b) n : A) = a * decompose 𝒜 b (n - i) := by
  lift a to 𝒜 i using a_mem
  rwa [decompose_mul, decompose_coe, coe_of_mul_apply_of_le]
#align direct_sum.coe_decompose_mul_of_left_mem_of_le DirectSum.coe_decompose_mul_of_left_mem_of_le

theorem coe_decompose_mul_of_right_mem_of_le (b_mem : b ∈ 𝒜 i) (h : i ≤ n) :
    (decompose 𝒜 (a * b) n : A) = decompose 𝒜 a (n - i) * b := by
  lift b to 𝒜 i using b_mem
  rwa [decompose_mul, decompose_coe, coe_mul_of_apply_of_le]
#align direct_sum.coe_decompose_mul_of_right_mem_of_le DirectSum.coe_decompose_mul_of_right_mem_of_le

theorem coe_decompose_mul_of_left_mem (n) [Decidable (i ≤ n)] (a_mem : a ∈ 𝒜 i) :
    (decompose 𝒜 (a * b) n : A) = if i ≤ n then a * decompose 𝒜 b (n - i) else 0 := by
  lift a to 𝒜 i using a_mem
  rw [decompose_mul, decompose_coe, coe_of_mul_apply]
#align direct_sum.coe_decompose_mul_of_left_mem DirectSum.coe_decompose_mul_of_left_mem

theorem coe_decompose_mul_of_right_mem (n) [Decidable (i ≤ n)] (b_mem : b ∈ 𝒜 i) :
    (decompose 𝒜 (a * b) n : A) = if i ≤ n then decompose 𝒜 a (n - i) * b else 0 := by
  lift b to 𝒜 i using b_mem
  rw [decompose_mul, decompose_coe, coe_mul_of_apply]
#align direct_sum.coe_decompose_mul_of_right_mem DirectSum.coe_decompose_mul_of_right_mem

end DirectSum

end CanonicalOrder
