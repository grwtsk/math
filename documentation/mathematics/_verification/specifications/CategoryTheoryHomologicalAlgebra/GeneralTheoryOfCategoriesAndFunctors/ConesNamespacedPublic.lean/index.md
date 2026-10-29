# Verification target: Cones Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ccac092cf8f3d65d9b67c30fc878e505438f200",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variant990fa01c5b6acb2ac0fad1573c9952fccde286735dfe36552894c2fc23e507a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ccac092cf8f3d65d9b67c30fc878e505438f200`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variant990fa01c5b6acb2ac0fad1573c9952fccde286735dfe36552894c2fc23e507a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variant990fa01c5b6acb2ac0fad1573c9952fccde286735dfe36552894c2fc23e507a0.lean.json)

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
| 1 | `def` | [cones](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/cones.md) | 75 | `declaration-track:6a2e379ccf9d7732ee85ec344febf157a99d3e5000c66e64b5d4bc354e220bc0` |
| 2 | `def` | [cocones](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/cocones.md) | 83 | `declaration-track:3ef4ca82371fc7e2939fb90162292be560f67a5dc1d68a84b921bb846f5d67e8` |
| 3 | `def` | [cones](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/cones-source-edition-2.md) | 96 | `declaration-track:ea0d14fcecf42d2a0bf17cb7aa326a3a82765f46bb4153d9de6fd307f5e4aab4` |
| 4 | `def` | [cocones](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/cocones-source-edition-2.md) | 104 | `declaration-track:e885abffb24e55e62db9eaa98a8a8677890d0223eb2a84f1f4aa1edbe320647b` |
| 5 | `structure` | [Cone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/cone.md) | 124 | `declaration-track:bbe4efc09bc8a5b6253c818d7e30db1e2a913acedf8ef166a489e6a6f037e185` |
| 6 | `structure` | [Cocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/cocone.md) | 141 | `declaration-track:73c948598269ad16b820bbfc5a38f814ed9c81db11e7fa52bdbbd0dda42a58ff` |
| 7 | `instance` | [inhabitedCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/inhabitedcone.md) | 148 | `declaration-track:e6ad30145b6bb1cff49070d81fa44cf7272eb88569c35e9bf02572031078f8fd` |
| 8 | `theorem` | [Cone.w](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/cone-w.md) | 158 | `result-track:ad8127398b6a0af38a3929bc391476183e15df0107102e25e7c768eb15f538ce` |
| 9 | `theorem` | [Cocone.w_apply.](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/cocone-w-apply.md) | 170 | `result-track:ceb3eee352a1950e8c68d846307be019229c3211b98441a5cafacc78717a15cb` |
| 10 | `def` | [equiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/equiv-source-edition-2.md) | 186 | `declaration-track:f50fac8470bccea620909018ac7cab0132551ebf0e1adcb4d49005636bf6acf6` |
| 11 | `def` | [extensions](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/extensions-source-edition-2.md) | 202 | `declaration-track:ad7b91788117f3c22009fb5fc2338b8432656fdd335ac0b349ebf7a2b0f2aa0f` |
| 12 | `def` | [extend](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/extend.md) | 208 | `declaration-track:0926050318032aa629186caa899f10cdb374bcbdd6185f8cf6d3f24504a3fc35` |
| 13 | `def` | [whisker](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/whisker.md) | 217 | `declaration-track:1b8a2d4a2360a9a5b3034b856d22b21d6c41fb979b75dc7a162e12d02832771a` |
| 14 | `def` | [equiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/equiv.md) | 226 | `declaration-track:60e289a1fc36abb9efca8edac316d560f08057aab9e53f8083e4049fee862fd9` |
| 15 | `def` | [extensions](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/extensions.md) | 242 | `declaration-track:0e2ad12f90583e3c8511ab5c0bf1d3c028103a536eb150b468c24d42c1e28353` |
| 16 | `structure` | [ConeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/conemorphism.md) | 249 | `declaration-track:5aee4671512399a0db718ad44e6f991f7d9dfcd3c6c0e261957e3985882591bd` |
| 17 | `structure` | [CoconeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/coconemorphism.md) | 258 | `declaration-track:83581204a7b26a144e6261bd2a884367c9bdfbb74c461481c3b4a3f411e63390` |
| 18 | `instance` | [inhabitedConeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/inhabitedconemorphism.md) | 268 | `declaration-track:cfe89a9ed20285fa8ca204c5ff603b3a50762dc9a1b5a4ef84b81548ee63c2bd` |
| 19 | `instance` | [Cone.category](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/cone-category.md) | 273 | `declaration-track:84cadd409b8e4f5fbb76d4f2b16b23282a92a19bbce8d7fbb41ff6f3225999bd` |
| 20 | `theorem` | [ConeMorphism.ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/conemorphism-ext.md) | 282 | `result-track:6d84dfd59e80afb03e91e399100980866220ac608a5edb27b259b0dd9dd78bf8` |
| 21 | `lemma` | [ConeMorphism.hom_inv_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/conemorphism-hom-inv-id.md) | 288 | `result-track:b07862e6230f950ef3b1470d2b14104af9c822a59710ab99987424f93d6b79fb` |
| 22 | `lemma` | [ConeMorphism.inv_hom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/conemorphism-inv-hom-id.md) | 292 | `result-track:d393af7e7ea823fa42235a1303c64cf4b345977cb949fb64383da1c4accc8a1c` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 296 | `declaration-track:e041ddcabe9aad31a470a9df472dd46d8c6ad03f52083ce11fceb4b1870dbeeb` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/instance.md) | 299 | `declaration-track:b9b316094d2638e5b1595d534df3825338f20ee4099020a96d91bbdcf56ed636` |
| 25 | `lemma` | [ConeMorphism.map_w](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/conemorphism-map-w.md) | 302 | `result-track:b353d44127c781e7ebef30c8a9412ec5fb8b4b8efcc409aa5e05948b1a85e24c` |
| 26 | `def` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/ext.md) | 313 | `declaration-track:7d734b3782671d4ebe54ffc14a2a8fad511dbd76948276e2eb3402fb99986477` |
| 27 | `def` | [extInv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/extinv.md) | 325 | `declaration-track:39381cb46363d1d46494bfcedac763a4baf39a2ef67942ef757f1d24895ad58f` |
| 28 | `def` | [eta](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/eta.md) | 333 | `declaration-track:c983a101331219f2afd5473039f5d52b44dbc85d56256a02c3977664c4bd64c8` |
| 29 | `theorem` | [cone_iso_of_hom_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/cone-iso-of-hom-iso.md) | 343 | `result-track:ebe784895b5d4895a6a67ab9d3f64fba0b8d7f21b21fbe6f300cff301db55150` |
| 30 | `def` | [extendHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/extendhom.md) | 349 | `declaration-track:1bda52e79573866a46f52cb1ad5a54912308c0603d035f281eb76351d3e358ac` |
| 31 | `def` | [extendId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/extendid.md) | 354 | `declaration-track:e83ecaae349820d9e141789db1ae857ebeeea47b6e1e6573e12b943b12a9cd57` |
| 32 | `def` | [extendComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/extendcomp.md) | 360 | `declaration-track:cd59cc5fd97bcca0c889c7ed1b27b2697f519eb0c77c5cda6c5a57b8d8777ae5` |
| 33 | `def` | [extendIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/extendiso.md) | 367 | `declaration-track:4d55d87272cecb72000aaffeb15ce654831209b809a015a8121e4c25c6cb2ab3` |
| 34 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 372 | `declaration-track:d97ca363125811fc78bdd5030a32ab346f5a2d7b99f4c166d6d822171e49ba26` |
| 35 | `def` | [postcompose](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/postcompose.md) | 381 | `declaration-track:33bc4e15a5cc918bb51ea34a016a2858e8ec5bb0a7f972cdb1519a3a21d96491` |
| 36 | `def` | [postcomposeComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/postcomposecomp.md) | 392 | `declaration-track:e7b65c30ba1cd6e9f04672a254ac5128b901ef1a14c9e9f891578fd2c6cd1333` |
| 37 | `def` | [postcomposeId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/postcomposeid.md) | 399 | `declaration-track:00d8e16df7c08233db84236e2e959c0917878938c4dab99f2cb43e2157d33cae` |
| 38 | `def` | [postcomposeEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/postcomposeequivalence.md) | 409 | `declaration-track:3364c291f166a457d2a6f2c1715602447d4093aa7be31e246908d07b048ad509` |
| 39 | `def` | [whiskering](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/whiskering.md) | 420 | `declaration-track:430ca5d8c4c103abf3fc85b1aee27ba37d8fd1aa322f24054e5b1333186ae247` |
| 40 | `def` | [whiskeringEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/whiskeringequivalence.md) | 429 | `declaration-track:ebe82b99ea9c4c71126160aee8addedc4da881c0fae69f8cfb813c8dbec1040c` |
| 41 | `def` | [equivalenceOfReindexing](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/equivalenceofreindexing.md) | 448 | `declaration-track:f798fe8d504015e42488561c8867f855f45dc7e604ac6b76de9e9e633bfce64a` |
| 42 | `def` | [forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/forget.md) | 457 | `declaration-track:1681a2d3591ec95063a9ebc18db244b803312418a1106693ebea616193adbb4c` |
| 43 | `def` | [functoriality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/functoriality.md) | 466 | `declaration-track:c28fdbdd2c252076a5b82f2f3596cf3ece7815ef907f875290ef3130a32f5c0b` |
| 44 | `def` | [functorialityCompFunctoriality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/functorialitycompfunctoriality.md) | 478 | `declaration-track:d1f21bcdc30d2bd4dec673dda2ba19b3a721191f6fac467d68cdcc252a8af2ef` |
| 45 | `instance` | [functoriality_full](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/functoriality-full.md) | 483 | `declaration-track:5c20a4635c1ec51f9dd93c4f55df876b34ae38af91496843b4aee252a6698f08` |
| 46 | `instance` | [functoriality_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/functoriality-faithful.md) | 489 | `declaration-track:7af025c774f5cacd32b09081302c9f73a8e8900112c4f5747e1f933188950737` |
| 47 | `def` | [functorialityEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/functorialityequivalence.md) | 501 | `declaration-track:41e6be79c03c2d6499b4edb06aa83282fda6b87ca606ecdd99e3ac151aba3b39` |
| 48 | `instance` | [reflects_cone_isomorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/reflects-cone-isomorphism.md) | 516 | `declaration-track:7e8076e1a4efa024b478169a8bc4c21b82c12260f933f15a4fe423879e338d5e` |
| 49 | `def` | [mapCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/mapcone.md) | 599 | `declaration-track:5112328d412924148bd96b9a346fd417a6a212c7542e6c107e5153067cd33a80` |
| 50 | `def` | [mapConeMapCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/mapconemapcone.md) | 605 | `declaration-track:4281ecf9d0e1ae8a85a989ddf38084b3852aa896e369651cf47ba67700e9483b` |
| 51 | `def` | [mapConeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/mapconemorphism.md) | 612 | `declaration-track:2f3748585e687793536b7f6c3fd313844200f9ce4f64b840e07ce78c861d22b3` |
| 52 | `def` | [mapConeInv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/mapconeinv.md) | 620 | `declaration-track:810ae1f3bbd795b4139e88f2f2906911173c0e6494a836af6bdf187166ad0aea` |
| 53 | `def` | [mapConeMapConeInv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/mapconemapconeinv.md) | 625 | `declaration-track:3964442143128c77c7c303efd029f44170709abbe4791c76de8660f3ddcbe3f1` |
| 54 | `def` | [mapConeInvMapCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/mapconeinvmapcone.md) | 632 | `declaration-track:eb33b8106bbe36a524d1bd271bd74abb750faad6abc69ec67ef167281dc5cc10` |
| 55 | `def` | [functorialityCompPostcompose](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/functorialitycomppostcompose.md) | 639 | `declaration-track:6bb1fbcb87e5dad3e14185520be4bb6d519d698dcebb61951d6a0c25edfbece1` |
| 56 | `def` | [postcomposeWhiskerLeftMapCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/postcomposewhiskerleftmapcone.md) | 653 | `declaration-track:2f6cc481735ae138b3c2ab72a936a3a5d31b96678094ec91fb9246b4818ef192` |
| 57 | `def` | [mapConePostcompose](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/mapconepostcompose.md) | 667 | `declaration-track:2a6c089da435e4ea0bc280c3a9c61f5f5b4b6267e9fbb21eaf8d15c556cbe5aa` |
| 58 | `def` | [mapConePostcomposeEquivalenceFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/mapconepostcomposeequivalencefunctor.md) | 674 | `declaration-track:a4bfe01a614cf862fb4e863cb3634564f1696e7b8b4fb4ef5ff3c9b2a85d82e5` |
| 59 | `def` | [mapConeWhisker](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/mapconewhisker.md) | 681 | `declaration-track:d5498cef067ad6bef76ce55f1e9b47e4b0f07b628098320bf002455646ac79ab` |
| 60 | `def` | [Cone.op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/cone-op.md) | 694 | `declaration-track:3c0dd056e219a1c8b92b3122b9e990131b88ca6fea746b7994ca5b6f84504247` |
| 61 | `def` | [Cone.unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/cone-unop.md) | 700 | `declaration-track:4109a18d15f6d1c91e3b8740c2bb4b8ead0e2c3ea2498991b4a05dda1b5492d0` |
| 62 | `def` | [coconeEquivalenceOpConeOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/coconeequivalenceopconeop.md) | 713 | `declaration-track:fc935530286bfa04a8329d8d0ca7712143eddaad87d97050eb6349c1aee33a1a` |
| 63 | `def` | [coneOpEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/coneopequiv.md) | 737 | `declaration-track:c930f3a7e946032a9d0c569efc958df5552199166c127b4e3cc04148f0eb5d11` |
| 64 | `def` | [coneOfCoconeLeftOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/coneofcoconeleftop.md) | 754 | `declaration-track:40cda20fd646a9650e19a4c4cdb5f8b78ec5ead796d125eaeac92ddea8a84488` |
| 65 | `def` | [coconeLeftOpOfCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/coconeleftopofcone.md) | 761 | `declaration-track:e7d2ecaad2f07eb2408396d86ed2f7839957eddbb521ea71c30670cec57ce223` |
| 66 | `def` | [coconeLeftOpOfConeEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/coconeleftopofconeequiv.md) | 768 | `declaration-track:2fd50782ff1b1b2efe2c3a5066f89d345e9f209e61d28de0e6e551ee34e91e61` |
| 67 | `def` | [coneOfCoconeRightOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/coneofcoconerightop.md) | 785 | `declaration-track:1ba0ff2cc680076d63bc99308f2cbd1e28f618e55ba725e56754996a5384d66c` |
| 68 | `def` | [coconeRightOpOfCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/coconerightopofcone.md) | 792 | `declaration-track:218687266d90b1873bdfaf99f8442eaaa6b9a06a0eb8f52ebfc1d0b79a76a95f` |
| 69 | `def` | [coconeRightOpOfConeEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/coconerightopofconeequiv.md) | 799 | `declaration-track:58400b614d0df65f78a8f229959198d7516d3281db9fc5ae06903c6197363989` |
| 70 | `def` | [coneOfCoconeUnop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/coneofcoconeunop.md) | 816 | `declaration-track:dfcaf7bfe1f111c067c74a3b5308cfd4a16c3d51ff7be2969c79051810644d46` |
| 71 | `def` | [coconeUnopOfCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/coconeunopofcone.md) | 823 | `declaration-track:e644dafaed40d977a9f7e471ac0bbb6cf2ddb0f60832e1f90f9cb1fd6a56e8e7` |
| 72 | `def` | [coconeUnopOfConeEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/coconeunopofconeequiv.md) | 830 | `declaration-track:f6cd9ee626d64df8d718ac22160dec303e4884e6747805676de4024adee937ec` |
| 73 | `def` | [mapConeOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConesNamespacedPublic.lean/declarations/mapconeop.md) | 851 | `declaration-track:467213680227280c3026fd269c14e516f6f0ee7f9d1e33f6b4bcd601f28c009b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6914012daf2a0e85d95c2e93a46bb9c282cb2f358894f16b39a453d0018e1bbf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variant990fa01c5b6acb2ac0fad1573c9952fccde286735dfe36552894c2fc23e507a0.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variant990fa01c5b6acb2ac0fad1573c9952fccde286735dfe36552894c2fc23e507a0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
