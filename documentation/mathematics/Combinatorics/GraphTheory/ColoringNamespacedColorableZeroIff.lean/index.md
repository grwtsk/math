# Coloring Namespaced Colorable Zero Iff

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**70 observed declarations and anonymous commands**, 55 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variantbdcca1b3ee0441176c6cff12c1d013544ec0b30db2c70df462afc045baf60908.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `77a20cb0a52701394bfedd64c13e07fc353f89fd`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/ColoringNamespacedColorableZeroIff.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Coloring](declarations/coloring.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [Coloring.valid](declarations/coloring-valid.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Coloring.mk](declarations/coloring-mk.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Coloring.colorClass](declarations/coloring-colorclass.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Coloring.colorClasses](declarations/coloring-colorclasses.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [Coloring.mem_colorClass](declarations/coloring-mem-colorclass.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Coloring.colorClasses_isPartition](declarations/coloring-colorclasses-ispartition.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Coloring.mem_colorClasses](declarations/coloring-mem-colorclasses.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Coloring.colorClasses_finite](declarations/coloring-colorclasses-finite.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Coloring.card_colorClasses_le](declarations/coloring-card-colorclasses-le.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Coloring.not_adj_of_mem_colorClass](declarations/coloring-not-adj-of-mem-colorclass.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Coloring.color_classes_independent](declarations/coloring-color-classes-independent.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [Colorable](declarations/colorable.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [coloringOfIsEmpty](declarations/coloringofisempty.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [colorable_of_isEmpty](declarations/colorable-of-isempty.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [isEmpty_of_colorable_zero](declarations/isempty-of-colorable-zero.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [colorable_zero_iff](declarations/colorable-zero-iff.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [selfColoring](declarations/selfcoloring.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [chromaticNumber](declarations/chromaticnumber-source-edition-2.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [chromaticNumber_eq_biInf](declarations/chromaticnumber-eq-biinf.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [chromaticNumber_eq_iInf](declarations/chromaticnumber-eq-iinf.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [Colorable.chromaticNumber_eq_sInf](declarations/colorable-chromaticnumber-eq-sinf.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [recolorOfEmbedding](declarations/recolorofembedding.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [coe_recolorOfEmbedding](declarations/coe-recolorofembedding.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [recolorOfEquiv](declarations/recolorofequiv.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [coe_recolorOfEquiv](declarations/coe-recolorofequiv.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [recolorOfCardLE](declarations/recolorofcardle.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [coe_recolorOfCardLE](declarations/coe-recolorofcardle.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Colorable.mono](declarations/colorable-mono.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Coloring.colorable](declarations/coloring-colorable.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [colorable_of_fintype](declarations/colorable-of-fintype.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [Colorable.toColoring](declarations/colorable-tocoloring.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [Colorable.of_embedding](declarations/colorable-of-embedding.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [colorable_iff_exists_bdd_nat_coloring](declarations/colorable-iff-exists-bdd-nat-coloring.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [colorable_set_nonempty_of_colorable](declarations/colorable-set-nonempty-of-colorable.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [chromaticNumber_bddBelow](declarations/chromaticnumber-bddbelow.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Colorable.chromaticNumber_le](declarations/colorable-chromaticnumber-le.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [chromaticNumber_ne_top_iff_exists](declarations/chromaticnumber-ne-top-iff-exists.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [chromaticNumber_le_iff_colorable](declarations/chromaticnumber-le-iff-colorable.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [colorable_chromaticNumber](declarations/colorable-chromaticnumber.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [colorable_chromaticNumber_of_fintype](declarations/colorable-chromaticnumber-of-fintype.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [chromaticNumber_le_one_of_subsingleton](declarations/chromaticnumber-le-one-of-subsingleton.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [chromaticNumber_eq_zero_of_isempty](declarations/chromaticnumber-eq-zero-of-isempty.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [isEmpty_of_chromaticNumber_eq_zero](declarations/isempty-of-chromaticnumber-eq-zero.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [chromaticNumber_pos](declarations/chromaticnumber-pos.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [colorable_of_chromaticNumber_ne_top](declarations/colorable-of-chromaticnumber-ne-top.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [Colorable.mono_left](declarations/colorable-mono-left.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [chromaticNumber_le_of_forall_imp](declarations/chromaticnumber-le-of-forall-imp.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [chromaticNumber_mono](declarations/chromaticnumber-mono.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [chromaticNumber_mono_of_embedding](declarations/chromaticnumber-mono-of-embedding.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [card_le_chromaticNumber_iff_forall_surjective](declarations/card-le-chromaticnumber-iff-forall-surjective.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [le_chromaticNumber_iff_forall_surjective](declarations/le-chromaticnumber-iff-forall-surjective.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [chromaticNumber_eq_card_iff_forall_surjective](declarations/chromaticnumber-eq-card-iff-forall-surjective.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [chromaticNumber_eq_iff_forall_surjective](declarations/chromaticnumber-eq-iff-forall-surjective.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [chromaticNumber_bot](declarations/chromaticnumber-bot.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [chromaticNumber_top](declarations/chromaticnumber-top.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [chromaticNumber_top_eq_top_of_infinite](declarations/chromaticnumber-top-eq-top-of-infinite.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [CompleteBipartiteGraph.bicoloring](declarations/completebipartitegraph-bicoloring.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [CompleteBipartiteGraph.chromaticNumber](declarations/completebipartitegraph-chromaticnumber.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [IsClique.card_le_of_coloring](declarations/isclique-card-le-of-coloring.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [IsClique.card_le_of_colorable](declarations/isclique-card-le-of-colorable.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [IsClique.card_le_chromaticNumber](declarations/isclique-card-le-chromaticnumber.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [Colorable.cliqueFree](declarations/colorable-cliquefree.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [cliqueFree_of_chromaticNumber_lt](declarations/cliquefree-of-chromaticnumber-lt.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [Coloring.surjOn_of_card_le_isClique](declarations/coloring-surjon-of-card-le-isclique.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [coloring](declarations/coloring-source-edition-2.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [colorable](declarations/colorable-source-edition-2.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [chromaticNumber](declarations/chromaticnumber.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [colorable_of_cliqueFree](declarations/colorable-of-cliquefree.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d80cb83b83783a0f0d03235c82ce91eb8b477f00652aa4fa1fc50769412d2663 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variantbdcca1b3ee0441176c6cff12c1d013544ec0b30db2c70df462afc045baf60908.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
