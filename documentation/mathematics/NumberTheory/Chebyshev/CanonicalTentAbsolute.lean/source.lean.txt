/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalHighCounting
import GRWTSK.Analysis.Series.ScaledHeightCountingTail
import GRWTSK.Analysis.Complex.TentKernelTail
import Mathlib.Topology.Algebra.InfiniteSum.Group

set_option autoImplicit false

/-!
# Absolute summability and the complete canonical tent-divisor tail

The actual local Jensen count supplies the high-family count with its retained
coefficient. The finite head at height two handles every low or zero-height
point without inverse-height division. Summability is derived independently
of the selected contour sums. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.CanonicalTentAbsolute

open Filter
open scoped Topology BigOperators
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.RiemannHypothesis.CanonicalHighCounting
open GRWTSK.Analysis.Series.HeightCountingTail
open GRWTSK.Analysis.Series.ScaledHeightCountingTail
open GRWTSK.Analysis.Complex.TentMellinKernel
open GRWTSK.Analysis.Complex.TentKernelTail

noncomputable section

/-- The old coefficient-one budget is scaled, never silently reused unscaled. -/
def canonicalTailBudget (x h T : ℝ) : ℝ := countingCoefficient * tentTailBudget x h 1 T

theorem canonicalTailBudget_eq (x h T : ℝ) (hb : 0 < x + h) :
    canonicalTailBudget x h T =
      8 * countingCoefficient * (x + h) ^ 2 * (Real.log T + 1) / (h * T) := by
  rw [canonicalTailBudget, tentTailBudget_beta_one x h T hb]
  ring

/-- Both-sign, actual-multiplicity complement. No observed list or count premise. -/
theorem complement_summable_and_bound (x h T : ℝ) (hh : 0 < h)
    (ha : 1 < x - h) (hT : 2 ≤ T) :
    Summable (fun z : {z : ZeroPoint // z ∉ heightHead T} =>
      ‖(multiplicity z.1 : ℂ) * tentKernel x h z.1.1‖) ∧
    Summable (fun z : {z : ZeroPoint // z ∉ heightHead T} =>
      (multiplicity z.1 : ℂ) * tentKernel x h z.1.1) ∧
    (∑' z : {z : ZeroPoint // z ∉ heightHead T},
      ‖(multiplicity z.1 : ℂ) * tentKernel x h z.1.1‖) ≤ canonicalTailBudget x h T := by
  classical
  let e : {z : ZeroPoint // z ∉ heightHead T} ↪ ZeroPoint :=
    ⟨Subtype.val, Subtype.val_injective⟩
  let C : ℝ := 4 * Real.exp (2 * Real.log (x + h)) / h
  have hC : 0 ≤ C := by dsimp [C]; positivity
  have hlower (z : {z : ZeroPoint // z ∉ heightHead T}) : T < height z.1 :=
    height_gt_of_not_mem_head T z.1 z.2
  have hcount : ∀ S : Finset {z : ZeroPoint // z ∉ heightHead T}, ∀ t, T ≤ t →
      finiteCountingMass S (fun z => height z.1) (fun z => (multiplicity z.1 : ℝ)) t ≤
        countingCoefficient * (t * Real.log t) := by
    intro S t ht
    have hc := finiteCountingMass_high_le (S.map e) t (hT.trans ht) (by
      intro z hz
      obtain ⟨v, hv, rfl⟩ := Finset.mem_map.mp hz
      exact hT.trans_lt (hlower v))
    rw [finiteCountingMass_map] at hc
    exact hc
  have hdom (z : {z : ZeroPoint // z ∉ heightHead T}) :
      ‖(multiplicity z.1 : ℂ) * tentKernel x h z.1.1‖ ≤
        C * ((multiplicity z.1 : ℝ) / (height z.1) ^ 2) := by
    have him : z.1.1.im ≠ 0 := by
      intro hz
      have ht := hlower z
      simp only [height, hz, abs_zero] at ht
      linarith
    have hk := norm_tentKernel_le_inverse_height_sq x h 1 hh ha (by norm_num)
      z.1.1 (point_mem_strip z.1).2.le him
    calc
      _ = (multiplicity z.1 : ℝ) * ‖tentKernel x h z.1.1‖ := by
        simp only [norm_mul, Complex.norm_natCast]
      _ ≤ (multiplicity z.1 : ℝ) *
          (4 * Real.exp ((1 + 1) * Real.log (x + h)) / (h * z.1.1.im ^ 2)) :=
        mul_le_mul_of_nonneg_left hk (Nat.cast_nonneg _)
      _ = _ := by
        dsimp [C, height]
        rw [sq_abs]
        norm_num only [one_add_one_eq_two]
        simp only [div_eq_mul_inv, mul_inv_rev]
        ring
  have hout := dominated_family_scaled (fun z : {z : ZeroPoint // z ∉ heightHead T} => height z.1)
    (fun z => (multiplicity z.1 : ℝ))
    (fun z => (multiplicity z.1 : ℂ) * tentKernel x h z.1.1)
    T C countingCoefficient (by linarith) hC countingCoefficient_pos
    (fun z => Nat.cast_nonneg _) hlower hcount hdom
  refine ⟨hout.1, hout.2.1, hout.2.2.trans_eq ?_⟩
  unfold C inverseSquareBudget canonicalTailBudget tentTailBudget
  norm_num only [one_add_one_eq_two]
  simp only [div_eq_mul_inv, mul_inv_rev]
  ring

/-- The finite low head is added only AFTER the complete high tail is summable. -/
theorem canonical_absolute_summable (x h : ℝ) (hh : 0 < h) (ha : 1 < x - h) :
    Summable (fun z : ZeroPoint => ‖(multiplicity z : ℂ) * tentKernel x h z.1‖) ∧
      Summable (fun z : ZeroPoint => (multiplicity z : ℂ) * tentKernel x h z.1) := by
  classical
  have ht := complement_summable_and_bound x h 2 hh ha (by norm_num)
  have hn : Summable (fun z : ZeroPoint => ‖(multiplicity z : ℂ) * tentKernel x h z.1‖) :=
    (heightHead 2).summable_compl_iff.mp ht.1
  exact ⟨hn, hn.of_norm⟩

/-- Every real cutoff T>=2 is allowed, including an actual zero height.
The finite head is closed, so its complete complement has STRICTLY greater height. -/
theorem norm_full_sub_head_le (x h T : ℝ) (hh : 0 < h) (ha : 1 < x - h) (hT : 2 ≤ T) :
    ‖(∑' z : ZeroPoint, (multiplicity z : ℂ) * tentKernel x h z.1) -
      ∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel x h z.1‖ ≤
        canonicalTailBudget x h T := by
  classical
  let f : ZeroPoint → ℂ := fun z => (multiplicity z : ℂ) * tentKernel x h z.1
  have hs : Summable f := (canonical_absolute_summable x h hh ha).2
  have ht := complement_summable_and_bound x h T hh ha hT
  have hcomp : (∑' z : Set.Elem ((heightHead T : Set ZeroPoint)ᶜ), f z.1) =
      ∑' z : {z : ZeroPoint // z ∉ heightHead T}, f z.1 := by
    let e : Set.Elem ((heightHead T : Set ZeroPoint)ᶜ) ≃
        {z : ZeroPoint // z ∉ heightHead T} :=
      Equiv.subtypeEquivRight (by intro z; simp)
    exact e.tsum_eq (fun z : {z : ZeroPoint // z ∉ heightHead T} => f z.1)
  have he : (∑' z, f z) - (∑ z ∈ heightHead T, f z) =
      ∑' z : {z : ZeroPoint // z ∉ heightHead T}, f z.1 := by
    rw [← hs.sum_add_tsum_compl (s := heightHead T), hcomp]
    ring
  change ‖(∑' z, f z) - (∑ z ∈ heightHead T, f z)‖ ≤ _
  rw [he]
  exact (norm_tsum_le_tsum_norm ht.1).trans ht.2.2

/-- Finite evaluation error is for this exact head and is charged separately. -/
theorem norm_full_sub_evaluated_le (x h T : ℝ) (hh : 0 < h) (ha : 1 < x - h)
    (hT : 2 ≤ T) (evaluated : ℂ) (error : ℝ)
    (heval : ‖(∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel x h z.1) -
      evaluated‖ ≤ error) :
    ‖(∑' z : ZeroPoint, (multiplicity z : ℂ) * tentKernel x h z.1) - evaluated‖ ≤
      canonicalTailBudget x h T + error := by
  calc
    _ = ‖((∑' z : ZeroPoint, (multiplicity z : ℂ) * tentKernel x h z.1) -
          ∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel x h z.1) +
        ((∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel x h z.1) - evaluated)‖ := by
      congr 1
      ring
    _ ≤ _ := (norm_add_le _ _).trans
      (add_le_add (norm_full_sub_head_le x h T hh ha hT) heval)

/-- Fixed geometry only; the coefficient retains the same 44/log(6/5). -/
theorem canonicalTailBudget_tendsto_zero (x h : ℝ) :
    Tendsto (canonicalTailBudget x h) atTop (𝓝 0) := by
  have hl : Tendsto (fun T : ℝ => Real.log T / T) atTop (𝓝 0) := by
    simpa using Real.tendsto_pow_log_div_mul_add_atTop 1 0 1 one_ne_zero
  have hi : Tendsto (fun T : ℝ => (1 : ℝ) / T) atTop (𝓝 0) :=
    tendsto_const_nhds.div_atTop tendsto_id
  have ht := (hl.add hi).const_mul
    (countingCoefficient * 8 * Real.exp (2 * Real.log (x + h)) / h)
  convert ht using 1
  · funext T
    unfold canonicalTailBudget tentTailBudget
    norm_num only [one_add_one_eq_two]
    simp only [div_eq_mul_inv, mul_inv_rev]
    ring
  · simp

end
end GRWTSK.NumberTheory.Chebyshev.CanonicalTentAbsolute
