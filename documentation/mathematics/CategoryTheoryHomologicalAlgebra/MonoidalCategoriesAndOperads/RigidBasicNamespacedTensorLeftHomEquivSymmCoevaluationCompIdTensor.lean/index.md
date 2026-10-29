# Rigid Basic Namespaced Tensor Left Hom Equiv Symm Coevaluation Comp Id Tensor

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**56 observed declarations and anonymous commands**, 30 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9b1872b3290a7d65679e25b180999ca62f2978a8dd0e699edc3594db2cb8d3c3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9553cc6d6a583fc0c6933e17c2595f2c34c3f031`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [ExactPairing](declarations/exactpairing.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [coevaluation](declarations/coevaluation.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [evaluation](declarations/evaluation.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [coevaluation_evaluation](declarations/coevaluation-evaluation.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [evaluation_coevaluation](declarations/evaluation-coevaluation.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [exactPairingUnit](declarations/exactpairingunit.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `class` | [HasRightDual](declarations/hasrightdual.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `class` | [HasLeftDual](declarations/hasleftdual.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [hasRightDualUnit](declarations/hasrightdualunit.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [hasLeftDualUnit](declarations/hasleftdualunit.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [hasRightDualLeftDual](declarations/hasrightdualleftdual.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [hasLeftDualRightDual](declarations/hasleftdualrightdual.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [leftDual_rightDual](declarations/leftdual-rightdual.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [rightDual_leftDual](declarations/rightdual-leftdual.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [rightAdjointMate](declarations/rightadjointmate.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [leftAdjointMate](declarations/leftadjointmate.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [rightAdjointMate_id](declarations/rightadjointmate-id.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [leftAdjointMate_id](declarations/leftadjointmate-id.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [rightAdjointMate_comp](declarations/rightadjointmate-comp.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [leftAdjointMate_comp](declarations/leftadjointmate-comp.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [comp_rightAdjointMate](declarations/comp-rightadjointmate.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [comp_leftAdjointMate](declarations/comp-leftadjointmate.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [tensorLeftHomEquiv](declarations/tensorlefthomequiv.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [tensorRightHomEquiv](declarations/tensorrighthomequiv.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [tensorLeftHomEquiv_naturality](declarations/tensorlefthomequiv-naturality.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [tensorLeftHomEquiv_symm_naturality](declarations/tensorlefthomequiv-symm-naturality.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [tensorRightHomEquiv_naturality](declarations/tensorrighthomequiv-naturality.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [tensorRightHomEquiv_symm_naturality](declarations/tensorrighthomequiv-symm-naturality.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [tensorLeftAdjunction](declarations/tensorleftadjunction.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [tensorRightAdjunction](declarations/tensorrightadjunction.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [closedOfHasLeftDual](declarations/closedofhasleftdual.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [tensorLeftHomEquiv_tensor](declarations/tensorlefthomequiv-tensor.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [tensorRightHomEquiv_tensor](declarations/tensorrighthomequiv-tensor.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [tensorLeftHomEquiv_symm_coevaluation_comp_id_tensor](declarations/tensorlefthomequiv-symm-coevaluation-comp-id-tensor.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [tensorLeftHomEquiv_symm_coevaluation_comp_tensor_id](declarations/tensorlefthomequiv-symm-coevaluation-comp-tensor-id.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [tensorRightHomEquiv_symm_coevaluation_comp_id_tensor](declarations/tensorrighthomequiv-symm-coevaluation-comp-id-tensor.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [tensorRightHomEquiv_symm_coevaluation_comp_tensor_id](declarations/tensorrighthomequiv-symm-coevaluation-comp-tensor-id.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [tensorLeftHomEquiv_id_tensor_comp_evaluation](declarations/tensorlefthomequiv-id-tensor-comp-evaluation.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [tensorLeftHomEquiv_tensor_id_comp_evaluation](declarations/tensorlefthomequiv-tensor-id-comp-evaluation.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [tensorRightHomEquiv_id_tensor_comp_evaluation](declarations/tensorrighthomequiv-id-tensor-comp-evaluation.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [tensorRightHomEquiv_tensor_id_comp_evaluation](declarations/tensorrighthomequiv-tensor-id-comp-evaluation.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [coevaluation_comp_rightAdjointMate](declarations/coevaluation-comp-rightadjointmate.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [leftAdjointMate_comp_evaluation](declarations/leftadjointmate-comp-evaluation.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [coevaluation_comp_leftAdjointMate](declarations/coevaluation-comp-leftadjointmate.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [rightAdjointMate_comp_evaluation](declarations/rightadjointmate-comp-evaluation.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [exactPairingCongrLeft](declarations/exactpairingcongrleft.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [exactPairingCongrRight](declarations/exactpairingcongrright.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [exactPairingCongr](declarations/exactpairingcongr.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [rightDualIso](declarations/rightdualiso.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [leftDualIso](declarations/leftdualiso.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [rightDualIso_id](declarations/rightdualiso-id.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [leftDualIso_id](declarations/leftdualiso-id.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `class` | [RightRigidCategory](declarations/rightrigidcategory.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `class` | [LeftRigidCategory](declarations/leftrigidcategory.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [monoidalClosedOfLeftRigidCategory](declarations/monoidalclosedofleftrigidcategory.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `class` | [RigidCategory](declarations/rigidcategory.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=141b6ff1d7d61252393291000b403eac88f3601b3adb06b62437c36b17151fd7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9b1872b3290a7d65679e25b180999ca62f2978a8dd0e699edc3594db2cb8d3c3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
