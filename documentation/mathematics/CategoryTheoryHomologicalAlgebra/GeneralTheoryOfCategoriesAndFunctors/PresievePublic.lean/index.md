# Presieve Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**66 observed declarations and anonymous commands**, 43 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presieve/Variant6e90d96313f98de2330e97f3a25711e50aba6e2d540de2624c8027b7db08c298.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb07c06ae3668ccb5f1a32cf3bd053a9694a3e8c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Presieve](declarations/presieve.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [top_apply](declarations/top-apply.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [bot_apply](declarations/bot-apply.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [category](declarations/category.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [categoryMk](declarations/categorymk.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [diagram](declarations/diagram.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [cocone](declarations/cocone.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [bind](declarations/bind.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [BindStruct](declarations/bindstruct.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [bind.bindStruct](declarations/bind-bindstruct.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [BindStruct.bind](declarations/bindstruct-bind.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [bind_comp](declarations/bind-comp.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `inductive` | [singleton](declarations/singleton.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [singleton_eq_iff_domain](declarations/singleton-eq-iff-domain.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [singleton_self](declarations/singleton-self.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [singleton_le_iff](declarations/singleton-le-iff.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `class` | [HasPullbacks](declarations/haspullbacks.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `inductive` | [pullbackArrows](declarations/pullbackarrows.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [pullback_singleton](declarations/pullback-singleton.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `inductive` | [ofArrows](declarations/ofarrows.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [ofArrows.mk'](declarations/ofarrows-mk.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [ofArrows_pullback](declarations/ofarrows-pullback.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [ofArrows_bind](declarations/ofarrows-bind.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [ofArrows_surj](declarations/ofarrows-surj.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [exists_eq_ofArrows](declarations/exists-eq-ofarrows.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [ofArrows_category](declarations/ofarrows-category.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [ofArrows.idx](declarations/ofarrows-idx.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [ofArrows.obj_idx](declarations/ofarrows-obj-idx.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [ofArrows.eq_eqToHom_comp_hom_idx](declarations/ofarrows-eq-eqtohom-comp-hom-idx.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [ofArrows.hom_idx](declarations/ofarrows-hom-idx.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [ofArrows_comp_le](declarations/ofarrows-comp-le.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [ofArrows_comp_eq_of_surjective](declarations/ofarrows-comp-eq-of-surjective.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [ofArrows_le_iff](declarations/ofarrows-le-iff.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [ofArrows_of_unique](declarations/ofarrows-of-unique.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [ofArrows_pUnit](declarations/ofarrows-punit.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [ofArrows_of_isEmpty](declarations/ofarrows-of-isempty.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `inductive` | [bindOfArrows](declarations/bindofarrows.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [bindOfArrows_ofArrows](declarations/bindofarrows-ofarrows.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [pushforward](declarations/pushforward.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [pushforward_apply_comp](declarations/pushforward-apply-comp.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [pushforward_ofArrows](declarations/pushforward-ofarrows.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [pushforward_singleton](declarations/pushforward-singleton.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [pullback](declarations/pullback.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [pullback_iff](declarations/pullback-iff.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [pushforward_le_iff_le_pullback](declarations/pushforward-le-iff-le-pullback.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [galoisConnection_pushforward_pullback](declarations/galoisconnection-pushforward-pullback.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [monotone_pushforward](declarations/monotone-pushforward.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [monotone_pullback](declarations/monotone-pullback.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [pushforward_pullback_le](declarations/pushforward-pullback-le.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [le_pullback_pushforward](declarations/le-pullback-pushforward.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [pullback_id](declarations/pullback-id.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [pullback_comp](declarations/pullback-comp.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [pushforward_id](declarations/pushforward-id.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [pushforward_comp](declarations/pushforward-comp.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `class` | [HasPairwisePullbacks](declarations/haspairwisepullbacks.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [uncurry](declarations/uncurry.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [uncurry_singleton](declarations/uncurry-singleton.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [uncurry_pullbackArrows](declarations/uncurry-pullbackarrows.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [uncurry_bind](declarations/uncurry-bind.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [uncurry_ofArrows](declarations/uncurry-ofarrows.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [ofArrows_eq_ofArrows_uncurry](declarations/ofarrows-eq-ofarrows-uncurry.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd438746ef32a458e7150908e358057ded9971bf27f4d4235f6ceb7441358bf6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presieve/Variant6e90d96313f98de2330e97f3a25711e50aba6e2d540de2624c8027b7db08c298.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
