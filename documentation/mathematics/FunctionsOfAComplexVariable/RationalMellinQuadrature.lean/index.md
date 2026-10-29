# Rational Mellin Quadrature

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Complex/RationalMellinQuadrature.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe9bb430fef9fd223b23cea2616bbd33cfe3e217`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionsOfAComplexVariable/RationalMellinQuadrature.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Sample](declarations/sample.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Trace](declarations/trace.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [defaultSample](declarations/defaultsample.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [sampleAt](declarations/sampleat.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [cellWidth](declarations/cellwidth.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [node](declarations/node.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [sampleValue](declarations/samplevalue.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [sampleError](declarations/sampleerror.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [terms](declarations/terms.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [meshError](declarations/mesherror.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [sampleBudget](declarations/samplebudget.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [error](declarations/error.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [output](declarations/output.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [Valid](declarations/valid.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [instDecidableValid](declarations/instdecidablevalid.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [check](declarations/check.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [checkWithin](declarations/checkwithin.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [check_iff_valid](declarations/check-iff-valid.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [length_terms](declarations/length-terms.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [cast_node](declarations/cast-node.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [node_endpoints](declarations/node-endpoints.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [cellWidth_nonneg](declarations/cellwidth-nonneg.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [meshError_eq](declarations/mesherror-eq.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [cast_meshError](declarations/cast-mesherror.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [termAt_terms](declarations/termat-terms.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [terms_interpretation](declarations/terms-interpretation.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [cast_sampleBudget](declarations/cast-samplebudget.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [quadrature_samples_error](declarations/quadrature-samples-error.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [check_sound](declarations/check-sound.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [checkWithin_sound](declarations/checkwithin-sound.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [checked_lengths](declarations/checked-lengths.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [checked_mesh_charge_le](declarations/checked-mesh-charge-le.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [referenceSamples](declarations/referencesamples.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [referenceTrace](declarations/referencetrace.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [referenceSampleAt](declarations/referencesampleat.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [reference_checked](declarations/reference-checked.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ff5e1d03e727a4304f8a5fc6ca457c93e8def095792005013a85bf4932c29c5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Complex/RationalMellinQuadrature.lean","GRWTSK/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
