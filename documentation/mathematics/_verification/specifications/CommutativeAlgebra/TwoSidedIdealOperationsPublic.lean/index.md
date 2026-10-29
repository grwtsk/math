# Verification target: Two Sided Ideal Operations Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ee580991f327de065dc02c7a02fa4c3205cbdcd",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Operations/Variant3d4cbbcb1a3a1514aecd82c0b1a337c5d02a985dd4a214933b3ec1e41c87d7bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ee580991f327de065dc02c7a02fa4c3205cbdcd`.

Source path: `GRWTSK/Algebra/Operations/Variant3d4cbbcb1a3a1514aecd82c0b1a337c5d02a985dd4a214933b3ec1e41c87d7bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Operations/Variant3d4cbbcb1a3a1514aecd82c0b1a337c5d02a985dd4a214933b3ec1e41c87d7bb.lean.json)

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
| 1 | `abbrev` | [span](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/span.md) | 57 | `declaration-track:20fcda0ecae52fb6b42e625a9025e0309b928ee10c16d30e5a9b4016750d74bb` |
| 2 | `lemma` | [subset_span](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/subset-span.md) | 60 | `result-track:b5a35ad7832987cbf1839d354520b09948f8518c095751ebd96b7086c0c44ee1` |
| 3 | `lemma` | [mem_span_iff](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/mem-span-iff.md) | 65 | `result-track:0f6f16bf332f79dafc42f117ddad9638cb27cb437952ac7480adc3e11775bd42` |
| 4 | `lemma` | [span_mono](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/span-mono.md) | 76 | `result-track:d622aebdd6d0efa08123aa0c6f0ece29d87df56da341ecb6e64a4ae71b5f547e` |
| 5 | `lemma` | [span_le](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/span-le.md) | 81 | `result-track:fd3ea55bc88c562c5705088e6823cf9a2d2a91faf15fe57ad1c3209c178b553b` |
| 6 | `theorem` | [span_induction](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/span-induction.md) | 91 | `result-track:7743b3ba0b5f7513181249f78a735ddef6e64648808bd643810d9c8d39959606` |
| 7 | `def` | [map](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/map.md) | 115 | `declaration-track:672449a8b5b45bbd6fa92b75b62f6ecf3da69dfa1903cd494972b78d697393fe` |
| 8 | `lemma` | [map_mono](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/map-mono.md) | 118 | `result-track:3c0a7aad4e72fa77cb45690890888383e8e337586a358f7ccd05aeac86a29d8f` |
| 9 | `def` | [comap](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/comap.md) | 127 | `declaration-track:43ae97c8128e5fee5146de0f2c62e9539439ed1db3ebdb9fbe64876872708f82` |
| 10 | `lemma` | [comap_le_comap](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/comap-le-comap.md) | 136 | `result-track:e72c7100a4fb882da3cdcf6960f449c7f8283d196a777ab6d9ebfc80f160fa22` |
| 11 | `lemma` | [mem_comap](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/mem-comap.md) | 141 | `result-track:58781ca6636c4e0fd04f8df114ee2d257338f1f64e2f3bf537eb8552cbffba25` |
| 12 | `def` | [_root_.RingEquiv.mapTwoSidedIdeal](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/root-ringequiv-maptwosidedideal.md) | 149 | `declaration-track:088a9690e7fd20afbc459f94ffdd1d5ab2e4c2a0b085457b8c609688136a8020` |
| 13 | `lemma` | [_root_.RingEquiv.mapTwoSidedIdeal_apply](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/root-ringequiv-maptwosidedideal-apply.md) | 153 | `result-track:a3a536d3a43b6f4d941668c82146fcedad1f8031355412f2cab420030bacf79e` |
| 14 | `lemma` | [_root_.RingEquiv.mapTwoSidedIdeal_symm](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/root-ringequiv-maptwosidedideal-symm.md) | 156 | `result-track:acc86a718a5a36c490a7f61dab50e5687c2581707ddbea3d5dc9f4049559cd66` |
| 15 | `lemma` | [comap_comap](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/comap-comap.md) | 166 | `result-track:d777e060933838e6c41cf9abc543a6dc4c6038cbeb59821678ffb51a674296fd` |
| 16 | `lemma` | [mem_span_iff_mem_addSubgroup_closure_absorbing](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/mem-span-iff-mem-addsubgroup-closure-absorbing.md) | 179 | `result-track:de247c4923182319d649886cc17fdfe8669beb899f16fed992f7697c959e2015` |
| 17 | `lemma` | [set_mul_subset](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/set-mul-subset.md) | 212 | `result-track:61ca46422dd913cad590caab632a5174d22843406b6f3bed2d8bc68f58047d80` |
| 18 | `lemma` | [subset_mul_set](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/subset-mul-set.md) | 217 | `result-track:009203306614c3526a0782cc184f72b6f6ba8e245608d2dd5e4ddd5e1fafe024` |
| 19 | `lemma` | [mem_span_iff_mem_addSubgroup_closure_nonunital](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/mem-span-iff-mem-addsubgroup-closure-nonunital.md) | 222 | `result-track:632ad4fbfeeccb55cddcfead0a8940105d6db42c715b8083857496c6c5903c24` |
| 20 | `lemma` | [mem_span_iff_mem_addSubgroup_closure](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/mem-span-iff-mem-addsubgroup-closure.md) | 254 | `result-track:afa220dec95e1bfa52be200f3448661a09097abe745b6d377b3c6d0b8dd52fad` |
| 21 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/instance-source-edition-2.md) | 270 | `declaration-track:3c38643df0349057bf7b5d4d666b2388ca82f5a638f34751b3504cbc190d1cd3` |
| 22 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/instance-source-edition-4.md) | 272 | `declaration-track:9eec9e1d551d94c36aae66bcf58f6ad813e995508fba07c75a5c5c61f11b3411` |
| 23 | `instance` | [leftModule](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/leftmodule.md) | 274 | `declaration-track:9ba04ec8691321fa5f5af91c4f5886f5482e0b20f55f3a4566d4b7a7b4d3b51e` |
| 24 | `lemma` | [coe_smul](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/coe-smul.md) | 278 | `result-track:03621bff0900ef35cbf57fb94aa6332b2dd4b08c90117f039e02b706d08626fa` |
| 25 | `instance` | [rightModule](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/rightmodule.md) | 280 | `declaration-track:5729b53f316115e6ca7bdab7f49e5ce91708112553dffb3844769fe10ae6c8ae` |
| 26 | `lemma` | [coe_mop_smul](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/coe-mop-smul.md) | 284 | `result-track:8eb07ed522bfac2fec7968a4bb3ca564c1d4f21aa05285818cc8d2e2bc4f3dcd` |
| 27 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/instance-source-edition-5.md) | 286 | `declaration-track:ec9b9f03489e7549146cb2aac2f570456e567c4dee6d9d32337897959ecd5cd6` |
| 28 | `def` | [subtype](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/subtype.md) | 294 | `declaration-track:e3d6705ae5ba22c1cb73a28ba26c6d7cbc7172f09971193dc2fb62b89eaa8bca` |
| 29 | `theorem` | [subtype_injective](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/subtype-injective.md) | 299 | `result-track:af30a048ca409a10998b9842ae5e67592a0290ea0ef32b1c8551c0c4db906354` |
| 30 | `theorem` | [coe_subtype](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/coe-subtype.md) | 303 | `result-track:83c587df2d028a7afa6763ee1807112299f2952bfb80aa783597fc3a7106aa01` |
| 31 | `def` | [subtypeMop](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/subtypemop.md) | 311 | `declaration-track:d95a31a366b7daed24cd5e0a8ba34356422e3d6ab297b93b8c61c725e5fac46c` |
| 32 | `theorem` | [subtypeMop_injective](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/subtypemop-injective.md) | 316 | `result-track:ee71c70b7753e47bd4f63541da336062ac677262b93e200b4871cfb62ad8a24c` |
| 33 | `def` | [fromIdeal](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/fromideal.md) | 320 | `declaration-track:f70575c184714c157a10df132b3e9a84fe66260ec606a82a8e788fb0edf45ab8` |
| 34 | `lemma` | [mem_fromIdeal](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/mem-fromideal.md) | 325 | `result-track:5ef58028aa4933e9573c4c9db4d5a57b6952af26e8c663c617aac8cf0b67bb9f` |
| 35 | `def` | [asIdeal](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/asideal.md) | 329 | `declaration-track:22c43efd678e4437d57b8383248577f83fb575cf6e3b54b031d7d56b51387b01` |
| 36 | `lemma` | [mem_asIdeal](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/mem-asideal.md) | 339 | `result-track:a2af2d3dd2a32f604f2ba84df3946b093b7ef6e970e9558bf715d1ec67874c1e` |
| 37 | `lemma` | [gc](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/gc.md) | 343 | `result-track:ec8b1313505ebeaa59043f07943a75782d9ef6f478e265b242e4cd7c2ff522ab` |
| 38 | `lemma` | [coe_asIdeal](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/coe-asideal.md) | 349 | `result-track:5f4e4a7caa991267f673c36eafa07558aa9a2b9ac5c247d22533181a1c9b43e3` |
| 39 | `lemma` | [bot_asIdeal](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/bot-asideal.md) | 351 | `result-track:bfa417bfd2a8c7a7a807cd993fd67adbc6715ead6d72628206c329d78abccbe7` |
| 40 | `lemma` | [top_asIdeal](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/top-asideal.md) | 353 | `result-track:1ed88f65c343f07dd7e28594cc2dd5318581ac9ccf35220013d13f64c2b58c82` |
| 41 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/instance.md) | 355 | `declaration-track:206dac0fbbcb53522a68801bf7d0b05043f4d4cdfb227519e3926c7e4b3982e1` |
| 42 | `def` | [asIdealOpposite](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/asidealopposite.md) | 359 | `declaration-track:c84526304f91608ceff4e5f63db170a4a42e452a66566e1fe181727b89649493` |
| 43 | `lemma` | [mem_asIdealOpposite](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/mem-asidealopposite.md) | 365 | `result-track:25484b13589435bb35f062a445c3ffbbcc1d1d2bf141348706aa1983674e6e50` |
| 44 | `def` | [orderIsoIdeal](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/orderisoideal.md) | 379 | `declaration-track:752b1c752ac0eea6c2ffb812588e951321250655b37f4081ac3ae6b9e2c2db19` |
| 45 | `def` | [toTwoSided](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/totwosided.md) | 397 | `declaration-track:15854e238baf052d73d1607dcc8d1583886bbe1be83f2cb2dc72ac82619dc894` |
| 46 | `lemma` | [mem_toTwoSided](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/mem-totwosided.md) | 401 | `result-track:bd607c14d3c599b67de99bf24a2213cabfd018d71f0c932931675a0d34764e3d` |
| 47 | `lemma` | [coe_toTwoSided](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/coe-totwosided.md) | 406 | `result-track:03454efa7b50927369840955dd60980eb606f0a1dd8cb1180410d9158e9baf70` |
| 48 | `lemma` | [toTwoSided_asIdeal](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/totwosided-asideal.md) | 410 | `result-track:b4e04c83a4d11d15e7249ef34e45d57ccf2cc8d1f7730c0769f5be3ef91d6b99` |
| 49 | `lemma` | [asIdeal_toTwoSided](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/asideal-totwosided.md) | 413 | `result-track:cf60288246ecbe23d94282ab23c8f323bfdb20a651ec3725158fa59b2c6aff55` |
| 50 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/instance-source-edition-3.md) | 417 | `declaration-track:4b6982537da450965347fe27f65c2f25ccca9d43ba7d6d652ebd9513930ab12c` |
| 51 | `def` | [TwoSidedIdeal.orderIsoIsTwoSided](../../../../CommutativeAlgebra/TwoSidedIdealOperationsPublic.lean/declarations/twosidedideal-orderisoistwosided.md) | 423 | `declaration-track:21cb18bf76b34932347f9a5cb8379c2181651ea9fac4b7c9a77c26773a6e3955` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e25894f6e07788d48ef23d416f6501e9fabe31ef8480bfb4c053601d0c8cf40c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Operations/Variant3d4cbbcb1a3a1514aecd82c0b1a337c5d02a985dd4a214933b3ec1e41c87d7bb.lean","GRWTSK/_verification/specifications/Algebra/Operations/Variant3d4cbbcb1a3a1514aecd82c0b1a337c5d02a985dd4a214933b3ec1e41c87d7bb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
