/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.Algebra.BigOperators.CheckedChunkComposition
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenDirectEighthBlocks

set_option autoImplicit false

/-!
# Four-cell direct sixteenth-block decomposition of the fixed contour

Every former 8-cell eighth-block is split into two 4-cell open chains. The final
3-cell suffix remains explicit. These are proof-reduction units, not a new
geometric mesh. The old direct predicate and signed term are unchanged.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.Checks.HeightFifteenDirectSixteenthBlocks

open GRWTSK.Algebra.BigOperators.CheckedContiguousBlocks
open HeightFifteenBlockDecomposition

/-- Five hundred ninety-four 4-cell pieces, then the complete final 3-cell suffix. -/
def sixteenthWidths : List ℕ := List.replicate 594 4 ++ [3]

/-- Cell 275 lies in sixteenth 68; all other sixteenth-chain contributions are zero. -/
def sixteenthExpected : List ℤ := List.replicate 68 0 ++ [1] ++ List.replicate 526 0

theorem sixteenthWidths_shape :
    sixteenthWidths.length = 595 ∧ sixteenthWidths.sum = HeightFifteenJetCandidate.edges := by decide

theorem sixteenthExpected_shape :
    sixteenthExpected.length = sixteenthWidths.length ∧ sixteenthExpected.sum = 1 := by decide

/-- Exact smaller obligations over the old direct cell predicate. -/
def SixteenthObligations : Prop :=
  Pieces directTest directTerm 0 sixteenthWidths sixteenthExpected

end GRWTSK.RiemannHypothesis.Checks.HeightFifteenDirectSixteenthBlocks
