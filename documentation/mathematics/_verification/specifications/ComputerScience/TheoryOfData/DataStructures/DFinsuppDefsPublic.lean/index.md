# Verification target: DFinsupp Defs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "101adbf256a058bd3097a212f3c6fd37d1d7a1ab",
  "lexical_observation_count": 187,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Defs/Variantb0bd8d760143b1cd6940c5cb6d4e797f6c2545ecd4512e8bdf4ce142c318599c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `101adbf256a058bd3097a212f3c6fd37d1d7a1ab`.

Source path: `GRWTSK/Topology/GeneralTopology/Defs/Variantb0bd8d760143b1cd6940c5cb6d4e797f6c2545ecd4512e8bdf4ce142c318599c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Defs/Variantb0bd8d760143b1cd6940c5cb6d4e797f6c2545ecd4512e8bdf4ce142c318599c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DFinsupp](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/dfinsupp.md) | 62 | `declaration-track:91b2c99d7e68daca9bf4ccc1abc2e17fda2d08740a2d96dbde4e8b70d7408634` |
| 2 | `instance` | [instDFunLike](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/instdfunlike.md) | 78 | `declaration-track:67413814aab943c8b001c8f907fa5b0f14baa28872e64948b11eaad572e03254` |
| 3 | `theorem` | [toFun_eq_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/tofun-eq-coe.md) | 85 | `result-track:9203d0e13ff008d2e988f9463cd44dd76274d907f8c267171a91c327211e0485` |
| 4 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/ext.md) | 89 | `result-track:0110d7e4053aee109bc7ac04716c5992eb65d29068df67e85887f0bdffffb50e` |
| 5 | `lemma` | [ne_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/ne-iff.md) | 92 | `result-track:79b73bc561b8c2424c14b232fe6a3116ce1297a8fda8cc0dd15806e97ea3deb9` |
| 6 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/instance-source-edition-8.md) | 94 | `declaration-track:f79c29872741918c7281aae660b0492aecec1e019a9f61803a5badd59a82ef9e` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/instance-source-edition-6.md) | 97 | `declaration-track:afecd6b0de997d26c0afa7d092f1f3b58b99ced0989dc12fddb0376bc55d3c83` |
| 8 | `lemma` | [coe_mk'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/coe-mk.md) | 100 | `result-track:efad9625863053f888f6a50d92695ab8e34d678c09c3693ff2f79e9869306f39` |
| 9 | `lemma` | [coe_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/coe-zero.md) | 102 | `result-track:84427c01a6d7e9e2c837d002382beacb19b96d51c9bd572384996c923c2ffe2b` |
| 10 | `theorem` | [zero_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/zero-apply.md) | 104 | `result-track:1df7992f8300797cf2994beaef2d287d4b2542eb3c9e2d75b8ac0b49803bd534` |
| 11 | `def` | [mapRange](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/maprange.md) | 118 | `declaration-track:21da5bf0961d2f43d5136a3eedbd622abb925abf9ad6450f34d68345a22a2adc` |
| 12 | `theorem` | [mapRange_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/maprange-apply.md) | 124 | `result-track:4cc9a86fb3508e25f870eb7a9c6eeece47f5ae5c923c80d787cd1e9dd65255c9` |
| 13 | `theorem` | [mapRange_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/maprange-id.md) | 129 | `result-track:7be97046df37ee93e40639e89048abcd7e8acac9b93ec71e38aaba373c951548` |
| 14 | `theorem` | [mapRange_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/maprange-comp.md) | 134 | `result-track:bb3beba484213dd16717bc4955716db867bcd56ad550273e2c527f910511e4ca` |
| 15 | `theorem` | [mapRange_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/maprange-zero.md) | 141 | `result-track:3ca687eabadac5699f19e9c78078aac290169efaf84c2a190ae7ac22a444e81a` |
| 16 | `def` | [zipWith](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/zipwith.md) | 148 | `declaration-track:18485b2309d65d3716100019669ae7b5e8f82507343f4e4eef39bc4b5f8641b1` |
| 17 | `theorem` | [zipWith_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/zipwith-apply.md) | 161 | `result-track:60356bd9b1be306da3160859ba5648a88dc0fe70e4978d59b423f39fa275e230` |
| 18 | `def` | [piecewise](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/piecewise.md) | 171 | `declaration-track:29d1553a1a433330839e874020def2b0df5dc63b21df1385d2d4ad3c365362a6` |
| 19 | `theorem` | [piecewise_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/piecewise-apply.md) | 174 | `result-track:221fe1c36c03e14890af271fda5b35b9a270d1f34223cf6a9dce06a593636e7b` |
| 20 | `theorem` | [coe_piecewise](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/coe-piecewise.md) | 178 | `result-track:94050a7f0509a28e6e8fa6d956d35c8dc732a4040455d732862d2cc2fb9d0fc8` |
| 21 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/instance-source-edition-3.md) | 187 | `declaration-track:7627ade2314ac3fdcc925db7f2095ff6053c7933ca7b2265c79798b1b98edb80` |
| 22 | `theorem` | [add_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/add-apply.md) | 190 | `result-track:11d7c922e05eec9a6d1d2ed95a01d1efe4fd33c4a19b6cfe0f1ffc4154ecba53` |
| 23 | `theorem` | [coe_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/coe-add.md) | 195 | `result-track:bf6b042d419eb0db4d409de6750cfbe42b2f2be6d49301a7c19954326b5b758a` |
| 24 | `instance` | [addZeroClass](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/addzeroclass.md) | 198 | `declaration-track:f44e8789ebba85756b302c8d26358000aa100e2eee7dcf8c15142494e8702b06` |
| 25 | `instance` | [instIsLeftCancelAdd](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/instisleftcanceladd.md) | 201 | `declaration-track:76f6672f3e9afa528e7dab0af387c08db2c07011520544e15056054f4c65e72e` |
| 26 | `instance` | [instIsRightCancelAdd](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/instisrightcanceladd.md) | 205 | `declaration-track:4a7070d02b055769db61a9c5409a464c41736375888fb7efe39d2e18e0c5e2ca` |
| 27 | `instance` | [instIsCancelAdd](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/instiscanceladd.md) | 209 | `declaration-track:f0d154653b0cb18e34e9dd8fd0bacf93b50a574e8583988d3f2e511548538044` |
| 28 | `instance` | [hasNatScalar](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/hasnatscalar.md) | 214 | `declaration-track:34d76d24f55324c496c62ea22270b808e817bedd9016ca4b06e0567f1b465015` |
| 29 | `theorem` | [nsmul_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/nsmul-apply.md) | 217 | `result-track:077ebeea1abc317af57571881c0c1cb37e22e0a7bdafe8cf9c1cd72870ec6c8f` |
| 30 | `theorem` | [coe_nsmul](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/coe-nsmul.md) | 221 | `result-track:0a397e3c6edfe8107640ac89afc5c81831381df99cef3319ca5b5d8c0cfeda36` |
| 31 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/instance.md) | 224 | `declaration-track:546f3858df3fd152cecd550cc98fe0b985829af9865964344d340a6dd6f458db` |
| 32 | `def` | [coeFnAddMonoidHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/coefnaddmonoidhom.md) | 228 | `declaration-track:04b15405eee5d21ead3a3d398e47ea171786efd08026e032ba25b0a54cd26be5` |
| 33 | `lemma` | [coeFnAddMonoidHom_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/coefnaddmonoidhom-apply.md) | 234 | `result-track:1f282416222eaca5aff5ca96663dd270f8c3090eb2f38e8b6e6fd38a3ceb8249` |
| 34 | `instance` | [addCommMonoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/addcommmonoid.md) | 237 | `declaration-track:6a2fe43b29a96b3c4afdcdad5c448fd5dce81fc7c5efc031a810ced35298e783` |
| 35 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/instance-source-edition-2.md) | 240 | `declaration-track:6be465f752aaf42d307073fc00a9114d3a52f4c771d2df77ce9758e62d07fad3` |
| 36 | `theorem` | [neg_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/neg-apply.md) | 243 | `result-track:0856fe090d5de493a46d8b5900bf7d33529d88f1c94c845642fe0637b0d9b829` |
| 37 | `lemma` | [coe_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/coe-neg.md) | 246 | `result-track:2440f8a05f7ec299b6a0651a73cef6fd15d322c1e9d7909b4934ad8337016aab` |
| 38 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/instance-source-edition-5.md) | 248 | `declaration-track:aabdd3d4d3637a8323e4b2d4227fbb35eeb9857f853c4fe96c5c3e115f1ae3d9` |
| 39 | `theorem` | [sub_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/sub-apply.md) | 251 | `result-track:10aefa6ef2d4c73e0955bdba9e1ee47622cd724fc1529f89546f9d8084a92b81` |
| 40 | `theorem` | [coe_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/coe-sub.md) | 255 | `result-track:5fea9289bbcc3d6fbedbd6f438e2b682d6b0988231080e5270ef0a1fb2d35b8f` |
| 41 | `instance` | [hasIntScalar](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/hasintscalar.md) | 260 | `declaration-track:d37c878b3c8105c982dff117f670f1595064542165a58026843d4287f3b9d3c0` |
| 42 | `theorem` | [zsmul_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/zsmul-apply.md) | 263 | `result-track:b8ad54db7a4119747fb8f176cc8d7a401fc1ec1b121ac3393102411c0aebe97d` |
| 43 | `theorem` | [coe_zsmul](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/coe-zsmul.md) | 267 | `result-track:5a674024b49027bf796be7756134cf3c6c165cb88eeb5124cc07971f09fe3953` |
| 44 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/instance-source-edition-7.md) | 270 | `declaration-track:bad444747dbd01f69961c72e19d9ccd3c25f6115b17c6a8866785034a969862b` |
| 45 | `instance` | [addCommGroup](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/addcommgroup.md) | 274 | `declaration-track:41cc8b379c7dc9bbcc45fec30e50faf379a2e1c334c8eb30ea77377e9a1b626e` |
| 46 | `def` | [filter](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/filter.md) | 283 | `declaration-track:630f46bda4644c120d5724d30f31e945d6ac65dda74f8173483347160b0b163e` |
| 47 | `theorem` | [filter_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/filter-apply.md) | 289 | `result-track:6b281197074f6d08c9bcdbbfeb1ee01c10f25c0fc15a1699fca8a9eeabd3bf95` |
| 48 | `theorem` | [filter_apply_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/filter-apply-pos.md) | 293 | `result-track:1ee742e3e525c95cbce9dc1dd5859d2476f7b4647f5503819d2ee807e2c2e5ad` |
| 49 | `theorem` | [filter_apply_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/filter-apply-neg.md) | 296 | `result-track:74b3c8d03ebabb48d0633596aac010df282e37b4329670adde898f50361118e4` |
| 50 | `theorem` | [filter_add_filter_not](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/filter-add-filter-not.md) | 299 | `result-track:de127a07e34899617260efba54781aacd033bafb8bd053885508bddd03a46ed1` |
| 51 | `theorem` | [filter_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/filter-zero.md) | 307 | `result-track:e4c8e020281616bf7ca5fbb9bb912bb73b069f70042011c32718956b1c5ddd9c` |
| 52 | `theorem` | [filter_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/filter-add.md) | 313 | `result-track:4a15f61a661dbd8447dd33d438bf1ef7f9b95d33ed863282bb2cae4fc1b550c2` |
| 53 | `def` | [filterAddMonoidHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/filteraddmonoidhom.md) | 322 | `declaration-track:596ce7783b28c10ea5eb1156b30d65d3d93ee6aafee68026313261bcf2219574` |
| 54 | `theorem` | [filter_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/filter-neg.md) | 331 | `result-track:1acd4c9eb84afc96f1114c86a1097695a4006fb10380857899f3a5563969666e` |
| 55 | `theorem` | [filter_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/filter-sub.md) | 336 | `result-track:2db365e94f527c8ba7b476cde07a499751987e63bd3786f7e6ee25cc02e9a584` |
| 56 | `def` | [subtypeDomain](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/subtypedomain.md) | 342 | `declaration-track:e59ed6994eed7d074f83d994fd1be10c68506a6d76655548312d1f0d691b6138` |
| 57 | `theorem` | [subtypeDomain_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/subtypedomain-zero.md) | 352 | `result-track:47bdf5655ea8c0c035624dde394a3f0ff759092d18227598c765b240e020f7ea` |
| 58 | `theorem` | [subtypeDomain_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/subtypedomain-apply.md) | 357 | `result-track:746e70056d96b0b53dea6a982905c98f29de09adae5ea84c264e00e2ce04cab5` |
| 59 | `theorem` | [subtypeDomain_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/subtypedomain-add.md) | 362 | `result-track:b00ee08a3df6a969418ad481c1b752dee72f1776d966877bb73c4e1f1b2aa6ef` |
| 60 | `def` | [subtypeDomainAddMonoidHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/subtypedomainaddmonoidhom.md) | 370 | `declaration-track:9c1dc487eaaf8fada988e4f669a22006332b9f1ac1a10ed7f44289cac90d6acd` |
| 61 | `theorem` | [subtypeDomain_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/subtypedomain-neg.md) | 379 | `result-track:c86636a027610083fcae858e7432fa96b0fd6e481198ee16610c874ab08bec5b` |
| 62 | `theorem` | [subtypeDomain_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/subtypedomain-sub.md) | 384 | `result-track:7c1c3a7093e3ccc7352e3f21711b6c3ecdf78a4e824ae3ab74beff8de0455eaa` |
| 63 | `theorem` | [finite_support](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/finite-support.md) | 394 | `result-track:95061f3ff9908fefb278054100be96969b7db2e2d360b2da1dc81b1459cc922e` |
| 64 | `def` | [mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/mk.md) | 403 | `declaration-track:bdeea4660823f7a6c218765bc7838e237baff8e7b5edc9e7c6786142845351b3` |
| 65 | `theorem` | [mk_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/mk-apply.md) | 410 | `result-track:da5a8e9f5ec7d69edb97693783d82e4a15b69af22f9981aada30335b6adb21b0` |
| 66 | `theorem` | [mk_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/mk-of-mem.md) | 413 | `result-track:76f44d9b9bde1bfa29542f050cb5779a0ebc360c38dae17b9f3a4d46a62d79c2` |
| 67 | `theorem` | [mk_of_notMem](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/mk-of-notmem.md) | 416 | `result-track:8b6d0b42f1ce95748ad60a7d68f2226a764e8913b3a3873e0780fbfd0ec61358` |
| 68 | `theorem` | [mk_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/mk-injective.md) | 419 | `result-track:85dfb306c15cd6200dfd59412a349843302d3d02e9b9f35b313298b9f40a2aa3` |
| 69 | `instance` | [unique](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/unique.md) | 427 | `declaration-track:331e80ffc959065d54c5c8f7fd4a55991bb87a2bcc38b95fd65949949885d0a4` |
| 70 | `instance` | [uniqueOfIsEmpty](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/uniqueofisempty.md) | 430 | `declaration-track:b2be692f7aaa8338fbec725abe222adf8c74b33d2651665009c76d14b04eb03c` |
| 71 | `def` | [equivFunOnFintype](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/equivfunonfintype.md) | 436 | `declaration-track:3c53620ff3893c53326bb8b46ac2f472aed5c0f96dc4711b3301955379227d37` |
| 72 | `theorem` | [equivFunOnFintype_symm_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/equivfunonfintype-symm-coe.md) | 442 | `result-track:ed94172d1c210a5b0de0cbf33aaa567734ff6ba1ea5168e6dd127693cf25894f` |
| 73 | `def` | [single](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/single.md) | 449 | `declaration-track:603d0e7562ed410661638e68ebd3985fba41a1843cb3982cb01a44f67692a0df` |
| 74 | `theorem` | [single_eq_pi_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/single-eq-pi-single.md) | 453 | `result-track:593f40eb07042765bec150c8bc42e9cc30324fad835a8dc1a1e1714daf064735` |
| 75 | `theorem` | [single_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/single-apply.md) | 457 | `result-track:4bcd15969e9376f8133a3156becb0c0a7df3df6ee831a657be55023fb3d2c666` |
| 76 | `theorem` | [single_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/single-zero.md) | 463 | `result-track:2cadc5e0fd12935d1adf0bae4eae485b42d4956075d0ecf1eecbb3e7f0201b42` |
| 77 | `theorem` | [single_eq_same](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/single-eq-same.md) | 466 | `result-track:7cd745327898f67ca9e5e59cea484c3e482aee9e1ba653a8ea84b55a51c4b6bf` |
| 78 | `theorem` | [single_eq_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/single-eq-of-ne.md) | 469 | `result-track:bd2f4f8b08404942fd9e9d4d76678a82c960115381fbb5cb6e6460b29a2432b0` |
| 79 | `theorem` | [single_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/single-injective.md) | 472 | `result-track:eed4f5ebd8bcafbbee25ce8c72ad842daf69ed6910dcd90d21c9344336674472` |
| 80 | `theorem` | [single_eq_single_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/single-eq-single-iff.md) | 476 | `result-track:b8a224feab1ae8859e9688f76d03aaca676bbe466f8406e30acd3342a2863f47` |
| 81 | `theorem` | [single_left_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/single-left-injective.md) | 496 | `result-track:52fb1b5f95bb43bbd08284c4dfcb476aa81593a81141484c2e6197d6548411d3` |
| 82 | `theorem` | [single_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/single-eq-zero.md) | 501 | `result-track:a6f7567a07ca1d6b67b48c0c6e336225b9f29a6dd6fe97964caba0178e76268e` |
| 83 | `theorem` | [single_ne_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/single-ne-zero.md) | 505 | `result-track:05580a833eaa74b9955f573a71ecce432a3e5be8fba82282128efb4be8716709` |
| 84 | `theorem` | [filter_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/filter-single.md) | 508 | `result-track:31f9a8b322079955c648f7f6f47d9195e059305a47cb8fcd76ab256fe3e99246` |
| 85 | `theorem` | [filter_single_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/filter-single-pos.md) | 516 | `result-track:5da31ccae768068c3aaf99b19993d05c8cc1027399ce69835b7346584a392bb8` |
| 86 | `theorem` | [filter_single_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/filter-single-neg.md) | 520 | `result-track:0d039d6ed1568ac53a58e086f9c6540d641a36be50487dca64f87d5ce24b3ea0` |
| 87 | `theorem` | [single_eq_of_sigma_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/single-eq-of-sigma-eq.md) | 524 | `result-track:72ab33325fe98e6e0d9009db9ba5b261a7bb3b54cd99d3379f4d068cae96be7b` |
| 88 | `theorem` | [equivFunOnFintype_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/equivfunonfintype-single.md) | 530 | `result-track:e0202207727781b1a5ae3d90ecbeae4a332dbb882698e66409cb5a0286343b7c` |
| 89 | `theorem` | [equivFunOnFintype_symm_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/equivfunonfintype-symm-single.md) | 534 | `result-track:7104da4ee4d43108eb72ac74dd92e542bc5b4cad59e4c29530730d9e805a873a` |
| 90 | `lemma` | [filter_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/filter-eq.md) | 538 | `result-track:7f59672d34e03dcced464ef669247773a4f86caf90b4787a485ea8e2776eb117` |
| 91 | `lemma` | [filter_eq'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/filter-eq-source-edition-2.md) | 546 | `result-track:970e300922014a1784ccbcc9fce073fc2390a10ed80df31d8a250c4e580183d7` |
| 92 | `theorem` | [zipWith_single_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/zipwith-single-single.md) | 553 | `result-track:dbe283d439364e9263eb9f9a480c568385e3ebfbfe4f4bf81f28fbbc39b6b3bf` |
| 93 | `def` | [erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/erase.md) | 561 | `declaration-track:dfda56b21d70ddd5288af7f38a9c38077a76ae830a3cad2f4cc2c0a200843d02` |
| 94 | `theorem` | [erase_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/erase-apply.md) | 566 | `result-track:15085769a7b6a76496b15996515f2c069f203f65867e6d3f2cbe23b25f4635e2` |
| 95 | `theorem` | [erase_same](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/erase-same.md) | 569 | `result-track:297faa83393686ce2522104be3812a97612e979b04d22569201ab2c6c54e84b2` |
| 96 | `theorem` | [erase_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/erase-ne.md) | 571 | `result-track:55c13a312ee9bfdad6c3eddfba0747dabf89ba6d1a68c82fe39161c978af2aec` |
| 97 | `theorem` | [piecewise_single_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/piecewise-single-erase.md) | 573 | `result-track:0b3e583234a88f90971bcafcd6da24a561241bf717a3d28181c896dd4608c3c3` |
| 98 | `theorem` | [erase_eq_sub_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/erase-eq-sub-single.md) | 579 | `result-track:c509dc929d9ce43aeada7636f5b109cb1437002c1529c6438f4084f568658617` |
| 99 | `theorem` | [erase_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/erase-zero.md) | 587 | `result-track:abfaa379fb6128062c9486ee8f8532968a9642e7c0eac9ad404f15b273dcd143` |
| 100 | `theorem` | [filter_ne_eq_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/filter-ne-eq-erase-source-edition-2.md) | 591 | `result-track:d5269000cf038020e89198690bd514929732dbe9c8f8071eeb58b26eb5288fc2` |
| 101 | `theorem` | [filter_ne_eq_erase'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/filter-ne-eq-erase.md) | 595 | `result-track:97fdf246cfad23a2280e2dc7f60959d1ee4fe8d1a79ec4bf889a99267772f286` |
| 102 | `theorem` | [erase_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/erase-single.md) | 598 | `result-track:de4a198535e80b1b30435569d95b1a41b43858c02b8ffa36e90066371ffc685c` |
| 103 | `theorem` | [erase_single_same](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/erase-single-same.md) | 603 | `result-track:2c0fe5411f028f5ef0009d1c4ad08dff89066369c2d8b680d931615debd5c371` |
| 104 | `theorem` | [erase_single_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/erase-single-ne.md) | 607 | `result-track:4d94e1b7b4cb4ad50a59ee075e15b448c48f5cede43ef5d3353ec5f129b413f0` |
| 105 | `def` | [update](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/update.md) | 619 | `declaration-track:ae94520362626a510edd14439968d9f1d5dcabea8b0308dc78e7bfa6a2efdb1e` |
| 106 | `lemma` | [coe_update](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/coe-update.md) | 631 | `result-track:1b671453b1ece472f49ea3839fbb3c61fd16b16821710a1647ac42095d2b555f` |
| 107 | `theorem` | [update_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/update-self.md) | 634 | `result-track:90683b2a0d4807659f54f581d8517da4f78b7bdaaf94ac01a2a72e2c695bb655` |
| 108 | `theorem` | [update_eq_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/update-eq-erase.md) | 639 | `result-track:072d3e864cc9d99b8bad4ebde838cf7f7ff514bbb67ad701d60ea565338a857f` |
| 109 | `theorem` | [update_eq_single_add_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/update-eq-single-add-erase.md) | 645 | `result-track:cb2facc7cf3746c18db3393f005303906af82e8d8ffc63d782a66f5da52f7e92` |
| 110 | `theorem` | [update_eq_erase_add_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/update-eq-erase-add-single.md) | 652 | `result-track:971012ffd0842038a535d06be275b0bfdb2a3f41b9a3a5e27a1d60ef7d520512` |
| 111 | `theorem` | [update_eq_sub_add_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/update-eq-sub-add-single.md) | 659 | `result-track:6cccc2688f94c8d276458e683b7bf92b3d0628270dafad12d8522603e707bb6a` |
| 112 | `theorem` | [single_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/single-add.md) | 675 | `result-track:066624d5b017ad5beeadec2e844b768336dcb110c52cd08f65f00286152fbab0` |
| 113 | `theorem` | [erase_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/erase-add.md) | 679 | `result-track:ff61a0dffd6e3e0a3b7dc5b75f7b6867421cd712f5c2c557102518b105cf89f5` |
| 114 | `def` | [singleAddHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/singleaddhom.md) | 686 | `declaration-track:e0ce3926fb09efe27f7c2ed0c3adbbce822be1ae858d5cfdbe5b0da39864527c` |
| 115 | `def` | [eraseAddHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/eraseaddhom.md) | 693 | `declaration-track:75c7030ce2b362268027b0ffa8adf2ff4a82624ace506111397ff51111c147c4` |
| 116 | `theorem` | [single_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/single-neg.md) | 701 | `result-track:e6a85a8e3f7c5abddbe8ac7a0e04f03cdaff59afa1a1f024ba74f9e89596da46` |
| 117 | `theorem` | [single_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/single-sub.md) | 706 | `result-track:221c1fb70a3ed5b3ec3ce4c167c8a5b9b61c7a1f536019515def6a0b89ec28b6` |
| 118 | `theorem` | [erase_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/erase-neg.md) | 711 | `result-track:a7dac7c9266df599b4d2b9abdb2a24ab9c4a84697885fc16503aa6f1b180da10` |
| 119 | `theorem` | [erase_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/erase-sub.md) | 716 | `result-track:ea67a9bfcd3847360ddded44e83a78c982f9db2bf434421c0cb0f1424db53193` |
| 120 | `theorem` | [single_add_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/single-add-erase.md) | 720 | `result-track:3df88a3e9f4efeeb33f4bd5fb156f42f6a35acfa1808a5c9e85b74c61001208d` |
| 121 | `theorem` | [erase_add_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/erase-add-single.md) | 728 | `result-track:7a93bf52c6054316a03e227d85f2874828bfc34183bc9714eaf72236096a0963` |
| 122 | `theorem` | [induction](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/induction.md) | 736 | `result-track:6aacc87ad651c9c112baa2c63e5741caf1c0927663108dc782830384c6c197dc` |
| 123 | `theorem` | [induction₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/induction-source-edition-2.md) | 764 | `result-track:ac5455cb3f4ce6fafd9c9a505a9a7b9bf5db77708623deb416a5ba3f1fd81bcc` |
| 124 | `theorem` | [mk_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/mk-add.md) | 777 | `result-track:15b0098d0dcf33553ef856579b6d63300c922514b9358c354b938528e03b7017` |
| 125 | `theorem` | [mk_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/mk-zero.md) | 782 | `result-track:ddbb5d9da83208c87fd9de62b5d0b223ef5bca8093954d0e782242802fd80f39` |
| 126 | `theorem` | [mk_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/mk-neg.md) | 786 | `result-track:8c3bb2313e492dc9a563c1be9022c144697b8c46aecc9bb4aef78ce8ed469ea0` |
| 127 | `theorem` | [mk_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/mk-sub.md) | 791 | `result-track:93dacaaf8cf8ff79d90824c1943ebe64c80a9de51399c42ad011da60da4ad3bd` |
| 128 | `def` | [mkAddGroupHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/mkaddgrouphom.md) | 797 | `declaration-track:a10279d945ff9cefb748727eb2b06581eaa05f593c9a8e88ff0db95c772b7203` |
| 129 | `def` | [support](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/support.md) | 808 | `declaration-track:606892a6073091fbb55914be547856fc859c6820b1c4358b9ffe286d86bee628` |
| 130 | `theorem` | [support_mk_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/support-mk-subset-source-edition-2.md) | 821 | `result-track:e2a41c896ab97a6e326cf0613ba8ef6522a958dfa778f5976d0eaa743a66c57b` |
| 131 | `theorem` | [support_mk'_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/support-mk-subset.md) | 825 | `result-track:16cc354c5195d56125578f32bfbc34e1272cc7023f06f68fd21d851e8acdb290` |
| 132 | `theorem` | [mem_support_toFun](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/mem-support-tofun.md) | 830 | `result-track:7f297394d9f5dc7d008952ac750f9a19442755e7bbbe863543913dbc5c04418f` |
| 133 | `theorem` | [eq_mk_support](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/eq-mk-support.md) | 837 | `result-track:263ce01847346111cef3118f0a47e766b593db4046224d7247d3b2fa53ee986c` |
| 134 | `def` | [subtypeSupportEqEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/subtypesupporteqequiv.md) | 842 | `declaration-track:1749bf93429921c6b49f2f73bd295b1ca3d1a7318ebeb50834d2eda3606ef4eb` |
| 135 | `def` | [sigmaFinsetFunEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/sigmafinsetfunequiv.md) | 865 | `declaration-track:6aab1dafe4593eb7fdd479b6a3433292e88b066f5af6d3de0349b6c1d59c3d8f` |
| 136 | `theorem` | [support_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/support-zero.md) | 869 | `result-track:2cdad4c7da6f32c6953e931fbd62f662e9faa040eab62c36e19230da1d6a1767` |
| 137 | `theorem` | [mem_support_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/mem-support-iff.md) | 872 | `result-track:940b5653e76ff409556c41e62cfab2fcc630a9f2e6ec72b8bd5310f59f632c13` |
| 138 | `theorem` | [notMem_support_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/notmem-support-iff.md) | 875 | `result-track:c995ddc2a4e0d0f43c80e57ec79145f192b83ed3108dbd8f3d8a742f629cf342` |
| 139 | `theorem` | [support_eq_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/support-eq-empty.md) | 879 | `result-track:93a00ed3039e26820bf995698f0add12d10e3599fb9c726ba47f79032110e6c1` |
| 140 | `instance` | [decidableZero](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/decidablezero.md) | 882 | `declaration-track:77bf694f5734246eabe8773c2ffb5897907c678672a18141fc56e89fca15bdd0` |
| 141 | `theorem` | [support_subset_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/support-subset-iff.md) | 895 | `result-track:c84cdfc440e22a7dc3f3c05d3f2458f0798b4fc43f9eafc5ebbfdb97d958eaed` |
| 142 | `theorem` | [support_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/support-single.md) | 899 | `result-track:807e25e4a602bda92a33bf0a4e53006c3db2c2024f5bc65c330cc6508622f87f` |
| 143 | `theorem` | [support_single_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/support-single-subset.md) | 904 | `result-track:cefeb67a206693d431faddea8301dee3337de3d61890af3637f9e4e903173d72` |
| 144 | `theorem` | [mapRange_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/maprange-def.md) | 911 | `result-track:d24f2b5d2b532b5d1cffc0bbc5950440a08050109c75fa0db18bf05257f449da` |
| 145 | `theorem` | [mapRange_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/maprange-single.md) | 918 | `result-track:554d364e65707c5af18fcb1c0ed0b7ca7d88a8c97ee7be163a0c6d6ae451fcb6` |
| 146 | `theorem` | [mapRange_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/maprange-injective.md) | 927 | `result-track:b1ec059ab50e335d119fe1b2b3a2fa7983cd2e9aca247fd55afd183123d8405c` |
| 147 | `theorem` | [mapRange_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/maprange-surjective.md) | 934 | `result-track:c542bc09f8e04084be23443df8de10af00430d1a549fb904cb397da742f52142` |
| 148 | `theorem` | [support_mapRange](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/support-maprange.md) | 954 | `result-track:bb73ab6d45fc1d2b44e165939c7ee3a4f514b057133d9f4e5110d604a4445103` |
| 149 | `theorem` | [zipWith_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/zipwith-def.md) | 957 | `result-track:8c1ee16149ecdb1274d5e110b18096e88f9eb553ab2309771fb94eb1d1938c5d` |
| 150 | `theorem` | [support_zipWith](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/support-zipwith.md) | 964 | `result-track:08b2749b9f50249292a49cfa1a3ea083bacf7b558e9d866c5f962e8166727b25` |
| 151 | `theorem` | [erase_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/erase-def.md) | 970 | `result-track:0093167ac34dc8241f28b7636d74a525a56d4b65eb88789a45428f154eb14574` |
| 152 | `theorem` | [support_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/support-erase.md) | 974 | `result-track:c8113f56df5a2722414675578d6d4162108ae71f3373c1f90354ad4a69796098` |
| 153 | `theorem` | [support_update_ne_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/support-update-ne-zero.md) | 978 | `result-track:ad140bd70d7a977d4cfde174bae0ad47331b0ef09eb781e508fa4c927da7b016` |
| 154 | `theorem` | [support_update](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/support-update.md) | 985 | `result-track:4f11f20a6f8fae88355d64b858c5f7aa685075aeb0d6ab3e7d033005aa8a7b68` |
| 155 | `theorem` | [filter_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/filter-def.md) | 997 | `result-track:f4030893af647dda5d591e47aec7f12830fe08988586b0b38149fe614b5a0638` |
| 156 | `theorem` | [support_filter](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/support-filter.md) | 1001 | `result-track:bd2a43b48c9b43449ffa5a0d99795e29ff28d755982e9d7e9eaec5786ef71432` |
| 157 | `theorem` | [subtypeDomain_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/subtypedomain-def.md) | 1004 | `result-track:9d36f84a21b54d6a4cf9f9a5e757af3c447fc01640af2545a265ffe397ec1f32` |
| 158 | `theorem` | [support_subtypeDomain](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/support-subtypedomain.md) | 1009 | `result-track:39f2cadd3b09b47c413602734df23f89b3310d6c4b70efa2b094367902e1de4e` |
| 159 | `theorem` | [support_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/support-add.md) | 1018 | `result-track:7d55620e6e132848b0ceeb1db3a1033cadc4f9254e92aae98871dc7c24d89cec` |
| 160 | `theorem` | [support_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/support-neg.md) | 1023 | `result-track:ab4fbcefe9dc115e7464f82ae26e445a5cbc61fab1b96f55f655588d1338fde5` |
| 161 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/instance-source-edition-4.md) | 1026 | `declaration-track:aabcfcbeb69b708b6ea099f52a987c48e9ae6b77ff7e19d22c5cfd5cb4dc0c9e` |
| 162 | `def` | [comapDomain](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/comapdomain.md) | 1043 | `declaration-track:1a6142a03a42e6416b54f2a6b2bcbceba89d894a417f89f00f92873b1620cf81` |
| 163 | `theorem` | [comapDomain_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/comapdomain-apply-source-edition-2.md) | 1052 | `result-track:dc4191e51d16ad69bbdfa24b950d55837974599022ce98e4b8a5835d0619b7c7` |
| 164 | `theorem` | [comapDomain_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/comapdomain-zero.md) | 1057 | `result-track:9c2dece89683830220595eb692b74fb8fee8f96167b5dcfcd61843bb635d093b` |
| 165 | `theorem` | [comapDomain_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/comapdomain-add-source-edition-2.md) | 1063 | `result-track:7236613002ea0db147f3781d9a4c544dda209fdb156f74353b15c8dbbffb8719` |
| 166 | `theorem` | [comapDomain_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/comapdomain-single-source-edition-2.md) | 1069 | `result-track:d829d52f4c4a4e881e9b4703b95af8fae2be4dd51dddda58feb8cceae65e47f9` |
| 167 | `def` | [comapDomain'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/comapdomain-source-edition-2.md) | 1079 | `declaration-track:f816bbd84167ec73a62f27d096a75d6cc65d8741f231bd20f7dbaebf55371ef9` |
| 168 | `theorem` | [comapDomain'_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/comapdomain-apply.md) | 1088 | `result-track:93398412b4dea941872f4f9acf47420f61c2c36f38ce46248ae795b87702d151` |
| 169 | `theorem` | [comapDomain'_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/comapdomain-zero-source-edition-2.md) | 1093 | `result-track:b58a039b2088023037146c918b4804a4dff687fc4308c3c355db09b788bb9880` |
| 170 | `theorem` | [comapDomain'_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/comapdomain-add.md) | 1099 | `result-track:2ac5c9b272a8639f43b54636c494a10af5e0953810cb33dcee0d3d7f209b9ea5` |
| 171 | `theorem` | [comapDomain'_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/comapdomain-single.md) | 1106 | `result-track:ca79dff42685dbf3c351cf61b0d861cf52ecfb6c94d53c2d1025b29a1a24a82e` |
| 172 | `def` | [equivCongrLeft](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/equivcongrleft.md) | 1115 | `declaration-track:f014c93afa09ce91baac82855d93a9d65f2fd13db8d966f997f1593e28799609` |
| 173 | `def` | [extendWith](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/extendwith.md) | 1135 | `declaration-track:2600c92c963c83b5141dd16e44a85abf35d475028e068af11c0d4f183bf58dd8` |
| 174 | `theorem` | [extendWith_none](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/extendwith-none.md) | 1146 | `result-track:03959914464137a62d568820fc1fe8899056c46e70e47fe56d5a8de5bf45aca8` |
| 175 | `theorem` | [extendWith_some](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/extendwith-some.md) | 1151 | `result-track:66d9766c83c81c4089d5065f70e2d91db4305d4bd657ca4e51d67a8a76bb396a` |
| 176 | `theorem` | [extendWith_single_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/extendwith-single-zero.md) | 1156 | `result-track:d8feafb8f432790cdec2ccb6f79cfaf58d73d231b560403a458c295dae9c5df7` |
| 177 | `theorem` | [extendWith_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/extendwith-zero.md) | 1166 | `result-track:c77c467e4340a20deb48b1e64e5925faa38d21f9bb32fb0c75a39f25febcd54c` |
| 178 | `def` | [equivProdDFinsupp](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/equivproddfinsupp.md) | 1176 | `declaration-track:aa34eb2652fb0e0607d00c80d6636acf58381e775a49d7d1fc128c0717bc2eb3` |
| 179 | `theorem` | [equivProdDFinsupp_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/equivproddfinsupp-add.md) | 1190 | `result-track:20e392cf77980148ed15dd00949f59ae7c23fb6530cab33b7d6cacb55742eaac` |
| 180 | `theorem` | [mapRange_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/maprange-add.md) | 1206 | `result-track:c25938291d30df9d77e34a84834b3ae8053844fbb6df9b823661018f9cc340fb` |
| 181 | `def` | [mapRange.addMonoidHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/maprange-addmonoidhom.md) | 1214 | `declaration-track:55320950c470fbee1725991d5f940df35f6f69ad1d3a8a4090121d0e4deb1c64` |
| 182 | `theorem` | [mapRange.addMonoidHom_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/maprange-addmonoidhom-id.md) | 1220 | `result-track:4a864a323ab74e5782e63d8775cc332c71aefe391918c95adcc34eff2c3d76ed` |
| 183 | `theorem` | [mapRange.addMonoidHom_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/maprange-addmonoidhom-comp.md) | 1224 | `result-track:aefd095663d36e5481e5d124a95e089e356122a2a2eeb08c1c4743a7c26679a5` |
| 184 | `def` | [mapRange.addEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/maprange-addequiv.md) | 1232 | `declaration-track:7fbe33fb32152ba9895386abaff602f9edac7cbcd5ff25a92536fbfdf8409ff0` |
| 185 | `theorem` | [mapRange.addEquiv_refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/maprange-addequiv-refl.md) | 1247 | `result-track:cb480dc299b61a3b965f6bc00b45a30c3f7de116b4699c1dfcf8d1bfed86f37e` |
| 186 | `theorem` | [mapRange.addEquiv_trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/maprange-addequiv-trans.md) | 1251 | `result-track:e4ec5ee3e6b4e40b327100ae7ef291c78fc542ad1adb28d18401620499557c6a` |
| 187 | `theorem` | [mapRange.addEquiv_symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppDefsPublic.lean/declarations/maprange-addequiv-symm.md) | 1258 | `result-track:d40fdacfcf305f753480cf4a44a692c8d05aed6d8a622961d3205e3cf2dc5cb6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8a4a6f1c1e3e68da783779fc370964d06926764e46cf7c5e157824cb41107a4a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Defs/Variantb0bd8d760143b1cd6940c5cb6d4e797f6c2545ecd4512e8bdf4ce142c318599c.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Defs/Variantb0bd8d760143b1cd6940c5cb6d4e797f6c2545ecd4512e8bdf4ce142c318599c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
