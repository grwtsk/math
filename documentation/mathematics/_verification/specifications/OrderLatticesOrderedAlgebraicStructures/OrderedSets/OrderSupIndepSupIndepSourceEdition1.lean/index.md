# Verification target: Order Sup Indep Sup Indep Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2ccc134437fcca8b4feaf484e6937a68e85d041",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupIndep/Variant6cdb5a8515b032fd8785402b7a7dbb431bfde8d3a895054b6b0fa52b1f467f38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2ccc134437fcca8b4feaf484e6937a68e85d041`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupIndep/Variant6cdb5a8515b032fd8785402b7a7dbb431bfde8d3a895054b6b0fa52b1f467f38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupIndep/Variant6cdb5a8515b032fd8785402b7a7dbb431bfde8d3a895054b6b0fa52b1f467f38.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Lattice.Union` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Pairwise` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sigma` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompleteLatticeIntervals` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SupIndep](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/supindep.md) | 57 | `declaration-track:47e6083ab54fd88425af409768aec74f25c3162ed3126860863162bc53dc2df6` |
| 2 | `theorem` | [supIndep_iff_disjoint_erase](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/supindep-iff-disjoint-erase.md) | 63 | `result-track:a111c7fdd1bdd743eceade8c709a5b0e6f6cd8f47e6fdb0e59f95e7349c4d6ff` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/instance.md) | 79 | `declaration-track:4fe9855dbcdd5608d2c46b065e5755b9a54cd0b04505549e36c32f5bf2d97071` |
| 4 | `theorem` | [SupIndep.subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/supindep-subset.md) | 84 | `result-track:66274a87ade5f0969d4804f044e6dee532832831c3e2cfdcb4ac9281a9e75f79` |
| 5 | `theorem` | [supIndep_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/supindep-empty.md) | 88 | `result-track:bb53d00736583c1c4eb0ecf34febe3aaa60344e46b9b7dfdf7e804c7fd5aa7a2` |
| 6 | `theorem` | [supIndep_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/supindep-singleton.md) | 92 | `result-track:5d9c1601afeb87f090de917e13740c2772f6a802b2509186ddff53c302d488b2` |
| 7 | `theorem` | [SupIndep.pairwiseDisjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/supindep-pairwisedisjoint.md) | 97 | `result-track:39cd7c065f129307c45b2418f0187b06c47e222495a0ff0cd0b9374317c5f520` |
| 8 | `theorem` | [SupIndep.le_sup_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/supindep-le-sup-iff.md) | 103 | `result-track:f7750f2b1cef72f04c20a87cd2741e9a2c893b05e9e09b6cd3bd8c5f7f7468b9` |
| 9 | `theorem` | [SupIndep.antitone_fun](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/supindep-antitone-fun.md) | 109 | `result-track:39a79e69304fe4753f708a738dce0f02895b5e2916be303ce44585e5e7250939` |
| 10 | `theorem` | [SupIndep.image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/supindep-image.md) | 116 | `result-track:29c4c4bc9f5327c01c5e090b06f1d8408538edbc3bc68302e9a9972f4baa9641` |
| 11 | `theorem` | [supIndep_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/supindep-map.md) | 124 | `result-track:6fe0737e0b207598095630b39fd465395badc91d12930089e3b234f847b75439` |
| 12 | `theorem` | [supIndep_pair](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/supindep-pair.md) | 133 | `result-track:9317b7a6326f77bbd9d2aa579f60f37ff0450ca6d0bea27c0e46bc92786625ca` |
| 13 | `theorem` | [supIndep_univ_bool](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/supindep-univ-bool.md) | 140 | `result-track:7d3683581adef811db429d1f11bb8ce39ceb5f49f380db54e8494531d1eb3ce1` |
| 14 | `theorem` | [supIndep_univ_fin_two](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/supindep-univ-fin-two.md) | 146 | `result-track:17c211c85a95cc755b7e2af8a578cf703df922774f652bb7e3de156c68a70bd6` |
| 15 | `theorem` | [supIndep_attach](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/supindep-attach.md) | 152 | `result-track:939fd614ac92c75aabe9ee4fca3042c0dd40005ebb471c11f5cb845bc9e05728` |
| 16 | `theorem` | [supIndep_iff_pairwiseDisjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/supindep-iff-pairwisedisjoint.md) | 163 | `result-track:e8d1ec644cd1e31cfc34ab71301d9747573c38a79a0d049e46c2fba5696989f6` |
| 17 | `theorem` | [SupIndep.sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/supindep-sup.md) | 170 | `result-track:b908377144dcc4ded7fe483702b97f59e7d1ea4d5fa9b21c799a96e0eaaf41bb` |
| 18 | `theorem` | [SupIndep.biUnion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/supindep-biunion.md) | 178 | `result-track:938b282a8e974810461fe71ec72b325b03dbb9af5d8d92befbe72c166896fe1e` |
| 19 | `theorem` | [SupIndep.sigma](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/supindep-sigma.md) | 185 | `result-track:719bcc7a2fe1d176a864f27469e2e4b5368c2e3f398da609c8afc7fcdc7f3d0a` |
| 20 | `theorem` | [SupIndep.product](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/supindep-product.md) | 200 | `result-track:36c17a48cd0af59b31bbfc933859e01eaf2033008b559d0b6ab6d61484ab72f5` |
| 21 | `theorem` | [supIndep_product_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/supindep-product-iff.md) | 217 | `result-track:d4e6b478cad830c10e80c9d19504039953f4d9f85af556a52e710be722cd2627` |
| 22 | `def` | [sSupIndep](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/ssupindep.md) | 241 | `declaration-track:96221e7b958fc6ab090de8b9edb24ade17e381739e714989ffbb92d84483de23` |
| 23 | `theorem` | [sSupIndep_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/ssupindep-empty.md) | 249 | `result-track:28a035b34d86979818241102a4df5bc463bb6a4b5084bbb3ca2c2bf4b0b8e1d8` |
| 24 | `theorem` | [sSupIndep.mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/ssupindep-mono.md) | 255 | `result-track:e0c364c5a24ea7b306e454928a6eb79b77a962baebec8bc9d005587654639d1f` |
| 25 | `theorem` | [sSupIndep.pairwiseDisjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/ssupindep-pairwisedisjoint.md) | 262 | `result-track:5b179de2a43b67bd67c2dc2c56ddf27ab360b950538ca06128f6074bdc1d98a8` |
| 26 | `theorem` | [sSupIndep_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/ssupindep-singleton.md) | 268 | `result-track:1ae5a4188dcd15e3efcbec67586d78a83db1b0275c96816d51713164a101b8b5` |
| 27 | `theorem` | [sSupIndep_pair](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/ssupindep-pair.md) | 274 | `result-track:9eb0d6d1cdc23a9c6629a45c5af517ce6e00078e2795e3409e517d683c052e9a` |
| 28 | `theorem` | [sSupIndep.disjoint_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/ssupindep-disjoint-ssup.md) | 290 | `result-track:5e7e352f201caefe05124375c88ea8ce343c88e55e05788b09cce893894c51fc` |
| 29 | `def` | [iSupIndep](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/isupindep.md) | 308 | `declaration-track:ae3679b60b2aa4ff81fcc96428a1dde519aabea999ad7c2153658bf3e1503525` |
| 30 | `theorem` | [sSupIndep_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/ssupindep-iff.md) | 313 | `result-track:1227d42d2cd524788740731d19b0059ea0477745a6b61efdd3fa2b3f974ec627` |
| 31 | `theorem` | [iSupIndep_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/isupindep-def-source-edition-2.md) | 323 | `result-track:3040e92beaed59ec79b5ac087e53a601e335b4bcf9ed7deb55a685ef359edadf` |
| 32 | `theorem` | [iSupIndep_def'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/isupindep-def.md) | 328 | `result-track:10e2944b84b0839ffc6ed056694eba14f0ef7616e138cf37773094cc289cbf76` |
| 33 | `theorem` | [iSupIndep_def''](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/isupindep-def-source-edition-3.md) | 334 | `result-track:d71fa79ad4a63484b570ad9376839497ec3fc13248304342f5d9ecd53678b152` |
| 34 | `theorem` | [iSupIndep_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/isupindep-empty.md) | 342 | `result-track:9755c06035a35bd380ace690dae9e6b7b4d9689eb8e369d93d61d26fa371fa51` |
| 35 | `theorem` | [iSupIndep_pempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/isupindep-pempty.md) | 348 | `result-track:29dbb3dc198fa101a4efd73e2633a03c5a4b018b45b240e6a581e22d0d0fb3ad` |
| 36 | `theorem` | [iSupIndep.pairwiseDisjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/isupindep-pairwisedisjoint.md) | 355 | `result-track:dfce56b220e114d6006141c928bbbd12660ec496d7621c8bd2e59a327efb60d4` |
| 37 | `theorem` | [iSupIndep.mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/isupindep-mono.md) | 361 | `result-track:a890d0d95c19815a28ec5e82820ec0869c45a3b86bc77b55f2e01da55661276f` |
| 38 | `theorem` | [iSupIndep.comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/isupindep-comp-source-edition-2.md) | 368 | `result-track:908135e247bbc70c6e41c39c7a38e4b1cb4ccaa6d860a76dbbf2529b00bbb5af` |
| 39 | `theorem` | [iSupIndep.comp'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/isupindep-comp.md) | 376 | `result-track:84214f28d3eff9f12161e8ade262292877bfc000612a1263901e071e25999a0c` |
| 40 | `theorem` | [iSupIndep.sSupIndep_range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/isupindep-ssupindep-range.md) | 385 | `result-track:9f642aa8a001953714ebb64253280425303306227d2f2b510673b889f868c5be` |
| 41 | `theorem` | [iSupIndep_ne_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/isupindep-ne-bot.md) | 394 | `result-track:b3a745d2537237f408097dab4c7029a003e6d1e827ad7abc4625eaca86be5899` |
| 42 | `theorem` | [iSupIndep.injOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/isupindep-injon.md) | 411 | `result-track:12438c058ecffa11b6c89ac30f52d64796f382b238de5cd21d8b1afd4157b2f9` |
| 43 | `theorem` | [iSupIndep.injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/isupindep-injective.md) | 424 | `result-track:99488aa0c82d3e45ab4c8497830053ad12f86eeabe930343f411c3820f579405` |
| 44 | `theorem` | [iSupIndep_pair](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/isupindep-pair.md) | 431 | `result-track:7b72d1ed037f7f8867ed050e73b3d888257fc941992357e05e4e29cd33f6e03e` |
| 45 | `theorem` | [iSupIndep.map_orderIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/isupindep-map-orderiso.md) | 446 | `result-track:e29fdab7ec9c70a16d4ed90aed59c2cba91bdfa4ee3ad5cca3f79022308e6616` |
| 46 | `theorem` | [iSupIndep_map_orderIso_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/isupindep-map-orderiso-iff.md) | 454 | `result-track:f1e14c804a204ec26878b634b52ae29e34b19e30388429f4bb193cf0e81ba09b` |
| 47 | `theorem` | [iSupIndep.disjoint_biSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/isupindep-disjoint-bisup.md) | 466 | `result-track:b64f7999d93944fbf0ffc1917dbf8f717b79991321c244de62d8fb0cd5be9f3d` |
| 48 | `lemma` | [iSupIndep.of_coe_Iic_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/isupindep-of-coe-iic-comp.md) | 473 | `result-track:6d242908b30df7a7f571054e77f583a46bb38f4d6e642441351c977e9852588e` |
| 49 | `theorem` | [iSupIndep_iff_supIndep](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/isupindep-iff-supindep.md) | 483 | `result-track:ba17c1193b6ace36e836af86148551edf1772cd617bf3483f72bbfa51899108b` |
| 50 | `theorem` | [iSupIndep.supIndep'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/isupindep-supindep.md) | 499 | `result-track:214b6fbf181c7f7b47c539d69d4593c2c28076a2f747ac8a66c02b802c7be0f2` |
| 51 | `theorem` | [iSupIndep_iff_supIndep_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/isupindep-iff-supindep-univ.md) | 506 | `result-track:834fccce8173f2f39a5e4f09db430030887e4e92585bf9204575fae3a4aa6446` |
| 52 | `theorem` | [sSupIndep_iff_pairwiseDisjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/ssupindep-iff-pairwisedisjoint.md) | 521 | `result-track:708ca1bb2f0292f14f6928db9bc673ef411690bfca1b26af9b606ec67198a7af` |
| 53 | `theorem` | [iSupIndep_iff_pairwiseDisjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderSupIndepSupIndepSourceEdition1.lean/declarations/isupindep-iff-pairwisedisjoint.md) | 531 | `result-track:3a847190e6f172b76dedad6c65bb6f78bc397a5b737703e5e15639dac6d2c73a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1901d147ea68d47bddf85ed30a6f267ca9dc3062d6a4f07a1f4fc709af166af3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupIndep/Variant6cdb5a8515b032fd8785402b7a7dbb431bfde8d3a895054b6b0fa52b1f467f38.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SupIndep/Variant6cdb5a8515b032fd8785402b7a7dbb431bfde8d3a895054b6b0fa52b1f467f38.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
