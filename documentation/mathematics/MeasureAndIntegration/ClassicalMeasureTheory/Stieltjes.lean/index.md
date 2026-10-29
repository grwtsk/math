# Stieltjes

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Stieltjes/Variantebcaf0abb5312b6d2210620be951b37a6340a7f906bfa292e79b33d18ebd2cbb.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `741a735ff1afa6ceabadb9c4775b5a82bcb12840`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [StieltjesFunction](declarations/stieltjesfunction.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [instCoeFun](declarations/instcoefun.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [ext](declarations/ext.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mono](declarations/mono.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [right_continuous](declarations/right-continuous.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [rightLim_eq](declarations/rightlim-eq.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [iInf_Ioi_eq](declarations/iinf-ioi-eq.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [iInf_rat_gt_eq](declarations/iinf-rat-gt-eq.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [id](declarations/id.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [id_leftLim](declarations/id-leftlim.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [instInhabited](declarations/instinhabited.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [_root_.Monotone.stieltjesFunction](declarations/root-monotone-stieltjesfunction.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [_root_.Monotone.stieltjesFunction_eq](declarations/root-monotone-stieltjesfunction-eq.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [countable_leftLim_ne](declarations/countable-leftlim-ne.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [length](declarations/length.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [length_empty](declarations/length-empty.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [length_Ioc](declarations/length-ioc.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [length_mono](declarations/length-mono.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [outer](declarations/outer.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [outer_le_length](declarations/outer-le-length.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [length_subadditive_Icc_Ioo](declarations/length-subadditive-icc-ioo.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [outer_Ioc](declarations/outer-ioc.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [measurableSet_Ioi](declarations/measurableset-ioi.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [outer_trim](declarations/outer-trim.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [borel_le_measurable](declarations/borel-le-measurable.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [measure_Ioc](declarations/measure-ioc.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [measure_singleton](declarations/measure-singleton.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [measure_Icc](declarations/measure-icc.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [measure_Ioo](declarations/measure-ioo.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [measure_Ico](declarations/measure-ico.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [measure_Iic](declarations/measure-iic.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [measure_Ici](declarations/measure-ici.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [measure_univ](declarations/measure-univ.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [instIsLocallyFiniteMeasure](declarations/instislocallyfinitemeasure.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [eq_of_measure_of_tendsto_atBot](declarations/eq-of-measure-of-tendsto-atbot.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [eq_of_measure_of_eq](declarations/eq-of-measure-of-eq.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5ff4ef5c66753f75b48087ec154105985f8753df7fc3f83d49923b522b5d73e9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Stieltjes/Variantebcaf0abb5312b6d2210620be951b37a6340a7f906bfa292e79b33d18ebd2cbb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
