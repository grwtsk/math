# Vector Measure Decomposition Hahn Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `927d111e53492a40ba554a23b656cc771ec2228b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureDecompositionHahnPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [ExistsOneDivLT](declarations/existsonedivlt.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [existsNatOneDivLTMeasure_of_not_negative](declarations/existsnatonedivltmeasure-of-not-negative.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [findExistsOneDivLT](declarations/findexistsonedivlt.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [findExistsOneDivLT_spec](declarations/findexistsonedivlt-spec.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [findExistsOneDivLT_min](declarations/findexistsonedivlt-min.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [someExistsOneDivLT](declarations/someexistsonedivlt.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [someExistsOneDivLT_spec](declarations/someexistsonedivlt-spec.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [someExistsOneDivLT_subset](declarations/someexistsonedivlt-subset.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [someExistsOneDivLT_subset'](declarations/someexistsonedivlt-subset-source-edition-2.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [someExistsOneDivLT_measurableSet](declarations/someexistsonedivlt-measurableset.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [someExistsOneDivLT_lt](declarations/someexistsonedivlt-lt.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [restrictNonposSeq](declarations/restrictnonposseq.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [restrictNonposSeq_succ](declarations/restrictnonposseq-succ.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [restrictNonposSeq_subset](declarations/restrictnonposseq-subset.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [restrictNonposSeq_lt](declarations/restrictnonposseq-lt.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [measure_of_restrictNonposSeq](declarations/measure-of-restrictnonposseq.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [restrictNonposSeq_measurableSet](declarations/restrictnonposseq-measurableset.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [restrictNonposSeq_disjoint'](declarations/restrictnonposseq-disjoint-source-edition-2.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [restrictNonposSeq_disjoint](declarations/restrictnonposseq-disjoint.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [exists_subset_restrict_nonpos'](declarations/exists-subset-restrict-nonpos.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [exists_subset_restrict_nonpos](declarations/exists-subset-restrict-nonpos-source-edition-2.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [measureOfNegatives](declarations/measureofnegatives.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [zero_mem_measureOfNegatives](declarations/zero-mem-measureofnegatives.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [bddBelow_measureOfNegatives](declarations/bddbelow-measureofnegatives.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [exists_compl_positive_negative](declarations/exists-compl-positive-negative.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [exists_isCompl_positive_negative](declarations/exists-iscompl-positive-negative.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [of_symmDiff_compl_positive_negative](declarations/of-symmdiff-compl-positive-negative.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=422eb855f674da3c8f206c7fe77e23c00028555171673e4ee41cfdb54ade5ffb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Hahn/Variantac050cff7343fb11bd0f87e71e7bfcde25dea1f405de89520f6d2bb66835fe19.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
