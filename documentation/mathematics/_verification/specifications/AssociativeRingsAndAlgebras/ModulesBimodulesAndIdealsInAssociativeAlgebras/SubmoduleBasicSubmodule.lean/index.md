# Verification target: Submodule Basic Submodule

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28e247f65751a8f9f8cf104eb1069ad7370c9631",
  "lexical_observation_count": 106,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant690032ffe278b330bfb3b5c3b711d98929af7fa627295bf174125fe90d1b0ca8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28e247f65751a8f9f8cf104eb1069ad7370c9631`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant690032ffe278b330bfb3b5c3b711d98929af7fa627295bf174125fe90d1b0ca8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant690032ffe278b330bfb3b5c3b711d98929af7fa627295bf174125fe90d1b0ca8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LinearMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Equiv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.SubMulAction` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.Membership` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Submodule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/submodule.md) | 41 | `declaration-track:15629e39f11f637af51d9e6ca0a4c216ad41bc60e675be6a89909268b3de0d2d` |
| 2 | `instance` | [setLike](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/setlike.md) | 57 | `declaration-track:0729ce2cda5fc79902de3de67d6ab05d34caa84e09ee1cac1d2f19a286a0e867` |
| 3 | `instance` | [addSubmonoidClass](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/addsubmonoidclass.md) | 62 | `declaration-track:29fe6e52c506f1a33db7091a2666b3769ce4d8c3e53332395ee05511534dfef6` |
| 4 | `instance` | [smulMemClass](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/smulmemclass.md) | 67 | `declaration-track:edea62c12303dab3d35ea7d73437fd1a171a100e9552b1fae77c76a1456309c9` |
| 5 | `theorem` | [mem_toAddSubmonoid](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/mem-toaddsubmonoid.md) | 72 | `result-track:5020207ce9f847450cda8adc547ad104f857f9178e9534db1ec2d812ca9a2091` |
| 6 | `theorem` | [mem_mk](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/mem-mk.md) | 79 | `result-track:5c1d7bc26ac94b6054be4e25cdb8ba1a3f4200c3c9c0f7c8c6f2d52680d7ed7b` |
| 7 | `theorem` | [coe_set_mk](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/coe-set-mk.md) | 84 | `result-track:31db71a8a06703d6c94051812d8cb775bc7dcb227ff35b891c8a6a10f6bddcc1` |
| 8 | `theorem` | [eta](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/eta.md) | 88 | `result-track:61ce746ff777bc5c3558532fbfc29410d01d829607e2bbebfb5f6fafffc1fe84` |
| 9 | `theorem` | [mk_le_mk](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/mk-le-mk.md) | 93 | `result-track:51bfd6b389bd115f888311d83b728a60f665f2e6e8e97b0d122a325516ea0a8a` |
| 10 | `theorem` | [ext](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/ext.md) | 99 | `result-track:6dbe3de3961ba498e3e6b924176c0f816a9b3ddc4a063a18035eed5ea848fe45` |
| 11 | `theorem` | [carrier_inj](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/carrier-inj.md) | 105 | `result-track:295acb9ee4397e7c03d04442f863811c06d26f3ed93df53293e8ad601cf00ab4` |
| 12 | `def` | [copy](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/copy.md) | 110 | `declaration-track:335c89b4f43cccca5f3fcceb7cb5b438e367e0a30d2ff4b63ac672bb620a3acc` |
| 13 | `theorem` | [coe_copy](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/coe-copy.md) | 118 | `result-track:ccaabfc6020bc76d54c57d3cb71bbcf7556d2a68fdf8b1a88b09f83023976963` |
| 14 | `theorem` | [copy_eq](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/copy-eq.md) | 122 | `result-track:4f0bafecbb1332d0cd9403ca8b3adc7a5e468662bb8c0c6fdc37bb4dc7854682` |
| 15 | `theorem` | [toAddSubmonoid_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/toaddsubmonoid-injective.md) | 126 | `result-track:cd1b809fd7fbf9a17e5d6ae70db236106b3d0b5544e641fe609bc2d1b24a1246` |
| 16 | `theorem` | [toAddSubmonoid_eq](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/toaddsubmonoid-eq.md) | 131 | `result-track:001891eb473a3d528b31e36e27209bea676443735f0992416ba74fd37f84b2f1` |
| 17 | `theorem` | [toAddSubmonoid_strictMono](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/toaddsubmonoid-strictmono.md) | 136 | `result-track:4d0bdf88a60958fbcbd36b8e507ac6c2fab64b095c1468a58f34a77cab24949b` |
| 18 | `theorem` | [toAddSubmonoid_le](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/toaddsubmonoid-le.md) | 140 | `result-track:93eddcd823e44ce730c6f93520eebd6a8cd13efaaa34b19c87b8852ffb9ef707` |
| 19 | `theorem` | [toAddSubmonoid_mono](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/toaddsubmonoid-mono.md) | 145 | `result-track:283a2f096de6a9b699aefdfd905021306f4dcda800a8f01b5078af646261f360` |
| 20 | `theorem` | [coe_toAddSubmonoid](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/coe-toaddsubmonoid.md) | 150 | `result-track:98a91eb3d26ab18a85f5cff41b7b60621f204ca1959c02ba0ee6decb44041471` |
| 21 | `theorem` | [toSubMulAction_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/tosubmulaction-injective.md) | 154 | `result-track:0bcebe6564088a376ceb321025bd728c730826a21fee86ee55236efa2d7bcedf` |
| 22 | `theorem` | [toSubMulAction_eq](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/tosubmulaction-eq.md) | 158 | `result-track:bf11a58ddb250e9fa3604261c681359754596326cba2a9307681360e9a45a372` |
| 23 | `theorem` | [toSubMulAction_strictMono](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/tosubmulaction-strictmono.md) | 163 | `result-track:9df337d772c4d0601df0ec0bcb4969daea394378427627a5b1f6fce17807105e` |
| 24 | `theorem` | [toSubMulAction_mono](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/tosubmulaction-mono.md) | 168 | `result-track:a3dcc73cd23ecb915bddfb61bd612be08f8eb05088eefc7c1dfe2f6aa577848a` |
| 25 | `theorem` | [coe_toSubMulAction](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/coe-tosubmulaction.md) | 173 | `result-track:a81675f3669ed3b7fde05cbd78007c25f4fa524e2d8ae95a6ea24493fec4afa1` |
| 26 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/instance-source-edition-2.md) | 186 | `declaration-track:8516ce1b993011736a676d4fc47201be9a48a079e6951a1fedfdfc622f112be2` |
| 27 | `def` | [toModule'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/tomodule.md) | 192 | `declaration-track:81cc33ff630a83ce3a407c0a1e186e80e204edd2f54a3688186b0edc2057b036` |
| 28 | `def` | [subtype](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/subtype-source-edition-2.md) | 200 | `declaration-track:5fc62ac71c69602ff77ec595e12052894cab656566794188e39fd2ee6a31bdb1` |
| 29 | `theorem` | [coeSubtype](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/coesubtype-source-edition-2.md) | 207 | `result-track:870139e4f8b0e4224bf0005b64cad0531f9bb91bcee0033e1c401d250a8c6ef6` |
| 30 | `theorem` | [mem_carrier](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/mem-carrier.md) | 230 | `result-track:aae621f585fc411aeae5213fe480ac640ece1dd73df1c3c4a889bc371098c6cb` |
| 31 | `theorem` | [zero_mem](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/zero-mem.md) | 235 | `result-track:1e8b84f8dd0c765fed61e6fe0584a60884968d4819eb55f15af50270ba6824e2` |
| 32 | `theorem` | [add_mem](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/add-mem.md) | 239 | `result-track:070dd2723e34b9dba30d2347f6a1e61229014ac5d9cce2f1cbc1f6492b8b4a4c` |
| 33 | `theorem` | [smul_mem](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/smul-mem.md) | 243 | `result-track:0341050d2e4e74a57cdd865c800f1ac4d0764349ce2b42b1ed0ecaf298c7d384` |
| 34 | `theorem` | [smul_of_tower_mem](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/smul-of-tower-mem.md) | 247 | `result-track:4df2e950c54261d6ec121a57d26f5e88f350e8c2eafafc5ec256534448891c7b` |
| 35 | `theorem` | [sum_mem](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/sum-mem.md) | 252 | `result-track:72b0ac9854e44e483730fa31a5e5402264667ea8af7c3dad529dd1cffa7bb3cd` |
| 36 | `theorem` | [sum_smul_mem](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/sum-smul-mem.md) | 256 | `result-track:eec7e285cd4b5bc7fa3eacc3b6d7fa8b11525162a3989c4553b266250b13cec1` |
| 37 | `theorem` | [smul_mem_iff'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/smul-mem-iff-source-edition-2.md) | 262 | `result-track:2c5575ab626a61eefb4c5e5dbed50010e83a24153e13b96973aa6b58d261cb5f` |
| 38 | `instance` | [add](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/add.md) | 267 | `declaration-track:c2f6bc35f4240c0a9aa1d3faaf5de039bb03f1ec73d8008e49db74410a770043` |
| 39 | `instance` | [zero](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/zero.md) | 271 | `declaration-track:94540d0c04bb9a5f0606185e2b52c32eaa9bed2fcae78421152a92ac8dd5ef28` |
| 40 | `instance` | [inhabited](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/inhabited.md) | 275 | `declaration-track:bc326158a57087bc4a8bc1b67402cc0e1efb9a7f70b6e392d5a15a15aa531c46` |
| 41 | `instance` | [smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/smul.md) | 279 | `declaration-track:c68fdbc777f52704f824bb02759814302e5461e1531263d89a35144f02469dfd` |
| 42 | `instance` | [isScalarTower](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/isscalartower.md) | 283 | `declaration-track:3cc981a0ed2e5db095c0dbca2e5de65df09e5616e9bc5584982a254e2a077bb5` |
| 43 | `instance` | [isScalarTower'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/isscalartower-source-edition-2.md) | 287 | `declaration-track:f0a4b757d917120ec3c6667bd8d9326dc43c583d916ea8e2ff003eba49863ba0` |
| 44 | `instance` | [isCentralScalar](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/iscentralscalar.md) | 292 | `declaration-track:b3e4e18a9a5eab150449604012f466dcf8626a4b912595f84544725b35af4df2` |
| 45 | `theorem` | [nonempty](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/nonempty.md) | 297 | `result-track:45803e8c29273888318026489d11e2409fe2bc0b727a351311aadb051287f0b1` |
| 46 | `theorem` | [mk_eq_zero](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/mk-eq-zero.md) | 302 | `result-track:0ee602e49f93e3a49cc505f9487a934ec0a16350e46a7d6ab25eddc94378849d` |
| 47 | `theorem` | [coe_eq_zero](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/coe-eq-zero.md) | 309 | `result-track:cd4857ceefa95b3e525ec61408a62d1527fc09db5670fc381daf3f6c3fae380c` |
| 48 | `theorem` | [coe_add](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/coe-add.md) | 314 | `result-track:2c1b6fcd31a3b657e0af1ff948b65e2daedd0094fa194f4f81cb040d6b2b2604` |
| 49 | `theorem` | [coe_zero](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/coe-zero.md) | 319 | `result-track:b50218fd8d6e40ec930cdf7fd4ab82010dc42b009590e3e5e42bbc010ebfae0b` |
| 50 | `theorem` | [coe_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/coe-smul.md) | 324 | `result-track:5991bf2d8161ddba90fd175c25032e2fcabab3dd3619dd2830d409ec0a96ad95` |
| 51 | `theorem` | [coe_smul_of_tower](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/coe-smul-of-tower.md) | 329 | `result-track:cbf4ac292353fcc32ccfd15d8faf3d711c21807c031a7d50b23d80803de17070` |
| 52 | `theorem` | [coe_mk](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/coe-mk.md) | 335 | `result-track:83a0c5c6ab1f18facc1ca856f07af1e45d25c9780973f1a57554d388abd4c3ca` |
| 53 | `theorem` | [coe_mem](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/coe-mem.md) | 340 | `result-track:c1be235ead0117ade33fc16005859130c04ffc8cba0af9814c79a94e68e026d9` |
| 54 | `instance` | [addCommMonoid](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/addcommmonoid.md) | 346 | `declaration-track:19efdd6f589a6d1257e0813be16b16c9f168c30b3030171ec8f1711ee7881db3` |
| 55 | `instance` | [module'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/module-source-edition-2.md) | 352 | `declaration-track:fc558231208ca1974c74e81cf117a3497987e4f65601061c2d1b8b5efca01f42` |
| 56 | `instance` | [module](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/module.md) | 361 | `declaration-track:740f7651e308b259bda633131a65c47b198a8c291f478a9d700090ca92540fb5` |
| 57 | `instance` | [noZeroSMulDivisors](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/nozerosmuldivisors.md) | 365 | `declaration-track:d77d5db099fa2c2f7feb124925ba7a84fde558e6c92eb7673e4736d47592003a` |
| 58 | `def` | [subtype](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/subtype.md) | 372 | `declaration-track:0cde67d8074933ae28523ffcf11bfbda487e43cb478e08578444a088fba8f3e3` |
| 59 | `theorem` | [subtype_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/subtype-apply.md) | 375 | `result-track:998532db5cb01943f7c3a40ee0cadd6077d59c05808aea1c560f757615a6aa3f` |
| 60 | `theorem` | [coeSubtype](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/coesubtype.md) | 380 | `result-track:2e700f83aa98c8a223181111bc24fbea9170c4b2f0ad99394931f9bdc7bff23a` |
| 61 | `theorem` | [injective_subtype](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/injective-subtype.md) | 384 | `result-track:3234bba9695fdcb5771a893a0e93dd1d27d08760952eaeb0d0e834eb6d6978b4` |
| 62 | `theorem` | [coe_sum](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/coe-sum.md) | 390 | `result-track:f7d8545e954907b61fa245e816a6d7a86c94bdf8458ddade931c9493a176e058` |
| 63 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/instance-source-edition-4.md) | 407 | `declaration-track:c0155b7d716ad7fa9b203dced746885e9ff39613ceafede6d9efa85e30d848e5` |
| 64 | `instance` | [vaddCommClass](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/vaddcommclass.md) | 410 | `declaration-track:31af2cd8d8b460a4a4a00be39b2b807d4fb5ceb18d5d0958751a848866bb0db6` |
| 65 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/instance-source-edition-3.md) | 414 | `declaration-track:9cde1f23826e21858ef527528e3c52b4d2c162cf8d7a1d15aeb6ccf323375a19` |
| 66 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/instance.md) | 418 | `declaration-track:542eef00371b78d11d620d18d6670ba22dc951d2beae55e69cfbb79cdfade13c` |
| 67 | `theorem` | [vadd_def](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/vadd-def.md) | 423 | `result-track:cfc35fabaf2a7758cb1f95bbfa0cdb82d56a2724208327eed3ceadc1d0da3176` |
| 68 | `def` | [restrictScalars](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/restrictscalars.md) | 436 | `declaration-track:71db5f49a8cb256dbd8c76e9c6e53e5c5f193099fcd757af85e21c26385faa9d` |
| 69 | `theorem` | [coe_restrictScalars](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/coe-restrictscalars.md) | 444 | `result-track:ee24d55b65bfedddb7b1267e9a739c789649f345bd8f0628ceaaa87268d90169` |
| 70 | `theorem` | [restrictScalars_mem](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/restrictscalars-mem.md) | 449 | `result-track:ba9227690d21529a1418bbeb7b68d9ecd6f1f62ac0e7279cc351411166965cfd` |
| 71 | `theorem` | [restrictScalars_self](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/restrictscalars-self.md) | 454 | `result-track:62fbeaac5f08cc7a27be3ea4847e85091296f9e46cfd5d86cb3716269c91a53f` |
| 72 | `theorem` | [restrictScalars_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/restrictscalars-injective.md) | 460 | `result-track:a5102c02d466b9fbb57f6005ed60a233174062cfe52938b3079745a69f4affca` |
| 73 | `theorem` | [restrictScalars_inj](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/restrictscalars-inj.md) | 466 | `result-track:75e1d18782b2278aa5fbd157aac7019d18233ac868a43812d600a524f5ec1c4f` |
| 74 | `instance` | [restrictScalars.origModule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/restrictscalars-origmodule.md) | 472 | `declaration-track:4b47e5d10bdb785a18810ece4edb9aca5051c186d30fb6451b25262197e30895` |
| 75 | `instance` | [restrictScalars.isScalarTower](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/restrictscalars-isscalartower.md) | 476 | `declaration-track:cc0d2ef275761315c263c95853b5b95796182b97bedb3b3b28ce822b000fb82d` |
| 76 | `def` | [restrictScalarsEmbedding](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/restrictscalarsembedding.md) | 484 | `declaration-track:7730215784ae6d9be64147490e3de5df8ac3e7b53e0542af1d0405bdc5de59de` |
| 77 | `def` | [restrictScalarsEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/restrictscalarsequiv.md) | 494 | `declaration-track:61e352d7d9d2a523f56a8731f40ca99ae400a8076a78bcd0292d7f4612d80609` |
| 78 | `instance` | [addSubgroupClass](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/addsubgroupclass.md) | 516 | `declaration-track:5045158321bb162564ad4ea9c3852ad609b0afce6274f05e4c2acc7cd0778ec4` |
| 79 | `theorem` | [neg_mem](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/neg-mem.md) | 520 | `result-track:b84d0e621018319d9c3c0adedcc4d5295de5f95e0e2aa9d499240093d15621b0` |
| 80 | `def` | [toAddSubgroup](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/toaddsubgroup.md) | 525 | `declaration-track:e25e2f0915c1eb05eff421010cdd18c969e4959771cb57068b824842f39c680e` |
| 81 | `theorem` | [coe_toAddSubgroup](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/coe-toaddsubgroup.md) | 530 | `result-track:b95edb66be67a0e4c3893ab33c5b3219bb3c936a0987aaae956ca3126137d275` |
| 82 | `theorem` | [mem_toAddSubgroup](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/mem-toaddsubgroup.md) | 535 | `result-track:a7bd7f33bf42d8f915b715d566c36cc352c0eca462eb5505134219d4135ddf6c` |
| 83 | `theorem` | [toAddSubgroup_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/toaddsubgroup-injective.md) | 539 | `result-track:0d1ba620c222949594a1de55ae0eb12cae1a69cfc0aa0ef98dab6bbcbd7d6e23` |
| 84 | `theorem` | [toAddSubgroup_eq](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/toaddsubgroup-eq.md) | 544 | `result-track:eec8eb040e6ec5d5cf8bc0241f0da4cfd91962fef76eddab3d4b3de117c8666c` |
| 85 | `theorem` | [toAddSubgroup_strictMono](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/toaddsubgroup-strictmono.md) | 549 | `result-track:8194344149fd8ee62ea14826754e371c5aafe7ee7981c498704b9e0cdcd8ad63` |
| 86 | `theorem` | [toAddSubgroup_le](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/toaddsubgroup-le.md) | 553 | `result-track:1869dad8058c26f04820b738c48044447e2d5e05274df6af1e7c9df6d673659a` |
| 87 | `theorem` | [toAddSubgroup_mono](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/toaddsubgroup-mono.md) | 558 | `result-track:ee403cc9a456badf47fab41752f4d41a0718ddf0536bc394bf770338089d3927` |
| 88 | `theorem` | [sub_mem](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/sub-mem.md) | 562 | `result-track:2bf51479d304fbe766aca325f3e80d9f8247c5d21a611e9332e876ec58a49eea` |
| 89 | `theorem` | [neg_mem_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/neg-mem-iff.md) | 566 | `result-track:14c964e138713ed4e60c8909b9ce957f6dea1b43e7ded25895b92e991e5931bb` |
| 90 | `theorem` | [add_mem_iff_left](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/add-mem-iff-left.md) | 570 | `result-track:2a355999f919030d4d3e8db7c74678d43246fae654ba919b571293ae1fba2ab6` |
| 91 | `theorem` | [add_mem_iff_right](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/add-mem-iff-right.md) | 574 | `result-track:82b0d0fc2fb17db548ed4d0578b42845fa7cc11a72099fda36ddda7effa21177` |
| 92 | `theorem` | [coe_neg](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/coe-neg.md) | 578 | `result-track:0fb7917df3b3e2f42a50afade4d19f8ebfd3d5acdfa52aaa97f14f9463fde031` |
| 93 | `theorem` | [coe_sub](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/coe-sub.md) | 582 | `result-track:9ecf43216e22c8eab0790ec0139b33fe34d0e67a36278880eb6de1a30134ed04` |
| 94 | `theorem` | [sub_mem_iff_left](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/sub-mem-iff-left.md) | 586 | `result-track:c3b905054fee92a176072b8237b4315a4579775f1989945b1d16d03b242da37c` |
| 95 | `theorem` | [sub_mem_iff_right](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/sub-mem-iff-right.md) | 590 | `result-track:694d25140709ff12854d14befdad0b6ffac5fe9a0836d99a28f5604becf3b7a0` |
| 96 | `instance` | [addCommGroup](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/addcommgroup.md) | 594 | `declaration-track:0b878928107a2dd5b1416080cea1e6fe1c8b575f346ba00921d3d03005be5d21` |
| 97 | `theorem` | [not_mem_of_ortho](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/not-mem-of-ortho.md) | 609 | `result-track:23339696504da3e1d91285638b2561108f4cb538070e567f69e4aedfb223c720` |
| 98 | `theorem` | [ne_zero_of_ortho](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/ne-zero-of-ortho.md) | 615 | `result-track:ad0f250bc9266beaecef047de1c445eb12750f352894d0e164ce119dfeed58d2` |
| 99 | `instance` | [toOrderedAddCommMonoid](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/toorderedaddcommmonoid.md) | 627 | `declaration-track:ccb1d1cca86bff42fa474a4f0e6faddcc6c4bda8530cdb9083fb1902051f81ec` |
| 100 | `instance` | [toLinearOrderedAddCommMonoid](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/tolinearorderedaddcommmonoid.md) | 633 | `declaration-track:1205dedc4ce0c5e4269d9b71b3b57c1aff65ab406482bfaf90de41edfc4c0af7` |
| 101 | `instance` | [toOrderedCancelAddCommMonoid](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/toorderedcanceladdcommmonoid.md) | 640 | `declaration-track:de42d8d972bf4fd7959ddf59400e580aa1c4c243c2731ddb484e5793a4a02b81` |
| 102 | `instance` | [toLinearOrderedCancelAddCommMonoid](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/tolinearorderedcanceladdcommmonoid.md) | 647 | `declaration-track:a4c57c6912635b8574d6e27e72ff34c591ba27136bfaac33bf93fabf0618eba4` |
| 103 | `instance` | [toOrderedAddCommGroup](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/toorderedaddcommgroup.md) | 660 | `declaration-track:ba7935bde7a0c5174cce7f5734649e8d47334afa2c3fabfc69f5182f8b8b7b1a` |
| 104 | `instance` | [toLinearOrderedAddCommGroup](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/tolinearorderedaddcommgroup.md) | 668 | `declaration-track:59787a01d9101950805b594aa31a2044ec28e2f39c64ebe3a47f2ec0a1f72076` |
| 105 | `theorem` | [smul_mem_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/smul-mem-iff.md) | 686 | `result-track:0acd18086101049ef7314f3f6c031d08f230e50f79fcf5600dcbc8a22920965e` |
| 106 | `abbrev` | [Subspace](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmoduleBasicSubmodule.lean/declarations/subspace.md) | 693 | `declaration-track:9c9e6735cb6682c6f1a72e6ab3b4912ad41fb876fe8faebf5e9e6874e3d672c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b58d4e336a8091f0afa1528b945b1cb0848930451b6635c68fb79c64892f89b8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant690032ffe278b330bfb3b5c3b711d98929af7fa627295bf174125fe90d1b0ca8.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant690032ffe278b330bfb3b5c3b711d98929af7fa627295bf174125fe90d1b0ca8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
