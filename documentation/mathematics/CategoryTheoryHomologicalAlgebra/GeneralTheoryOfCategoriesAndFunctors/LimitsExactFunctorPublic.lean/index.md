# Limits Exact Functor Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**50 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Varianteb05a5f91d01ea9067dc3e9c0947e4401ede4f084e98ce59a3e8a37cfeeea3e0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b316dabb13769733e1a72858bf60e984d4cac992`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsExactFunctorPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [leftExactFunctor](declarations/leftexactfunctor.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [leftExactFunctor_iff](declarations/leftexactfunctor-iff.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [LeftExactFunctor](declarations/leftexactfunctor-source-edition-2.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [LeftExactFunctor.forget](declarations/leftexactfunctor-forget.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [LeftExactFunctor.fullyFaithful](declarations/leftexactfunctor-fullyfaithful.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [rightExactFunctor](declarations/rightexactfunctor-source-edition-2.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [rightExactFunctor_iff](declarations/rightexactfunctor-iff.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `abbrev` | [RightExactFunctor](declarations/rightexactfunctor.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `abbrev` | [RightExactFunctor.forget](declarations/rightexactfunctor-forget.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `abbrev` | [RightExactFunctor.fullyFaithful](declarations/rightexactfunctor-fullyfaithful.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [exactFunctor](declarations/exactfunctor-source-edition-2.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [exactFunctor_iff](declarations/exactfunctor-iff.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `abbrev` | [ExactFunctor](declarations/exactfunctor.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `abbrev` | [ExactFunctor.forget](declarations/exactfunctor-forget.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [exactFunctor_le_leftExactFunctor](declarations/exactfunctor-le-leftexactfunctor.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [exactFunctor_le_rightExactFunctor](declarations/exactfunctor-le-rightexactfunctor.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `abbrev` | [LeftExactFunctor.ofExact](declarations/leftexactfunctor-ofexact.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `abbrev` | [RightExactFunctor.ofExact](declarations/rightexactfunctor-ofexact.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [LeftExactFunctor.ofExact_obj](declarations/leftexactfunctor-ofexact-obj.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [RightExactFunctor.ofExact_obj](declarations/rightexactfunctor-ofexact-obj.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [LeftExactFunctor.ofExact_map_hom](declarations/leftexactfunctor-ofexact-map-hom.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [RightExactFunctor.ofExact_map_hom](declarations/rightexactfunctor-ofexact-map-hom.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [LeftExactFunctor.forget_obj](declarations/leftexactfunctor-forget-obj.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [RightExactFunctor.forget_obj](declarations/rightexactfunctor-forget-obj.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [ExactFunctor.forget_obj](declarations/exactfunctor-forget-obj.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [LeftExactFunctor.forget_map](declarations/leftexactfunctor-forget-map.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [RightExactFunctor.forget_map](declarations/rightexactfunctor-forget-map.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [ExactFunctor.forget_map](declarations/exactfunctor-forget-map.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [LeftExactFunctor.of](declarations/leftexactfunctor-of.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [RightExactFunctor.of](declarations/rightexactfunctor-of.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [ExactFunctor.of](declarations/exactfunctor-of.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [LeftExactFunctor.of_fst](declarations/leftexactfunctor-of-fst.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [RightExactFunctor.of_fst](declarations/rightexactfunctor-of-fst.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [ExactFunctor.of_fst](declarations/exactfunctor-of-fst.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [LeftExactFunctor.forget_obj_of](declarations/leftexactfunctor-forget-obj-of.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [RightExactFunctor.forget_obj_of](declarations/rightexactfunctor-forget-obj-of.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [ExactFunctor.forget_obj_of](declarations/exactfunctor-forget-obj-of.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [LeftExactFunctor.whiskeringLeft](declarations/leftexactfunctor-whiskeringleft.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [LeftExactFunctor.whiskeringRight](declarations/leftexactfunctor-whiskeringright.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [RightExactFunctor.whiskeringLeft](declarations/rightexactfunctor-whiskeringleft.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [RightExactFunctor.whiskeringRight](declarations/rightexactfunctor-whiskeringright.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [ExactFunctor.whiskeringLeft](declarations/exactfunctor-whiskeringleft.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [ExactFunctor.whiskeringRight](declarations/exactfunctor-whiskeringright.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=09b6e36c401f89dabcd40cc1dca64b294292c53b122496689353b24ff18c5b9e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Varianteb05a5f91d01ea9067dc3e9c0947e4401ede4f084e98ce59a3e8a37cfeeea3e0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
