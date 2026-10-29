# Verification target: Self Adjoint Namespaced Commute Iff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "681178294ab94e9129d60c581826e3ccb993ff46",
  "lexical_observation_count": 99,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/SelfAdjoint/Variant1a44c99573be8938b83cb38ddf75a072ff7f860694e176073a4d136a925b5c37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `681178294ab94e9129d60c581826e3ccb993ff46`.

Source path: `GRWTSK/Algebra/GroupTheory/SelfAdjoint/Variant1a44c99573be8938b83cb38ddf75a072ff7f860694e176073a4d136a925b5c37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/SelfAdjoint/Variant1a44c99573be8938b83cb38ddf75a072ff7f860694e176073a4d136a925b5c37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Pi` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Rat` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSelfAdjoint](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/isselfadjoint-source-edition-3.md) | 55 | `declaration-track:a8b7dfe73516bc4922c46be6bad5c04c3a77613813bd3a65cc93aef90e2d7f88` |
| 2 | `class` | [IsStarNormal](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/isstarnormal-source-edition-3.md) | 60 | `declaration-track:cd72741095f620b15777318001f5b8a2762562e9ddb3c8df32d2b22705e5ff50` |
| 3 | `theorem` | [star_comm_self'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/star-comm-self.md) | 66 | `result-track:799a9aee7a331fe23d926bc3fa0980a339a26aee1a8e01e99ee6970075e64ba0` |
| 4 | `theorem` | [all](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/all.md) | 73 | `result-track:2a907dd3f5963121152f9342f1b285702e6fac4ff1a9e6acbd9f2659bc6e719c` |
| 5 | `theorem` | [star_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/star-eq.md) | 76 | `result-track:f5fac80bf4f5e5cf23bd2aa040d37c327d8b375f41fbf6e475c59d6f3c7a69cd` |
| 6 | `theorem` | [Self Adjoint Namespaced Commute Iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/isselfadjoint-iff.md) | 79 | `result-track:b1d089aa917396f705374ef95301fad1daac437b5a7416cce3d0725c5d11a83f` |
| 7 | `theorem` | [star_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/star-iff.md) | 83 | `result-track:44592e1d59b807abeaf0c68dc172c7fd21f98946b253471e64dcd615a9a439d1` |
| 8 | `theorem` | [star_mul_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/star-mul-self.md) | 87 | `result-track:ae34ec0caacc1b3f5c7bf22f2570028d8dd07fb1cbd45a4331ef42d66ef25776` |
| 9 | `theorem` | [mul_star_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/mul-star-self.md) | 91 | `result-track:5c4f20bf8f252cbac68c995f723a4dde225f736ad40927c4f47c3c8a80d56493` |
| 10 | `lemma` | [commute_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/commute-iff.md) | 95 | `result-track:263b2565ab24a899e51dd888454119326aa9125b4698461c60e92ef84e6244df` |
| 11 | `theorem` | [map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/map.md) | 103 | `result-track:3712c86fa44712265d6f454ce3f1af12d49363a02c7937985130dc4582c5f5de` |
| 12 | `theorem` | [Self Adjoint Namespaced Commute Iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/isselfadjoint-map.md) | 109 | `result-track:7320c81d46e69fbb297d8056211639dabce4638d3a83ee1ded1d1a54510b716d` |
| 13 | `theorem` | [zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/zero.md) | 118 | `result-track:90970de186613c24a19c4ae6f540cf766bb4191ae9955b19f1d2973f9275863d` |
| 14 | `theorem` | [add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/add.md) | 121 | `result-track:17d9f794b1e9b0b8aee542787b8226f2cd61529a7f50f027bf7579fbfc74bec2` |
| 15 | `theorem` | [neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/neg.md) | 131 | `result-track:e359ff487db7d91b63035b777a00aa9007ac1dd8aca4565cf67ab83d6026d0f7` |
| 16 | `theorem` | [sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/sub.md) | 135 | `result-track:7fe939a81ca0e127c4552536f21928b5fb373be47c7389ea32be57cdc62bb63f` |
| 17 | `theorem` | [add_star_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/add-star-self.md) | 145 | `result-track:1a8a8a05063234347e15340f0c49306835daf9bb3865d31122e5f7c78fd82831` |
| 18 | `theorem` | [star_add_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/star-add-self.md) | 149 | `result-track:21b9d8dee8d7934d3a42dabb7acdf76f153b303a353ec3bb9760cb662e4bc39f` |
| 19 | `theorem` | [conjugate](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/conjugate.md) | 159 | `result-track:50cf681eca0c38a7bc8038599a2373441dcb0075be3c82281f4d0dcc215f34e2` |
| 20 | `theorem` | [conjugate'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/conjugate-source-edition-2.md) | 163 | `result-track:72ae6b05a175bd5f8c9b401c75b94ce450caeac4a5abe832cab701b9a67b9ce2` |
| 21 | `theorem` | [conjugate_self](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/conjugate-self.md) | 167 | `result-track:7dc43c17725f6302cb4ff050a7c8aa0a016d35201a98e8f10dd44c1fb5ab724c` |
| 22 | `theorem` | [isStarNormal](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/isstarnormal.md) | 171 | `result-track:2a322c9054088c19a75a5b67c375d784c1ed18389a6fdb8e9f200111b14f3a28` |
| 23 | `theorem` | [one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/one.md) | 181 | `result-track:4648bf1fe0ebb072ed918779b3630389439aa1374a7c95788523ef3b8c6e9807` |
| 24 | `theorem` | [pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/pow.md) | 191 | `result-track:39174dfc1b7a34d17ab68fd600ad0c1b99e596a3052cef3d1b80d0ab84a827d5` |
| 25 | `theorem` | [natCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/natcast.md) | 201 | `result-track:a5778606ce4167f34ac826151b706d0601907c3ea10f1225173c48c892db802c` |
| 26 | `theorem` | [ofNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/ofnat.md) | 205 | `result-track:49275a4873b44bcaa8cfb8744c414acbc1c2c0bda8b149bbd4fb6eaed490e0e1` |
| 27 | `theorem` | [mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/mul.md) | 214 | `result-track:fda1e93358a276e7d983526490287a8f7dc9f5ca596a950f4654e64c942669ef` |
| 28 | `lemma` | [conj_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/conj-eq.md) | 224 | `result-track:d509a34bfab08d7012dbf512a9602913f037646da8d63488654708c2fae6779a` |
| 29 | `theorem` | [intCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/intcast.md) | 233 | `result-track:3d2d6bbe01c42fbdb1ca1e5e014ce3a4ab79085ed694a6fdc6da4c643865cddf` |
| 30 | `theorem` | [inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/inv.md) | 243 | `result-track:8c80939e12b3c0e4c635b9af3e2af50845df328896581685bb51be6fcc4c2042` |
| 31 | `theorem` | [zpow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/zpow.md) | 247 | `result-track:0bb6bd8da851375999e9e608466280279041d8e2d9f46eb9ea3ad1eba42c8c0d` |
| 32 | `theorem` | [inv₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/inv-source-edition-2.md) | 257 | `result-track:b7631a91c6a2fd10174918e22196bcc00096cc0e1a468b7acbcb3a827ffaa468` |
| 33 | `theorem` | [zpow₀](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/zpow-source-edition-2.md) | 261 | `result-track:6767fb483cd5558940ea452c1026cbd8a3cce5a6e89f47ca86ae87ea7c85da02` |
| 34 | `lemma` | [nnratCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/nnratcast.md) | 267 | `result-track:9991de0aef9763b8cd1cd7bc3bb9f5d34bfb7eac3f66d5c2efab96008fd6b1b3` |
| 35 | `theorem` | [ratCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/ratcast.md) | 276 | `result-track:1e1e9af9118a8832411b10c82182548e78e58d04d3ded11a03c61668349e9dac` |
| 36 | `theorem` | [div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/div.md) | 285 | `result-track:554d2bdb100c0578c6f1f2036bac2da39a8f9ec88833dd853a88f82582aaf92c` |
| 37 | `theorem` | [smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/smul.md) | 293 | `result-track:e13344ce29f1d8ccf0b5e68fc83e47e2140d2e84f831297f04566c6ea65319b0` |
| 38 | `theorem` | [smul_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/smul-iff.md) | 298 | `result-track:e39463431ce0d07dabeaf4282e9e324a79a2c074fe18eb7e686ed4e61cb32561` |
| 39 | `def` | [selfAdjoint](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/selfadjoint.md) | 314 | `declaration-track:6fd8eca7f1489cebc4a241c08f84704567e5731aacf952b43eeaf8c692885ce7` |
| 40 | `def` | [skewAdjoint](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/skewadjoint.md) | 321 | `declaration-track:d24edd30f5d0c7c4c3cf91107b79850a3a3d0b12640e184b066e64b53988e661` |
| 41 | `theorem` | [mem_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/mem-iff-source-edition-2.md) | 336 | `result-track:b3f4e11b5c97abfa82e3ad5fe2206b6412d26045e63b4589fbec45e7dc797f60` |
| 42 | `theorem` | [star_val_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/star-val-eq.md) | 341 | `result-track:1fc44c3da034cce191d608b5f4e41add47123e5cf9057a6199c8867281ee0849` |
| 43 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/instance-source-edition-6.md) | 344 | `declaration-track:230e02b017e7a9b389af168e7afb5a778caeec3797b0815d0d66a7da54f1f3eb` |
| 44 | `lemma` | [isSelfAdjoint](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/isselfadjoint.md) | 348 | `result-track:0d5977a4060cdc88ae111196ed956988d9fbc02199cf1622d24fb13ec655934e` |
| 45 | `instance` | [isStarNormal](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/isstarnormal-source-edition-2.md) | 352 | `declaration-track:a46b354ae5e909b62266409ae885f7533b41960fc9d02a200df79299c20f99c3` |
| 46 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/instance-source-edition-9.md) | 360 | `declaration-track:66223da613f0e653e166ee4332dc00f2f9cb90eecab0356190358254f8fc0dce` |
| 47 | `theorem` | [val_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/val-one.md) | 364 | `result-track:00736472101927ebe9d348c5b62e2d7f9394b0b8acd2914923160bcbfe9ab864` |
| 48 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/instance-source-edition-22.md) | 367 | `declaration-track:e45ef996ee78a29d58f55890ea94161cfbb67a5ed364694bad2257012a33f7bd` |
| 49 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/instance-source-edition-3.md) | 370 | `declaration-track:0a72d0b2aa642274306abec322831091ee8a08eb65309df26636a4099ba181b4` |
| 50 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/instance-source-edition-4.md) | 373 | `declaration-track:119e721295cdc88fb2f42a90c8e23158eac3d5585ff57dedc29d6a9d8dcdf61a` |
| 51 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/instance-source-edition-12.md) | 376 | `declaration-track:7925851ae67c6f469ee3ec767d1b76a3d63af23809c075b23ed4fbdf63921d26` |
| 52 | `theorem` | [val_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/val-pow.md) | 380 | `result-track:3f6564840c02104c3d527f301468270ab2e4b70392b0279b950766589eeae1e1` |
| 53 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/instance-source-edition-13.md) | 389 | `declaration-track:84eda9fa01b70068acf4212eea9c09948132d00b9db2e5cdf7cb9e23a08c3cc0` |
| 54 | `theorem` | [val_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/val-mul.md) | 393 | `result-track:baff33d5285bcf3e7b7df9f0840f6e2398c55c047601ec932f36e0d936171cec` |
| 55 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/instance-source-edition-19.md) | 402 | `declaration-track:c70baf2628faf19b08392628afe30648c6495f0a6eb49aacdd21d76111114645` |
| 56 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/instance-source-edition-20.md) | 414 | `declaration-track:d0e29b35d17ca638bb852973eda3cecb3bb458d5fc118f6f2aa69502af0ffb6e` |
| 57 | `theorem` | [val_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/val-inv.md) | 418 | `result-track:5765ee03e818eadd3b31f9d8e6ee0c0163226307756365cc9c7f66bbfb4c694c` |
| 58 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/instance-source-edition-18.md) | 421 | `declaration-track:aa0ba3bdcadd10986a45ed8cd5409fd3e27b6db088a751433b16fd6b5b4920f7` |
| 59 | `theorem` | [val_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/val-div.md) | 425 | `result-track:54eb260249987001a4c4aa6816018da59eaddc4f84102d2697225549bd844d9d` |
| 60 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/instance-source-edition-21.md) | 428 | `declaration-track:dfd32b24b219e634411f7937bece5ddb8f9a6b24288b2762505dc6cf18c42e6f` |
| 61 | `theorem` | [val_zpow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/val-zpow.md) | 432 | `result-track:adb4d24db2fff25ff7bd9d9a64a1b8020ec3fbb9f36d0d987416621bf413d899` |
| 62 | `instance` | [instNNRatCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/instnnratcast.md) | 435 | `declaration-track:03623aa828d821674bb0efa6501f6ec784c5c827fb63c63ab6ff6cf10a0a4e69` |
| 63 | `instance` | [instRatCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/instratcast.md) | 438 | `declaration-track:e50d3e69e12faddbc0265fded44621e4d33591f543beff1cda77dd5e1c4a356e` |
| 64 | `lemma` | [val_nnratCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/val-nnratcast.md) | 441 | `result-track:9778418419242c82565dde33a693a3a020dc03c015fc78980f1cd1cab54a602a` |
| 65 | `lemma` | [val_ratCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/val-ratcast.md) | 442 | `result-track:f88a9ade7d560a0b682687b6ca419ec1288c987299f25eccc00dada1537c7270` |
| 66 | `instance` | [instSMulNNRat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/instsmulnnrat.md) | 444 | `declaration-track:cba95683fd8671a88ed4726faebc77497a89b86585f7e6a274a951607e3cd65f` |
| 67 | `instance` | [instSMulRat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/instsmulrat.md) | 447 | `declaration-track:e8328cb35f4146ecbd3b2cd69c8a5d4650bdd197521b3973fbae333f14ef0a64` |
| 68 | `lemma` | [val_nnqsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/val-nnqsmul.md) | 450 | `result-track:99c65d53f8f4fabcbd6a0d70c4f82cc852d2dd7ac36e36a6830a18614ef437d4` |
| 69 | `lemma` | [val_qsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/val-qsmul.md) | 451 | `result-track:a2ad643175868a11988a1e8acc3980c9e84dc36985046b54652e2f0e77e61eeb` |
| 70 | `instance` | [instField](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/instfield.md) | 453 | `declaration-track:c8ab996fdab549169b7148eba35469d832bb0971bd1efe646cf465c82807522a` |
| 71 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/instance-source-edition-16.md) | 465 | `declaration-track:8b06a63c2906d64287c3cdc12576e57d4e2a245e78e27726922b76d2000cc313` |
| 72 | `theorem` | [val_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/val-smul.md) | 469 | `result-track:369bba8cb4ab454f133891d6d441a910fefd37878af680f326beec56e9ceb0ca` |
| 73 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/instance.md) | 472 | `declaration-track:069be150af75015359c26053964c339bc3b9541c090f6c143b03ef07c2e52e45` |
| 74 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/instance-source-edition-15.md) | 475 | `declaration-track:8948458362b15c47de8c0a033a28491f5912e7e3e973fc58e42dd5139950be71` |
| 75 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/instance-source-edition-5.md) | 484 | `declaration-track:19c421ae7031fdfe671b15b56853e994236f64eb9d30fc685f6a4c80e5f54b68` |
| 76 | `theorem` | [mem_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/mem-iff.md) | 497 | `result-track:596816b007a37857398af97b3d41965fb1bc34710eebe2eb523749346d38002d` |
| 77 | `theorem` | [star_val_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/star-val-eq-source-edition-2.md) | 502 | `result-track:ae1a1a8c4fc99580e1352760a227e1d2e260e53da084cfe6a835a9e95b67ef76` |
| 78 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/instance-source-edition-2.md) | 505 | `declaration-track:06d622d9536d2d3d742e4f4913010e550f842af298f712e06f3b14060610c721` |
| 79 | `theorem` | [conjugate](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/conjugate-source-edition-3.md) | 514 | `result-track:84477cdb7cd51396cd2eb08cf635cb29aefdb31eae3d7b22535ea6355d251c09` |
| 80 | `theorem` | [conjugate'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/conjugate-source-edition-4.md) | 517 | `result-track:96c488da1036349dca6abb60940d9d3557367922687ed2e0dbf0cc08f7a58e27` |
| 81 | `theorem` | [isStarNormal_of_mem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/isstarnormal-of-mem.md) | 520 | `result-track:35ac223db7edf4b81de78c9b80b561941f7a6c2e3e4830f10f8de87ec51dc19d` |
| 82 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/instance-source-edition-10.md) | 525 | `declaration-track:706bf6fdd38fbe3baaf5bb15b51638110f02740899dacacedaa340e79ca0eb9b` |
| 83 | `theorem` | [smul_mem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/smul-mem.md) | 535 | `result-track:5bf4cbc9d8a7c362f0ab8a2234151969ac1dfe607fba66c69ff4e791f19661e5` |
| 84 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/instance-source-edition-8.md) | 539 | `declaration-track:57fec7f6a97625a8c4466717ec59d91452654bfdfe59eb693a7c16cdbd3397a6` |
| 85 | `theorem` | [val_smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/val-smul-source-edition-2.md) | 543 | `result-track:d4e381251c88cc5a7168f1bf1811de4bdab8106ca3e1ba1d4bda0ba82eacb647` |
| 86 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/instance-source-edition-14.md) | 547 | `declaration-track:87180f17018fb6999928aac91ad942baf18aa074ba3aa2353e97a684cc75eb74` |
| 87 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/instance-source-edition-11.md) | 550 | `declaration-track:73947410a32ef736d39ad0e57871c4c02cafdc711efd1d11950823f668c3ea83` |
| 88 | `theorem` | [IsSelfAdjoint.smul_mem_skewAdjoint](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/isselfadjoint-smul-mem-skewadjoint.md) | 559 | `result-track:f5428d48ad0ed47af0565618eb09516d99ef920c3abf94fead6ac5fcd6938930` |
| 89 | `theorem` | [isSelfAdjoint_smul_of_mem_skewAdjoint](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/isselfadjoint-smul-of-mem-skewadjoint.md) | 566 | `result-track:ef885ce7ef3167950c6135c69a8547ece7a8383e0c2d2c2e927fce4f42229732` |
| 90 | `instance` | [IsStarNormal.zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/isstarnormal-zero.md) | 571 | `declaration-track:8b84f4b052855127867f72750de764b71155ade38d725b4c8df17112909fa2f0` |
| 91 | `instance` | [IsStarNormal.one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/isstarnormal-one.md) | 574 | `declaration-track:a8979d8a04a21b2610dc7e080f9a6cb5ffbadec43151822de558773fc56c1d5f` |
| 92 | `instance` | [IsStarNormal.star](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/isstarnormal-star.md) | 577 | `declaration-track:63fb3e6a8ca38f8471b84fa909235a9d79da1eb5b91b4b32a0793674a6875267` |
| 93 | `instance` | [IsStarNormal.neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/isstarnormal-neg.md) | 581 | `declaration-track:a687e591a71a16604fbd94f9914efd49ba64c7c1051ebba2c566b4c0c77766a2` |
| 94 | `instance` | [IsStarNormal.val_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/isstarnormal-val-inv.md) | 585 | `declaration-track:57038cbfb29bea9b392858d2ee22cb00cf33962485ecac1b388f02f8db050df7` |
| 95 | `instance` | [IsStarNormal.map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/isstarnormal-map.md) | 589 | `declaration-track:f419a2f1a267426cb5f8aedf113fb203d961c3c825f78f096174b96107c636a3` |
| 96 | `instance` | [IsStarNormal.smul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/isstarnormal-smul.md) | 594 | `declaration-track:b666c7202987067a9a47b59b326769dbfa1d81a684ded06096a7ae5a04764d1a` |
| 97 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/instance-source-edition-17.md) | 600 | `declaration-track:8bb18b05c5e44d43d82cd1e7fc091395c2c0187ccc51145807228de65786d84d` |
| 98 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/instance-source-edition-7.md) | 605 | `declaration-track:2dbc1c40d0932267626518cf364a8ca2fbb629467c8b5841f6872c6fa37cde90` |
| 99 | `lemma` | [isSelfAdjoint](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SelfAdjointNamespacedCommuteIff.lean/declarations/isselfadjoint-source-edition-2.md) | 613 | `result-track:78dc8aef9132befdd291e83b8b4096607cc6d92df292cf090cf1944634f3d29e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d9051212cf684060d3c4d4582d41bf31266aec0100017753eaaac0f3289cc63d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/SelfAdjoint/Variant1a44c99573be8938b83cb38ddf75a072ff7f860694e176073a4d136a925b5c37.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/SelfAdjoint/Variant1a44c99573be8938b83cb38ddf75a072ff7f860694e176073a4d136a925b5c37.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
