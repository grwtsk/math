/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.LoopIndexOperations
import Mathlib.Topology.ContinuousMap.Algebra

set_option autoImplicit false

/-!
# Finite products for the existing exponential-lift index

The complex-valued presentation below is ONLY a wrapper around the existing
punctured-plane winding. Nonvanishing and closure remain proof arguments.
Finite products and natural powers retain signed orientation and multiplicity.
No analytic zero inventory or argument-principle identity is assumed here.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Analysis.Complex.ClosedCurveFactorIndex

open scoped unitInterval BigOperators
open ContinuousMap ExponentialLoopIndex

noncomputable section

def lift (g : C(I, ℂ)) (hn : ∀ t, g t ≠ 0) : C(I, Punctured) where
  toFun t := ⟨g t, hn t⟩
  continuous_toFun := g.continuous.subtype_mk _

theorem lift_closed (g : C(I, ℂ)) (hc : g 0 = g 1) (hn : ∀ t, g t ≠ 0) :
    lift g hn 0 = lift g hn 1 := Subtype.ext hc

/-- This is literally the old winding, not a second invariant. -/
def index (g : C(I, ℂ)) (hc : g 0 = g 1) (hn : ∀ t, g t ≠ 0) : ℤ :=
  winding (lift g hn) (lift_closed g hc hn)

theorem index_eq_winding (g : C(I, ℂ)) (hc : g 0 = g 1) (hn : ∀ t, g t ≠ 0)
    (q : C(I, Punctured)) (hq : q 0 = q 1) (hv : ∀ t, g t = (q t).1) :
    index g hc hn = winding q hq := by
  have he : lift g hn = q := by ext t; exact hv t
  unfold index
  rw [he]

theorem index_congr {g h : C(I, ℂ)} (gc : g 0 = g 1) (hc : h 0 = h 1)
    (gn : ∀ t, g t ≠ 0) (hn : ∀ t, h t ≠ 0) (he : ∀ t, g t = h t) :
    index g gc gn = index h hc hn := by
  have : g = h := ContinuousMap.ext he
  subst h
  rfl

/-- Convert a genuine complex free-loop homotopy into the old punctured one. -/
theorem index_homotopy {g h : C(I, ℂ)} (gc : g 0 = g 1) (hc : h 0 = h 1)
    (gn : ∀ t, g t ≠ 0) (hn : ∀ t, h t ≠ 0)
    (H : HomotopyWith g h (fun q => q 0 = q 1 ∧ ∀ t, q t ≠ 0)) :
    index g gc gn = index h hc hn := by
  let K : HomotopyWith (lift g gn) (lift h hn) (fun q => q 0 = q 1) :=
    { toFun := fun p => ⟨H p, (H.prop p.1).2 p.2⟩
      continuous_toFun := (map_continuous H).subtype_mk _
      map_zero_left := fun t => Subtype.ext (H.apply_zero t)
      map_one_left := fun t => Subtype.ext (H.apply_one t)
      prop' := fun t => Subtype.ext (H.prop t).1 }
  exact winding_homotopy (lift_closed g gc gn) (lift_closed h hc hn) K

@[simp] theorem index_const (z : ℂ) (hz : z ≠ 0) :
    index (ContinuousMap.const I z) rfl (fun _ => hz) = 0 := by
  exact (index_eq_winding (ContinuousMap.const I z) rfl (fun _ => hz)
    (ContinuousMap.const I (⟨z, hz⟩ : Punctured)) rfl
    (fun _ => rfl)).trans (winding_const ⟨z, hz⟩)

theorem mul_closed (g h : C(I, ℂ)) (gc : g 0 = g 1) (hc : h 0 = h 1) :
    (g * h) 0 = (g * h) 1 := by simp only [mul_apply, gc, hc]

theorem mul_nonzero (g h : C(I, ℂ)) (gn : ∀ t, g t ≠ 0) (hn : ∀ t, h t ≠ 0) :
    ∀ t, (g * h) t ≠ 0 := fun t => mul_ne_zero (gn t) (hn t)

theorem index_mul (g h : C(I, ℂ)) (gc : g 0 = g 1) (hc : h 0 = h 1)
    (gn : ∀ t, g t ≠ 0) (hn : ∀ t, h t ≠ 0) :
    index (g * h) (mul_closed g h gc hc) (mul_nonzero g h gn hn) =
      index g gc gn + index h hc hn := by
  rw [index_eq_winding (g * h) (mul_closed g h gc hc) (mul_nonzero g h gn hn)
    (LoopIndexOperations.productLoop (lift g gn) (lift h hn))
    (LoopIndexOperations.productLoop_closed _ _ (lift_closed g gc gn) (lift_closed h hc hn))
    (fun _ => rfl)]
  exact LoopIndexOperations.winding_product (lift g gn) (lift h hn)
    (lift_closed g gc gn) (lift_closed h hc hn)

theorem pow_closed (g : C(I, ℂ)) (gc : g 0 = g 1) (m : ℕ) :
    (g ^ m) 0 = (g ^ m) 1 := by simp only [pow_apply, gc]

theorem pow_nonzero (g : C(I, ℂ)) (gn : ∀ t, g t ≠ 0) (m : ℕ) :
    ∀ t, (g ^ m) t ≠ 0 := fun t => pow_ne_zero m (gn t)

/-- Multiplicity is a NATURAL exponent but the resulting winding stays SIGNED. -/
theorem index_pow (g : C(I, ℂ)) (gc : g 0 = g 1) (gn : ∀ t, g t ≠ 0) (m : ℕ) :
    index (g ^ m) (pow_closed g gc m) (pow_nonzero g gn m) = (m : ℤ) * index g gc gn := by
  induction m with
  | zero => simpa using index_const 1 one_ne_zero
  | succ m ih =>
    have hmul := index_mul (g^m) g (pow_closed g gc m) gc (pow_nonzero g gn m) gn
    calc
      _ = index (g^m) (pow_closed g gc m) (pow_nonzero g gn m) + index g gc gn := by
        simpa only [pow_succ] using hmul
      _ = _ := by rw [ih]; push_cast; ring

theorem product_apply {ι : Type*} (s : Finset ι) (g : ι → C(I, ℂ)) (t : I) :
    (∏ i ∈ s, g i) t = ∏ i ∈ s, g i t := by
  classical
  induction s using Finset.induction_on with
  | empty => simp
  | @insert i s hi ih => simp [Finset.prod_insert hi, ih]

theorem prod_closed {ι : Type*} (s : Finset ι) (g : ι → C(I, ℂ))
    (gc : ∀ i, g i 0 = g i 1) : (∏ i ∈ s, g i) 0 = (∏ i ∈ s, g i) 1 := by
  simp only [product_apply]
  exact Finset.prod_congr rfl (fun i _ => gc i)

theorem prod_nonzero {ι : Type*} (s : Finset ι) (g : ι → C(I, ℂ))
    (gn : ∀ i t, g i t ≠ 0) : ∀ t, (∏ i ∈ s, g i) t ≠ 0 := by
  intro t
  simp only [product_apply]
  exact Finset.prod_ne_zero_iff.mpr (fun i hi => gn i t)

/-- Every finite factor contributes; neither cancellation nor equal locations
permits deduplication of repeated factors. -/
theorem index_prod {ι : Type*} (s : Finset ι) (g : ι → C(I, ℂ))
    (gc : ∀ i, g i 0 = g i 1) (gn : ∀ i t, g i t ≠ 0) :
    index (∏ i ∈ s, g i) (prod_closed s g gc) (prod_nonzero s g gn) =
      ∑ i ∈ s, index (g i) (gc i) (gn i) := by
  classical
  induction s using Finset.induction_on with
  | empty => simpa using index_const 1 one_ne_zero
  | @insert i s hi ih =>
    have hmul := index_mul (g i) (∏ j ∈ s, g j) (gc i) (prod_closed s g gc)
      (gn i) (prod_nonzero s g gn)
    calc
      _ = index (g i) (gc i) (gn i) +
          index (∏ j ∈ s, g j) (prod_closed s g gc) (prod_nonzero s g gn) := by
        simpa only [Finset.prod_insert hi] using hmul
      _ = _ := by rw [ih, Finset.sum_insert hi]

end
end GRWTSK.Analysis.Complex.ClosedCurveFactorIndex
