# Verification target: Pullback Cone Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50302b8925ae8f932fb5cf5c5c3166ade9d35d11",
  "lexical_observation_count": 76,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackCone/Variant62ef8980e7fa85464f493c45117eec417602ddc9d8393a2eb349de65d4b5ced1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50302b8925ae8f932fb5cf5c5c3166ade9d35d11`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackCone/Variant62ef8980e7fa85464f493c45117eec417602ddc9d8393a2eb349de65d4b5ced1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackCone/Variant62ef8980e7fa85464f493c45117eec417602ddc9d8393a2eb349de65d4b5ced1.lean.json)

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
| 1 | `abbrev` | [PullbackCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/pullbackcone.md) | 88 | `declaration-track:b8c684b5d58b9523fbf06f9cf8d04ac0c7e2d1738d7cf54700f5560c9f9c97d4` |
| 2 | `abbrev` | [fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/fst.md) | 96 | `declaration-track:24096ec0b283b68df07d0ee0c080d1ab1d9b4cd5b25caefdbac773cca008e67a` |
| 3 | `abbrev` | [snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/snd.md) | 100 | `declaration-track:652eadb73d7f34bf3c5aa7353922c3f1755ced3f89539e542e0dc4a1594f4afe` |
| 4 | `theorem` | [π_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/app-left.md) | 103 | `result-track:09e252cd9f293b35599174d0aaf12bf8ba5e4c08532cda45211ab0728ba40d55` |
| 5 | `theorem` | [π_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/app-right-source-edition-2.md) | 105 | `result-track:666d90ba7d7109bb0419fbc90a8f0d634cd4ad3ec51d5019c48ce9dcf8778dad` |
| 6 | `theorem` | [condition_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/condition-one.md) | 109 | `result-track:bcb1c0e31d9bda1a61583196bd6f755aaf00152c058938f3a77f5dbc605aa485` |
| 7 | `def` | [mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/mk-source-edition-2.md) | 117 | `declaration-track:b7137e6e6fb5acb6d0bb49084ab639116e450fd2abcfe516501651f5d7b781ed` |
| 8 | `theorem` | [mk_π_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/mk-app-left.md) | 124 | `result-track:2fa05c911020799fceb0210168aaeb07b3a24273eba54c59559e9231ddb44307` |
| 9 | `theorem` | [mk_π_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/mk-app-right-source-edition-2.md) | 128 | `result-track:c15f5250da3af9275f6c3edb679870a557454a8dc36a81341ae45c24ca0f63d1` |
| 10 | `theorem` | [mk_π_app_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/mk-app-one.md) | 132 | `result-track:e71a99e12f658b720194037e5647e2794526b15f7ea73cb1d52a876b2adc03cd` |
| 11 | `theorem` | [mk_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/mk-fst.md) | 136 | `result-track:a6b5362c6d9ab1120be2d645e82de9fac5c560805d93508350d59d647eecaae1` |
| 12 | `theorem` | [mk_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/mk-snd.md) | 140 | `result-track:0e41f1b544fda73d9fa7949f466d9575105ea1d834f519706d28a2d76698b87b` |
| 13 | `theorem` | [condition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/condition.md) | 144 | `result-track:8c09d807363a3441a3e0515ca1d0af6187126396e551fc559c02cf59eadcc3c2` |
| 14 | `theorem` | [equalizer_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/equalizer-ext.md) | 149 | `result-track:3771d1007065b6ec8856b5bc262aee029667e6de0f6bd9f05717319d74850e0f` |
| 15 | `def` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/ext-source-edition-2.md) | 157 | `declaration-track:cfd0fdf2eb2fd3092c692e9105e4e0329b86038badf3ec2200b671fefa2faff6` |
| 16 | `def` | [eta](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/eta-source-edition-2.md) | 165 | `declaration-track:7e8454be2d26c4310b0b00bc4af86e3d04767b900749e424862f0c8387d1db41` |
| 17 | `def` | [isLimitAux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/islimitaux.md) | 170 | `declaration-track:0f328dca3e9ccdbce371e7482ce296cf6041bf1ad19c9cc72c8b66874c8b945a` |
| 18 | `def` | [isLimitAux'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/islimitaux-source-edition-2.md) | 186 | `declaration-track:ca01f65be2c6aa17c440e4d0cad1bbb32c679ee3920bfe52e10abca640adae62` |
| 19 | `def` | [IsLimit.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/islimit-mk.md) | 200 | `declaration-track:6216e47cee7d9bb2f04b4e78ba71947617d0c155b1640a1459d7480db104d0d3` |
| 20 | `theorem` | [IsLimit.hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/islimit-hom-ext.md) | 211 | `result-track:271dbe4e3ea473e482a024c2161bd2e1ed78c94c7b68dbd88d52dbbff7357746` |
| 21 | `def` | [IsLimit.lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/islimit-lift-source-edition-2.md) | 218 | `declaration-track:7ed3cba74c9f044e8f9be373c8b570b24779b3e342113dcea07f7f07165d3499` |
| 22 | `lemma` | [IsLimit.lift_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/islimit-lift-fst.md) | 223 | `result-track:9829b796f63cdcd01e3edc76d5d7abd461068972b26040ddf63f48acbce82301` |
| 23 | `lemma` | [IsLimit.lift_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/islimit-lift-snd.md) | 227 | `result-track:e35e1c3f91338a343a1558cf6ad425e68ca6392c200a24cc90bbc54865453520` |
| 24 | `def` | [IsLimit.lift'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/islimit-lift.md) | 233 | `declaration-track:204c0cb24efca0e5e4d0585b98a7c9616360ecc81d7a72caab7e3fe8766423bc` |
| 25 | `def` | [mkSelfIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/mkselfislimit.md) | 239 | `declaration-track:82ee2219d7a51035a04b92aa847ff7430d79133eb57ceade804007365b4302f3` |
| 26 | `def` | [flip](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/flip-source-edition-2.md) | 247 | `declaration-track:f399a1e583370676116adf61a108268e5dff7b548b3071b10a5407aa912e632f` |
| 27 | `lemma` | [flip_pt](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/flip-pt.md) | 249 | `result-track:1dd73b4f9103b9c389fe97db06b72d8d9482a3cefbf44a8e86945a072c362a6c` |
| 28 | `lemma` | [flip_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/flip-fst.md) | 250 | `result-track:0d7af692c156d0445bd6279085f08d5b39c5233731af5492cb23d8cc4fa29d11` |
| 29 | `lemma` | [flip_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/flip-snd.md) | 251 | `result-track:894e97887c56106e0ae3ab1959b92ece65fbac3878689ae588b8366b2802a5e5` |
| 30 | `def` | [flipFlipIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/flipflipiso-source-edition-2.md) | 254 | `declaration-track:cc0ee9b5fcd8af490a9b822acff8d932517857c959fd05aadc13950573e0ab73` |
| 31 | `def` | [flipIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/flipislimit.md) | 260 | `declaration-track:d162c6221c305d29b434f63433d5c3c869a6a2710b1bac0f4b7a5934f9d4e0d8` |
| 32 | `def` | [isLimitOfFlip](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/islimitofflip.md) | 265 | `declaration-track:3889129b751f3a11b7efeb5693992676397113dfbcd5de1949956912b984eb3f` |
| 33 | `def` | [Cone.ofPullbackCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/cone-ofpullbackcone.md) | 280 | `declaration-track:cebebfdd402a99da874cad48e13d0a001ea2cd766d39fea2636ef1ea73290bc3` |
| 34 | `def` | [PullbackCone.ofCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/pullbackcone-ofcone.md) | 288 | `declaration-track:92e574e538873712a28d6b24edf5e33dc9d597583ac86926b7515424541fe38e` |
| 35 | `def` | [PullbackCone.isoMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/pullbackcone-isomk.md) | 297 | `declaration-track:a1556a41459ddd1a0890a806293e4ea89ba50ff0203334ae3157d3a502c5dbe3` |
| 36 | `abbrev` | [PushoutCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/pushoutcocone.md) | 306 | `declaration-track:40a14a7da8f32befd1007d721d165be0ff839d0d19ceb021e2ed7349bc5e132a` |
| 37 | `abbrev` | [inl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/inl.md) | 314 | `declaration-track:9dbef32289bf78c954d3bd10fa95e07efb0b7280e15adf8015fc212747b311c3` |
| 38 | `abbrev` | [inr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/inr.md) | 318 | `declaration-track:58289810fc5d1947bd6575b9921bec162f2a0e9b9f781413ce4a9a4321861f7f` |
| 39 | `theorem` | [ι_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/app-left-source-edition-2.md) | 322 | `result-track:2b88d4a8f4dd9e493540fc9cf6a7c03f6c213cd17cb94a6d8872339a25a388e2` |
| 40 | `theorem` | [ι_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/app-right.md) | 325 | `result-track:5e785e8f8c7faa0e67f0287515e995126d3d56c07c42deb1e51bf967be95568b` |
| 41 | `theorem` | [condition_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/condition-zero.md) | 329 | `result-track:e727c7ed4ea37da075edc777f5557bdbf75070ab61f95ee33b354828fffc330a` |
| 42 | `def` | [mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/mk.md) | 337 | `declaration-track:2fe4e306861e5518c1ddea7ee37ced0f2b17fbfa3c93770d847a975d8ad5bb4b` |
| 43 | `theorem` | [mk_ι_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/mk-app-left-source-edition-2.md) | 344 | `result-track:492098fd9b733ee2dab35bffed8646ce5ccad3b62ac6391127fda19d2984ee8f` |
| 44 | `theorem` | [mk_ι_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/mk-app-right.md) | 348 | `result-track:48412765cffb2cf2bb066a73829b85bdb26eb8685a7a53a01b42c031594497b1` |
| 45 | `theorem` | [mk_ι_app_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/mk-app-zero.md) | 352 | `result-track:233f89261bf24d35d02b16cad044ad5bdb7e75e7c93906e61ad5cf856bf8f83b` |
| 46 | `theorem` | [mk_inl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/mk-inl.md) | 356 | `result-track:4370d941643df914668422e3a2bde0a088ab9ea1c107ed9495165f7338013e9b` |
| 47 | `theorem` | [mk_inr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/mk-inr.md) | 360 | `result-track:c45e2811d934444e664846e0d4d0c8727d0f2c30a9ed18aa513cbaae0281d791` |
| 48 | `theorem` | [condition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/condition-source-edition-2.md) | 364 | `result-track:d4279a85b946f4d1c0080f595a9f772b6b4ffa9548c2ac083a2dc2fd9df5be8d` |
| 49 | `theorem` | [coequalizer_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/coequalizer-ext.md) | 369 | `result-track:fd4b7cc6cade8439dbd54e785a225a5ca0b0ee39091434fceac6a3c7419517e1` |
| 50 | `def` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/ext.md) | 378 | `declaration-track:3235941a0570e9cf70826773b5432cf4893f85d22b85050130ffeb51981644c1` |
| 51 | `def` | [eta](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/eta.md) | 386 | `declaration-track:19fa6da1e570843fe0d9970dfb78cf4b109a59481f03ce00dc56077ffdc4b737` |
| 52 | `def` | [isColimitAux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/iscolimitaux.md) | 392 | `declaration-track:b43cf4e4cbe867283f2ae2a541eb15da89b29bea2920f15dc09e6642c0d2f307` |
| 53 | `def` | [isColimitAux'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/iscolimitaux-source-edition-2.md) | 406 | `declaration-track:b6b9d8dbadb2426ce2809e3ba499b28e5708bc20427b9150d9103b9bba89ccfd` |
| 54 | `theorem` | [IsColimit.hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/iscolimit-hom-ext.md) | 417 | `result-track:ae687ac8bda5bf1b4c00166cda034232033f5bcd76c84c449b5a61291a5eb51a` |
| 55 | `def` | [IsColimit.desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/iscolimit-desc.md) | 424 | `declaration-track:3361c1e59689322d7affc0d0717d8fb2057d61d755820579ce8f07e0da64a957` |
| 56 | `lemma` | [IsColimit.inl_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/iscolimit-inl-desc.md) | 429 | `result-track:15bc74aae7cc7d95ed3b58613ef09bcee44f230cbbf4592577f052d84aa9a5bb` |
| 57 | `lemma` | [IsColimit.inr_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/iscolimit-inr-desc.md) | 434 | `result-track:2a94e9ef0c3e1bfec58d94f15c71aec263f0d8bcffcdbdb1677d25e3824f3ed0` |
| 58 | `def` | [IsColimit.desc'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/iscolimit-desc-source-edition-2.md) | 441 | `declaration-track:4f101d3cefe1d869af6260927007900a0d9f7c36762862c451c3442968b8da7d` |
| 59 | `def` | [IsColimit.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/iscolimit-mk.md) | 448 | `declaration-track:398487bc82f27c41bc0a729a07be5c1c9c56e36b72ae4327ac85b2fd5ad797fe` |
| 60 | `def` | [mkSelfIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/mkselfiscolimit.md) | 461 | `declaration-track:3032f52b377effbf7fc13ff1ed3437e40768093e6472ce491a1e1c0c0f5780fa` |
| 61 | `def` | [flip](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/flip.md) | 470 | `declaration-track:8e2e120c9a671cd6dc82a694b630848f1a6861aed70cd6918f2ec74828f920d1` |
| 62 | `lemma` | [flip_pt](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/flip-pt-source-edition-2.md) | 472 | `result-track:69c22f4c9ba0621eeecd9314d32bcc21819578dbc4512f4a3a3a169a7aa44b70` |
| 63 | `lemma` | [flip_inl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/flip-inl.md) | 473 | `result-track:909fe1d9fb0854e8c721845a96f1c93780b8739a76357d603c2875dd38eecb1e` |
| 64 | `lemma` | [flip_inr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/flip-inr.md) | 474 | `result-track:fc6e332b4939d30e7efccfa9c8f78287f79b5722b15ec31144c45753c08fbddb` |
| 65 | `def` | [flipFlipIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/flipflipiso.md) | 477 | `declaration-track:2afbf3e635ae1aa311a6743e19b3c7629806af3deed2889d28a85da3c6a78904` |
| 66 | `def` | [flipIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/flipiscolimit.md) | 483 | `declaration-track:770ac69e9d2dc9f5a9bd5b21c9723df8f35d69aab737c0c0bee7acca56d88fb3` |
| 67 | `def` | [isColimitOfFlip](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/iscolimitofflip.md) | 488 | `declaration-track:c306d2ba8dc872ee092623e62e59c91414575742a0a0748720681c2c7e1396bb` |
| 68 | `def` | [Cocone.ofPushoutCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/cocone-ofpushoutcocone.md) | 503 | `declaration-track:1781f4720373ec977d2a300000afc4598ef985b8eeaad3486af1a80facbd9299` |
| 69 | `def` | [PushoutCocone.ofCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/pushoutcocone-ofcocone.md) | 510 | `declaration-track:464b3509bd7041baf945258b29a8019db0af4c2361021841ae5b3cabd65096af` |
| 70 | `def` | [PushoutCocone.isoMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/pushoutcocone-isomk.md) | 519 | `declaration-track:9234be163d698552b8be3a9e7b4f315f0fbd595f6d9f39818441ce8373c0a636` |
| 71 | `def` | [cone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/cone.md) | 537 | `declaration-track:42aefff114a26c59d348b86bab35570b1f8f45c28dfbbaf46cb6ecf0f632b696` |
| 72 | `def` | [cocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/cocone.md) | 543 | `declaration-track:da8e7d301ac3cf740f166f43dfa9b01b08853fcce2d639385ab448861c82f190` |
| 73 | `theorem` | [cone_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/cone-fst.md) | 547 | `result-track:aeaa99eb0f0ae551bbaa03e5c6ad858040294a68c0aa40d3f67810f909b000bd` |
| 74 | `theorem` | [cone_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/cone-snd.md) | 551 | `result-track:8e5f7a5c44d73b37af2a60ebcafa4f0bfb2554e5dd6dcdac20b15aa1cbd37e84` |
| 75 | `theorem` | [cocone_inl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/cocone-inl.md) | 555 | `result-track:332998d332f314eb50a098defff6af1a00e34d4905c240b16034f2e250f0913a` |
| 76 | `theorem` | [cocone_inr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConePublic.lean/declarations/cocone-inr.md) | 559 | `result-track:7bafc08c3b64704c542f4e7de199d927721775559a108b70d4b8aa3639bb3c2d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2eda29523415ac18d402bbae8c9bc5d4ada6ad13a486b7b6b3a1ec91053d7bd3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackCone/Variant62ef8980e7fa85464f493c45117eec417602ddc9d8393a2eb349de65d4b5ced1.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackCone/Variant62ef8980e7fa85464f493c45117eec417602ddc9d8393a2eb349de65d4b5ced1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
