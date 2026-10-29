# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCutoffOneEstimateConsumer.Variant3989ffad2596619a52fd49aa4e0b0e7f6e274520665930da5a9d5e25ff58122f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d6883a5e70c61302c452ddb5583cbdfc19232454` · SHA-256 `3989ffad2596619a52fd49aa4e0b0e7f6e274520665930da5a9d5e25ff58122f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceCutoffOneLedger

/-! Conditional consumption of the exact independently defined cutoff-one baseline.
AI attribution: prepared with OpenAI Codex from the source-bound cutoff-one ledger.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceCutoffOneEstimateConsumer

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual EstimateSourceMobiusKernel SourcePairing SourceCutoffFlux

/-- The existing finite-prefix receiver consumes the exact cutoff-one baseline tail. -/
theorem estimate_of_cutoffOne_baseline_tail
    (h : ∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      -mainTermAt A 1 (sourceKernelCutoff A) ≤ D) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_mertens_residual_tail
    (SourceCutoffOneLedger.cutoffOne_baseline_tail_iff_residualTail.mp h)

end FormalResearch.RiemannHypothesis.SourceCutoffOneEstimateConsumer
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a513e7630dd0ec17eaf3960bfe6669845cfd33698dfe9823109636d62f9a0690 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCutoffOneEstimateConsumer/Variant3989ffad2596619a52fd49aa4e0b0e7f6e274520665930da5a9d5e25ff58122f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
