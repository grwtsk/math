# Verification target: Is Limit Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d260a878bda7df2fded444d9b58e9d08a2efa058",
  "lexical_observation_count": 81,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variantb98c1fdd6ce5415360b6acae4a2c7c0de1d52312dca2e0c103d62f0067fd5b9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d260a878bda7df2fded444d9b58e9d08a2efa058`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variantb98c1fdd6ce5415360b6acae4a2c7c0de1d52312dca2e0c103d62f0067fd5b9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variantb98c1fdd6ce5415360b6acae4a2c7c0de1d52312dca2e0c103d62f0067fd5b9a.lean.json)

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
| 1 | `structure` | [IsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/islimit.md) | 50 | `declaration-track:62e01ddfac9bcb236d365b060577169dbcae6c952d9845f03cba433c6f8ddeef` |
| 2 | `structure` | [IsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/iscolimit.md) | 62 | `declaration-track:9e40ad7dd341e0e4a0b33cba9f631f55970ba1db2599cbe99fb733d89fa286f5` |
| 3 | `instance` | [subsingleton](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/subsingleton.md) | 79 | `declaration-track:abbd47deff8cc1808a94fdc306098715ab580cb635dae2a0ef2ac87dfceca78d` |
| 4 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/map.md) | 87 | `declaration-track:19cb16e708d7fb9c16f6b760456a5d2f5c58357d560112c31293a960cfb8e57e` |
| 5 | `theorem` | [map_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/map-source-edition-2.md) | 91 | `result-track:ec3cc0ca356c235ba5594e3ee5b06e54bdf36842be42dbc4231ab321034bc819` |
| 6 | `theorem` | [lift_self](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/lift-self.md) | 96 | `result-track:3cec994560eb70400ffad293722298deb80db95bb55eb8a1300c5adb893a2a28` |
| 7 | `def` | [liftConeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/liftconemorphism.md) | 103 | `declaration-track:87514a136e6ccc60fb377a1f8d170589050f74537c600674fe8478a7c930f709` |
| 8 | `theorem` | [uniq_cone_morphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/uniq-cone-morphism.md) | 106 | `result-track:fe0f00cd916980e7353fe32ee7d47d7d033a37048c68b79a6998f4584efcff0d` |
| 9 | `theorem` | [existsUnique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/existsunique.md) | 113 | `result-track:f5c9065ec52d727238dd8d087038f6fb83ee5a4fc5b3a8dc40403d12fb784c83` |
| 10 | `def` | [ofExistsUnique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/ofexistsunique.md) | 119 | `declaration-track:36a0f9403fcdaa3b30160af05e150812cf812411fcb5e89db891472a8fbef7b8` |
| 11 | `def` | [mkConeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/mkconemorphism.md) | 133 | `declaration-track:464ebbbb117cb973a1e5d6353f43fdb5c9b2843fb4a46716c73dc20fdd632d6d` |
| 12 | `def` | [uniqueUpToIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/uniqueuptoiso.md) | 142 | `declaration-track:4506aabc2f88f5eaae038f1b2eb00a3bf7576f03bd1cd0aa7afe153bd6f6da83` |
| 13 | `theorem` | [hom_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/hom-isiso.md) | 150 | `result-track:3ce55cea887ea1d79ce0706559587e3a0a72bba1b0c211f0bfc14aa699b29bfb` |
| 14 | `def` | [conePointUniqueUpToIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/conepointuniqueuptoiso.md) | 155 | `declaration-track:c283c0ea92d961543ce6e6f940297e5e40704ae2afc4a776d8d2e39ed9cd7317` |
| 15 | `theorem` | [conePointUniqueUpToIso_hom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/conepointuniqueuptoiso-hom-comp.md) | 159 | `result-track:71532f1cdd36c880d456ffbdb5253c00724194d5ab486f1e835746010c36a8f1` |
| 16 | `theorem` | [conePointUniqueUpToIso_inv_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/conepointuniqueuptoiso-inv-comp.md) | 164 | `result-track:12d903bbf12967f9399e7a1a671a482194626968190442e0a731edc105915e91` |
| 17 | `theorem` | [lift_comp_conePointUniqueUpToIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/lift-comp-conepointuniqueuptoiso-hom.md) | 169 | `result-track:21ed06aa43cb6a0ad69057588e9604a597c0516e86b4119ebf886f0256ed201e` |
| 18 | `theorem` | [lift_comp_conePointUniqueUpToIso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/lift-comp-conepointuniqueuptoiso-inv.md) | 174 | `result-track:23acf91d637e66b4e3476c4aee1cb4844750bd2c84f0b9587045c080badb7628` |
| 19 | `def` | [ofIsoLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/ofisolimit.md) | 181 | `declaration-track:5ff77debdfe6e6d9d99fbe9e00ed294c8e26656f7d40b52941bf1fafbfb935cb` |
| 20 | `theorem` | [ofIsoLimit_lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/ofisolimit-lift.md) | 186 | `result-track:30a09c511f583687750fdd04c750e29ba0c0865edbc7c2c6c52a65b131f813bf` |
| 21 | `def` | [equivIsoLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/equivisolimit.md) | 192 | `declaration-track:23f4ac4e45838744feb847f5121e6081a8e4e69d53f9b09f092182349a9c5d69` |
| 22 | `theorem` | [equivIsoLimit_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/equivisolimit-apply.md) | 199 | `result-track:8b51e8543d876c164bbb2c9e8b73b1e1bd3b5fe8db0ee8f58efd3fe373a5efb8` |
| 23 | `theorem` | [equivIsoLimit_symm_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/equivisolimit-symm-apply.md) | 204 | `result-track:1b537f5903640d69c1a64aa724a25ed1501657f34b8ed97644e5de0dfc81729a` |
| 24 | `def` | [ofPointIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/ofpointiso.md) | 215 | `declaration-track:5e879d6b01ae4e1b2bba636da32a3ff1469c8f2d7f628df0c4510e757b61f79a` |
| 25 | `theorem` | [hom_lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/hom-lift.md) | 225 | `result-track:197a1b2e5d001b34543ed54f85050d95243ec5122718da7c76b7b140d977a0bc` |
| 26 | `theorem` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/hom-ext.md) | 233 | `result-track:68310e25f6f31c076cd39c6069a8e60d5f7c9148703e4ef5f31f967066664668` |
| 27 | `lemma` | [nonempty_isLimit_iff_isIso_lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/nonempty-islimit-iff-isiso-lift.md) | 239 | `result-track:8848feda7a7eb1515c9edebdd24cb65e6b323a40cc97fdecd8279738344a2abd` |
| 28 | `def` | [ofRightAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/ofrightadjoint.md) | 250 | `declaration-track:c009667d4ca05d008183e5bd08540153cabad2dfeefbb113dd7be14d39d2a4f8` |
| 29 | `def` | [ofConeEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/ofconeequiv.md) | 259 | `declaration-track:35b57d8e63b5d6a67c2da9481e83db4aef7f029ce0978e92835f5f3082eb3200` |
| 30 | `def` | [_root_.CategoryTheory.Limits.IsColimit.ofCoconeEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/root-categorytheory-limits-iscolimit-ofcoconeequiv.md) | 270 | `declaration-track:96b5e3225ec766d81af2920b3146e309a67dafb214fa5cbbbe4e2eb5d8ac8293` |
| 31 | `theorem` | [ofConeEquiv_apply_lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/ofconeequiv-apply-lift.md) | 280 | `result-track:6829154fcf810ed679453b168a89e861ca1d6c5f2a802fe67e9e626589f3e29e` |
| 32 | `theorem` | [ofConeEquiv_symm_apply_lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/ofconeequiv-symm-apply-lift.md) | 288 | `result-track:622d374c33c527a04c131297955eb13070340b3b1ffd28ebd25c109d6efa5b3b` |
| 33 | `def` | [postcomposeHomEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/postcomposehomequiv.md) | 305 | `declaration-track:5e5c328dc3951bebef026cebbaea8371245cb3d0df194a2ddfdcb552703dd97f` |
| 34 | `def` | [postcomposeInvEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/postcomposeinvequiv.md) | 316 | `declaration-track:bab06b0b92ba29ae2965a78bb19cd52b94ebdf2e95bf688a90ea9c4f32d29dfd` |
| 35 | `def` | [equivOfNatIsoOfIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/equivofnatisoofiso.md) | 327 | `declaration-track:9c0a63bcc6d2320b5f7ba291466a9f58653329aef1209139d6c5e8b4b743132d` |
| 36 | `def` | [conePointsIsoOfNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/conepointsisoofnatiso.md) | 338 | `declaration-track:489758ff4a76e6bb0aa7e84723f3c1e24dcb5206591c031fe9a2cd9e40c5a759` |
| 37 | `theorem` | [conePointsIsoOfNatIso_hom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/conepointsisoofnatiso-hom-comp.md) | 346 | `result-track:f06daa11f003e94a6ffc0652e259ab36383d6a58ee5a863460cd9a237e619e2f` |
| 38 | `theorem` | [conePointsIsoOfNatIso_inv_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/conepointsisoofnatiso-inv-comp.md) | 351 | `result-track:846b71695234480a3612a7a0c88883e4ea06b3814a7a6bcd3d975fe3825463dc` |
| 39 | `theorem` | [lift_comp_conePointsIsoOfNatIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/lift-comp-conepointsisoofnatiso-hom.md) | 356 | `result-track:a4f236e292b7e707330409330f5f1512ea507b79065e3fbb5b2f6a92e1bc2eb2` |
| 40 | `theorem` | [lift_comp_conePointsIsoOfNatIso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/lift-comp-conepointsisoofnatiso-inv.md) | 362 | `result-track:cd0ab7861e74d389a9e9a1db05b492e0e558f26d10344a85c4044b0ab11f8dbe` |
| 41 | `def` | [whiskerEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/whiskerequivalence.md) | 372 | `declaration-track:2649a4ef137e51eadcbabb23bc3d909ef7fda182dc8b7c7c2ea04534a2a9a929` |
| 42 | `def` | [_root_.CategoryTheory.Limits.IsColimit.whiskerEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/root-categorytheory-limits-iscolimit-whiskerequivalence.md) | 377 | `declaration-track:c8b78809e2007da84c35a0be0c690e7a26276768942a1e25a4b036ac8f69c444` |
| 43 | `def` | [ofWhiskerEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/ofwhiskerequivalence.md) | 382 | `declaration-track:6a1414f357300a19405912dce59d9189904ccfa193f68bab8ab352344e3382d3` |
| 44 | `def` | [_root_.CategoryTheory.Limits.IsColimit.ofWhiskerEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/root-categorytheory-limits-iscolimit-ofwhiskerequivalence.md) | 388 | `declaration-track:93a926965d00e90bd6bf52f1f3f53897efb73b6b43cce0e56bd880d493344160` |
| 45 | `def` | [whiskerEquivalenceEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/whiskerequivalenceequiv.md) | 396 | `declaration-track:8a797ef4500d09a6d375075e68dedf37427cc9e64dca0151c2513b584bd0679c` |
| 46 | `def` | [extendIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/extendiso.md) | 401 | `declaration-track:b2ee46db59efa3402689c8bc08daad319318bc192b7a2c35cb385168817b11d4` |
| 47 | `def` | [ofExtendIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/ofextendiso.md) | 407 | `declaration-track:4ba8abe19eb02853f9adbefdc86f3bbbe33f6b59220041e741341eeded82127f` |
| 48 | `def` | [extendIsoEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/extendisoequiv.md) | 413 | `declaration-track:dc699eed7fa9147a82e401ff46723fcd4b9067f5f6f35ca814f2cd9bfc95169c` |
| 49 | `def` | [conePointsIsoOfEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/conepointsisoofequivalence.md) | 437 | `declaration-track:22afdf37043578fa5d8b29499607e8137792faee256e8d9937d3756dd19a239c` |
| 50 | `def` | [homEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/homequiv.md) | 460 | `declaration-track:2cf71f725255bf7f6d40bf9806312af30dfbbe15fa44506ee855bd0bae11ec66` |
| 51 | `lemma` | [homEquiv_symm_π_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/homequiv-symm-app.md) | 467 | `result-track:cf59bd96bfa74e083d0f290de4725badfdd84185258f0694c3e5e59ff3aa4e47` |
| 52 | `lemma` | [homEquiv_symm_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/homequiv-symm-naturality.md) | 473 | `result-track:a3029bbdcdf57cb9156890639a737905b7037668011d2514c523251a38622d36` |
| 53 | `def` | [homIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/homiso-source-edition-2.md) | 483 | `declaration-track:6f63e96db1add4896ec2b0cfed4834f2c0e2f1aaf4ef093bf3eea4743adf1ead` |
| 54 | `theorem` | [homIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/homiso-hom-source-edition-2.md) | 488 | `result-track:fb25b3f13a43dc516d480f012a127b5a942611e6143ab805a5b748baa36f26e6` |
| 55 | `def` | [natIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/natiso.md) | 495 | `declaration-track:781f38e207cdb6b3398bb89123cccb22da9537d34958fb6ecd077bd9a7983fcd` |
| 56 | `def` | [homIso'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/homiso.md) | 500 | `declaration-track:54613864597570d635677aa5dec850ebb1c2261a9393d24e6cb975b9ca20bb8e` |
| 57 | `def` | [ofFaithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/offaithful.md) | 516 | `declaration-track:8e4e7eff07b99b3496ceff39419e81eebcfb8821a75325f16aae8f514846a7cf` |
| 58 | `def` | [mapConeEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/mapconeequiv.md) | 534 | `declaration-track:e43d6300e07c9fa0705d9bcd875c6c874353935bd36c42ddecd5b52d31f2fcdc` |
| 59 | `def` | [isoUniqueConeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/isouniqueconemorphism.md) | 543 | `declaration-track:1824593c92c16aee9af5eb575df01526a2dbacce2b827b5712f1746831c6bd09` |
| 60 | `def` | [coneOfHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/coneofhom.md) | 559 | `declaration-track:7532aeb044226546ee4932499db68b9fc046d8ded391788931bc9220cec36369` |
| 61 | `def` | [homOfCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/homofcone.md) | 564 | `declaration-track:1b2e6041a9664296bf80afafa184d318407602abbc410445bba18f38d90d0de1` |
| 62 | `theorem` | [coneOfHom_homOfCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/coneofhom-homofcone.md) | 568 | `result-track:8a8f6b05f43d4c6b0b416ead31e9244a237cd2637d009eea21f2cc027fb21bd5` |
| 63 | `theorem` | [homOfCone_coneOfHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/homofcone-coneofhom.md) | 576 | `result-track:5817deb0098d9ac886270642d029d85f974b6329025ef21e34b83ddddec01bc8` |
| 64 | `def` | [limitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/limitcone.md) | 582 | `declaration-track:1741352e38d626577e9ce698f0af57a6209ea0ee64993b1fada15e9b32cd5304` |
| 65 | `theorem` | [coneOfHom_fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/coneofhom-fac.md) | 587 | `result-track:d747146af6f836138bd66c57e2245f846b18d02b57982269dd26dd8b25f01451` |
| 66 | `theorem` | [cone_fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/cone-fac.md) | 595 | `result-track:1c61a569238df9f6cb0d99a8e9e7d18443e7a5686b8a5bd5705c50590fcc4b6a` |
| 67 | `def` | [ofRepresentableBy](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/ofrepresentableby.md) | 609 | `declaration-track:47042fb81e309c60adca46d785c27de6c63116e419f116f349871fcbbb9aeee3` |
| 68 | `def` | [representableBy](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/representableby.md) | 626 | `declaration-track:9f563adfd2d0129605748bd35ccd1cf972ec64f59a8b2732b620be9e655821a0` |
| 69 | `theorem` | [homIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/homiso-hom.md) | 642 | `result-track:00f7f81d301313c26c6a6b7a3f05f1c8440d9ae7c689d900d4b17cb72f20cc66` |
| 70 | `def` | [natIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/natiso-source-edition-2.md) | 649 | `declaration-track:c0a39a6b2b582a4ed6eeaddc254963b2f3f9cc6cdf8c08f370f0f0d96b84c91c` |
| 71 | `def` | [homIso'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/homiso-source-edition-3.md) | 654 | `declaration-track:76d9cd968577d780f14293f96c5a9ef69bafcf779e418017bfbe2295933f091a` |
| 72 | `def` | [isoUniqueCoconeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/isouniquecoconemorphism.md) | 668 | `declaration-track:9bd522743182b52d0a27a6178e973861ea3b36a116e05b309ba9c479fde3bd58` |
| 73 | `def` | [coconeOfHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/coconeofhom.md) | 684 | `declaration-track:db603d94de07447e5a861bcd28cf52b8bd5b6893b87ad60a9e4ab29b6a174bc3` |
| 74 | `def` | [homOfCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/homofcocone.md) | 689 | `declaration-track:ac8ba8e7cf2a6b14c6bca42dba4d164e2a89a3b55479c4556ce3e868b1470409` |
| 75 | `theorem` | [coconeOfHom_homOfCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/coconeofhom-homofcocone.md) | 693 | `result-track:f50ced38ba610f36329618083021dcbea467f93a8f731b62a027388c98d2ae33` |
| 76 | `theorem` | [homOfCocone_coconeOfHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/homofcocone-coconeofhom.md) | 701 | `result-track:2de0854c094eb4b95c58c08863ca7b42ebb3af775dab0cbdb21b15f347e8a8c9` |
| 77 | `def` | [colimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/colimitcocone.md) | 707 | `declaration-track:486782db7330667ca5614ce8bb7d980f63eade2bf2c2992d123b0d6a39a3533b` |
| 78 | `theorem` | [coconeOfHom_fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/coconeofhom-fac.md) | 712 | `result-track:fb78cff9f29359b3899364f95fc8c342febe5924183c975227987904c67a6982` |
| 79 | `theorem` | [cocone_fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/cocone-fac.md) | 720 | `result-track:3e1595c28b3280fb3566154a2bdfa56991464bde3a07d6319cd5c1ca2ed580a0` |
| 80 | `def` | [ofCorepresentableBy](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/ofcorepresentableby.md) | 734 | `declaration-track:aea7969a5ceafd945b69597a75a517bdca39cbd92f23412655be6cc3f304ae21` |
| 81 | `def` | [corepresentableBy](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsLimitPublic.lean/declarations/corepresentableby.md) | 752 | `declaration-track:ff0dcb173ad7f712392dc8a993a691a5354b7fc625e8163eac4d14d275974b26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fabb944d916dabd15cb0ce724162f8491f2186ad0df127db3ac4ce0d27efcf99 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variantb98c1fdd6ce5415360b6acae4a2c7c0de1d52312dca2e0c103d62f0067fd5b9a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/IsLimit/Variantb98c1fdd6ce5415360b6acae4a2c7c0de1d52312dca2e0c103d62f0067fd5b9a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
