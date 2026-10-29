/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSignedHeight
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.EndpointCriticalLine
import GRWTSK.Analysis.ErrorBounds.EvenIntegerWindow

set_option autoImplicit false

/-!
# Exact count normalization and conditional bounded completeness at height fifteen

No analytic upper-count enclosure is constructed here. Every completeness theorem
retains an actual bound on the SAME complete closed canonical head, or an actual
upper bound on the proven positive-height normalization. A finite arithmetic
window check alone supplies neither bound. The inherited local pair and all its
source/finite-reduction dependencies remain unelaborated.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.EndpointCountNormalization

open CanonicalZeroDivisor LocalZeroSymmetry CanonicalSignedHeight
open scoped Classical
open GRWTSK.Analysis.ErrorBounds
open GRWTSK.Analysis.ErrorBounds.RationalComplexEnclosure
open EndpointCorrectedNewtonCandidate (center innerRadius)

/-- Parity helps isolate a count ONLY AFTER the full analytic enclosure is proved. -/
theorem count_eq_of_window {T : ℝ} {lo hi : ℚ} {n : ℕ}
    (hg : EvenIntegerWindow.check lo hi n = true)
    (hl : (lo : ℝ) ≤ (heightCount T : ℝ))
    (hu : (heightCount T : ℝ) ≤ (hi : ℝ)) : heightCount T = 2 * n := by
  have hc : (heightCount T : ℝ) = 2 * (positiveCount T : ℝ) := by
    exact_mod_cast heightCount_eq_twice T
  rw [hc] at hl hu
  have hn := EvenIntegerWindow.check_sound hg hl hu
  rw [heightCount_eq_twice, hn]

/-- The prior pair gives one positive zero, still only a lower count. -/
theorem positive_count_at_fifteen_lower : 1 ≤ positiveCount (15 : ℝ) := by
  have hl := EndpointCriticalLine.canonical_count_at_fifteen_lower
  rw [heightCount_eq_twice] at hl
  omega

/-- With the sourced lower bound and evenness, a strict bound below four suffices.
No such upper bound is asserted or computed by this declaration. -/
theorem counts_at_fifteen_of_strict_upper (hu : heightCount (15 : ℝ) < 4) :
    heightCount (15 : ℝ) = 2 ∧ positiveCount (15 : ℝ) = 1 := by
  have hl := positive_count_at_fifteen_lower
  have hp := (heightCount_lt_four_iff (15 : ℝ)).mp hu
  have hn : positiveCount (15 : ℝ) = 1 := by omega
  exact ⟨by rw [heightCount_eq_twice, hn]; norm_num, hn⟩

/-- The threshold can be supplied as a rigorously proved real upper enclosure;
an approximate formula or a displayed decimal without this proof is insufficient. -/
theorem strict_upper_of_real_bound {U : ℚ}
    (hbound : (heightCount (15 : ℝ) : ℝ) ≤ (U : ℝ)) (hU : U < 4) :
    heightCount (15 : ℝ) < 4 := by
  have hu : (U : ℝ) < 4 := by exact_mod_cast hU
  have hh : (heightCount (15 : ℝ) : ℝ) < 4 := hbound.trans_lt hu
  exact_mod_cast hh

/-- Actual complete-head exhaustion is conditional on the independent upper count.
The literal positive point, radius, line equality and both analytic weights persist. -/
theorem complete_pair_of_strict_upper (hu : heightCount (15 : ℝ) < 4) :
    ∃ z : ZeroPoint,
      ‖z.1 - toComplex center‖ ≤ (innerRadius : ℝ) ∧
      heightHead (15 : ℝ) = {z, conjugatePoint z} ∧
      multiplicity z = 1 ∧ multiplicity (conjugatePoint z) = 1 ∧
      z.1.re = (1 / 2 : ℝ) ∧ (conjugatePoint z).1.re = (1 / 2 : ℝ) := by
  classical
  obtain ⟨z, hz, hm, hline, _⟩ := EndpointCriticalLine.unique_simple_critical_point
  have hp := EndpointCriticalLine.positive_height hz
  have hpos : 0 < z.1.im := lt_trans (by norm_num : (0 : ℝ) < 14) hp.1
  have hh : height z ≤ 15 := by
    simpa only [height, abs_of_pos hpos] using hp.2.le
  have hmem : z ∈ heightHead (15 : ℝ) := (mem_heightHead _ _).mpr hh
  have hconj : conjugatePoint z ∈ heightHead (15 : ℝ) := by
    apply (mem_heightHead _ _).mpr
    simpa only [conjugate_height] using hh
  have he := head_eq_pair_of_count_le_two
    (ne_conjugate_of_im_ne_zero hpos.ne') hmem hconj
    (le_of_eq (counts_at_fifteen_of_strict_upper hu).1)
  refine ⟨z, hz, he, hm, ?_, hline, ?_⟩
  · rw [conjugate_multiplicity, hm]
  · change z.1.re = (1 / 2 : ℝ)
    exact hline

/-- This is a bounded implication. Its upper-count premise is NOT discharged. -/
theorem bounded_line_of_strict_upper (hu : heightCount (15 : ℝ) < 4) :
    ∀ z : ZeroPoint, height z ≤ 15 → z.1.re = (1 / 2 : ℝ) := by
  classical
  obtain ⟨w, _, he, _, _, hl, hc⟩ := complete_pair_of_strict_upper hu
  intro z hz
  have hm := (mem_heightHead (15 : ℝ) z).mpr hz
  rw [he] at hm
  simp only [Finset.mem_insert, Finset.mem_singleton] at hm
  rcases hm with rfl | rfl
  · exact hl
  · exact hc

/-- The positive CLOSED convention in issue 135 now has an exact route to the
same canonical consumer. No one-sign analytic count theorem is imported by name. -/
theorem bounded_line_of_positive_upper (hu : positiveCount (15 : ℝ) ≤ 1) :
    ∀ z : ZeroPoint, height z ≤ 15 → z.1.re = (1 / 2 : ℝ) :=
  bounded_line_of_strict_upper ((heightCount_lt_four_iff (15 : ℝ)).mpr hu)

/-- A genuinely enclosed [1,3] window would isolate two because the count is even.
The two displayed analytic enclosure arguments are intentionally required. -/
theorem bounded_line_of_count_window {lo hi : ℚ}
    (hg : EvenIntegerWindow.check lo hi 1 = true)
    (hl : (lo : ℝ) ≤ (heightCount (15 : ℝ) : ℝ))
    (hu : (heightCount (15 : ℝ) : ℝ) ≤ (hi : ℝ)) :
    ∀ z : ZeroPoint, height z ≤ 15 → z.1.re = (1 / 2 : ℝ) := by
  have he := count_eq_of_window hg hl hu
  apply bounded_line_of_strict_upper
  omega

end GRWTSK.RiemannHypothesis.Checks.EndpointCountNormalization
