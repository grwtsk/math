# Verification target: Inversion Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "647c4ae99cf740ee52416b580d38153804e507a7",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Inversion/Variant83c6a149e815f9ae6bd0b187f19c28a53744fa0f20002d4ced9b091851d2d6fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../HarmonicAnalysisOnEuclideanSpaces/InversionNamespacedPublic.lean/index.md) · [Full source](../../../../HarmonicAnalysisOnEuclideanSpaces/InversionNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `647c4ae99cf740ee52416b580d38153804e507a7`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Inversion/Variant83c6a149e815f9ae6bd0b187f19c28a53744fa0f20002d4ced9b091851d2d6fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Inversion/Variant83c6a149e815f9ae6bd0b187f19c28a53744fa0f20002d4ced9b091851d2d6fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [tendsto_integral_cexp_sq_smul](../../../../HarmonicAnalysisOnEuclideanSpaces/InversionNamespacedPublic.lean/declarations/tendsto-integral-cexp-sq-smul.md) | 62 | `result-track:276c8e5c692c4c76a507ec9b23e6b1bdda3729e5e4f434e4b7654e5c61b3b2fe` |
| 2 | `lemma` | [tendsto_integral_gaussian_smul](../../../../HarmonicAnalysisOnEuclideanSpaces/InversionNamespacedPublic.lean/declarations/tendsto-integral-gaussian-smul.md) | 84 | `result-track:16ff0653c2ef908bb6d4f302fd0c430160440d11e3e12bb03924d588d5540c85` |
| 3 | `lemma` | [tendsto_integral_gaussian_smul'](../../../../HarmonicAnalysisOnEuclideanSpaces/InversionNamespacedPublic.lean/declarations/tendsto-integral-gaussian-smul-source-edition-2.md) | 117 | `result-track:3e539bb0a6748126253ed6b134e219c3eeca3f55bb74119756789cc48ce2543f` |
| 4 | `theorem` | [MeasureTheory.Integrable.fourierInv_fourier_eq](../../../../HarmonicAnalysisOnEuclideanSpaces/InversionNamespacedPublic.lean/declarations/measuretheory-integrable-fourierinv-fourier-eq.md) | 173 | `result-track:ef12d6e575754d662fcb442703b719b3acdb69851a20bea4f4a9701435aa23ad` |
| 5 | `theorem` | [Continuous.fourierInv_fourier_eq](../../../../HarmonicAnalysisOnEuclideanSpaces/InversionNamespacedPublic.lean/declarations/continuous-fourierinv-fourier-eq.md) | 182 | `result-track:c8fffa05225aabf20893a76a5eb53e9e545a45f4b25f4cdbdcb7a77fa1eee563` |
| 6 | `theorem` | [MeasureTheory.Integrable.fourier_fourierInv_eq](../../../../HarmonicAnalysisOnEuclideanSpaces/InversionNamespacedPublic.lean/declarations/measuretheory-integrable-fourier-fourierinv-eq.md) | 191 | `result-track:8ee75adfc9899991f0fe648e0bcde58cf3e8cf21e1482c11564b38c36f539b3d` |
| 7 | `theorem` | [Continuous.fourier_fourierInv_eq](../../../../HarmonicAnalysisOnEuclideanSpaces/InversionNamespacedPublic.lean/declarations/continuous-fourier-fourierinv-eq.md) | 200 | `result-track:698bdd7c09bd3721d2bec7f12bfe5058f5c0d86b993a763a76d5affc1b0e0093` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b13370e0c0427cf28c8d9f89b64eb0ae75a9e5bc3c6508f7d9dd10cb16403914 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Inversion/Variant83c6a149e815f9ae6bd0b187f19c28a53744fa0f20002d4ced9b091851d2d6fd.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Inversion/Variant83c6a149e815f9ae6bd0b187f19c28a53744fa0f20002d4ced9b091851d2d6fd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
