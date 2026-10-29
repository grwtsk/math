# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCompressionAlgebraHistorical01.Variantbd6999cdfee42b3cfa844bf41b248d2c278c2c40e742f1613f81df906253e955

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a3fcab595ba4e1f0936039320ef36cd37da394c` · SHA-256 `bd6999cdfee42b3cfa844bf41b248d2c278c2c40e742f1613f81df906253e955`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Tactic

/-!
Generic compression algebra for the exact signed source energy.
These lemmas do not identify the two actual Abel rows or prove their compensated budget.
AI attribution: OpenAI Codex. Local candidate; no accepted-source claim.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceCompressionAlgebra
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

/-- A Bessel lower bound for mismatch points in the wrong direction for the required upper bound. -/
theorem mismatch_lower_is_signed_lower (G P D J : ℝ)
    (hP : J ≤ P) : G + (P - D) / 4 ≥ G + (J - D) / 4 := by
  linarith

/-- Even one negative-rank direction of magnitude L gives positive readout L. -/
theorem opposite_row_readout (X : H) :
    -inner ℝ X (-X) = ‖X‖ ^ 2 := by
  rw [inner_neg_right, real_inner_self_eq_norm_sq]
  ring

/-- The same fixed unit operator admits arbitrarily large free-row quadratic values. -/
theorem opposite_row_scale_readout (X : H) (L : ℝ) :
    -inner ℝ (L • X) (-(L • X)) = L ^ 2 * ‖X‖ ^ 2 := by
  rw [opposite_row_readout, norm_smul, Real.norm_eq_abs, mul_pow, sq_abs]

#print axioms signed_square_completion
#print axioms negative_cross_le_half_energy
#print axioms mismatch_lower_is_signed_lower
#print axioms opposite_row_readout
#print axioms opposite_row_scale_readout
end FormalResearch.RiemannHypothesis.SourceCompressionAlgebra
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5abb8b7a4b1bfb7895f4b36c7cb4107817c280e759918dddfd0273d39963c3ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompressionAlgebraHistorical01/Variantbd6999cdfee42b3cfa844bf41b248d2c278c2c40e742f1613f81df906253e955.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
