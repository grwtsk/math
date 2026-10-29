# Verification target: Subalgebra Basic Of Class

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba93fee93c153a29d3e37ca88b8382b25cf7e255",
  "lexical_observation_count": 185,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant41ea25277b0c51db6c03aa01e1de9962e624c7269ddc84918acd68a96e2885c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba93fee93c153a29d3e37ca88b8382b25cf7e255`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant41ea25277b0c51db6c03aa01e1de9962e624c7269ddc84918acd68a96e2885c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variant41ea25277b0c51db6c03aa01e1de9962e624c7269ddc84918acd68a96e2885c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Equiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.NonUnitalSubalgebra` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleRing.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Subalgebra](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/subalgebra.md) | 22 | `declaration-track:3c3c130a90eefcd8bb0db5a4417cb45021cd90f8baf50b01cf2198676c7351a3` |
| 2 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/instance-source-edition-9.md) | 38 | `declaration-track:3d026633cb1ab50c1137f59ba3df3be95843ab04b43f7e461877ae94770fa0dd` |
| 3 | `def` | [ofClass](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/ofclass.md) | 47 | `declaration-track:1dcd1ebb041971ce987bc7c7927c508d83fa535f4fbd51a73bce9c0318ffac9b` |
| 4 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/instance-source-edition-7.md) | 58 | `declaration-track:2f34c72dbb9e5ecd636babb15af0f0994dd716a55e974bc40621677c34f21e1c` |
| 5 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/instance-source-edition-3.md) | 70 | `declaration-track:09abf0a3c610270321cd431215aab7e3ddfe1a4742e941ba5e52c45ba8257b59` |
| 6 | `theorem` | [mem_toSubsemiring](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/mem-tosubsemiring.md) | 77 | `result-track:103a5c4a613c609ed5a5e38fd0925a8fac26a29b711d7c89b03a279d5cc31708` |
| 7 | `theorem` | [mem_carrier](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/mem-carrier.md) | 80 | `result-track:548ded329b746be558ed7c320f44309feaf37f004c9a237559cf0d52b17f8624` |
| 8 | `theorem` | [ext](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/ext.md) | 84 | `result-track:171c2c750db34395303899b3fbdd51fc45e2a90c0454ac1818b3975d6473080c` |
| 9 | `theorem` | [coe_toSubsemiring](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/coe-tosubsemiring.md) | 88 | `result-track:fa58403ca19f2c22b3a1df0f1065931fb0114d1a2c0b4fe9b26634137aa93546` |
| 10 | `theorem` | [toSubsemiring_injective](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/tosubsemiring-injective.md) | 91 | `result-track:2900b40d96ca1ea1c438860f8b6e1c51973097b9611a60838a6c132d6a5b3970` |
| 11 | `theorem` | [toSubsemiring_inj](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/tosubsemiring-inj.md) | 95 | `result-track:595e75789aff9cb3bf3148bea54dce5879f678e467bd48f7b84019d59c38fd98` |
| 12 | `def` | [copy](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/copy.md) | 101 | `declaration-track:58c6acebe287db60da3be237ed118cd4a62e96dbf5dfe1a05d144135d1a1ec6d` |
| 13 | `theorem` | [copy_eq](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/copy-eq.md) | 106 | `result-track:d921b6556226e5dee4eaf4ff5837629bb4b18136bfb764b0954dce448d6e5bc9` |
| 14 | `instance` | [instSMulMemClass](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/instsmulmemclass.md) | 111 | `declaration-track:ceae74549b40523d321e2e4e80a7e667773371c3b83742a4a2d882d636a2456f` |
| 15 | `theorem` | [_root_.algebraMap_mem](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/root-algebramap-mem.md) | 115 | `result-track:1788b3fa038ce1312abb7f3e96bc1f2abf55d24305c1ae5aa541d631e0707036` |
| 16 | `theorem` | [algebraMap_mem](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/algebramap-mem.md) | 120 | `result-track:d1433bb9ddcb21909eace8b33a12f66b0d484600eddddcc938192a3ed981d9c6` |
| 17 | `theorem` | [rangeS_le](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/ranges-le.md) | 123 | `result-track:d34c3766cb7f7498788ffd6eb2d98a8d466b94f2eb3e0bcda5b42c98881a0dc0` |
| 18 | `theorem` | [range_subset](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/range-subset.md) | 126 | `result-track:f94c47af87d3154c0fb871781cfc10d6268f0ebe66a7784117214bcdf74ab201` |
| 19 | `theorem` | [range_le](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/range-le.md) | 128 | `result-track:c71820ec4cc256937aa5ffaded5a8d39dfe13ae78f5d7d193674fc477074de7c` |
| 20 | `theorem` | [smul_mem](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/smul-mem.md) | 131 | `result-track:3d5f8d0c016808fa12d710ea5e3f8b2c0e1dd66b5686b43a0a8f4912df54d0fa` |
| 21 | `theorem` | [one_mem](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/one-mem.md) | 134 | `result-track:dbc98f48fdb5b226d4b67c357a19f6942ee857b2c55bb3aa9d2b6393c4fa1e55` |
| 22 | `theorem` | [mul_mem](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/mul-mem.md) | 137 | `result-track:f214e7f945c00d045ad554043565d490f88b8bb3b33371422bec97f3785c1db7` |
| 23 | `theorem` | [pow_mem](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/pow-mem.md) | 140 | `result-track:873c068953487cbbc9e2a273b144d341232fe6ff3f6ebd7479a109c8c95eb446` |
| 24 | `theorem` | [zero_mem](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/zero-mem.md) | 143 | `result-track:8afdf5a53add706abf302412612ab4c1c8ae0a96d62db44bc57655c042bc4ab0` |
| 25 | `theorem` | [add_mem](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/add-mem.md) | 146 | `result-track:5c44cd76b086db7572e28aed9df6c8fe3b1759aad4aac7ac39ac651e393a3e6f` |
| 26 | `theorem` | [nsmul_mem](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/nsmul-mem.md) | 149 | `result-track:da30d7bf8ca8675c68489cda7e41897691c6f9f03b83c1390b5a199166a42ded` |
| 27 | `theorem` | [natCast_mem](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/natcast-mem.md) | 152 | `result-track:083c634294060d5650dd93f39b377d822d528910100961d3e5b640c9072bd138` |
| 28 | `theorem` | [list_prod_mem](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/list-prod-mem.md) | 155 | `result-track:a0083420cebadb87a746577b3796b3f941d106fbc911450c040359bf68f5ceed` |
| 29 | `theorem` | [list_sum_mem](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/list-sum-mem.md) | 158 | `result-track:221d210ed03fffcc1e0c48c72a024d4eed28346253cf461a272796b1c5618652` |
| 30 | `theorem` | [multiset_sum_mem](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/multiset-sum-mem.md) | 161 | `result-track:81f8de8ba5f88bd0bf1d62a1a47040c74492446747280a8d862f6d4d9e6884c7` |
| 31 | `theorem` | [sum_mem](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/sum-mem.md) | 164 | `result-track:63f802bd4ef2b66917546ab8f038e01a6bf0f5057b5ec336ef56589e2c5e087f` |
| 32 | `theorem` | [multiset_prod_mem](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/multiset-prod-mem.md) | 168 | `result-track:8e47558526f5a3b9bf12effb32856427074499f13335de4878e9c86d0a4464f1` |
| 33 | `theorem` | [prod_mem](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/prod-mem.md) | 172 | `result-track:f68ad411606517f860248914cd35d349441d79ead4b38e2970f44b14a200e149` |
| 34 | `def` | [toNonUnitalSubalgebra](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/tononunitalsubalgebra.md) | 178 | `declaration-track:a41b1b0de63d94ac79a569f707dd9e1fdd18b13ca6796880f5088338b791a36f` |
| 35 | `lemma` | [one_mem_toNonUnitalSubalgebra](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/one-mem-tononunitalsubalgebra.md) | 182 | `result-track:105f03efea9aa51dd44374854f705361f053d5845b926baed217e8d2942ba65e` |
| 36 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/instance-source-edition-16.md) | 185 | `declaration-track:d68b78923b8a66bcdd07c8013117822e5439895fee5c6fe60bd1c890eca533b6` |
| 37 | `theorem` | [neg_mem](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/neg-mem.md) | 189 | `result-track:eccc90588e358ade482c5f2ac5c7a2039fe287be1d78fa7ef3703b072456954f` |
| 38 | `theorem` | [sub_mem](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/sub-mem.md) | 193 | `result-track:c836e17b161b0c6b93461b7acafad510e8ad98b3e9d0641e3c925f55dfc19432` |
| 39 | `theorem` | [zsmul_mem](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/zsmul-mem.md) | 197 | `result-track:c8f0f7eb1ab05b40306208faaf9d7de5d86cdc37c13acab09ad4c991eef8b9c7` |
| 40 | `theorem` | [intCast_mem](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/intcast-mem.md) | 201 | `result-track:cfc0409f220611d18bbf7008bec9328799eb0c068694a305aef7a67a2ad2d518` |
| 41 | `def` | [toAddSubmonoid](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/toaddsubmonoid.md) | 207 | `declaration-track:9a9599bd52bd7a01e6d1531c8590509ed568a493d648d060cd4e7e2d2f626df3` |
| 42 | `def` | [toSubring](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/tosubring.md) | 213 | `declaration-track:818e900c3a37f98a4549a590f937a9e666c74547ad539c51a6148c1ddafad917` |
| 43 | `theorem` | [mem_toSubring](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/mem-tosubring.md) | 218 | `result-track:a12f0cbccd42ef1b6be88601948909065d810aba9a095b25e94f3e35a36ce4b8` |
| 44 | `theorem` | [coe_toSubring](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/coe-tosubring.md) | 223 | `result-track:78d7d506b3a60b07a76a4903515ae34fbf0c32dee43d76ac5e0f32db16c78917` |
| 45 | `theorem` | [toSubring_injective](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/tosubring-injective.md) | 227 | `result-track:84010d8eb5e26c2569913fddf29811ad8f4dc6de1ffd3fe44a6ef8d808cf3526` |
| 46 | `theorem` | [toSubring_inj](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/tosubring-inj.md) | 231 | `result-track:bf455ffe8fbad3483e010bdf7028853c49261a119c4743ae4f71bd278ec770be` |
| 47 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/instance-source-edition-5.md) | 235 | `declaration-track:14a41de98deb99d5036871d404b2e844bfc048ab5d42d0f203cab287934c99a7` |
| 48 | `instance` | [toSemiring](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/tosemiring.md) | 243 | `declaration-track:d698c5bf4c499fa7b54f47a0d5c662f3e6173789a077b8a0721c70034fb15cd4` |
| 49 | `instance` | [toCommSemiring](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/tocommsemiring.md) | 247 | `declaration-track:e8248d096570e1cef3a93088ece25c7cc34d71eb881d1c97a4d6d9ad5bc56bfa` |
| 50 | `instance` | [toRing](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/toring.md) | 251 | `declaration-track:9d71ef6c56efb006d7c998c18b553f231cefcb58fe8bbc1b3a26fd23eb4e9582` |
| 51 | `instance` | [toCommRing](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/tocommring.md) | 254 | `declaration-track:1ef2eb852f7ffb8bf7f5c46cbc511c22cbe1c384cd91d1a3726e08c8124344b5` |
| 52 | `def` | [toSubmodule](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/tosubmodule.md) | 261 | `declaration-track:2ef83db31a6aa56d1db6bc11cba8f137fd60179adb3290edd716d36733070ee1` |
| 53 | `theorem` | [mem_toSubmodule](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/mem-tosubmodule.md) | 274 | `result-track:02cacc998e13e37f2cdea54cbca8c005c0dff13e95767ebef69cef8644c96764` |
| 54 | `theorem` | [coe_toSubmodule](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/coe-tosubmodule.md) | 277 | `result-track:c3c00e255e6bb92fb86b15e800bed2ac0f5cfa707046f4d9ed53acd42a2123e6` |
| 55 | `theorem` | [toSubmodule_injective](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/tosubmodule-injective.md) | 279 | `result-track:aa90a0162ee9ed2456105ad0df7089fe5653270a92e8d436a029a712ce892fa7` |
| 56 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/instance-source-edition-8.md) | 287 | `declaration-track:2f78207e53a0b748502196a63ed609421de81d79e48e3e861354fa68a9a0e14f` |
| 57 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/instance-source-edition-12.md) | 291 | `declaration-track:8847435f54e879c47cb82dac61582e85b5461198c57b961fe69e7144e42eb848` |
| 58 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/instance-source-edition-18.md) | 294 | `declaration-track:f2461033b2baa1e28d40d628316f5f15dd5d1a98862ae1c3e3cadd9c0c134e18` |
| 59 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/instance-source-edition-14.md) | 303 | `declaration-track:c206c183150fdb2169c360e4a6f72ef78a4ba743c2eef2c7598eb9cd50dcb2ca` |
| 60 | `instance` | [algebra](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/algebra.md) | 313 | `declaration-track:bd52c283987372e7d5ca92a7ba85f4ea40cfae1902142df9990520675a554b8a` |
| 61 | `instance` | [noZeroSMulDivisors_bot](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/nozerosmuldivisors-bot.md) | 317 | `declaration-track:7789a637eb5b89f291f6cf30f6166ac736e2c05c74ee238cc21a2d40460fd5dd` |
| 62 | `theorem` | [coe_add](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/coe-add.md) | 322 | `result-track:b0c7f8851e19b007f1abae27d12fe5594c018e156f60dcb3377001cc47390b30` |
| 63 | `theorem` | [coe_mul](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/coe-mul.md) | 324 | `result-track:32f4643b4646f87868b267f197b18bd6a338edd054a0ca41499cbfa7a4cce505` |
| 64 | `theorem` | [coe_zero](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/coe-zero.md) | 326 | `result-track:5993ae8727ba93591bef5262d36539d29174f622ed0b28c5998dc89862e34075` |
| 65 | `theorem` | [coe_one](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/coe-one.md) | 328 | `result-track:3d8fbb58b6ee107c2ac0676d11389af90d2f9ed112bb941cd38a9a845f6c4ee6` |
| 66 | `theorem` | [coe_neg](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/coe-neg.md) | 330 | `result-track:b830c62be26df440cbd57aedb35eda07d5f653e8e509b3841234347c2158d7be` |
| 67 | `theorem` | [coe_sub](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/coe-sub.md) | 333 | `result-track:97204d08a61e927b179dced1c44f25c5f44990e5e790d50fde15a0470b33de9f` |
| 68 | `theorem` | [coe_smul](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/coe-smul.md) | 337 | `result-track:ac8606dfe3993ee6c4fc777b7501ec68b12665174ef09b9fa4ea423230b1d99d` |
| 69 | `theorem` | [coe_algebraMap](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/coe-algebramap.md) | 341 | `result-track:545a845adbc48a342442a112a79f8fe58397e488199e6a9aa0fa708efb80f657` |
| 70 | `theorem` | [coe_pow](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/coe-pow.md) | 344 | `result-track:f0c473b1b7feefde9c116190bf805c2f83a143520d9d7201f7f4a0be4f4b62b8` |
| 71 | `theorem` | [coe_eq_zero](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/coe-eq-zero.md) | 347 | `result-track:a9dc134e9a2bc700bd02abbc8886db7eea649c90e79087ec20bbaef98a76334c` |
| 72 | `theorem` | [coe_eq_one](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/coe-eq-one.md) | 350 | `result-track:cdf81804e9ab79b289c43dd3145a60e4e6fbef5fd44f805fb65234783838581c` |
| 73 | `def` | [val](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/val.md) | 356 | `declaration-track:1a4c54ebae86253f85773bb209844e7229efcb3732d31b6c09bd25eb7b14c03c` |
| 74 | `theorem` | [coe_val](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/coe-val.md) | 365 | `result-track:9cd3ec99236f1cbf539d166c962dd0c07714fb14117dabc0b6929b1e12060505` |
| 75 | `theorem` | [val_apply](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/val-apply.md) | 367 | `result-track:6c7690005bca8e6f60bef000ca08d9e5361cc04adc1fb28ca0da46cf69bbf9d1` |
| 76 | `theorem` | [toSubsemiring_subtype](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/tosubsemiring-subtype.md) | 370 | `result-track:7c156bc0b7fce2b25f0894915bf49b385235ce2c80030378aeea8c1916d86163` |
| 77 | `theorem` | [toSubring_subtype](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/tosubring-subtype.md) | 373 | `result-track:7e16e1cb9c1d637206afe4295324aef49d937cf33bb185275648e99de1f3bd57` |
| 78 | `def` | [toSubmoduleEquiv](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/tosubmoduleequiv.md) | 378 | `declaration-track:ab68e91e2ed6c000f53d946f9e51d9aca168b7e9304bd2228d1383a3d4a95de1` |
| 79 | `def` | [map](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/map.md) | 383 | `declaration-track:dba70dd3389f39a146553333461150240b293e22f10ab9b962af01c4a2b6d124` |
| 80 | `theorem` | [map_mono](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/map-mono.md) | 387 | `result-track:0364ee4cee40c9ec0d73308ce3f28f4636fa1541a6d1c1a05f2f66fe94baff78` |
| 81 | `theorem` | [map_injective](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/map-injective.md) | 390 | `result-track:e4825e8d1359d03bbb9c86b9fdaaa94ccbefc00f4aec21961a070f4623cee302` |
| 82 | `theorem` | [map_id](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/map-id.md) | 395 | `result-track:5d9de14fe7372d009af6292d22040a84bad9a5e2310c9591fb877ee99a3d2765` |
| 83 | `theorem` | [map_map](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/map-map.md) | 398 | `result-track:7b4846fe730f3f1c4000811f86f7bfc70e2ae55a83af1fb14de14e0fdb66a510` |
| 84 | `theorem` | [mem_map](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/mem-map.md) | 403 | `result-track:cea3125631e94c1576f67651e7073a2da2460f8146b5552b315d1d23f642ff34` |
| 85 | `theorem` | [map_toSubmodule](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/map-tosubmodule.md) | 406 | `result-track:082db5fbbb12cd42c01e26ece4b4b066b1ad1e8b6428590abd93c0be5d7922e5` |
| 86 | `def` | [comap](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/comap.md) | 412 | `declaration-track:f84ebd7f7922ee3e6d24a654d8d418bce538bb3b6671dbdb2e07b253d3852a38` |
| 87 | `theorem` | [map_le](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/map-le.md) | 419 | `result-track:5dfefc193b6fac95e15ab56bafa568ecc7da308faa2ca64e5acddae0464be63b` |
| 88 | `theorem` | [gc_map_comap](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/gc-map-comap.md) | 423 | `result-track:7bc8d1d77e52ec5c56f18b34b280e74ae781db2d290f07def0ac4619360366f4` |
| 89 | `theorem` | [mem_comap](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/mem-comap.md) | 426 | `result-track:4dc005ffce14a7b898318068ab528e0218ef5bcfa15e22c661d8065aea339b19` |
| 90 | `instance` | [noZeroDivisors](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/nozerodivisors.md) | 429 | `declaration-track:f82217af97c465682bd88dfbaf6e6b7f4a53bc775180d0667e9c3de2e3d3f6c0` |
| 91 | `instance` | [isDomain](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/isdomain.md) | 433 | `declaration-track:c0abb119d639106efa5b11c64f0e16f33eb28f4857493c1bab83d0f04bcba63e` |
| 92 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/instance-source-edition-4.md) | 444 | `declaration-track:0c45f8436e68c4fc38afd9f154e7c4e2e751d5c5440f635ac35ce75c90bac298` |
| 93 | `lemma` | [coe_algebraMap](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/coe-algebramap-source-edition-2.md) | 455 | `result-track:65ffce038357e4a5dbe8f4347ce0d4f85099271ed8291ed02fbe66b3aed51488` |
| 94 | `def` | [val](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/val-source-edition-2.md) | 458 | `declaration-track:520e77edafd9a6537f86f39c02b3de1aebf010c36775c6c9d015cdd8b0dc3d58` |
| 95 | `theorem` | [coe_val](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/coe-val-source-edition-2.md) | 464 | `result-track:f38d4957fa521f3c917ba420cf09f97428136312fb148c5cbcf2783b9d83e621` |
| 96 | `def` | [toSubalgebra](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/tosubalgebra.md) | 476 | `declaration-track:719d304064a3af9f911e203a1ff28733dbb75d300daebdd4e9841a6590b12055` |
| 97 | `theorem` | [mem_toSubalgebra](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/mem-tosubalgebra.md) | 486 | `result-track:6d7056a967f9202fb3e07c3ef5718e87d2a2212e759bf18b3b431e00841c429f` |
| 98 | `theorem` | [toSubalgebra_mk](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/tosubalgebra-mk.md) | 489 | `result-track:9495fab0b306f816e1236796dd3926f649f940a4f69da79ed6f8e300d5e552d7` |
| 99 | `theorem` | [toSubalgebra_toSubmodule](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/tosubalgebra-tosubmodule.md) | 496 | `result-track:2e81bf66471c498d74a80963d2366590c130377d52da199b731290fbdf4f453f` |
| 100 | `theorem` | [_root_.Subalgebra.toSubmodule_toSubalgebra](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/root-subalgebra-tosubmodule-tosubalgebra.md) | 501 | `result-track:004f1aada40c7270749e733144eba24dbfc67775a4cc6e3b330b07dad5847c30` |
| 101 | `def` | [range](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/range.md) | 516 | `declaration-track:5d9d4691166690c3098df761df222af0ccbe9cf9c4df616c3a0c603d3e6db70a` |
| 102 | `theorem` | [mem_range](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/mem-range.md) | 520 | `result-track:fe08e305f786376391900cb8a9a03770dcb82bfcd55e36cac17975f461d3d91f` |
| 103 | `theorem` | [mem_range_self](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/mem-range-self.md) | 523 | `result-track:36777c678a8520d57de3caffd1e83dc3f26215bed801b3ea87b115359aaef8a3` |
| 104 | `theorem` | [range_comp](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/range-comp.md) | 526 | `result-track:b7ae869def306157970272dab8d82a4e07dc5ef40dd06dcde4d935c2c7748810` |
| 105 | `theorem` | [range_comp_le_range](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/range-comp-le-range.md) | 529 | `result-track:3d8ac7a3efc5a266515430d35574ecad9f93acc09012410e26465dcbd2499e79` |
| 106 | `def` | [codRestrict](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/codrestrict.md) | 533 | `declaration-track:0e0ab1e854c572a7125aeb39d7fca17227d224c3852938c9b989551448fc4c2c` |
| 107 | `theorem` | [val_comp_codRestrict](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/val-comp-codrestrict.md) | 537 | `result-track:637e6b13ca839df67c95c3b66006d7c6885e6ac77cb07f3c8a636b008552fb8e` |
| 108 | `theorem` | [coe_codRestrict](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/coe-codrestrict.md) | 542 | `result-track:3c26f076a14add1c1c870e6c931ee6643480f519884b6ce7aee4de17acec7de0` |
| 109 | `theorem` | [injective_codRestrict](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/injective-codrestrict.md) | 546 | `result-track:cf325ef48c24250a469b0dc8bd230886e09efb86be11526082ff783960596fa6` |
| 110 | `abbrev` | [rangeRestrict](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/rangerestrict.md) | 553 | `declaration-track:fdd1a3ce41879186694bb6a2aa7f1b45f50a1547d7962427fd74343a17ee7303` |
| 111 | `theorem` | [rangeRestrict_surjective](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/rangerestrict-surjective.md) | 556 | `result-track:9cbcf0649338740aad0827794611394662066bde5d66cf6c187bd45b35b0705e` |
| 112 | `instance` | [fintypeRange](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/fintyperange.md) | 564 | `declaration-track:2a0d64418ad3a2d6e69742f5d974666c6a8d4cd75105c8250b82e3e86c2a8d12` |
| 113 | `def` | [ofLeftInverse](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/ofleftinverse.md) | 577 | `declaration-track:e75a6c80263eaa47494c6e8f0d39076f456ad02531d25ba325459ebf365cc485` |
| 114 | `theorem` | [ofLeftInverse_apply](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/ofleftinverse-apply.md) | 588 | `result-track:d8d86e50e7e591a2349055606439a607966e7222f37ba17ac94b5388c9af6cce` |
| 115 | `theorem` | [ofLeftInverse_symm_apply](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/ofleftinverse-symm-apply.md) | 593 | `result-track:83772353185fcb59db8f1864c71c2983ea0578ed8004c19de42937a38d7363a2` |
| 116 | `def` | [ofInjective](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/ofinjective.md) | 598 | `declaration-track:928708c83a786eb65f3c7f9497db79660087e2b063e3ad48cdde1bfb044e40aa` |
| 117 | `theorem` | [ofInjective_apply](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/ofinjective-apply.md) | 602 | `result-track:63286204841cc7b337fe47e1a6e778522561b1cdcb7edcd04a64f113ee0e51a2` |
| 118 | `def` | [ofInjectiveField](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/ofinjectivefield.md) | 607 | `declaration-track:df12833d2bac8fb579e47973e2809ccfe3b75f3740440e7d590af5822da03d73` |
| 119 | `def` | [subalgebraMap](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/subalgebramap.md) | 614 | `declaration-track:5553617ca70d8807cf33d77760884fb75fe5c774a35602d850e44a2419ea7944` |
| 120 | `instance` | [subsingleton_of_subsingleton](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/subsingleton-of-subsingleton.md) | 628 | `declaration-track:5fbecb39afdab25afb37a7b39ca4d8ab14633baa2d0282be0aec101863a782f3` |
| 121 | `theorem` | [range_val](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/range-val.md) | 631 | `result-track:2106c1b266e838d576a29c8e73f714d7dc423578718b56442ddcab6989251ac5` |
| 122 | `def` | [inclusion](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/inclusion.md) | 637 | `declaration-track:cd9c908d8036c09b8b3bb294e0b1a2da895565e6211ed80bf68ed4f88629e534` |
| 123 | `theorem` | [inclusion_injective](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/inclusion-injective.md) | 647 | `result-track:d91ce1174ebbcf061064147610c102810665d4427cc3aee0fe97a37bf2ff96ac` |
| 124 | `theorem` | [inclusion_self](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/inclusion-self.md) | 651 | `result-track:4f4bcceea472a0e136a36974f0caadd1c8c665a9a87f6172d1788ca723803697` |
| 125 | `theorem` | [inclusion_mk](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/inclusion-mk.md) | 655 | `result-track:460c55330ca1456de5c91cfb2457fb9509a4c6a05aad6152dd8e91cadc1660b0` |
| 126 | `theorem` | [inclusion_right](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/inclusion-right.md) | 658 | `result-track:0302d742a7616ac97ec2f0a7f5f5fbe55c3f298a11bab5a44e664b947a33d545` |
| 127 | `theorem` | [inclusion_inclusion](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/inclusion-inclusion.md) | 662 | `result-track:55117995b90be5ef18854b10f281b251758c47a5b12609719f19aff7d1534986` |
| 128 | `theorem` | [coe_inclusion](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/coe-inclusion.md) | 667 | `result-track:e620952bb89d83a31df09544ed04fc50ed8da5814e4ef7ddf20a18d753ea07a8` |
| 129 | `instance` | [isScalarTower_left](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/isscalartower-left.md) | 672 | `declaration-track:13465f2bc3bdfc05a508bd456a834c279997f6f699b86bb8a9aa008c0da9e0bf` |
| 130 | `instance` | [isScalarTower_right](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/isscalartower-right.md) | 680 | `declaration-track:b557f11fe59338bdaa2ff91fcbd12cf6fa76e60d596f255f04d19c72ac293ba7` |
| 131 | `instance` | [faithfulSMul](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/faithfulsmul.md) | 684 | `declaration-track:ff262a55bd7eed5b8042c9779cf04cbba401b77d5894ecfada68e48513c128f3` |
| 132 | `def` | [equivOfEq](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/equivofeq.md) | 698 | `declaration-track:f60566e32cc2b37a5d6a7d90d45a3d347175aa8fa5c9196ee69fc7180edb6285` |
| 133 | `theorem` | [equivOfEq_symm](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/equivofeq-symm.md) | 706 | `result-track:c3d5b5866552069f8b52a572328929a4c8bc28a25a2356a37b7ce9acd552a773` |
| 134 | `theorem` | [equivOfEq_rfl](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/equivofeq-rfl.md) | 710 | `result-track:4a1cca144ea28ab85fa3128d850203ce7f1b1f21101da98a2a6af98a94fff420` |
| 135 | `theorem` | [equivOfEq_trans](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/equivofeq-trans.md) | 713 | `result-track:505c846e322b53cbddc0d817a850cc30ae6584e064fef989035f0615df839f72` |
| 136 | `theorem` | [range_comp_val](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/range-comp-val.md) | 720 | `result-track:bf40bb15d09f75e49d6b654ef3978bccdc58f2095de4544f2cde453d2ab21f99` |
| 137 | `def` | [_root_.AlgHom.subalgebraMap](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/root-alghom-subalgebramap.md) | 725 | `declaration-track:cbc5f5b7dd3ac50d16d04fda49acc6674adca6b8313e3df02c3e148a346b100d` |
| 138 | `theorem` | [_root_.AlgHom.subalgebraMap_coe_apply](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/root-alghom-subalgebramap-coe-apply.md) | 730 | `result-track:8ab9758ddcb525bd5409c04f825f7c91ffdf4b2b84562c32faa5395cd800ef7b` |
| 139 | `theorem` | [_root_.AlgHom.subalgebraMap_surjective](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/root-alghom-subalgebramap-surjective.md) | 732 | `result-track:49fd606b8f61066cf69997e509b661dcb7cffb0033de170660f4411679633c41` |
| 140 | `def` | [equivMapOfInjective](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/equivmapofinjective.md) | 738 | `declaration-track:cebd9875d3e56d607f00544a18cfedeeb9e9d2f5ffe856c095db61f2d82cb34b` |
| 141 | `theorem` | [coe_equivMapOfInjective_apply](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/coe-equivmapofinjective-apply.md) | 743 | `result-track:97a8d9ed903aa6a62075375761e741e57ae9cca64188cea5e6ffff4eaec573d1` |
| 142 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/instance-source-edition-17.md) | 759 | `declaration-track:e9a1d48af13b977ba611ee40e746bebefd0a30ffec4ef56f4edc03e6cf024ed9` |
| 143 | `theorem` | [smul_def](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/smul-def.md) | 762 | `result-track:40cfe49cac1764294435c80460807ecfb84f531955bafb950237b7a9a45fbf86` |
| 144 | `instance` | [smulCommClass_left](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/smulcommclass-left.md) | 764 | `declaration-track:1cb107120936e97b5feb2ff62e7ed8d36dbd579a1700e2b931035b97357175b6` |
| 145 | `instance` | [smulCommClass_right](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/smulcommclass-right.md) | 768 | `declaration-track:e3cb89fd301ea688af2909b961d5e781e028ecf96d57196939d6ed75d9187cdc` |
| 146 | `instance` | [isScalarTower_left](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/isscalartower-left-source-edition-2.md) | 773 | `declaration-track:7b23655415e44f6b472143ef76541195d38e51e93c44452bfd4aadddfd81f475` |
| 147 | `instance` | [isScalarTower_mid](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/isscalartower-mid.md) | 777 | `declaration-track:ddb0a6f9b7bc381c179a1d39d8fab5c536b32b6891cc9af0122033606d8f08b7` |
| 148 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/instance-source-edition-6.md) | 782 | `declaration-track:1cd51bdc8f83763b2c0e2d476c3ffb1bbb97b6a09c7d887b9062b8fae1675f36` |
| 149 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/instance-source-edition-13.md) | 786 | `declaration-track:8c5ff0c62eb1dacfccfa13633cae801ec3edfcd0cd6bf70a34754b6e76d9a7f4` |
| 150 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/instance-source-edition-2.md) | 790 | `declaration-track:07c7ab5a48455865feb03f37a88436e821644a2904f8077cdd309c34377cfc7f` |
| 151 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/instance-source-edition-11.md) | 794 | `declaration-track:49ea54a4a378e1fee0e90490939105df17d211607c6714f4474cd6845e948470` |
| 152 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/instance-source-edition-15.md) | 798 | `declaration-track:c799a0e2d008d083b950e81b47b1f4f309e030991196f4874c606cf5cdf2572e` |
| 153 | `instance` | [moduleLeft](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/moduleleft.md) | 802 | `declaration-track:7c5fb676895db2af227646da9fa29b9786d7c0caac438ade0347122613b70d51` |
| 154 | `instance` | [toAlgebra](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/toalgebra.md) | 806 | `declaration-track:f49cd70ff5491e16c7c40c3b0816f86c4bd96ab9fdae6b5d949bc0e14bbfa98c` |
| 155 | `theorem` | [algebraMap_eq](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/algebramap-eq.md) | 810 | `result-track:d84232df6350d5fef7bbf5b6796e8c1fded9b7f8ae90a1b63872cccfe18eab07` |
| 156 | `theorem` | [rangeS_algebraMap](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/ranges-algebramap.md) | 815 | `result-track:f1afb6359f9f28fc1607864963fc5098d7b0071579cbbd877765a38d1edf7783` |
| 157 | `theorem` | [range_algebraMap](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/range-algebramap.md) | 821 | `result-track:a6dbebf0a32856b5c6cf364aaa3468cc820ba73baadc4d6eccdc214900585e71` |
| 158 | `instance` | [noZeroSMulDivisors_top](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/nozerosmuldivisors-top.md) | 826 | `declaration-track:d9871f44493a188a8d60b852723f1022e6017cd6566ba406939ff782c5d4a968` |
| 159 | `theorem` | [_root_.Set.algebraMap_mem_center](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/root-set-algebramap-mem-center.md) | 835 | `result-track:554880fe2bccbb4ea2f5827c8199f08da2795014098786cb8124107f257dc415` |
| 160 | `def` | [center](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/center.md) | 843 | `declaration-track:f6fbd6abf1f598d6a9e1c2d2915ab7965e111d749de34e6590010cd8f6b404f6` |
| 161 | `theorem` | [center_toSubring](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/center-tosubring.md) | 847 | `result-track:068b56e5c59a715e09a0ae95c53c441f9d3258f2a25e3054532d4ce7fcdb2660` |
| 162 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/instance.md) | 853 | `declaration-track:05c523058ab67331779ee3740bd384a167f83295098043455659479d82fee4bc` |
| 163 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/instance-source-edition-10.md) | 856 | `declaration-track:47dc43a440701c1b4051a9b3c415e8a52d76c6c8ca0526e43372a5f82eda2975` |
| 164 | `theorem` | [mem_center_iff](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/mem-center-iff.md) | 859 | `result-track:c3ac25b1321f69450f0da66b41cd0eaf0f4dd931411fd964a657ee83bb1a6aba` |
| 165 | `theorem` | [_root_.Set.algebraMap_mem_centralizer](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/root-set-algebramap-mem-centralizer.md) | 867 | `result-track:ef62dcbbd1bfbe808a4af90b2bb6f2c57fe0f30f69d121e6655759077fdfb917` |
| 166 | `def` | [centralizer](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/centralizer.md) | 874 | `declaration-track:3a67d50e751ab3d131c63ad1bd5de7b9f3e1ad5358f4250b129cf9456d2c1dab` |
| 167 | `theorem` | [coe_centralizer](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/coe-centralizer.md) | 878 | `result-track:67c0dd0650bc2f9dda3dce3ed1befa51880afce383799a90c3a0b217037d34f3` |
| 168 | `theorem` | [mem_centralizer_iff](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/mem-centralizer-iff.md) | 881 | `result-track:9ced46bbf2264f1f63eb7f2e65001663f0f51c796b085122bbf1e0bf1c766cd1` |
| 169 | `theorem` | [center_le_centralizer](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/center-le-centralizer.md) | 884 | `result-track:2edb98d7757a4de67c23ffa0e08e04fc478212b8a104b8b29dbc321d15c4ccb1` |
| 170 | `theorem` | [centralizer_le](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/centralizer-le.md) | 887 | `result-track:5881383f50dc9b358ed71d86af16a3f8e1d18fe97674c5687b05089dec586f74` |
| 171 | `theorem` | [centralizer_univ](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/centralizer-univ.md) | 891 | `result-track:122915a5226428db0e3919e707c260b3b619be1fc4dcd0ebdf5698df22cac59b` |
| 172 | `lemma` | [le_centralizer_centralizer](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/le-centralizer-centralizer.md) | 894 | `result-track:f875cbb6a01b4cf9ff3ce8278f9b640b8b83c81896367d8deb20d31c1829d39b` |
| 173 | `lemma` | [centralizer_centralizer_centralizer](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/centralizer-centralizer-centralizer.md) | 899 | `result-track:da6864bdb7bc4cfdba6d850561b618865f62f8591590adabcdedf9a462afff3f` |
| 174 | `def` | [subalgebraOfSubsemiring](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/subalgebraofsubsemiring.md) | 914 | `declaration-track:f9c3d2bdeed1a4c05e65717283ef63f6172a6e10fc14eee39606fb4999ebdd5a` |
| 175 | `theorem` | [mem_subalgebraOfSubsemiring](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/mem-subalgebraofsubsemiring.md) | 918 | `result-track:cfa42573b88564cd8ebb6d6c9e8e2f35d61c44c13e8efc5e0632ee48dbe7c267` |
| 176 | `def` | [subalgebraOfSubring](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/subalgebraofsubring.md) | 930 | `declaration-track:7714949df8092f32078181a859db461cf83d1cc7488de131b13b3622328990d0` |
| 177 | `theorem` | [mem_subalgebraOfSubring](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/mem-subalgebraofsubring.md) | 942 | `result-track:760f855e3ea918eb0f2129f833d72132834ba22f55c9c9ae6813ebe50cc11135` |
| 178 | `def` | [equalizer](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/equalizer.md) | 956 | `declaration-track:f67be97d55cda778883fd080b770c3ff9bbfc7a19b3d6489e5e43bf8f964755e` |
| 179 | `theorem` | [mem_equalizer](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/mem-equalizer.md) | 970 | `result-track:a6da79c7c36eedb852b1f7748fe1380098abe4dc80425aaa3e17fa962efc2759` |
| 180 | `theorem` | [equalizer_toSubmodule](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/equalizer-tosubmodule.md) | 973 | `result-track:48e8be26ba2369983780b7ab0e09651c53567bd463c0caa00cbb390aece930aa` |
| 181 | `theorem` | [le_equalizer](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/le-equalizer.md) | 976 | `result-track:cf026135eb15aa9c0d5f9004335e44a4e3052968a46154abb71f49a3c7125b21` |
| 182 | `theorem` | [comap_map_eq_self_of_injective](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/comap-map-eq-self-of-injective.md) | 988 | `result-track:c2cf892143f4a5c1c5df7836e47350e6e6191df373c2de3e0b5971b099085d43` |
| 183 | `def` | [NonUnitalSubalgebra.toSubalgebra](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/nonunitalsubalgebra-tosubalgebra.md) | 999 | `declaration-track:a510df3d18900aa6f2a3c5f40631cd64935beda7133cdecd11813279a0c4999f` |
| 184 | `lemma` | [Subalgebra.toNonUnitalSubalgebra_toSubalgebra](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/subalgebra-tononunitalsubalgebra-tosubalgebra.md) | 1006 | `result-track:23c2320dacb56f34ee38dbb162ed0874784046c5ede93f5e631c714a2cb22458` |
| 185 | `lemma` | [NonUnitalSubalgebra.toSubalgebra_toNonUnitalSubalgebra](../../../../AssociativeRingsAndAlgebras/SubalgebraBasicOfClass.lean/declarations/nonunitalsubalgebra-tosubalgebra-tononunitalsubalgebra.md) | 1009 | `result-track:4c33330c5fa1ca5e795d281989d8effa3123e135272dc98a44ee408dd84a6452` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b090bbd279b607355595a1556c7b8b56a24d01e8d38b0750c6929f2ab3819f99 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant41ea25277b0c51db6c03aa01e1de9962e624c7269ddc84918acd68a96e2885c3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Basic/Variant41ea25277b0c51db6c03aa01e1de9962e624c7269ddc84918acd68a96e2885c3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
