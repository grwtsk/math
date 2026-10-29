# Dyck Word Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**66 observed declarations and anonymous commands**, 42 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/DyckWord/Variantae08fd45b8bfe646adab14c36d7a2d1e10569c13a1b268c4e1bf60a4e3f08b2b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab1681b522b333865243d333276793972141df09`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/DyckWordNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [DyckStep](declarations/dyckstep.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [DyckStep.dichotomy](declarations/dyckstep-dichotomy.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [DyckWord](declarations/dyckword.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [toList_eq_nil](declarations/tolist-eq-nil.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [toList_ne_nil](declarations/tolist-ne-nil.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [head_eq_U](declarations/head-eq-u.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [getLast_eq_D](declarations/getlast-eq-d.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [cons_tail_dropLast_concat](declarations/cons-tail-droplast-concat.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [take](declarations/take.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [drop](declarations/drop.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [nest](declarations/nest.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [nest_ne_zero](declarations/nest-ne-zero.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [IsNested](declarations/isnested.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [IsNested.nest](declarations/isnested-nest.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [denest](declarations/denest.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [nest_denest](declarations/nest-denest.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [denest_nest](declarations/denest-nest.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [semilength](declarations/semilength.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [semilength_zero](declarations/semilength-zero.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [semilength_add](declarations/semilength-add.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [semilength_nest](declarations/semilength-nest.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [semilength_eq_count_D](declarations/semilength-eq-count-d.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [two_mul_semilength_eq_length](declarations/two-mul-semilength-eq-length.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [firstReturn](declarations/firstreturn.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [firstReturn_zero](declarations/firstreturn-zero.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [firstReturn_pos](declarations/firstreturn-pos.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [firstReturn_lt_length](declarations/firstreturn-lt-length.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [count_take_firstReturn_add_one](declarations/count-take-firstreturn-add-one.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [count_D_lt_count_U_of_lt_firstReturn](declarations/count-d-lt-count-u-of-lt-firstreturn.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [firstReturn_add](declarations/firstreturn-add.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [firstReturn_nest](declarations/firstreturn-nest.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [insidePart](declarations/insidepart.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [outsidePart](declarations/outsidepart.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [insidePart_zero](declarations/insidepart-zero.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [outsidePart_zero](declarations/outsidepart-zero.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [insidePart_add](declarations/insidepart-add.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [outsidePart_add](declarations/outsidepart-add.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [insidePart_nest](declarations/insidepart-nest.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [outsidePart_nest](declarations/outsidepart-nest.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [nest_insidePart_add_outsidePart](declarations/nest-insidepart-add-outsidepart.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [semilength_insidePart_add_semilength_outsidePart_add_one](declarations/semilength-insidepart-add-semilength-outsidepart-add-one.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [semilength_insidePart_lt](declarations/semilength-insidepart-lt.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [semilength_outsidePart_lt](declarations/semilength-outsidepart-lt.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [le_add_self](declarations/le-add-self.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [infix_of_le](declarations/infix-of-le.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [le_of_suffix](declarations/le-of-suffix.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [pos_iff_ne_zero](declarations/pos-iff-ne-zero.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [monotone_semilength](declarations/monotone-semilength.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [strictMono_semilength](declarations/strictmono-semilength.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [equivTreeToFun](declarations/equivtreetofun.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [equivTreeInvFun](declarations/equivtreeinvfun.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [equivTree_left_inv](declarations/equivtree-left-inv.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [equivTree_right_inv](declarations/equivtree-right-inv.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [equivTree](declarations/equivtree.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [semilength_eq_numNodes_equivTree](declarations/semilength-eq-numnodes-equivtree.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [equivTreesOfNumNodesEq](declarations/equivtreesofnumnodeseq.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [card_dyckWord_semilength_eq_catalan](declarations/card-dyckword-semilength-eq-catalan.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [evalDyckWordFirstReturn](declarations/evaldyckwordfirstreturn.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6d9dbb0d04aff046b3b6f705e3c75be8a29f908848f0907f1ddc97b4bece1f57 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/DyckWord/Variantae08fd45b8bfe646adab14c36d7a2d1e10569c13a1b268c4e1bf60a4e3f08b2b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
