# Boundary Calculus Namespaced Proof Certificate

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BoundaryCalculus/Variante633dc8bb072a0bd0980abce4d0fe3cb4890d0ecd6ab70ce718e959d7cdfe386.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `168b416b794a7ace175308b7dbeb133e459042b8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/BoundaryCalculusNamespacedProofCertificate.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ProofCertificate](declarations/proofcertificate.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [HasCertificate](declarations/hascertificate.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [certificate_sound](declarations/certificate-sound-source-edition-2.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [DTT](declarations/dtt.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Certified](declarations/certified.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [certificate_sound](declarations/certificate-sound.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [boundary_calculus](declarations/boundary-calculus.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [no_direct_crossing](declarations/no-direct-crossing.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Index](declarations/index.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [HoldsPred](declarations/holdspred.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [OwnsPred](declarations/ownspred.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [DirectPred](declarations/directpred.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [CertifiedPred](declarations/certifiedpred.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [certified_pred_sound](declarations/certified-pred-sound.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [owns_pred_sound](declarations/owns-pred-sound.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [direct_pred_false](declarations/direct-pred-false.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `class` | [Category](declarations/category.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [typeCategory](declarations/typecategory.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [Subobject](declarations/subobject.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [SubobjectLE](declarations/subobjectle.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [FactorsThrough](declarations/factorsthrough.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [subobjectLE_trans](declarations/subobjectle-trans.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [boundary_calculus](declarations/boundary-calculus-source-edition-2.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [predicateSubobject](declarations/predicatesubobject.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [predicateSubobjectLE](declarations/predicatesubobjectle.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [predicate_subobject_inclusion_equiv](declarations/predicate-subobject-inclusion-equiv.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [certificate_sound_equiv_categorical_logic](declarations/certificate-sound-equiv-categorical-logic.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [ownership_sound_equiv_categorical_logic](declarations/ownership-sound-equiv-categorical-logic.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [owns_le_cert_categorical](declarations/owns-le-cert-categorical.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [cert_le_holds_categorical](declarations/cert-le-holds-categorical.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [owns_le_holds_by_categorical_logic](declarations/owns-le-holds-by-categorical-logic.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [boundary_calculus_equiv_categorical_logic](declarations/boundary-calculus-equiv-categorical-logic.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [no_direct_crossing_as_empty_subobject](declarations/no-direct-crossing-as-empty-subobject.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2326258f60347efff415f1774d5c0b67ee9053d170da6ba5f3490c4dee0d2252 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BoundaryCalculus/Variante633dc8bb072a0bd0980abce4d0fe3cb4890d0ecd6ab70ce718e959d7cdfe386.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
