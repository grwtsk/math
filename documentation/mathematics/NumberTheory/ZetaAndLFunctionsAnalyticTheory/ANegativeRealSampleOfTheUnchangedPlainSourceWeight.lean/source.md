# ANegative Real Sample Of The Unchanged Plain Source Weight — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `126344c6bd645cf247ac9196d0b4be38b2a7fc9d` · SHA-256 `56bab97eda67354191ad08ab708bb371d33cad65864ad632ece39dde7d5c76ef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceCorrelationSignChange
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePlainKernel

/-!
# A negative real sample of the unchanged plain source weight

The existing actual correlation sign theorem supplies a real separation inside
its literal support. Exponentiation gives a real multiplicative argument for
`sourcePlainWeight`; no natural-number, prime, or arithmetic covariance witness
is obtained. The polynomial source, fixed normalization, and pole identities
remain unchanged. This does not bound the independent residual or imply RH.

Research direction and selection: grwtsk contributors.
Formal construction: OpenAI Codex; independent review is a separate gate.
This source-only preparation is uncompiled and has no new kernel credit.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualPlainWeightSignGuard

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimatePlainKernel SourceCorrelationSignChange

/-- The actual plain weight is negative at some real point inside its positive support. -/
theorem sourcePlainWeight_exists_neg_in_real_support (A : ℝ) (hA : 1 ≤ A) :
    ∃ x : ℝ, 1 < x ∧ x < Real.exp (2 * A) ∧ sourcePlainWeight A x < 0 := by
  have hpos : 0 < A := lt_of_lt_of_le (by norm_num : (0 : ℝ) < 1) hA
  obtain ⟨t, ht, htA, hneg⟩ := sourceCorrelation_exists_neg_in_half_support hpos
  refine ⟨Real.exp t, Real.one_lt_exp_iff.mpr ht, Real.exp_lt_exp.mpr htA, ?_⟩
  unfold sourcePlainWeight
  rw [Real.log_exp]
  exact div_neg_of_neg_of_pos hneg (Real.sqrt_pos.mpr (Real.exp_pos t))

end FormalResearch.RiemannHypothesis.SourceActualPlainWeightSignGuard
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a9758017384ee9419dbac4f5aaa81aacd24403f634f4bae102914a0706a9c3a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPlainWeightSignGuard/Variant56bab97eda67354191ad08ab708bb371d33cad65864ad632ece39dde7d5c76ef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
