# Verification target: Sampling Imports Candidate Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f14843253780c92380a9b6cce1b7968b56eaeaeb",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffbaSamplingImportsC/Variant4571df3bde1c30bb9993f11a89d497a93a4c9087e2f9561607ed3bda05a60618.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SamplingImportsCandidateNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SamplingImportsCandidateNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f14843253780c92380a9b6cce1b7968b56eaeaeb`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffbaSamplingImportsC/Variant4571df3bde1c30bb9993f11a89d497a93a4c9087e2f9561607ed3bda05a60618.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffbaSamplingImportsC/Variant4571df3bde1c30bb9993f11a89d497a93a4c9087e2f9561607ed3bda05a60618.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.DistLEIntegral` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftSampleSum](../../../../MeasureAndIntegration/SamplingImportsCandidateNamespaced.lean/declarations/leftsamplesum.md) | 37 | `declaration-track:6cf7bb74026de8a66f6b089ca4263bbff870e2b4927738ef0fb60cfc9b4aaea0` |
| 2 | `theorem` | [unit_sampling_error_identity](../../../../MeasureAndIntegration/SamplingImportsCandidateNamespaced.lean/declarations/unit-sampling-error-identity.md) | 41 | `result-track:aaf5d521537f8f27b30a2afcca4d0327a9dd724526d89b9ddedc20e4b02ef625` |
| 3 | `theorem` | [abs_unit_sampling_error_le](../../../../MeasureAndIntegration/SamplingImportsCandidateNamespaced.lean/declarations/abs-unit-sampling-error-le.md) | 80 | `result-track:057406cdcdfd819a6361b5f7b2d98cf64e056b6c4c86ee4ed6396fc6d9bf2d44` |
| 4 | `theorem` | [integral_eq_sum_unit_intervals](../../../../MeasureAndIntegration/SamplingImportsCandidateNamespaced.lean/declarations/integral-eq-sum-unit-intervals.md) | 109 | `result-track:5a2f6f760c5ad0e953b599883327077811e519f8fb1116bc3cd3c6a510f7e332` |
| 5 | `theorem` | [abs_leftSampleSum_sub_integral_le](../../../../MeasureAndIntegration/SamplingImportsCandidateNamespaced.lean/declarations/abs-leftsamplesum-sub-integral-le.md) | 139 | `result-track:a43f1c67c2a09e4d464ebd7d5ff420731430bae7cd1d0da08687a0a14c9732ac` |
| 6 | `def` | [FiniteSamplingCheckpoint](../../../../MeasureAndIntegration/SamplingImportsCandidateNamespaced.lean/declarations/finitesamplingcheckpoint.md) | 174 | `declaration-track:359692a2a3ec6b7583a209b10d32bf6f29e3ef72fad8907b6bef94cb147c2087` |
| 7 | `theorem` | [finite_sampling_checkpoint](../../../../MeasureAndIntegration/SamplingImportsCandidateNamespaced.lean/declarations/finite-sampling-checkpoint.md) | 182 | `result-track:6c5b96bb073e327cc37d65718a3a31b9094604f2e270ea4a86ecddc5443cf24a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5993123bf8130f2eca77e0819354d1705044a3957d9992e0827fa9aeef92fc1f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffbaSamplingImportsC/Variant4571df3bde1c30bb9993f11a89d497a93a4c9087e2f9561607ed3bda05a60618.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/2e4b0a9071f50df9e62aba13f4506d151c2b3654368685ab82a2bbf0cb87ffbaSamplingImportsC/Variant4571df3bde1c30bb9993f11a89d497a93a4c9087e2f9561607ed3bda05a60618.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
