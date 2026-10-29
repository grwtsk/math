/-
Opposite-vector quadratic readouts
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
namespace GRWTSK.Analysis.FunctionalAnalysis.HilbertSpaces.InnerProducts.OppositeVectorQuadraticReadouts
open scoped RealInnerProductSpace
variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℝ H]

/-- Even one negative-rank direction of magnitude L gives positive readout L. -/
theorem opposite_row_readout (X : H) :
    -inner ℝ X (-X) = ‖X‖ ^ 2 := by
  rw [inner_neg_right, real_inner_self_eq_norm_sq]
  ring

/-- The same fixed unit operator admits arbitrarily large free-row quadratic values. -/
theorem opposite_row_scale_readout (X : H) (L : ℝ) :
    -inner ℝ (L • X) (-(L • X)) = L ^ 2 * ‖X‖ ^ 2 := by
  rw [opposite_row_readout, norm_smul, Real.norm_eq_abs, mul_pow, sq_abs]

end GRWTSK.Analysis.FunctionalAnalysis.HilbertSpaces.InnerProducts.OppositeVectorQuadraticReadouts
