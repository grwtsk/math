# Source Direct Corrected Pairing Leading Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4d5b9d947fc444ea8b589b65440d8b634ce8a07b` · SHA-256 `65c10059a43c8af5b06bd90a464f1e8f9f115add8c7e87e3338c8c8244df7ae2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
  have h := (actual_leading_complete_pairing_sharp_comparisons hA).2
  linarith only [h, hpair]

/-- Preserve the supplied tail radius and use its maximum with the native calibration radius. -/
theorem leading_tail_of_complete_corrected_pairing (K R : ℝ)
    (hpair : ∀ A : ℝ, R ≤ A → completeCorrectedAbelPairing A ≤ K) :
    ∀ A : ℝ, max 25600 R ≤ A → actualLeadingRenormalizedTail A ≤ K + 59 := by
  intro A hA
  exact leading_upper_of_complete_corrected_pairing K A ((le_max_left _ _).trans hA)
    (hpair A ((le_max_right _ _).trans hA))

end
end FormalResearch.RiemannHypothesis.SourceDirectCorrectedPairingLeading
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=17fbab45f564e005f441ce88e06b3b7f49877d96368f6ab731e2c6f31e80a839 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDirectCorrectedPairingLeading/Variant65c10059a43c8af5b06bd90a464f1e8f9f115add8c7e87e3338c8c8244df7ae2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
