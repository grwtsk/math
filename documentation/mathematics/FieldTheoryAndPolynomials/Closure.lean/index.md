# Closure

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `681d6352d9d63e87784f65d5786913f0b3b8dd00`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FieldTheoryAndPolynomials/Closure.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [IsNormalClosure](declarations/isnormalclosure.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [IntermediateField.normalClosure](declarations/intermediatefield-normalclosure.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [normalClosure_def](declarations/normalclosure-def-source-edition-2.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [IsNormalClosure.normal](declarations/isnormalclosure-normal.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [normalClosure_le_iff](declarations/normalclosure-le-iff.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [AlgHom.fieldRange_le_normalClosure](declarations/alghom-fieldrange-le-normalclosure.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [normalClosure_le_iSup_adjoin](declarations/normalclosure-le-isup-adjoin.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [normalClosure_eq_iSup_adjoin_of_splits](declarations/normalclosure-eq-isup-adjoin-of-splits.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [isNormalClosure_iff](declarations/isnormalclosure-iff.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [isNormalClosure_normalClosure](declarations/isnormalclosure-normalclosure-source-edition-2.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [IsNormalClosure.lift](declarations/isnormalclosure-lift.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [IsNormalClosure.equiv](declarations/isnormalclosure-equiv.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [isNormalClosure_normalClosure](declarations/isnormalclosure-normalclosure.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [normalClosure_eq_iSup_adjoin'](declarations/normalclosure-eq-isup-adjoin.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [normalClosure_eq_iSup_adjoin](declarations/normalclosure-eq-isup-adjoin-source-edition-2.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [algHomEquiv](declarations/alghomequiv.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [normal](declarations/normal.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [is_finiteDimensional](declarations/is-finitedimensional.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [algebra](declarations/algebra.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [restrictScalars_eq](declarations/restrictscalars-eq.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [Algebra.IsAlgebraic.algHomEmbeddingOfSplits](declarations/algebra-isalgebraic-alghomembeddingofsplits.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [le_normalClosure](declarations/le-normalclosure.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [normalClosure_of_normal](declarations/normalclosure-of-normal.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [normalClosure_def'](declarations/normalclosure-def.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [normalClosure_def''](declarations/normalclosure-def-source-edition-3.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [normalClosure_mono](declarations/normalclosure-mono.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [closureOperator](declarations/closureoperator.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [normal_iff_normalClosure_eq](declarations/normal-iff-normalclosure-eq.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [normal_iff_normalClosure_le](declarations/normal-iff-normalclosure-le.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [normal_iff_forall_fieldRange_le](declarations/normal-iff-forall-fieldrange-le.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [normal_iff_forall_map_le](declarations/normal-iff-forall-map-le-source-edition-2.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [normal_iff_forall_map_le'](declarations/normal-iff-forall-map-le.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [normal_iff_forall_fieldRange_eq](declarations/normal-iff-forall-fieldrange-eq.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [normal_iff_forall_map_eq](declarations/normal-iff-forall-map-eq-source-edition-2.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [normal_iff_forall_map_eq'](declarations/normal-iff-forall-map-eq.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [normalClosure_map_eq](declarations/normalclosure-map-eq.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [normalClosure_le_iff_of_normal](declarations/normalclosure-le-iff-of-normal.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=115d8acce3dc2d7b6de322eddfa75c02af26a0cae8318e110b55acfd0ef07e27 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Closure/Variant40dfa758d07f3d8c083b15a7cc56a55bdc2c03f6fbdccdfb3b71b0f17c232b2a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
