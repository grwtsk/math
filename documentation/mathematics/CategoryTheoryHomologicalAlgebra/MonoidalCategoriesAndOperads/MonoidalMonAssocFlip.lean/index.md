# Monoidal Mon Assoc Flip

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variante493d799ef675ba33b01421d6d027950738c720ef8e5577b0ed409df0ecf8d7c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1e1e697de66beb6cfcbca1ab8cabeab7cb7e303`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalMonAssocFlip.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Mon_](declarations/mon.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [trivial](declarations/trivial.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [one_mul_hom](declarations/one-mul-hom.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mul_one_hom](declarations/mul-one-hom.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [assoc_flip](declarations/assoc-flip.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [Hom](declarations/hom.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [id](declarations/id.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [homInhabited](declarations/hominhabited.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [comp](declarations/comp.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [ext](declarations/ext.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [id_hom'](declarations/id-hom.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [comp_hom'](declarations/comp-hom.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [forget](declarations/forget.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [forget_faithful](declarations/forget-faithful.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [isoOfIso](declarations/isoofiso.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [uniqueHomFromTrivial](declarations/uniquehomfromtrivial.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [mapMon](declarations/mapmon.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [mapMonFunctor](declarations/mapmonfunctor.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [laxMonoidalToMon](declarations/laxmonoidaltomon.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [monToLaxMonoidal](declarations/montolaxmonoidal.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [unitIso](declarations/unitiso.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [counitIso](declarations/counitiso.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [equivLaxMonoidalFunctorPUnit](declarations/equivlaxmonoidalfunctorpunit.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [one_associator](declarations/one-associator.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [one_leftUnitor](declarations/one-leftunitor.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [one_rightUnitor](declarations/one-rightunitor.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Mon_tensor_one_mul](declarations/mon-tensor-one-mul.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Mon_tensor_mul_one](declarations/mon-tensor-mul-one.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [Mon_tensor_mul_assoc](declarations/mon-tensor-mul-assoc.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [mul_associator](declarations/mul-associator.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [mul_leftUnitor](declarations/mul-leftunitor.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [mul_rightUnitor](declarations/mul-rightunitor.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [monMonoidal](declarations/monmonoidal.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=44b8cc7e85e2e58e5b1d5b05a9c46c9fb029599bc57c6320a6b770acdd023cd7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variante493d799ef675ba33b01421d6d027950738c720ef8e5577b0ed409df0ecf8d7c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
