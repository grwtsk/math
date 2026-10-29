import SourceLeadingTailQuantitative

/-!
Direct native upper-bound consumer for the unchanged complete corrected Abel
pairing. The supplied arithmetic witness remains explicit; the source's
actual sharp comparison has cost fifty-nine and introduces no smoothing loss.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceDirectCorrectedPairingLeading
open SourceLeadingTailQuantitative SourceLeadingTailBudget
open SourceCompleteCorrectedAbelPairing
noncomputable section

/-- Apply the actual direct source comparison at its proved radius. -/
theorem leading_upper_of_complete_corrected_pairing (K A : ℝ) (hA : 25600 ≤ A)
    (hpair : completeCorrectedAbelPairing A ≤ K) :
    actualLeadingRenormalizedTail A ≤ K + 59 := by
  exact (actual_leading_complete_pairing_sharp_comparisons hA).2.trans
    (add_le_add_right hpair 59)

/-- Preserve the supplied tail radius and use its maximum with the native calibration radius. -/
theorem leading_tail_of_complete_corrected_pairing (K R : ℝ)
    (hpair : ∀ A : ℝ, R ≤ A → completeCorrectedAbelPairing A ≤ K) :
    ∀ A : ℝ, max 25600 R ≤ A → actualLeadingRenormalizedTail A ≤ K + 59 := by
  intro A hA
  exact leading_upper_of_complete_corrected_pairing K A ((le_max_left _ _).trans hA)
    (hpair A ((le_max_right _ _).trans hA))

end
end FormalResearch.RiemannHypothesis.SourceDirectCorrectedPairingLeading
