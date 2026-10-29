# Verification target: Comma Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05cd35cbe78878f48dae7f34562dd82b1eedbaea",
  "lexical_observation_count": 74,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant42336f4061087cb3a7e58242121c2cc1065fab7cecaa7a43a81f6f0cbfcc8c41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05cd35cbe78878f48dae7f34562dd82b1eedbaea`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant42336f4061087cb3a7e58242121c2cc1065fab7cecaa7a43a81f6f0cbfcc8c41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant42336f4061087cb3a7e58242121c2cc1065fab7cecaa7a43a81f6f0cbfcc8c41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Iso` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Category` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EqToHom` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Products.Unitor` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Comma](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/comma.md) | 64 | `declaration-track:0715e0bc1be683e60c1517e189a2eff83bb5550dbfbd4a73a74bf8b238ae1e4a` |
| 2 | `instance` | [Comma.inhabited](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/comma-inhabited.md) | 73 | `declaration-track:e3d1e1ba64cc56b9a5a2efa7ad5f59a0909696cdec6ab0c092b44906a6f51548` |
| 3 | `structure` | [CommaMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/commamorphism.md) | 85 | `declaration-track:628276838b5cd22bc793bb97f07205abb6496d89c35edd47eb9fcfccddb27c6e` |
| 4 | `instance` | [CommaMorphism.inhabited](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/commamorphism-inhabited.md) | 93 | `declaration-track:6c33d8bec4ec092b95a0f09e46ef9fdb31f7dc661f17c0f262b1a7b4ae7889ed` |
| 5 | `instance` | [commaCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/commacategory.md) | 99 | `declaration-track:9b0e78756be295ce9b7d229bebc59a5a3adcb2db404077f0492a50d8854e5a83` |
| 6 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/hom-ext.md) | 115 | `result-track:f42d1d08813a85cef26abdd7cea8bdbed2ce210048a55deb57e5f741290d2b43` |
| 7 | `theorem` | [id_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/id-left.md) | 119 | `result-track:d292c3c688a31aaa99a2669ed64327808007a6ad8f474fbf5e38970d7c05b60c` |
| 8 | `theorem` | [id_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/id-right.md) | 123 | `result-track:40cf5c709695bfcc50eab8007de6ff6d809a1076e88a1aaa43ca5f497fbd1a3c` |
| 9 | `theorem` | [comp_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/comp-left.md) | 127 | `result-track:1c24cdf505e55e7e987cad2a0f9d47b48ddb86cabc4d7c3fb43344511fbf11c0` |
| 10 | `theorem` | [comp_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/comp-right.md) | 131 | `result-track:264b2ef6e4eaa2ceab5fe897b414e1950f2e98d0c59b4c5f288f30a543b8620c` |
| 11 | `def` | [fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/fst.md) | 140 | `declaration-track:9fb2e6ef342580927b060b2c677687e85cce5fd6e0c987273787481ba34435e3` |
| 12 | `def` | [snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/snd.md) | 146 | `declaration-track:7569d121f71b0e43344b0f6169b371a8727f94e68f6bd719d852ba5999ecd541` |
| 13 | `def` | [natTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/nattrans.md) | 155 | `declaration-track:ec998c361e8df36ba2ac7152823a34b8b30507e813bf523d07f893d9ab86e6c3` |
| 14 | `theorem` | [eqToHom_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/eqtohom-left.md) | 158 | `result-track:7e8ca7b418e5d4582962ec30f56fca66f3e340f49c5c5ea8fcbf6ce77f2d680d` |
| 15 | `theorem` | [eqToHom_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/eqtohom-right.md) | 164 | `result-track:56118359766ac19b78fd74f79257d87488825e281be1d7b3be71ed1851a17b28` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/instance-source-edition-2.md) | 173 | `declaration-track:4809c20d9682a1e22d54741d2b3e66a337e80cfa5431fe219e5f0dbd58ae4826` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/instance-source-edition-6.md) | 176 | `declaration-track:948cce954e376169dd6aa54f0826fccb6ea73e3e468e90628284611d89c84a59` |
| 18 | `lemma` | [inv_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/inv-left.md) | 180 | `result-track:e898b06394463e050b0435156c05432a1068e12b0b1085c649ae16e303e009ec` |
| 19 | `lemma` | [inv_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/inv-right.md) | 185 | `result-track:1dc386fac84163834c519bbc13090845617c9a151e6aa864252c62c8c6636140` |
| 20 | `lemma` | [left_hom_inv_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/left-hom-inv-right.md) | 189 | `result-track:2dc45ed26d424995c5db8830c2fbb7d7fdedeb615654e2995727eb359dc74a08` |
| 21 | `lemma` | [inv_left_hom_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/inv-left-hom-right.md) | 192 | `result-track:7debb7c5bb180351e34663209e5eff22912b45ff0661e36c58d1e173512538cf` |
| 22 | `def` | [leftIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/leftiso.md) | 203 | `declaration-track:3e57e21da859f076382243d4855537f2587fedefd2659445d105e6360a5a1417` |
| 23 | `def` | [rightIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/rightiso.md) | 207 | `declaration-track:1ec100d62372df4aaaa71d1ac527d833a7240da3e6e4f2bd18206743e3d9c688` |
| 24 | `def` | [isoMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/isomk.md) | 213 | `declaration-track:a89ff92b0f8bd5cf4acd913fd5f6f4892f7d8dabdb392df5ff1f4f379424d940` |
| 25 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/map.md) | 237 | `declaration-track:7d81f1a98505546f3545c9f7e22e6fbe5f7ebc9ddbb03c97e8331caecef8012f` |
| 26 | `instance` | [faithful_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/faithful-map.md) | 252 | `declaration-track:ce29fb4ff55e71b9de31862523b18c02cafba84b0c85c9bec1df9341dcba0b28` |
| 27 | `instance` | [full_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/full-map.md) | 258 | `declaration-track:ba12d42fd5798e98a07bdec0857c5fc62d4de8f8045db91676d913883b602cc1` |
| 28 | `instance` | [essSurj_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/esssurj-map.md) | 270 | `declaration-track:f84d93d11cc55377141349518d36064bc1a6fa358ac43aba0e5c523339bbbfe3` |
| 29 | `instance` | [isEquivalenceMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/isequivalencemap.md) | 283 | `declaration-track:105f241985f45a5a9584a642f10f63ddd31c71a72af8c6a3ffecd58ca7b8b389` |
| 30 | `theorem` | [map_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/map-fst.md) | 290 | `result-track:8eaa979179d11b0a60097aa0bd86af70055980a689d0112a45f44d7932b02299` |
| 31 | `def` | [mapFst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/mapfst.md) | 296 | `declaration-track:12c3c7f20dc8c2f2764afc965f5fba17da99a5d6283ac57d9bf62d9087354c9b` |
| 32 | `theorem` | [map_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/map-snd.md) | 302 | `result-track:1ba6ca0df5bde7697fadf19cbd8868f8cd850f427bc382f8bbdb94235cf65cc2` |
| 33 | `def` | [mapSnd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/mapsnd.md) | 308 | `declaration-track:e4df7fdf184bf32506bcbf781a558d390cf90aa4471d313a8ba791ca2daed44a` |
| 34 | `def` | [mapLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/mapleft.md) | 315 | `declaration-track:81bcef804d28d3418f69d38975fa1828b7a54069ba693fd4ccbf89ccd71d8dd8` |
| 35 | `def` | [mapLeftId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/mapleftid.md) | 327 | `declaration-track:3cfee6fe496cc32022a65275c99f9207d4348ca94ee2142022a88384a29754d0` |
| 36 | `def` | [mapLeftComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/mapleftcomp.md) | 334 | `declaration-track:e217811b7f46d0620615df82115440e1ef0c06a76e35ae8ccd248abb2bdac2b9` |
| 37 | `def` | [mapLeftEq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/maplefteq.md) | 341 | `declaration-track:b43ca8c74817ae4e014ac399a10c4cff489efe8f47980c7cb577dd0a30dbbbf4` |
| 38 | `def` | [mapLeftIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/mapleftiso.md) | 347 | `declaration-track:1a58328f33eb4f866e831d525ff210c8f22ba50e80367b645a120daef38da0b4` |
| 39 | `def` | [mapRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/mapright.md) | 355 | `declaration-track:a29ad4b10377aa878f1e1f712f15920f5af94277a21a73294b0bc1d5548cb14c` |
| 40 | `def` | [mapRightId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/maprightid.md) | 367 | `declaration-track:cfff72d4bd9545fee9faa96f822de4f44a8b22879e90ff802b277fc5d2344ffe` |
| 41 | `def` | [mapRightComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/maprightcomp.md) | 374 | `declaration-track:196b5b637b761c94a8075ca0d1ec3bafd0bcf9cc85f8d35c2c06c9fffb5a3cca` |
| 42 | `def` | [mapRightEq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/maprighteq.md) | 381 | `declaration-track:11a7b6f7607a4ea90e93c368d4acbc5f7032799f7dee5ad758f49967e9d5f16b` |
| 43 | `def` | [mapRightIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/maprightiso.md) | 387 | `declaration-track:07041e41910031f33e13f27bbab40d624840ba015eb23eed01d0158e902893b6` |
| 44 | `def` | [preLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/preleft.md) | 401 | `declaration-track:921dd733e06dc20d9589ffaf34a2c11496e6adb82668eb907c6304f217ee5981` |
| 45 | `def` | [preLeftIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/preleftiso.md) | 413 | `declaration-track:34609db1be0c418ee97b2f74d8d88994f5c4d26c84c3445c6a51e3310e2cbba4` |
| 46 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/instance-source-edition-11.md) | 417 | `declaration-track:f3a9d015cb22dcdefa2be2cf7f29b92a615375ff8a71ad85541acf4a68f8fa6f` |
| 47 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/instance-source-edition-7.md) | 420 | `declaration-track:9537f8d3358d59d1f8d75fe0a441dce3ca49769a8aee8df9227fa245140fb45b` |
| 48 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/instance-source-edition-10.md) | 423 | `declaration-track:f22346752f5a6d843672aa49e2a6d11ff1b86957332b6088ed0a85a86a5ea91c` |
| 49 | `instance` | [isEquivalence_preLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/isequivalence-preleft.md) | 427 | `declaration-track:e37471e30a76a9e025be0ea767ffa77cf91cf0c4e51e9e0c447fe5862e88fac9` |
| 50 | `def` | [preRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/preright.md) | 432 | `declaration-track:fbd90d9d07d3ea1c638bc4443df9e53da4b7e315dba47caecdc3f4503641e3c0` |
| 51 | `def` | [preRightIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/prerightiso.md) | 443 | `declaration-track:c67a2fb47434334fa833afdf6a60d7cd7ff367cfa57ea9b6fc9d842dbbd64c17` |
| 52 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/instance-source-edition-4.md) | 447 | `declaration-track:7c80175007882a1deb970ed30da57709a81087ff60613c429514d5feb602fb52` |
| 53 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/instance-source-edition-5.md) | 450 | `declaration-track:936256908e8605d81583f8986b714a339cfbde267505ad49216a6c8a93035c94` |
| 54 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/instance-source-edition-3.md) | 453 | `declaration-track:7c2402129c9cfeea27cf2ead77e9c337a8bf517bacba9c764c8c7f6b58879c29` |
| 55 | `instance` | [isEquivalence_preRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/isequivalence-preright.md) | 457 | `declaration-track:31a85b09c07ebea5e53ada5be839b8d015a90c6b6e6c7c04efc0e7faa71a729f` |
| 56 | `def` | [post](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/post.md) | 462 | `declaration-track:7b59ccdd08fea87b9c99fae7427d564ba72904535d9fde710b23b6e358e64e98` |
| 57 | `def` | [postIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/postiso.md) | 473 | `declaration-track:cf101e04f634b28ad997f20fb60a3fd92be5c9007720dc4df1d4c08be5752fa2` |
| 58 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/instance.md) | 477 | `declaration-track:3035f56e14581f1b6eb86bfef24d80fa53c59677aea251dcccb4c503cec54b81` |
| 59 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/instance-source-edition-8.md) | 480 | `declaration-track:cb1a001369f7bef06e410f0aaa2523dc3ed79c049487f22454b814a162cacd96` |
| 60 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/instance-source-edition-9.md) | 483 | `declaration-track:e3559e4fae594d49c83b04a01d4d8a53b5dcdc2671121c91e624dee99e3a7373` |
| 61 | `instance` | [isEquivalence_post](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/isequivalence-post.md) | 487 | `declaration-track:e013225a628b5ea4e54fd1f9cd9af59dbc5e1a8108e99c16faabdd67ba686377` |
| 62 | `def` | [fromProd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/fromprod.md) | 493 | `declaration-track:7871a9b8393dc4cd15320a0950b251898b4e029aa5f3f91be7d1ab755455d103` |
| 63 | `def` | [equivProd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/equivprod.md) | 506 | `declaration-track:cbf42ba8b4335d5f23416436cfcd97324fdc19f4336a46f3fba9a52eade94470` |
| 64 | `def` | [toPUnitIdEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/topunitidequiv.md) | 516 | `declaration-track:47589cdfd5aec8ed0ccf52eb1000c7781a456a1bcabe0cf9d0a9eda69a1a0e21` |
| 65 | `theorem` | [toPUnitIdEquiv_functor_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/topunitidequiv-functor-iso.md) | 521 | `result-track:afbad76b851021ca24729ef0ae0f3b721a56d7da4eb4698d93444b2d97929109` |
| 66 | `def` | [toIdPUnitEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/toidpunitequiv.md) | 529 | `declaration-track:d324c0214f671dfdb25e760f5be3e9a07a646244fa1229abfa10f7f01cd46ac9` |
| 67 | `theorem` | [toIdPUnitEquiv_functor_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/toidpunitequiv-functor-iso.md) | 534 | `result-track:c90153a2611ee595e94fc4d897b420d663a4087699c2c1b21e18d738dc5c2a72` |
| 68 | `def` | [opFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/opfunctor.md) | 547 | `declaration-track:86fcbb6da4bc2a4d55c82faa2858188061676838e55fb2fd6d60a25ac4480b0f` |
| 69 | `def` | [opFunctorCompFst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/opfunctorcompfst.md) | 554 | `declaration-track:1a06edac55213caeee963ca83428067a824acfcd274b4dad95c08d5a6bd15c8d` |
| 70 | `def` | [opFunctorCompSnd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/opfunctorcompsnd.md) | 560 | `declaration-track:2468be158a30ad9e199281a6bbe8b4ae54b5efff10095aa079cf1bbdb0d76be1` |
| 71 | `def` | [unopFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/unopfunctor.md) | 565 | `declaration-track:132f36bf311af79914f4ef19516828f50d27fe5734a751e8d02201cf33a36970` |
| 72 | `def` | [unopFunctorCompFst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/unopfunctorcompfst.md) | 571 | `declaration-track:58b9fbf171001800b53d6755302d24dd49ba705a1f232134016b47cb29d048e3` |
| 73 | `def` | [unopFunctorCompSnd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/unopfunctorcompsnd.md) | 576 | `declaration-track:db9f46d25310a175ec3db7360f03afb6d863f5ce32c933f3a42871914dd1e884` |
| 74 | `def` | [opEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CommaBasic.lean/declarations/opequiv.md) | 581 | `declaration-track:d43061d028aba2497a6b63355fc901003716787867548b6494d6f30cf7e4d9c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4d8b10fff16b659602ce4921cbd441314d3792c152132185f48f1dbdec8fe4f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant42336f4061087cb3a7e58242121c2cc1065fab7cecaa7a43a81f6f0cbfcc8c41.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant42336f4061087cb3a7e58242121c2cc1065fab7cecaa7a43a81f6f0cbfcc8c41.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
