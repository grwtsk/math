# Coloring Namespaced Chromatic Number Le Of Colorable

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**54 observed declarations and anonymous commands**, 40 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variant29bf8707bd78bda22ab97b4d9a1ef5c169a2094c1c2f476079ead923854efb8b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc12d6ff80a09a327acf067707a4803edc9c87a9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/ColoringNamespacedChromaticNumberLeOfColorable.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Coloring](declarations/coloring.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [Coloring.valid](declarations/coloring-valid.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Coloring.mk](declarations/coloring-mk.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Coloring.colorClass](declarations/coloring-colorclass.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Coloring.colorClasses](declarations/coloring-colorclasses.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [Coloring.mem_colorClass](declarations/coloring-mem-colorclass.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Coloring.colorClasses_isPartition](declarations/coloring-colorclasses-ispartition.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Coloring.mem_colorClasses](declarations/coloring-mem-colorclasses.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Coloring.colorClasses_finite](declarations/coloring-colorclasses-finite.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Coloring.card_colorClasses_le](declarations/coloring-card-colorclasses-le.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Coloring.not_adj_of_mem_colorClass](declarations/coloring-not-adj-of-mem-colorclass.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Coloring.color_classes_independent](declarations/coloring-color-classes-independent.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [Colorable](declarations/colorable.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [coloringOfIsEmpty](declarations/coloringofisempty.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [colorable_of_isEmpty](declarations/colorable-of-isempty.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [isEmpty_of_colorable_zero](declarations/isempty-of-colorable-zero.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [selfColoring](declarations/selfcoloring.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [chromaticNumber](declarations/chromaticnumber.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [recolorOfEmbedding](declarations/recolorofembedding.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [recolorOfEquiv](declarations/recolorofequiv.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [recolorOfCardLE](declarations/recolorofcardle.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Colorable.mono](declarations/colorable-mono.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Coloring.to_colorable](declarations/coloring-to-colorable.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [colorable_of_fintype](declarations/colorable-of-fintype.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [Colorable.toColoring](declarations/colorable-tocoloring.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Colorable.of_embedding](declarations/colorable-of-embedding.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [colorable_iff_exists_bdd_nat_coloring](declarations/colorable-iff-exists-bdd-nat-coloring.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [colorable_set_nonempty_of_colorable](declarations/colorable-set-nonempty-of-colorable.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [chromaticNumber_bddBelow](declarations/chromaticnumber-bddbelow.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [chromaticNumber_le_of_colorable](declarations/chromaticnumber-le-of-colorable.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [chromaticNumber_le_card](declarations/chromaticnumber-le-card.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [colorable_chromaticNumber](declarations/colorable-chromaticnumber.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [colorable_chromaticNumber_of_fintype](declarations/colorable-chromaticnumber-of-fintype.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [chromaticNumber_le_one_of_subsingleton](declarations/chromaticnumber-le-one-of-subsingleton.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [chromaticNumber_eq_zero_of_isempty](declarations/chromaticnumber-eq-zero-of-isempty.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [isEmpty_of_chromaticNumber_eq_zero](declarations/isempty-of-chromaticnumber-eq-zero.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [chromaticNumber_pos](declarations/chromaticnumber-pos.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [colorable_of_chromaticNumber_pos](declarations/colorable-of-chromaticnumber-pos.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Colorable.mono_left](declarations/colorable-mono-left.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Colorable.chromaticNumber_le_of_forall_imp](declarations/colorable-chromaticnumber-le-of-forall-imp.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Colorable.chromaticNumber_mono](declarations/colorable-chromaticnumber-mono.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Colorable.chromaticNumber_mono_of_embedding](declarations/colorable-chromaticnumber-mono-of-embedding.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [chromaticNumber_eq_card_of_forall_surj](declarations/chromaticnumber-eq-card-of-forall-surj.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [chromaticNumber_bot](declarations/chromaticnumber-bot.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [chromaticNumber_top](declarations/chromaticnumber-top.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [chromaticNumber_top_eq_zero_of_infinite](declarations/chromaticnumber-top-eq-zero-of-infinite.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [CompleteBipartiteGraph.bicoloring](declarations/completebipartitegraph-bicoloring.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [CompleteBipartiteGraph.chromaticNumber](declarations/completebipartitegraph-chromaticnumber.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [IsClique.card_le_of_coloring](declarations/isclique-card-le-of-coloring.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [IsClique.card_le_of_colorable](declarations/isclique-card-le-of-colorable.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [IsClique.card_le_chromaticNumber](declarations/isclique-card-le-chromaticnumber.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [Colorable.cliqueFree](declarations/colorable-cliquefree.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [cliqueFree_of_chromaticNumber_lt](declarations/cliquefree-of-chromaticnumber-lt.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a4744744dc400756325c68f6cfecc762a4a336fadc1cd85a7ab59942520daa6c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variant29bf8707bd78bda22ab97b4d9a1ef5c169a2094c1c2f476079ead923854efb8b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
