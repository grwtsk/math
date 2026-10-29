# Verification target: Is Tensor Product Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7bcca27cc1bc59da7d1f1e3e6be9f4554f279fd7",
  "lexical_observation_count": 84,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IsTensorProduct/Variantfad3158d6691441aa7a43d4bd7a58f3021f8e78347e3927b6d70f3c23511dba7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7bcca27cc1bc59da7d1f1e3e6be9f4554f279fd7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IsTensorProduct/Variantfad3158d6691441aa7a43d4bd7a58f3021f8e78347e3927b6d70f3c23511dba7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IsTensorProduct/Variantfad3158d6691441aa7a43d4bd7a58f3021f8e78347e3927b6d70f3c23511dba7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsTensorProduct](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/istensorproduct.md) | 54 | `declaration-track:de37766116f455287f9e6efb8ebb82c14bdccceb5db9c4bd87e2fbc80f097a16` |
| 2 | `theorem` | [TensorProduct.isTensorProduct](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/tensorproduct-istensorproduct.md) | 59 | `result-track:19681a234e9958610a2b3bbece0c249b12809730e6e01dcc5ed5fd996ca5c18c` |
| 3 | `def` | [equiv](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/equiv.md) | 72 | `declaration-track:ee466d23a5e3296de07ad98ca1dbfbb6eea551b2adc301328659459bbd836805` |
| 4 | `theorem` | [equiv_toLinearMap](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/equiv-tolinearmap.md) | 76 | `result-track:0adf3544ebc3ea82a2ace31e1acaadf676cb66d3ef6386e914f69306f80420c8` |
| 5 | `theorem` | [equiv_symm_apply](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/equiv-symm-apply.md) | 81 | `result-track:431be0bcba45e841da55b8b58a659658c479330ac927df5b027cf0c841415a4d` |
| 6 | `def` | [lift](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/lift.md) | 89 | `declaration-track:212978c5365bd249303ef2c264e2b3e1d6bf28be8484dd5c8d02e9167bdf592b` |
| 7 | `theorem` | [lift_eq](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/lift-eq.md) | 93 | `result-track:8e6359918735b7c87083d8d5434a0a8d623963880a2c18189c9781eab6c9b262` |
| 8 | `def` | [map](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/map.md) | 98 | `declaration-track:51d814e1cacdf1e0c7d04f6375f3c5eecb2011972734f7da1b237ce6f116221f` |
| 9 | `theorem` | [map_eq](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/map-eq.md) | 103 | `result-track:68434d59af46cdce3ae445329ac30ee71a0b906ca53338259f01c0037371e57e` |
| 10 | `theorem` | [inductionOn](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/inductionon.md) | 108 | `result-track:de284dd0c068ae51f09880c429c0e54b07da42d85a5fcde93f81e59345deeda8` |
| 11 | `lemma` | [of_equiv](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/of-equiv.md) | 122 | `result-track:8d4550cf0b3df987afb15224add4497d48f5b48434d8c3453b50df2318008d66` |
| 12 | `theorem` | [map_comp](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/map-comp.md) | 136 | `result-track:0084b5c2ad71eaf684914c9542825c2045348e25a31cc4b8d71b61a973b57b4b` |
| 13 | `theorem` | [map_map](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/map-map.md) | 139 | `result-track:84eba026be8c9a95202bf96264132cef481651189e4a6e20fe98dd3fb91484b4` |
| 14 | `theorem` | [map_id](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/map-id.md) | 144 | `result-track:8371e690504f4ffca072b3bfd73ada4071f749804fc79e7fec06042d430b0d5a` |
| 15 | `theorem` | [map_one](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/map-one.md) | 149 | `result-track:91df90961d32458282bc20f1d05afd51b78f9c8f432c17924944d94e2b30d50a` |
| 16 | `theorem` | [map_mul](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/map-mul.md) | 152 | `result-track:367245ced674e8840f5475b2a570dce3226cbab8abcca91ad458a55194f20272` |
| 17 | `theorem` | [map_pow](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/map-pow.md) | 156 | `result-track:2b889997cc52df9389970108923b9e21594df47825a6f2e07f51c8768f2d1c92` |
| 18 | `def` | [assocAux](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/assocaux.md) | 179 | `declaration-track:2b5e000ae152862c3b3744db17e5b2383c745bd3851ecda2c1587ec0db7c4c02` |
| 19 | `lemma` | [assocAux_symm_tmul](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/assocaux-symm-tmul.md) | 207 | `result-track:04fd851f38d20f1c5bb2419c36b49c7d804dd5c6d508d0e68435d3421082ac74` |
| 20 | `lemma` | [assocAux_tmul](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/assocaux-tmul.md) | 212 | `result-track:9db45dae7bedfe8f062b5d529b79ebb6acdeee60d2a760601a1c8879423f3de5` |
| 21 | `def` | [assoc](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/assoc.md) | 225 | `declaration-track:c4c1c51eedcd31d3f5812ab8e0724826a61bf653b6772e9a0e75494471d35196` |
| 22 | `lemma` | [assoc_tmul](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/assoc-tmul.md) | 251 | `result-track:1ec3263d3a4c38883f8c630ef0554756b70644ce68fcdf65d7d7f799f5cc825b` |
| 23 | `lemma` | [assoc_symm_tmul](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/assoc-symm-tmul.md) | 256 | `result-track:6dbda3232485457a6b2599f4e48ad66f2d9f799869f669a8605267c5bef10e40` |
| 24 | `def` | [assocOfMapSMul](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/assocofmapsmul.md) | 262 | `declaration-track:292774d962b483413bb52eaede4e042d95b3352742dfd649faf079ec46f3d128` |
| 25 | `lemma` | [assocOfMapSMul_tmul](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/assocofmapsmul-tmul.md) | 275 | `result-track:35826a939479994ae59a6fa09f6d390d9cc99d98736f28c68162f33df1ac9cd0` |
| 26 | `lemma` | [assocOfMapSMul_symm_tmul](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/assocofmapsmul-symm-tmul.md) | 280 | `result-track:b25c757996b5f3d0193628893ac550c16306a9303a3c07ac90409e20be0d5e45` |
| 27 | `lemma` | [compr₂_linearEquiv](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/compr-linearequiv.md) | 288 | `result-track:008c8fc951a3e271325a1cab793ec1ddd239082c340e00534a97c32d81bdc980` |
| 28 | `lemma` | [compl₂_comp_linearEquiv](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/compl-comp-linearequiv.md) | 294 | `result-track:1cb980dea77ee986b8ea794e863adef9047c4b0a7b193c7103b7de35d939d5d2` |
| 29 | `lemma` | [comp_linearEquiv](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/comp-linearequiv.md) | 300 | `result-track:538ecdf363b364ed26b5810edc193d07a3aaa59cde10bef1e6c0e894e125c2c5` |
| 30 | `lemma` | [compl₂_linearEquiv](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/compl-linearequiv.md) | 304 | `result-track:00a95e87021674233038154642e4616c31470b7e430d6e2dc69ee26dd438d452` |
| 31 | `def` | [IsBaseChange](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/isbasechange.md) | 324 | `declaration-track:71b05e0df04da7d2a9d95ac314609f1503807d6908f183b26d0b8092ce77769c` |
| 32 | `def` | [IsBaseChange.lift](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/isbasechange-lift.md) | 337 | `declaration-track:06cfe4676534165eb48d058b84b6e6c639e5f0b26992bccdf0fb1ec0adf317e4` |
| 33 | `theorem` | [IsBaseChange.lift_eq](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/isbasechange-lift-eq.md) | 350 | `result-track:1051ab84e1a05e5a2ba0214126458856b465779040515c61787d797d6c7993a2` |
| 34 | `theorem` | [IsBaseChange.lift_comp](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/isbasechange-lift-comp.md) | 354 | `result-track:18887d2d5b5ca4652ad4b823c73b16aa38213dec99414b40b564b1d9a34515fe` |
| 35 | `theorem` | [IsBaseChange.inductionOn](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/isbasechange-inductionon.md) | 363 | `result-track:e199a1ec96c45352b40e8059ee1f60b9bea57b55566cbfd1fc35ec5f17819d0d` |
| 36 | `theorem` | [IsBaseChange.algHom_ext](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/isbasechange-alghom-ext-source-edition-2.md) | 368 | `result-track:7c24c4125468c3c15a6c6b6281ceb9afd280761919daa643cce9efa1be7ad7b1` |
| 37 | `theorem` | [IsBaseChange.algHom_ext'](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/isbasechange-alghom-ext.md) | 377 | `result-track:1d0942318af362bbf396831fc98c3dd4e73fd9790d24393ee9ce0fa7b8e56ec0` |
| 38 | `theorem` | [TensorProduct.isBaseChange](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/tensorproduct-isbasechange.md) | 385 | `result-track:56e0db76d436d44754474a3cfb75cbebbbf37387350e75cc0545871a078960af` |
| 39 | `def` | [IsBaseChange.equiv](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/isbasechange-equiv.md) | 398 | `declaration-track:e3194adc9a5205d941d2cd286606c10676c5503625cfe3701517b82c4ca9199e` |
| 40 | `theorem` | [IsBaseChange.equiv_tmul](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/isbasechange-equiv-tmul.md) | 409 | `result-track:73addc641332780c0794c5d747974de579135f08af19a4aa6071132f5e4e4ce2` |
| 41 | `theorem` | [IsBaseChange.equiv_symm_apply](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/isbasechange-equiv-symm-apply.md) | 413 | `result-track:d34989e69a6fdb476de8d77d51dab5c04b8d7288f4546ff12c72a840bce4aac1` |
| 42 | `lemma` | [IsBaseChange.of_equiv](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/isbasechange-of-equiv.md) | 416 | `result-track:725522e1750435368a7580242acb57d5be414e2182e3b7dfe81176aed334761d` |
| 43 | `theorem` | [IsBaseChange.linearMap](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/isbasechange-linearmap.md) | 423 | `result-track:4e234f6058b6c07b89b0e5eb10d13cabb6e9302d684e967a752695ea07b3afad` |
| 44 | `lemma` | [IsBaseChange.iff_of_equiv_comm](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/isbasechange-iff-of-equiv-comm.md) | 429 | `result-track:7401c22beacc18b283511b83bee95d9279f836927f8615e966dc7dbe954950c8` |
| 45 | `lemma` | [IsBaseChange.comp_equiv](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/isbasechange-comp-equiv.md) | 443 | `result-track:284034cce96730f1a7f7a6fa6f1a148425bb12966893c7eabfd63d45cfbd6679` |
| 46 | `lemma` | [isBaseChange_tensorProduct_map](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/isbasechange-tensorproduct-map.md) | 457 | `result-track:3205ee14d6d56905bc6df1f57404e24d53a8b8267612e1ab71e8ff0151b966fa` |
| 47 | `theorem` | [IsBaseChange.of_lift_unique](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/isbasechange-of-lift-unique.md) | 469 | `result-track:70d95cac57421ebeb66b9cd1200f72fc21af18646d6a586aa420f39dc2bf226c` |
| 48 | `theorem` | [IsBaseChange.iff_lift_unique](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/isbasechange-iff-lift-unique.md) | 501 | `result-track:19ea45e7545558ec1157240fedd1c2fb73ae254972c640785f9713b723015c03` |
| 49 | `theorem` | [IsBaseChange.ofEquiv](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/isbasechange-ofequiv.md) | 512 | `result-track:5543cf2d4a505370f66d216f5e153a0277d8674f50b920b96119ad8cdbdbc2cc` |
| 50 | `theorem` | [IsBaseChange.comp](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/isbasechange-comp.md) | 533 | `result-track:bab0e67c434e502affcb12af85d50063b526cf2fff36fe53bfe3d918ba671f72` |
| 51 | `lemma` | [IsBaseChange.of_comp](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/isbasechange-of-comp.md) | 555 | `result-track:51aa9923d5a57e3bbc7b7fa309fb0279cf2c58e84d9491ff18382cbcb39d9069` |
| 52 | `lemma` | [IsBaseChange.comp_iff](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/isbasechange-comp-iff.md) | 577 | `result-track:2f64be29bb3b4550621c2e926da2ccd6d5b5a536944f2ee67aabe0870556c1b0` |
| 53 | `def` | [IsBaseChange.tensorEquiv](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/isbasechange-tensorequiv.md) | 584 | `declaration-track:2f9cda9f8b10f324e5da48961bb5ced359e1db56726f0de6a4164990b3b0b59b` |
| 54 | `theorem` | [IsBaseChange.map_id_lsmul_eq_lsmul_algebraMap](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/isbasechange-map-id-lsmul-eq-lsmul-algebramap.md) | 588 | `result-track:c3ed3fea2ed09971ffdc4949fd77a5bafdc1a71edfeeccc6aa4a47203c87d1fa` |
| 55 | `class` | [Algebra.IsPushout](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/algebra-ispushout.md) | 614 | `declaration-track:51a24c197ab77231a8b26f53b472b8f9736b87efd12d32a3c9b4494a5c78ccaa` |
| 56 | `def` | [Algebra.IsPushout.equiv](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/algebra-ispushout-equiv.md) | 619 | `declaration-track:db0d3c4a1f42f226f812db0213e9e1aab0ab7a449a14fe9f4ddd9195cee8b4c9` |
| 57 | `lemma` | [Algebra.IsPushout.equiv_tmul](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/algebra-ispushout-equiv-tmul.md) | 631 | `result-track:ff40af7ddf9dafce5c8a48fbadb6d5e343d14b619127a2d8ccda414744381d35` |
| 58 | `lemma` | [Algebra.IsPushout.equiv_symm_algebraMap_left](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/algebra-ispushout-equiv-symm-algebramap-left.md) | 635 | `result-track:27199191f682f08ab0bc056092180ac609ab7441f8dfaf0bf264545b312b2a6a` |
| 59 | `lemma` | [Algebra.IsPushout.equiv_symm_algebraMap_right](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/algebra-ispushout-equiv-symm-algebramap-right.md) | 639 | `result-track:0e76b346a6c218a83e2fa1c940b0fc4bc3ffa52b71029552b5a0e5f0b86e4e21` |
| 60 | `theorem` | [Algebra.IsPushout.symm](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/algebra-ispushout-symm.md) | 646 | `result-track:9efc91f3690d05a247c397c435e3f1f0d6ac2529688cef9e4d6c2d208509f45e` |
| 61 | `theorem` | [Algebra.IsPushout.comm](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/algebra-ispushout-comm.md) | 655 | `result-track:bf3a9527abdb834f92d5d0cf6ddfe48dc09be42c6d13b3e017d2315acc220480` |
| 62 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/instance.md) | 658 | `declaration-track:d79e3086159bdcb5b5e56245a99c3557e6ef88001e985003f1b56ea37be637af` |
| 63 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/instance-source-edition-2.md) | 661 | `declaration-track:e4dc1602133ece5683c2dbbd879309c71966fc15b1793f9fce5880846440917e` |
| 64 | `instance` | [TensorProduct.isPushout](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/tensorproduct-ispushout-source-edition-2.md) | 667 | `declaration-track:9e857b75cabd050353953ebc0d5e7d36dff5eb8a9f61943c259eeb8e1c5b1fa1` |
| 65 | `instance` | [TensorProduct.isPushout'](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/tensorproduct-ispushout.md) | 671 | `declaration-track:1833ecfd0f7918f1d182cdb6e3d814e713a49476607301411ee64a1939a175c0` |
| 66 | `lemma` | [Algebra.IsPushout.tensorProduct_tensorProduct](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/algebra-ispushout-tensorproduct-tensorproduct.md) | 675 | `result-track:194ad140e9f7410565cad84b2fc9f0484ff13e3df44c5f349dcfbcf0c110a131` |
| 67 | `def` | [Algebra.pushoutDesc](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/algebra-pushoutdesc.md) | 691 | `declaration-track:f5a33d334e2c152a14978cb03c6e2a629d4c6ad7506a50073ab7d80972b1dfc9` |
| 68 | `theorem` | [Algebra.pushoutDesc_left](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/algebra-pushoutdesc-left.md) | 699 | `result-track:58435aafd150988b7dc6c89cca0a2dd668920d2e518a721da0ab5821196a5c8b` |
| 69 | `theorem` | [Algebra.lift_algHom_comp_left](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/algebra-lift-alghom-comp-left.md) | 704 | `result-track:8d9a74a27f2cbe2c078217acd30c3d97dddc4171d52228efd3bf3b5faf2ba146` |
| 70 | `theorem` | [Algebra.pushoutDesc_right](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/algebra-pushoutdesc-right.md) | 711 | `result-track:59c49918e1eec290446d9039243a26c02b33b992863233ec3a5a6e1462550afb` |
| 71 | `theorem` | [Algebra.lift_algHom_comp_right](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/algebra-lift-alghom-comp-right.md) | 716 | `result-track:31980c327188ddef8d541b636028e836a1fc39cb29831c039e693e6d487a21fc` |
| 72 | `theorem` | [Algebra.IsPushout.algHom_ext](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/algebra-ispushout-alghom-ext.md) | 722 | `result-track:5fc635e5afe2c7fe5d0c4ab5d5431f8683d5964439102227be6b1dfe38ccb5d0` |
| 73 | `lemma` | [Algebra.IsPushout.comp_iff](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/algebra-ispushout-comp-iff.md) | 749 | `result-track:61f5fcdff262ef215f1b4683525db41c47e4fdeb93d33d53bd78c383cd1aa445` |
| 74 | `lemma` | [Algebra.IsPushout.of_equiv](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/algebra-ispushout-of-equiv.md) | 766 | `result-track:dd808c2c5bde948bc48a51c35dab19d2637a36ba15dc5da4d70eef2ac0c40c12` |
| 75 | `def` | [IsPushout.cancelBaseChangeAux](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/ispushout-cancelbasechangeaux.md) | 785 | `declaration-track:07d89800d5248af3e6a5ca0a80ce906fd9a089e1371952b08e7adab47160ced2` |
| 76 | `lemma` | [IsPushout.cancelBaseChangeAux_symm_tmul](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/ispushout-cancelbasechangeaux-symm-tmul.md) | 794 | `result-track:c3270d6b3eaaaeae8fad948e52b0cde8f8a2b1176c0764340b8b91ace8b03e62` |
| 77 | `def` | [IsPushout.cancelBaseChange](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/ispushout-cancelbasechange.md) | 802 | `declaration-track:5ade0039a9e6f53cae3aeac610480018c86bda4c7dba99c3aae3049528b525c9` |
| 78 | `lemma` | [IsPushout.cancelBaseChange_tmul](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/ispushout-cancelbasechange-tmul.md) | 811 | `result-track:20606a6e481a315e92cafcd7aa982017a9e74a7a7c13633af121dd2230957de1` |
| 79 | `lemma` | [IsPushout.cancelBaseChange_symm_tmul](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/ispushout-cancelbasechange-symm-tmul.md) | 817 | `result-track:a19b71dfd2adb0094f150921a318d75a5038ac6f89a8999b6dba519e35a5e348` |
| 80 | `def` | [IsPushout.cancelBaseChangeAlg](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/ispushout-cancelbasechangealg.md) | 824 | `declaration-track:81adad17c1b19968a93bbd92b0fda4588a1cf07682b991ac9cf46964914456a7` |
| 81 | `lemma` | [IsPushout.toLinearEquiv_cancelBaseChangeAlg](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/ispushout-tolinearequiv-cancelbasechangealg.md) | 832 | `result-track:3dbffeef6aaf88f563e01a380b1e8b65ad48243aa7a0104e9e182f4b626eef94` |
| 82 | `lemma` | [IsPushout.cancelBaseChangeAlg_tmul](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/ispushout-cancelbasechangealg-tmul.md) | 838 | `result-track:064990d4359abe5913e28ad3578ad46df281632810c48db5840c78fe5d2ef681` |
| 83 | `lemma` | [IsPushout.cancelBaseChangeAlg_symm_tmul](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/ispushout-cancelbasechangealg-symm-tmul.md) | 844 | `result-track:5f5f2683ad22a6945e76658c8438ce0053020261273d8fcd9793b45b8cf248c5` |
| 84 | `lemma` | [IsPushout.cancelBaseChange_symm_comp_lTensor](../../../../CommutativeAlgebra/IsTensorProductPublic.lean/declarations/ispushout-cancelbasechange-symm-comp-ltensor.md) | 852 | `result-track:2703f5e91fa49166cd4bd182f08e8e4b50c59048480e81198a3ee2973a97b335` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=19282b86bad9cec8a736354cad91188ed9e163b2aec03ba31cc4004a507614b3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/IsTensorProduct/Variantfad3158d6691441aa7a43d4bd7a58f3021f8e78347e3927b6d70f3c23511dba7.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/IsTensorProduct/Variantfad3158d6691441aa7a43d4bd7a58f3021f8e78347e3927b6d70f3c23511dba7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
