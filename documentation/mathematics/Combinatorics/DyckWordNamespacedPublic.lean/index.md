# Dyck Word Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**66 observed declarations and anonymous commands**, 42 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/DyckWord/Variant7832ccbd17aa0b28cd83e5d6f5b81772b8544ecc0cef62c20a84386e17104923.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f8bbbf6cf985f2a9e85de1b60a5418b1d78c487b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/DyckWordNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [DyckStep](declarations/dyckstep.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [DyckStep.dichotomy](declarations/dyckstep-dichotomy.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [DyckWord](declarations/dyckword.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [toList_eq_nil](declarations/tolist-eq-nil.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [toList_ne_nil](declarations/tolist-ne-nil.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [head_eq_U](declarations/head-eq-u.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [getLast_eq_D](declarations/getlast-eq-d.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [cons_tail_dropLast_concat](declarations/cons-tail-droplast-concat.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [take](declarations/take.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [drop](declarations/drop.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [nest](declarations/nest.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [nest_ne_zero](declarations/nest-ne-zero.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [IsNested](declarations/isnested.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [IsNested.nest](declarations/isnested-nest.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [denest](declarations/denest.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [nest_denest](declarations/nest-denest.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [denest_nest](declarations/denest-nest.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [semilength](declarations/semilength.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [semilength_zero](declarations/semilength-zero.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [semilength_add](declarations/semilength-add.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [semilength_nest](declarations/semilength-nest.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [semilength_eq_count_D](declarations/semilength-eq-count-d.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [two_mul_semilength_eq_length](declarations/two-mul-semilength-eq-length.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [firstReturn](declarations/firstreturn.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [firstReturn_zero](declarations/firstreturn-zero.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [firstReturn_pos](declarations/firstreturn-pos.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [firstReturn_lt_length](declarations/firstreturn-lt-length.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [count_take_firstReturn_add_one](declarations/count-take-firstreturn-add-one.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [count_D_lt_count_U_of_lt_firstReturn](declarations/count-d-lt-count-u-of-lt-firstreturn.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [firstReturn_add](declarations/firstreturn-add.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [firstReturn_nest](declarations/firstreturn-nest.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [insidePart](declarations/insidepart.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [outsidePart](declarations/outsidepart.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [insidePart_zero](declarations/insidepart-zero.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [outsidePart_zero](declarations/outsidepart-zero.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [insidePart_add](declarations/insidepart-add.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [outsidePart_add](declarations/outsidepart-add.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [insidePart_nest](declarations/insidepart-nest.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [outsidePart_nest](declarations/outsidepart-nest.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [nest_insidePart_add_outsidePart](declarations/nest-insidepart-add-outsidepart.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [semilength_insidePart_add_semilength_outsidePart_add_one](declarations/semilength-insidepart-add-semilength-outsidepart-add-one.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [semilength_insidePart_lt](declarations/semilength-insidepart-lt.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [semilength_outsidePart_lt](declarations/semilength-outsidepart-lt.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [le_add_self](declarations/le-add-self.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [infix_of_le](declarations/infix-of-le.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [le_of_suffix](declarations/le-of-suffix.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [pos_iff_ne_zero](declarations/pos-iff-ne-zero.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [monotone_semilength](declarations/monotone-semilength.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [strictMono_semilength](declarations/strictmono-semilength.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [toTree](declarations/totree.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [ofTree](declarations/oftree.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [ofTree_toTree](declarations/oftree-totree.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [toTree_ofTree](declarations/totree-oftree.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [equivTree](declarations/equivtree.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [numNodes_toTree](declarations/numnodes-totree.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [equivTreesOfNumNodesEq](declarations/equivtreesofnumnodeseq.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [card_dyckWord_semilength_eq_catalan](declarations/card-dyckword-semilength-eq-catalan.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [evalDyckWordFirstReturn](declarations/evaldyckwordfirstreturn.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cae154be22b877dbc92e90b54848a86b8348c42bbda65720b4aca7c38253c264 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/DyckWord/Variant7832ccbd17aa0b28cd83e5d6f5b81772b8544ecc0cef62c20a84386e17104923.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
