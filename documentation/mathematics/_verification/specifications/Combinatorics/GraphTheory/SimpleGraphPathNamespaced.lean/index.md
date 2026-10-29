# Verification target: Simple Graph Path Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "550ea2a70d013bce47ef461a3e3ba0fc60361346",
  "lexical_observation_count": 208,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantd052d755c7a94ad9d3a136521f257aea1b73b984fb53f2c7e4ea46757392fce5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `550ea2a70d013bce47ef461a3e3ba0fc60361346`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantd052d755c7a94ad9d3a136521f257aea1b73b984fb53f2c7e4ea46757392fce5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantd052d755c7a94ad9d3a136521f257aea1b73b984fb53f2c7e4ea46757392fce5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Connectivity.WalkDecomp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Walk` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Subgraph` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsTrail](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/istrail-source-edition-2.md) | 86 | `declaration-track:f4026756bcb9a3e6d604a676c71cb441e84c11807f64f1aebc36e4708f3a934c` |
| 2 | `structure` | [IsPath](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/ispath.md) | 91 | `declaration-track:a17094fc10933ffb5113c1495b5217552a74c6142c3eacf95a90ad57acfd9ad4` |
| 3 | `lemma` | [IsPath.isTrail](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/ispath-istrail.md) | 95 | `result-track:074e6ef4481d77afeb5e3b13a1249c18a14cf42a12d5ef7a212c6b9c5cc30017` |
| 4 | `structure` | [IsCircuit](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/iscircuit.md) | 99 | `declaration-track:b2cda9073b5e8e3a90cfb56c731300b3abfb320f9c126f20f9f2bcae6a2b5cd7` |
| 5 | `lemma` | [IsCircuit.isTrail](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/iscircuit-istrail.md) | 103 | `result-track:636c8decc30a0dc8c31615a9860122826472c65228659fbafd19dfa482c59b33` |
| 6 | `structure` | [IsCycle](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/iscycle.md) | 107 | `declaration-track:f1bb8cc315bafb8bcaf80f60b7df011b2b52984cf376492a15c1cd5e82320f62` |
| 7 | `lemma` | [IsCycle.isCircuit](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/iscycle-iscircuit.md) | 111 | `result-track:ebb1f0bf8fe8c534624fa23f973c7997676b8596f87cd7fef86db768ad626fa6` |
| 8 | `theorem` | [isTrail_copy](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/istrail-copy.md) | 114 | `result-track:d5ca0f98b12f623f4051cd149bff2f3a42536d41e788a63bf9b960858941bd76` |
| 9 | `theorem` | [IsPath.mk'](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/ispath-mk.md) | 119 | `result-track:f5db60f9bf8b66239a9e54206bdbaeaa1ed9f3735875afb1cad6afac47420324` |
| 10 | `theorem` | [isPath_def](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/ispath-def.md) | 122 | `result-track:62a50b213ee1ecd46a383d378c3dd17ccd6db51741308b3e9fc78a4cde884643` |
| 11 | `theorem` | [isPath_copy](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/ispath-copy.md) | 126 | `result-track:6ebc59ddc8a2c0127c28ce8da1a991540b24ab74ad9706871692a1b87c4c9625` |
| 12 | `theorem` | [isCircuit_copy](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/iscircuit-copy.md) | 132 | `result-track:8eac3719b554794e3626a46e1ca71b1df91ce274be7cb8d85c0fa045ae4c5b42` |
| 13 | `lemma` | [IsCircuit.not_nil](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/iscircuit-not-nil.md) | 137 | `result-track:57d61b7f11b68ba8279ff0d4794a8df2058814b02d71dac0a621f185c542ffee` |
| 14 | `theorem` | [isCycle_def](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/iscycle-def.md) | 139 | `result-track:5244227cf3e2e4935a506bb10411dcaf878264caa01971e93c1d2e2392473e0d` |
| 15 | `theorem` | [isCycle_copy](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/iscycle-copy.md) | 144 | `result-track:ba2104b3ef0752ba429860a38578f1122d47ddfd897392137f149f671e883efa` |
| 16 | `lemma` | [IsCycle.not_nil](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/iscycle-not-nil.md) | 149 | `result-track:ecff75dc967a352cee8c93881c3b9649e35971524cf518fa2ef0869f9e90f495` |
| 17 | `theorem` | [IsTrail.nil](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/istrail-nil.md) | 152 | `result-track:3ae459ddf78c0c601b8c28410f3232c6f99e3df0d978322d070b5bc391c65fe0` |
| 18 | `theorem` | [IsTrail.of_cons](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/istrail-of-cons.md) | 155 | `result-track:b624d105b920c6b77f3f903c7feb28b4012fb5364a55a9957fb915f39de39180` |
| 19 | `theorem` | [cons_isTrail_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/cons-istrail-iff.md) | 159 | `result-track:b4c759dfe838bd33f1869069dd632a91d4c9e0e4979865ec1e4dcbb10f898d2b` |
| 20 | `theorem` | [IsTrail.reverse](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/istrail-reverse.md) | 162 | `result-track:80c039faf4fce7d03372b45ae18130abbfafbc289ba4b812dcf0603529c8988b` |
| 21 | `theorem` | [reverse_isTrail_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/reverse-istrail-iff.md) | 166 | `result-track:52f99aefebd32414cd43346f281f06c2c14f96daf3880ca9554492e9082602fa` |
| 22 | `theorem` | [IsTrail.of_append_left](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/istrail-of-append-left.md) | 172 | `result-track:9f8b263ebaa6621b96587e28ae901c2ba35ae016140ebe541cfa15b604e041f0` |
| 23 | `theorem` | [IsTrail.of_append_right](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/istrail-of-append-right.md) | 177 | `result-track:1a9022c00826ea8fa95c0a38037d6055253d7f6061fd2e5d039f0570cfbc9889` |
| 24 | `theorem` | [IsTrail.count_edges_le_one](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/istrail-count-edges-le-one.md) | 182 | `result-track:b738709183f5d668261c43bbc22220122b1a2c2cd3f61fee30f0c2d9f2a1d49d` |
| 25 | `theorem` | [IsTrail.count_edges_eq_one](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/istrail-count-edges-eq-one.md) | 186 | `result-track:43a9c1b6a32896e486a042ca2bb4a0b4fabd0dde40710592ed734eadd9c7cfdb` |
| 26 | `theorem` | [IsTrail.length_le_card_edgeFinset](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/istrail-length-le-card-edgefinset.md) | 190 | `result-track:895fed5c89da64cf6766d817e9ee0d69bb228e9c6986953a216faa1de5412878` |
| 27 | `theorem` | [IsPath.nil](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/ispath-nil.md) | 203 | `result-track:861312ccf16edcf778b20f620d59dcf6fc8364313d862d457aebc114ab2ab56e` |
| 28 | `theorem` | [IsPath.of_cons](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/ispath-of-cons.md) | 205 | `result-track:4cf3861fdd3b9a3e56d3070ba427c578be792bce8dc46271d7743295a36a021c` |
| 29 | `theorem` | [cons_isPath_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/cons-ispath-iff.md) | 209 | `result-track:e1cba7e2c67d67ed3753a302f8bec994625e1768f86a1b53bad646a76d28c7d7` |
| 30 | `lemma` | [IsPath.cons](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/ispath-cons.md) | 213 | `result-track:36bba52bb474683b030a98d1fe186145622db23430f3f3a2c01f2a8d9a7588d8` |
| 31 | `theorem` | [isPath_iff_eq_nil](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/ispath-iff-eq-nil.md) | 218 | `result-track:206c2695bf3d3310fb23c5ffb0244e36b4eb4709ad8a94eb79bad01a97bd6a32` |
| 32 | `theorem` | [IsPath.reverse](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/ispath-reverse.md) | 221 | `result-track:895ebcc4459f9e26178f6bfde9e358641bead668abe8a85275dfca048e760e42` |
| 33 | `theorem` | [isPath_reverse_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/ispath-reverse-iff.md) | 225 | `result-track:0f7dd272549fd6a353795072f48892ea380d37c1d4a6747e9e6b8ca55031a0d1` |
| 34 | `theorem` | [IsPath.of_append_left](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/ispath-of-append-left.md) | 228 | `result-track:686b8b46e74cb7e55d2cdae652a31408bcfb356a63a944c6a034ca33015406ba` |
| 35 | `theorem` | [IsPath.of_append_right](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/ispath-of-append-right.md) | 233 | `result-track:3ef3a6f5028da2cd92a1e5b24969e199b8bae308c2c9f18f417ef1f74f5cf72f` |
| 36 | `lemma` | [IsPath.of_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/ispath-of-adj.md) | 239 | `result-track:daf061806f00abadd653d99bde160af8a92532756e7e415a4c9be3cbb1fbec87` |
| 37 | `theorem` | [IsCycle.not_of_nil](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/iscycle-not-of-nil.md) | 243 | `result-track:a2fa041a532d025ef366bc7833bedfcafd40716b5eb58b70698f8dc62c59b1e8` |
| 38 | `lemma` | [IsCycle.ne_bot](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/iscycle-ne-bot.md) | 245 | `result-track:0f950b9e24809e5dd9ea54031136e0a90f0f799bf9eac97a268d0dd04ee03b8b` |
| 39 | `lemma` | [IsCycle.three_le_length](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/iscycle-three-le-length.md) | 249 | `result-track:a4d694eee8c1832a25f8379e56d3ea6008ea1786b5362bf85b8c09267eb63f0e` |
| 40 | `lemma` | [not_nil_of_isCycle_cons](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/not-nil-of-iscycle-cons.md) | 257 | `result-track:da5929205f2152d9e677e180e33b14700a16b30da4108de78143b08e7cbf8447` |
| 41 | `theorem` | [cons_isCycle_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/cons-iscycle-iff.md) | 263 | `result-track:b6d0d0c280b4faf84dd61bb53766cbd131c5b798ad8f625b351c54e7a860ca22` |
| 42 | `lemma` | [IsCycle.reverse](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/iscycle-reverse.md) | 270 | `result-track:74091c37ffc0443ac394cbc686c61476d12d21a0f78ba7d00f78009304964d33` |
| 43 | `lemma` | [isCycle_reverse](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/iscycle-reverse-source-edition-2.md) | 275 | `result-track:cc4725f90f223f38c2c7db9ce90feedc69f4d98f313f49a674aca12c27cc0e49` |
| 44 | `lemma` | [IsCycle.isPath_of_append_right](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/iscycle-ispath-of-append-right.md) | 279 | `result-track:da9c4e484be9b26318c9f3b9e828fdd9ebe437e77c00286360cae31349482c86` |
| 45 | `lemma` | [IsCycle.isPath_of_append_left](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/iscycle-ispath-of-append-left.md) | 286 | `result-track:9e2834e4ac76d1fe03c49c5faa58ccdc7f3be805dfdb8cc460853db7bbc9667f` |
| 46 | `lemma` | [IsPath.tail](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/ispath-tail.md) | 290 | `result-track:40bcb1a6c5c91e4e4d1df36d3f3a21aebf617a5a538af353f90e2e8c9fbb7df6` |
| 47 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/instance.md) | 298 | `declaration-track:1a03c75873323c52869d3f3c0d68e6dc65fec75181da1b94a2ca2f886e74523d` |
| 48 | `theorem` | [IsPath.length_lt](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/ispath-length-lt.md) | 302 | `result-track:dcaef368176718bba575f54e92d68ddf14909fbf2893891e1256aec42169b0cf` |
| 49 | `lemma` | [IsPath.getVert_injOn](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/ispath-getvert-injon.md) | 307 | `result-track:392a0e029a0329a8f8c2ab891ac025256064b766a1ed5a2613fabce36f9ece15` |
| 50 | `lemma` | [IsPath.getVert_eq_start_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/ispath-getvert-eq-start-iff.md) | 327 | `result-track:d138f13cdb48e1291108a81ea4b78bfbf71e1d5b13185588a89ff786b192b8bd` |
| 51 | `lemma` | [IsPath.getVert_eq_end_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/ispath-getvert-eq-end-iff.md) | 336 | `result-track:cae4cd1a2d4e7f0ffcb322f18caefdd175b4976773244ddef78a1f8a09b2b8fd` |
| 52 | `lemma` | [IsPath.getVert_injOn_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/ispath-getvert-injon-iff.md) | 344 | `result-track:cdc56c1416bf78fc643a36352d6d39fa755021864c32deee0e9bc303e76f96a5` |
| 53 | `lemma` | [IsCycle.getVert_injOn](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/iscycle-getvert-injon.md) | 368 | `result-track:2492be026f22061ab8f05e500a5680bea838ca8bb4e6661aec039c8000ffae04` |
| 54 | `lemma` | [IsCycle.getVert_injOn'](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/iscycle-getvert-injon-source-edition-2.md) | 380 | `result-track:5436635eb53b22812d5cb0b3675acb5eaf7acd87d559033357701bfb8678e479` |
| 55 | `lemma` | [IsCycle.snd_ne_penultimate](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/iscycle-snd-ne-penultimate.md) | 392 | `result-track:24ceb54cc8e514a730f57ce64959bf273cca21896d87d9838afb48a0ff7ae193` |
| 56 | `lemma` | [IsCycle.getVert_endpoint_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/iscycle-getvert-endpoint-iff.md) | 398 | `result-track:55212e55ef4fd60c6e6c51479644e35df8915413b0aeaf0ec9ec9cd0bb10de34` |
| 57 | `lemma` | [IsCycle.getVert_sub_one_ne_getVert_add_one](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/iscycle-getvert-sub-one-ne-getvert-add-one.md) | 406 | `result-track:5bbf2f2cbd508cc78711ca84246ca1b45414776e4cc410834c8bc700324604bc` |
| 58 | `theorem` | [IsTrail.takeUntil](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/istrail-takeuntil.md) | 428 | `result-track:687f396e660c54f9a7e53a937ac42a0bf4f693dd659db0ba5eddbd80de165e73` |
| 59 | `theorem` | [IsTrail.dropUntil](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/istrail-dropuntil.md) | 432 | `result-track:9a69ac8991bd7314163200ee74abdde4583815fd8da3f0b9a8de8b7cdc6fae13` |
| 60 | `theorem` | [IsPath.takeUntil](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/ispath-takeuntil.md) | 437 | `result-track:909244c0f1aaf4d2660bfd8a43137b5d76661d20221d16e9d53bc0f8a890a10f` |
| 61 | `theorem` | [IsPath.dropUntil](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/ispath-dropuntil.md) | 441 | `result-track:335c77c72f7404a9599c9bc02630c445c26ae6ab032e12910c518a693d3e1913` |
| 62 | `theorem` | [IsTrail.rotate](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/istrail-rotate.md) | 446 | `result-track:5f3f91becd955109b432cdb674124ca210f00e4db1f169fbda3b5cb42ffdbde5` |
| 63 | `theorem` | [IsCircuit.rotate](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/iscircuit-rotate.md) | 451 | `result-track:1348c5ae86ff3169f8c529abbd1498b3ff0aa7b57fb1cc2cc419e31f6062eefc` |
| 64 | `theorem` | [IsCycle.rotate](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/iscycle-rotate.md) | 461 | `result-track:af56c0fa91a76c06d4a76a82fa4eeced1bf311b393f6028c10c2e58acf02ad67` |
| 65 | `lemma` | [IsCycle.isPath_takeUntil](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/iscycle-ispath-takeuntil.md) | 467 | `result-track:c90c237dabbdef775d06d185798ed945a2393ad27f7d5cbd1ad92753553c5ec1` |
| 66 | `lemma` | [endpoint_notMem_support_takeUntil](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/endpoint-notmem-support-takeuntil.md) | 476 | `result-track:68c6b8e4c25604b7c5e831fffc772e4b468670e2c3b091a6b323d4887ad95c55` |
| 67 | `abbrev` | [Path](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/path.md) | 497 | `declaration-track:56c2822b1c1c92eb008919778c53d5ec501ffdb002a9c60d0a9efb0837cbfa99` |
| 68 | `theorem` | [isPath](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/ispath-source-edition-2.md) | 504 | `result-track:b2cf18029ad083ad602bde3d27f849888f0d481a8b6f754c4590cf5a9b5c3a50` |
| 69 | `theorem` | [isTrail](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/istrail.md) | 507 | `result-track:182752381609311e3507b655f2ecb24a1d2464c4e75f7d3f81b98b3d49729f52` |
| 70 | `def` | [nil](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/nil.md) | 512 | `declaration-track:53b21200a00342987777ffa6b908a50b75d10e9a8bb1f7d8a03f01ef7778eccf` |
| 71 | `def` | [singleton](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/singleton.md) | 517 | `declaration-track:eb6f751d728b43796c590ff4f6dba5a8ef832866117ed8b44abd4d4879022cf9` |
| 72 | `theorem` | [mk'_mem_edges_singleton](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/mk-mem-edges-singleton.md) | 520 | `result-track:d0edbaa1fdeade0ccd672d640c429dd7367eae1cd092038d10479a28aaf5a931` |
| 73 | `def` | [reverse](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/reverse.md) | 525 | `declaration-track:8ab2c6e558f0402e4489b46eed5c494684509a79add3011d6eb52294e5430a22` |
| 74 | `theorem` | [count_support_eq_one](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/count-support-eq-one.md) | 528 | `result-track:1bbe22b68a5fa9c5dee67ce340457eff68aec06838937f29102067b568c77291` |
| 75 | `theorem` | [count_edges_eq_one](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/count-edges-eq-one.md) | 532 | `result-track:7b3fa46273ce7546f22d6fae44fd5108626637c31de808ccf714e81effd27015` |
| 76 | `theorem` | [nodup_support](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/nodup-support.md) | 537 | `result-track:352c020a1c17c8cf3f46cf03fda3b08e9d54ce50cc73081188555c1d69a1ee91` |
| 77 | `theorem` | [loop_eq](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/loop-eq.md) | 540 | `result-track:b164c0ffea3b6d99020cef7a9441fdf7d1088b4923785eff2ea80896223b397a` |
| 78 | `theorem` | [notMem_edges_of_loop](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/notmem-edges-of-loop.md) | 545 | `result-track:58f56a01d656abead42342cd08ed381c6efface37b1e4a8ed2987beab8d87e36` |
| 79 | `theorem` | [cons_isCycle](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/cons-iscycle.md) | 550 | `result-track:cebbc6340943981ac87fd95bbe667f98fd361286363dfef3f9685b9cd77e1256` |
| 80 | `def` | [bypass](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/bypass.md) | 566 | `declaration-track:f598542ad64993c636f4862330d644bedd486826e943aed495d83cb7820d6b53` |
| 81 | `theorem` | [bypass_copy](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/bypass-copy.md) | 576 | `result-track:48fa0888d8a5196fd74ab974af92f321519879b9b03016c76292fe9104d77911` |
| 82 | `theorem` | [bypass_isPath](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/bypass-ispath.md) | 581 | `result-track:106018eed313853451453f299028bbc0e5a5a71a71d7ea5f8b34b21755ddd0e5` |
| 83 | `theorem` | [length_bypass_le](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/length-bypass-le.md) | 590 | `result-track:df8df3dc81d8053f1d5aae4642da9556df8def08d22d2ac286ba6ca6f5ab6be7` |
| 84 | `lemma` | [bypass_eq_self_of_length_le](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/bypass-eq-self-of-length-le.md) | 603 | `result-track:cffbd7b3f4176989b1e3d70a4edf9b282f5bf0be591c83d414dc312d6bc87c6d` |
| 85 | `def` | [toPath](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/topath.md) | 622 | `declaration-track:854649cf30a0c5d0cddaeb17258b1b85081bc585fa73f0a5874463a1634841a8` |
| 86 | `theorem` | [support_bypass_subset](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/support-bypass-subset.md) | 625 | `result-track:590a2a446296dc6aa96ae0ae08d0795907e4af7717a6449bde62ca574f485d56` |
| 87 | `theorem` | [support_toPath_subset](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/support-topath-subset.md) | 638 | `result-track:44f444d23b1b014f434d8b5a9034701db01aee15b81740fa3713386809cca5be` |
| 88 | `theorem` | [darts_bypass_subset](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/darts-bypass-subset.md) | 642 | `result-track:668011ff8882c525d2a2c2a5ddde01911b60e663ed2996640c769255e41a783e` |
| 89 | `theorem` | [edges_bypass_subset](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/edges-bypass-subset.md) | 653 | `result-track:730233d1a3d962c6a3f7fb56d652c21f4957d951ed2cc7ce1d41973e355a0712` |
| 90 | `theorem` | [darts_toPath_subset](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/darts-topath-subset.md) | 656 | `result-track:4d6b68d888cb5b6c2e753b1bff53e74a9479614f514eaa9721fcc616cb28e604` |
| 91 | `theorem` | [edges_toPath_subset](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/edges-topath-subset.md) | 659 | `result-track:e8f32265696973e4d7cc9c8998a85492cbfecf7977072cd5cf7af8b08d175fac` |
| 92 | `theorem` | [map_isPath_of_injective](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/map-ispath-of-injective.md) | 672 | `result-track:1abb5aa6a7f14d0fc38f833196a6d175df42bec40e3eb7a5d671dc0894a088d1` |
| 93 | `theorem` | [IsPath.of_map](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/ispath-of-map.md) | 684 | `result-track:204c7616dc99b1f3e7a527279fcd1b722e74b352d0b477bd89a45974c8f34412` |
| 94 | `theorem` | [map_isPath_iff_of_injective](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/map-ispath-iff-of-injective.md) | 695 | `result-track:c13f667217b0ac9e7c76d55ae286f76551386812fe581fc303c1cbefcb56ce84` |
| 95 | `theorem` | [map_isTrail_iff_of_injective](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/map-istrail-iff-of-injective.md) | 698 | `result-track:0d2cb9f64a29906f5dd255ab07dbac13ab2a9565caf5b0af9ce9c1bc4ab93b5d` |
| 96 | `theorem` | [map_isCycle_iff_of_injective](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/map-iscycle-iff-of-injective.md) | 709 | `result-track:ff034339c087ab7bfe020304bff43d3861e2926802c29d2ee62017f1c33724c6` |
| 97 | `theorem` | [mapLe_isTrail](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/maple-istrail.md) | 717 | `result-track:4f5833281cc3135b386fe51c106410945f4a959943d4929ef2ea00b864a9394c` |
| 98 | `theorem` | [mapLe_isPath](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/maple-ispath.md) | 724 | `result-track:59f4954d180bbb6da2d4f7d17f59aaa2e25edc53ac33d8588924c5444e691492` |
| 99 | `theorem` | [mapLe_isCycle](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/maple-iscycle.md) | 731 | `result-track:676f154bb3cd0263769973571d2d74355d133303b66dd382316752690caa2fba` |
| 100 | `def` | [map](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/map-source-edition-2.md) | 745 | `declaration-track:fca0c253db2afe2e8ad96e22121f2b021745390afb1023d1b6bbb8313432f483` |
| 101 | `theorem` | [map_injective](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/map-injective.md) | 749 | `result-track:e3fd9c59176ea7b8a62a16e918d168f6c6642b29e3d63d1a15b53b9e0f5e4b2e` |
| 102 | `def` | [mapEmbedding](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/mapembedding.md) | 757 | `declaration-track:9c1733a1887e163d0b21dc589aba9b3a3d150f69b375e59ce53cf7a997181419` |
| 103 | `theorem` | [mapEmbedding_injective](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/mapembedding-injective.md) | 760 | `result-track:602e7cda67f7cfc304a7ffb8699ae28c7e80feb586d74d0577279e0f262b689d` |
| 104 | `theorem` | [IsPath.transfer](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/ispath-transfer.md) | 773 | `result-track:56f3e8e4be5fa7e7346062f94bd8f7e476b02da9926d0e048e26cf2879a06d2c` |
| 105 | `theorem` | [IsCycle.transfer](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/iscycle-transfer.md) | 781 | `result-track:b7a2414da49f2c6cdfd92ea44577f363add16fc1c65547af6489066f473f8ffe` |
| 106 | `theorem` | [IsPath.toDeleteEdges](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/ispath-todeleteedges.md) | 798 | `result-track:a42b5153be467565a81878e4e4dc7da5bf7f7e2f00dd5fee9ebbb1a7a86fd091` |
| 107 | `theorem` | [IsCycle.toDeleteEdges](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/iscycle-todeleteedges.md) | 802 | `result-track:8441e468e340f4777c3b5aa61bcba4418e16123f54a5d857771e018df19a0e5d` |
| 108 | `theorem` | [toDeleteEdges_copy](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/todeleteedges-copy.md) | 807 | `result-track:32b1fc0da00cbe01f0551dea2646dc86d5d1a1807617aa429dd32dcf773e204a` |
| 109 | `def` | [Reachable](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/reachable.md) | 821 | `declaration-track:227e5d4ef7e2ae841b316c0b64b911df52147394b6bc53e56f1425659792c2e5` |
| 110 | `theorem` | [reachable_iff_nonempty_univ](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/reachable-iff-nonempty-univ.md) | 825 | `result-track:8911ecfc5a63664f49e04600377f101e30238987f48597b10c1dd505f86f07b1` |
| 111 | `lemma` | [not_reachable_iff_isEmpty_walk](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/not-reachable-iff-isempty-walk.md) | 829 | `result-track:97f7cda68eee733a023b5af72a2211ff612bcb5e3cc67d47df9967c55d5dc16a` |
| 112 | `theorem` | [Reachable.elim](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/reachable-elim.md) | 832 | `result-track:625b0eb24f442c11384efc73d82ac118df5b61323712ba42e65f7f1b62bcedf2` |
| 113 | `theorem` | [Reachable.elim_path](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/reachable-elim-path.md) | 836 | `result-track:6797d75ae81403d7586e318bc230bde4ce65fc3d11d64c4931717f357ca5e2a3` |
| 114 | `theorem` | [Walk.reachable](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/walk-reachable.md) | 839 | `result-track:0d8850336f76f44e062c9a608fe837992db66e3fdb9c4dae1f291a42d0fed0c9` |
| 115 | `theorem` | [Adj.reachable](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/adj-reachable.md) | 842 | `result-track:7e9b6437c76078d20d5e5ea7dc0455dbdf6e483affd75a073abda9ff2d290862` |
| 116 | `theorem` | [Reachable.refl](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/reachable-refl.md) | 846 | `result-track:22b19da2a5432191bdb12cf7c535f46a029530bc459d5745ad9b390545ce1295` |
| 117 | `theorem` | [Reachable.rfl](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/reachable-rfl.md) | 848 | `result-track:7d2db700489288e1f0cdf4cff394b11ce7af06f0eef0bb4eed60c0d3cc6d7024` |
| 118 | `theorem` | [Reachable.symm](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/reachable-symm.md) | 851 | `result-track:1e98e357cef84d299cc102e40bf54cb74135484c4bcc25c9a35030a67251cf84` |
| 119 | `theorem` | [reachable_comm](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/reachable-comm.md) | 854 | `result-track:06849b4f061c7eaa4e9d24e66e8db524d80173615e0938a3d18f6abca0ab1f1e` |
| 120 | `theorem` | [Reachable.trans](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/reachable-trans.md) | 858 | `result-track:15fd50c34a4059e45eddca73cb5de907869f506ccfa3c83eda7fc04c0d83d95e` |
| 121 | `theorem` | [reachable_iff_reflTransGen](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/reachable-iff-refltransgen.md) | 862 | `result-track:66d0d2e9e35bd2afd32c0995c655e0909348d82b169516626380791879d3e21c` |
| 122 | `theorem` | [Reachable.map](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/reachable-map.md) | 874 | `result-track:e543f8302eeeb1762600c0c1f8259c871c69c007d95a06ebbd74b3614eefff2c` |
| 123 | `lemma` | [Reachable.mono](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/reachable-mono.md) | 879 | `result-track:dab7384523b85647669ed02f6f91d5c17055991798cbac070416ebc450a39786` |
| 124 | `theorem` | [Reachable.exists_isPath](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/reachable-exists-ispath.md) | 882 | `result-track:1c3c38c9e39adfd31e10d1a351166478337496272d483de1514f722c2ec4414b` |
| 125 | `theorem` | [Iso.reachable_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/iso-reachable-iff.md) | 887 | `result-track:a68fdf326c6dede8ce8d46db3673fb48d8c52e1bf22941299b078dbc6341b857` |
| 126 | `theorem` | [Iso.symm_apply_reachable](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/iso-symm-apply-reachable.md) | 891 | `result-track:bf5a711ac0b799229886fff75397bab315bbd0e8a63a7d3687afed5265c59a4e` |
| 127 | `lemma` | [Reachable.mem_subgraphVerts](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/reachable-mem-subgraphverts.md) | 895 | `result-track:015d62e6fe50797ac0f12c7d26db5e5d58db7dd83ba730854b245082a73d05db` |
| 128 | `theorem` | [reachable_is_equivalence](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/reachable-is-equivalence.md) | 912 | `result-track:e728a58ca9fcd5b2c64b84b13af3bd89a81080cec14f2fddd8f510b64ce3f078` |
| 129 | `lemma` | [reachable_bot](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/reachable-bot.md) | 917 | `result-track:49794f3b2324d9cdf287738260446bc5623a6ab134b0c104c637ce8e508c7777` |
| 130 | `def` | [reachableSetoid](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/reachablesetoid.md) | 921 | `declaration-track:88c55a3ac94028ff6f69df476c9fbe042bb14c6c8de044dfa25c1a1ba6f3aa29` |
| 131 | `def` | [Preconnected](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/preconnected.md) | 924 | `declaration-track:a5653020a0dd1b6064926d045273a1b524e2704e07803a528fe49d30c6ac88d1` |
| 132 | `theorem` | [Preconnected.map](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/preconnected-map.md) | 926 | `result-track:16394b06eb2ae8a32ab01b9ed9797d9f5bf01e17317e6b2184a38b0bf8514d55` |
| 133 | `lemma` | [Preconnected.mono](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/preconnected-mono.md) | 931 | `result-track:c3252d6b617108d92d576a30e4851aaae6559e85dd321472ba39a0998b8a3b5f` |
| 134 | `lemma` | [bot_preconnected_iff_subsingleton](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/bot-preconnected-iff-subsingleton.md) | 934 | `result-track:b5a6be6e8f94cf31c3907eac41963048bbe763a43cc9a9f5e7748586b510c209` |
| 135 | `lemma` | [bot_preconnected](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/bot-preconnected.md) | 939 | `result-track:6bcec8b7f34df3043d57ff4241a073b5ee15599389e804f478e37f560e1a9b54` |
| 136 | `lemma` | [bot_not_preconnected](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/bot-not-preconnected.md) | 942 | `result-track:9d884594954cf3f02302bd8cb0dd6155e96fbdaa34cd0db60d27a2051b98888f` |
| 137 | `lemma` | [top_preconnected](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/top-preconnected.md) | 945 | `result-track:603036e652edec92eae12b5f7ffc32b7a5cdff2613da1fc4a62eb58b37e55f55` |
| 138 | `theorem` | [Iso.preconnected_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/iso-preconnected-iff.md) | 948 | `result-track:236e6633b607beca8fd6eb57891f993ccfdf726ca2c12543786dc63aa3324353` |
| 139 | `lemma` | [Preconnected.support_eq_univ](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/preconnected-support-eq-univ.md) | 953 | `result-track:c25356d23f8d7e21e71db74fa8808924c3ed8a49b0950cdc6ad7ad6e235a31f3` |
| 140 | `lemma` | [adj_of_mem_walk_support](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/adj-of-mem-walk-support.md) | 963 | `result-track:e64c349aa30994184393a9b18c42e1dc0f97aaa23f6fa371da64b5890f4dba6c` |
| 141 | `lemma` | [mem_support_of_mem_walk_support](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/mem-support-of-mem-walk-support.md) | 986 | `result-track:ea50c1e993487e0010b674c0b34da073fd477ce5d87bfcdf8e34610fd2b835f8` |
| 142 | `lemma` | [mem_support_of_reachable](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/mem-support-of-reachable.md) | 991 | `result-track:175103d69df0014ba2f124707e0c4aca6d0e80a566209c20c73617c4142f1a14` |
| 143 | `theorem` | [Preconnected.exists_isPath](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/preconnected-exists-ispath.md) | 997 | `result-track:7ea886bf5fef86e0af6f3d46048b384419abd263504beba28dbfe513f489e4ab` |
| 144 | `structure` | [Connected](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/connected.md) | 1007 | `declaration-track:ec2b63a523eea82fc00572bdffc0239543be7d49c164ecfc0ca8904aa15d1f4a` |
| 145 | `lemma` | [connected_iff_exists_forall_reachable](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/connected-iff-exists-forall-reachable.md) | 1011 | `result-track:31b5cff15baebdf61341851e44974ed825214cd59f0511192ba0dc4f088259f5` |
| 146 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/instance-source-edition-2.md) | 1019 | `declaration-track:4615838e789e5784589fc42bd7b6a67a6d949c0f605f1c323177fdf1880e6cd5` |
| 147 | `theorem` | [Connected.map](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/connected-map.md) | 1021 | `result-track:356c1a55af90e0dc6b8f91576b0b0d94da33f06e29aac953d76fc4580b6f0052` |
| 148 | `lemma` | [Connected.mono](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/connected-mono.md) | 1027 | `result-track:9fe7d59b1acc58e148de91aa2639da13bf61a6a1dcb2b6cf6944fd729d27c458` |
| 149 | `theorem` | [Connected.exists_isPath](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/connected-exists-ispath.md) | 1032 | `result-track:343f521d8f5986b4673ce02dca1950833ec88fc143a14e2ce65a1389c0c85f82` |
| 150 | `lemma` | [bot_not_connected](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/bot-not-connected.md) | 1036 | `result-track:5c6dcb40ff9b4c35823dcdc04502339da614905da036bfba924f50cff84f4a7b` |
| 151 | `lemma` | [top_connected](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/top-connected.md) | 1039 | `result-track:9b93e29f9fcfd775e8bb56e48db236083eac1aa048b202a0d467353fb80cedf2` |
| 152 | `theorem` | [Iso.connected_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/iso-connected-iff.md) | 1042 | `result-track:d5de16a2af2ba754c789e51d222fca6cdeeb8abc415f6562fa8a13606b408455` |
| 153 | `def` | [ConnectedComponent](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/connectedcomponent.md) | 1048 | `declaration-track:191b4073b9abc3ae15d15746dcfeb2211b8d4d4708161c410f07905e6b97179a` |
| 154 | `def` | [connectedComponentMk](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/connectedcomponentmk.md) | 1051 | `declaration-track:e074c1fe8ed65e247fa3678378711d78a45cfa873586577326a9bc068964c604` |
| 155 | `instance` | [inhabited](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/inhabited.md) | 1058 | `declaration-track:ea052faa095734668383e33c30a3b197ff1b69c91309ce809afe987e58247952` |
| 156 | `instance` | [isEmpty](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/isempty.md) | 1061 | `declaration-track:8fb8e52afaa279c47b141d54a57fa6e47f2e3023f40b7c9dfb907257777ae8aa` |
| 157 | `theorem` | [ind](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/ind-source-edition-2.md) | 1068 | `result-track:c984419091ccf1d1cfb31969dde03b5698eddb90b09e7299f363582dce910a75` |
| 158 | `theorem` | [ind₂](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/ind.md) | 1073 | `result-track:61694f1eda114b11b6ba7f501c43ed9987b6676319413b4d5de2a9738f2e9257` |
| 159 | `theorem` | [sound](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/sound.md) | 1078 | `result-track:02c15489c9024b33e20644c45405cd45fd77beae8499283808cb14cbd98e020c` |
| 160 | `theorem` | [exact](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/exact.md) | 1082 | `result-track:00081824f6c265765335447b40b6d61f62f75c7e5aacbb47bbdc19a701c72813` |
| 161 | `theorem` | [eq](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/eq.md) | 1087 | `result-track:fda4ac0a3a534ec01108e62f67c46b2d01c1aa184a0bfb083bf2256761ebf175` |
| 162 | `theorem` | [connectedComponentMk_eq_of_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/connectedcomponentmk-eq-of-adj.md) | 1091 | `result-track:1f3f5dd08e92c6d10261c7e71bf41cbea029b363b6586a24c3d907d97ad22891` |
| 163 | `def` | [lift](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/lift.md) | 1097 | `declaration-track:f6d8959070cc6ee0134d5880c77fdd9442169e191608d7f928bf50493f053034` |
| 164 | `theorem` | [lift_mk](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/lift-mk.md) | 1102 | `result-track:0eb723b469f00f7dc97f8489cbbd9f4584df990aebe3e05f6ed72436668a4724` |
| 165 | `theorem` | [«exists»](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/exists.md) | 1107 | `result-track:34933f9edccc132a148a7473c164b6a5bf6eaabe0c0e2bc60c2da073cd9c9409` |
| 166 | `theorem` | [«forall»](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/forall.md) | 1111 | `result-track:d9eed2a6c9e75b56a8fdc4f4012774403695767401042c20c218ce16c8f04784` |
| 167 | `theorem` | [Simple Graph Path Namespaced](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-graphtheory-istrail-vari.md) | 1115 | `result-track:341bd60811de3237f0e45ed58a8af2d7daa0b25875677e25eb94c0633ce05071` |
| 168 | `def` | [recOn](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/recon.md) | 1123 | `declaration-track:bf548dfa14ae9e41b800eb771d75ffa96cad74b3c704f762cefa1d5634cff3e0` |
| 169 | `def` | [map](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/map.md) | 1133 | `declaration-track:42723e2d0c9eea7bf75c5f257194344d5b95db418e411f0758357cc1c9b6d6a9` |
| 170 | `theorem` | [map_mk](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/map-mk.md) | 1138 | `result-track:850414bb889ca9acbb3e308a2c43d36f1e2f49c4f5a9d53023b0a0f63445d73d` |
| 171 | `theorem` | [map_id](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/map-id.md) | 1143 | `result-track:02d28696490d637514b1921bb7b96d0cc276ec0c261768fc8be5c9f77e2b5a2b` |
| 172 | `theorem` | [map_comp](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/map-comp.md) | 1148 | `result-track:a0923b49fdf2c5c59564e38c16858e6526184a7363bdc574103173fd8853346b` |
| 173 | `theorem` | [iso_image_comp_eq_map_iff_eq_comp](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/iso-image-comp-eq-map-iff-eq-comp.md) | 1156 | `result-track:f748f02f4e827843d9075ffff970818bdcb17d368336c906fefe22fa9aa3f699` |
| 174 | `theorem` | [iso_inv_image_comp_eq_iff_eq_map](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/iso-inv-image-comp-eq-iff-eq-map.md) | 1163 | `result-track:e917104c93d908ed4c7214c4d08a97bb519e51caf407b1a93c152db9a01d4698` |
| 175 | `def` | [connectedComponentEquiv](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/connectedcomponentequiv.md) | 1175 | `declaration-track:91f0d83bc9dd09f4f627958d02ca853dba5f0ad027b051f06065703f128f77d4` |
| 176 | `theorem` | [connectedComponentEquiv_refl](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/connectedcomponentequiv-refl.md) | 1184 | `result-track:68ec055cdb629186dee01ea66b9053d8d75bc18479ec31b81492142248661069` |
| 177 | `theorem` | [connectedComponentEquiv_symm](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/connectedcomponentequiv-symm.md) | 1190 | `result-track:ad6fcb7ec751cd839a08f3b2195c6f191f1ef3aadf602d4179f53796ce60382a` |
| 178 | `theorem` | [connectedComponentEquiv_trans](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/connectedcomponentequiv-trans.md) | 1196 | `result-track:67e8f392537b93176b4f18d1467bcf461ef3c74fc1f696d9787681afb8432e81` |
| 179 | `def` | [supp](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/supp.md) | 1207 | `declaration-track:f5bb6c9ecedebdc6a1a5e0b015d262c187ea2dac54553e13faeb6ea8e4572b93` |
| 180 | `theorem` | [supp_injective](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/supp-injective.md) | 1211 | `result-track:d80d02b95101850ceb8764f0654d25fe165f72d82582daaad1dc61cd9c377fd9` |
| 181 | `theorem` | [supp_inj](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/supp-inj.md) | 1220 | `result-track:aeb054114f6a3adae119d4ed6a28225a83cddde7c5cf7a8585255913372ce6c7` |
| 182 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/instance-source-edition-3.md) | 1223 | `declaration-track:5d15d6ac4e2e83d22110d4ace00cc3dce5f4677428336757bb50f541006f507c` |
| 183 | `theorem` | [mem_supp_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/mem-supp-iff.md) | 1228 | `result-track:009148c5abf35d02b43f092a42e297b58d598f0a051d29569a9113697d156637` |
| 184 | `lemma` | [mem_supp_congr_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/mem-supp-congr-adj.md) | 1232 | `result-track:14b63b2cf173bc5748415dd6caa288da6559f3b309b190e62d95251ca1a22c6a` |
| 185 | `lemma` | [adj_spanningCoe_induce_supp](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/adj-spanningcoe-induce-supp.md) | 1239 | `result-track:c9b179264ed5f96bc89247fc9df95289a0aa8f009ed0ba7a13dcc9e2f610113b` |
| 186 | `theorem` | [connectedComponentMk_mem](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/connectedcomponentmk-mem.md) | 1248 | `result-track:d6c3e779f9d1548734e8d582f02397ddc3f762fb737ec6541775ba38af8dba47` |
| 187 | `theorem` | [nonempty_supp](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/nonempty-supp.md) | 1251 | `result-track:b2f241d26b0b7719409ebc673a9f64b2dd29bb4a8151fab99740aa591f88712d` |
| 188 | `def` | [isoEquivSupp](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/isoequivsupp.md) | 1256 | `declaration-track:a4e6c51a5a3dce909da543a1ac2d9037270aa419107e8d61e738b1181fad8e07` |
| 189 | `lemma` | [mem_coe_supp_of_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/mem-coe-supp-of-adj.md) | 1263 | `result-track:23f71f7a1a0cf4be2d53cd7604f8b9ad3698181d0b423d71d0d36e8e4affc7d9` |
| 190 | `lemma` | [eq_of_common_vertex](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/eq-of-common-vertex.md) | 1271 | `result-track:af6270102f44ac429203bc8037d6f3bbefb94bbce1cf23e49c3476ac9b030cfc` |
| 191 | `lemma` | [connectedComponentMk_supp_subset_supp](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/connectedcomponentmk-supp-subset-supp.md) | 1277 | `result-track:283806f3e945ef1c625b4523aa69fcb79ac5a69301e21cf4f253567b7cdcddc7` |
| 192 | `lemma` | [biUnion_supp_eq_supp](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/biunion-supp-eq-supp.md) | 1284 | `result-track:e1af67bb2062a10eeccb636bdfe357ec017b4d80991d90a1ec930ca78b3ce33f` |
| 193 | `lemma` | [top_supp_eq_univ](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/top-supp-eq-univ.md) | 1294 | `result-track:dbfd7feed001a9b33a5be2eac0382151d0b8d3f323299bf007cd9d68594a85db` |
| 194 | `lemma` | [reachable_induce_supp](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/reachable-induce-supp.md) | 1302 | `result-track:226eee3246431e3e906dd4ff28bc5b85ed0272942f4034c7697f2944a36acebd` |
| 195 | `lemma` | [connected_induce_supp](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/connected-induce-supp.md) | 1312 | `result-track:46804402f9d4f664353f8bb3156ed4319b6a73dbaaf2b9fc24db3fbfefc52c4d` |
| 196 | `lemma` | [pairwise_disjoint_supp_connectedComponent](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/pairwise-disjoint-supp-connectedcomponent.md) | 1325 | `result-track:5e073f70a278f872ceea9061905d2df721311083752fb1ddfb273098efb86b45` |
| 197 | `lemma` | [iUnion_connectedComponentSupp](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/iunion-connectedcomponentsupp.md) | 1334 | `result-track:10e5e095c375d67776bb3eca6b29d229ea1ac1450fdad37900f82338ce4ab616` |
| 198 | `theorem` | [Preconnected.set_univ_walk_nonempty](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/preconnected-set-univ-walk-nonempty.md) | 1340 | `result-track:a2fd3e80fb28658209813476151fa07976c641098598f225f404e660db1d4371` |
| 199 | `theorem` | [Connected.set_univ_walk_nonempty](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/connected-set-univ-walk-nonempty.md) | 1345 | `result-track:76c050ee1cf3795a1e9e0ba4ee0c79809302e7c68152c3ccfe2619d979f2e846` |
| 200 | `def` | [IsBridge](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/isbridge.md) | 1355 | `declaration-track:18fd32bf1a69437dc1c646550f99a6f6841f3d62bbe214906fd1b0f784627b86` |
| 201 | `theorem` | [isBridge_iff](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/isbridge-iff.md) | 1359 | `result-track:9cba65775c0a3d0f6c330f9782d18fec3450be0d993833d19b77864672900aa2` |
| 202 | `theorem` | [reachable_delete_edges_iff_exists_walk](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/reachable-delete-edges-iff-exists-walk.md) | 1362 | `result-track:82d43223f9561a246d30df9129e324005ed7680ecf7e50727261c01848967ce9` |
| 203 | `theorem` | [isBridge_iff_adj_and_forall_walk_mem_edges](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/isbridge-iff-adj-and-forall-walk-mem-edges.md) | 1376 | `result-track:0ce915aae55a02b78ecc081bd8ef4635abe158234c213a08578b1760611def01` |
| 204 | `theorem` | [reachable_deleteEdges_iff_exists_cycle.aux](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/reachable-deleteedges-iff-exists-cycle-aux.md) | 1381 | `result-track:3a1adce650bfd74c0baf47f48acfbdb3d1e2f05860ba084397e83a659c0ade73` |
| 205 | `theorem` | [adj_and_reachable_delete_edges_iff_exists_cycle](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/adj-and-reachable-delete-edges-iff-exists-cycle.md) | 1407 | `result-track:0dfdd15ff37ba14ebac1fff2ddd232c94074da6afe8485980bf7b7f61d898811` |
| 206 | `theorem` | [isBridge_iff_adj_and_forall_cycle_notMem](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/isbridge-iff-adj-and-forall-cycle-notmem.md) | 1431 | `result-track:9a50a4812e3e99f3f9092f8dacc4cf4544327a4024f360c092fcfcf05ba93c33` |
| 207 | `theorem` | [isBridge_iff_mem_and_forall_cycle_notMem](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/isbridge-iff-mem-and-forall-cycle-notmem.md) | 1443 | `result-track:bd9d4221a27ed727f92afd95205cd55574b64e0c5a3892c0757b8314d4b44295` |
| 208 | `lemma` | [Connected.connected_delete_edge_of_not_isBridge](../../../../../Combinatorics/GraphTheory/SimpleGraphPathNamespaced.lean/declarations/connected-connected-delete-edge-of-not-isbridge.md) | 1451 | `result-track:2792be4fadcdab8f2ca6104370d508e7a80e1d6c87381b270cffbddecfa12e05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4682f7e3cfa92c4b037f9e600e3265d2324f4134723dcc16ce51af19e0e41fed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantd052d755c7a94ad9d3a136521f257aea1b73b984fb53f2c7e4ea46757392fce5.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variantd052d755c7a94ad9d3a136521f257aea1b73b984fb53f2c7e4ea46757392fce5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
