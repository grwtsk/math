/-
Signed cross-energy identities in real inner-product spaces
ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas/direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
Source original SHA-256: a4473ad538118e4a9c2fa70ca06fc271e9ef59212c8b4a138d281866feae0cc7
Manual conceptual split; uncompiled and not mathematically admitted.
These provisional roles and computational characterizations are user-supplied.
Existing source attribution, source identities and notices remain preserved in the immutable source archive.
The original local-candidate/AI notice and unsplit-source scope disclaimer below are copied unchanged. These generic identities do not identify actual Abel rows, establish a compensated budget or prove the Riemann hypothesis.
-/
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Tactic

/-!
Generic compression algebra for the exact signed source energy.
These lemmas do not identify the two actual Abel rows or prove their compensated budget.
AI attribution: OpenAI Codex. Local candidate; no accepted-source claim.
-/

set_option autoImplicit false
namespace GRWTSK.Analysis.FunctionalAnalysis.HilbertSpaces.InnerProducts.SignedCrossEnergyIdentities
open scoped RealInnerProductSpace
variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℝ H]

/-- Positive-direction completion keeps the independent compensation together. -/
theorem signed_square_completion (G : ℝ) (X Y : H) :
    G - inner ℝ X Y = G + (‖X - Y‖ ^ 2 - ‖X + Y‖ ^ 2) / 4 := by
  rw [norm_sub_sq_real, norm_add_sq_real]
  ring

/-- The exact positive block has operator constant one half in the sum-square source norm. -/
theorem negative_cross_le_half_energy (X Y : H) :
    -inner ℝ X Y ≤ (‖X‖ ^ 2 + ‖Y‖ ^ 2) / 2 := by
  have hp := sq_nonneg ‖X + Y‖
  rw [norm_add_sq_real] at hp
  linarith

end GRWTSK.Analysis.FunctionalAnalysis.HilbertSpaces.InnerProducts.SignedCrossEnergyIdentities
