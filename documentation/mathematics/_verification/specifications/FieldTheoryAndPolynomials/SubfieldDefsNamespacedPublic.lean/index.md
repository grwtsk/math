# Verification target: Subfield Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3248145e2a399dbe86982c743ec58b8da814baf6",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3248145e2a399dbe86982c743ec58b8da814baf6`.

Source path: `GRWTSK/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean.json)

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
| 1 | `class` | [SubfieldClass](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/subfieldclass.md) | 65 | `declaration-track:8f9ad5526316302c6d20cfa55f78254d93d4717138e587c2fd7b10d148ac69e7` |
| 2 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 78 | `declaration-track:48fd02904f3539eb974861d2a07bb4b66dbe394c56d1628e92a7aa3842987a55` |
| 3 | `lemma` | [nnratCast_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/nnratcast-mem.md) | 84 | `result-track:4ceacc391855d5ef5e0e46dbd3615139e805c8bd7c35f354cb8b1203842df152` |
| 4 | `lemma` | [ratCast_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/ratcast-mem.md) | 88 | `result-track:79a0049c833aa70e8b5af66d09f4b09957dc2c6c0b32c541841687b58192dcae` |
| 5 | `instance` | [instNNRatCast](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/instnnratcast.md) | 91 | `declaration-track:823e490aeb49a58d3d4cc1798a8e1b57e608ed40924bf00d0d6518ceffee702d` |
| 6 | `instance` | [instRatCast](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/instratcast.md) | 92 | `declaration-track:c3fb824dc1d5597978f3fafcc532b59a637ccf2a89615124bd8ba2fa14ae7790` |
| 7 | `lemma` | [coe_nnratCast](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/coe-nnratcast.md) | 94 | `result-track:d0083ba85c6d2088435a0e8af278a72e7b095cd4351a5ec7c0b369f00b433564` |
| 8 | `lemma` | [coe_ratCast](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/coe-ratcast.md) | 95 | `result-track:63842ddfc1ff7bfde00b1fe19ef884bd96c9f0e641953f6a9faa889245fa7945` |
| 9 | `lemma` | [nnqsmul_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/nnqsmul-mem.md) | 98 | `result-track:3a9e954dffdf63ac983c8b979bebc994988628129b4e9fc249202aeb6d43398d` |
| 10 | `lemma` | [qsmul_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/qsmul-mem.md) | 102 | `result-track:115c631eb464df4020d70e3969b84df497d1d0932c1f4b5f838b14d3778c6e30` |
| 11 | `lemma` | [ofScientific_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/ofscientific-mem.md) | 106 | `result-track:e3d7a05137be7a5c0f0ed3eaab336a461179e5293681f295b7dbd914b0d053cf` |
| 12 | `instance` | [instSMulNNRat](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/instsmulnnrat.md) | 110 | `declaration-track:75c82c95b04476acd974748e15838adfe95d5c72995925bf00d9438ec42846d1` |
| 13 | `instance` | [instSMulRat](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/instsmulrat.md) | 111 | `declaration-track:26afb3dbfa1955eafdfa81995863407ef5ab243181641239c9cb72cba2de0069` |
| 14 | `lemma` | [coe_nnqsmul](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/coe-nnqsmul.md) | 113 | `result-track:958d553a3d9d4d5ad99714236079769e1720d124c02652a8359218cae8dc8968` |
| 15 | `lemma` | [coe_qsmul](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/coe-qsmul.md) | 114 | `result-track:8ae06bc1091146a201b0b4ec835e71d9114c4a843c6f51b8153b10f766a1a4ef` |
| 16 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 117 | `declaration-track:70b3378c2464e9e8cabd4b3472bb20216ec2bfe0666fba601abb64bca4345d6b` |
| 17 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 126 | `declaration-track:9e771711ad340d0bd2106190faf794c771c6e4d6b9158cb9aec4ca6812620cc7` |
| 18 | `structure` | [Subfield](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/subfield.md) | 140 | `declaration-track:c1775a17ed528cd805c875d53301cb984534e85ca6bb9c4b679fa15d3112c279` |
| 19 | `def` | [toAddSubgroup](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/toaddsubgroup.md) | 151 | `declaration-track:bc0e47f14f4074d95e4e074b117ed9534c3ae449ded1558468f76c60341c87a3` |
| 20 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 154 | `declaration-track:48506b76954b3f018f54a27d2432426f92615ca45596a01c6335bc0cd6124cd2` |
| 21 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 158 | `declaration-track:582998f396958ed36cc84d6a2791cb053b8329031904e2a3deb8d005a846a87c` |
| 22 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/instance.md) | 160 | `declaration-track:0c562c1c92b302619df945d1f5527838f1fe2e52cef921a6a4edce6e026e3535` |
| 23 | `theorem` | [mem_carrier](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/mem-carrier.md) | 168 | `result-track:51fc9d6d756738953a273a3a2a2ded5e732cf21ef41370c1b13fbfdad5025f34` |
| 24 | `theorem` | [mem_mk](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/mem-mk.md) | 172 | `result-track:455e2d6aab481b5ed772e9ac2b1fe164987084ae608d60b6fae78b0d284206c1` |
| 25 | `theorem` | [coe_set_mk](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/coe-set-mk.md) | 176 | `result-track:a31a70284650091eda12952e4c4000a3c7d3eb2ea46b48c7b7031838c3648ce2` |
| 26 | `theorem` | [mk_le_mk](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/mk-le-mk.md) | 180 | `result-track:651d83aabeae3636f31dc7c48a153aad06c5d436d8f0811cdb676dd7ce5c848a` |
| 27 | `theorem` | [ext](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/ext.md) | 186 | `result-track:b3ebb7edd1cf7a09da9f6b0507311423e82386c413bfcbddb13edcdc7c311bf7` |
| 28 | `def` | [copy](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/copy.md) | 191 | `declaration-track:f04e8ad3bb4c1e71dd9873311b461e3be2c06a3c608b6001086637a1327cbb67` |
| 29 | `theorem` | [coe_copy](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/coe-copy.md) | 197 | `result-track:dd467c726ea3ad564695657a3f46eea2c1ad02534698b1cd76668f98ef22b240` |
| 30 | `theorem` | [copy_eq](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/copy-eq.md) | 200 | `result-track:6cac8a189a6da6b1ee84d4eea1dae05eb1c854175c7568b933a88c463d90e35e` |
| 31 | `theorem` | [coe_toSubring](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/coe-tosubring.md) | 204 | `result-track:77657b2a07b8ac7baa5c28fab356441860eb7ac2f10e97a49a470dced0fe62a3` |
| 32 | `theorem` | [mem_toSubring](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/mem-tosubring.md) | 208 | `result-track:339e247b2f77cf54818f51c00c73c88b136221c9cd6a7f102665764c15e7cd5b` |
| 33 | `def` | [Subring.toSubfield](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/subring-tosubfield.md) | 214 | `declaration-track:254a95572c3cf39518931f1fad6e07f2aac529c710913cc1556277d3302e37d5` |
| 34 | `theorem` | [one_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/one-mem.md) | 224 | `result-track:c1beaf47cc2fbce6eb42b1391e4463417414d8a240518339c063f006dce0ac6f` |
| 35 | `theorem` | [zero_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/zero-mem.md) | 228 | `result-track:5c232f4c50af3f86477c38b1859b75d008d335b9896624a7c296c404dd3be396` |
| 36 | `theorem` | [mul_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/mul-mem.md) | 232 | `result-track:5857c94abae14a5da6f12d4e2d8dfd02d2399d639a9c666aa7f1748464c2ba23` |
| 37 | `theorem` | [add_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/add-mem.md) | 236 | `result-track:fdc8ee423ff9e164ca26e97c606bb72a74d2ade59e01318d951e2084cb1ede00` |
| 38 | `theorem` | [neg_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/neg-mem.md) | 240 | `result-track:1d508495707d82ca85debb20ae8fb449c29015566c78cc75ffa779fe3f9495a1` |
| 39 | `theorem` | [sub_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/sub-mem.md) | 244 | `result-track:565d470412a98b85d66a70b2184c54c516796b188d6c46a70c9efac143271ada` |
| 40 | `theorem` | [inv_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/inv-mem.md) | 248 | `result-track:0b3a96b868a09eae6fb14ddbfd66ef0f4381d59b2159fc084a60851736d0b265` |
| 41 | `theorem` | [div_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/div-mem.md) | 252 | `result-track:6e53c40e2d3fd843653365aa0699575695d7be568bde8bd2334943012536177c` |
| 42 | `theorem` | [pow_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/pow-mem.md) | 255 | `result-track:f20d7794e15ec1e0d125904931db703aed95661352672a2351ef171cffa9bf2b` |
| 43 | `theorem` | [zsmul_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/zsmul-mem.md) | 258 | `result-track:1e53642a4836596e17e3fb099e8b73dd3369093f41fd2dbf0afc5597c1064938` |
| 44 | `theorem` | [intCast_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/intcast-mem.md) | 261 | `result-track:9ad5fb108727dc649e57e9b93a78343dafae8867f093eb604189ab36b2aa577b` |
| 45 | `theorem` | [zpow_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/zpow-mem.md) | 263 | `result-track:a77f71b292356240fa55b430fec5c1355703e85ebb85c466aa69dfc290a3e1e0` |
| 46 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 265 | `declaration-track:720be50860ffee94c32db5dee3fbb628afc4b2ef7124cdc056ec265e83954d9a` |
| 47 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 268 | `declaration-track:ed3108c52ec451d8c92ba5502f74ea90601c326e4906b4f0fe246059bd8a3191` |
| 48 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 271 | `declaration-track:eecbcc4573d813c482043ef903877671dc19d01139c440a4d0baa36e9fc96174` |
| 49 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 274 | `declaration-track:d11b942344b5805b52571e29095d95d633933e8db27da12511485318c0f1c3d4` |
| 50 | `instance` | [toDivisionRing](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/todivisionring.md) | 277 | `declaration-track:bfaa7b89c1627e2eac31d14797957d2f41c70fe0d70467ca72d56576f3231dd4` |
| 51 | `instance` | [toField](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/tofield.md) | 279 | `declaration-track:576ebca19a8add139a006e9edc745b398c8d3a11a77ea47ac05804c8f0c7aa02` |
| 52 | `theorem` | [coe_add](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/coe-add.md) | 282 | `result-track:169023ff85a0ada20b004ecfa3d07e90a1cfea7a91540b619d09741da56daecb` |
| 53 | `theorem` | [coe_sub](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/coe-sub.md) | 286 | `result-track:4bdd76d790261eafc20075486db2a24940796405431f2052418449ddcedc96ce` |
| 54 | `theorem` | [coe_neg](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/coe-neg.md) | 290 | `result-track:147c9985d3f6a0ecaf1bc813235299e64c3a2d94acc7d893781c74172d55c5d4` |
| 55 | `theorem` | [coe_mul](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/coe-mul.md) | 294 | `result-track:1e2818391f131385f9030996f1e49b6949b1bb62f5fb8f2b548a3b0c42556f26` |
| 56 | `theorem` | [coe_div](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/coe-div.md) | 298 | `result-track:ed40433b6c703d6a567490533ec8913b645a63d5afcbed2cec3f6aa8af1893cc` |
| 57 | `theorem` | [coe_inv](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/coe-inv.md) | 302 | `result-track:bc49473251d8864e24cab712a0cfc554298a543c04c7921d6659f49ae59117ec` |
| 58 | `theorem` | [coe_zero](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/coe-zero.md) | 306 | `result-track:4dccc551855122c9edc6e2367ec752531df313fa243098b2881c06a481023e9f` |
| 59 | `theorem` | [coe_one](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/coe-one.md) | 310 | `result-track:fd4ed287f0e3c8a219015cda9a0ac161a89cab1976e6a209ff438284199bc11f` |
| 60 | `def` | [subtype](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/subtype.md) | 316 | `declaration-track:69fe76fe8d82f2f04d864305fcec7d834e0b0bbbe7fd51c843bad50afbd5a7bb` |
| 61 | `lemma` | [subtype_apply](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/subtype-apply.md) | 320 | `result-track:23cf86606e39ba1d98ff0bc4975d7e722f0fb401ea7249316ea292a1d1618536` |
| 62 | `lemma` | [subtype_injective](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/subtype-injective.md) | 323 | `result-track:97144c8a17382ff97baa31028abdbbf9c284f19dccfe6a60c3c849333b2eacc5` |
| 63 | `theorem` | [coe_subtype](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/coe-subtype.md) | 328 | `result-track:25f6509ebbadb6ba39c4ae6fbbedee0a8040cffb02e9a59bb88fe1c682a8a08c` |
| 64 | `theorem` | [toSubring_subtype_eq_subtype](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/tosubring-subtype-eq-subtype.md) | 332 | `result-track:2bf40c2a6fea656e7b42d7a943a775dda1dab7af6406a318343ecca156a523ef` |
| 65 | `theorem` | [mem_toSubmonoid](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/mem-tosubmonoid.md) | 339 | `result-track:8acffcf7ca4eb74d5bddd869ed1d89ddead4be0a9f50dc42cc0ade431cadca12` |
| 66 | `theorem` | [coe_toSubmonoid](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/coe-tosubmonoid.md) | 343 | `result-track:1d7b98b68332aaaf9811d8a5696062d0f6df0f58fc623c3059e39c191a76157b` |
| 67 | `theorem` | [mem_toAddSubgroup](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/mem-toaddsubgroup.md) | 346 | `result-track:5bd728f9e20ae23a6d57d11d28efae2d9792c7269326a4623636c153d33e223d` |
| 68 | `theorem` | [coe_toAddSubgroup](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespacedPublic.lean/declarations/coe-toaddsubgroup.md) | 350 | `result-track:afcccc9c306eb747f59eb1e49eb5a5ae811865b31a391098b12afbe74df3a761` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=94cbeaac6542d934e9b3749f77353c3fea528ab8cca632f2be5f0d06e0cce69b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean","GRWTSK/_verification/specifications/Algebra/Defs/Variantedf612a75a689d0473be96bbd967ad38957c7d121bea92e186e6bd451b6ce9a0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
