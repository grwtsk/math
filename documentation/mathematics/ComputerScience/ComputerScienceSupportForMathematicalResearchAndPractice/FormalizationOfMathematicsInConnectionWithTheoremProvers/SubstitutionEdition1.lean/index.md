# Substitution Edition1

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `650bdea7fa30785d195ce0a4d61468adc88a4c3e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SubstitutionEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [compSub](declarations/compsub.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [subst_compSub](declarations/subst-compsub.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [lift_comp_cons](declarations/lift-comp-cons.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [raise_subst_cons](declarations/raise-subst-cons.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [lift](declarations/lift.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [GoodReplacement](declarations/goodreplacement.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [goodReplacement_lift](declarations/goodreplacement-lift.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [neutral_readGood](declarations/neutral-readgood.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [sort_val_retarget](declarations/sort-val-retarget.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [lookup_val_retarget](declarations/lookup-val-retarget.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [abstractionAction_retarget](declarations/abstractionaction-retarget.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [abstraction_val_retarget](declarations/abstraction-val-retarget.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [product_val_retarget](declarations/product-val-retarget.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [application_val_retarget](declarations/application-val-retarget.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [preEvaluate_retarget_val](declarations/preevaluate-retarget-val.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [preEvaluate_retarget_parameter](declarations/preevaluate-retarget-parameter.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [Assigned](declarations/assigned.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [raw_eq](declarations/raw-eq.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [normal_eq](declarations/normal-eq.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [cons](declarations/cons.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [preEvaluate_read_outside](declarations/preevaluate-read-outside.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [preEvaluate_neutral_read_inactive](declarations/preevaluate-neutral-read-inactive.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [readGood_outside](declarations/readgood-outside.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `abbrev` | [ProductGood](declarations/productgood.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [goodness_subst](declarations/goodness-subst.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [baseRead_substitution](declarations/baseread-substitution.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [preEvaluate_subst](declarations/preevaluate-subst.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [comp_single](declarations/comp-single.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [single](declarations/single.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [goodness_recontext](declarations/goodness-recontext.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [single_guard](declarations/single-guard.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [single_goodReplacement](declarations/single-goodreplacement.md) | 744 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [single_assigned](declarations/single-assigned.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=748e72b6d142c44e12ad2f199f0904e33df647c58841bdb04b3088589f87387f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Substitution/Variant74fb9abc12c55ad7e671803f2726fcb222799fcf613e88be7992b905237ca947.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
