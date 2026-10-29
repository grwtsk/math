# Vector Measure Order Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 32 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `602ee5467d07171d5b737c437b08ba4cb775ce70`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasureOrderPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [instPartialOrder](declarations/instpartialorder.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [le_iff](declarations/le-iff-source-edition-2.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [le_iff'](declarations/le-iff.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [restrict_le_restrict_iff](declarations/restrict-le-restrict-iff.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [subset_le_of_restrict_le_restrict](declarations/subset-le-of-restrict-le-restrict.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [restrict_le_restrict_of_subset_le](declarations/restrict-le-restrict-of-subset-le.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [restrict_le_restrict_subset](declarations/restrict-le-restrict-subset.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [le_restrict_empty](declarations/le-restrict-empty.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [le_restrict_univ_iff_le](declarations/le-restrict-univ-iff-le.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [neg_le_neg](declarations/neg-le-neg.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [neg_le_neg_iff](declarations/neg-le-neg-iff.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [restrict_le_restrict_iUnion](declarations/restrict-le-restrict-iunion.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [restrict_le_restrict_countable_iUnion](declarations/restrict-le-restrict-countable-iunion.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [restrict_le_restrict_union](declarations/restrict-le-restrict-union.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [nonneg_of_zero_le_restrict](declarations/nonneg-of-zero-le-restrict.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [nonpos_of_restrict_le_zero](declarations/nonpos-of-restrict-le-zero.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [zero_le_restrict_not_measurable](declarations/zero-le-restrict-not-measurable.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [restrict_le_zero_of_not_measurable](declarations/restrict-le-zero-of-not-measurable.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [measurable_of_not_zero_le_restrict](declarations/measurable-of-not-zero-le-restrict.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [measurable_of_not_restrict_le_zero](declarations/measurable-of-not-restrict-le-zero.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [zero_le_restrict_subset](declarations/zero-le-restrict-subset.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [restrict_le_zero_subset](declarations/restrict-le-zero-subset.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [exists_pos_measure_of_not_restrict_le_zero](declarations/exists-pos-measure-of-not-restrict-le-zero.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [instAddLeftMono](declarations/instaddleftmono.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [toMeasureOfZeroLE'](declarations/tomeasureofzerole-source-edition-2.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [toMeasureOfZeroLE](declarations/tomeasureofzerole.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [toMeasureOfZeroLE_apply](declarations/tomeasureofzerole-apply.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toMeasureOfZeroLE_real_apply](declarations/tomeasureofzerole-real-apply.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [toMeasureOfLEZero](declarations/tomeasureoflezero.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toMeasureOfLEZero_apply](declarations/tomeasureoflezero-apply.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [toMeasureOfLEZero_real_apply](declarations/tomeasureoflezero-real-apply.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [toMeasureOfZeroLE_finite](declarations/tomeasureofzerole-finite.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [toMeasureOfLEZero_finite](declarations/tomeasureoflezero-finite.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [toMeasureOfZeroLE_toSignedMeasure](declarations/tomeasureofzerole-tosignedmeasure.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [toMeasureOfLEZero_toSignedMeasure](declarations/tomeasureoflezero-tosignedmeasure.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [zero_le_toSignedMeasure](declarations/zero-le-tosignedmeasure.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [toSignedMeasure_toMeasureOfZeroLE](declarations/tosignedmeasure-tomeasureofzerole.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [toSignedMeasure_restrict_eq_restrict_toSignedMeasure](declarations/tosignedmeasure-restrict-eq-restrict-tosignedmeasure.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [toSignedMeasure_le_toSignedMeasure_iff](declarations/tosignedmeasure-le-tosignedmeasure-iff.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4a6a9c94223fdba0be6e93452c7fb47d752ed4b2719d80b374ff787adf3c3c7e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Order/Variant86e50becdb4bbef7c0fafa4ddbeb43d2be21ad431665a09b4a8cd5576416d5fa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
