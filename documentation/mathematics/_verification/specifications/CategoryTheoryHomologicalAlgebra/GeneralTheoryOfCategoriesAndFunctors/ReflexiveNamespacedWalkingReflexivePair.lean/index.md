# Verification target: Reflexive Namespaced Walking Reflexive Pair

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "218a51d6317cda459acf9c8b1c2e180e41aa38b4",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variant98183d5c8adc3b383e2f1485f8f47f0f64651a7c435f7d1f70ff090d4d680142.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `218a51d6317cda459acf9c8b1c2e180e41aa38b4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variant98183d5c8adc3b383e2f1485f8f47f0f64651a7c435f7d1f70ff090d4d680142.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variant98183d5c8adc3b383e2f1485f8f47f0f64651a7c435f7d1f70ff090d4d680142.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Final` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.KernelPair` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsReflexivePair](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/isreflexivepair.md) | 71 | `declaration-track:63efd0ab2826067bada26d493dfacf6f6bef72ac8cc2760b619ece0a912495d5` |
| 2 | `theorem` | [IsReflexivePair.common_section](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/isreflexivepair-common-section.md) | 74 | `result-track:339f41e5caeffc3f444ca8e5c41b223ebe12fac07182e223a0cd30c3cb28bc9d` |
| 3 | `class` | [IsCoreflexivePair](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/iscoreflexivepair.md) | 80 | `declaration-track:8b2d3b0435eb616e5ed0c7570e16c6ddc3c4a0124cf2f5a279956b9102c817af` |
| 4 | `theorem` | [IsCoreflexivePair.common_retraction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/iscoreflexivepair-common-retraction.md) | 83 | `result-track:0bbf9a58d46732df610108ef03e2945fb7c834435cabb79201ab5c291841e3a7` |
| 5 | `theorem` | [IsReflexivePair.mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/isreflexivepair-mk.md) | 86 | `result-track:68020e2dc2cbd34ddf5000d405f45da8f272728a21c9134c1dba6d7ba974dce7` |
| 6 | `theorem` | [IsCoreflexivePair.mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/iscoreflexivepair-mk.md) | 90 | `result-track:cc663cdb1e1da1907f60fd1e8c923fa485ba0ba299443c82c22bb1e914ab9af1` |
| 7 | `def` | [commonSection](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/commonsection.md) | 95 | `declaration-track:1dd179b97ad3a110a14c27e4826f3d0ead418e5463b73d6d328d93b856ae832a` |
| 8 | `theorem` | [section_comp_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/section-comp-left.md) | 99 | `result-track:7b8e670dab5fdb663057577d6e62829360bd706905c112f7e920519d55b24eb3` |
| 9 | `theorem` | [section_comp_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/section-comp-right.md) | 103 | `result-track:1eee6e6cb530b4d92a25653b40717adfd3c1ab2b9422f5931644b501a375fc5c` |
| 10 | `def` | [commonRetraction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/commonretraction.md) | 107 | `declaration-track:d77fd041bde5665e914c4e721c59d5ce3b2181ae1afa8f474c77c337e2a1ab28` |
| 11 | `theorem` | [left_comp_retraction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/left-comp-retraction.md) | 111 | `result-track:2f6eb9ac20308c72ab4662064f8a91905a11726f07ad4cb9fe399042914289f9` |
| 12 | `theorem` | [right_comp_retraction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/right-comp-retraction.md) | 116 | `result-track:11243569573d6e76e983f44204b5f253cd32e9cc57f4724f7ca4f2f636e4226c` |
| 13 | `theorem` | [IsKernelPair.isReflexivePair](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/iskernelpair-isreflexivepair.md) | 121 | `result-track:a2562ab2a9cfef5b1407ce04e6acc181c9b77a3979923ecdbe27f0de7eb5395b` |
| 14 | `theorem` | [IsReflexivePair.swap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/isreflexivepair-swap.md) | 127 | `result-track:bffc826a14aef48d572361d91002a62feffb315391a56cc90276585bc33ecbc0` |
| 15 | `theorem` | [IsCoreflexivePair.swap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/iscoreflexivepair-swap.md) | 132 | `result-track:045a5d43f747fe8f75cbda851968bfe37b5965df6507053fb4541e7be0d10c0d` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/instance-source-edition-4.md) | 138 | `declaration-track:d3ad85f55f277f925b880f00e787e946523cf0319b657bffc5f05a65b4257566` |
| 17 | `class` | [HasReflexiveCoequalizers](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/hasreflexivecoequalizers.md) | 151 | `declaration-track:d68081e36d2a168266e20db85c64a3a4c3ccc10ab72b178154b0e3fdff0961a5` |
| 18 | `class` | [HasCoreflexiveEqualizers](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/hascoreflexiveequalizers.md) | 155 | `declaration-track:e74952bd0ab54801f1c53b8ec4516c1688df9c40d774b5fc4f7d6c5c88652017` |
| 19 | `theorem` | [hasCoequalizer_of_common_section](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/hascoequalizer-of-common-section.md) | 162 | `result-track:34862a5f9c73b9c03b9eb8d4b0149b1dad170f51317aac02e84e7b00a7f7fe9e` |
| 20 | `theorem` | [hasEqualizer_of_common_retraction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/hasequalizer-of-common-retraction.md) | 167 | `result-track:c35bf73d0ce98bf5530897c13596cdd84bb1c6dd5454a5ed82f89f0ff7acc703` |
| 21 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/instance.md) | 173 | `declaration-track:082243daf6b85a10b00359d1a94bfea7f78cf4684108b60851544b507c4fa843` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/instance-source-edition-2.md) | 177 | `declaration-track:0ced46c49106df10cbbe19af0602e9a93c69d8a84a378c8d84abb76f92948f8e` |
| 23 | `inductive` | [WalkingReflexivePair](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/walkingreflexivepair.md) | 191 | `declaration-track:f6a5a0d9a33a23849f414d69b45a47bfd347de3049a0cd7cf0bf77f913707c64` |
| 24 | `inductive` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/hom.md) | 203 | `declaration-track:0a1895ca2c9510a0421f1ccb7c08e803d8f3fe59550bb6cdeca4f7d73576f9c5` |
| 25 | `def` | [Hom.comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/hom-comp.md) | 213 | `declaration-track:ed10c7d2393a2926cc7fb79757ebc38cafdedba0e7d1eb6ec4d4000ce2fd321f` |
| 26 | `instance` | [category](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/category.md) | 233 | `declaration-track:2691a981b6fecbbe289337b4d573235135eb4ed0867a0960d003df68e14587f3` |
| 27 | `lemma` | [Hom.id_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/hom-id-eq.md) | 244 | `result-track:95a5aba59ea72011edf800021b0b4414f31a1efad5bd51bbe461d0b8d191a308` |
| 28 | `lemma` | [reflexion_comp_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/reflexion-comp-left.md) | 248 | `result-track:bb34aa61fb7d2e27180624436e23e9a5d8c14cfea124f7b34a70d95dd2ea0f59` |
| 29 | `lemma` | [reflexion_comp_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/reflexion-comp-right.md) | 251 | `result-track:0e5a9d987499a81136b5f295f91b04130fa87d4c8b081c5ecab08586d7edc84b` |
| 30 | `lemma` | [leftCompReflexion_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/leftcompreflexion-eq.md) | 254 | `result-track:2d0c840f75235f54dacc92b8d62eb43f23d4e5412181a27ee1c91497c54b3260` |
| 31 | `lemma` | [rightCompReflexion_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/rightcompreflexion-eq.md) | 257 | `result-track:c2accb6d0d3d187052d6f36230dc3431b1b6af9a8befba035b1415eafd10fde6` |
| 32 | `lemma` | [map_reflexion_comp_map_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/map-reflexion-comp-map-left.md) | 264 | `result-track:01d518bc8f881467d2cc1f98276ad97a9f33df78377caa04df58639b50f26b1d` |
| 33 | `lemma` | [map_reflexion_comp_map_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/map-reflexion-comp-map-right.md) | 269 | `result-track:2a33ad69bed71a5dff7ec91177bbd9e7e3d0545a86fc56d2b4b99a44d727d9ae` |
| 34 | `def` | [inclusionWalkingReflexivePair](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/inclusionwalkingreflexivepair.md) | 281 | `declaration-track:6e82bf995204f49ed0e62f6eec85a2fe4ceb250d42db756d1458165d07344fe2` |
| 35 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/instance-source-edition-5.md) | 294 | `declaration-track:ecc0720e8e8078301aa72c9a268d3b7000e27155f1f2273d9ee4530b8ed1580b` |
| 36 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/instance-source-edition-3.md) | 301 | `declaration-track:52f8135772a21d94884af6c5533f6bc403e300921b592c4a1408bf798819b1d4` |
| 37 | `instance` | [inclusionWalkingReflexivePair_final](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/inclusionwalkingreflexivepair-final.md) | 320 | `declaration-track:721d8eca31dce749c376e6552c7300f2f0aca2bbe7a933deac027f3957b6a587` |
| 38 | `def` | [reflexivePair](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/reflexivepair.md) | 337 | `declaration-track:8d8206edaa057f346f993a2ac9ba57f924fd19db01660f25c19a14648270792c` |
| 39 | `lemma` | [reflexivePair_obj_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/reflexivepair-obj-zero.md) | 362 | `result-track:95ee1b332b7a76e1a22daad1cba7e495da93c7752ab375b67ce8625b5842b78a` |
| 40 | `lemma` | [reflexivePair_obj_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/reflexivepair-obj-one.md) | 364 | `result-track:225745102f36b45c4656ce6ec9b274653d223fec54293ef9a62db7e791230633` |
| 41 | `lemma` | [reflexivePair_map_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/reflexivepair-map-right.md) | 366 | `result-track:5b623a1990cef82a3148b104078363008429ac0341cd75e4e1695ee21ba4c688` |
| 42 | `lemma` | [reflexivePair_map_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/reflexivepair-map-left.md) | 368 | `result-track:52bc813f39ab20aa60c16dcbd99f86a90e81ca33262bf45773d13df56d22ddcb` |
| 43 | `lemma` | [reflexivePair_map_reflexion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/reflexivepair-map-reflexion.md) | 370 | `result-track:a77f2f9d55be7170ab5c0b0a94f2b8b0093852f61d934866b339170fe099ebb8` |
| 44 | `def` | [ofIsReflexivePair](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/ofisreflexivepair.md) | 376 | `declaration-track:ef6ffacd4e24f63bb015c5f99c1661809b076984e30bebf3cc8b7e5aac05df7f` |
| 45 | `lemma` | [ofIsReflexivePair_map_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/ofisreflexivepair-map-left.md) | 380 | `result-track:2bcdc80b72872f7504ad77d99024700175c66c1713118ba96393f584abd12e47` |
| 46 | `lemma` | [ofIsReflexivePair_map_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/ofisreflexivepair-map-right.md) | 384 | `result-track:10701acda6a00bc3411f15e6dc3419c63973fac4d2187d9060beae286a26dce6` |
| 47 | `def` | [inclusionWalkingReflexivePairOfIsReflexivePairIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/inclusionwalkingreflexivepairofisreflexivepairiso.md) | 389 | `declaration-track:c2bc1a7461d49f426f2c0d424cf60d21b2d3d5c2a5e03cd9fb058131137a4813` |
| 48 | `def` | [mkNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/mknattrans.md) | 415 | `declaration-track:db769657a2e62842a5392627e773e6c51476f2473fe664f50b64d9d6ecfb306d` |
| 49 | `lemma` | [mkNatTrans_app_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/mknattrans-app-zero.md) | 429 | `result-track:ce4bf3bafaa21c123196d1d205bfe5c7fff18b35b1f5420a93d93a1c096575de` |
| 50 | `lemma` | [mkNatTrans_app_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/mknattrans-app-one.md) | 432 | `result-track:790c37589453156674cf48674c4b6ea083264045e7b49bf93a4d107659b68ab4` |
| 51 | `def` | [mkNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/mknatiso.md) | 440 | `declaration-track:1630a285130d793f5f90ffc0848147e07020af05b05930d9d9a14c102079fdb4` |
| 52 | `def` | [diagramIsoReflexivePair](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/diagramisoreflexivepair.md) | 461 | `declaration-track:b76be1ba39235ec0782bb23e28ed160068e2d7b12c97c8956ef1f0ada33ab3b2` |
| 53 | `def` | [compRightIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/comprightiso.md) | 470 | `declaration-track:555038d5c4c961fcd8a131e041342bf3df5336c39a70d41358067f3d9e89994c` |
| 54 | `lemma` | [whiskerRightMkNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/whiskerrightmknattrans.md) | 477 | `result-track:98fc983535c0769bfe0b4ad9d8721402ec079796bf7208b3a17addb0ba1873be` |
| 55 | `instance` | [to_isReflexivePair](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/to-isreflexivepair.md) | 493 | `declaration-track:1126b9b9c08480830648d590fc83bed521386096239003f6217b7e6d25fa119f` |
| 56 | `abbrev` | [ReflexiveCofork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/reflexivecofork.md) | 500 | `declaration-track:cd63c7b5b5dc35d655b4bb3972291b2f877fe1eff84d61da4e4083d8dbac6c60` |
| 57 | `abbrev` | [π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/anonymous.md) | 509 | `declaration-track:5a1cf00c45b92474d91bf153a7106b955ac5e55d97e8c803294318bb1ceccbb0` |
| 58 | `def` | [mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/mk-source-edition-2.md) | 513 | `declaration-track:ee4a6343d5bbb53e2971d1aab27f52629a66e00928ddeafcef96007ba9064dd9` |
| 59 | `lemma` | [mk_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/mk.md) | 519 | `result-track:271d2959f6a411560616f453151e1edb5e7721f62b52ebdd80a63d1a9a254eb7` |
| 60 | `lemma` | [condition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/condition.md) | 522 | `result-track:8bd5f4786d0d6916b3a1ada0e4c5fbdd4ea4ecc66083a56e2a623986e06f91dd` |
| 61 | `lemma` | [app_one_eq_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/app-one-eq.md) | 526 | `result-track:2719260cf81d6977fafbe483ffc5ef036d531bfea796a9c8759dc907e69b2754` |
| 62 | `abbrev` | [toCofork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/tocofork.md) | 529 | `declaration-track:3865228a74e6bbcb63b032954b9f23a760912128e52f02e72431224b405d7e2c` |
| 63 | `def` | [reflexiveCoforkEquivCofork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/reflexivecoforkequivcofork.md) | 542 | `declaration-track:91b011934fb35e083522a1f5acd9fd0f4416d34db3159558f6a2dd72ed993880` |
| 64 | `lemma` | [reflexiveCoforkEquivCofork_functor_obj_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/reflexivecoforkequivcofork-functor-obj.md) | 548 | `result-track:38a72cb069c9a4d5b0791ec9bae8ca7a434579fd81a4201731cc156c6e5e1dca` |
| 65 | `lemma` | [reflexiveCoforkEquivCofork_inverse_obj_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/reflexivecoforkequivcofork-inverse-obj.md) | 555 | `result-track:ba273e310c76c5ec69fff7558640834606e31b8bc251ac919f3a35873e977181` |
| 66 | `def` | [reflexiveCoforkEquivCoforkObjIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/reflexivecoforkequivcoforkobjiso.md) | 566 | `declaration-track:405defcbc0a6feeb45b1b286cc70f91b3624bece5c3f9b2d9387a29d162f5332` |
| 67 | `lemma` | [hasReflexiveCoequalizer_iff_hasCoequalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/hasreflexivecoequalizer-iff-hascoequalizer.md) | 571 | `result-track:4828d0047c87eed8cd307f406fff7c95f0cc124bcb315f1fbd7d948571e74a58` |
| 68 | `instance` | [reflexivePair_hasColimit_of_hasCoequalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/reflexivepair-hascolimit-of-hascoequalizer.md) | 576 | `declaration-track:4452475654dd9025142419b42335b4f2ca74dae1d9b668d6bc132364e84373bc` |
| 69 | `def` | [ReflexiveCofork.isColimitEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/reflexivecofork-iscolimitequiv.md) | 581 | `declaration-track:7f0639aa46b1e7850b152529c809cddae03a9490a43c834ec12002ae1c1b5455` |
| 70 | `def` | [reflexiveCoequalizerIsoCoequalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/reflexivecoequalizerisocoequalizer.md) | 593 | `declaration-track:403865ac45daec6f99e41d3bff7a1734882adba515537ad73554d61aa62af864` |
| 71 | `lemma` | [ι_reflexiveCoequalizerIsoCoequalizer_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/reflexivecoequalizerisocoequalizer-hom.md) | 599 | `result-track:05ec94809172c5563ed93366e49e03b4d090ab36870db570b1c26792162a922e` |
| 72 | `lemma` | [π_reflexiveCoequalizerIsoCoequalizer_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/reflexivecoequalizerisocoequalizer-inv.md) | 606 | `result-track:6d6933913325c3a2274382d2fd34bdf826645e47590da8a100a0f67d72845679` |
| 73 | `instance` | [ofIsReflexivePair_hasColimit_of_hasCoequalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/ofisreflexivepair-hascolimit-of-hascoequalizer.md) | 616 | `declaration-track:befff4932475ab89ac679e1dd3fb1b1d4ab6bbec09dc8685c772eac214169d75` |
| 74 | `def` | [colimitOfIsReflexivePairIsoCoequalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/colimitofisreflexivepairisocoequalizer.md) | 622 | `declaration-track:0f6da1c99cc283d83a009af68367bd5b8c294d78ad63ec9e6aeeec7aa46f9615` |
| 75 | `lemma` | [ι_colimitOfIsReflexivePairIsoCoequalizer_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/colimitofisreflexivepairisocoequalizer-hom.md) | 628 | `result-track:dae3811dc0b44d47e26128e479bcc3797cfa93d8a4ba629d3ad2937d1ec55391` |
| 76 | `lemma` | [π_colimitOfIsReflexivePairIsoCoequalizer_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/colimitofisreflexivepairisocoequalizer-inv.md) | 633 | `result-track:d05dc2e1165d1d72997566642415ac3a2daff2d4f68919742861337f3ff38286` |
| 77 | `theorem` | [hasReflexiveCoequalizers_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflexiveNamespacedWalkingReflexivePair.lean/declarations/hasreflexivecoequalizers-iff.md) | 649 | `result-track:9e5e8bb98bbcd22db3c0962d309f617b2f91cdc61e22d06b720cc4f065eadfc7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e272458ef90201428e2ac566a6e356390670d2824d3537cf4429a07faaff1281 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variant98183d5c8adc3b383e2f1485f8f47f0f64651a7c435f7d1f70ff090d4d680142.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflexive/Variant98183d5c8adc3b383e2f1485f8f47f0f64651a7c435f7d1f70ff090d4d680142.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
