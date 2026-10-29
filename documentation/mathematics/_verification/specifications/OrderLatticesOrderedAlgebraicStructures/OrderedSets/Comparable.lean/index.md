# Verification target: Comparable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2660be84c27139ec32a5ade5792876197ec62b2",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Comparable/Variant6ab64a7bd434f317ce156923c0e4fc76243d6fa3036dbc755725dbc61323b857.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2660be84c27139ec32a5ade5792876197ec62b2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Comparable/Variant6ab64a7bd434f317ce156923c0e4fc76243d6fa3036dbc755725dbc61323b857.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Comparable/Variant6ab64a7bd434f317ce156923c0e4fc76243d6fa3036dbc755725dbc61323b857.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Antisymmetrization` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CompRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/comprel.md) | 46 | `declaration-track:573985b458f378f05301967e777bbb6f0b721407b13b608ff855985b114e86eb` |
| 2 | `theorem` | [CompRel.of_rel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/comprel-of-rel.md) | 49 | `result-track:ced45f8206ed976d293dc43a5ee2fb7303858f141b99076c7c9d4c03875e1920` |
| 3 | `theorem` | [CompRel.of_rel_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/comprel-of-rel-symm.md) | 52 | `result-track:54bced1397f069be4eefa0d1834cf40b9414e17270809aa572ff4b50a725a813` |
| 4 | `theorem` | [compRel_swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/comprel-swap.md) | 55 | `result-track:bfd6749d95bc03d204b2c04b1844579a71e03d015cacd0df694d66b12f7bc74c` |
| 5 | `theorem` | [compRel_swap_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/comprel-swap-apply.md) | 58 | `result-track:d09579ee05dbc574c08b6ff43ec03e83dc53c5765519e1d463bc954af588d6ab` |
| 6 | `theorem` | [CompRel.refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/comprel-refl.md) | 62 | `result-track:716b6136e533a6a625fb26113e62b72ae95d1456f0e15f17d26c789e35658f08` |
| 7 | `theorem` | [CompRel.rfl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/comprel-rfl.md) | 65 | `result-track:b4d4f781e24e1ac4fff1b76dc05928f8eb079235500f04643a98461284826c0d` |
| 8 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/instance-source-edition-5.md) | 67 | `declaration-track:95fcc26208920887bbaa704a6a6a0054c449b9418519561d509b722aa34f9b39` |
| 9 | `theorem` | [CompRel.symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/comprel-symm.md) | 71 | `result-track:e582c274637cb23d12007b6e1bad2e60e6018c0f3581cca3130351b524efe337` |
| 10 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/instance-source-edition-2.md) | 74 | `declaration-track:28bb0703f765968f14ef2ed2bf3e45f08a7473f4531fa4156839b03cf093a838` |
| 11 | `theorem` | [compRel_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/comprel-comm.md) | 77 | `result-track:057e64e8ff6e88849de157297830b646fc19e84ed51ccbc84ada8a84e13b89ee` |
| 12 | `instance` | [CompRel.decidableRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/comprel-decidablerel.md) | 80 | `declaration-track:8f2c40c8bc04cb40ebd8fa80a883e30a7fc9d17d31dee715b1dbd10f830ea707` |
| 13 | `theorem` | [AntisymmRel.compRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/antisymmrel-comprel.md) | 83 | `result-track:029c55a8eebb0e8029f9edcdefadf0eae267b5a2eeaff21084fc13b49053f01d` |
| 14 | `theorem` | [IsTotal.compRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/istotal-comprel.md) | 87 | `result-track:56b0847fb6107ca2a7aaedad8d9c0f819b9d550d366bb93d48e695a14ec1d67b` |
| 15 | `theorem` | [CompRel.of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/comprel-of-le.md) | 96 | `result-track:058556a724996775f11b67f6b618e2d5d794d946667e4c39ca98ee69a1a4ffaf` |
| 16 | `theorem` | [CompRel.of_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/comprel-of-ge.md) | 97 | `result-track:fbc76d418c84edcb63d706548e190e7fae5dffcc6935eb093aecaecfd5354975` |
| 17 | `theorem` | [CompRel.of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/comprel-of-lt.md) | 108 | `result-track:1b6569ca5ffc498839da96f63a4b06ba32d6bc5ad2222a9a432289d89eed2166` |
| 18 | `theorem` | [CompRel.of_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/comprel-of-gt.md) | 109 | `result-track:f1ed6bddd62e95f145afedec9a3dd76f903c8c9c06baf2773e4c31cbcc335181` |
| 19 | `theorem` | [CompRel.of_compRel_of_antisymmRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/comprel-of-comprel-of-antisymmrel.md) | 115 | `result-track:8f3c8278a0f804a811e906fb173f286f0308975b60f835b7ece08a246fde22a5` |
| 20 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/instance-source-edition-3.md) | 123 | `declaration-track:44e951090fe3a8b2a7e76ff8cde967fd627e2588259379d7404cb248566cccd6` |
| 21 | `theorem` | [CompRel.of_antisymmRel_of_compRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/comprel-of-antisymmrel-of-comprel.md) | 127 | `result-track:03aa0c1fdf186ef35972367e1e7bcf9dc2ac8d87e81724083829d04ae4d74a79` |
| 22 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/instance-source-edition-4.md) | 133 | `declaration-track:65397ffdb03cb3cff802b1262da53a1cce07c0b88dcf6bcd42c3720e53f99730` |
| 23 | `theorem` | [AntisymmRel.compRel_congr](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/antisymmrel-comprel-congr.md) | 136 | `result-track:ef49c8e8d1546334baf117772f9817bf4747ccf18fe9fb0cf2d7feeec991ba65` |
| 24 | `theorem` | [AntisymmRel.compRel_congr_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/antisymmrel-comprel-congr-left.md) | 141 | `result-track:3d729c58c875cd5ce70b030dcdd05bfec8b93d081ffa86d5e6891efb58fe7575` |
| 25 | `theorem` | [AntisymmRel.compRel_congr_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/antisymmrel-comprel-congr-right.md) | 145 | `result-track:e951812872b20bf0a94cc998730cb029d4c129270cc37531e7d0f2ff007d6ad2` |
| 26 | `def` | [linearOrderOfComprel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/linearorderofcomprel.md) | 152 | `declaration-track:995a4440dbcfbcf12adef6dd5c2dd4a242f9941c6d604fc519edafaca3c26fe2` |
| 27 | `def` | [IncompRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/incomprel.md) | 167 | `declaration-track:61bad84d9741f718aa2f34c52d511e4644e3df36c821046657901155b7d58ecc` |
| 28 | `theorem` | [antisymmRel_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/antisymmrel-compl.md) | 171 | `result-track:9561dd555bd33e99253d47db13ea8d4c193bb77ca3556f9d8aaffe82da9e9698` |
| 29 | `theorem` | [antisymmRel_compl_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/antisymmrel-compl-apply.md) | 174 | `result-track:bcdc33d3d2bf78a6d9ef93b9efe8b40806be4dcf529dfb02c607117e3301c7a2` |
| 30 | `theorem` | [incompRel_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/incomprel-compl.md) | 178 | `result-track:99c999a89b160e4a0dc553cf933336f1b7855053c7badce569bd121bccf8ded6` |
| 31 | `theorem` | [incompRel_compl_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/incomprel-compl-apply.md) | 182 | `result-track:05ac38bc6018c3467dc08c5fe340c8cb89c8cd5ea052f425fd2306d2c39d218d` |
| 32 | `theorem` | [incompRel_swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/incomprel-swap.md) | 185 | `result-track:82e829259dd76f790e460cbe6b33d32814d30b5a80dfd9e731215e3854211e74` |
| 33 | `theorem` | [incompRel_swap_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/incomprel-swap-apply.md) | 188 | `result-track:50bb77ceeffd00e0be431db7f1007d08d09e20db2400095f4c0407ae72bad0a8` |
| 34 | `theorem` | [IncompRel.refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/incomprel-refl.md) | 192 | `result-track:b6d3e8101298b83a0bc17fbc49e0ab8fcaa603a62d4005a0e041f63059e7bb66` |
| 35 | `theorem` | [IncompRel.rfl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/incomprel-rfl.md) | 196 | `result-track:9b88a785469e91a1eebdaa1d716ed213603da9ea6260b5ed99dc1cb48eb6fa6d` |
| 36 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/instance-source-edition-6.md) | 198 | `declaration-track:b24cc840a1882be88547fe67336e34ff6b539a70e187aa1d438bbfea13129cbc` |
| 37 | `theorem` | [IncompRel.symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/incomprel-symm.md) | 204 | `result-track:9d0dcd64cfe4c329abf4c82622d5444b97c80fe3a15a1df4a3c2015afac10192` |
| 38 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/instance.md) | 207 | `declaration-track:0c57dd528e4a0a3e6edccca3252d67324dfed892940635eb4457e6a2cb62d2e3` |
| 39 | `theorem` | [incompRel_comm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/incomprel-comm.md) | 210 | `result-track:4dfc84f886637624e8974d8614ae589259bdd55b6735623226c97994d834d070` |
| 40 | `instance` | [IncompRel.decidableRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/incomprel-decidablerel.md) | 213 | `declaration-track:84c389bf1976a5bdc613f53bc8f2d27ca937496636882fe86dd5a55b3a3db738` |
| 41 | `theorem` | [IncompRel.not_antisymmRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/incomprel-not-antisymmrel.md) | 216 | `result-track:25c04dcae0db8055457fbf3a8df535a779e909ed7198fbfca3a01e8a3360094a` |
| 42 | `theorem` | [AntisymmRel.not_incompRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/antisymmrel-not-incomprel.md) | 219 | `result-track:9947d5d542091a00c16b4bee009d0dc4c756e766f475181b6a22af3894979986` |
| 43 | `theorem` | [not_compRel_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/not-comprel-iff.md) | 222 | `result-track:2d625352a91f2a12dcafe5492e23c4fec97425c1ac932e2f83f863fda6065b60` |
| 44 | `theorem` | [not_incompRel_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/not-incomprel-iff.md) | 225 | `result-track:3e0be4dbb17f55d7d1602e864f519b4230e6359d0ee3d57d6bd36d7da1fd7156` |
| 45 | `theorem` | [IsTotal.not_incompRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/istotal-not-incomprel.md) | 229 | `result-track:515fd32254b3a72591fcafacc9206634681f0ecf7304525937ea9a3e13fbc47f` |
| 46 | `theorem` | [IncompRel.not_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/incomprel-not-le.md) | 239 | `result-track:1ac122de7a5043e69612708ed654f75e98e2385ae634e59f78473e1c2937a457` |
| 47 | `theorem` | [IncompRel.not_ge](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/incomprel-not-ge.md) | 240 | `result-track:c6942e4d0f3ac98afcdc8c90c7f6389bd95436f0736a10d076db9ffc2c81a8b9` |
| 48 | `theorem` | [LE.le.not_incompRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/le-le-not-incomprel.md) | 241 | `result-track:f87772e8b2bc32fd386a37e3f3815faee1872716950eb104e86ca7e441f36bab` |
| 49 | `theorem` | [IncompRel.not_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/incomprel-not-lt.md) | 249 | `result-track:9c21928f8684fb86998d9c1eb89fcb9c347520fe50d12d3beb6b40dff2fcfb36` |
| 50 | `theorem` | [IncompRel.not_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/incomprel-not-gt.md) | 250 | `result-track:0aeeac4680ef6fc0e78d218934b21a083bf75f6500b47a7bd2d8e33d29a33ec8` |
| 51 | `theorem` | [LT.lt.not_incompRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/lt-lt-not-incomprel.md) | 251 | `result-track:976a1e0fd78c5f465b5c39ef51c0455e974f00b19c08c6661dc10df6be7ae120` |
| 52 | `theorem` | [not_le_iff_lt_or_incompRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/not-le-iff-lt-or-incomprel.md) | 253 | `result-track:b702edfa85a0f2d81b39eae895c69cbd82d3c53b57b55ee64595a0295e3b851f` |
| 53 | `theorem` | [lt_or_antisymmRel_or_gt_or_incompRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/lt-or-antisymmrel-or-gt-or-incomprel.md) | 258 | `result-track:c8fca3f2f078971f925a1155dfffa871ce0a298c1a895af25c847ff8f1a41978` |
| 54 | `theorem` | [incompRel_of_incompRel_of_antisymmRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/incomprel-of-incomprel-of-antisymmrel.md) | 264 | `result-track:637fe2d5ab13e7496fecc0b54a8994d7e42c4320311eab89d704e484c577b719` |
| 55 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/instance-source-edition-8.md) | 270 | `declaration-track:f7fafc4ef3664ef59a6a5fc72622411cc98f936159c6f97dadfd3c9b3aa6b918` |
| 56 | `theorem` | [incompRel_of_antisymmRel_of_incompRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/incomprel-of-antisymmrel-of-incomprel.md) | 274 | `result-track:26c656711c57e08bef8625b4f0fe329337849579db6b330e841df93e062c3254` |
| 57 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/instance-source-edition-7.md) | 280 | `declaration-track:bbf57b7df2a48d7c70db7ebfd63598c86a4d9ec6af24093548f3d4169cd153d6` |
| 58 | `theorem` | [AntisymmRel.incompRel_congr](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/antisymmrel-incomprel-congr.md) | 283 | `result-track:23298833698e51d6723e168fb6785d34f2d627650e9ae7643f6cc2f0c555483a` |
| 59 | `theorem` | [AntisymmRel.incompRel_congr_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/antisymmrel-incomprel-congr-left.md) | 288 | `result-track:9b6ad847ba5d608377d51a2adb1794a5b0d0775fafad06d0e6fcd0e86b99e77d` |
| 60 | `theorem` | [AntisymmRel.incompRel_congr_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/antisymmrel-incomprel-congr-right.md) | 292 | `result-track:d7e51db9ee6a2df3d92c2f9f3d5ab3f766df373e6ab96ba00dec10a1a990a32d` |
| 61 | `theorem` | [lt_or_eq_or_gt_or_incompRel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Comparable.lean/declarations/lt-or-eq-or-gt-or-incomprel.md) | 299 | `result-track:02a82a00470b4d2bd5a4665f4bd064fffbe392ee271a88f80127116e2f0c1bb6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=482f7bb3d15e771f6691f6c699ff782907ff7a9590db222fb75ee1f0ede01be7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Comparable/Variant6ab64a7bd434f317ce156923c0e4fc76243d6fa3036dbc755725dbc61323b857.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Comparable/Variant6ab64a7bd434f317ce156923c0e4fc76243d6fa3036dbc755725dbc61323b857.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
