# Attempt03 Namespaced Power Onset

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `494be23993a79e799931bc0ef3cb9ae18759d438`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/Attempt03NamespacedPowerOnset.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [powerOnset](declarations/poweronset.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [powerWeight](declarations/powerweight.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [positiveOnsetAtom](declarations/positiveonsetatom.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [positiveOnsetTail](declarations/positiveonsettail.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [powerOnset_pos](declarations/poweronset-pos.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [powerWeight_nonneg](declarations/powerweight-nonneg.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [positiveOnsetAtom_nonneg](declarations/positiveonsetatom-nonneg.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [positiveOnsetAtom_measurable](declarations/positiveonsetatom-measurable.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [positiveOnsetAtom_integrable](declarations/positiveonsetatom-integrable.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [positiveOnsetAtom_integral](declarations/positiveonsetatom-integral.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [positiveOnsetAtom_eq_omitted](declarations/positiveonsetatom-eq-omitted.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [positiveOnsetAtom_le_zeroMoment](declarations/positiveonsetatom-le-zeromoment.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [positiveOnsetTail_summable](declarations/positiveonsettail-summable.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [positiveOnsetTail_nonneg](declarations/positiveonsettail-nonneg.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [positiveOnsetTail_measurable](declarations/positiveonsettail-measurable.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [positiveOnsetTail_eq_indicator](declarations/positiveonsettail-eq-indicator.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [positiveOnsetTail_lintegral](declarations/positiveonsettail-lintegral.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [positiveOnsetTail_integrable](declarations/positiveonsettail-integrable.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [positiveOnsetTail_integral](declarations/positiveonsettail-integral.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [omittedOnsetTail_integrable_positive](declarations/omittedonsettail-integrable-positive.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [omittedOnsetTail_integral_eq_B1](declarations/omittedonsettail-integral-eq-b1.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [closedOnsetAtom](declarations/closedonsetatom.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [closedOnsetPrefix](declarations/closedonsetprefix.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [closedOnsetAtom_nonneg](declarations/closedonsetatom-nonneg.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [closedOnsetAtom_le_zeroMoment](declarations/closedonsetatom-le-zeromoment.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [closedOnsetPrefix_summable](declarations/closedonsetprefix-summable.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [closedOnsetAtom_add_omitted](declarations/closedonsetatom-add-omitted.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [closedOnsetPrefix_add_tail](declarations/closedonsetprefix-add-tail.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [properPowerMoment_sub_closedPrefix](declarations/properpowermoment-sub-closedprefix.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [closedOnsetAtom_touching](declarations/closedonsetatom-touching.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [powerOnset_ge_first](declarations/poweronset-ge-first.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [closedOnsetPrefix_below_first](declarations/closedonsetprefix-below-first.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [omittedOnsetTail_below_first](declarations/omittedonsettail-below-first.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c9074f27ec60dceb1939fd88161aa7a2463ae7f7706c1f295ff9899c90852614 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variant1dc7dd208d815b6b0be3dd6e1ba56fd9717f04748cbc7f1a154874714f5a32f1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
