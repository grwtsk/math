# Vector Measure Order Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 32 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ddfc7216ec62a1b531d5b38182a423063f2f2ecd`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOrderNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [instPartialOrder](declarations/instpartialorder.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [le_iff](declarations/le-iff-source-edition-2.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [le_iff'](declarations/le-iff.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [restrict_le_restrict_iff](declarations/restrict-le-restrict-iff.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [subset_le_of_restrict_le_restrict](declarations/subset-le-of-restrict-le-restrict.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [restrict_le_restrict_of_subset_le](declarations/restrict-le-restrict-of-subset-le.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [restrict_le_restrict_subset](declarations/restrict-le-restrict-subset.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [le_restrict_empty](declarations/le-restrict-empty.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [le_restrict_univ_iff_le](declarations/le-restrict-univ-iff-le.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [neg_le_neg](declarations/neg-le-neg.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [neg_le_neg_iff](declarations/neg-le-neg-iff.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [restrict_le_restrict_iUnion](declarations/restrict-le-restrict-iunion.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [restrict_le_restrict_countable_iUnion](declarations/restrict-le-restrict-countable-iunion.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [restrict_le_restrict_union](declarations/restrict-le-restrict-union.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [nonneg_of_zero_le_restrict](declarations/nonneg-of-zero-le-restrict.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [nonpos_of_restrict_le_zero](declarations/nonpos-of-restrict-le-zero.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [zero_le_restrict_not_measurable](declarations/zero-le-restrict-not-measurable.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [restrict_le_zero_of_not_measurable](declarations/restrict-le-zero-of-not-measurable.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [measurable_of_not_zero_le_restrict](declarations/measurable-of-not-zero-le-restrict.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [measurable_of_not_restrict_le_zero](declarations/measurable-of-not-restrict-le-zero.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [zero_le_restrict_subset](declarations/zero-le-restrict-subset.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [restrict_le_zero_subset](declarations/restrict-le-zero-subset.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [exists_pos_measure_of_not_restrict_le_zero](declarations/exists-pos-measure-of-not-restrict-le-zero.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [instAddLeftMono](declarations/instaddleftmono.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [toMeasureOfZeroLE'](declarations/tomeasureofzerole-source-edition-2.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [toMeasureOfZeroLE](declarations/tomeasureofzerole.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [toMeasureOfZeroLE_apply](declarations/tomeasureofzerole-apply.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toMeasureOfZeroLE_real_apply](declarations/tomeasureofzerole-real-apply.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [toMeasureOfLEZero](declarations/tomeasureoflezero.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toMeasureOfLEZero_apply](declarations/tomeasureoflezero-apply.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [toMeasureOfLEZero_real_apply](declarations/tomeasureoflezero-real-apply.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [toMeasureOfZeroLE_finite](declarations/tomeasureofzerole-finite.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [toMeasureOfLEZero_finite](declarations/tomeasureoflezero-finite.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [toMeasureOfZeroLE_toSignedMeasure](declarations/tomeasureofzerole-tosignedmeasure.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [toMeasureOfLEZero_toSignedMeasure](declarations/tomeasureoflezero-tosignedmeasure.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [zero_le_toSignedMeasure](declarations/zero-le-tosignedmeasure.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [toSignedMeasure_toMeasureOfZeroLE](declarations/tosignedmeasure-tomeasureofzerole.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [toSignedMeasure_restrict_eq_restrict_toSignedMeasure](declarations/tosignedmeasure-restrict-eq-restrict-tosignedmeasure.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [toSignedMeasure_le_toSignedMeasure_iff](declarations/tosignedmeasure-le-tosignedmeasure-iff.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc6965b59361bea9541e57fc0bbd1fd0dbed46253f2ea319ff5710194990929d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Order/Variant3519c9cd086a96a63be6be696b0937cb2e819a605c1f9d34272640ad4c4718bd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
