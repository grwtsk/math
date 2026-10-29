# Conditional Expectation AEMeasurable

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**57 observed declarations and anonymous commands**, 44 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variantbde4f90b47722093353f4a492bfbbba85c7f90639c4073aa517b94daa6af94d1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b934ff951637017686cb7a8a3433df8f959ad205`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationAEMeasurable.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [AEStronglyMeasurable'](declarations/aestronglymeasurable.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [congr](declarations/congr.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mono](declarations/mono.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [add](declarations/add.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [neg](declarations/neg.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [sub](declarations/sub.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [const_smul](declarations/const-smul.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [const_inner](declarations/const-inner.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [of_subsingleton](declarations/of-subsingleton.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [of_subsingleton'](declarations/of-subsingleton-source-edition-2.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [mk](declarations/mk.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [stronglyMeasurable_mk](declarations/stronglymeasurable-mk.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [ae_eq_mk](declarations/ae-eq-mk.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [continuous_comp](declarations/continuous-comp.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [aeStronglyMeasurable'_of_aeStronglyMeasurable'_trim](declarations/aestronglymeasurable-of-aestronglymeasurable-trim.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [StronglyMeasurable.aeStronglyMeasurable'](declarations/stronglymeasurable-aestronglymeasurable.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [ae_eq_trim_iff_of_aestronglyMeasurable](declarations/ae-eq-trim-iff-of-aestronglymeasurable.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [AEStronglyMeasurable.comp_ae_measurable'](declarations/aestronglymeasurable-comp-ae-measurable.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [AEStronglyMeasurable'.aeStronglyMeasurable'_of_measurableSpace_le_on](declarations/aestronglymeasurable-aestronglymeasurable-of-measurablespace-le-on.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [lpMeasSubgroup](declarations/lpmeassubgroup.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [lpMeas](declarations/lpmeas.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mem_lpMeasSubgroup_iff_aestronglyMeasurable](declarations/mem-lpmeassubgroup-iff-aestronglymeasurable.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mem_lpMeas_iff_aestronglyMeasurable](declarations/mem-lpmeas-iff-aestronglymeasurable.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [lpMeas.aestronglyMeasurable](declarations/lpmeas-aestronglymeasurable.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mem_lpMeas_self](declarations/mem-lpmeas-self.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mem_lpMeas_indicatorConstLp](declarations/mem-lpmeas-indicatorconstlp.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [memLp_trim_of_mem_lpMeasSubgroup](declarations/memlp-trim-of-mem-lpmeassubgroup.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mem_lpMeasSubgroup_toLp_of_trim](declarations/mem-lpmeassubgroup-tolp-of-trim.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [lpMeasSubgroupToLpTrim](declarations/lpmeassubgrouptolptrim.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [lpMeasToLpTrim](declarations/lpmeastolptrim.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [lpTrimToLpMeasSubgroup](declarations/lptrimtolpmeassubgroup.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [lpTrimToLpMeas](declarations/lptrimtolpmeas.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [lpMeasSubgroupToLpTrim_ae_eq](declarations/lpmeassubgrouptolptrim-ae-eq.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [lpTrimToLpMeasSubgroup_ae_eq](declarations/lptrimtolpmeassubgroup-ae-eq.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [lpMeasToLpTrim_ae_eq](declarations/lpmeastolptrim-ae-eq.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [lpTrimToLpMeas_ae_eq](declarations/lptrimtolpmeas-ae-eq.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [lpMeasSubgroupToLpTrim_right_inv](declarations/lpmeassubgrouptolptrim-right-inv.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [lpMeasSubgroupToLpTrim_left_inv](declarations/lpmeassubgrouptolptrim-left-inv.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [lpMeasSubgroupToLpTrim_add](declarations/lpmeassubgrouptolptrim-add.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [lpMeasSubgroupToLpTrim_neg](declarations/lpmeassubgrouptolptrim-neg.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [lpMeasSubgroupToLpTrim_sub](declarations/lpmeassubgrouptolptrim-sub.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [lpMeasToLpTrim_smul](declarations/lpmeastolptrim-smul.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [lpMeasSubgroupToLpTrim_norm_map](declarations/lpmeassubgrouptolptrim-norm-map.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [isometry_lpMeasSubgroupToLpTrim](declarations/isometry-lpmeassubgrouptolptrim.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [lpMeasSubgroupToLpTrimIso](declarations/lpmeassubgrouptolptrimiso.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [lpMeasSubgroupToLpMeasIso](declarations/lpmeassubgrouptolpmeasiso.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [lpMeasToLpTrimLie](declarations/lpmeastolptrimlie.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [isComplete_aestronglyMeasurable](declarations/iscomplete-aestronglymeasurable.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [isClosed_aestronglyMeasurable](declarations/isclosed-aestronglymeasurable.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [lpMeas.ae_fin_strongly_measurable'](declarations/lpmeas-ae-fin-strongly-measurable.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [lpMeasToLpTrimLie_symm_indicator](declarations/lpmeastolptrimlie-symm-indicator.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [lpMeasToLpTrimLie_symm_toLp](declarations/lpmeastolptrimlie-symm-tolp.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [Lp.induction_stronglyMeasurable_aux](declarations/lp-induction-stronglymeasurable-aux.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [Lp.induction_stronglyMeasurable](declarations/lp-induction-stronglymeasurable.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [MemLp.induction_stronglyMeasurable](declarations/memlp-induction-stronglymeasurable.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7aee27f5794447ea030e23a56fcb508dc37d9f0566e1148cd70cf26d3da71f02 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/AEMeasurable/Variantbde4f90b47722093353f4a492bfbbba85c7f90639c4073aa517b94daa6af94d1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
