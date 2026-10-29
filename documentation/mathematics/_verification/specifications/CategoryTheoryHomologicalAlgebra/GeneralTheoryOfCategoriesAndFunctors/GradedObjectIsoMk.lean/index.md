# Verification target: Graded Object Iso Mk

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8ca7a42b9e01c64e0fa3e8193e2e2765c35f9e5",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variant31d20efb8ce83684059fac8df4b91e38903a2d27274fab37a2af5e3df92341f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8ca7a42b9e01c64e0fa3e8193e2e2765c35f9e5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variant31d20efb8ce83684059fac8df4b91e38903a2d27274fab37a2af5e3df92341f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variant31d20efb8ce83684059fac8df4b91e38903a2d27274fab37a2af5e3df92341f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ConcreteCategory.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Subsingleton` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Int.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [GradedObject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/gradedobject.md) | 40 | `declaration-track:feeedbb2e0d6312eba35918659b7e9943493d555708d520feb698898157faca7` |
| 2 | `instance` | [inhabitedGradedObject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/inhabitedgradedobject.md) | 44 | `declaration-track:6070109ecf0de3c1f91cee58301c3c795feb24dc217e74e4f42dc2a8784e8e91` |
| 3 | `abbrev` | [GradedObjectWithShift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/gradedobjectwithshift.md) | 53 | `declaration-track:fc387e73aec36a529dfff4dc95eea39b08f0f2f7d2c8717a617b2e56ca03b2ad` |
| 4 | `instance` | [categoryOfGradedObjects](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/categoryofgradedobjects.md) | 61 | `declaration-track:f376f7935c9c9ce2fb8d57664510b40f88b42c14608c78ac4e9e6330197261ad` |
| 5 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/hom-ext.md) | 65 | `result-track:f15dc61313b6fb0af261aedd30063b133e08173bc45860f31d246b794c330796` |
| 6 | `def` | [eval](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/eval.md) | 71 | `declaration-track:6146a6158d3f789eeddd331dd7a3a38968757d723d45511b0b392e0bd889f188` |
| 7 | `def` | [isoMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/isomk.md) | 81 | `declaration-track:ecd202ab8fa27c6df782531ca505b2e43ff83f642ea350ce78c47aa482ee06e7` |
| 8 | `lemma` | [isIso_of_isIso_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/isiso-of-isiso-apply.md) | 88 | `result-track:77a02da2ab5feaeb67f8080d888cb374258afd9fd7d00a326913a650b30b0df8` |
| 9 | `instance` | [isIso_apply_of_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/isiso-apply-of-isiso.md) | 93 | `declaration-track:d69ae41f2a1797580708c6c83212a082fe082372b1597a5f52c0409746319397` |
| 10 | `lemma` | [hom_inv_id_eval](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/hom-inv-id-eval.md) | 107 | `result-track:0cfe3091f3587d1169622156c6ada899976757a09968ab70930eb91ad748cd9a` |
| 11 | `lemma` | [inv_hom_id_eval](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/inv-hom-id-eval.md) | 113 | `result-track:32b48c3bfa16be33b0eb975bc9771c834c822e1af2ce261dec83927b9bb51008` |
| 12 | `lemma` | [map_hom_inv_id_eval](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/map-hom-inv-id-eval.md) | 119 | `result-track:22fd40a05896c2d29d34c734a060602ca12d05afec7c6448812609f1386358f8` |
| 13 | `lemma` | [map_inv_hom_id_eval](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/map-inv-hom-id-eval.md) | 125 | `result-track:ecb14cd19d7abc3d34e50113dc00929f2bff4c860a2da1535703a5c903200a66` |
| 14 | `lemma` | [map_hom_inv_id_eval_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/map-hom-inv-id-eval-app.md) | 131 | `result-track:0c85ceafac455d6d6b12b85c960fc00a18eda2699409e8f944cd05fbbc743739` |
| 15 | `lemma` | [map_inv_hom_id_eval_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/map-inv-hom-id-eval-app.md) | 137 | `result-track:e351d5cfc3541d82f184126ce4b6fdbb74bdfc93868674c65cebd318fe822057` |
| 16 | `abbrev` | [comap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/comap.md) | 153 | `declaration-track:a224d65a83ea491ae3582f2fc53319969a1700a63cce77cc2c1001e02a8bece5` |
| 17 | `theorem` | [eqToHom_proj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/eqtohom-proj.md) | 157 | `result-track:19b79931e747729cb7c59d586b9a3e03d8e0793da02fb5d9c69027e98e3f9ee0` |
| 18 | `def` | [comapEq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/comapeq.md) | 166 | `declaration-track:ebbf737e4365ce4d958a5e85b5db4c2939044ee897bd4d243ada3448a173a03a` |
| 19 | `theorem` | [comapEq_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/comapeq-symm.md) | 170 | `result-track:a88b6f1405e78d3b76e430cd652230c6ee6add8175086d6efad8d37ab44ef61e` |
| 20 | `theorem` | [comapEq_trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/comapeq-trans.md) | 173 | `result-track:55e1e7e9be6d36a38c2154e8de1b11db50842073579ba0b9809ac8af02e7130a` |
| 21 | `theorem` | [eqToHom_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/eqtohom-apply.md) | 176 | `result-track:463dc62947d19d1b50b14aaf9ff6ca0e06ce9cf918e57caf856b13e1b0749875` |
| 22 | `def` | [comapEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/comapequiv.md) | 185 | `declaration-track:2b547cdb39340a4aa6b1da7dac1755186e7ef862bfdf75a987a684a202fac634` |
| 23 | `instance` | [hasShift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/hasshift.md) | 195 | `declaration-track:4b3b59d61fe4921b58f2d0984680a8af2a8f52e994a5e74c93ec85cd985951c0` |
| 24 | `theorem` | [shiftFunctor_obj_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/shiftfunctor-obj-apply.md) | 203 | `result-track:462eba5da3236147abc564e3ba775004f05cb347cee141a72659581aeb389815` |
| 25 | `theorem` | [shiftFunctor_map_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/shiftfunctor-map-apply.md) | 208 | `result-track:4c67d7971aba6bce542870db005526a3438486de9e535bd9996e837b427d3ca7` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/instance.md) | 213 | `declaration-track:3985a2c0ecf76d997b5db5814731e88dc6bd9f03c1e8992abc2f23408387089a` |
| 27 | `theorem` | [zero_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/zero-apply.md) | 217 | `result-track:1ef8de8d55c4e17424be99af954bf92f557237a62c2020b519141b9c96162480` |
| 28 | `instance` | [hasZeroMorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/haszeromorphisms.md) | 221 | `declaration-track:5a3a843a45b4048496f1263a5587e51fe14d1fc74bf656920ea80d22b4a6cda3` |
| 29 | `instance` | [hasZeroObject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/haszeroobject.md) | 228 | `declaration-track:a5a8a1d51bb7a189f6187a7fb7e950b478a977af30cda427aa1b3d3d3f50ca1d` |
| 30 | `def` | [total](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/total.md) | 250 | `declaration-track:b4b8596f1362a2a9225d44e34aef04b4c4f6a991173c0188ba804097dfe873a5` |
| 31 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/instance-source-edition-3.md) | 263 | `declaration-track:94dc7935d79c9ab1094efe5349241beee1a38a5ca44701e772ce7e761e4408ec` |
| 32 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/instance-source-edition-2.md) | 281 | `declaration-track:7db1f8ba3d25f0d6534d4c48c99c28841ebdcb8cdaa6f3ac9d47a8db690a6ec6` |
| 33 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/instance-source-edition-4.md) | 283 | `declaration-track:c604d0c880bb31b5b5793bec8754f7c77500b129ca81f85f6b068044c1d89423` |
| 34 | `abbrev` | [mapObjFun](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/mapobjfun.md) | 296 | `declaration-track:3a8e086504abff9e35b4e3bfe73bb08e71a565a25e097747c4faeb6cb5744bdf` |
| 35 | `abbrev` | [HasMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/hasmap-source-edition-2.md) | 302 | `declaration-track:dd0b36b22dd408696711b210a1a4de30f51e25ad89a99b23d24fdba699ef83ab` |
| 36 | `lemma` | [hasMap_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/hasmap-of-iso.md) | 305 | `result-track:bfbb95d792cab10e6e99ea8bd0390e26463b79450fed0df3ea5b1435ca1579f6` |
| 37 | `def` | [mapObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/mapobj-source-edition-2.md) | 315 | `declaration-track:e76adb4e82bcde5b4f9fcd4a55cfcaced4e03f5ad82268b4d3982aebfd5ea865` |
| 38 | `def` | [ιMapObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/mapobj.md) | 319 | `declaration-track:bd5e5705bd39318a930cc4cc8f4be0be00ab20ca63063220b9fb078e3e3ecb26` |
| 39 | `abbrev` | [CofanMapObjFun](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/cofanmapobjfun.md) | 325 | `declaration-track:8e5c2247b46d41ccbeadecaabadba8f2f271fcaaeea0402f8a4d9d0c17d790af` |
| 40 | `def` | [CofanMapObjFun.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/cofanmapobjfun-mk.md) | 331 | `declaration-track:98a3bc5ea75011f45cd55c2a7e93b34bf760812a772619e996893f4552b51124` |
| 41 | `def` | [cofanMapObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/cofanmapobj.md) | 337 | `declaration-track:7e1d7f4c49586fc82bd437e6918baad5c2ca7c723ceb2f6f5206cca5afdf5766` |
| 42 | `def` | [isColimitCofanMapObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/iscolimitcofanmapobj.md) | 342 | `declaration-track:1673efb2e1a7c1cb3bad121d88487bd88ef32b01d133f885a19d839e44fa0591` |
| 43 | `lemma` | [mapObj_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/mapobj-ext.md) | 346 | `result-track:2f529ea48e60e02a8beaf7b091f5d7d482fb300ba7dd7c5e19b777fe55e88984` |
| 44 | `def` | [descMapObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/descmapobj.md) | 353 | `declaration-track:4b9d253859c8ef95ba172f5d87e58e771e41920d3d2bbfa7df7c693d5655d6ce` |
| 45 | `lemma` | [ι_descMapObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/descmapobj-source-edition-2.md) | 358 | `result-track:4e91a9027de5837aa391a532735598ec47c025f89ae72c58a822985c2c9c755e` |
| 46 | `lemma` | [hasMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/hasmap.md) | 366 | `result-track:695214655d2250951c362337218cfcf88dedccb07628e57ba3d553be6dc0cef3` |
| 47 | `def` | [iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/iso.md) | 375 | `declaration-track:548db7ee8d9ad719f67938421dc3fb23005cb4a14f537c9a16e9e709d0c99420` |
| 48 | `lemma` | [inj_iso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/inj-iso-hom.md) | 379 | `result-track:281f6491458e07212ebf5371374d9ef578b7a3e1e9094144247a2d11ec629e6d` |
| 49 | `lemma` | [ιMapObj_iso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/mapobj-iso-inv.md) | 384 | `result-track:0e09f4440e8d0ca56cd8084aa70b04b05862a441585917b188dc19c689d2338e` |
| 50 | `def` | [mapMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/mapmap.md) | 395 | `declaration-track:b830847e32ed1a6fe93f4108746079db0fa9cfc8aad016f52a2a226bfc3359d9` |
| 51 | `lemma` | [ι_mapMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/mapmap-source-edition-2.md) | 399 | `result-track:ec386d1d91cb7aeffa3b3ad1c41992d92aec8a442bbcca8d438236aa349a8386` |
| 52 | `lemma` | [congr_mapMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/congr-mapmap.md) | 403 | `result-track:5535de5b2f80de489cc12a9c4a54411437fb6c80fb259a08e37f73c035ff4b05` |
| 53 | `lemma` | [mapMap_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/mapmap-id.md) | 410 | `result-track:8d7d8e266a3fc5f224a27f2d19bf252b07eb9d72c391b3ffb188f7ab6b78ddc0` |
| 54 | `lemma` | [mapMap_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/mapmap-comp.md) | 415 | `result-track:39b60502714205ab587dfae0d2d5ce1936103ddea4db3d5fa2a7c8d1849a2fe7` |
| 55 | `def` | [mapIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/mapiso.md) | 420 | `declaration-track:28b32e6e2784a6d1e101191d8ef811dc96abd783cd0082ac97d25f443b8490f7` |
| 56 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/map.md) | 430 | `declaration-track:98d5098d5ea54eb8c93e801c35b1374d020f01a19e891d3de1d0627be754a479` |
| 57 | `def` | [cofanMapObjComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/cofanmapobjcomp.md) | 450 | `declaration-track:daabced46dc723f04fbf61031656e1c2a962d9fe69befa6af746a88fde6b7a3f` |
| 58 | `def` | [isColimitCofanMapObjComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/iscolimitcofanmapobjcomp.md) | 462 | `declaration-track:e1e010dc380f4ec1d776ed5dec360fb370c42c22d152c98adf6e92dde4157a83` |
| 59 | `lemma` | [hasMap_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/hasmap-comp.md) | 481 | `result-track:5697e34d39e426949935f3e8d9b9da0de8d4bdd6f2bd76c56a089ae1cffc0802` |
| 60 | `def` | [ιMapObjOrZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/mapobjorzero.md) | 490 | `declaration-track:f83812ff6bfcb4c22b8282841bcadaecad2aad63ab3f22db0b1d61b7fdfd5920` |
| 61 | `lemma` | [ιMapObjOrZero_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/mapobjorzero-eq.md) | 495 | `result-track:00ca9041d5c0f32146d136c43304102d71638b8aa61eeaa1d6409810e7249f76` |
| 62 | `lemma` | [ιMapObjOrZero_eq_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/mapobjorzero-eq-zero.md) | 497 | `result-track:9c934934d6d22d658e80b792722889bdd50c638b87aec91e613c015f8981a25e` |
| 63 | `lemma` | [ιMapObjOrZero_mapMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectIsoMk.lean/declarations/mapobjorzero-mapmap.md) | 501 | `result-track:820bb8fb7c52cb8b678f8cfe49ca8fde23442bb83c831eb8931269e573a4d702` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3725e70541e091546d572ebde31668ad95f6e58df02188c63b77b21ab1c1eb72 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variant31d20efb8ce83684059fac8df4b91e38903a2d27274fab37a2af5e3df92341f9.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variant31d20efb8ce83684059fac8df4b91e38903a2d27274fab37a2af5e3df92341f9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
