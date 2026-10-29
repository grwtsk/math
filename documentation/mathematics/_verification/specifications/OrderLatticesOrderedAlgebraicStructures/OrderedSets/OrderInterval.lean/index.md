# Verification target: Order Interval

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f04e1daece09b42f2ea2c1e10e5468c8e7aa001e",
  "lexical_observation_count": 104,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Interval/Variant7fb422ac0aa6cc2bb0f8ac615e757af8c140cc8a0b47887085a8fd8fd7870111.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f04e1daece09b42f2ea2c1e10e5468c8e7aa001e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Interval/Variant7fb422ac0aa6cc2bb0f8ac615e757af8c140cc8a0b47887085a8fd8fd7870111.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Interval/Variant7fb422ac0aa6cc2bb0f8ac615e757af8c140cc8a0b47887085a8fd8fd7870111.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Intervals.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.SetLike.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Prod` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NonemptyInterval](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/nonemptyinterval.md) | 39 | `declaration-track:1de4d248a7b6d34869a327d0f607f1854a1f8f27b3bbee5cc915d8279f97ba77` |
| 2 | `theorem` | [toProd_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/toprod-injective.md) | 50 | `result-track:451172d7117d6b78a535deb586d5b22700034259e827f277a1dfc0f7b563229d` |
| 3 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/ext.md) | 56 | `result-track:2fb27033be03bd0dbd022204f58d1e473689b0d5cd0bcdf5c4d69b4d5c73bb7d` |
| 4 | `theorem` | [ext_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/ext-iff.md) | 61 | `result-track:dd1d1db224edbb13ca3c47306726dc75881bfb87711327938dd10ba972a374c2` |
| 5 | `def` | [toDualProd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/todualprod.md) | 66 | `declaration-track:c44614d7c01ebe89207b1ba24913c2406386536351ee68d1cc1b88a7f64b8459` |
| 6 | `theorem` | [toDualProd_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/todualprod-apply.md) | 71 | `result-track:1629643954c6f8ee88bb69bde1bb0d6c0f789b1089e518b2c73f57c79b1d9b08` |
| 7 | `theorem` | [toDualProd_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/todualprod-injective.md) | 75 | `result-track:c24dd11286b0b1822dd7e41ddd3efad2119203848c8ae3de89a25441337d573c` |
| 8 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/instance-source-edition-12.md) | 79 | `declaration-track:d80b7dd7d8e1c964d325645383a354869520fc68685ccf2f858c94cad6485218` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/instance-source-edition-7.md) | 82 | `declaration-track:94965c90d2ba0ce41ae15552b3c6f79403e689a03c08406a022acff278559e38` |
| 10 | `instance` | [le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/le.md) | 85 | `declaration-track:afcba87e6be411603d3d913f39a7937c84f55877b90a83815d2629c0fe25e3e9` |
| 11 | `theorem` | [le_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/le-def.md) | 88 | `result-track:c7a1efd387cc42c90ae9247d87c4e0d767a3a90c62a494cfd0bbdedd2ac5eeb0` |
| 12 | `def` | [toDualProdHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/todualprodhom.md) | 94 | `declaration-track:baefa64796d222057bb179daa4ac606d8400ddf734a01ccd38f799338344b34b` |
| 13 | `def` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/dual.md) | 101 | `declaration-track:d3a0b3377f3da6d80905b1e262594cbdda2d2a6cc8d9cfa0aed287cd4c266ec3` |
| 14 | `theorem` | [fst_dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/fst-dual.md) | 109 | `result-track:34e1a380e6c47b898d48724da96b41338cb40a3e23dbb41ee8552d3cfe9682cb` |
| 15 | `theorem` | [snd_dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/snd-dual.md) | 114 | `result-track:59c187a0546195cf7f95c6d91229b27443bc3c871276f609609b6b3a30e3ea72` |
| 16 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/instance-source-edition-17.md) | 125 | `declaration-track:ec71f99c37d81cdac8e1bfed47f1f47d53f03b4edd4d6a99de04add73c05b132` |
| 17 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/instance.md) | 128 | `declaration-track:2f0908e18c6034cdce7dd50890a65b251b77fb2f3d2bd01d1f47f6dd114e7151` |
| 18 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/instance-source-edition-13.md) | 131 | `declaration-track:e7d9fe40cf93bd3dd6091c3e0ccdd8fffb270959b570d6f568cd3978926e6732` |
| 19 | `theorem` | [mem_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/mem-mk.md) | 135 | `result-track:8828c764a691c9b84e371e8bad14864f9a3fe1f4a39a2bad85a2d269548140d4` |
| 20 | `theorem` | [mem_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/mem-def.md) | 139 | `result-track:24db8d923fda655bf9cedc1592c6c2ca2bfdaeec38c2201b54febfc1f5adb2f3` |
| 21 | `theorem` | [coe_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/coe-nonempty.md) | 144 | `result-track:35e6e6981cc745dffa2d15790e887f8cd6ab450eafe8844f6e955c4911a7fdda` |
| 22 | `def` | [pure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/pure.md) | 150 | `declaration-track:eeb470da5871bf42cec7df81da9defabbece85050fbf6b655c020ef131069b44` |
| 23 | `theorem` | [mem_pure_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/mem-pure-self.md) | 154 | `result-track:047a241ccb03ced43046a0b34a35a5fb807e9d6cb61efdf2b042fa86abf5ad85` |
| 24 | `theorem` | [pure_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/pure-injective-source-edition-2.md) | 158 | `result-track:fa818df4ed37879ba0c1451e3f96a69549a243f2f6a2b3aee35bc565ea1d4aaa` |
| 25 | `theorem` | [dual_pure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/dual-pure.md) | 163 | `result-track:71226d6f800d4dd6ce4e693603d7f9ee7dcc210499ea574eafa0bacec9514c59` |
| 26 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/instance-source-edition-2.md) | 167 | `declaration-track:2fcfd63a86457473482fffc9d246422bdf24af988a581c7139a0c5033aa051c6` |
| 27 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/instance-source-edition-4.md) | 170 | `declaration-track:5d361d710f7a0c0f85520487f5b910016925d76ec44bf7510d16afe1a56091c6` |
| 28 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/instance-source-edition-19.md) | 173 | `declaration-track:f2da4ae9cd83680d062a7b6d9fd3666722d19e829aadc82fffde0e82c8e29475` |
| 29 | `def` | [map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/map-source-edition-2.md) | 178 | `declaration-track:7999a8ab0da0daef9f87840fe5a1e7a7c84ab97a2986c5de02d1874e910c2727` |
| 30 | `theorem` | [map_pure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/map-pure.md) | 183 | `result-track:405c44573832328850d642916da11f539c1f4d23c629bfcfe1ca770a6fb5e62d` |
| 31 | `theorem` | [map_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/map-map-source-edition-2.md) | 188 | `result-track:fac8c9537db39faec0c22a9d9b5725c03e69ad917536dd610192b948bcc11b53` |
| 32 | `theorem` | [dual_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/dual-map.md) | 194 | `result-track:18f2a964ecc30602e90af97f3f3af66af3670e73d4d49f55480a46fef78c3166` |
| 33 | `def` | [map₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/map.md) | 201 | `declaration-track:3f2174c16915dd5372435fbf4e74f4ff547163f821d59d85df59ce8978aaeacd` |
| 34 | `theorem` | [map₂_pure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/map-pure-source-edition-2.md) | 207 | `result-track:6d3ad128c84f1d497e9fb7af036cf0703f8ee7481f34a3edcba0b589ce2ab003` |
| 35 | `theorem` | [dual_map₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/dual-map-source-edition-3.md) | 213 | `result-track:c0dd4550991da48767a08d6379ecf91dc222038ba17dc5e0ddd45a3dd5d6f2c1` |
| 36 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/instance-source-edition-10.md) | 222 | `declaration-track:baea75d35f8c290c285884d3e8dbf112fae92b6617c6e54043c3f2e2dcfb6b6a` |
| 37 | `theorem` | [dual_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/dual-top.md) | 227 | `result-track:64f93705d1ebe66c48a507b933ef8c2114185cbe78983c5a777d495d7a41498f` |
| 38 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/instance-source-edition-14.md) | 237 | `declaration-track:e92a07a753cf3e8c766ce9da1bb513aa031468325103d4374607d8871e4ee611` |
| 39 | `def` | [coeHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/coehom-source-edition-2.md) | 241 | `declaration-track:7f79f9df7ce377d7078763e65c2ef88e7562bcdf6f80db3974a1614e4c518577` |
| 40 | `instance` | [setLike](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/setlike-source-edition-2.md) | 245 | `declaration-track:f1282bb14f6362929569ccdb1235fa280aea8c9116a3d2bbbae2d8b69434cbb6` |
| 41 | `theorem` | [coe_subset_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/coe-subset-coe-source-edition-2.md) | 250 | `result-track:8e074c09305041bc528f4ae51ca8fd005d0e486bf6176977c09e24abd6263e3c` |
| 42 | `theorem` | [coe_ssubset_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/coe-ssubset-coe.md) | 255 | `result-track:320e58cea5414d379e77e45275b5c823634a902c65020375a3592e64ebc35ac2` |
| 43 | `theorem` | [coe_coeHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/coe-coehom.md) | 260 | `result-track:3f86a86fe113580257f2f6b5c20254198d29065a491da04fde09a1d428044a2a` |
| 44 | `theorem` | [coe_pure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/coe-pure.md) | 265 | `result-track:47ffe0b3f5677aacd688e87486327cb15e0be6e8e7099f84aebfbcffa3b83b7f` |
| 45 | `theorem` | [mem_pure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/mem-pure-source-edition-2.md) | 270 | `result-track:f509a38c8538f244bd9e92232cae968a536a5b25f689353319d994e939d9643c` |
| 46 | `theorem` | [coe_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/coe-top-source-edition-2.md) | 275 | `result-track:e4f063fccf686801b77bb92756ae7087f5153bc9de9f0e91f8949e6a79548230` |
| 47 | `theorem` | [coe_dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/coe-dual.md) | 280 | `result-track:15654a8475100570043690dacb14357bf972b7396331e97d92aece6b93f27dad` |
| 48 | `theorem` | [subset_coe_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/subset-coe-map.md) | 284 | `result-track:bcae203fe745a88339f1fb70a07735b2fc9c59d0625fabf46a3d167e30bbcff6` |
| 49 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/instance-source-edition-9.md) | 294 | `declaration-track:a5883bd0823e0eac21651c23bd026e90742702777776a1b0668aec62a6889a2e` |
| 50 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/instance-source-edition-15.md) | 297 | `declaration-track:e93bacf71674fa94a9d4985bb5f6be1c5f77314b47a8a4a5bd3790a8156e3049` |
| 51 | `theorem` | [fst_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/fst-sup.md) | 301 | `result-track:fdb49f8333db5538062c57c7364f7ca3fc07c3c95ebeee4fe8e2b6c74b5b9e0b` |
| 52 | `theorem` | [snd_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/snd-sup.md) | 306 | `result-track:67fd13711c787e48cc51a8c134ec73d02d2555069017cbba6b365bbea7e69d4e` |
| 53 | `def` | [Interval](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/interval.md) | 320 | `declaration-track:e4dbda0a05474349912c648cfcb9d6495b0d27c413b6faadf87e6525728b2561` |
| 54 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/instance-source-edition-11.md) | 331 | `declaration-track:c8b45e21e7c8803bd7268259f87715c389f1156a2c7bd8a8207bc29917890f31` |
| 55 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/instance-source-edition-6.md) | 332 | `declaration-track:8e01a156cd153d2613a6138abd0836ccdbbc4f9041c99548619c8a33ced14013` |
| 56 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/instance-source-edition-3.md) | 333 | `declaration-track:38ce898c134fc229173ec57d2dfd3ce92e5478c7b08c8d6fe07e258a6cd9cd32` |
| 57 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/instance-source-edition-5.md) | 335 | `declaration-track:6a3490d43ef794ff7f34bd9b4ab20963bd3bfe1a7a182dc476da8145199070e7` |
| 58 | `instance` | [canLift](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/canlift.md) | 338 | `declaration-track:eb7b679da6414a2330ac25e3ba2ef339310b2406cb641311a037696a301c04e9` |
| 59 | `theorem` | [coe_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/coe-injective.md) | 342 | `result-track:0b7f623b8b61d54bba741115b1aaeab667bb9d91c4f037aaefbb3cc26089c76b` |
| 60 | `theorem` | [coe_inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/coe-inj.md) | 347 | `result-track:c80e7007b9cf0dcd17e546fca61b25654b610cc5f9f4b0a98fbae8a730d979ef` |
| 61 | `theorem` | [«forall»](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/forall.md) | 352 | `result-track:0106eee88a8cc4f37f5f14142ead0b7ab4957e113db701d5331de3f6e80c6dbf` |
| 62 | `theorem` | [«exists»](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/exists.md) | 357 | `result-track:1759239a2246c93911209efe24cc7e6ccd6663b028edebcf90d1cc835abc8180` |
| 63 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/instance-source-edition-8.md) | 361 | `declaration-track:9e987ad11bf4fa09209e49d3d2d4ee277e22651614cbeacadd8b9c7f268dcff8` |
| 64 | `def` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/dual-source-edition-2.md) | 365 | `declaration-track:e9ee48397e66a849fee3d6d2b03234e096d2721af54e4a09eab59471e61dd6cb` |
| 65 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/instance-source-edition-18.md) | 375 | `declaration-track:ed6afa29eb495a1257f8f94e72284f21ddf1a05f4e03a5e0495d75d4fd92290d` |
| 66 | `def` | [pure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/pure-source-edition-2.md) | 379 | `declaration-track:f7afd2611f2efbdbf2b994de1402b86176ee77153d817a97013221faf8df2a7c` |
| 67 | `theorem` | [pure_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/pure-injective.md) | 383 | `result-track:f26d2aa427cb0484d0a2b45f8f5d4de971dbeb58ae8082ac1046a338bca90019` |
| 68 | `theorem` | [dual_pure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/dual-pure-source-edition-2.md) | 388 | `result-track:a353541344e0cdb029c0ebb051e15159e2445623bcf421fa160abb74d05e997c` |
| 69 | `theorem` | [dual_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/dual-bot.md) | 393 | `result-track:44b7da6b604ee96dba88d7237c772cabbed048c03f4190e1c79a64be6199f870` |
| 70 | `theorem` | [pure_ne_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/pure-ne-bot.md) | 398 | `result-track:3ed306e510ef4b5968cf0bce2e1fd0636d4ae32e9e2c347ba77162f0ad907a68` |
| 71 | `theorem` | [bot_ne_pure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/bot-ne-pure.md) | 403 | `result-track:48687192d1c1d1236b9c0eb477d5188620754c8594da4f29c2ea603a025af47a` |
| 72 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/instance-source-edition-16.md) | 407 | `declaration-track:ead5946e6c8935ab3e804d138d33ce3f0bf6f29f96efdb420856ef4a33a0b55b` |
| 73 | `def` | [map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/map-source-edition-3.md) | 411 | `declaration-track:96ed3979c1002bf7040635c5f9cdd3e88dece8f2e26fd0007ecc10dca1688d99` |
| 74 | `theorem` | [map_pure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/map-pure-source-edition-3.md) | 416 | `result-track:cb129a2ecb2285a038f6ad4dda601f7883983c719fa0c097ca333c52c97938db` |
| 75 | `theorem` | [map_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/map-map.md) | 421 | `result-track:c0b27d2440656d0dc005ad7190dff2dc73a5231a841de8b342deb5762b264096` |
| 76 | `theorem` | [dual_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/dual-map-source-edition-2.md) | 426 | `result-track:aa34246ed3de22a40775cf29f7adefa6afcb3684da60916933148f7ae973b973` |
| 77 | `instance` | [boundedOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/boundedorder.md) | 434 | `declaration-track:fb9512a0f88f4c1decba3c3319b9b92bf614a447efcdc2af0d9d89a08177b418` |
| 78 | `theorem` | [dual_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/dual-top-source-edition-2.md) | 438 | `result-track:c0b464f2ca2162ff96b3dfb82443e84d0c9d7eae562d67a513c499b8e3a3de53` |
| 79 | `instance` | [partialOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/partialorder.md) | 448 | `declaration-track:1e09d0a628bf867596275463c607ad2c90c16eda389914f2b8a51f54411ea1c1` |
| 80 | `def` | [coeHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/coehom.md) | 452 | `declaration-track:35b5e9e0c832684fdb6c0eeec6ad15372c734f76bdc1c527102c2ac5718dc27a` |
| 81 | `instance` | [setLike](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/setlike.md) | 466 | `declaration-track:49efb7cd851612d29fd14caaaf51bcf09d9d9fbe94de4828034a62611168577f` |
| 82 | `theorem` | [coe_subset_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/coe-subset-coe.md) | 471 | `result-track:5d5dccf835568741c02f5d74f8538cc1773f1d4dfb86e049e4cbb935b6083456` |
| 83 | `theorem` | [coe_sSubset_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/coe-ssubset-coe-source-edition-2.md) | 476 | `result-track:f6d174136e610df40af78d6e9fb49a918f186570bfa6be0f4ce8212e300f6755` |
| 84 | `theorem` | [coe_pure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/coe-pure-source-edition-2.md) | 481 | `result-track:97f9b74b4dbcec656d690cd175da56603f4af069b800d893c0c365babf213bba` |
| 85 | `theorem` | [coe_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/coe-coe.md) | 486 | `result-track:9f7473f31d0692e634a464bbc5a139985892d7f40cf04d31dbe41ecf882dac8a` |
| 86 | `theorem` | [coe_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/coe-bot.md) | 491 | `result-track:7a656bd15db176e321c867bbfaf3a868ce8373d9f156090107d457969988e0e5` |
| 87 | `theorem` | [coe_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/coe-top.md) | 496 | `result-track:e3be9a806d4b13860e965d5fb7af74bc75bcc86676c6a203a7b09316af9f2625` |
| 88 | `theorem` | [coe_dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/coe-dual-source-edition-2.md) | 501 | `result-track:f231fa265e1eb9d03c27194af4d6e048f4ce2da21a9774a1a95a203acbd32a06` |
| 89 | `theorem` | [subset_coe_map](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/subset-coe-map-source-edition-2.md) | 507 | `result-track:c6ef57da3da55b2fa271efc203f72d24d8b5c766e7863ed80c604f50f9e48a15` |
| 90 | `theorem` | [mem_pure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/mem-pure.md) | 513 | `result-track:d1307ce5cced1063e449d575969cd09e93556c9a8b545019adb2b73771d891dc` |
| 91 | `theorem` | [mem_pure_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/mem-pure-self-source-edition-2.md) | 516 | `result-track:f9386d1572221dfba4c4d2f5615681379bfd7f58330df779963a14316731cb49` |
| 92 | `instance` | [semilatticeSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/semilatticesup.md) | 526 | `declaration-track:0d1cbb1ab5a888bda120c72c3ddf02c2fe9760787d867115b9d8d4e06027ac9b` |
| 93 | `instance` | [lattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/lattice.md) | 533 | `declaration-track:47998732cbdaaecaa6a9dc4d294f5ff5a5eb8e7401b4868ef49820b59f5650ff` |
| 94 | `theorem` | [coe_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/coe-inf.md) | 590 | `result-track:cd59548817d72fe2e203ecc586ecba48bc870ca538330726c4b8db56a99ee364` |
| 95 | `theorem` | [disjoint_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/disjoint-coe.md) | 615 | `result-track:2f398371b060de0b22ba79c83dd8590c6e3e35f3536263f73a60f2bc46e2e7fc` |
| 96 | `theorem` | [coe_pure_interval](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/coe-pure-interval.md) | 632 | `result-track:6e552f63c5db65f22670c105bddd1e210b9ca3c7ab198e3b4f2ce4321e77bfa2` |
| 97 | `theorem` | [coe_eq_pure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/coe-eq-pure.md) | 637 | `result-track:8ab571c94ee487d179bbb021cdf63466d2bdfe0c606abb4787daf51577889a4c` |
| 98 | `theorem` | [coe_top_interval](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/coe-top-interval.md) | 642 | `result-track:77ed6c84bd86829f6139445d84db640544c24b797fd61c6df7b38392f54fe69a` |
| 99 | `theorem` | [mem_coe_interval](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/mem-coe-interval.md) | 649 | `result-track:dc430277cab9d14fe4c19ed2f32c4db2a2c11c065ce482db80542e786d456482` |
| 100 | `theorem` | [coe_sup_interval](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/coe-sup-interval.md) | 655 | `result-track:e9858dbd39a86b2598892b32fa17f5f5c7a7e33dd200f2cf0b90b858312e536a` |
| 101 | `instance` | [completeLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/completelattice.md) | 668 | `declaration-track:6610ddd031b60899761fad98c3313eeeca0b4255e9e4a6b0df41b305ad7f05e2` |
| 102 | `theorem` | [coe_sInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/coe-sinf.md) | 753 | `result-track:1829f5aab6dc28c8040a289b8d58b05c573f3b71877eb8336acae872919d69e0` |
| 103 | `theorem` | [coe_iInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/coe-iinf.md) | 773 | `result-track:b6d889d7ce6434484464261880d420895ab7e442ea24db2c8fb58c5eef6a1042` |
| 104 | `theorem` | [coe_iInf₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInterval.lean/declarations/coe-iinf-source-edition-2.md) | 779 | `result-track:cc4cea968556950f187d41a9da7883a5f2afa7e3d484a421dbede52aa1fc88d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73c4e057334bc3cb53f7b7e8ea0e75d069cbbd8e964a101bd8b8954b58bb3bf7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Interval/Variant7fb422ac0aa6cc2bb0f8ac615e757af8c140cc8a0b47887085a8fd8fd7870111.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Interval/Variant7fb422ac0aa6cc2bb0f8ac615e757af8c140cc8a0b47887085a8fd8fd7870111.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
