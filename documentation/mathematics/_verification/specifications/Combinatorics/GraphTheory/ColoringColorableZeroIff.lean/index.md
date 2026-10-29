# Verification target: Coloring Colorable Zero Iff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "307223bb58a7022a164c23472b0b6405982f9e1f",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variantd02dbfce1262f74790506f19a9fb695377130ec552b553e6bff9bf23d21f9b05.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `307223bb58a7022a164c23472b0b6405982f9e1f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variantd02dbfce1262f74790506f19a9fb695377130ec552b553e6bff9bf23d21f9b05.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variantd02dbfce1262f74790506f19a9fb695377130ec552b553e6bff9bf23d21f9b05.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Clique` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ENat.Lattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Lattice` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Partition` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Antichain` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Ring` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Coloring](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/coloring.md) | 68 | `declaration-track:538f2cc004fa1b269f6f6fae0bf454245566901ef9f957ed11c737b98fcfefdc` |
| 2 | `theorem` | [Coloring.valid](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/coloring-valid.md) | 73 | `result-track:289725288bdf0e8410914d20efc790e6e95d369c5ef1152d8da620700cb257b8` |
| 3 | `def` | [Coloring.mk](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/coloring-mk.md) | 83 | `declaration-track:5a0732570c9eee495870eb02d7ada7acce9001c22e5bf68db4b34909d4fb5c68` |
| 4 | `def` | [Coloring.colorClass](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/coloring-colorclass.md) | 89 | `declaration-track:153f6983aac586557775d5bb0532f78753ef1ce8e69351324c59b8de2bc610fa` |
| 5 | `def` | [Coloring.colorClasses](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/coloring-colorclasses.md) | 92 | `declaration-track:864af6ca1df2db80d9986dcebdd6b9d6f328f76c56662a6e8cb9a94a8991183d` |
| 6 | `theorem` | [Coloring.mem_colorClass](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/coloring-mem-colorclass.md) | 94 | `result-track:bb653e36c8122ff6b305f0ac01d78ac7da8ed78e92f7dac32dd682a188589d71` |
| 7 | `theorem` | [Coloring.colorClasses_isPartition](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/coloring-colorclasses-ispartition.md) | 96 | `result-track:9217ed3aef6c54a215169c8e03de997df5aee223ba017ce09aec2d45ef8740fb` |
| 8 | `theorem` | [Coloring.mem_colorClasses](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/coloring-mem-colorclasses.md) | 99 | `result-track:5479eb61b16a30a8d66f27d9f6c763f37f250eb3e50febe1f805d914cdf1fcd2` |
| 9 | `theorem` | [Coloring.colorClasses_finite](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/coloring-colorclasses-finite.md) | 102 | `result-track:ea01971ad949f6d7672405c93f4be22d5bc5a1ce14c1d91adb3fa7ba396cf52d` |
| 10 | `theorem` | [Coloring.card_colorClasses_le](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/coloring-card-colorclasses-le.md) | 105 | `result-track:eb6c4ce6faa81bb59d3822ace7c47443b37b51ee4aad358c7116f1ce94dfd03a` |
| 11 | `theorem` | [Coloring.not_adj_of_mem_colorClass](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/coloring-not-adj-of-mem-colorclass.md) | 110 | `result-track:091f6654735e5ad6eb6f157d4056e5a30d109aca1ac961d1199b7bd1a6cba0a0` |
| 12 | `theorem` | [Coloring.color_classes_independent](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/coloring-color-classes-independent.md) | 113 | `result-track:fb7cd31e2b82f3466d3058cc82a2573b133d109b1f76911dacbfea1176e3a744` |
| 13 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/instance.md) | 117 | `declaration-track:260c4310f331e680b45b1e611af359fa4262650afda9e8c740428d8cb65b658d` |
| 14 | `def` | [Colorable](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/colorable.md) | 125 | `declaration-track:b19a5da9cc2727c34b18e98960a1bb573d6ade33cf0891244a97f8d4ba9c7ac6` |
| 15 | `def` | [coloringOfIsEmpty](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/coloringofisempty.md) | 128 | `declaration-track:e10269c7140ffe6c2ca756a9942e19a41bfedf6ba09894c5d3a324c7d829f928` |
| 16 | `theorem` | [colorable_of_isEmpty](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/colorable-of-isempty.md) | 131 | `result-track:4cb631bd8848e45d72f018e3f3924dc2e790dd5b55167bfa6ac4b41608eae09b` |
| 17 | `theorem` | [isEmpty_of_colorable_zero](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/isempty-of-colorable-zero.md) | 134 | `result-track:2c864de15d1dbbb96d70cacf5a731cb64c2dd9fac6987beabc642c7756b409fa` |
| 18 | `lemma` | [colorable_zero_iff](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/colorable-zero-iff.md) | 141 | `result-track:d918328d84314ff02fa831ae77cd1eae571c5e6f886bfa5170724fc609e45952` |
| 19 | `def` | [selfColoring](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/selfcoloring.md) | 145 | `declaration-track:4f684900a26cd2c152e172b3d874cb770bda50b6725449867b10c8eefa66fec1` |
| 20 | `def` | [chromaticNumber](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/chromaticnumber.md) | 151 | `declaration-track:aac0a90b63efd9c9f2a7e6aa3a59accf4b0aa5cfc961a496171bbf5ad978e2f3` |
| 21 | `lemma` | [chromaticNumber_eq_biInf](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/chromaticnumber-eq-biinf.md) | 153 | `result-track:99679d4bce958a7c9934d1d9c6bf793825c5919b863fb58deb2c67165e398dca` |
| 22 | `lemma` | [chromaticNumber_eq_iInf](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/chromaticnumber-eq-iinf.md) | 156 | `result-track:706f7ade6917a23d11e018f192387ec17aa7048e4c16b067db52d36e7f65b9ee` |
| 23 | `lemma` | [Colorable.chromaticNumber_eq_sInf](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/colorable-chromaticnumber-eq-sinf.md) | 160 | `result-track:6131587df766e194e1d94108ece13828be2c137bf950c11cf26520964bde683d` |
| 24 | `def` | [recolorOfEmbedding](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/recolorofembedding.md) | 166 | `declaration-track:d419e3a869ccd069909dd531e670727bcebd77ae29aa3d7db0e99e5451c2beb5` |
| 25 | `lemma` | [coe_recolorOfEmbedding](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/coe-recolorofembedding.md) | 177 | `result-track:cee5494fab509c428752ce98a66e733bff7012c7eddfbe4f22d555e2bbce345b` |
| 26 | `def` | [recolorOfEquiv](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/recolorofequiv.md) | 181 | `declaration-track:b54d46b5fa67ae6cb02033627f136afcab9e43c4d09d29ee19ff394fb1ada98f` |
| 27 | `lemma` | [coe_recolorOfEquiv](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/coe-recolorofequiv.md) | 191 | `result-track:dc616003eddfe183a20106334620e5f458a43693870f22c04f04338faf2e34ee` |
| 28 | `def` | [recolorOfCardLE](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/recolorofcardle.md) | 196 | `declaration-track:01314dccccf181478d0e1f49a58e8e3d54d8ae158cda87877edbc1306c3ea6a8` |
| 29 | `lemma` | [coe_recolorOfCardLE](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/coe-recolorofcardle.md) | 200 | `result-track:87e93bd49d46017bb49727b8865f457ab88b060196de6293a6b60a10c74f9406` |
| 30 | `theorem` | [Colorable.mono](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/colorable-mono.md) | 206 | `result-track:014d415b4a2fe05b164e31708795553597e04221f08339228caf35ec6405a0b7` |
| 31 | `theorem` | [Coloring.colorable](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/coloring-colorable.md) | 209 | `result-track:e1feb1edc33daa1b93f6a3d82095677c4e198e501d2fe1987514e714bc785550` |
| 32 | `theorem` | [colorable_of_fintype](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/colorable-of-fintype.md) | 212 | `result-track:720912ddfb79ad56dc6db0b99310b050d307bff6ea4ee79ecc12f79a57928298` |
| 33 | `def` | [Colorable.toColoring](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/colorable-tocoloring.md) | 216 | `declaration-track:a8364473f3a57db5ef2d2bc481484755b84680b7b9a58e43b8a2ddd1d2c2d28d` |
| 34 | `theorem` | [Colorable.of_embedding](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/colorable-of-embedding.md) | 221 | `result-track:79afdfc4440a56ce082af8400ae114293dc07d93f387545f98b5f724fa5efdf4` |
| 35 | `theorem` | [colorable_iff_exists_bdd_nat_coloring](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/colorable-iff-exists-bdd-nat-coloring.md) | 225 | `result-track:b8fd11cefa895e44d8c7f14bcd5c4d04760024b23b2c3ffa36195d1a4cc3cd44` |
| 36 | `theorem` | [colorable_set_nonempty_of_colorable](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/colorable-set-nonempty-of-colorable.md) | 241 | `result-track:3aaa9c3d70359c90932d7f555ce24060d4a07bda6de1f374b89291be2f26c4a2` |
| 37 | `theorem` | [chromaticNumber_bddBelow](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/chromaticnumber-bddbelow.md) | 245 | `result-track:848d709bf0e035b7d48c8b62ed1a7e7ff64dc81815e34cea4dd2da56e7101e0f` |
| 38 | `theorem` | [Colorable.chromaticNumber_le](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/colorable-chromaticnumber-le.md) | 248 | `result-track:2fb230734256cb7be8b38650641a82e91b4f7d7e2dfc92a8aecd5c599529c2a8` |
| 39 | `theorem` | [chromaticNumber_ne_top_iff_exists](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/chromaticnumber-ne-top-iff-exists.md) | 254 | `result-track:e0dc84f5eaf5993676c57e5244ac6ea34982bd1afc53b6928aee02ed8f9cb371` |
| 40 | `theorem` | [chromaticNumber_le_iff_colorable](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/chromaticnumber-le-iff-colorable.md) | 261 | `result-track:1c503e2c7d799f8920860d4efd5f88eaa4e0d6ce949bee66f4bb894c81788941` |
| 41 | `theorem` | [colorable_chromaticNumber](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/colorable-chromaticnumber.md) | 271 | `result-track:3d3f069703c10878ec5d19c4a9e6e5905e7a37af392d95edfc7192b63f86e59b` |
| 42 | `theorem` | [colorable_chromaticNumber_of_fintype](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/colorable-chromaticnumber-of-fintype.md) | 278 | `result-track:08048bbddf41350263dd5626cda693702bf5bc3783240810a54c668ad70525de` |
| 43 | `theorem` | [chromaticNumber_le_one_of_subsingleton](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/chromaticnumber-le-one-of-subsingleton.md) | 283 | `result-track:ea36b6324a189811f7a8eac5eef71ddba160760864af88291543c894c89ec07a` |
| 44 | `theorem` | [chromaticNumber_eq_zero_of_isempty](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/chromaticnumber-eq-zero-of-isempty.md) | 291 | `result-track:bcadf1852aa3ca2fe9f4ca6a623efef2e42930e4c13995f415eb5915a9cd24f1` |
| 45 | `theorem` | [isEmpty_of_chromaticNumber_eq_zero](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/isempty-of-chromaticnumber-eq-zero.md) | 296 | `result-track:b5ffb6c0b675ce3cf4c19d663782bbaedd41b6a8555a216e9fdace4fe6f548f4` |
| 46 | `theorem` | [chromaticNumber_pos](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/chromaticnumber-pos.md) | 302 | `result-track:b8c967d7187e0e1f34958bcaf186060ad9377c88d0a87212a781141ed54aa24b` |
| 47 | `theorem` | [colorable_of_chromaticNumber_ne_top](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/colorable-of-chromaticnumber-ne-top.md) | 312 | `result-track:a727c3f1553d349b5445762da41f8cafabbc03192fdcb7cd00ea63d645d73fae` |
| 48 | `theorem` | [Colorable.mono_left](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/colorable-mono-left.md) | 318 | `result-track:bbb7b93d744642373d855d3ae5d8fc4d35daf5fa7f2084967386cddffbcc1c29` |
| 49 | `theorem` | [chromaticNumber_le_of_forall_imp](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/chromaticnumber-le-of-forall-imp.md) | 322 | `result-track:f9f9fb08f7a874663231d594da45a9b6ee6b361720d97d3efec7294a599f9004` |
| 50 | `theorem` | [chromaticNumber_mono](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/chromaticnumber-mono.md) | 332 | `result-track:6c960195f256de6f57cc9734793d02c14d33dd6f4ee674a59536fb8eb25eee09` |
| 51 | `theorem` | [chromaticNumber_mono_of_embedding](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/chromaticnumber-mono-of-embedding.md) | 336 | `result-track:f99550bd5bbea6f446171b9c49f30521b808a285a2fb4fbed61cbd2611715181` |
| 52 | `lemma` | [card_le_chromaticNumber_iff_forall_surjective](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/card-le-chromaticnumber-iff-forall-surjective.md) | 340 | `result-track:ca0f8973dc4a040cb8695f7be53df78c90740ad5379af87325ec037373aae9d7` |
| 53 | `lemma` | [le_chromaticNumber_iff_forall_surjective](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/le-chromaticnumber-iff-forall-surjective.md) | 357 | `result-track:ef13a8d0a721e25491e610680840d8a017ca6985d2a3cce8a4a8d0aaeb08fb54` |
| 54 | `lemma` | [chromaticNumber_eq_card_iff_forall_surjective](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/chromaticnumber-eq-card-iff-forall-surjective.md) | 361 | `result-track:7e759e49e379e4499046ec6fea8566c28df67bc3c18527fd981931a05fd9812c` |
| 55 | `lemma` | [chromaticNumber_eq_iff_forall_surjective](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/chromaticnumber-eq-iff-forall-surjective.md) | 365 | `result-track:7b1cc18b627eddd46fa706502c4ffa2d7948c54146c77310d62da4a09a4e051b` |
| 56 | `theorem` | [chromaticNumber_bot](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/chromaticnumber-bot.md) | 369 | `result-track:300771870a1d40758faeb1242d53a5034435c36fd579bdc1248ccca0faa32b36` |
| 57 | `theorem` | [chromaticNumber_top](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/chromaticnumber-top.md) | 374 | `result-track:be0e7283b7643d16af76bf9c3d24b2f6cc508ce7246b6ebe5b2a36a18b0228e4` |
| 58 | `theorem` | [chromaticNumber_top_eq_top_of_infinite](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/chromaticnumber-top-eq-top-of-infinite.md) | 383 | `result-track:6c78b01a810ff1eb9c0a709c35f0bd832536eee2e924eadeaa74b2cb93a47537` |
| 59 | `def` | [CompleteBipartiteGraph.bicoloring](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/completebipartitegraph-bicoloring.md) | 392 | `declaration-track:2c3f446d0fe198c8d5d288b497818d204316fd590b1c60b183b39c4474fbd060` |
| 60 | `theorem` | [CompleteBipartiteGraph.chromaticNumber](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/completebipartitegraph-chromaticnumber.md) | 398 | `result-track:32b27409c1c1604ca002fc5ef3f2b92b7b55bf218fa20ddea24a20285457c327` |
| 61 | `theorem` | [IsClique.card_le_of_coloring](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/isclique-card-le-of-coloring.md) | 415 | `result-track:a60fbe6843694f7bee3e7a6c42aa956aca9c17e9ef45ad52bdbf2d41b277aef6` |
| 62 | `theorem` | [IsClique.card_le_of_colorable](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/isclique-card-le-of-colorable.md) | 423 | `result-track:9a6d757b1afbb257afe9766c87099aa41f4f6b4c1db7eaf6b753675b3c9a06e9` |
| 63 | `theorem` | [IsClique.card_le_chromaticNumber](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/isclique-card-le-chromaticnumber.md) | 428 | `result-track:5c15ea8b5c1b573593bb65f3ab06bde0e2c2f44da403a2845272307adab84d68` |
| 64 | `theorem` | [Colorable.cliqueFree](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/colorable-cliquefree.md) | 440 | `result-track:2aabf634cad7dd33a8b376bee04f6b0f46ec7b875bd0fcd4f84fffb5a0f467a1` |
| 65 | `theorem` | [cliqueFree_of_chromaticNumber_lt](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/cliquefree-of-chromaticnumber-lt.md) | 447 | `result-track:cff0caefb088d1b60a929dc1e60c38a02bf3cabaadaaae7fb993d1d3a636a8b8` |
| 66 | `lemma` | [Coloring.surjOn_of_card_le_isClique](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/coloring-surjon-of-card-le-isclique.md) | 461 | `result-track:daba6974799d0bde38dbec4a6b4535d10e8e633858baa7b65aca556a637e8155` |
| 67 | `def` | [coloring](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/coloring-source-edition-2.md) | 473 | `declaration-track:77fc43648bba69d43859f628389d89e9de5f8cfb2305dc9a0e1f3ffbe86924ba` |
| 68 | `lemma` | [colorable](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/colorable-source-edition-2.md) | 475 | `result-track:ea45576d47a3ca0994ec7898f2c15eca6833c269b456d1b838e01d651396499f` |
| 69 | `theorem` | [chromaticNumber](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/chromaticnumber-source-edition-2.md) | 478 | `result-track:f04b470bda3c12be16605f420b2d0aaba32c950a2e115b168c76546d09c23125` |
| 70 | `theorem` | [colorable_of_cliqueFree](../../../../../Combinatorics/GraphTheory/ColoringColorableZeroIff.lean/declarations/colorable-of-cliquefree.md) | 484 | `result-track:a912af03972301bcee523a7dff8dcf252abebf8e86708ff0c146e45c2cf1e0a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=37fdaa5a3a4c858a747f076bd8755218e8a0ad612e50e65a21380f63da057dc8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variantd02dbfce1262f74790506f19a9fb695377130ec552b553e6bff9bf23d21f9b05.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Coloring/Variantd02dbfce1262f74790506f19a9fb695377130ec552b553e6bff9bf23d21f9b05.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
