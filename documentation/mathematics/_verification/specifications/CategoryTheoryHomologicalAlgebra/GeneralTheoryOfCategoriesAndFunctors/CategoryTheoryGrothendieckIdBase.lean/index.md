# Verification target: Category Theory Grothendieck Id Base

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57765911852f92dbaff209e5c24c855bdbb9e7be",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant922a6d1dd99d041c3e30bd30b5db1fcc22b4d06ab2ca526d00e0222cd7b558d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57765911852f92dbaff209e5c24c855bdbb9e7be`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant922a6d1dd99d041c3e30bd30b5db1fcc22b4d06ab2ca526d00e0222cd7b558d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant922a6d1dd99d041c3e30bd30b5db1fcc22b4d06ab2ca526d00e0222cd7b558d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Cat.AsSmall` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Elements` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.Over.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Grothendieck](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/grothendieck.md) | 67 | `declaration-track:76d1620ac10af6f7d35117f6d428694b9d3ba40ae2baff67498feb6e5eab13e2` |
| 2 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/hom.md) | 80 | `declaration-track:e81edb289580d7964a4734c49a005e4c52323ca2960742a304e4d2eb575015dd` |
| 3 | `theorem` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/ext.md) | 87 | `result-track:337a5cb7e4f8e3cce506882d01e304ff7b16cb8503c8d52034e1f458324e8158` |
| 4 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/id.md) | 96 | `declaration-track:6a677d0cb7697d315cb6cecd688b0e268d9c234df5059dfe8dbff0119733bed9` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/instance-source-edition-2.md) | 100 | `declaration-track:d3cd2cda6eba736529b5b63444d9197875937c52acd9b965c468a8f3c9d797a1` |
| 6 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/comp.md) | 105 | `declaration-track:924c0d5d5f28e7d041e2e5c95569623d91d0bd35f10aee9e09ac08f03559d09c` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/instance.md) | 112 | `declaration-track:1bcfa78fe985e9f4e2d17b9e18b2570b7d79a47f359dd3bd02f7dbb672200321` |
| 8 | `theorem` | [id_base](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/id-base.md) | 131 | `result-track:2177d386e902b100d44d9d89749a99da5d498598fbe27f31d88bfb4ae123d60f` |
| 9 | `theorem` | [id_fiber](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/id-fiber.md) | 136 | `result-track:65136764d62095a7216102350bc6a1e329d0e153306d53c118de3240653614de` |
| 10 | `theorem` | [comp_base](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/comp-base.md) | 141 | `result-track:2b17133e6a2fd7553dbe0deff81a245511706dee9bf2b666ce716246f46ec478` |
| 11 | `theorem` | [comp_fiber](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/comp-fiber.md) | 146 | `result-track:5aa8778b4372fe3932e5187a6955404fb58eafdd5b77184fb52c12c73f3127b0` |
| 12 | `theorem` | [congr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/congr.md) | 151 | `result-track:ae0b1afe1a65905acaa5f47019259923ffef325d34e87bc08f56c6eb77d3f14b` |
| 13 | `theorem` | [base_eqToHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/base-eqtohom.md) | 158 | `result-track:a8a71fad1be38fb763d3379fc48537a12dae543cb6ba1bf1538a6b13585ea725` |
| 14 | `theorem` | [fiber_eqToHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/fiber-eqtohom.md) | 162 | `result-track:969ee37446e05cf369dd91b01f5a01e17db51e192701d311491bbac97d4b0f29` |
| 15 | `lemma` | [eqToHom_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/eqtohom-eq.md) | 165 | `result-track:add6394db2b83c9865f43a3d12d7f285e660a8b83c536151040bff1b5d0007bc` |
| 16 | `def` | [transport](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/transport.md) | 177 | `declaration-track:6eccbeb5abf50034a1d3fc0036c7874a23068f852888f0ee062cdd3cf8b2d28f` |
| 17 | `def` | [toTransport](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/totransport.md) | 187 | `declaration-track:de9ecdc521e9db97ccc5bf1cceac587396ea806e8b780c04f1c2a8afa9aac682` |
| 18 | `def` | [isoMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/isomk.md) | 194 | `declaration-track:2b062bca63071c8e21c7ce45e0e756252ca64847a90877290526ebdd0c1c6d0d` |
| 19 | `def` | [transportIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/transportiso.md) | 211 | `declaration-track:62613cf8be6eddb1419fc94e416cc027e5d4da2a3782a050565f1de8fa427cb6` |
| 20 | `def` | [forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/forget.md) | 221 | `declaration-track:1f4a4bab13ad32c63fff4b7132018787748201770e8f96765305a165111d1d39` |
| 21 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/map.md) | 235 | `declaration-track:6e87fa8cd0c43bcc443df190e43bddd0c336225bae4bcd72b45a75752e27f374` |
| 22 | `theorem` | [map_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/map-obj.md) | 253 | `result-track:9a060c206b1a9a0da751aa442626e0fecb14a37f3fe156f072765dbe34903011` |
| 23 | `theorem` | [map_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/map-map.md) | 256 | `result-track:366002e7218d08c62616a429fcbc49278f260ab15795d0c2fb76480d29480730` |
| 24 | `theorem` | [functor_comp_forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/functor-comp-forget.md) | 261 | `result-track:7412e2541ec8178b87b036c66dd58e92efd911f11a7709de4edc660931fecb77` |
| 25 | `theorem` | [map_id_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/map-id-eq.md) | 264 | `result-track:42e898a2b2ca05cf0e8fdc3eaf420598b8e46ae9bba96b27e1797ac767024c3b` |
| 26 | `def` | [mapIdIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/mapidiso.md) | 274 | `declaration-track:a44653633c3eab346eccf8c5ce77ab4bef8f1849b536bc2cba7ce471f2d1f6fd` |
| 27 | `theorem` | [map_comp_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/map-comp-eq.md) | 278 | `result-track:000d8ca9e47c91a17ca10f3938b40c5f8a5310eb9706bc7a871111159bc60aa3` |
| 28 | `def` | [mapCompIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/mapcompiso.md) | 292 | `declaration-track:f2299d913a493fa2d8a1be737842a7725957c6adbe097cc4347a6fc73b168fbc` |
| 29 | `def` | [compAsSmallFunctorEquivalenceInverse](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/compassmallfunctorequivalenceinverse.md) | 298 | `declaration-track:370898460355430669e60d1a0811fa277e2b97658a97d1c5bd60f918ca69dfc2` |
| 30 | `def` | [compAsSmallFunctorEquivalenceFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/compassmallfunctorequivalencefunctor.md) | 305 | `declaration-track:59952ad2eacc1dfe6204557c8343378fc4a7e0fd500ffad3391bd29f608f4afa` |
| 31 | `def` | [compAsSmallFunctorEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/compassmallfunctorequivalence.md) | 316 | `declaration-track:69ea8285315dd9ca400b2b5007770c2717e13c70beed15e516cd9ced2913e7c9` |
| 32 | `def` | [mapWhiskerRightAsSmallFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/mapwhiskerrightassmallfunctor.md) | 327 | `declaration-track:906a21303841aedda297123dbc8a0baa51255269f1466c747741520b5991ff26` |
| 33 | `def` | [functor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/functor.md) | 357 | `declaration-track:0d7d155ad14e68e5e6d8c8224984e3e1e8981588a7d6b4fd0fb7d0f04ad9da24` |
| 34 | `def` | [grothendieckTypeToCatFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/grothendiecktypetocatfunctor.md) | 371 | `declaration-track:a0d4ab678218fb00668866cc9723e922ac897f807f8dad09983830379f6c6552` |
| 35 | `def` | [grothendieckTypeToCatInverse](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/grothendiecktypetocatinverse.md) | 377 | `declaration-track:6450b180ee4f1a0a8d1cc4152484988515ed8f04431187264d4620200df46bdd` |
| 36 | `def` | [grothendieckTypeToCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/grothendiecktypetocat.md) | 386 | `declaration-track:2cfb650c71044eb89cfa38751fc79d49e746e762b6a34ff09a69905e596db7f0` |
| 37 | `def` | [pre](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/pre.md) | 422 | `declaration-track:8cb3beac296d83cf02b46f1f1b9376d9a014531564ad7bab711f1bebc7b9425f` |
| 38 | `theorem` | [pre_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/pre-id.md) | 429 | `result-track:49f20e7cfe37976f5e5f9de11dd2642f77fff1c25072d5013bd98a04e710c16c` |
| 39 | `def` | [preNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/prenatiso.md) | 436 | `declaration-track:6167d3296495dff5828906034aeba2ef07b4a9cb373bb9425ce85445197136e3` |
| 40 | `def` | [preInv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/preinv.md) | 445 | `declaration-track:24f0b45c8fddbeb06b4a8332c0c53a8876048a83720070a63240de73c3f4b143` |
| 41 | `lemma` | [pre_comp_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/pre-comp-map.md) | 449 | `result-track:23397a67300f4769a1b63f961ebf74173a3655d919d8cdce754e224f3a82a4d1` |
| 42 | `lemma` | [pre_comp_map_assoc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/pre-comp-map-assoc.md) | 453 | `result-track:5acf6a3d62af052c40d06067e7c51700c2653548b9524bcb744a9bec67969ffe` |
| 43 | `lemma` | [pre_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/pre-comp.md) | 458 | `result-track:dfdb6451f2fd015f72afd2438696643be757a3610ee7cd2f93cbbe6f2fe038c0` |
| 44 | `def` | [preUnitIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/preunitiso.md) | 465 | `declaration-track:219a6a1c7054b0a86e09f532cb95c22af48c21379a63e2383496a830447d7c86` |
| 45 | `def` | [preEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/preequivalence.md) | 473 | `declaration-track:56051da93e727eea6ebe8864b614636f448f60a07b78489ebc20442d7067fb69` |
| 46 | `def` | [mapWhiskerLeftIsoConjPreMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/mapwhiskerleftisoconjpremap.md) | 508 | `declaration-track:12fb552263d50ca7b2aa81f21cf3737ef7138b607653871994427cfa90a025f1` |
| 47 | `def` | [ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/anonymous.md) | 523 | `declaration-track:db2c65b2909f41118e7f2020a236ceaa7938a941d607ba54d6978e7463dbac59` |
| 48 | `instance` | [faithful_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/faithful.md) | 538 | `declaration-track:556682b77e17c8df35fd411c3935e06a47a18648f1b2dc989c58585814b396d7` |
| 49 | `def` | [ιNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/nattrans.md) | 546 | `declaration-track:b355939dde69c36237f700b3239b9b3eb98122a18296f2f99cdb43ad2f35a738` |
| 50 | `def` | [functorFrom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/functorfrom.md) | 561 | `declaration-track:1960e7159e16dc65760133a69167ea9ba16e9a40593cd0f97936719076256b6e` |
| 51 | `def` | [ιCompFunctorFrom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/compfunctorfrom.md) | 569 | `declaration-track:084fa45c74e2e388c99cae9718b93e847ced61ffab4821c1946e635052972557` |
| 52 | `def` | [ιCompMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryGrothendieckIdBase.lean/declarations/compmap.md) | 576 | `declaration-track:c027aba5494ab3400826638c60e274cfa0741815172b20098c52ab33175b1770` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d05c77dcd8a4a91b3f48fe843cbbb3ceb70a39842bc468282ef785e8791c5357 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant922a6d1dd99d041c3e30bd30b5db1fcc22b4d06ab2ca526d00e0222cd7b558d8.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant922a6d1dd99d041c3e30bd30b5db1fcc22b4d06ab2ca526d00e0222cd7b558d8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
