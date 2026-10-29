# Verification target: Pasting Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06835e66c01a91ba1ea771cb87ba5a07f2347311",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variant856e520beb61c767cd56082ec5ea1e5b894a36fb165bd60d5abbf4b528b6958f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06835e66c01a91ba1ea771cb87ba5a07f2347311`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variant856e520beb61c767cd56082ec5ea1e5b894a36fb165bd60d5abbf4b528b6958f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variant856e520beb61c767cd56082ec5ea1e5b894a36fb165bd60d5abbf4b528b6958f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.HasPullback` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PullbackCone.pasteHoriz](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/pullbackcone-pastehoriz.md) | 69 | `declaration-track:152398a8dabcf2cdd8044760ffb6bb8bb247e0239daf996cc7cf6997722b5c51` |
| 2 | `def` | [pasteHorizIsPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/pastehorizispullback.md) | 94 | `declaration-track:428a680a06cc18765ea64428a49d71983f0a53e1d4f1a02908feafcf18e5c25b` |
| 3 | `def` | [leftSquareIsPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/leftsquareispullback.md) | 122 | `declaration-track:eac5bde87326448b405eb41d08042f1eafa8e49ca4411b0c4352ff70e49a58d1` |
| 4 | `def` | [pasteHorizIsPullbackEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/pastehorizispullbackequiv.md) | 141 | `declaration-track:b00948ac80f527b8a01328a75e32559eb21d447d0cb74ff33afeaa6bef83155f` |
| 5 | `abbrev` | [PullbackCone.pasteVert](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/pullbackcone-pastevert.md) | 170 | `declaration-track:64b651a2739f86eb74a524b5f87f2aa618fe3fa5e0e6577bad61375b7be25504` |
| 6 | `def` | [PullbackCone.pasteVertFlip](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/pullbackcone-pastevertflip.md) | 187 | `declaration-track:b1febb1269e61315133f156eb7907f902e28f51e17f28ca7941e48eee7713f5a` |
| 7 | `def` | [pasteVertIsPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/pastevertispullback.md) | 206 | `declaration-track:b53cf3a8b0604c91f2e38c34e06e83676c8c4784172e638819a10d398ffd2509` |
| 8 | `def` | [topSquareIsPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/topsquareispullback.md) | 226 | `declaration-track:42cc5e829c6abc2814b2f15b1f3203942554c5fbfd3ecb09f6fc3058897a4be1` |
| 9 | `def` | [pasteVertIsPullbackEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/pastevertispullbackequiv.md) | 232 | `declaration-track:48f6aa4e5d2d9306e4420b80c8266df89613f0053371f92fdb91bc4be1beb0eb` |
| 10 | `abbrev` | [PushoutCocone.pasteHoriz](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/pushoutcocone-pastehoriz.md) | 255 | `declaration-track:d0f7522ae45ed005ddf9dde5453191a63df661951c3e85dba1921659ac507f6e` |
| 11 | `def` | [pasteHorizIsPushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/pastehorizispushout.md) | 282 | `declaration-track:bfaca9e9af4c7931929e87afb4b55cf837e2e90ee797acdc65f6f2b2316354cc` |
| 12 | `def` | [rightSquareIsPushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/rightsquareispushout.md) | 311 | `declaration-track:3a896e4e501899b871b473ed790bd709f2c2e3e50a8dd4d7224cd451b841af76` |
| 13 | `def` | [pasteHorizIsPushoutEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/pastehorizispushoutequiv.md) | 331 | `declaration-track:d78d616e0f3c1ccf94dbb378be82801b0862d71b6f184eb7ce0f9e21f78c2fc6` |
| 14 | `abbrev` | [PushoutCocone.pasteVert](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/pushoutcocone-pastevert.md) | 362 | `declaration-track:554ff710210ec986f1f4814d986c421067fa8dfc1ea25a3511201f1fbdfc746b` |
| 15 | `def` | [PushoutCocone.pasteVertFlip](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/pushoutcocone-pastevertflip.md) | 377 | `declaration-track:56f0e0e804ee0b247e0603562a81b778b705a9f272bf891bd7fc0ac71814bf6d` |
| 16 | `def` | [pasteVertIsPushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/pastevertispushout.md) | 396 | `declaration-track:e5356f9b732050fdd7411f8c01d60716540d524262ec40a817cafca61f296bfc` |
| 17 | `def` | [botSquareIsPushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/botsquareispushout.md) | 417 | `declaration-track:92526328675b978e645af64a7f05f925fa9c6941cddbdb162de119e8b00c58c6` |
| 18 | `def` | [pasteVertIsPushoutEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/pastevertispushoutequiv.md) | 423 | `declaration-track:7e42ff94794e47ffd74f93cedab3053b1875cc11e5ced58fb354d61214ec046c` |
| 19 | `instance` | [hasPullbackHorizPaste](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/haspullbackhorizpaste.md) | 449 | `declaration-track:76e0703f822c51b222751f6ee0ed527be573d04f015ffb48682c4d2eef23ba21` |
| 20 | `def` | [pullbackRightPullbackFstIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/pullbackrightpullbackfstiso.md) | 457 | `declaration-track:4f2bae7fbdb7abf559e1be49559805164cf84a19727b6be895e41723a8482310` |
| 21 | `theorem` | [pullbackRightPullbackFstIso_hom_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/pullbackrightpullbackfstiso-hom-fst.md) | 464 | `result-track:7883f3530172308f710a00525c640793c8fedc5b2318ee5e630066fa7e9ae6c1` |
| 22 | `theorem` | [pullbackRightPullbackFstIso_hom_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/pullbackrightpullbackfstiso-hom-snd.md) | 470 | `result-track:fd67e01e659b6af52c1a8eddf97c9f4993d7360af44e487924a835d7c96c1797` |
| 23 | `theorem` | [pullbackRightPullbackFstIso_inv_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/pullbackrightpullbackfstiso-inv-fst.md) | 476 | `result-track:5e6bbd324e34658b775b4560c8dc54aaf2b48c35270c9e841a212a25b534daa9` |
| 24 | `theorem` | [pullbackRightPullbackFstIso_inv_snd_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/pullbackrightpullbackfstiso-inv-snd-snd.md) | 482 | `result-track:60f9bc40f7ddff7813d348831d76c253bb900c183ffd00e9e9424a2b1cda24fb` |
| 25 | `theorem` | [pullbackRightPullbackFstIso_inv_snd_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/pullbackrightpullbackfstiso-inv-snd-fst.md) | 488 | `result-track:6c4cef5515eaf15567426801334a2e6f76cd67566e76260c62935a411744fa0c` |
| 26 | `instance` | [hasPullbackVertPaste](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/haspullbackvertpaste.md) | 516 | `declaration-track:f9eb5aa8ea6051634c911592ff0a7686f1636bf66718cf0d845ca1a106fbe1e3` |
| 27 | `def` | [pullbackLeftPullbackSndIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/pullbackleftpullbacksndiso.md) | 524 | `declaration-track:43263bc335f25d2c111b079a4f9d59eab8668445e151263ab6ca1d18dd6c1751` |
| 28 | `theorem` | [pullbackLeftPullbackSndIso_hom_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/pullbackleftpullbacksndiso-hom-fst.md) | 531 | `result-track:b6d349b2dd0e4c25e7c064a0622ba2180fd3a37f5e5b10561c2f5417a5df766d` |
| 29 | `theorem` | [pullbackLeftPullbackSndIso_hom_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/pullbackleftpullbacksndiso-hom-snd.md) | 537 | `result-track:739d47c6bb91ba0ef7ab831667524443f427bccede0b7ffb905845873199fbbe` |
| 30 | `theorem` | [pullbackLeftPullbackSndIso_inv_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/pullbackleftpullbacksndiso-inv-fst.md) | 542 | `result-track:3d3d31a4bcec13877efb1f404c44a75c5d867028213ea7b080010217fc845ce1` |
| 31 | `theorem` | [pullbackLeftPullbackSndIso_inv_snd_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/pullbackleftpullbacksndiso-inv-snd-snd.md) | 548 | `result-track:0f1e9e2f0cdbdd7caaf012139901a66d0d6034660836cc339db0ad7acf4392d6` |
| 32 | `theorem` | [pullbackLeftPullbackSndIso_inv_fst_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/pullbackleftpullbacksndiso-inv-fst-snd.md) | 553 | `result-track:61b4d6400324bc7b47cc1443b64cf3433f379ce775a8d10836f703c34f6792e0` |
| 33 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/instance.md) | 576 | `declaration-track:c05f6c524064455683d9fd352ac3f4ab3002e59dd248b7525972b8a449955a4e` |
| 34 | `def` | [pushoutLeftPushoutInrIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/pushoutleftpushoutinriso.md) | 584 | `declaration-track:653f5ad03d013246237664009416d1d8e84c81e250f91e2de9dcb2dc9e433420` |
| 35 | `theorem` | [inl_pushoutLeftPushoutInrIso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/inl-pushoutleftpushoutinriso-inv.md) | 591 | `result-track:546a5e84a4e57198e18c2552e688b7004da3cf3208d886fb1715ba415f5b6a1c` |
| 36 | `theorem` | [inr_pushoutLeftPushoutInrIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/inr-pushoutleftpushoutinriso-hom.md) | 597 | `result-track:66482815529fd393d1785885d641ec5b2702b22e5ff42f3dde6a981df9fad40a` |
| 37 | `theorem` | [inr_pushoutLeftPushoutInrIso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/inr-pushoutleftpushoutinriso-inv.md) | 603 | `result-track:e0712cc93b3a5eef159b889fe8901e22a6a64dbc14d160e4fb72005670c398d5` |
| 38 | `theorem` | [inl_inl_pushoutLeftPushoutInrIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/inl-inl-pushoutleftpushoutinriso-hom.md) | 609 | `result-track:9889c019af8342d5a09ca62838d863a65c129efc4815f67a02e128fcc66a5153` |
| 39 | `theorem` | [inr_inl_pushoutLeftPushoutInrIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/inr-inl-pushoutleftpushoutinriso-hom.md) | 616 | `result-track:0be2509314d2fd3f7e303a369119392bbeff70f4ada8f11e06e2cd4c55af4c65` |
| 40 | `instance` | [hasPushoutVertPaste](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/haspushoutvertpaste.md) | 644 | `declaration-track:03ffbb59f8d1553d33908f6e5d2a86c6b0ff192955501179fc07b3ad5cf69150` |
| 41 | `def` | [pushoutRightPushoutInlIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/pushoutrightpushoutinliso.md) | 652 | `declaration-track:782883f4ff8c097491d0b9d335bc351a644a8f15bc9429a215c76eb83e367351` |
| 42 | `theorem` | [inl_pushoutRightPushoutInlIso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/inl-pushoutrightpushoutinliso-inv.md) | 659 | `result-track:5fe2137e1a8b73d7e9b5be9d5f422d8dd918efcebb082212e5614beaa9cc53ea` |
| 43 | `theorem` | [inr_inr_pushoutRightPushoutInlIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/inr-inr-pushoutrightpushoutinliso-hom.md) | 664 | `result-track:ce71be6301224dcf1be848c5d99ecc4dbaac5297bbc1036c713c80e6bd8daf38` |
| 44 | `theorem` | [inr_pushoutRightPushoutInlIso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/inr-pushoutrightpushoutinliso-inv.md) | 671 | `result-track:088e1138389be5024965ff2d18d17678cf8f759198b7e44caeb557ea88025c3e` |
| 45 | `theorem` | [inl_pushoutRightPushoutInlIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/inl-pushoutrightpushoutinliso-hom.md) | 677 | `result-track:aca12a9c3af692e6c8ff46f1472ca806df8759ef8990d83d015b0dbbf374b4e5` |
| 46 | `theorem` | [inr_inl_pushoutRightPushoutInlIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PastingNamespaced.lean/declarations/inr-inl-pushoutrightpushoutinliso-hom.md) | 682 | `result-track:ef3b1a73b78c13fd7665fc2bc6c86798359daceab77f473b3d07c145374e75cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d592413331df159209e4d435fa236c21e81ac47c208958de5f73b78e6f2c0087 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variant856e520beb61c767cd56082ec5ea1e5b894a36fb165bd60d5abbf4b528b6958f.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Pasting/Variant856e520beb61c767cd56082ec5ea1e5b894a36fb165bd60d5abbf4b528b6958f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
