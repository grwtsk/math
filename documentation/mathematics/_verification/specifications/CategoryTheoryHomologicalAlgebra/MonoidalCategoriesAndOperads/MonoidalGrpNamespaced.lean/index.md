# Verification target: Monoidal Grp Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7701589327b790f1585c3b1bc755917acd15b25f",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant4fd8bb9d8fefd5dae31d42a5e830129d1db022bbf4bad0282d96fd806eff6add.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7701589327b790f1585c3b1bc755917acd15b25f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant4fd8bb9d8fefd5dae31d42a5e830129d1db022bbf4bad0282d96fd806eff6add.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant4fd8bb9d8fefd5dae31d42a5e830129d1db022bbf4bad0282d96fd806eff6add.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Cartesian.Mon_` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.CommSq` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.ExactFunctor` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Grp_Class](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/grp-class.md) | 40 | `declaration-track:2b3656de133c2d501f0493aada22bd3cd284d4ef02d8f5af9aa7b2e1c73ebc9a` |
| 2 | `theorem` | [left_inv](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/left-inv.md) | 58 | `result-track:327bd9741b91be22c09003bdb2d9b47fa1cace92d9f1d82c4d520c0d6b847826` |
| 3 | `theorem` | [right_inv](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/right-inv.md) | 61 | `result-track:ab7b07ef28dddf1afd642bd359d45c2dc220584fd127bb31aefc6bb10bec6245` |
| 4 | `structure` | [Grp_](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/grp.md) | 68 | `declaration-track:15c1f79ba6c33736bd47bb9aeadb929a7007c3099f96030cc2c9d7ad76036956` |
| 5 | `def` | [trivial](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/trivial.md) | 81 | `declaration-track:96d12e088b7440e6253c12c5652bed96cbb438e948e9fb1dc3cdf5d66241a2f7` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/instance.md) | 84 | `declaration-track:086ae7d8569ce9deb527f739259612855df90ca2d79ea165ab7ad089a3eb3cab` |
| 7 | `def` | [mk'](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/mk.md) | 90 | `declaration-track:3847af4503d2751a120ef59589f3946953d0c8757bd3c2b3b7eaccff5b15de97` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/instance-source-edition-2.md) | 94 | `declaration-track:2c594aff2a341d007516df7bc68e1825bc95b353156b45bee758ab934e70d0ff` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/instance-source-edition-5.md) | 99 | `declaration-track:85aba9841baa5cd421ce68d3ef1070f89b2a163761a667b8bbe7c692f2f52b30` |
| 10 | `theorem` | [id_hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/id-hom.md) | 103 | `result-track:a381421140c0d9ca28a8da0380d9a3b6e0695543463c556e1d1f498b4f84bb67` |
| 11 | `theorem` | [comp_hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/comp-hom.md) | 107 | `result-track:f20a4ca271ba10c07c8e273f0e8135bba55deb8ab3bb25ec0572a900d60b44e8` |
| 12 | `theorem` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/hom-ext.md) | 112 | `result-track:0480c5f4b63d29b6fa5c56aaae62faa18e5cadf131c14b55fb4009efaae8013e` |
| 13 | `lemma` | [id'](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/id.md) | 116 | `result-track:1673f82bd5f33d1251f6b816d6ad02620e7f69dd953397aa923d14929fbe9226` |
| 14 | `lemma` | [comp'](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/comp.md) | 119 | `result-track:f7b174751ce14e81231d21f8ef47d57f6283c427b56ecb82c5871f85fd08add1` |
| 15 | `theorem` | [lift_comp_inv_right](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/lift-comp-inv-right.md) | 123 | `result-track:df0d2cbbfa01c7f73888a978d3a9282451fc38f5fce1cf17f929c972880e8dbf` |
| 16 | `theorem` | [lift_inv_comp_right](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/lift-inv-comp-right.md) | 129 | `result-track:98b2cf6215379bf24aad9b6e2619f282f9901934dd48948f503459d51ae7a5fb` |
| 17 | `theorem` | [lift_comp_inv_left](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/lift-comp-inv-left.md) | 135 | `result-track:cdd35ccf012f029c13619aee497e1c8ef68213da647839b6fd4147165b89f136` |
| 18 | `theorem` | [lift_inv_comp_left](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/lift-inv-comp-left.md) | 141 | `result-track:f23733b03e28b0fbab3691fa419441abff0ae52774fe08cb83ed2dc9a65c0baa` |
| 19 | `theorem` | [eq_lift_inv_left](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/eq-lift-inv-left.md) | 146 | `result-track:1b5d37c45612c6671630832a0f634de558de9375e3cfb94415c072f0951a9ec0` |
| 20 | `theorem` | [lift_inv_left_eq](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/lift-inv-left-eq.md) | 150 | `result-track:168cff28e5c13de5243b40d71fa48f8f4de04a5d4376ebfa2dd748e2ee33d8d3` |
| 21 | `theorem` | [eq_lift_inv_right](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/eq-lift-inv-right.md) | 154 | `result-track:fcf67aee029f8ad2775bb7c744d8316f4f44d2d4c4f3a4150bc635b654c6a3c3` |
| 22 | `theorem` | [lift_inv_right_eq](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/lift-inv-right-eq.md) | 158 | `result-track:757da3732bac37e5d3dfe1490b51970ed207ae417334118e6f6381f7b8545e9f` |
| 23 | `theorem` | [lift_left_mul_ext](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/lift-left-mul-ext.md) | 162 | `result-track:69366767bc377f071c73c59d9ffb6dd3c469424213f75bea080768c825628d3d` |
| 24 | `theorem` | [inv_comp_inv](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/inv-comp-inv.md) | 167 | `result-track:250a5edeab53fb8d78fe8f6e3a4d028296bfe4686efa56f54d27ac9f60111ecb` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/instance-source-edition-6.md) | 171 | `declaration-track:9568e6850510a56a3c976d430fab44ac3123b4f41942a47023086d49b1360ff6` |
| 26 | `theorem` | [inv_inv](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/inv-inv.md) | 175 | `result-track:70a19b906e129616d22faeb769945e4b93f41673f2f31d16278c481ed9668382` |
| 27 | `theorem` | [mul_inv](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/mul-inv.md) | 179 | `result-track:22fb4103c9ed2ea7228218be5e92b10230cdc770888c09350fb8f994972eaab2` |
| 28 | `theorem` | [tensorHom_inv_inv_mul](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/tensorhom-inv-inv-mul.md) | 190 | `result-track:c089e4e0e0d9d7ccb7e7cb5858045820e6cdefe93f548be9a7b5cc948e4317d7` |
| 29 | `def` | [mulRight](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/mulright.md) | 196 | `declaration-track:66179248fc56be881a32e84fab86529a17d28189bae667b3705c8314a0f05b58` |
| 30 | `lemma` | [mulRight_one](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/mulright-one.md) | 203 | `result-track:0442472b2a3afa69b997234ca6f2210c1cc49dc1b2c4b411b9697beef5b3a34a` |
| 31 | `theorem` | [isPullback](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/ispullback.md) | 211 | `result-track:72c7b02190e4c635e69f976f38500d53b57208b31af74164a1d6c6b94bc77324` |
| 32 | `theorem` | [inv_hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/inv-hom.md) | 245 | `result-track:a81887d33dee30acb8dd3cf0c9d1b3801b8fbdb92befcc0827711b95f6e5e424` |
| 33 | `lemma` | [Monoidal Grp Namespaced](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/root-grwtsk-categoriesandhomologicalalgebra-categorytheory-grpclass-vari.md) | 253 | `result-track:3ceed95a48b1c0819551d02c7b670445367fe5656629ac6ddf74b462a70b6863` |
| 34 | `lemma` | [Monoidal Grp Namespaced](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/root-grwtsk-categoriesandhomologicalalgebra-categorytheory-grpclass-vari-source-edition-3.md) | 257 | `result-track:c5e97e2bffbf68a1f02ff862ab4c1eb99b1a7b9a461e7ad4b13add76d41c2307` |
| 35 | `lemma` | [Monoidal Grp Namespaced](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/root-grwtsk-categoriesandhomologicalalgebra-categorytheory-grpclass-vari-source-edition-2.md) | 269 | `result-track:5b878f7e4971cc48f7ccbd81b90cc12efae95cfdf86864efd0f867d1abe28e57` |
| 36 | `def` | [forget₂Mon_](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/forget-mon.md) | 278 | `declaration-track:4753d694467feec1e605635eee61b4aaa14ed22751375d3c774007bfb9e6dfba` |
| 37 | `def` | [fullyFaithfulForget₂Mon_](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/fullyfaithfulforget-mon.md) | 282 | `declaration-track:523c3735725a53ac97ba4df8a67372745414e20d69303a6cc3abe8696d7adf99` |
| 38 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/instance-source-edition-4.md) | 285 | `declaration-track:815e381265a92dbea7d9015d7067733ad1beaaf5136738d0c33e327a4ada5288` |
| 39 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/instance-source-edition-7.md) | 286 | `declaration-track:ca98d0ec096f40c15bd489f8d941521abf74c06e24b284c768e1ed25d15f3f91` |
| 40 | `theorem` | [forget₂Mon_obj_one](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/forget-mon-obj-one.md) | 289 | `result-track:4f98cc25c4bd76a43bb302d02410e0e2e9dd1b9e38219315f97df5f5b60f7bbd` |
| 41 | `theorem` | [forget₂Mon_obj_mul](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/forget-mon-obj-mul.md) | 293 | `result-track:c3de1409b613ca1e5bb2d85e8c09fa15e22b7c1de1133aabb25e19a19f931c7a` |
| 42 | `theorem` | [forget₂Mon_map_hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/forget-mon-map-hom.md) | 297 | `result-track:7d5b97b8659d8196b3320a9d18a7b35c6829e4a32e60ffc4a5436afb56004565` |
| 43 | `def` | [forget](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/forget.md) | 302 | `declaration-track:6886a81314b8bd4d5824b03e550c4832ea1be5a054522fdc0ca1153b8f329943` |
| 44 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/instance-source-edition-3.md) | 305 | `declaration-track:78ba74fb5b83395b27ecc0fec0273276a2e07410ba27d8e97c70b0b8e864d746` |
| 45 | `theorem` | [forget₂Mon_comp_forget](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/forget-mon-comp-forget.md) | 308 | `result-track:9db7dc01fcf0180fa04e94d2422f672fe4238ef3793af928946b2ad03f320403` |
| 46 | `def` | [mkIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/mkiso.md) | 318 | `declaration-track:0d83eeaaa803069d4ee7030d3ff770e9ab8acab63bfe71f9286f265b06ded2a9` |
| 47 | `lemma` | [mkIso_hom_hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/mkiso-hom-hom.md) | 321 | `result-track:f88fdb617e35955d2421457b26f263d5f9b459bf94b9fbbb413630523c3cba97` |
| 48 | `lemma` | [mkIso_inv_hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/mkiso-inv-hom.md) | 322 | `result-track:b7dc9c5a49e73db5527be56deefda4e4050c633857e6b9810959dc5befd621cc` |
| 49 | `instance` | [uniqueHomFromTrivial](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/uniquehomfromtrivial.md) | 326 | `declaration-track:9ad380adbf19c7980ac7bf9deb82706b0bbbb884b666b76b34bf0186797ac0f4` |
| 50 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/instance-source-edition-8.md) | 329 | `declaration-track:fc3bcd2bc60b584776652a041d8aad74ee461627455b446118bd5f400c695658` |
| 51 | `def` | [mapGrp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/mapgrp.md) | 347 | `declaration-track:367cfd4ac32d01e453ce31a0523d38a5887ac4d305110ae2953d12b52b5c5992` |
| 52 | `def` | [mapGrpIdIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/mapgrpidiso.md) | 361 | `declaration-track:42806c7af3a7b71f191100184d9dc39ad9d1329dd350803372bcbc0a5a0862b9` |
| 53 | `def` | [mapGrpCompIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/mapgrpcompiso.md) | 367 | `declaration-track:5dfa9a5752d909ea33bb37196f3ecdeef6fda78e04c2d2dea12a1657fd7e165d` |
| 54 | `def` | [mapGrpNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/mapgrpnattrans.md) | 373 | `declaration-track:0a812477222fa1619f4e9b160f1b9f8a25e538aac2c63fdef61ef451693785f2` |
| 55 | `def` | [mapGrpNatIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/mapgrpnatiso.md) | 378 | `declaration-track:ccc656c5fe429f51f1f5805285d3b6338cfde2b0562c35f2fd6c2720d0663aaf` |
| 56 | `def` | [mapGrpFunctor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/mapgrpfunctor.md) | 384 | `declaration-track:902cd5cc98ebc5d6cfe75cff8b71926f931e4a202a32c0fadfc13191967587c0` |
| 57 | `def` | [mapGrp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/mapgrp-source-edition-2.md) | 396 | `declaration-track:420b6ed006dde6578b5e6ee2654755722744397268bf2193ee613c56bba56640` |
| 58 | `def` | [mapGrp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalGrpNamespaced.lean/declarations/mapgrp-source-edition-3.md) | 406 | `declaration-track:923308b8b428739c8f5143bec7074bbf64c0f3cda663f01c1a1ce739b0823669` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1cab86a73faa2bab2725076b19275fe3c7dd30360b00facf6ba791237426fa8c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant4fd8bb9d8fefd5dae31d42a5e830129d1db022bbf4bad0282d96fd806eff6add.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant4fd8bb9d8fefd5dae31d42a5e830129d1db022bbf4bad0282d96fd806eff6add.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
