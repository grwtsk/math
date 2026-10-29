# Verification target: Upper Lower Closure Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b744a5315566cab6b44bc530b82c31e8c42d63b",
  "lexical_observation_count": 90,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Closure/Variantee0be403b8af4698355477b32139167bcd3437593f534ec4db103716094e4132.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b744a5315566cab6b44bc530b82c31e8c42d63b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Closure/Variantee0be403b8af4698355477b32139167bcd3437593f534ec4db103716094e4132.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Closure/Variantee0be403b8af4698355477b32139167bcd3437593f534ec4db103716094e4132.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Set.OrdConnected` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Minimal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.UpperLower.Principal` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [upperClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/upperclosure.md) | 39 | `declaration-track:2ccbf6484853690a7a616902e6a4d6771c0f4ca01eb8d66239796e01b9337465` |
| 2 | `def` | [lowerClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/lowerclosure.md) | 43 | `declaration-track:eac372debea2755c6432c9592dd6adeecca8b09bbe5d452a6b1cd99a1cf7bc19` |
| 3 | `theorem` | [mem_upperClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/mem-upperclosure.md) | 49 | `result-track:c14b5845a4a2cfc8dc00d908be837a166490a6d1eaf8cbf2b93bf7e59200c3b3` |
| 4 | `theorem` | [mem_lowerClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/mem-lowerclosure.md) | 53 | `result-track:d143b52bf29f736950a166e6ef2d665889428980c032af81d2fccce58b8f28c8` |
| 5 | `theorem` | [coe_upperClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/coe-upperclosure.md) | 58 | `result-track:2ee2aa34c755fbbb5611d24a7f4fe1c392da130ba9f4a2e7082b92d5ef71699e` |
| 6 | `theorem` | [coe_lowerClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/coe-lowerclosure.md) | 63 | `result-track:48ff85dbb323397e9d550eb4011e27c096821f0069b456a21c0c136b196bae79` |
| 7 | `instance` | [instDecidablePredMemUpperClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/instdecidablepredmemupperclosure.md) | 67 | `declaration-track:530a9670085b3c8723d31cf91487eb4548a78ec7f84175e778dbe3e86d937b4c` |
| 8 | `instance` | [instDecidablePredMemLowerClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/instdecidablepredmemlowerclosure.md) | 70 | `declaration-track:9e14eb6a24a0379cc8bddfce860dff3d4269bf5ad25e766e22e89485025cbe8f` |
| 9 | `theorem` | [subset_upperClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/subset-upperclosure.md) | 73 | `result-track:4f1d20feecd1ec48f4834f2226efa3b566ee9c72cd8ee263189806150f9aef85` |
| 10 | `theorem` | [subset_lowerClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/subset-lowerclosure.md) | 75 | `result-track:06328c759e9500e98b0ff31cf7e6860948254aa0e1e201ae3057257a7a95ec45` |
| 11 | `theorem` | [upperClosure_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/upperclosure-min.md) | 77 | `result-track:46a0e8f32e73da65c8e9a8ddb05acb7fd3f068e46a15df7e66a7bea10bfcc493` |
| 12 | `theorem` | [lowerClosure_min](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/lowerclosure-min.md) | 80 | `result-track:13e1e4f3c8d06250a5dd4beaa9f61779ef8b559cf2a83a1088da64d3a24bdd17` |
| 13 | `theorem` | [IsUpperSet.upperClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/isupperset-upperclosure.md) | 83 | `result-track:9ebc087c325bd124cd1d8d153c024d849a8a6b985a832e1a260cc7e5c017a12e` |
| 14 | `theorem` | [IsLowerSet.lowerClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/islowerset-lowerclosure.md) | 86 | `result-track:8b6ac47d32f28fb3ae2e54123414caa323364f94579d9a281b9d0488a354999c` |
| 15 | `theorem` | [UpperSet.upperClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/upperset-upperclosure.md) | 90 | `result-track:510e2f26451c134c381d4b75f4a000d55504d6d0b980131f3f42dbcdf7e31403` |
| 16 | `theorem` | [LowerSet.lowerClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/lowerset-lowerclosure.md) | 94 | `result-track:4eb3ccbd2b89f20b9b479119e34658d08ca4d6f824b5079e4035c5e4c6d215ba` |
| 17 | `theorem` | [upperClosure_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/upperclosure-image.md) | 98 | `result-track:515455b5d2fdbb5b5756aa4238d783bbe38a27e3cf518cdd2512cc2e09e08396` |
| 18 | `theorem` | [lowerClosure_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/lowerclosure-image.md) | 105 | `result-track:133a47348442117fc52e169d83df0298fc45461c1527bf345052d93a22be6a25` |
| 19 | `theorem` | [UpperSet.iInf_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/upperset-iinf-ici.md) | 112 | `result-track:68b5ec86bdbd60d55fb57c5ab4e3f41f44716516df4327a271615f0502069aad` |
| 20 | `theorem` | [LowerSet.iSup_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/lowerset-isup-iic.md) | 117 | `result-track:ea14b477d35039836dfa7d7ca0431f2e1445e9475d25275e59ec58c0960da62f` |
| 21 | `lemma` | [lowerClosure_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/lowerclosure-le.md) | 121 | `result-track:a5a2e328d3be261f40d8d178e47d3bfd6f72d3bd7c5445e4c64939e1478914d5` |
| 22 | `lemma` | [le_upperClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/le-upperclosure.md) | 125 | `result-track:8ab912c496a4c73daa01942e23b22cecc60dd867883a61421a9216f8045fa71f` |
| 23 | `theorem` | [gc_upperClosure_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/gc-upperclosure-coe.md) | 129 | `result-track:1dd85e5f073da71ddc8d4dd5e865f7f5990c7eef22790933920b279f292095f2` |
| 24 | `theorem` | [gc_lowerClosure_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/gc-lowerclosure-coe.md) | 133 | `result-track:4efc2f10e54c14332ee0911a2ebff1de2d5ea2f80a13dbf2bcf8756e5c7bbf8c` |
| 25 | `def` | [giUpperClosureCoe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/giupperclosurecoe.md) | 137 | `declaration-track:44b58a525fba9afcf46828b9ffa6c82b41c0a6c26c0a40a3ba26d2b554d4aa69` |
| 26 | `def` | [giLowerClosureCoe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/gilowerclosurecoe.md) | 145 | `declaration-track:909a2a77ab78b4d2a65a4f1383f8e9785b5365537da23749df8c71f3b303f7d5` |
| 27 | `theorem` | [upperClosure_anti](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/upperclosure-anti.md) | 151 | `result-track:51537db11d782f3e492cffafc2d5af289261c99663de95ec59a6a850efed5550` |
| 28 | `theorem` | [lowerClosure_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/lowerclosure-mono.md) | 154 | `result-track:33fad2ff6a3924019fa544fb5f29e41eace609f7f42c398d2e57ccbf74f030ca` |
| 29 | `theorem` | [upperClosure_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/upperclosure-empty.md) | 158 | `result-track:0078018407f65554efb1667c10a0b37ea3180f249ae11700af870ca35f5380f2` |
| 30 | `theorem` | [lowerClosure_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/lowerclosure-empty.md) | 162 | `result-track:50bc9a9465ee042b54efbd8965f53d710ae34f9833c2503e2ac8ca9d5830ed36` |
| 31 | `theorem` | [upperClosure_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/upperclosure-singleton.md) | 166 | `result-track:d3045e521de95fb0f5f9d335ee2feb5050b2ea38d63f16a9720e00de95c4522d` |
| 32 | `theorem` | [lowerClosure_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/lowerclosure-singleton.md) | 171 | `result-track:8de10b0eda5fb6ef359a16cad638d04292b1d16f931838f01efd2b8333520fa1` |
| 33 | `theorem` | [upperClosure_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/upperclosure-univ.md) | 176 | `result-track:3b7ba6af794c0e0f2ddb43462a42fa0c9451fd1bc8432e853fd49c7afa23220e` |
| 34 | `theorem` | [lowerClosure_univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/lowerclosure-univ.md) | 180 | `result-track:24389db132f627c75acee9592701c142e7f9d4e6dc68dabfcc871b85dea6ac6e` |
| 35 | `theorem` | [upperClosure_eq_top_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/upperclosure-eq-top-iff.md) | 184 | `result-track:39f16d688404ebb0f12d86c374d7e70dc15fc816ea77485a640faf621ed09167` |
| 36 | `theorem` | [lowerClosure_eq_bot_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/lowerclosure-eq-bot-iff.md) | 188 | `result-track:543f7efe1790272a6d3f1ae4f21be53959124aa028a4431cd54969080ac8d41a` |
| 37 | `theorem` | [upperClosure_union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/upperclosure-union.md) | 192 | `result-track:3548913bd246045448ac8f658b2995e64eb724f4827337c9741d16012e42b8fa` |
| 38 | `theorem` | [lowerClosure_union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/lowerclosure-union.md) | 196 | `result-track:a5fbc57102cdb0df5a43efc4e89fe3aadb77511a5eac7914f8eebc955da425a6` |
| 39 | `theorem` | [upperClosure_iUnion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/upperclosure-iunion.md) | 200 | `result-track:03573157e0546d64cec81c709f85c79c5b41884fd55154f239233d658e0327ab` |
| 40 | `theorem` | [lowerClosure_iUnion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/lowerclosure-iunion.md) | 204 | `result-track:499425349fdaaa9451122d43fdcf050f3e180c5dce978a3d201d095181bb3ca0` |
| 41 | `theorem` | [upperClosure_sUnion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/upperclosure-sunion.md) | 208 | `result-track:0fb43735319eda7167e009acf44d53cf2ad53113f25856810644c2c7382d3ed6` |
| 42 | `theorem` | [lowerClosure_sUnion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/lowerclosure-sunion.md) | 212 | `result-track:f9f84d2469bcd302372d785e68c87d3c9c0d48f0f7fe43ebd776494fe19128d0` |
| 43 | `theorem` | [Set.OrdConnected.upperClosure_inter_lowerClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/set-ordconnected-upperclosure-inter-lowerclosure.md) | 215 | `result-track:4ecf2919b3ce5b4bb234701d75f82fe5c23541a2a8246672b8566852d3311b34` |
| 44 | `theorem` | [ordConnected_iff_upperClosure_inter_lowerClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/ordconnected-iff-upperclosure-inter-lowerclosure.md) | 220 | `result-track:21957f646e2319c1621556c855940bf098031908b022637e62bb4f55ce14d642` |
| 45 | `theorem` | [upperBounds_lowerClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/upperbounds-lowerclosure.md) | 227 | `result-track:761046166cdd5a6ee360ccbf9b83afc5d2e2f12fcd44f1eeb1d6fa52d755d704` |
| 46 | `theorem` | [lowerBounds_upperClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/lowerbounds-upperclosure.md) | 232 | `result-track:45bf45a3b171b6c19874ff55e86f6fdaf8f10385c22f273f69d0a208a8f7e965` |
| 47 | `theorem` | [bddAbove_lowerClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/bddabove-lowerclosure.md) | 237 | `result-track:32fc3bfcdd2bcc7f90b70d8182e13654f92807fa7b7e7e4198d69f7da1eacd63` |
| 48 | `theorem` | [bddBelow_upperClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/bddbelow-upperclosure.md) | 241 | `result-track:38bacb59f39da09f4854ca09e61bb8d3d3c3f0b4a21f279e4bf699837d2cd8a8` |
| 49 | `lemma` | [IsLowerSet.disjoint_upperClosure_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/islowerset-disjoint-upperclosure-left.md) | 248 | `result-track:a4366119110141628bff9f406571fb4e0cb65b0dacd33e42d909a507bb23ba75` |
| 50 | `lemma` | [IsLowerSet.disjoint_upperClosure_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/islowerset-disjoint-upperclosure-right.md) | 254 | `result-track:21d01a783830db8f485b2da2ab1b58e596d73f5d3f20e5c3ac23798b513af793` |
| 51 | `lemma` | [IsUpperSet.disjoint_lowerClosure_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/isupperset-disjoint-lowerclosure-left.md) | 258 | `result-track:b4f588be09fc53782c64ec4dd92b3d9452abfc62fa7f7514411b0ed32ad71c80` |
| 52 | `lemma` | [IsUpperSet.disjoint_lowerClosure_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/isupperset-disjoint-lowerclosure-right.md) | 261 | `result-track:855cd51ec1a6f70bcebd2c6deff073bb4f194b82569b9f87c9e1f1e8fb97e6f3` |
| 53 | `lemma` | [upperClosure_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/upperclosure-eq.md) | 264 | `result-track:379bceaa8a3eca0bf388616c8b30bbe2f028a92cb4c71b2dfcfb78cc03f39727` |
| 54 | `lemma` | [lowerClosure_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/lowerclosure-eq.md) | 268 | `result-track:700777525113f46465715400ec7110d043a3d5638e3020d9dba47b2baac7dcd2` |
| 55 | `lemma` | [IsAntichain.minimal_mem_upperClosure_iff_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/isantichain-minimal-mem-upperclosure-iff-mem.md) | 277 | `result-track:4a9a067a3f9ba25dca05ec061a3dfb73ba656a616b7e96383d3bd5c7c5b23d55` |
| 56 | `lemma` | [IsAntichain.maximal_mem_lowerClosure_iff_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/isantichain-maximal-mem-lowerclosure-iff-mem.md) | 285 | `result-track:fadc177496ebadcbe93b5cc82725ac483d0267b703b109832b1b73a3e361bd1a` |
| 57 | `def` | [sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/sdiff.md) | 297 | `declaration-track:1bba544cdcd71bd0b0243094cfcea059d8c6335e45345dc8c747b48c7ef72e12` |
| 58 | `def` | [erase](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/erase.md) | 302 | `declaration-track:126588fdf51ba2935ceedf859c5ccc84f53b1aa2e9e057480d64355544da2c16` |
| 59 | `lemma` | [coe_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/coe-sdiff.md) | 307 | `result-track:afb358a8f0003086305bad9e95e753cdd30da1281dfcf391fda6be489b2befe1` |
| 60 | `lemma` | [coe_erase](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/coe-erase-source-edition-2.md) | 310 | `result-track:c959b5ed85ffc74b283eecb363ed96431a7f8ee00c3d9b87a4e2cb54a7c7a223` |
| 61 | `lemma` | [sdiff_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/sdiff-singleton.md) | 312 | `result-track:32014e8b8c667f46d0836b160c05a3b769fac4d0b0d0b71ae4c5031232302294` |
| 62 | `lemma` | [sdiff_le_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/sdiff-le-left.md) | 315 | `result-track:1c755d393f21ffa5c9da211107bc21c08fcd56f3556298b4403840ec80fd9790` |
| 63 | `lemma` | [erase_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/erase-le.md) | 316 | `result-track:fbab121582ce0c43190df8c7ff64b6e7f2f456f529a6eeecfd1e779317124a51` |
| 64 | `lemma` | [sdiff_eq_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/sdiff-eq-left-source-edition-2.md) | 318 | `result-track:c116740bd785e5e30ba53ca3286c779fe0aec3cca3b50aae606d5d94beff123d` |
| 65 | `lemma` | [erase_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/erase-eq-source-edition-2.md) | 321 | `result-track:e2baabbd5cc999db93e0058cda596f1739e961bcfcc565a7fba754665eb4df9a` |
| 66 | `lemma` | [sdiff_lt_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/sdiff-lt-left.md) | 323 | `result-track:d5b8273cfd111db20ffc68cca62c0b8731d68e90f5f957b9806db8d6a1a1d738` |
| 67 | `lemma` | [erase_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/erase-lt.md) | 326 | `result-track:7f21e5e4e8a976a0f26bb5b04a69138254414a2eb6189f95f9424ae27f9b1593` |
| 68 | `lemma` | [sdiff_idem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/sdiff-idem.md) | 328 | `result-track:2f7bebf0fc514bf7d9c8ad9425c691f0c5f5031862a9609b9b2913c5fc1740c0` |
| 69 | `lemma` | [erase_idem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/erase-idem-source-edition-2.md) | 331 | `result-track:bd538ac71806af58a1d0970f4d4004086338818d774e0dc0e857f401004866dc` |
| 70 | `lemma` | [sdiff_sup_lowerClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/sdiff-sup-lowerclosure.md) | 334 | `result-track:9b8dbe5c5e9a6f586bc03d9d527e083a8428387e91690f27cdf12d9de2a01af3` |
| 71 | `lemma` | [lowerClosure_sup_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/lowerclosure-sup-sdiff.md) | 343 | `result-track:f7487c410810e60b53886e41083b0544d06fe62cbb41c71f0c2f7f86d125271b` |
| 72 | `lemma` | [erase_sup_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/erase-sup-iic.md) | 346 | `result-track:759d96806a2e0888f6179d256f28127d2078a85c37f5df899602aedc61f3483d` |
| 73 | `lemma` | [Iic_sup_erase](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/iic-sup-erase.md) | 349 | `result-track:021d4bbae19d6e93675334f43e2047dfe1aea5c083dc1979fc0090fa88c27b60` |
| 74 | `def` | [sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/sdiff-source-edition-2.md) | 358 | `declaration-track:baa18ef3eaa28777233d95b7fcbe62e7b02bb011a37ddcc939a310e7e9aab0b8` |
| 75 | `def` | [erase](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/erase-source-edition-2.md) | 363 | `declaration-track:c501733f48a0b3405d3d68bb822e700907f94e56b34f941a5939acbbc9f5e5c8` |
| 76 | `lemma` | [coe_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/coe-sdiff-source-edition-2.md) | 368 | `result-track:c8e4b2f5f1c3b1c569e274c40cfa24cddb60139b500c1d13cc096395bb773ca9` |
| 77 | `lemma` | [coe_erase](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/coe-erase.md) | 371 | `result-track:3fa00f17bcfcd06c21c970f0cd3d39c130816a84fbaca3cfdce281985f79bbbd` |
| 78 | `lemma` | [sdiff_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/sdiff-singleton-source-edition-2.md) | 373 | `result-track:b1335be6f4278f34523681f7c933b448e019b554df363f84b8c8b6fdf5db3527` |
| 79 | `lemma` | [le_sdiff_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/le-sdiff-left.md) | 376 | `result-track:f2fada0726beb5d7763986eb13838f63147d1206a655d541036d65c2b2465be8` |
| 80 | `lemma` | [le_erase](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/le-erase.md) | 377 | `result-track:2e7defdd55996cec1b91fd9039dbc38abc4b415109898cc0a57c96dad84f9149` |
| 81 | `lemma` | [sdiff_eq_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/sdiff-eq-left.md) | 379 | `result-track:8918f7f1c84d3f7e759bb9e8992db8afefb36ea5172302f9eeb0c8143c45f3d8` |
| 82 | `lemma` | [erase_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/erase-eq.md) | 382 | `result-track:a891be00301bce552382f0f56ccaa679da20c661c354b010d868251691da8c28` |
| 83 | `lemma` | [lt_sdiff_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/lt-sdiff-left.md) | 384 | `result-track:5c8de55632332ba11e863fda3909d1ba26bfdeb20a72738a0dcb457d75b9b8ad` |
| 84 | `lemma` | [lt_erase](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/lt-erase.md) | 387 | `result-track:78f74e7f072f7777df344ac5a42dd79a4682867f58a70ace7df9595c6eef9aa9` |
| 85 | `lemma` | [sdiff_idem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/sdiff-idem-source-edition-2.md) | 389 | `result-track:f31da83cf1508d50f6051b4a30968b2cab343a2892b0f5f57d7bf5a373717060` |
| 86 | `lemma` | [erase_idem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/erase-idem.md) | 392 | `result-track:427ce7674c84573d3369df9b69f1b9ba4de71536e0f8db2443c05e4fdadd9725` |
| 87 | `lemma` | [sdiff_inf_upperClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/sdiff-inf-upperclosure.md) | 395 | `result-track:8ffd9c8ed34bf0bce449e75cdc4fcd38e6bdda46cc06749b90dff1f90cc02abe` |
| 88 | `lemma` | [upperClosure_inf_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/upperclosure-inf-sdiff.md) | 404 | `result-track:c400e5ecd6a059e0dc6336c07b641a05d0bfc962946686102b00dd8099663147` |
| 89 | `lemma` | [erase_inf_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/erase-inf-ici.md) | 407 | `result-track:dc677937f315b2457ad605a57a6c6e51708901834fcb50b7ddcc9520ea418170` |
| 90 | `lemma` | [Ici_inf_erase](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/UpperLowerClosureNamespaced.lean/declarations/ici-inf-erase.md) | 410 | `result-track:8c1f7609028530b177cf96f7053f5cc5044e39b5e55206c6e640534d04a599bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6b75820aba6a44945ed4b1425102fb83a39561cb879912e1098283cb3cf2e79c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Closure/Variantee0be403b8af4698355477b32139167bcd3437593f534ec4db103716094e4132.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/Variantee0be403b8af4698355477b32139167bcd3437593f534ec4db103716094e4132.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
