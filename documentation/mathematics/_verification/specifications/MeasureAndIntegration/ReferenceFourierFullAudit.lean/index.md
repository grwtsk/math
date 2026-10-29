# Verification target: Reference Fourier Full Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "967fa4fa104b442f5ddc5dd48d218e59c6f11043",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourierFullAudit/Variant10ecf8e11741502f554d5a3d3fe25bd7cf8bae80aaff90b5f10855d5e1123ef8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ReferenceFourierFullAudit.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ReferenceFourierFullAudit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `967fa4fa104b442f5ddc5dd48d218e59c6f11043`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourierFullAudit/Variant10ecf8e11741502f554d5a3d3fe25bd7cf8bae80aaff90b5f10855d5e1123ef8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourierFullAudit/Variant10ecf8e11741502f554d5a3d3fe25bd7cf8bae80aaff90b5f10855d5e1123ef8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FourierTransform` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.NormedSpace` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [reference_zeroExtension_ae](../../../../MeasureAndIntegration/ReferenceFourierFullAudit.lean/declarations/reference-zeroextension-ae.md) | 14 | `result-track:b8a4bf928983f6bc039dac396884cf38c52d7417fcb029c4f1f0abfdbd991858` |
| 2 | `theorem` | [reference_zeroExtension_integrable](../../../../MeasureAndIntegration/ReferenceFourierFullAudit.lean/declarations/reference-zeroextension-integrable.md) | 27 | `result-track:2b707d32931f591a927aa74f165d8d3858c39c2fb66eb04e8f1c474168e60955` |
| 3 | `theorem` | [reference_zeroExtension_fourier](../../../../MeasureAndIntegration/ReferenceFourierFullAudit.lean/declarations/reference-zeroextension-fourier.md) | 35 | `result-track:0566c9c90a9b1df4e258533b9e626ed88e0c7ceeec780414ffbc5ad57366f8f0` |
| 4 | `theorem` | [reference_zeroExtension_fourier_norm_sq](../../../../MeasureAndIntegration/ReferenceFourierFullAudit.lean/declarations/reference-zeroextension-fourier-norm-sq.md) | 60 | `result-track:25196287aa2d0c9a6ce6a9e8141ac572728c113562ef95505be40b98ba56b72c` |
| 5 | `theorem` | [reference_zeroExtension_fourier_square_integral](../../../../MeasureAndIntegration/ReferenceFourierFullAudit.lean/declarations/reference-zeroextension-fourier-square-integral.md) | 67 | `result-track:9ad47662c813571a23dbd02feb9afe9c6f6c5f5d85281f360427b112fe333447` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=68853dd07e2112a014ecb5262325b66c29ad06d726151142342d1c6d58c1d517 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourierFullAudit/Variant10ecf8e11741502f554d5a3d3fe25bd7cf8bae80aaff90b5f10855d5e1123ef8.lean","GRWTSK/_verification/specifications/Analysis/HarmonicAnalysis/FourierAnalysis/ReferenceFourierFullAudit/Variant10ecf8e11741502f554d5a3d3fe25bd7cf8bae80aaff90b5f10855d5e1123ef8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
