# Attempt03 Power Onset

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a24adc6181012c5a3b882c298f8c66708b42cb2e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/Attempt03PowerOnset.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [powerOnset](declarations/poweronset.md) | 17 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [powerWeight](declarations/powerweight.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [positiveOnsetAtom](declarations/positiveonsetatom.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [positiveOnsetTail](declarations/positiveonsettail.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [powerOnset_pos](declarations/poweronset-pos.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [powerWeight_nonneg](declarations/powerweight-nonneg.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [positiveOnsetAtom_nonneg](declarations/positiveonsetatom-nonneg.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [positiveOnsetAtom_measurable](declarations/positiveonsetatom-measurable.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [positiveOnsetAtom_integrable](declarations/positiveonsetatom-integrable.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [positiveOnsetAtom_integral](declarations/positiveonsetatom-integral.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [positiveOnsetAtom_eq_omitted](declarations/positiveonsetatom-eq-omitted.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [positiveOnsetAtom_le_zeroMoment](declarations/positiveonsetatom-le-zeromoment.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [positiveOnsetTail_summable](declarations/positiveonsettail-summable.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [positiveOnsetTail_nonneg](declarations/positiveonsettail-nonneg.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [positiveOnsetTail_measurable](declarations/positiveonsettail-measurable.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [positiveOnsetTail_eq_indicator](declarations/positiveonsettail-eq-indicator.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [positiveOnsetTail_lintegral](declarations/positiveonsettail-lintegral.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [positiveOnsetTail_integrable](declarations/positiveonsettail-integrable.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [positiveOnsetTail_integral](declarations/positiveonsettail-integral.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [omittedOnsetTail_integrable_positive](declarations/omittedonsettail-integrable-positive.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [omittedOnsetTail_integral_eq_B1](declarations/omittedonsettail-integral-eq-b1.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [closedOnsetAtom](declarations/closedonsetatom.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [closedOnsetPrefix](declarations/closedonsetprefix.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [closedOnsetAtom_nonneg](declarations/closedonsetatom-nonneg.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [closedOnsetAtom_le_zeroMoment](declarations/closedonsetatom-le-zeromoment.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [closedOnsetPrefix_summable](declarations/closedonsetprefix-summable.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [closedOnsetAtom_add_omitted](declarations/closedonsetatom-add-omitted.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [closedOnsetPrefix_add_tail](declarations/closedonsetprefix-add-tail.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [properPowerMoment_sub_closedPrefix](declarations/properpowermoment-sub-closedprefix.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [closedOnsetAtom_touching](declarations/closedonsetatom-touching.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [powerOnset_ge_first](declarations/poweronset-ge-first.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [closedOnsetPrefix_below_first](declarations/closedonsetprefix-below-first.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [omittedOnsetTail_below_first](declarations/omittedonsettail-below-first.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=303559fa994d98c332eed7860c4d7f04bf86772c08c1ac8b18c707178c7bd1fb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variant265d5a3eef8846190897001717702cf98dd0032c9cbb9966cc64097dad34ad78.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
