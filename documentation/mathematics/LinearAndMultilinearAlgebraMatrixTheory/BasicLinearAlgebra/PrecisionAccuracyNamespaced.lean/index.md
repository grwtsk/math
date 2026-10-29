# Precision Accuracy Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 9 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/PrecisionAccuracy/Variant6e4bb54751732c3e9cbd04ae3f9692893cb47fd56a2ad6f88d7981b0a5a22f86.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d5612833464e4e9819f01eaa258f0ef0650a5094`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PrecisionAccuracyNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [PrecisionDimension](declarations/precisiondimension.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [ScoreMillionths](declarations/scoremillionths.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [zero](declarations/zero.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [one](declarations/one.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [min](declarations/min.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [min_value](declarations/min-value.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [min_le_left](declarations/min-le-left.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [min_le_right](declarations/min-le-right.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [min_eq_left_iff](declarations/min-eq-left-iff.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `inductive` | [PrecisionStatus](declarations/precisionstatus.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [PrecisionDimensionRecord](declarations/precisiondimensionrecord.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [PrecisionRecord](declarations/precisionrecord.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `inductive` | [AccuracyJudgment](declarations/accuracyjudgment.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [AccuracyDimensionRecord](declarations/accuracydimensionrecord.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [AccuracyRecord](declarations/accuracyrecord.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [metricAccuracy](declarations/metricaccuracy.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [selectionAccuracy](declarations/selectionaccuracy.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [EvidenceSupportedTargetLocus](declarations/evidencesupportedtargetlocus.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [EvidenceLocusAdmission](declarations/evidencelocusadmission.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [normativePrecision](declarations/normativeprecision.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [normativePrecision_le_extensional](declarations/normativeprecision-le-extensional.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [normativePrecision_le_evidence](declarations/normativeprecision-le-evidence.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [normativePrecision_eq_extensional_iff](declarations/normativeprecision-eq-extensional-iff.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `structure` | [NormativePrecisionRecord](declarations/normativeprecisionrecord.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [Valid](declarations/valid.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [precisionAccuracyTension](declarations/precisionaccuracytension.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [tension_eq_zero_iff](declarations/tension-eq-zero-iff.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [tension_positive_iff](declarations/tension-positive-iff.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [unsupportedExclusion](declarations/unsupportedexclusion.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `inductive` | [TensionDisposition](declarations/tensiondisposition.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `structure` | [PrecisionAccuracyTension](declarations/precisionaccuracytension-source-edition-2.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [Closed](declarations/closed.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `inductive` | [SpectralConsistencyClass](declarations/spectralconsistencyclass.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `structure` | [RhetoricalQualityClassification](declarations/rhetoricalqualityclassification.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=514e33e2f0f4afbad85aaa3b5dd56c5fd0a47b0dee8e479c3d3fcd6632f207e7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/PrecisionAccuracy/Variant6e4bb54751732c3e9cbd04ae3f9692893cb47fd56a2ad6f88d7981b0a5a22f86.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
