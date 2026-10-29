# Rup Add Result Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variant2d12e48dbc3ae9cf72b32a797e3353a1fedaaa2ef086f0ea982b0cb6f51eeb81.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe8acc5a5be5740e022569f4427ed8c3582f9bdb`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/RupAddResultPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [size_insertUnit](declarations/size-insertunit.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [size_insertUnit_fold](declarations/size-insertunit-fold.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [size_assignments_insertRupUnits](declarations/size-assignments-insertrupunits.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [clauses_insertRupUnits](declarations/clauses-insertrupunits.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [ratUnits_insertRupUnits](declarations/ratunits-insertrupunits.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [InsertUnitInvariant](declarations/insertunitinvariant.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [insertUnitInvariant_insertUnit](declarations/insertunitinvariant-insertunit.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [insertUnitInvariant_insertUnit_fold](declarations/insertunitinvariant-insertunit-fold.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [insertUnitInvariant_insertRupUnits](declarations/insertunitinvariant-insertrupunits.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [nodup_insertRupUnits](declarations/nodup-insertrupunits.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [size_clearUnit](declarations/size-clearunit.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [size_clearUnit_foldl](declarations/size-clearunit-foldl.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [ClearInsertInductionMotive](declarations/clearinsertinductionmotive.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [clear_insertRup_base_case](declarations/clear-insertrup-base-case.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [clear_insert_inductive_case](declarations/clear-insert-inductive-case.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [clear_insertRup](declarations/clear-insertrup.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [clauses_performRupCheck](declarations/clauses-performrupcheck.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [rupUnits_performRupCheck](declarations/rupunits-performrupcheck.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [ratUnits_performRupCheck](declarations/ratunits-performrupcheck.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [size_assignments_confirmRupHint](declarations/size-assignments-confirmruphint.md) | 625 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [size_assignments_performRupCheck](declarations/size-assignments-performrupcheck.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [DerivedLitsInvariant](declarations/derivedlitsinvariant.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [confirmRupHint_preserves_invariant_helper](declarations/confirmruphint-preserves-invariant-helper.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [derivedLitsInvariant_confirmRupHint](declarations/derivedlitsinvariant-confirmruphint.md) | 872 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [derivedLitsInvariant_performRupCheck](declarations/derivedlitsinvariant-performrupcheck.md) | 912 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [nodup_derivedLits](declarations/nodup-derivedlits.md) | 925 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [restoreAssignments_performRupCheck_base_case](declarations/restoreassignments-performrupcheck-base-case.md) | 1013 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [restoreAssignments_performRupCheck](declarations/restoreassignments-performrupcheck.md) | 1093 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [rupAdd_result](declarations/rupadd-result.md) | 1131 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ceb6d74992c8bd64f2f338eba2523a8d330fa60f2033216708a5e04ba13bd4cd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RupAddResult/Variant2d12e48dbc3ae9cf72b32a797e3353a1fedaaa2ef086f0ea982b0cb6f51eeb81.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
