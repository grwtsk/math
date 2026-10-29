# XYZHecke Controller Public Edition2

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**49 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZHeckeController/Variant75089e03533ad24a80ce0b3bcce2f6792cf09663bd60cf7a63bdb63126af7bba.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ceceab51e752160f101226883a93595b9801171b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [HeckeMatrixV1](declarations/heckematrixv1.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [HeckeMatrixV1.det](declarations/heckematrixv1-det.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [HeckeCosetV1](declarations/heckecosetv1.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [makeHeckeCosetV1](declarations/makeheckecosetv1.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [positiveDivisorsAscending](declarations/positivedivisorsascending.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [positiveDivisorsAscending_sound](declarations/positivedivisorsascending-sound.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [heckeCosets](declarations/heckecosets.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [heckeCosets_deterministic](declarations/heckecosets-deterministic.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [HeckeCosetV1.Before](declarations/heckecosetv1-before.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [heckeCosets_stable_order](declarations/heckecosets-stable-order.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [heckeCosets_nodup](declarations/heckecosets-nodup.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [heckeCoset_coordinates](declarations/heckecoset-coordinates.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [heckeCosetMatrix_det](declarations/heckecosetmatrix-det.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [sumPositiveDivisors](declarations/sumpositivedivisors.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [heckeCoset_count_eq_sum_divisors](declarations/heckecoset-count-eq-sum-divisors.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [heckeScheduleSchemaV1](declarations/heckescheduleschemav1.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [heckeScheduleTransformIdV1](declarations/heckescheduletransformidv1.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [heckeScheduleMaxNV1](declarations/heckeschedulemaxnv1.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [ScheduleVectorV1](declarations/schedulevectorv1.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [ScheduleVectorV1.Valid](declarations/schedulevectorv1-valid.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [HeckeScheduleTransformV1](declarations/heckescheduletransformv1-source-edition-2.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [checkedScheduleI128](declarations/checkedschedulei128.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [checkedScheduleAddI128](declarations/checkedscheduleaddi128.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [checkedScheduleMulI128](declarations/checkedschedulemuli128.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [roundDivNearestEvenI64](declarations/rounddivnearesteveni64.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [checkedApplyHeckeCoset](declarations/checkedapplyheckecoset.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [accumulateHeckeSchedule](declarations/accumulateheckeschedule.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [HeckeScheduleLevelValidV1](declarations/heckeschedulelevelvalidv1.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [heckeScheduleTransformV1](declarations/heckescheduletransformv1.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [heckeScheduleTransformV1_deterministic](declarations/heckescheduletransformv1-deterministic.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [heckeScheduleTransformV1_zero_rejected](declarations/heckescheduletransformv1-zero-rejected.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [heckeScheduleTransformV1_above_bound_rejected](declarations/heckescheduletransformv1-above-bound-rejected.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [heckeScheduleTransformV1_cosets_exact](declarations/heckescheduletransformv1-cosets-exact.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `structure` | [ClassicalHeckeConformanceCertificate](declarations/classicalheckeconformancecertificate.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [ClassicalHeckeConformanceCertificate.certified](declarations/classicalheckeconformancecertificate-certified.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [ProvesClassicalHeckeAction](declarations/provesclassicalheckeaction.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [heckeSchedule_has_no_classical_hecke_authority](declarations/heckeschedule-has-no-classical-hecke-authority.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `structure` | [ModularScaleLevel](declarations/modularscalelevel.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [ModularScaleLevel.BoundsValid](declarations/modularscalelevel-boundsvalid.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [ModularLevelsOrdered](declarations/modularlevelsordered.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [ModularRevisionsMonotone](declarations/modularrevisionsmonotone.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [ModularBoundsValid](declarations/modularboundsvalid.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `structure` | [ModularControllerPlan](declarations/modularcontrollerplan.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `structure` | [BoundedBracketProgramMetadata](declarations/boundedbracketprogrammetadata.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [ModularScaleLevel.bracketMetadata](declarations/modularscalelevel-bracketmetadata.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [ProvesClassicalHeckeFromModularPlan](declarations/provesclassicalheckefrommodularplan.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [modularControllerPlan_has_no_classical_hecke_authority](declarations/modularcontrollerplan-has-no-classical-hecke-authority.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf8b4d3d1843c44cf0b9309603f13f66c6061b44c258978a498ad5ea29e51d73 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZHeckeController/Variant75089e03533ad24a80ce0b3bcce2f6792cf09663bd60cf7a63bdb63126af7bba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
