# Verification target: Category Theory Opposites Namespaced Right Op Map Unop

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d498682dc378211fb8124aea9d3de6a6645c90d",
  "lexical_observation_count": 89,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantc2035d741775d55ccfd6250b2a3df7a6699bdbe73cc100c44622ac8fc6e6a44a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d498682dc378211fb8124aea9d3de6a6645c90d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantc2035d741775d55ccfd6250b2a3df7a6699bdbe73cc100c44622ac8fc6e6a44a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantc2035d741775d55ccfd6250b2a3df7a6699bdbe73cc100c44622ac8fc6e6a44a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Equivalence` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Quiver.Hom.op_inj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/quiver-hom-op-inj.md) | 43 | `result-track:265ca568cbba090c84bd3af8c239f35f6cebe76186026e02e15b2f5014bd5ab0` |
| 2 | `theorem` | [Quiver.Hom.unop_inj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/quiver-hom-unop-inj.md) | 47 | `result-track:51b8e634261ee9920c95459d0fd7dec62e5ab4584bc78f7d601b5fa6d4571164` |
| 3 | `theorem` | [Quiver.Hom.unop_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/quiver-hom-unop-op-source-edition-2.md) | 52 | `result-track:7de618f9ce7cab6d5e986d7431fc4e6d3b90afcda47b97b7dd03b639688f9e13` |
| 4 | `theorem` | [Quiver.Hom.unop_op'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/quiver-hom-unop-op.md) | 56 | `result-track:5a4770b2e0bc16007397987f143fe0c6488b0f7ab3ecdc319b8abc9b3a3fb1c2` |
| 5 | `theorem` | [Quiver.Hom.op_unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/quiver-hom-op-unop.md) | 60 | `result-track:7ac135b13fe2d97647896972d9194b70dce6f48380f8e9c31cb7f00e4ffb442a` |
| 6 | `theorem` | [Quiver.Hom.unop_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/quiver-hom-unop-mk.md) | 63 | `result-track:fe236d41492bc26bb5989bdaf6d031877a5f3be1bd10c8fdf645aa5e03552525` |
| 7 | `instance` | [Category.opposite](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/category-opposite.md) | 73 | `declaration-track:de1926ebf6a9d27e1bbc4b3c3d6d95cf62bbca9240681e837bb68eba27a7efc7` |
| 8 | `theorem` | [op_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/op-comp.md) | 78 | `result-track:ae97d8f8cb2d8cc6328404f1595b445e9eb383b4aca9ab976d99719eb4080e82` |
| 9 | `theorem` | [op_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/op-id-source-edition-2.md) | 82 | `result-track:c550eb6980f414c6b6387b8dadc283be01b8d58bb211c33a8b2148f58806aae1` |
| 10 | `theorem` | [unop_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/unop-comp.md) | 86 | `result-track:15f1347db022e6e49ea048b6a530b7109c760886d849eecb5bbd8f8f8b3db869` |
| 11 | `theorem` | [unop_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/unop-id-source-edition-2.md) | 90 | `result-track:7fecdce9f3ad73bdf3acdfc1aaf0a449e7047acb1e8bb3faa102d913b1859890` |
| 12 | `theorem` | [unop_id_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/unop-id-op.md) | 94 | `result-track:5aebb30fa1c4d966423233232a7e4b1cde4f5044f388e3e9012e47a05c6d372f` |
| 13 | `theorem` | [op_id_unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/op-id-unop.md) | 98 | `result-track:a8e59410f2fc7c13151da67e7ba0d3dffda04e86f3239c62726180f653bf9e62` |
| 14 | `def` | [unopUnop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/unopunop.md) | 107 | `declaration-track:24ec885ce921f34a5f18821889382d6df05392784346b380221b974b685b85a4` |
| 15 | `def` | [opOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/opop.md) | 113 | `declaration-track:49dfb31f089aaf5ccc243c56036ce2819bab8ba6a7eb98d6ec00684a126ef87d` |
| 16 | `def` | [opOpEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/opopequivalence.md) | 119 | `declaration-track:a99e0c63a20adfc88cf6a7ca35a57be79056acf2a8e146eec563c25188cb83b8` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/instance-source-edition-8.md) | 125 | `declaration-track:bd09e8497e73644500efdddc99c70aa6ca954c09be700b2490809c13160dd7d1` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/instance-source-edition-5.md) | 128 | `declaration-track:7158c127c7b68f7f852b5ab1e5e64b65e7fec05c78bf0731ba58584bd4bc7ccb` |
| 19 | `instance` | [isIso_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/isiso-op.md) | 134 | `declaration-track:11dc4041ce4adbd025cbff14576d5ad9009f00659e4469e6192a727dba25f529` |
| 20 | `theorem` | [isIso_of_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/isiso-of-op.md) | 140 | `result-track:8835ec1eb63c04bc5a25d4ba2ce6a9add53eb74d58d60c8f5ba55bbb13818c7c` |
| 21 | `theorem` | [isIso_op_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/isiso-op-iff.md) | 143 | `result-track:9f13a41e3e6b22d14627bfbcce0266b9fc4c73f50f3c740ca348f8eaa3ca1ee6` |
| 22 | `theorem` | [isIso_unop_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/isiso-unop-iff.md) | 146 | `result-track:23f716985bd34fc0b3e887bc6f8796555d393d842571100562797b06ef6128e3` |
| 23 | `instance` | [isIso_unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/isiso-unop.md) | 149 | `declaration-track:f0468587423647c8755cb4886372ccdb3165b7d9efed874416a6fd9de50d18bb` |
| 24 | `theorem` | [op_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/op-inv.md) | 153 | `result-track:64252738ac4f0d77142b09db284d9ae8f48174933b313cfb5e8c0baefb28c4a0` |
| 25 | `theorem` | [unop_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/unop-inv.md) | 158 | `result-track:77c36c9d775df809392d01da6620d4892ae8f2e0cb596ba659e4bf363a2f76ef` |
| 26 | `def` | [op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/op-source-edition-5.md) | 171 | `declaration-track:f648f08db9059dbd429afa2c30e858bf18469ee1f8e23122a3f2cf0051cddf83` |
| 27 | `def` | [unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/unop-source-edition-2.md) | 179 | `declaration-track:1d239809f353269bbdacbb098878294da0139cff3a0d335c174e743b179bebe3` |
| 28 | `def` | [opUnopIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/opunopiso.md) | 185 | `declaration-track:c8da0c39586be82ac6dd7c6792369f39ab1f0c09f1e00f8fd6904a788f5b0155` |
| 29 | `def` | [unopOpIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/unopopiso.md) | 190 | `declaration-track:ba12d3b72abc3f02a690cf471cfcb492b8ad21a48e620ba80287c61bc037ada0` |
| 30 | `def` | [opHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/ophom.md) | 198 | `declaration-track:5c182bb3c0fca1ddfa9383cd50da80d8e788ff1047901f63701009ea905bb211` |
| 31 | `def` | [opInv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/opinv.md) | 207 | `declaration-track:ed3cc87fc2be4ebdbbeea9ee62c8b528f2f9febddb89b3548d563cd708139c3e` |
| 32 | `def` | [leftOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/leftop.md) | 221 | `declaration-track:2771a67898dfd43b97acf301dbc406ee4a7e054e710478519eb721218010bb08` |
| 33 | `def` | [rightOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/rightop.md) | 230 | `declaration-track:3b9a1dbaa44cf30552dcbaebda28c3c0faf94e5a13a7d91ab8ce41f762314678` |
| 34 | `lemma` | [rightOp_map_unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/rightop-map-unop.md) | 234 | `result-track:c91179d708f90ae39404afaab5ca7ff549be32facccbf02b1511e3a89518e467` |
| 35 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/instance.md) | 237 | `declaration-track:0733e2f6c44e7444a403d6b8cc2478d047dd56c4ae0e9e42b1a36edb8acfd3b1` |
| 36 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/instance-source-edition-2.md) | 240 | `declaration-track:131e50f279a94c50594ddceacdbd2c9b2510466eef17e355a7d58d108775044b` |
| 37 | `def` | [FullyFaithful.op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/fullyfaithful-op.md) | 244 | `declaration-track:61ab33581dde444b4a95ec587dbb5bc84b3a956d786ce4fd58dbd8e32eb3db7b` |
| 38 | `instance` | [rightOp_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/rightop-faithful.md) | 248 | `declaration-track:bbdbea4a7f6e38b43885fa5336db185e5b51fee19a28dc1ce0ae78bb77433a48` |
| 39 | `instance` | [leftOp_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/leftop-faithful.md) | 252 | `declaration-track:729d7eee884cf1b4a518a5963a83f428eb1c7e516cf786ebf6d695dc21ac7f48` |
| 40 | `instance` | [rightOp_full](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/rightop-full.md) | 255 | `declaration-track:57a51eebe60d02728c0570840f14af59a25dcaebc6a97d74d99bc455330a83a4` |
| 41 | `instance` | [leftOp_full](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/leftop-full.md) | 258 | `declaration-track:677ad6e05edb1c0c75872d9703297be3f7962b1daf5054e716e625e4ce9ce868` |
| 42 | `def` | [FullyFaithful.leftOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/fullyfaithful-leftop.md) | 262 | `declaration-track:82d083371882b5f13b572d796fb3006089613ecc6dd3390b8bd5cab8ad155a24` |
| 43 | `def` | [FullyFaithful.rightOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/fullyfaithful-rightop.md) | 267 | `declaration-track:04e5c2877b2382cdb6c83bc62019e8cf7a3d7426867d7d0a897b3b0831a45581` |
| 44 | `def` | [leftOpRightOpIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/leftoprightopiso.md) | 273 | `declaration-track:06ba2bc50254d7dafb03d549668e92f7a106e5fa5cf119784ac976e0171cbc16` |
| 45 | `def` | [rightOpLeftOpIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/rightopleftopiso.md) | 278 | `declaration-track:fce54f534dfee9fca6c2afe8ae6f5955dff759a91db4ccbb2ca3a88e11bc1c42` |
| 46 | `theorem` | [rightOp_leftOp_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/rightop-leftop-eq.md) | 283 | `result-track:81678091f4846edc17e3446ef17efc798d53845d3e89a1b169e216d52accea4c` |
| 47 | `def` | [op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/op-source-edition-2.md) | 301 | `declaration-track:7b63b4ca42a30df71fd2b04307038dc61adc024e8ff87620cddb5af015e2f69f` |
| 48 | `theorem` | [op_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/op-id.md) | 306 | `result-track:be3f5ccaa29849b954d9fa427f399838baef474ed67324398df21efb2d16b409` |
| 49 | `def` | [unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/unop-source-edition-4.md) | 311 | `declaration-track:90dcbe9e0467f5f22e7ff410487e8fd8b48c0140c79b442bf5bbfcc63e28ecc9` |
| 50 | `theorem` | [unop_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/unop-id.md) | 316 | `result-track:7b8615e8248515cfcb43087a776cc686af551ff2f46db1fb722067722275fddc` |
| 51 | `def` | [removeOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/removeop.md) | 323 | `declaration-track:85abd892fe1128bde8a6a0b84c76e8eb8bcdb103e9bc2bd1c0cb51a447bb2bac` |
| 52 | `theorem` | [removeOp_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/removeop-id.md) | 329 | `result-track:8bd191ac65b762b18f704b70e5152fc363f629fbe72bbfc4e432d191180c912c` |
| 53 | `def` | [removeUnop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/removeunop.md) | 335 | `declaration-track:0c0cf7f292d72802f7c7962509f54047138309efba29248ab6f7644b265280b7` |
| 54 | `theorem` | [removeUnop_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/removeunop-id.md) | 341 | `result-track:8bc2f69183863f31d9d6059dbc0e46e80227748b4e7ee881e8b570e1bf8c7720` |
| 55 | `def` | [leftOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/leftop-source-edition-3.md) | 354 | `declaration-track:e2c96395c48265fdb6f0df35b7207f9f771aab536ef044d096acc5474f7f2ef5` |
| 56 | `theorem` | [leftOp_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/leftop-id.md) | 359 | `result-track:fdaf586e366f3924b41f87702fb92b48d440bee384eedd87d971b76a8268e088` |
| 57 | `theorem` | [leftOp_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/leftop-comp.md) | 363 | `result-track:ec9bacd069f9c0c76e8bb4c7a93612cfd9e1f292543eab968192089c40deab62` |
| 58 | `def` | [removeLeftOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/removeleftop.md) | 371 | `declaration-track:8b6d4f3c0bf3d2b8a0c14f2a9131bb6a35b7a96b67445bbab94ab710476f2b18` |
| 59 | `theorem` | [removeLeftOp_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/removeleftop-id.md) | 377 | `result-track:7789ab27fd824da7f8a8dce746f3a4fea8d3dfff450493f7d89ef666c4cb0b34` |
| 60 | `def` | [rightOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/rightop-source-edition-3.md) | 390 | `declaration-track:affdba3a73e25f107d33a86685141779c6b4100dacf6d0fafa5ebd8e0baeb094` |
| 61 | `theorem` | [rightOp_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/rightop-id.md) | 395 | `result-track:7d2bb98a569632a859bb31aa861926291a45252bf3d19403707565197067107f` |
| 62 | `theorem` | [rightOp_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/rightop-comp.md) | 399 | `result-track:401af76d4d264a623786aa6209453f1d3a97de6a3801e85a4677bdcb82122095` |
| 63 | `def` | [removeRightOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/removerightop.md) | 407 | `declaration-track:d18e08b4948131448a8ab96d236f39d61bad0a13ba72065d1f9a8986d200da38` |
| 64 | `theorem` | [removeRightOp_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/removerightop-id.md) | 413 | `result-track:499b35b553d4d03cbb8a6501c4b9b7ff1a39afecf8efc12b834f0a113d855504` |
| 65 | `def` | [op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/op-source-edition-3.md) | 427 | `declaration-track:c3ac769fd8961eadfb4a72d3170d349fd59a4f8a0f4e9050a8f1d265c792c810` |
| 66 | `def` | [unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/unop-source-edition-5.md) | 435 | `declaration-track:d3fea9b02661d3bffbdd061735d7f2db5097505571ee06dceaa8cd19f1c457fe` |
| 67 | `theorem` | [unop_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/unop-op.md) | 442 | `result-track:2342c67524e7114fe1f0b6e472c92c13e6b111a41cb5af226217141fc8ed6aef` |
| 68 | `theorem` | [op_unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/op-unop.md) | 445 | `result-track:d79176787aa6c135b6da6ae6444e2deb3c8496894cc40215f7bff145ed6edba0` |
| 69 | `lemma` | [unop_hom_inv_id_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/unop-hom-inv-id-app.md) | 452 | `result-track:11a1745b7fda77789891b4e7fb7e686b4faf4c0dcfafa0fe9a300079889eaa85` |
| 70 | `lemma` | [unop_inv_hom_id_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/unop-inv-hom-id-app.md) | 456 | `result-track:0df7e3587b30d13fbffc2078565714b8560ee0a0d3aef978de56eb52135ca1fd` |
| 71 | `def` | [op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/op-source-edition-4.md) | 471 | `declaration-track:eb410de0e2eef584f04cbb233c44b85c235de9fb5ed1116599a60a18a8061aa5` |
| 72 | `def` | [removeOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/removeop-source-edition-2.md) | 480 | `declaration-track:d9da777f453d5035b30574122a092a6daab7352a6b16f06ae375779df2da1dcf` |
| 73 | `def` | [unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/unop-source-edition-3.md) | 487 | `declaration-track:5e2aeff5fec4afb4737f3dccb5a5c08a38d9a73351c33d8578643349f3bb3b5d` |
| 74 | `def` | [op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/op.md) | 500 | `declaration-track:49841ec0ecb38fc1def84a646ce2342c349bcc34b2f294c0079dc2df8b86c265` |
| 75 | `def` | [unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/unop.md) | 513 | `declaration-track:02234854e6be0b21dae0a0923daea05dafc49bc106a4c2812add6a553934ed6b` |
| 76 | `def` | [leftOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/leftop-source-edition-2.md) | 524 | `declaration-track:46fb487c74901508517ea06d5957818540a30cd83348b0cafefc193a9749e097` |
| 77 | `def` | [rightOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/rightop-source-edition-2.md) | 527 | `declaration-track:99258d7a90ed1e2c78a786830144e1e8a6e4a6d46f37edd5b26aa6cbc5e05e24` |
| 78 | `def` | [opEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/opequiv.md) | 546 | `declaration-track:649622339642c809b348a229b1025db90bbd6953ad5574c61bfade6931b08ebf` |
| 79 | `instance` | [subsingleton_of_unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/subsingleton-of-unop.md) | 552 | `declaration-track:8b65930c62d1a31df5eadc5619b82f3d7ebcf3589843c795e959fa796273dde3` |
| 80 | `instance` | [decidableEqOfUnop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/decidableeqofunop.md) | 555 | `declaration-track:a14c120a757a6e910c0a123cdf078dfbf48b08fdfa2befafb3a96448785757e2` |
| 81 | `def` | [isoOpEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/isoopequiv.md) | 566 | `declaration-track:a5e902c169d72ea55c984e72f7a3041b19f9018a7a778a76f6b83f86e5864343` |
| 82 | `def` | [opUnopEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/opunopequiv.md) | 584 | `declaration-track:cb3d756f6b9d9b9ecc7e0446c7d43c25fd8646471e64bff121634434afe38729` |
| 83 | `def` | [leftOpRightOpEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/leftoprightopequiv.md) | 600 | `declaration-track:6b96630c84351ae9aeecb8e3fc8a7d325e018d58d421b5261fcea2fdbd5d6a05` |
| 84 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/instance-source-edition-10.md) | 617 | `declaration-track:fc501d221f46c465e9d2fa5c550ee4720117cd83d6bf916d9a5184c738169e2b` |
| 85 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/instance-source-edition-3.md) | 620 | `declaration-track:4079c8f4e68ddd41f558627bec6e3b844541eb100386475858dedcf5776e7415` |
| 86 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/instance-source-edition-7.md) | 623 | `declaration-track:a6758d5255c11584cd78491d2558d5ae5ace3a6cffeade17f35490af50e11192` |
| 87 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/instance-source-edition-6.md) | 626 | `declaration-track:8e8ad7f1bfdf0b4de8075d3b3e1d4d54d118ed29a0c700d81bd9bf63790081ce` |
| 88 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/instance-source-edition-4.md) | 628 | `declaration-track:5a573f777fc33d295d4363163db20470bda68723789a9b245f683257626564b0` |
| 89 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryOppositesNamespacedRightOpMapUnop.lean/declarations/instance-source-edition-9.md) | 630 | `declaration-track:f99290120301429db16decbd7c93f8512cbd1e700ebbce557b84d84a313f30be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7f04e956c5a907c0688b57ea5c788e01f82314afd7859f77b76bcc893ca1fc4f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantc2035d741775d55ccfd6250b2a3df7a6699bdbe73cc100c44622ac8fc6e6a44a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantc2035d741775d55ccfd6250b2a3df7a6699bdbe73cc100c44622ac8fc6e6a44a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
