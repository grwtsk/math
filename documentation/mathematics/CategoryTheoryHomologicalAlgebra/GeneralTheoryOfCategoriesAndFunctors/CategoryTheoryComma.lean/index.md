# Category Theory Comma

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 7 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `489d3e03f727738562ad8dfa4794f6d713330a10`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryComma.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Comma](declarations/comma.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [Comma.inhabited](declarations/comma-inhabited.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [CommaMorphism](declarations/commamorphism.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [CommaMorphism.inhabited](declarations/commamorphism-inhabited.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [commaCategory](declarations/commacategory.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [hom_ext](declarations/hom-ext.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [id_left](declarations/id-left.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [id_right](declarations/id-right.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [comp_left](declarations/comp-left.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [comp_right](declarations/comp-right.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [fst](declarations/fst.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [snd](declarations/snd.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [natTrans](declarations/nattrans.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [eqToHom_left](declarations/eqtohom-left.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [eqToHom_right](declarations/eqtohom-right.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [isoMk](declarations/isomk.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [mapLeft](declarations/mapleft.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [mapLeftId](declarations/mapleftid.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [mapLeftComp](declarations/mapleftcomp.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [mapLeftEq](declarations/maplefteq.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [mapLeftIso](declarations/mapleftiso.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [mapRight](declarations/mapright.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [mapRightId](declarations/maprightid.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [mapRightComp](declarations/maprightcomp.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [mapRightEq](declarations/maprighteq.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [mapRightIso](declarations/maprightiso.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [preLeft](declarations/preleft.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [isEquivalencePreLeft](declarations/isequivalencepreleft.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [preRight](declarations/preright.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [isEquivalencePreRight](declarations/isequivalencepreright.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [post](declarations/post.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=71309dbb339f718d9e9258cd92a1878af44aeaa4532e2a15f09cdd5430371e6d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantb4aacf3f560428013d4701383bf840de4b3624f29d0bda77fc2091510abd534f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
