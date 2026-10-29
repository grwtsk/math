# Substitution Edition2

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2fbb66912a1a80a00041a163ce8e859aa20dc057`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SubstitutionEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [compSub](declarations/compsub.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [subst_compSub](declarations/subst-compsub.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [lift_comp_cons](declarations/lift-comp-cons.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [raise_subst_cons](declarations/raise-subst-cons.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [lift](declarations/lift.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [GoodReplacement](declarations/goodreplacement.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [goodReplacement_lift](declarations/goodreplacement-lift.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [neutral_readGood](declarations/neutral-readgood.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [sort_val_retarget](declarations/sort-val-retarget.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [lookup_val_retarget](declarations/lookup-val-retarget.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [abstractionAction_retarget](declarations/abstractionaction-retarget.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [abstraction_val_retarget](declarations/abstraction-val-retarget.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [product_val_retarget](declarations/product-val-retarget.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [application_val_retarget](declarations/application-val-retarget.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [preEvaluate_retarget_val](declarations/preevaluate-retarget-val.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [preEvaluate_retarget_parameter](declarations/preevaluate-retarget-parameter.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [Assigned](declarations/assigned.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [raw_eq](declarations/raw-eq.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [normal_eq](declarations/normal-eq.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [cons](declarations/cons.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [preEvaluate_read_outside](declarations/preevaluate-read-outside.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [preEvaluate_neutral_read_inactive](declarations/preevaluate-neutral-read-inactive.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [readGood_outside](declarations/readgood-outside.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `abbrev` | [ProductGood](declarations/productgood.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [goodness_subst](declarations/goodness-subst.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [baseRead_substitution](declarations/baseread-substitution.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [preEvaluate_subst](declarations/preevaluate-subst.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [comp_single](declarations/comp-single.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [single](declarations/single.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [goodness_recontext](declarations/goodness-recontext.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [single_guard](declarations/single-guard.md) | 724 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [single_goodReplacement](declarations/single-goodreplacement.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [single_assigned](declarations/single-assigned.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b1254cac761ccc641f18476c92298a9e9be828d77d2f3d826f72fc609ec42626 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf92e530cf84ae3a287ac48c2e3ba1dacc60a1447ca74d8f6098be7991038b07d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
