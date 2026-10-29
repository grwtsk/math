# Substitution Namespaced Edition1

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38bfb1ca6249cfb327385cac6688e50254e395e9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SubstitutionNamespacedEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [compSub](declarations/compsub.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [subst_compSub](declarations/subst-compsub.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [lift_comp_cons](declarations/lift-comp-cons.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [raise_subst_cons](declarations/raise-subst-cons.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [lift](declarations/lift.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [GoodReplacement](declarations/goodreplacement.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [goodReplacement_lift](declarations/goodreplacement-lift.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [neutral_readGood](declarations/neutral-readgood.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [sort_val_retarget](declarations/sort-val-retarget.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [lookup_val_retarget](declarations/lookup-val-retarget.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [abstractionAction_retarget](declarations/abstractionaction-retarget.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [abstraction_val_retarget](declarations/abstraction-val-retarget.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [product_val_retarget](declarations/product-val-retarget.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [application_val_retarget](declarations/application-val-retarget.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [preEvaluate_retarget_val](declarations/preevaluate-retarget-val.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [preEvaluate_retarget_parameter](declarations/preevaluate-retarget-parameter.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [Assigned](declarations/assigned.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [raw_eq](declarations/raw-eq.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [normal_eq](declarations/normal-eq.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [cons](declarations/cons.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [preEvaluate_read_outside](declarations/preevaluate-read-outside.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [preEvaluate_neutral_read_inactive](declarations/preevaluate-neutral-read-inactive.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [readGood_outside](declarations/readgood-outside.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `abbrev` | [ProductGood](declarations/productgood.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [goodness_subst](declarations/goodness-subst.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [baseRead_substitution](declarations/baseread-substitution.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [preEvaluate_subst](declarations/preevaluate-subst.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [comp_single](declarations/comp-single.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [single](declarations/single.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [goodness_recontext](declarations/goodness-recontext.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [single_guard](declarations/single-guard.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [single_goodReplacement](declarations/single-goodreplacement.md) | 744 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [single_assigned](declarations/single-assigned.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=07be75bcaae1e92267a43826ebacd3829a441b992d9486f32acc7c6708377fb5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variantf2ee0849103c0998cbf07361c0cc6b058182ca7c0e5981dff6d6b1c2417a9608.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
