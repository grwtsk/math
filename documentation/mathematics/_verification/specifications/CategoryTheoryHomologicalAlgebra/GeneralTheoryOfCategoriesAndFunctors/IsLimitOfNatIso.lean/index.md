# Verification target: Is Limit Of Nat Iso

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99af3ae8c3414304087b513eee2b9dc541385cae",
  "lexical_observation_count": 112,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variantb2cd32405c940b31413460701aabe8915ef9c506a78feccbc9881b443bf2eff7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99af3ae8c3414304087b513eee2b9dc541385cae`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variantb2cd32405c940b31413460701aabe8915ef9c506a78feccbc9881b443bf2eff7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variantb2cd32405c940b31413460701aabe8915ef9c506a78feccbc9881b443bf2eff7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Cones` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/islimit.md) | 57 | `declaration-track:a2099c9a7c905275094f134b653a3c3fce03ebb3494fbb34b5780318deb0605c` |
| 2 | `instance` | [subsingleton](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/subsingleton-source-edition-2.md) | 76 | `declaration-track:aec08b13b04a69e272c3b0f3a57b0bf90a873ba30497c6fb4fda8bb6799e8a55` |
| 3 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/map-source-edition-2.md) | 82 | `declaration-track:7df01194dccc38cbcd754dafd5d5c4824bfb783edb6d9ead00bc3361726f5a11` |
| 4 | `theorem` | [map_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/map-source-edition-4.md) | 87 | `result-track:d2cb234358df60977967caff2922a29f21af7b26c08fe962c3c3fcade621403e` |
| 5 | `theorem` | [lift_self](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/lift-self.md) | 92 | `result-track:bb3599685bc2000e55158a1508479e22727b2b869037a9bacfd33d4b04c7504e` |
| 6 | `def` | [liftConeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/liftconemorphism.md) | 99 | `declaration-track:257d3c43e17498b9fe1185ec9eb78ff590cd45b46b7a28071ae53502f833ef3b` |
| 7 | `theorem` | [uniq_cone_morphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/uniq-cone-morphism.md) | 102 | `result-track:a4907644eb133dfe83cd21d740c621660560c7b6132e632d5c8399f5e06288fd` |
| 8 | `theorem` | [existsUnique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/existsunique-source-edition-2.md) | 109 | `result-track:ddb46a9abe3b6b8ac8d52ef3baea697f5d863a3edcfa0c3136764a8a1fff4db0` |
| 9 | `def` | [ofExistsUnique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/ofexistsunique.md) | 115 | `declaration-track:189b7368f02812e075ed5a65fc74f35541cbcb7c79e9fb020468d07214fdf169` |
| 10 | `def` | [mkConeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/mkconemorphism.md) | 126 | `declaration-track:3964e8c4702fec189761d460c2159784ecf9871e9523a3a626f41fe039716459` |
| 11 | `def` | [uniqueUpToIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/uniqueuptoiso.md) | 137 | `declaration-track:32a6a4bb42a5aa8e0967fa47f8ace424f26fc24b2242b2a0c2ed21f1a0e8a90c` |
| 12 | `theorem` | [hom_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/hom-isiso.md) | 146 | `result-track:a6f3857ec6af98b4f2b5a2be23667293ffb38293a8f2abf6d8240fd7ba056200` |
| 13 | `def` | [conePointUniqueUpToIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/conepointuniqueuptoiso.md) | 151 | `declaration-track:4001753aa43d294e9628f1a728b78f7317cf2247ddfa1d07c447a1622108ecf8` |
| 14 | `theorem` | [conePointUniqueUpToIso_hom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/conepointuniqueuptoiso-hom-comp.md) | 156 | `result-track:2f9d5ebe9dcfa2165b2d579b3d101e5e0849f595f61a04b182235b3834a96e95` |
| 15 | `theorem` | [conePointUniqueUpToIso_inv_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/conepointuniqueuptoiso-inv-comp.md) | 162 | `result-track:cea93e3881acd613f037f81db8529c0b1ae5007e521110321c1477a22057e9c2` |
| 16 | `theorem` | [lift_comp_conePointUniqueUpToIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/lift-comp-conepointuniqueuptoiso-hom.md) | 168 | `result-track:18c3917376a5d2f3b8581ac62c3d85fb806c4cb652cd63c293c3184855f04ffa` |
| 17 | `theorem` | [lift_comp_conePointUniqueUpToIso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/lift-comp-conepointuniqueuptoiso-inv.md) | 174 | `result-track:0144b8c702ea87af839ad64d027e813800375d7272e1f1b4953e767eee1aa6b6` |
| 18 | `def` | [ofIsoLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/ofisolimit.md) | 180 | `declaration-track:e482d062b4d5bedcb5a1f6161df7d81f05abc55d14a430da91d7b15274847361` |
| 19 | `theorem` | [ofIsoLimit_lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/ofisolimit-lift.md) | 186 | `result-track:af909db9225ac81453d2868f2f21087c83829dc5d4fc8ad3c005e9e81bde5a66` |
| 20 | `def` | [equivIsoLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/equivisolimit.md) | 192 | `declaration-track:cb75ce8eec57af431e0479a411926338539123616f8548d34cc54e84864e80da` |
| 21 | `theorem` | [equivIsoLimit_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/equivisolimit-apply.md) | 200 | `result-track:1337eed4312e645fe9109009d354258cebf2d4c05e6a61e5beca64d07a827540` |
| 22 | `theorem` | [equivIsoLimit_symm_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/equivisolimit-symm-apply.md) | 206 | `result-track:53ee5e04aaa5587cfddb99b49805552f4b43d4cf9dbff81e9f1d8080a454c748` |
| 23 | `def` | [ofPointIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/ofpointiso-source-edition-2.md) | 214 | `declaration-track:beddfa6acc54b00e01269d24ce70916386c3633b9af4fdb666f79416ef8c847c` |
| 24 | `theorem` | [hom_lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/hom-lift.md) | 224 | `result-track:bd71c671c8e1ab078657ad59c22d734da7f46d989319cddcf217c83de3bf7ba3` |
| 25 | `theorem` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/hom-ext.md) | 231 | `result-track:92aa0fdab4554bb42363fd81c5d539553df1a4710e9c4e4908a5a5b76db6a99a` |
| 26 | `def` | [ofRightAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/ofrightadjoint.md) | 240 | `declaration-track:6b7c485d9a8893f7baf214af0e980a816ccc607b48c31d8df84978082f3d5672` |
| 27 | `def` | [ofConeEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/ofconeequiv.md) | 249 | `declaration-track:19a091567bdbb8dab2ebf23d1aadc840a82d5138034720047bab0d8193871cec` |
| 28 | `theorem` | [ofConeEquiv_apply_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/ofconeequiv-apply-desc.md) | 259 | `result-track:fa1e13017fb5c368d1c8d8864938caa2e4e6b6bd9abfe6e4ea737a7bd33d5ab6` |
| 29 | `theorem` | [ofConeEquiv_symm_apply_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/ofconeequiv-symm-apply-desc.md) | 268 | `result-track:c5852b23fe7a277b892e165e48f36960d61c192319b7878330bc9397e2c607af` |
| 30 | `def` | [postcomposeHomEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/postcomposehomequiv.md) | 278 | `declaration-track:08a6005472390ed96c8a6eabd7d9985ea57c4c8e31503f066159b4fb2d107887` |
| 31 | `def` | [postcomposeInvEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/postcomposeinvequiv.md) | 286 | `declaration-track:481a4472f3aea7e5965f7c1849252c2cce475537209d34acf79b9e9f7a24c599` |
| 32 | `def` | [equivOfNatIsoOfIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/equivofnatisoofiso.md) | 294 | `declaration-track:4e6ad1fff24a84ae0ef11011909a0d41d7a73381866a3aedd38fb6cf35bcaa10` |
| 33 | `def` | [conePointsIsoOfNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/conepointsisoofnatiso.md) | 303 | `declaration-track:37b0deda972c240bc4f8e9b6b616cc473c7e5b7ee172d9eaf26a80270c3fdb79` |
| 34 | `theorem` | [conePointsIsoOfNatIso_hom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/conepointsisoofnatiso-hom-comp.md) | 312 | `result-track:434cda7006b6125c3b8064e4f3615cf2e6a71029b94f58c5762433e173f740e6` |
| 35 | `theorem` | [conePointsIsoOfNatIso_inv_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/conepointsisoofnatiso-inv-comp.md) | 318 | `result-track:6e8f551cb7ade0c68854a4b132ca20f12cf0bb5217864820c7609305b13e7574` |
| 36 | `theorem` | [lift_comp_conePointsIsoOfNatIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/lift-comp-conepointsisoofnatiso-hom.md) | 324 | `result-track:0118011f612db157df18e736f183d0852ff2e2939a66b074b3490d17b1141540` |
| 37 | `theorem` | [lift_comp_conePointsIsoOfNatIso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/lift-comp-conepointsisoofnatiso-inv.md) | 331 | `result-track:632064c75ca6677b321045d7f6108fae50f0b8e95762b450ddf9c60c9409d0d5` |
| 38 | `def` | [whiskerEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/whiskerequivalence.md) | 343 | `declaration-track:7bf634b378c2ff2477012226571650641c66e982c790590d28a1f8f27dbfee8b` |
| 39 | `def` | [ofWhiskerEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/ofwhiskerequivalence-source-edition-2.md) | 349 | `declaration-track:9b02ff42a8a1b31fc3b39652d49fe542f115a415d50ce7eba3550a24833283ba` |
| 40 | `def` | [whiskerEquivalenceEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/whiskerequivalenceequiv-source-edition-2.md) | 356 | `declaration-track:dc9b991486354f29c73c11dfbbc6a9282be98d8ac3a2883f2d6320d2e11384c8` |
| 41 | `def` | [conePointsIsoOfEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/conepointsisoofequivalence.md) | 370 | `declaration-track:de76bb9f66b83a7a0d347b64be52814c7eed75938b300aa17c397f2aacb36692` |
| 42 | `def` | [homIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/homiso-source-edition-2.md) | 395 | `declaration-track:5adf19132b514db47bd91af81d7d81c0299cf06cebef2330f87bd37be8ebc9c1` |
| 43 | `theorem` | [homIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/homiso-hom.md) | 404 | `result-track:60cc46e418a7e7f29f8fb540d904fdf4f742c345d5dbeb4e7241d55dab31b4c9` |
| 44 | `def` | [natIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/natiso-source-edition-2.md) | 411 | `declaration-track:fb4f6c8b3bad1d8c653a6db48adca4ed0729327abb2fc3cad206406f55d29254` |
| 45 | `def` | [homIso'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/homiso-source-edition-4.md) | 418 | `declaration-track:f104b3292fe666e9728fd151ec69027880b8d4075748722bb1de5378ef8a66e1` |
| 46 | `def` | [ofFaithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/offaithful.md) | 432 | `declaration-track:47840daee34c45d210c6b7b5befb8d5cf8ba303a5312e19f6eb2d81836c45d86` |
| 47 | `def` | [mapConeEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/mapconeequiv.md) | 447 | `declaration-track:bb4a662025ae2bc3d43e16c61151304690e45af59d5f295d3ae226e4a1699dc8` |
| 48 | `def` | [isoUniqueConeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/isouniqueconemorphism.md) | 456 | `declaration-track:3dc3d1c6c468bc3b76278a1327e9441e444674dee3e6697507764844b0356b9d` |
| 49 | `def` | [coneOfHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/coneofhom.md) | 471 | `declaration-track:ae1dc89363492be30942ffbaba01b1ffbc6d649395c1088370a533d4cbaf670b` |
| 50 | `def` | [homOfCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/homofcone.md) | 477 | `declaration-track:fa074a58fcfe958ebcd565eb7a353012b23195d1579512a71323172616550c80` |
| 51 | `theorem` | [coneOfHom_homOfCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/coneofhom-homofcone.md) | 482 | `result-track:afde8a344e0421b887a5822ed8a7a9854389b8edb2e5f8a4b34336ab912ac211` |
| 52 | `theorem` | [homOfCone_coneOfHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/homofcone-coneofhom.md) | 491 | `result-track:f96e8684db4629cf554247ff3d1b6d5a61150735799a15f256863fffe0b4706d` |
| 53 | `def` | [limitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/limitcone.md) | 497 | `declaration-track:0c926f7e0e849d2903dae8e1ee4133d635928513041a507f0742bc14d64227e5` |
| 54 | `theorem` | [coneOfHom_fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/coneofhom-fac.md) | 503 | `result-track:b0fdeff24e057eee2035bf7361f78cbde87b75e09148d19139104dea29f7226d` |
| 55 | `theorem` | [cone_fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/cone-fac.md) | 515 | `result-track:43896ee04bb9051e718795198d93116283678669c982f3f9070512762bddff28` |
| 56 | `def` | [ofNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/ofnatiso.md) | 530 | `declaration-track:540140c1647af3d8a450a001ee752744f1990ec5a3f2bc0af1ddaaaeed463125` |
| 57 | `structure` | [IsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/iscolimit.md) | 556 | `declaration-track:afc886e090b53cea70a25cc9e822daa536a7a722a8f2c7ee91503c55e9a68d12` |
| 58 | `instance` | [subsingleton](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/subsingleton.md) | 576 | `declaration-track:a7280b62ae8812c94149385bfbb6d5ab57eb8d5c75b8efbbad34ab55ced5d846` |
| 59 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/map-source-edition-3.md) | 582 | `declaration-track:a2a61de07f6785dcd280882c713155d9544f8026614bdd16517c9bd11362a52c` |
| 60 | `theorem` | [ι_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/map.md) | 587 | `result-track:292b098ab0769e3be22ee56ea25c06e1b594eafa1817bf9586d8339362720070` |
| 61 | `theorem` | [desc_self](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/desc-self.md) | 593 | `result-track:4f7d1798d2a1a46a17dc5b30761b2b22c9394ffbd908077caa6817576e99caea` |
| 62 | `def` | [descCoconeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/desccoconemorphism.md) | 600 | `declaration-track:92a73d411f0b61659425c0b777875e57d1b832ef7e3e9b2cfee5da6e81740ae2` |
| 63 | `theorem` | [uniq_cocone_morphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/uniq-cocone-morphism.md) | 603 | `result-track:c95281a9796a128d164d6ad6efddd50190628f959616c410e6ba0ac13521472b` |
| 64 | `theorem` | [existsUnique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/existsunique.md) | 610 | `result-track:922a936d899910e37b17d6a91f034fada4322fcac647c19fab6e3bb59a34771b` |
| 65 | `def` | [ofExistsUnique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/ofexistsunique-source-edition-2.md) | 616 | `declaration-track:5cdeff87e57b606d189ff024405b42438a468c42a6d9715c2c7899590be53299` |
| 66 | `def` | [mkCoconeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/mkcoconemorphism.md) | 627 | `declaration-track:154f0bec331534c472c38932a02522413c17290a687a3d3285f74febbe458fb9` |
| 67 | `def` | [uniqueUpToIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/uniqueuptoiso-source-edition-2.md) | 638 | `declaration-track:510dd451acba76b2aac12593c33cfb56bdf9b4d2316c8363250d7f87ba1048aa` |
| 68 | `theorem` | [hom_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/hom-isiso-source-edition-2.md) | 647 | `result-track:c177b5010a0071effe32f485e91fe827c2586e06508a2716f18bf207c9a50ba8` |
| 69 | `def` | [coconePointUniqueUpToIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/coconepointuniqueuptoiso.md) | 652 | `declaration-track:d4cc51970136c9482996cf7e1daa097415817c6b05f1e2759554050d2f566631` |
| 70 | `theorem` | [comp_coconePointUniqueUpToIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/comp-coconepointuniqueuptoiso-hom.md) | 657 | `result-track:3bbfb291352cdb185df41c43d52b18dda681836c11f140959af9315c083f1046` |
| 71 | `theorem` | [comp_coconePointUniqueUpToIso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/comp-coconepointuniqueuptoiso-inv.md) | 663 | `result-track:8596923eb888011a0e597dc0fb71412a59035bbda0d23bcdd513aba6c2a43529` |
| 72 | `theorem` | [coconePointUniqueUpToIso_hom_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/coconepointuniqueuptoiso-hom-desc.md) | 669 | `result-track:061ab01b9da2869932d9c534de9cdeeecd553845ff5893cd8b0eb1acbe7bad3c` |
| 73 | `theorem` | [coconePointUniqueUpToIso_inv_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/coconepointuniqueuptoiso-inv-desc.md) | 675 | `result-track:a35b19478b519a2eacd3fbc861b29d392de03dcfea100bc230ac34d754d1e535` |
| 74 | `def` | [ofIsoColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/ofisocolimit.md) | 681 | `declaration-track:571e14f4abedf130d3aa49cb017b3fa09670cad22a68593dfea49290ea934f19` |
| 75 | `theorem` | [ofIsoColimit_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/ofisocolimit-desc.md) | 687 | `result-track:5ff6b8c49fec8d5d24b0bf032c3deb255740ef8e18b4fecef48111d1b06b3dd4` |
| 76 | `def` | [equivIsoColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/equivisocolimit.md) | 693 | `declaration-track:65c1d0c6bb5b1ba9c09f371fe7b982e0e63c017017f5a74ac8787b0bf2fb53a4` |
| 77 | `theorem` | [equivIsoColimit_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/equivisocolimit-apply.md) | 701 | `result-track:d6c550b29f31f74973bdebdb55a513f8e09a4c401f93e2cffeea9b651a4f7f75` |
| 78 | `theorem` | [equivIsoColimit_symm_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/equivisocolimit-symm-apply.md) | 707 | `result-track:87353ba713e857b8208a87ed4458eeb5107e405fc52ee2222024aa476a71317a` |
| 79 | `def` | [ofPointIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/ofpointiso.md) | 715 | `declaration-track:9549f74ede8bee9962f4f46046a2edf34a9bbf4145bc729d351038ba7a8ad9ea` |
| 80 | `theorem` | [hom_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/hom-desc.md) | 724 | `result-track:224ca7def1cf0c4f7da150b7b42b74c909fd3fb3c16aaa5b1bf0ac023ff1c837` |
| 81 | `theorem` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/hom-ext-source-edition-2.md) | 741 | `result-track:cc753c604e6bbc056cdcc433a345633bdf9b68c5750c583c4fe9f1344c2c5433` |
| 82 | `def` | [ofLeftAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/ofleftadjoint.md) | 749 | `declaration-track:2777148693688abf3ce7cd36ce8c5786e7ce68fd677ab41ca2fd723cc33ed041` |
| 83 | `def` | [ofCoconeEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/ofcoconeequiv.md) | 759 | `declaration-track:3ffa435b252c84bae073b74046d2fa83070a2ab484812a5cc15eb4172504830a` |
| 84 | `theorem` | [ofCoconeEquiv_apply_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/ofcoconeequiv-apply-desc.md) | 769 | `result-track:776a80e59c805c0ac61586ef617d7b542b8509cece4822437ec822487bdbe2cf` |
| 85 | `theorem` | [ofCoconeEquiv_symm_apply_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/ofcoconeequiv-symm-apply-desc.md) | 778 | `result-track:f6397a78ae3e6e03c3057280bebd8f9a477dfa4719062782f85ef06dbf1f904d` |
| 86 | `def` | [precomposeHomEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/precomposehomequiv.md) | 788 | `declaration-track:7f6f00eb3204d8ffceaec0e565b1a7dacd524e00eba57d817b7fb59f7e5813bd` |
| 87 | `def` | [precomposeInvEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/precomposeinvequiv.md) | 796 | `declaration-track:0e4ea87b2299c22d6c31f21efd4ef30288146ebae22febc5ee7b4deaaccff4c1` |
| 88 | `def` | [equivOfNatIsoOfIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/equivofnatisoofiso-source-edition-2.md) | 804 | `declaration-track:60858440d9ba3c9f0f4c0bee0fb92f50bda24505350c6c96ef81b3bf2816b2a1` |
| 89 | `def` | [coconePointsIsoOfNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/coconepointsisoofnatiso.md) | 813 | `declaration-track:9cf8b1f209f841fc2757c1982aab877d59f54e91c3ec56eab043209c10ecb48c` |
| 90 | `theorem` | [comp_coconePointsIsoOfNatIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/comp-coconepointsisoofnatiso-hom.md) | 823 | `result-track:61a27ad575842f1688d628fb8cdb2719f296da969180ec6ea20ba5c85af0510f` |
| 91 | `theorem` | [comp_coconePointsIsoOfNatIso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/comp-coconepointsisoofnatiso-inv.md) | 829 | `result-track:d869e8c5350a3102dcf7da43ab7160404adbf078b16cb192c5ffe07f92d40090` |
| 92 | `theorem` | [coconePointsIsoOfNatIso_hom_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/coconepointsisoofnatiso-hom-desc.md) | 835 | `result-track:861c95b32d4c473188eb6fc07ce7db3a91cbdae1b0ea651b633b2c25fae90a88` |
| 93 | `theorem` | [coconePointsIsoOfNatIso_inv_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/coconepointsisoofnatiso-inv-desc.md) | 842 | `result-track:4ffa45a6535a7a9351906a518f96feeb44db8483f06412cfe03b884ec11b800c` |
| 94 | `def` | [whiskerEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/whiskerequivalence-source-edition-2.md) | 854 | `declaration-track:934f213c062ed3fac15329e2747f81b42091fa3c3093d99acdc36cc47e6bf09a` |
| 95 | `def` | [ofWhiskerEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/ofwhiskerequivalence.md) | 861 | `declaration-track:50b586a8469d167e90ec838303c63b8e5c60bd1b03912b6f46b3b80229e7d6c6` |
| 96 | `def` | [whiskerEquivalenceEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/whiskerequivalenceequiv.md) | 869 | `declaration-track:7bf656f05c100e2052a72e25e0051410e422f1c65aaf0bb34888306b49b255eb` |
| 97 | `def` | [coconePointsIsoOfEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/coconepointsisoofequivalence.md) | 884 | `declaration-track:72c922be94caa50fe30db106ffbc59962fa715078ecfe1524830dcc3224941ac` |
| 98 | `def` | [homIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/homiso-source-edition-3.md) | 907 | `declaration-track:b9408e0e712d00684e677d815e00439e889048983eecfd23cce6d6510fbcbd41` |
| 99 | `theorem` | [homIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/homiso-hom-source-edition-2.md) | 918 | `result-track:8a6cacdbe84f7fa78d208afbe3428bfb1a8afc64190257b940f4bd5f817f7851` |
| 100 | `def` | [natIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/natiso.md) | 925 | `declaration-track:eb27d7521c03193d52a2af83cd24167cc54ec7fe2e537777df3a0a9b12ead1a5` |
| 101 | `def` | [homIso'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/homiso.md) | 932 | `declaration-track:2a3a859570d341b73925312830b95564cb0a8d922c1891ac003234a7f7a9afa4` |
| 102 | `def` | [ofFaithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/offaithful-source-edition-2.md) | 946 | `declaration-track:dad35a48c3037a3f8b89f0a9c6beb9b06a9253bc6682a73905bb488aa34157cf` |
| 103 | `def` | [mapCoconeEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/mapcoconeequiv.md) | 961 | `declaration-track:73c95cc34b419bed3545c11b6824d104c12ca3f641681271bb5e60cc66cba763` |
| 104 | `def` | [isoUniqueCoconeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/isouniquecoconemorphism.md) | 970 | `declaration-track:827f03bd3c238ffb691160ca96eb9ddd267c9f182fd959cb654806bda74ec531` |
| 105 | `def` | [coconeOfHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/coconeofhom.md) | 985 | `declaration-track:57f263039e331eade3a95d941a83e62b2be76efbc6ab36c54d3c35e0905f37d3` |
| 106 | `def` | [homOfCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/homofcocone.md) | 991 | `declaration-track:f120c5c32e30890ea3b40dbf05399dccb946fb42f61276301a92caccdc081ab8` |
| 107 | `theorem` | [coconeOfHom_homOfCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/coconeofhom-homofcocone.md) | 996 | `result-track:3a62656185ac5a6aa65186fb7e4970a2489d710a029821787114db0e7d813338` |
| 108 | `theorem` | [homOfCocone_cooneOfHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/homofcocone-cooneofhom.md) | 1004 | `result-track:62d6a9afadef28e94122729ff727068270d1371a2c60e5e405b58001d6abb72f` |
| 109 | `def` | [colimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/colimitcocone.md) | 1010 | `declaration-track:407a25e87037ea42b650d1c4bade4856ce78e98d8ad804c6f1c5eb303bf7e233` |
| 110 | `theorem` | [coconeOfHom_fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/coconeofhom-fac.md) | 1016 | `result-track:065a54ce918559ff03cab0372e58d74ea947032fe08b9d4c5ad75e45c6510486` |
| 111 | `theorem` | [cocone_fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/cocone-fac.md) | 1028 | `result-track:28da8edbe4195556124b30be9c7546be98124a0b027cc770084698faa8e3504e` |
| 112 | `def` | [ofNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitOfNatIso.lean/declarations/ofnatiso-source-edition-2.md) | 1043 | `declaration-track:63a50360f0268b852b87485248ed972c397c9cf6136e585ec8bfee689b3f2707` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cf4fd797c92c74dc38ac678d3098dabc281272532917364a70d20cd3ff755b6a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variantb2cd32405c940b31413460701aabe8915ef9c506a78feccbc9881b443bf2eff7.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variantb2cd32405c940b31413460701aabe8915ef9c506a78feccbc9881b443bf2eff7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
