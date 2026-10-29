# Verification target: Is Pullback Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06ecb1ec3f0f9bab7bcfb4df75ded1ea5953e275",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant5bff9c2e39fc0080fc3ade007b557ae788538116a0c08c39e652dbc22c7de056.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06ecb1ec3f0f9bab7bcfb4df75ded1ea5953e275`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant5bff9c2e39fc0080fc3ade007b557ae788538116a0c08c39e652dbc22c7de056.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant5bff9c2e39fc0080fc3ade007b557ae788538116a0c08c39e652dbc22c7de056.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/ispullback.md) | 69 | `declaration-track:e53143e7642b76c0a3114586cd549f72a67bbc1674899780fcb32f8235f4295e` |
| 2 | `structure` | [IsPushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/ispushout.md) | 86 | `declaration-track:c312626fbcac6004608c8fba8a2c2011c2539a01203fc921b2a3a9816f5813b2` |
| 3 | `def` | [cone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/cone.md) | 97 | `declaration-track:12b4fbe989e3cb4047b15b8c036d19240e0949b3f6fc6a7316977c6747ed6d16` |
| 4 | `theorem` | [cone_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/cone-fst.md) | 101 | `result-track:6011f52efdcd779e63e012fb708347ebbdab05f2fea16c27d54c257f3bc8573b` |
| 5 | `theorem` | [cone_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/cone-snd.md) | 105 | `result-track:55760b9805f43b01324853e5de1d4778361e71c249b8a58dccca845ac658ed56` |
| 6 | `def` | [isLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/islimit.md) | 110 | `declaration-track:21a2fd945495668c126c6479bae4b44195f4241413e48eb18f20261ae12708d2` |
| 7 | `def` | [lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/lift.md) | 114 | `declaration-track:af641a0dc51d69ac798770b84e14e5f021d15053246391e2b6fbad99d4de4ef8` |
| 8 | `lemma` | [lift_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/lift-fst.md) | 119 | `result-track:b18332005f8537e1f2cbb6cb1c2cde00675d0de2690c01e57f0f120a86e40c0a` |
| 9 | `lemma` | [lift_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/lift-snd.md) | 124 | `result-track:01ae5dbb6fe124112ee29de9c4f5d76b7d00af6ed7b429b50c5badff3b35ff28` |
| 10 | `lemma` | [exists_lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/exists-lift.md) | 128 | `result-track:e80d67e982ffac65565ae490b8bd3d85e1d948e34d797f2c8e5f9e8177f9dea7` |
| 11 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/hom-ext-source-edition-2.md) | 133 | `result-track:998aadd3e477710931c4b46fbae739f8ec5de9c81fa76bb63f573c1168ddb5f7` |
| 12 | `theorem` | [of_isLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/of-islimit-source-edition-2.md) | 139 | `result-track:6fe79ecd0fb60dd8e7a5c4f51f065bcbbcc816afc2c51545f09c836f65b0e20b` |
| 13 | `theorem` | [of_isLimit'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/of-islimit.md) | 145 | `result-track:69a61c2765bcb70533f828356b347d750c31a98d98aaa1b8efdff1bf709f6732` |
| 14 | `lemma` | [of_isLimit_cone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/of-islimit-cone.md) | 150 | `result-track:5d485ee431923db2d29c1281869b8475824bb2fe56e025ee0beaa87d07613fc9` |
| 15 | `lemma` | [hasPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/haspullback.md) | 156 | `result-track:4a4a0ee19f71e1fbc6f2610c007777ddcc504053295358c75c003c67a4f13f38` |
| 16 | `theorem` | [of_hasPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/of-haspullback.md) | 160 | `result-track:b9ecc5ab6b44227894709cd2bdbbfd1c48c4c693da53aa0b5e9c3c5d4e353e64` |
| 17 | `def` | [isoIsPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/isoispullback.md) | 173 | `declaration-track:3fe0800ab51167a62e68688d35ff21b7e935a7cc914c3905fcd0ea3aeaddbbe1` |
| 18 | `theorem` | [isoIsPullback_hom_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/isoispullback-hom-fst.md) | 178 | `result-track:1b78699f0605c9b013aff54f467d9d597ae1bac4d44f1f4078712481726e17d6` |
| 19 | `theorem` | [isoIsPullback_hom_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/isoispullback-hom-snd.md) | 183 | `result-track:d2825ca4d2c7a49520ec6e7f3ff97ee209675b2a4bf7ad05fab3da3be9ac0c33` |
| 20 | `theorem` | [isoIsPullback_inv_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/isoispullback-inv-fst.md) | 188 | `result-track:ce4e5c0a7234c5de3cb2e888241cbfb5325e1dc417f0da407f09ada3b8e9b75b` |
| 21 | `theorem` | [isoIsPullback_inv_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/isoispullback-inv-snd.md) | 193 | `result-track:d0a89416cde36099ffb1196b29c47ba25b1d31d71e6fb66885ba243c2c734244` |
| 22 | `def` | [isoPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/isopullback.md) | 201 | `declaration-track:a698b3311d55119ccb5c087a7efb3f1700f57701ddccfe9a27cb2fceb10bf8ab` |
| 23 | `theorem` | [isoPullback_hom_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/isopullback-hom-fst.md) | 207 | `result-track:f4d98fbb530a3dc70a3e68d1a6a5904718371cc216c315ba537dd3a9276a11eb` |
| 24 | `theorem` | [isoPullback_hom_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/isopullback-hom-snd.md) | 214 | `result-track:298e7fe3c9f6f5814b853d3d0d88f6471bc0d3e6249533729b1329afbcfda917` |
| 25 | `theorem` | [isoPullback_inv_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/isopullback-inv-fst.md) | 220 | `result-track:e1e34051a24e743e81ae28800ba7b4eef6740845fba726d09e09941b1b96b039` |
| 26 | `theorem` | [isoPullback_inv_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/isopullback-inv-snd.md) | 224 | `result-track:98758739824630601066ebaaf3bc74b0516f94cc386914cb7f4f2464f233839d` |
| 27 | `def` | [cocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/cocone.md) | 236 | `declaration-track:3dbeb6aa4f7c72112171b6acb3352501c99e2b7c6acd12f5bac6c3daae455151` |
| 28 | `theorem` | [cocone_inl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/cocone-inl.md) | 240 | `result-track:6ead145653d38e2d56f14a3fca8bc4cda7d2b8bd9a8f10430c81295824644d71` |
| 29 | `theorem` | [cocone_inr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/cocone-inr.md) | 244 | `result-track:c9714fc0cc563e101952901c6eb4335fcdf455e874ab1234446923e496c2999a` |
| 30 | `def` | [isColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/iscolimit.md) | 249 | `declaration-track:de110cc909bea34de97afac52aa4db59054cf3a12e0f4e9780aef9a825c2a94f` |
| 31 | `def` | [desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/desc.md) | 253 | `declaration-track:005bdf791b50ed6386d6121ae315272341229fd097e913f4aa7641c3aabbd96b` |
| 32 | `lemma` | [inl_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/inl-desc.md) | 258 | `result-track:ba1e8d2e006a9e7543b331a1acdd32137382a9170f9bd149e7905b766318cc38` |
| 33 | `lemma` | [inr_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/inr-desc.md) | 263 | `result-track:76bc6452386139406801782a596457a872a67d3560066a25de9ce4e3783218ae` |
| 34 | `lemma` | [exists_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/exists-desc.md) | 267 | `result-track:47b947c044634a2c6ab1e931ca84a290c97f2f779be0bab99064892caf649c9b` |
| 35 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/hom-ext.md) | 272 | `result-track:5c538bac244f3a417c22f58412ca39b9f46ea3924aeacae790d45afe54492254` |
| 36 | `theorem` | [of_isColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/of-iscolimit.md) | 278 | `result-track:264f046ce0ca32433f55e5d4019cfe11b74e7e53103d84cc571eb42e1ae6d0bb` |
| 37 | `theorem` | [of_isColimit'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/of-iscolimit-source-edition-2.md) | 285 | `result-track:dc38da91beae219f349cda92634380d281bf8b9f4c41e0ec9d250b209872defe` |
| 38 | `lemma` | [of_isColimit_cocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/of-iscolimit-cocone.md) | 290 | `result-track:8ca01509893f664905613822cf64f82e0c6212c435c754d531bf8b56e67357a5` |
| 39 | `lemma` | [hasPushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/haspushout.md) | 296 | `result-track:04464e3be08fb8af3f9c625267defc5abb4d78b0d0cc13abcb5592ebe077d565` |
| 40 | `theorem` | [of_hasPushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/of-haspushout.md) | 300 | `result-track:ff368a514d723e704471ad9846f293303166d7c72b4b18d2b150cf3c8678b2ae` |
| 41 | `def` | [isoIsPushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/isoispushout.md) | 311 | `declaration-track:62d72226672b0e8f9815a4ce683d6b824068c969f6368ac9217c23f7ad77dcce` |
| 42 | `theorem` | [inl_isoIsPushout_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/inl-isoispushout-hom.md) | 316 | `result-track:8574d420975aef604518200fae3e11d65d928a90eafd24e84d61ce774abb0d5f` |
| 43 | `theorem` | [inr_isoIsPushout_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/inr-isoispushout-hom.md) | 321 | `result-track:8d76ce8333d7d16ebff557e466a3f22cb65ce3219959f4fb665a7cefa634e18b` |
| 44 | `theorem` | [inl_isoIsPushout_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/inl-isoispushout-inv.md) | 326 | `result-track:936020433f5df7c6482f4e75a34251696a3ee9d60633fa39924f49605e1620a8` |
| 45 | `theorem` | [inr_isoIsPushout_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/inr-isoispushout-inv.md) | 331 | `result-track:e26760d4f7f42575f2e4b5f7ab874c184e33d9b8710f1127ec1206c6a8b41689` |
| 46 | `def` | [isoPushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/isopushout.md) | 339 | `declaration-track:9951c504e91310bc4b98b5b61b1bcd035c1922559912a1d915ae80e454cf2ea8` |
| 47 | `theorem` | [inl_isoPushout_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/inl-isopushout-inv.md) | 344 | `result-track:f19f2fed7664d0a5e3e3827d507da90dd8100488892ee4663686938a511f8d84` |
| 48 | `theorem` | [inr_isoPushout_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/inr-isopushout-inv.md) | 351 | `result-track:9c0af9afafe2b9cdebfd222ec32faeb6e96ea41f7839874c3a20925053e5b9d1` |
| 49 | `theorem` | [inl_isoPushout_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/inl-isopushout-hom.md) | 357 | `result-track:db548127cab8dd6616de6dda115f98b62bfae3a055a14486b65a991d4ca6e355` |
| 50 | `theorem` | [inr_isoPushout_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/inr-isopushout-hom.md) | 361 | `result-track:655feff1543323cfde21f41ef03a3bdfe4870c67dd30483c1f865b3f5b6acec3` |
| 51 | `theorem` | [flip](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/flip.md) | 369 | `result-track:2ed251925ca196dfdb6e91f664055ca5ba44cd840416af5e3dfb9812afb31c5b` |
| 52 | `theorem` | [flip_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/flip-iff-source-edition-2.md) | 372 | `result-track:c9274f4294dfa05e1f7757f4412ae4812660f0a19fe1a412cf74f4cdfd50f5ba` |
| 53 | `theorem` | [op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/op-source-edition-2.md) | 376 | `result-track:806af5c800352fc8b75e1887e3dc01e6b97fd5f3c1a707b2868aa461945f462b` |
| 54 | `theorem` | [unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/unop.md) | 381 | `result-track:058130f091ab5067037da9388362f2d4e48aeca8797ec2bd004255bdc66c724e` |
| 55 | `theorem` | [flip](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/flip-source-edition-2.md) | 393 | `result-track:5fe7dc222685a1e293c3c1c36340111721325dca4a7537a5b82cfa85b8342fac` |
| 56 | `theorem` | [flip_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/flip-iff.md) | 396 | `result-track:be040926f4460b716cd0a3c56a9fcad1442a78dc419bf0821dade37c48e1e63f` |
| 57 | `theorem` | [op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/op.md) | 399 | `result-track:4c39fe77be5cf6b6b6a1a684938b1c104820c9b76d50eb485368b9eefcd3a070` |
| 58 | `theorem` | [unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/unop-source-edition-2.md) | 405 | `result-track:9115ca4c13ee70fb55a56ec0aa4a94e481fc2f0cc85a2e133b40f2f5e5e25f3a` |
| 59 | `lemma` | [IsPullback.op_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/ispullback-op-iff.md) | 414 | `result-track:a91a44a13e509e48ec99a069afdb40b7d3f52eccbb5c14ae67ad88df9221b3e2` |
| 60 | `lemma` | [IsPullback.unop_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/ispullback-unop-iff.md) | 418 | `result-track:d11d64817cd0e1ed0366d31ff770a12337b14e7cb368eabe3152094809177f77` |
| 61 | `lemma` | [IsPushout.op_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/ispushout-op-iff.md) | 422 | `result-track:607393298548d3cf0f7047fe4fb825d67a5e17f9d1f21cfcf34731d9e2c1ed78` |
| 62 | `lemma` | [IsPushout.unop_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsPullbackDefsNamespacedPublic.lean/declarations/ispushout-unop-iff.md) | 426 | `result-track:53378500cf2025c20f544b7e8b1d7601b485de32efd64b7bd3466e4be52e55ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=743dea240884979b22deab2c70a19427fcb608c7351a96736185199911838096 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant5bff9c2e39fc0080fc3ade007b557ae788538116a0c08c39e652dbc22c7de056.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Defs/Variant5bff9c2e39fc0080fc3ade007b557ae788538116a0c08c39e652dbc22c7de056.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
