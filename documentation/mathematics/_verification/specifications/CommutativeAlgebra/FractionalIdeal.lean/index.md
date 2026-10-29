# Verification target: Fractional Ideal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cef26cdc017c8c63805d5b39a0d985b521d336c1",
  "lexical_observation_count": 197,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FractionalIdeal/Variant3503c7ee7a7a573e51a090283a698fabe34f5b4d8a40d35147dac2ab848e78dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/FractionalIdeal.lean/index.md) · [Full source](../../../../CommutativeAlgebra/FractionalIdeal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cef26cdc017c8c63805d5b39a0d985b521d336c1`.

Source path: `GRWTSK/Algebra/FractionalIdeal/Variant3503c7ee7a7a573e51a090283a698fabe34f5b4d8a40d35147dac2ab848e78dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FractionalIdeal/Variant3503c7ee7a7a573e51a090283a698fabe34f5b4d8a40d35147dac2ab848e78dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Finprod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Integer` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Submodule` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsFractional](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/isfractional.md) | 87 | `declaration-track:5d0afe20ee636f01d75d965f4c6ef29646ca1fc38156570c10bfe6c717910525` |
| 2 | `def` | [FractionalIdeal](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/fractionalideal.md) | 99 | `declaration-track:2b7eb0cf483a79a3b502d2e5bfc36b9a430bb7dffb2daa385c1591f8ca2c9873` |
| 3 | `def` | [coeToSubmodule](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coetosubmodule.md) | 120 | `declaration-track:8f02326a13e45cd22fa7f39a818923c8b387ee9765044a4c8a001eccceadfff9` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/instance.md) | 130 | `declaration-track:2335a89a9b8bf7e892c8bc58826ecfb0135a44f0a746c966a565b3fc8a93cfcc` |
| 5 | `theorem` | [isFractional](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/isfractional-source-edition-2.md) | 133 | `result-track:d18edcc752ac1a5be3994fc7970ccc875080f65e7f1419e73f45805478bea448` |
| 6 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/instance-source-edition-11.md) | 139 | `declaration-track:ac880eb358c1b3604e7575b4b5498e33313516e79882f770560f8daf727c5d9d` |
| 7 | `theorem` | [mem_coe](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/mem-coe.md) | 144 | `result-track:55593659e0d450d914f398d880468c80b920d3a5205dda1ffca980c370f1d43f` |
| 8 | `theorem` | [ext](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/ext.md) | 149 | `result-track:26646af0d2d3b309a515a36ea37fbc25674b79df8a0beb0c82488148b3c58329` |
| 9 | `def` | [copy](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/copy.md) | 155 | `declaration-track:13c3777b4aec85854a6d13c2044b54c310e1cbf91f39623d7883d81d1171e9f9` |
| 10 | `theorem` | [coe_copy](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coe-copy.md) | 164 | `result-track:e41caac0d91656ff9f7e35064d81b67d4b05724488f3e0e6a9c749be1d0f6e92` |
| 11 | `theorem` | [coe_eq](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coe-eq.md) | 168 | `result-track:e23d8acb2789fe003835e07160dfd7428b5fec8b9b7fc2f58b6e2f085ad13c80` |
| 12 | `theorem` | [val_eq_coe](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/val-eq-coe.md) | 176 | `result-track:8d69d54d4dc7ff2dd3be0c0be257abca210727db3cdd3caec5bd82596d2e84e5` |
| 13 | `theorem` | [coe_mk](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coe-mk.md) | 182 | `result-track:1eee5ac399b5df28f87d4427aa39f97655c41ed3df7f126d1f32fe16cfb741ce` |
| 14 | `theorem` | [coeToSet_coeToSubmodule](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coetoset-coetosubmodule.md) | 188 | `result-track:d8e89188dfe5ed35f6e3ae76c1fb7df443e258b0476c57dccee40f7f321e9088` |
| 15 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/instance-source-edition-18.md) | 194 | `declaration-track:fe90274fc7df0500e4315fafec5f71e07ad123411c183be356ca1b3a3e547081` |
| 16 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/instance-source-edition-8.md) | 197 | `declaration-track:87d7cb8259b1a60bdd74e5d5cf062b2c9a3a012c47974bcfa73d8af1499986de` |
| 17 | `theorem` | [coeToSubmodule_injective](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coetosubmodule-injective.md) | 200 | `result-track:0349f5db7e63bb7394d368d5321e713451be3c5688847bb96de1730dfb02277e` |
| 18 | `theorem` | [coeToSubmodule_inj](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coetosubmodule-inj.md) | 205 | `result-track:6e16f1f80ca885a65fbb9ff113bd31ae6d0e604a0c896bc79347919056330c74` |
| 19 | `theorem` | [isFractional_of_le_one](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/isfractional-of-le-one.md) | 209 | `result-track:d598a6eeb5da9304ccd64a7fc9f1f4281e7df7567505433bbd41d594f829fa5e` |
| 20 | `theorem` | [isFractional_of_le](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/isfractional-of-le.md) | 217 | `result-track:1b50d1f9563e57d261353b44f84d135f3d57e891b9e9f0c0dbc7a82b735faa34` |
| 21 | `def` | [coeIdeal](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coeideal.md) | 229 | `declaration-track:c8821e7436b06e12644c16a875e4fdf2b64663812644a1c9f92b7864969e18f3` |
| 22 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/instance-source-edition-7.md) | 242 | `declaration-track:7c88cd2706341b7e0e047ea4f22c81b6b4982c0ebd7552d9dd5ba94e0b9c17cb` |
| 23 | `theorem` | [coe_coeIdeal](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coe-coeideal.md) | 246 | `result-track:e13a34cfef5e3935961e4f67190de83a01bd847a18a2c92d46b033756b6461f0` |
| 24 | `theorem` | [mem_coeIdeal](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/mem-coeideal.md) | 254 | `result-track:1903fd28026239bc6b5aa6398b5e78a18a796c8659beefcf06b72d95ccc337ce` |
| 25 | `theorem` | [mem_coeIdeal_of_mem](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/mem-coeideal-of-mem.md) | 259 | `result-track:d8609f3706362f366b7e91619163dcaa053346614f07868e88d2e53021330f26` |
| 26 | `theorem` | [coeIdeal_le_coeIdeal'](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coeideal-le-coeideal-source-edition-2.md) | 264 | `result-track:e23b4286b906f3256f9a76a3a232c700470a42f07fbbfc853bbb32ed2ec80150` |
| 27 | `theorem` | [coeIdeal_le_coeIdeal](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coeideal-le-coeideal.md) | 270 | `result-track:7cc02d8a697fa241d86f5ace101a8c93b6d62ee60483384303ca7fe6349a3067` |
| 28 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/instance-source-edition-5.md) | 275 | `declaration-track:740a622b24678aaf2fdcd4bb0cc8f6d621391bd8816fef9c8e2eab5dd3a3b07d` |
| 29 | `theorem` | [mem_zero_iff](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/mem-zero-iff.md) | 279 | `result-track:faa14f40856e93d41981a5a5a6b39d2184a86d010de3e098228d820bf1ab1196` |
| 30 | `theorem` | [coe_zero](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coe-zero.md) | 288 | `result-track:0f64454a389bf11a34d5c7773a68453496d512b5b78a4d6c235b54b175858bbe` |
| 31 | `theorem` | [coeIdeal_bot](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coeideal-bot.md) | 293 | `result-track:fd8900be35de2b50fbec65b033e415477e858dec4578d2f1f87f4de045cb2031` |
| 32 | `theorem` | [exists_mem_algebraMap_eq](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/exists-mem-algebramap-eq.md) | 300 | `result-track:02b04c668b0983f381dfc6322435a1bbcc31bb6cccad9ffd29506a196a2c2747` |
| 33 | `theorem` | [coeIdeal_injective'](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coeideal-injective-source-edition-2.md) | 307 | `result-track:832e80dfaa05b6be5cab158f49d2f5d4aace588c86e69e5ae98b486860520980` |
| 34 | `theorem` | [coeIdeal_inj'](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coeideal-inj.md) | 313 | `result-track:46945b5f3a7c2dc74740dc6a019ea641c14b951875ff9dd2225288e4d3df5d0e` |
| 35 | `theorem` | [coeIdeal_eq_zero'](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coeideal-eq-zero.md) | 319 | `result-track:ca1785d31ebb5607a9d0795686491f4b80e9020d84b97578cdececd630808822` |
| 36 | `theorem` | [coeIdeal_ne_zero'](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coeideal-ne-zero-source-edition-2.md) | 324 | `result-track:a2ae815b3d80e0a5ece6330050881aa0cc4fbce23d255766bb694029e7ed4231` |
| 37 | `theorem` | [coeToSubmodule_eq_bot](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coetosubmodule-eq-bot.md) | 329 | `result-track:2ee004839dfe3a9d42c85a5e564521231dad8275426ca35014fca3275cd0a4b5` |
| 38 | `theorem` | [coeToSubmodule_ne_bot](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coetosubmodule-ne-bot.md) | 333 | `result-track:4988398441fdfbafd91364df5a8ace2bd2915d410c9a49afecc532839cc68c5a` |
| 39 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/instance-source-edition-4.md) | 337 | `declaration-track:368cfdcfba83445cc1cc4190c7aa3efd84ed01c775324f4fa96f24525c309a9d` |
| 40 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/instance-source-edition-12.md) | 340 | `declaration-track:aeb96184e56dcbc359cd5f97a2a3b1c0264ed6d8b3500851000c88729fe5018d` |
| 41 | `theorem` | [coeIdeal_top](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coeideal-top.md) | 346 | `result-track:dfe783cc673885a2d8498ddefc340ada4c339130adbf2c5796c1a0dd390c8348` |
| 42 | `theorem` | [mem_one_iff](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/mem-one-iff.md) | 350 | `result-track:00e30c305a65ea1990c86b697f24c8d93ee6cdd856ff20f9137e68a5fd34583d` |
| 43 | `theorem` | [coe_mem_one](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coe-mem-one.md) | 354 | `result-track:127e17f477ff747fde117643b35db329a4bc5676a87e73a8f484faf098a57846` |
| 44 | `theorem` | [one_mem_one](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/one-mem-one.md) | 358 | `result-track:135a9d9987d22e78a8b16353ad208d893e5abbf4d4e3269036fb00eb36018059` |
| 45 | `theorem` | [coe_one_eq_coeSubmodule_top](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coe-one-eq-coesubmodule-top.md) | 368 | `result-track:c8b1649982eb780d5c828f8eab56cada46365fe2faa30bda4c09bc1d065da138` |
| 46 | `theorem` | [coe_one](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coe-one.md) | 373 | `result-track:4e538563c9bcae89493e8d0001556b8d6fcfff673174759d39ee0d0fa6c83b4c` |
| 47 | `theorem` | [coe_le_coe](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coe-le-coe.md) | 388 | `result-track:35279a6cc0e249dd9796c195c7d13ac674dc1d01c68384fe4c6e91cd35b6ac89` |
| 48 | `theorem` | [zero_le](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/zero-le.md) | 393 | `result-track:2e3652ad11c4ae8155f077b3b2156d74b31c5aa515f4d847bac6be43a327fc43` |
| 49 | `instance` | [orderBot](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/orderbot.md) | 400 | `declaration-track:6bf240ac5fd9e869b47be1946d55c042f10faea924455b0c918f78c21eba6fb7` |
| 50 | `theorem` | [bot_eq_zero](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/bot-eq-zero.md) | 406 | `result-track:587d545c809581d8d9a48dfb9cedb4ba5b7639a20f0907b24316977d79a63656` |
| 51 | `theorem` | [le_zero_iff](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/le-zero-iff.md) | 411 | `result-track:ccc731b331a042f9f1732ca983002bdb8463e21242fd4388390461c0d18cc94e` |
| 52 | `theorem` | [eq_zero_iff](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/eq-zero-iff.md) | 415 | `result-track:0bb523dc96f8390900d438d3632e64d9fff43b0339a9ac865678400b317664a8` |
| 53 | `theorem` | [_root_.IsFractional.sup](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/root-isfractional-sup.md) | 420 | `result-track:adee77687c62fdad8a9bacf80e80a060779a26878420b1e7542a8e15b87bef9c` |
| 54 | `theorem` | [_root_.IsFractional.inf_right](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/root-isfractional-inf-right.md) | 433 | `result-track:840da66f7d3c94134f26a45e27b0a5b362873131e422ac950d349f0808678b88` |
| 55 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/instance-source-edition-9.md) | 441 | `declaration-track:896fd6e5189e8d3e36e01662bd29d36f71747e0610629f1f14962239e8117c76` |
| 56 | `theorem` | [coe_inf](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coe-inf.md) | 445 | `result-track:7b61359db5cf24758fc9e4137fd6abd868870c84888a8124d178ca77c83f67fe` |
| 57 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/instance-source-edition-16.md) | 449 | `declaration-track:f2520377d4696bed8920a94dfe7705a8e09a369affdf9d5d0b0e2b2f54f09d11` |
| 58 | `theorem` | [coe_sup](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coe-sup.md) | 453 | `result-track:98b2c6178d1f7b38a95bd7afa2ecfef5e8aa4447310f815de215a70a48bee1d3` |
| 59 | `instance` | [lattice](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/lattice.md) | 457 | `declaration-track:09cd8fdf99358bb3f13999aa2f9bd485f4995d672760f93befbfa81c50d50664` |
| 60 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/instance-source-edition-3.md) | 461 | `declaration-track:32112fb4dcf54af6a5aaf95ad6afec4ac24b2ba2ad82ff6950301a4df403b130` |
| 61 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/instance-source-edition-6.md) | 468 | `declaration-track:776154e697321df6ce0ced304f620fabb3fd2cd5abe8ef08484ac9fe24bbbe13` |
| 62 | `theorem` | [sup_eq_add](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/sup-eq-add.md) | 472 | `result-track:b9fa51bdc2102712f09008b7c03de0f006419b4c6a7a9c0e408f747945bfada1` |
| 63 | `theorem` | [coe_add](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coe-add.md) | 477 | `result-track:36f410ee16f9153015a8fe0da97bd528b32272d899153c6a11a92eeabaeedc98` |
| 64 | `theorem` | [coeIdeal_sup](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coeideal-sup.md) | 482 | `result-track:379c2f4d897c7c3a36537b584cfe86a50d746ad02c24e2d3f5729f7b26d66b71` |
| 65 | `theorem` | [_root_.IsFractional.nsmul](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/root-isfractional-nsmul.md) | 486 | `result-track:e5183eb56aa48aae6bc2bb133190b746fa8a888312e229c2170b1716ab3abfc7` |
| 66 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/instance-source-edition-15.md) | 497 | `declaration-track:d99e339352e894140b48b5f38dceb1ef6acda11a40e74f39ad0b6b1342e01a94` |
| 67 | `theorem` | [coe_nsmul](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coe-nsmul.md) | 500 | `result-track:ed8fccd1a4ad7d695c7f1fcaae79edcdb994f753b1901249d1f00ac4b70bcd77` |
| 68 | `theorem` | [_root_.IsFractional.mul](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/root-isfractional-mul.md) | 505 | `result-track:8c1f9eee853a2ead8c770e2c44f4bcd68e868912cfda432b5c37e8371164ed31` |
| 69 | `theorem` | [_root_.IsFractional.pow](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/root-isfractional-pow.md) | 520 | `result-track:50715eb72ace20288e44c7a2670997b5e3ac3737d24d42b42a048c83b47d5608` |
| 70 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/instance-source-edition-14.md) | 539 | `declaration-track:ce62572fee4b88321bea016e25ec94ddaae4ae8de480541143d9a2081560a5fd` |
| 71 | `theorem` | [mul_eq_mul](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/mul-eq-mul.md) | 543 | `result-track:4fa177635db6f3ce21aad44d205c86cafe4dc2354190c10dddd6f805c3b51ec1` |
| 72 | `theorem` | [mul_def](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/mul-def.md) | 547 | `result-track:5a9d3749b2afaec8c5b607ce39d9caf597da697a5908b9731e6dee0c5b78e69a` |
| 73 | `theorem` | [coe_mul](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coe-mul.md) | 552 | `result-track:4e98356890ba1fda883c7780fc58a7d5046e1dc810826f8786c78c91e75974ad` |
| 74 | `theorem` | [coeIdeal_mul](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coeideal-mul.md) | 558 | `result-track:6ff7eb11bb2700635f8c2e12934ee9a6221dddc059011a0b705d51884ab972df` |
| 75 | `theorem` | [mul_left_mono](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/mul-left-mono.md) | 563 | `result-track:aa73f52f81836628ad0d7ee30c002d4daecae5c271a5c5673a8aad32a2f076d4` |
| 76 | `theorem` | [mul_right_mono](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/mul-right-mono.md) | 569 | `result-track:1ea3f1658648407ae783d4d4e7f0c5010406e34444c3760a098aa1e4a90627a4` |
| 77 | `theorem` | [mul_mem_mul](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/mul-mem-mul.md) | 575 | `result-track:a894c8d908a9fac9a2ae7b4b47c9e57118344b4f04c09a063d4a232e3930e9db` |
| 78 | `theorem` | [mul_le](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/mul-le.md) | 581 | `result-track:37a8796c4dc34de48d6c0782bc4b4a756ef2368fcff542ab862de90d00ef4299` |
| 79 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/instance-source-edition-2.md) | 586 | `declaration-track:24915207dc7d8288346d637dc3b27539f85d9fc882b1199343f8d677e0366978` |
| 80 | `theorem` | [coe_pow](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coe-pow.md) | 590 | `result-track:371b67a8d2a0372226928208eb3db4a1e05168092cffa6612f8e62f77563b91c` |
| 81 | `theorem` | [mul_induction_on](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/mul-induction-on.md) | 595 | `result-track:512261c71a039c94bc4052248f4df1030a5e6092b967cdeb5aad9b9e91917516` |
| 82 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/instance-source-edition-17.md) | 602 | `declaration-track:f424072656f5e695e6327ecff8d15890d2251a7276fc7e4a6e3214e107c4ace8` |
| 83 | `theorem` | [coe_nat_cast](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coe-nat-cast.md) | 605 | `result-track:ffea1b744ae0ce802821226324e50b57c7b70d6fe29c1a4f6482109cf852f965` |
| 84 | `instance` | [commSemiring](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/commsemiring.md) | 610 | `declaration-track:475397cb2cae16f5521fcbcf2e0b50a1882db26f3bb25ab3897d6bde966eb53d` |
| 85 | `def` | [coeSubmoduleHom](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coesubmodulehom.md) | 618 | `declaration-track:0edb9be324630a7315ccda22252cff86ab8eb59110c98bbfbf6624f225ab2ce3` |
| 86 | `theorem` | [add_le_add_left](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/add-le-add-left.md) | 630 | `result-track:555cbc750aa5748baef71fe141cb8d29eb0712205f502aa2af65e7924ce3128e` |
| 87 | `theorem` | [mul_le_mul_left](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/mul-le-mul-left.md) | 635 | `result-track:6ab78d969a9be21dcbb8a4e57f0034bfb170746b89b16f82ab3c5efe33d50013` |
| 88 | `theorem` | [le_self_mul_self](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/le-self-mul-self.md) | 640 | `result-track:f6406973db2230602ac6c0145745b4d36ff6755a1822b10fcbe9506ea4079c77` |
| 89 | `theorem` | [mul_self_le_self](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/mul-self-le-self.md) | 645 | `result-track:b5eb4f94b1dd6c56a249c40311d688d9c8db795e129d41854ffc0f7c1b749224` |
| 90 | `theorem` | [coeIdeal_le_one](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coeideal-le-one.md) | 650 | `result-track:e4d65db17456ba87fbf40dc20f645338f2e8ae0653867fe8d6db81785cf38891` |
| 91 | `theorem` | [le_one_iff_exists_coeIdeal](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/le-one-iff-exists-coeideal.md) | 655 | `result-track:b69dbb5da4d5fcf6c8e997949613ef03be7f1a0d920165cff6e97c01fbbb32f8` |
| 92 | `theorem` | [one_le](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/one-le.md) | 681 | `result-track:ac7ca24cc70d4627116ee50adc96bc07b1b883df3f6c3259c3907dcff461390c` |
| 93 | `def` | [coeIdealHom](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coeidealhom.md) | 689 | `declaration-track:e1efd651b8636a147cf2ac4ba6833e90b7047fba78426fb1c6ff7de458e1b67b` |
| 94 | `theorem` | [coeIdeal_pow](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coeideal-pow.md) | 697 | `result-track:98f515fe6c99aa3e3259cda2a54864ebb399e6c9194dccc629d6a34d81017cf3` |
| 95 | `theorem` | [coeIdeal_finprod](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coeideal-finprod.md) | 703 | `result-track:af8d45353dee8ca901de4823463db45d8dbac4728623165eb958b286406cd8fc` |
| 96 | `theorem` | [_root_.IsFractional.map](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/root-isfractional-map.md) | 715 | `result-track:9d3d83b3eea1a7e6f29bb9fa6f1a7ff980b11e5bf92bd07b878c13734f647f10` |
| 97 | `def` | [map](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/map.md) | 726 | `declaration-track:eedcddd74c3bb746f8ce013592623f5a33df9bfa4ff72a6b1e5b17fc8672dae5` |
| 98 | `theorem` | [coe_map](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coe-map.md) | 731 | `result-track:96254c50957b965cb10e2002b134b98f0b34f5384003529de55b93535f3ba19f` |
| 99 | `theorem` | [mem_map](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/mem-map.md) | 737 | `result-track:72f8c1ce599474bc93e694a8340f6c7a23e54428e1280f83c8a7c4b56561c0d1` |
| 100 | `theorem` | [map_id](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/map-id.md) | 745 | `result-track:a2cb68c350e1b2fb7de83a8f3921dd2474ae020f1c3ffabf86f57461ba5856a1` |
| 101 | `theorem` | [map_comp](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/map-comp.md) | 750 | `result-track:8347e1e00929749581d54562646229d3e6aee596e0c7df9d0703ba0bc854896b` |
| 102 | `theorem` | [map_coeIdeal](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/map-coeideal.md) | 755 | `result-track:596086d117a445831b1f0abf5e73a8428920a52141da88eea5cbaedfdd397ae7` |
| 103 | `theorem` | [map_one](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/map-one.md) | 766 | `result-track:f87e623bde295e4a13cb5e331571cc2dbfb1ffa013de3fe5cbf567ea35a9c911` |
| 104 | `theorem` | [map_zero](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/map-zero.md) | 771 | `result-track:46a006aaa0923266e1af27c0dc4dda4e751b6d5d21e8ec13a9bcf02e13c0b172` |
| 105 | `theorem` | [map_add](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/map-add.md) | 776 | `result-track:0f572592dc27528b464b8f9d719e5de9f57086bc0931425a9fc7b3c2673e5b4d` |
| 106 | `theorem` | [map_mul](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/map-mul.md) | 781 | `result-track:c73cbed25c46ff9cce2272b5b6025af939f99e549c75a945e557770d83efc6c0` |
| 107 | `theorem` | [map_map_symm](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/map-map-symm.md) | 787 | `result-track:6838e7627ffe5e314227376cf791030992692892306bf65b24f8192ae39855cf` |
| 108 | `theorem` | [map_symm_map](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/map-symm-map.md) | 792 | `result-track:91a238873e57a74dd59f6f927cbed5523c9971df788ba3b0143524e304281a59` |
| 109 | `theorem` | [map_mem_map](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/map-mem-map.md) | 797 | `result-track:d430de85cf7a4c16344c5ebac1ea1139ff2d78f44cff4bdcac545e262eafd5e2` |
| 110 | `theorem` | [map_injective](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/map-injective.md) | 802 | `result-track:5490055aef4f1e6f0d04dbe2fdde4a0bea6bbe017d3cc5e81c799febae70d7c0` |
| 111 | `def` | [mapEquiv](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/mapequiv.md) | 808 | `declaration-track:49d189383f744d6bdb04221452fdbddae6e7dec29914cb29c55ddd947483b8bc` |
| 112 | `theorem` | [coeFun_mapEquiv](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coefun-mapequiv.md) | 818 | `result-track:860d43e935f25c766b21dfcbe05ea5b064706e542e42b1f44bce0d01a1a4b475` |
| 113 | `theorem` | [mapEquiv_apply](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/mapequiv-apply.md) | 824 | `result-track:1b367dea9113b1227af505c555259aa3ce110fe2a0460b7806c0c75c4fa52687` |
| 114 | `theorem` | [mapEquiv_symm](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/mapequiv-symm.md) | 829 | `result-track:97cbc123907329d741483522416ac1f9982655fe45a0891e6c90c797c462dc5b` |
| 115 | `theorem` | [mapEquiv_refl](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/mapequiv-refl.md) | 835 | `result-track:338bf81135f396423c8bbe71f8917d604aad3237761c7493e1c8bd85bc30b18e` |
| 116 | `theorem` | [isFractional_span_iff](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/isfractional-span-iff.md) | 839 | `result-track:198ac95c8c14bb665d5844fbdcba901dabf44a1218f5f5498f666463f5bf0c1b` |
| 117 | `theorem` | [isFractional_of_fg](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/isfractional-of-fg.md) | 855 | `result-track:d3b601b50b1bf95ff01c08aca4d7ebe8cbfcee2d036ee71352163eb97c1a1812` |
| 118 | `theorem` | [mem_span_mul_finite_of_mem_mul](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/mem-span-mul-finite-of-mem-mul.md) | 862 | `result-track:e551ebf8dff56316b82b4911ffbff7d1b62fb7a9dae4e8bd3d3f833f7af6327a` |
| 119 | `theorem` | [coeIdeal_fg](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coeideal-fg.md) | 869 | `result-track:533299d79d27bb977d797f410d6fcc61a8a459eac4ad896f0620e4b80b5d233b` |
| 120 | `theorem` | [fg_unit](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/fg-unit.md) | 876 | `result-track:c342b0f3558b30ed198c47821c6ab5e1d3aad36465e2bdbd1cc399c43aa52e3e` |
| 121 | `theorem` | [fg_of_isUnit](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/fg-of-isunit.md) | 880 | `result-track:7a4a2990227a98c712f363ce6d51c3db969e5b5cfa644675d0cde8ad50a5eaec` |
| 122 | `theorem` | [_root_.Ideal.fg_of_isUnit](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/root-ideal-fg-of-isunit.md) | 884 | `result-track:40c6ae2d83b7bb069daed40fcd6dd87c80f079f49c41925dccb953bf411b9aba` |
| 123 | `theorem` | [mem_canonicalEquiv_apply](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/mem-canonicalequiv-apply.md) | 903 | `result-track:62028acd608fd095a0334e2dd1ddd22e31e48c871207c88c7d72a15e6a0c66f8` |
| 124 | `theorem` | [canonicalEquiv_symm](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/canonicalequiv-symm.md) | 914 | `result-track:c648cc7b62d1d3a8779e86b64e14b72d07babd409cbdb4774b9843790439f4ea` |
| 125 | `theorem` | [canonicalEquiv_flip](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/canonicalequiv-flip.md) | 922 | `result-track:d309b0ff7741a91d7b08924159783109e9f58f317b9590d524a913601f0c3369` |
| 126 | `theorem` | [canonicalEquiv_canonicalEquiv](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/canonicalequiv-canonicalequiv.md) | 927 | `result-track:6b4924ecfd6ced0db3ff600a1f8079ae3388e31ccfb4579af4e85b42cbb8b22b` |
| 127 | `theorem` | [canonicalEquiv_trans_canonicalEquiv](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/canonicalequiv-trans-canonicalequiv.md) | 935 | `result-track:28734de5de322fb51e84ac7590715fc21e66d5f0c1ac0870db739c6a0e2b35fa` |
| 128 | `theorem` | [canonicalEquiv_coeIdeal](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/canonicalequiv-coeideal.md) | 942 | `result-track:1b3b45e7494a5870bf13c5d4032659b26de860fb7f2d6f6dd8b76e18090b65f0` |
| 129 | `theorem` | [canonicalEquiv_self](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/canonicalequiv-self.md) | 948 | `result-track:edd84c2ad5241ef290786d83c2b374e46ef114135dc6f5130c1263ba51aa895b` |
| 130 | `theorem` | [exists_ne_zero_mem_isInteger](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/exists-ne-zero-mem-isinteger.md) | 973 | `result-track:412a4dbb2c039f767c6aa146d38c38861ef87d7285cab7e211f9e4d31227e74c` |
| 131 | `theorem` | [map_ne_zero](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/map-ne-zero.md) | 986 | `result-track:e862972a34a472d9bfce86285b6bbb01ada5ddbc047aed8ce1ae9dfb2877f33e` |
| 132 | `theorem` | [map_eq_zero_iff](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/map-eq-zero-iff.md) | 994 | `result-track:d6b177695614f6fc4914680a969b87b7b573f4ee109b9ffe89d24c25aa73e337` |
| 133 | `theorem` | [coeIdeal_injective](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coeideal-injective.md) | 998 | `result-track:783dd4b2131421fe985afe18940c7700dfff06547f824ebce3a974d4fdb1d7f0` |
| 134 | `theorem` | [coeIdeal_inj](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coeideal-inj-source-edition-2.md) | 1002 | `result-track:535f5f7b52fa518c3f58b875b366481d426fedc59e33508e6f5e11feaaba82d1` |
| 135 | `theorem` | [coeIdeal_eq_zero](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coeideal-eq-zero-source-edition-2.md) | 1008 | `result-track:f87157c59f8383aecc8601d5f8dd5a18ec4b45f90fea67ef217e1287e537a5e7` |
| 136 | `theorem` | [coeIdeal_ne_zero](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coeideal-ne-zero.md) | 1012 | `result-track:0bfc8b326a05dd0c87670f9bcdee187c6ccd75c1d23ad83a2b6e1e90d691679b` |
| 137 | `theorem` | [coeIdeal_eq_one](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coeideal-eq-one.md) | 1017 | `result-track:bd7365023b9b3bc1b970305a2ac85e53a30dc4bdc7770551ef953e28a952b392` |
| 138 | `theorem` | [coeIdeal_ne_one](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coeideal-ne-one.md) | 1021 | `result-track:9b5c0f2321c065cf551806655d681bd10127f7f4f4899ef0e65e0c205c011cfb` |
| 139 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/instance-source-edition-13.md) | 1047 | `declaration-track:c692471fb1811f6360794c32f5d803639267a1da1864ef76ae41dfb2693b97b1` |
| 140 | `theorem` | [ne_zero_of_mul_eq_one](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/ne-zero-of-mul-eq-one.md) | 1054 | `result-track:2afa582757a619e2dbe8e32eba13df995aa5659cc166a7d231e47c20c2051e75` |
| 141 | `theorem` | [_root_.IsFractional.div_of_nonzero](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/root-isfractional-div-of-nonzero.md) | 1063 | `result-track:fcd05a6e941940cc1800914acb79833e69a60f50d53d999e3f8b4965d57c9ce5` |
| 142 | `theorem` | [fractional_div_of_nonzero](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/fractional-div-of-nonzero.md) | 1086 | `result-track:fee6227cdf3e05e4eaa5b35d5e176de3422c0cc89aaea0a6e41707f91e53ff04` |
| 143 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/instance-source-edition-10.md) | 1092 | `declaration-track:9f3d101dfb4813a6b1d93470509d12fc0f426432fc263b01711a197894db28ce` |
| 144 | `theorem` | [div_zero](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/div-zero.md) | 1098 | `result-track:7fa7c93529213a66b0163fb1780465d36013b3fec620d46e7a5f8ea9573fac51` |
| 145 | `theorem` | [div_nonzero](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/div-nonzero.md) | 1102 | `result-track:f8b6c0f227a288cc3429a404d90e703917ac0af6556bdfcfd7ef24829e0cd2cb` |
| 146 | `theorem` | [coe_div](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coe-div.md) | 1108 | `result-track:261d5602a7c4308b69f815044c455dded923ccbe5d4bdfea05a370a4f632aa39` |
| 147 | `theorem` | [mem_div_iff_of_nonzero](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/mem-div-iff-of-nonzero.md) | 1113 | `result-track:6a8207c3e779cb0f0d9d5755ee9881ac0a53ed3d2ff834dd56c365e733fc2b8b` |
| 148 | `theorem` | [mul_one_div_le_one](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/mul-one-div-le-one.md) | 1119 | `result-track:801f2531abf88b1426bd78b018fe254dc5991243d8836b2adc10f4e904d39881` |
| 149 | `theorem` | [le_self_mul_one_div](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/le-self-mul-one-div.md) | 1127 | `result-track:0e4e75d352bcc91c36121b1fd51ce47ac1a8ea992a657a2c52e5f560be2bfd76` |
| 150 | `theorem` | [le_div_iff_of_nonzero](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/le-div-iff-of-nonzero.md) | 1136 | `result-track:29e571440ce27298f3cd218aa47eeeb8aef9737ccbad43d94bff8bae84d1dad4` |
| 151 | `theorem` | [le_div_iff_mul_le](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/le-div-iff-mul-le.md) | 1142 | `result-track:7836c7ff4c9b580f4ea60fe0296d35f643e90ebc968993a45a9d9676c6808db2` |
| 152 | `theorem` | [div_one](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/div-one.md) | 1151 | `result-track:c59334ac1f9b6fbcfb4ce2f32b723b6004e6caa805222f7b14123663c44dad21` |
| 153 | `theorem` | [eq_one_div_of_mul_eq_one_right](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/eq-one-div-of-mul-eq-one-right.md) | 1163 | `result-track:81c5c158f56a4c9706ba460dd0797b86a57aaa5d53e452220fa97a2a7d70d920` |
| 154 | `theorem` | [mul_div_self_cancel_iff](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/mul-div-self-cancel-iff.md) | 1183 | `result-track:b32418632cdbd96fc88ea316d9a6bf6bdd8cee7add9f24a2581fb3ab9ce4769f` |
| 155 | `theorem` | [map_div](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/map-div.md) | 1190 | `result-track:c472f4ed6d3c26691d880975b535d49101b227447229437a92e3de92b11b4d7c` |
| 156 | `theorem` | [map_one_div](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/map-one-div.md) | 1200 | `result-track:6be38a07bfce0a4f564c4438fb0c0129efc11245e651a224691722a7e12acf70` |
| 157 | `theorem` | [eq_zero_or_one](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/eq-zero-or-one.md) | 1212 | `result-track:560e92d2719bf4992b8b2415ea8546ab484d361c1b4f3e6b851fdf3c747551af` |
| 158 | `theorem` | [eq_zero_or_one_of_isField](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/eq-zero-or-one-of-isfield.md) | 1228 | `result-track:abeae2f74602a648126e76b2d7367174ee2049d78ad0397b1f756f9a53fb50ea` |
| 159 | `def` | [spanFinset](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/spanfinset.md) | 1248 | `declaration-track:ee24c3c14670c3538ec3310e0c2e47ae87170c804063f73001da6a118b28df99` |
| 160 | `lemma` | [spanFinset_coe](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/spanfinset-coe.md) | 1264 | `result-track:59eb82edf632801b716fdedac4a2f2ce7e6567821ba0017566ec81c37b188cab` |
| 161 | `theorem` | [spanFinset_eq_zero](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/spanfinset-eq-zero.md) | 1271 | `result-track:4b77724bd8cd0f0e63b219f744fb8f3d6983e3a06c7e60c6051b6e1fa4dc843e` |
| 162 | `theorem` | [spanFinset_ne_zero](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/spanfinset-ne-zero.md) | 1277 | `result-track:262dad653ac2f6080e1082f4ce09402edcb1e18848774c747e26988b4b1eb374` |
| 163 | `theorem` | [isFractional_span_singleton](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/isfractional-span-singleton.md) | 1283 | `result-track:f5b270baffd0ddd233b01800dd67af5162cddd271f4ffcfb54229b32d8fa9bbc` |
| 164 | `theorem` | [coe_spanSingleton](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coe-spansingleton.md) | 1297 | `result-track:eee71c084e67dd5322c366883daf8a819eef93ac6a59a5654742d124b900a837` |
| 165 | `theorem` | [mem_spanSingleton](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/mem-spansingleton.md) | 1303 | `result-track:1b00a0ac3f668faa7c2e72de196facd27a7c2629aebe811135e4b39d391510f8` |
| 166 | `theorem` | [mem_spanSingleton_self](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/mem-spansingleton-self.md) | 1308 | `result-track:5a87ea0bb60ba901ffaa0f4d948ffa944d7858f5e4d7352d2910516c6cb42672` |
| 167 | `theorem` | [spanSingleton_le_iff_mem](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/spansingleton-le-iff-mem.md) | 1315 | `result-track:7bd529a77063bd9c5e7d48f86376124283daa5e9d16a11dd07e6d0b208c6c02d` |
| 168 | `theorem` | [spanSingleton_eq_spanSingleton](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/spansingleton-eq-spansingleton.md) | 1320 | `result-track:4fc2beb2431cb46310f74c6438a78f5fba033afe99f40a6b9fb83199e0ed3270` |
| 169 | `theorem` | [eq_spanSingleton_of_principal](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/eq-spansingleton-of-principal.md) | 1326 | `result-track:d246ace5f74149047fc5984985211317775d1df7395da89aac6b0d5a2edc1941` |
| 170 | `theorem` | [isPrincipal_iff](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/isprincipal-iff.md) | 1333 | `result-track:c451a2421682bf7515f4a807620832f773ef3dc2704b40cd5816ebeded47ef0e` |
| 171 | `theorem` | [spanSingleton_zero](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/spansingleton-zero.md) | 1340 | `result-track:28397b0be98221083e99a658c509f3f953a5801904e729d4dd3f9a1bf0d22942` |
| 172 | `theorem` | [spanSingleton_eq_zero_iff](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/spansingleton-eq-zero-iff.md) | 1345 | `result-track:1cf08afe53c745b2d074170c446fe3cd1299e772a34bd649010e5294d26bddb6` |
| 173 | `theorem` | [spanSingleton_ne_zero_iff](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/spansingleton-ne-zero-iff.md) | 1351 | `result-track:61c399ad0e37210dbd51e7c1c05413ef32c00bbbc9a743a47746f9742da8ad93` |
| 174 | `theorem` | [spanSingleton_one](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/spansingleton-one.md) | 1356 | `result-track:c71dc74b1533da9f79d8f611a1a493b660181b07d1c8e429f1f8fc8122f3dacc` |
| 175 | `theorem` | [spanSingleton_mul_spanSingleton](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/spansingleton-mul-spansingleton.md) | 1364 | `result-track:b97172c52a080522fcfdd35518bfd70939e22798bd774acc68bd045e0afc6e80` |
| 176 | `theorem` | [spanSingleton_pow](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/spansingleton-pow.md) | 1371 | `result-track:0f6a5768d5f0b4ddba5426d169560e3e4fbf4d6a0c6ce53ea7a5eaa14230f31a` |
| 177 | `theorem` | [coeIdeal_span_singleton](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/coeideal-span-singleton.md) | 1378 | `result-track:bd64dfb18aae3486dad1c305a72086ca0398108809364c9bcdbd6070364593b5` |
| 178 | `theorem` | [canonicalEquiv_spanSingleton](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/canonicalequiv-spansingleton.md) | 1393 | `result-track:e181717596140ec45f36e61ee57314b4ea4f9a4aaf548a800c0f29e98d9b635f` |
| 179 | `theorem` | [mem_singleton_mul](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/mem-singleton-mul.md) | 1415 | `result-track:d5dcec315384be13d1418afb4e8791372bd47d84990a76a5c1cae5ca6ab62ba3` |
| 180 | `theorem` | [mk'_mul_coeIdeal_eq_coeIdeal](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/mk-mul-coeideal-eq-coeideal.md) | 1432 | `result-track:b6a7a74488016dbc6a700d28c2b4523eceb70875983c9c318c93f937004a0408` |
| 181 | `theorem` | [spanSingleton_mul_coeIdeal_eq_coeIdeal](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/spansingleton-mul-coeideal-eq-coeideal.md) | 1452 | `result-track:89335a5d50e2c7bea6cd82f98fac158ba77ce0780d6a42f1c22dad8e3d513f5f` |
| 182 | `theorem` | [one_div_spanSingleton](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/one-div-spansingleton.md) | 1463 | `result-track:495d6c62c6b34963d86b81dc94877836af33cd1dc955f08c74c7c8b76db2de11` |
| 183 | `theorem` | [div_spanSingleton](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/div-spansingleton.md) | 1468 | `result-track:eb2372c1961c04bc135bcdfc55b4794eb6663bf839895fb794221ed2b616393d` |
| 184 | `theorem` | [exists_eq_spanSingleton_mul](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/exists-eq-spansingleton-mul.md) | 1486 | `result-track:b901b88f3e71cf5d5a1fc49bf0d527b28fc6d67d0342c76c38b1d904d44ce390` |
| 185 | `instance` | [isPrincipal](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/isprincipal.md) | 1509 | `declaration-track:ee6e00e7ec1bfa97e59435edcf1539ccc65b6ba3e74020db666634efe58a3250` |
| 186 | `theorem` | [le_spanSingleton_mul_iff](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/le-spansingleton-mul-iff.md) | 1521 | `result-track:c41228cae39cb0d1241a6f4a5f7ebd0143e388361e164df41dce7d6923c313c9` |
| 187 | `theorem` | [spanSingleton_mul_le_iff](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/spansingleton-mul-le-iff.md) | 1527 | `result-track:525ad6235916bda31213b1b88da7d49764c9bf013643f2e9976738252140bcc5` |
| 188 | `theorem` | [eq_spanSingleton_mul](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/eq-spansingleton-mul.md) | 1538 | `result-track:5adb9dc61bf7a219b4b587b5a2eb94485441cc6bc1b5ed497a28d8bddd20cee4` |
| 189 | `theorem` | [isNoetherian_zero](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/isnoetherian-zero.md) | 1551 | `result-track:619b2a63ac7e3ade7f6a99d9681c135fde630cf0ace71625151e582d9f6b4c91` |
| 190 | `theorem` | [isNoetherian_iff](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/isnoetherian-iff.md) | 1558 | `result-track:e6d04e248be91a601e1003ef2580f82b6797eff293fdc937becd76b65fd2d579` |
| 191 | `theorem` | [isNoetherian_coeIdeal](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/isnoetherian-coeideal.md) | 1563 | `result-track:062806c6994642509f1cf9dfa0a2223130936a5698ce4f86698dfbc403f95ad8` |
| 192 | `theorem` | [isNoetherian_spanSingleton_inv_to_map_mul](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/isnoetherian-spansingleton-inv-to-map-mul.md) | 1573 | `result-track:1ea612c1dcd4d21b5c175b52f0f8107b86c44c82242bc4c2a2fea7feb717eebf` |
| 193 | `theorem` | [isNoetherian](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/isnoetherian.md) | 1593 | `result-track:26097c15d91d0e7784e2d1a1806cb44f8807a59e872b6749e241259e66588ab5` |
| 194 | `theorem` | [isFractional_adjoin_integral](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/isfractional-adjoin-integral.md) | 1605 | `result-track:00c0b906f6b8b6543c3cb5f4c0c796dbc2c727c6e89a7f82c05641bf8d2b659c` |
| 195 | `def` | [adjoinIntegral](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/adjoinintegral.md) | 1614 | `declaration-track:46097ec9b743bd662fc41ee670e26613108d05fec7c7820b130e0641ccfe2855` |
| 196 | `theorem` | [adjoinIntegral_coe](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/adjoinintegral-coe.md) | 1619 | `result-track:f2cf50179dbd081694efef13bad2529dce75834deee09363a20ee3b619d5a1f9` |
| 197 | `theorem` | [mem_adjoinIntegral_self](../../../../CommutativeAlgebra/FractionalIdeal.lean/declarations/mem-adjoinintegral-self.md) | 1624 | `result-track:3914a03b623d52a0e2288bf471053c34af2132d723d90b54631c8b82b0f23e33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4da1876c6d816eb0c60aff765905a7c05e9f7d0bdc85aaa3cd2afcc9f3c17315 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/FractionalIdeal/Variant3503c7ee7a7a573e51a090283a698fabe34f5b4d8a40d35147dac2ab848e78dc.lean","GRWTSK/_verification/specifications/Algebra/FractionalIdeal/Variant3503c7ee7a7a573e51a090283a698fabe34f5b4d8a40d35147dac2ab848e78dc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
