# Verification target: Non Unital Subring Basic Namespaced Non Unital Subring Class

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4bfc10ad2a130fa467804b206dafbf6c90db3de4",
  "lexical_observation_count": 165,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7729be8292f4b170235d220cf2d9679371d570cdac130a2e7b709d17c570c8b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/index.md) · [Full source](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4bfc10ad2a130fa467804b206dafbf6c90db3de4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7729be8292f4b170235d220cf2d9679371d570cdac130a2e7b709d17c570c8b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7729be8292f4b170235d220cf2d9679371d570cdac130a2e7b709d17c570c8b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Subgroup.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.NonUnitalSubsemiring.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NonUnitalSubringClass](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/nonunitalsubringclass.md) | 89 | `declaration-track:81b8c7954a624ced9348deb2430c202f2d8baba27f5af1f1466d654a13ffdc08` |
| 2 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/instance-source-edition-4.md) | 93 | `declaration-track:50820a095e0d9704b73595b69dba875c5a1c34238833e99b49401fa5772c8951` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/instance-source-edition-7.md) | 104 | `declaration-track:b3b89c3fba040bea5421bc1072a354369681ad48dec1f8860274c76d0540412a` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/instance-source-edition-6.md) | 110 | `declaration-track:75d5bc4bb2deb4724377cd27b67d4849baaf8c6506fe992af611a7f78bd647cb` |
| 5 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/instance-source-edition-9.md) | 117 | `declaration-track:e7ba73f56534cd6dfe8c622151b711caaacdd563419d21b60e36cb4b38abc190` |
| 6 | `def` | [subtype](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/subtype.md) | 123 | `declaration-track:e36f41d2647aa937a6a813afbc71f8386c6a5023b6f1b9903e9f9c5e424ff87b` |
| 7 | `theorem` | [coe_subtype](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/coe-subtype.md) | 129 | `result-track:f9a78a2a00cacd334e86e8baef98fa999e7038d0c456edb7afef1073206cad6a` |
| 8 | `structure` | [NonUnitalSubring](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/nonunitalsubring.md) | 141 | `declaration-track:df2d4d4e38d5824467eeb81ee754c59d12b97ad073cdaf0730df77338d50ecdc` |
| 9 | `def` | [toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/tosubsemigroup.md) | 153 | `declaration-track:d5e3bd1fe766381fef16b68eb7521e820ea5e6429d2bec0c706ab781644d949c` |
| 10 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/instance-source-edition-12.md) | 156 | `declaration-track:feb395941c6b3fa8cbe6a43d4afda4c4943d6d45b0cc385b6f05c9e85793d957` |
| 11 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/instance-source-edition-2.md) | 161 | `declaration-track:0f510afecaee89426be589a8de38b349436a19b48c15df3c11f646626aa1e218` |
| 12 | `theorem` | [mem_carrier](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/mem-carrier.md) | 168 | `result-track:2a6350960d803c85194b1a493c32d4699d7e2e5723deffd29a24715aacf91a21` |
| 13 | `theorem` | [mem_mk](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/mem-mk-source-edition-2.md) | 172 | `result-track:ba6e949e95402021d945975dcab89a0d2bc126d568262f192de64ce4a57eae65` |
| 14 | `theorem` | [coe_set_mk](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/coe-set-mk.md) | 177 | `result-track:15f64becbc16e8acb9982c126da291d68d031268c411ee48b5aed45bb1a11f71` |
| 15 | `theorem` | [mk_le_mk](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/mk-le-mk.md) | 182 | `result-track:6a540cc9f580bab96a700aaa81a58a3ff02459378c7de8282d8592d9db0d8cf2` |
| 16 | `theorem` | [ext](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/ext.md) | 188 | `result-track:b62e51c0df4a0609659493afb6416d7274f78927ca021e5c482eb2a74ada2355` |
| 17 | `def` | [copy](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/copy.md) | 193 | `declaration-track:9877264a12d377efe53a7f29a996c11c87957d5d01a04d1680138447a6d05bf9` |
| 18 | `theorem` | [coe_copy](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/coe-copy.md) | 199 | `result-track:c2f59cef1814b3f59f903362b7e013f384c9344c437745d4456f2f8bc9335d3b` |
| 19 | `theorem` | [copy_eq](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/copy-eq.md) | 202 | `result-track:cb4c59cb2dfe285e3fceac8224f835c424b5f1c81cfb9f66353bdec13e0d9d42` |
| 20 | `theorem` | [toNonUnitalSubsemiring_injective](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/tononunitalsubsemiring-injective.md) | 205 | `result-track:dfcdc9b72abf7b67f5d89533f248322826249483854561b2f5e173250e595856` |
| 21 | `theorem` | [toNonUnitalSubsemiring_strictMono](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/tononunitalsubsemiring-strictmono.md) | 210 | `result-track:952acc62fe88c6b5850dbe7188b62f7fcd0ddb42c0e89187571c364816f281df` |
| 22 | `theorem` | [toNonUnitalSubsemiring_mono](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/tononunitalsubsemiring-mono.md) | 215 | `result-track:20ed1d4de754e7a0a827e2b396c1e680c80c80e1f8a05cbaf0d5310226910605` |
| 23 | `theorem` | [toAddSubgroup_injective](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/toaddsubgroup-injective.md) | 219 | `result-track:a2d8d35c9dd06bc25ffd30e1c1dec687e3dd6ad39c59e5facec85ee98532c776` |
| 24 | `theorem` | [toAddSubgroup_strictMono](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/toaddsubgroup-strictmono.md) | 224 | `result-track:9cc275c36c4e7406744f32f7dbca8125522719acf978775d3099ee6b86d0706e` |
| 25 | `theorem` | [toAddSubgroup_mono](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/toaddsubgroup-mono.md) | 228 | `result-track:8871a2187c13fa5b6a58f6ad9d9b59e1513b7b7df02ea5df936ffb3f3f1674be` |
| 26 | `theorem` | [toSubsemigroup_injective](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/tosubsemigroup-injective.md) | 231 | `result-track:912975a8d276d0a7856f34753e0b13f6b35a9053b81977124aef004e17e62572` |
| 27 | `theorem` | [toSubsemigroup_strictMono](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/tosubsemigroup-strictmono.md) | 236 | `result-track:5b5d93accb0968a3bfb3a6b21b819ac3dacc2bd97a06e09dd624a56973dcd405` |
| 28 | `theorem` | [toSubsemigroup_mono](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/tosubsemigroup-mono.md) | 240 | `result-track:ca3d6eec2ecbd2a1bc20f4a871e97c930f9dccbc36a9b5a844bf9435b98d6058` |
| 29 | `def` | [mk'](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/mk.md) | 245 | `declaration-track:6d0fa84c517060d17882832796dbe658c2771092f75571e1d0e9d00e072a2b2f` |
| 30 | `theorem` | [coe_mk'](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/coe-mk.md) | 250 | `result-track:5442b3a6013ec03cac8f10b07f5d41f6f83f574a7417fe7229d75c5e70048566` |
| 31 | `theorem` | [mem_mk'](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/mem-mk.md) | 255 | `result-track:a2483a987bb0d2f7d061cbb97033f8aee7a493dba919855b0066d074b7bc55c5` |
| 32 | `theorem` | [mk'_toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/mk-tosubsemigroup.md) | 260 | `result-track:68cdd8d2f394e7e6236f2422e994d2b9f6bcf8a43998389e0527554358bcb9bf` |
| 33 | `theorem` | [mk'_toAddSubgroup](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/mk-toaddsubgroup.md) | 265 | `result-track:db55ebbceed181b73eae0db43809b694fff28a2d833ac02afa308c5957601f74` |
| 34 | `theorem` | [zero_mem](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/zero-mem.md) | 276 | `result-track:f42089ab8c1207866af6dead31f19224b1bbd1d018fb1c4cbf6e1396a52450c5` |
| 35 | `theorem` | [mul_mem](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/mul-mem.md) | 280 | `result-track:82f1f32e7e2d0b9f2cea9b1331201f261a2082d1e4c77b44174f9933518821c4` |
| 36 | `theorem` | [add_mem](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/add-mem.md) | 284 | `result-track:8fa4ebbb0a1ad0a353a9325a1bee742a84e2658eae149cd05c213285c41622e4` |
| 37 | `theorem` | [neg_mem](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/neg-mem.md) | 288 | `result-track:b3da0f9c10729021dbfd2e49f6a215a90e3de8cb4170845ea9d322b35fa4c4d3` |
| 38 | `theorem` | [sub_mem](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/sub-mem.md) | 292 | `result-track:8f20f04f479592f24ee3b8cf8998160ea9fb96efe5608fc527fa5ecf45ab717d` |
| 39 | `theorem` | [list_sum_mem](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/list-sum-mem.md) | 296 | `result-track:fcf92737e3a6959a096982c77e2b6fc37e86e0ac5723093ca616064cc10d4534` |
| 40 | `theorem` | [multiset_sum_mem](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/multiset-sum-mem.md) | 301 | `result-track:bc5b66ff2e51d5a7a765f3f5a128cb2c445780d70a51416c78d3260e833b2370` |
| 41 | `theorem` | [sum_mem](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/sum-mem.md) | 307 | `result-track:405edd5d6db5bc569faf86b87a9c226ec9090cc4a8b10f3a4d6eb15cfe626a76` |
| 42 | `instance` | [toNonUnitalRing](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/tononunitalring.md) | 312 | `declaration-track:899139974a5013548bc1e24e6ce66b89f5321083c65468f3eed2db15060c73be` |
| 43 | `theorem` | [zsmul_mem](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/zsmul-mem.md) | 317 | `result-track:d5ad44c7df177b6e0d4da9cb9c0f9080e2badcd95557e718ea8838126c4eb31f` |
| 44 | `theorem` | [val_add](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/val-add.md) | 321 | `result-track:5e73837cba965135656dac7d378786dcfcb895c9d2770f9ad14b727a71a51b46` |
| 45 | `theorem` | [val_neg](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/val-neg.md) | 325 | `result-track:62c516c2bb9705a0006686d42d7a393345a599a753b4eb2fc936a1e1efb6b7a4` |
| 46 | `theorem` | [val_mul](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/val-mul.md) | 329 | `result-track:5b6f66b260466ff1473d65712e583fb26338fd8128641ec9e3b86b210a8bccf6` |
| 47 | `theorem` | [val_zero](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/val-zero.md) | 333 | `result-track:023c0f362a318be696fad9178bd2f3546863ace654a360ad913cb2f437c1b0f8` |
| 48 | `theorem` | [coe_eq_zero_iff](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/coe-eq-zero-iff.md) | 336 | `result-track:8d8482f9cb285bf8dd93940c2e9225361a120c834498ef9a33f1a656e9f565a1` |
| 49 | `instance` | [toNonUnitalCommRing](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/tononunitalcommring.md) | 340 | `declaration-track:d0b126fb7059fbc2af39d86d816b2c8bef51ffd516d72ef6e8202f57d325ae6b` |
| 50 | `theorem` | [mem_toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/mem-tosubsemigroup.md) | 349 | `result-track:82e3e28544255a724919b38f6bcec564b7dd0ae73603fe65fc18b0df92b5445d` |
| 51 | `theorem` | [coe_toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/coe-tosubsemigroup.md) | 353 | `result-track:7fa080b4306fbf13c097cc68851f21949901e7ac5284dddfa11ba6606f87442c` |
| 52 | `theorem` | [mem_toAddSubgroup](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/mem-toaddsubgroup.md) | 357 | `result-track:5252e881a358b85d1efc638b37c1410968e02c7545555911b95f2c7a3786f979` |
| 53 | `theorem` | [coe_toAddSubgroup](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/coe-toaddsubgroup.md) | 361 | `result-track:4ef18c56557f96520faf4d61199404d445b48304810ccce8e089494bfafa707f` |
| 54 | `theorem` | [mem_toNonUnitalSubsemiring](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/mem-tononunitalsubsemiring.md) | 365 | `result-track:5bd01684ed1a50d81f1a6762e01f48fdd33f8984244464b27b852d750d7f477a` |
| 55 | `theorem` | [coe_toNonUnitalSubsemiring](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/coe-tononunitalsubsemiring.md) | 370 | `result-track:0ea053c11397c03cb6d0f89370d77bb3b31e9a25c091b0ef40a4f94c79e411d0` |
| 56 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/instance-source-edition-5.md) | 378 | `declaration-track:5779b3a3539889b982abd816893c98225e09ed5d114b0dfee7e9740b3e35ad2a` |
| 57 | `theorem` | [mem_top](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/mem-top.md) | 382 | `result-track:3c0f9523cb5c0860c230bc2b06fb4a075b9413baf9ccd5367ed340fb1cf46a06` |
| 58 | `theorem` | [coe_top](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/coe-top.md) | 386 | `result-track:304ec280626b1528ee1bc447501006f48444b90ea85508c8e2c80f0f29e526ab` |
| 59 | `def` | [topEquiv](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/topequiv.md) | 391 | `declaration-track:519f6c837344b95dc27735584e9e4bc1c557f7b5d65f74c1a7e5918e43887c51` |
| 60 | `def` | [comap](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/comap.md) | 409 | `declaration-track:24fa4365c8c891af5601e2f825f1e88f61eae1cbc5a62007e34d548b3392f956` |
| 61 | `theorem` | [coe_comap](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/coe-comap.md) | 415 | `result-track:2ae7e316b361e4a1e96beaf449a4486a274acdef72cc9d8d3c090649f233867b` |
| 62 | `theorem` | [mem_comap](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/mem-comap.md) | 419 | `result-track:2df29997ee7afc1d94e62841da25a1b4a0766b10c081de2f8b80071a4f232229` |
| 63 | `theorem` | [comap_comap](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/comap-comap.md) | 422 | `result-track:b52819eab927825b39af7a735def417cc4f9156ecdde2a3edebad8a55cd8fd38` |
| 64 | `def` | [map](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/map.md) | 429 | `declaration-track:f6fbcdd1b5d01747e680611bf1fac80fc0d5a978f6e18ccdffc610412a124aca` |
| 65 | `theorem` | [coe_map](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/coe-map.md) | 435 | `result-track:a40be4af2cbb313186b84216ad6fef24b8e26e91f728b9f94d37591b0f5686ea` |
| 66 | `theorem` | [mem_map](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/mem-map.md) | 439 | `result-track:ce5565f26d5034231349d2bfb304288f0848870be457126ef2c5edecc62cfc5c` |
| 67 | `theorem` | [map_id](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/map-id.md) | 443 | `result-track:0e8b56a148e34b551870d00d1476f7e44d001f3879f4b885a3935474bd03d82e` |
| 68 | `theorem` | [map_map](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/map-map.md) | 446 | `result-track:a0a25b873ce9384d13d40dfbe4769c302c2845826a6743ac0f95cf0318a01890` |
| 69 | `theorem` | [map_le_iff_le_comap](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/map-le-iff-le-comap.md) | 449 | `result-track:bfb91a93df4ce250df4c509a719de40623bffc7d07e89c701bc8e1d1fecdd06d` |
| 70 | `theorem` | [gc_map_comap](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/gc-map-comap.md) | 453 | `result-track:0f5d92457ae594c366e04a2cda60cba39bc047a77f2bc8b4cacffd2cba9b62ca` |
| 71 | `def` | [equivMapOfInjective](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/equivmapofinjective.md) | 458 | `declaration-track:7fb087ecea61c98c961800104d56b0080498ecb9055eafaf12655637772fb093` |
| 72 | `theorem` | [coe_equivMapOfInjective_apply](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/coe-equivmapofinjective-apply.md) | 467 | `result-track:87948fc71fc2666528383ab17af09b5ef937bec466a0cdd3e5c9a5d1db576691` |
| 73 | `def` | [range](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/range.md) | 483 | `declaration-track:e14a145a70ffa1e43aa224d40594ba57678cea88cd3a14b5e0a4becb339bd3e5` |
| 74 | `theorem` | [coe_range](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/coe-range.md) | 488 | `result-track:6ee0d3011c3740ada590e9b07efdf0a63c715392a31aaaa4407904ebabcfe942` |
| 75 | `theorem` | [mem_range](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/mem-range.md) | 492 | `result-track:16652d854c8913eafcec7fce8cf5e3938a3c64fd68c2e9c4a616022d1176ca28` |
| 76 | `theorem` | [range_eq_map](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/range-eq-map.md) | 495 | `result-track:4366d1e4fee752679e91d92d14774fa39da5d754315c4b4bbdebb3b6a7423edb` |
| 77 | `theorem` | [mem_range_self](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/mem-range-self.md) | 497 | `result-track:0975850711f4b2360ecfaba74c46dde5559125f66fee54d658dd1bdb439132b9` |
| 78 | `theorem` | [map_range](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/map-range.md) | 500 | `result-track:d6f73861dae88d233a08f8946ccc5bd22642f81adce6a1c5754ce752a12c57c1` |
| 79 | `instance` | [fintypeRange](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/fintyperange.md) | 506 | `declaration-track:ee636efe268577f281c362fcd2748dc930476178eea4d9980cb8e9e1977ce1df` |
| 80 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/instance.md) | 523 | `declaration-track:08f7714b7972ecd5f1647e1d105b2bee39eb267958322902518ee3bfc356a90d` |
| 81 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/instance-source-edition-10.md) | 526 | `declaration-track:ec7f3f279478b1ec291418ffa0c8679a3a06d91ce7c5ac5dea6b85c4ddad8053` |
| 82 | `theorem` | [coe_bot](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/coe-bot.md) | 529 | `result-track:9998b27fda780f47f870e33c414b384df706518d4afd8230d321365360de449f` |
| 83 | `theorem` | [mem_bot](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/mem-bot.md) | 532 | `result-track:2b36a8ea3cb66e2e36d7588d47ecc4310ab5a161387d9e990b27423c7316f2f6` |
| 84 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/instance-source-edition-3.md) | 538 | `declaration-track:334b64372ff0ea341f09d7ed54b7832d35b4644b9b717bc2b312f10338780b53` |
| 85 | `theorem` | [coe_inf](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/coe-inf.md) | 544 | `result-track:d860280d56ab77b909c0dd17695f3c5ae58faf960b80b82d4e781f69464c9489` |
| 86 | `theorem` | [mem_inf](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/mem-inf.md) | 549 | `result-track:e4e1752a8d49246a72cb4bbe070efacafa83ca691aba9c8bd4d7e43bd48f7f80` |
| 87 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/instance-source-edition-11.md) | 552 | `declaration-track:f8862a63e8ea3c938acaf68cb92aab490748ad486029fbb55ec00e0fdd7ca38f` |
| 88 | `theorem` | [coe_sInf](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/coe-sinf.md) | 558 | `result-track:dd038b75c4abffc7737d41b5a29f24d16fdc569dfec7cd89fbf064139adf8ecf` |
| 89 | `theorem` | [mem_sInf](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/mem-sinf.md) | 562 | `result-track:f6e5522867b5dc2324854995db26e86b5c4e2f27f612fbf1f22a6689f607bc16` |
| 90 | `theorem` | [coe_iInf](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/coe-iinf.md) | 566 | `result-track:2823e9367c5b9b6eaf1fa8ca6759ece814592fb621edd4caf1df7e6841991b56` |
| 91 | `theorem` | [mem_iInf](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/mem-iinf.md) | 569 | `result-track:dd9381514740643a71c9f487084c926408c4f5d851ee23fb5455e3c2f3ef2701` |
| 92 | `theorem` | [sInf_toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/sinf-tosubsemigroup.md) | 573 | `result-track:1eac4c043c224b055423684ec075e4ec3ac95068e57d2a3d6155821a984cb1ea` |
| 93 | `theorem` | [sInf_toAddSubgroup](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/sinf-toaddsubgroup.md) | 578 | `result-track:406619033538c0fa09bcd663aa160a136abfc2c10163e146b7c4fab471600f40` |
| 94 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/instance-source-edition-8.md) | 583 | `declaration-track:db24025296e00514d5fd48f16015aae94182d7577b144b04dab8515577cc3d16` |
| 95 | `theorem` | [eq_top_iff'](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/eq-top-iff.md) | 596 | `result-track:a01d91bb1a4af16c4c5c2ff66e09b1422d298c1d68b747f96e7e001d08ff711a` |
| 96 | `def` | [center](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/center.md) | 610 | `declaration-track:6fdf7c38bdde28507b990c024595960664aa55a788ca5f6e05d8e7aeca82b3f6` |
| 97 | `theorem` | [coe_center](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/coe-center.md) | 615 | `result-track:8962cf783b28be32b0742e3ea6c6d9439bc55521b1016b11327cb89615513ce5` |
| 98 | `theorem` | [center_toNonUnitalSubsemiring](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/center-tononunitalsubsemiring.md) | 619 | `result-track:1c5ee8e629b3d11bd409a9b3f5f91bded2922c27387acc96d89b735b9c8dd961` |
| 99 | `theorem` | [mem_center_iff](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/mem-center-iff.md) | 625 | `result-track:a1cda7e74ae2cf8ce6fb352744e365cd7ab1816574821b049343f7c4453510da` |
| 100 | `instance` | [decidableMemCenter](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/decidablememcenter.md) | 628 | `declaration-track:ddc822bc4a99d6ccfbde25c7a5b9e3050aeabfff6e52dfcf8db3e50d846a72c1` |
| 101 | `theorem` | [center_eq_top](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/center-eq-top.md) | 632 | `result-track:686d4bf1681109846dfbcdecd5690f8637d23b0b3e728d406737593ec94fe2cc` |
| 102 | `instance` | [center.instNonUnitalCommRing](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/center-instnonunitalcommring.md) | 636 | `declaration-track:d9ccaff96c921243bfd1aa8131a2a775214459665759fd57934836c36380d17f` |
| 103 | `def` | [closure](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/closure.md) | 650 | `declaration-track:4a4186a489872c6fd33922cb3e2f9dee2e3b6bbc4068ee24a4f6c995a67a9288` |
| 104 | `theorem` | [mem_closure](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/mem-closure.md) | 653 | `result-track:dc3b87b4fcb02af404f857ffc29c7a83705c63ef9d778979be7e0f0baa14e8d7` |
| 105 | `theorem` | [subset_closure](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/subset-closure.md) | 658 | `result-track:6a68daf9b7ca9b86aa470e11c9b9b35ac9a219f2c65783e3a7bba010f12d286e` |
| 106 | `theorem` | [not_mem_of_not_mem_closure](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/not-mem-of-not-mem-closure.md) | 660 | `result-track:846e13ba5100570cd58c2fddbb461e1520c5e1c1837acef385abdf6e2f44e68f` |
| 107 | `theorem` | [closure_le](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/closure-le.md) | 665 | `result-track:65b2281edd498faaa46489fbe48a1aae50015eff4e7ab9c76c1fe7fe4b008a9e` |
| 108 | `theorem` | [closure_mono](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/closure-mono.md) | 670 | `result-track:40d2f60bb8dc22ca876977d420b8d1c59b89a5f559b52919714dc5ad03dcabb7` |
| 109 | `theorem` | [closure_eq_of_le](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/closure-eq-of-le.md) | 673 | `result-track:4bcdcbcfcb7bf6783d67a679d2996330796703b66784cf4676027ddb139ad335` |
| 110 | `theorem` | [closure_induction](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/closure-induction-source-edition-3.md) | 681 | `result-track:b037919b00ab1d3a7471a20d78a6c7d19df3e5f5ed8c64a2e9cf347b42eb3bde` |
| 111 | `theorem` | [closure_induction'](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/closure-induction.md) | 689 | `result-track:4b8b5da462bd780632c4b2d16600763ff291c3522b31a3999efe91738d463ec7` |
| 112 | `theorem` | [closure_induction₂](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/closure-induction-source-edition-2.md) | 707 | `result-track:7bdf202e9a6bc18bdfeabf47531b18e6520759205453c0be6f4bcddd9ffb5802` |
| 113 | `theorem` | [mem_closure_iff](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/mem-closure-iff.md) | 720 | `result-track:c009729860fb53c77e487e1ca2074f8aa3da4b9d6ba64a6c99d19de9902cdf33` |
| 114 | `def` | [closureNonUnitalCommRingOfComm](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/closurenonunitalcommringofcomm.md) | 748 | `declaration-track:3d937d713cc35ac7825782297fab3f023c751f109275f18f82e68843afb04366` |
| 115 | `def` | [gi](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/gi.md) | 768 | `declaration-track:e8cee355da404d1729afecaffbe366f73a10d29760b22baa0df1e09108442806` |
| 116 | `theorem` | [closure_eq](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/closure-eq.md) | 778 | `result-track:4e1014ad425ba68269efaf78eea709de8b3302388e7534848e5457c02abe0ee5` |
| 117 | `theorem` | [closure_empty](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/closure-empty.md) | 782 | `result-track:994631e6d438f2ae9279ea4a101eebe324c243a3f09193a759bc139140185d5f` |
| 118 | `theorem` | [closure_univ](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/closure-univ.md) | 786 | `result-track:f0dc142aac9a6213d29edce8cfa8c2d13a2009af86632c01ae8c39d451996e64` |
| 119 | `theorem` | [closure_union](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/closure-union.md) | 789 | `result-track:9c6011d40ffbaaf2a82cdb97196fcbe9d403eee9698f65c2ba87fe018d9d3183` |
| 120 | `theorem` | [closure_iUnion](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/closure-iunion.md) | 792 | `result-track:d8245432aeeabf450ccc17e0dd2982c5ed2de74b977230eec2e1fd3b2ee70a2b` |
| 121 | `theorem` | [closure_sUnion](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/closure-sunion.md) | 795 | `result-track:6837e3000d9baecdb8e503dd32ff8f87c632850f9124977e2d2bf9d06422baa6` |
| 122 | `theorem` | [map_sup](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/map-sup.md) | 798 | `result-track:408b93eb807fa35e6f3d83528914ed075f681884ccb07e0a42ec0b58f863cea2` |
| 123 | `theorem` | [map_iSup](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/map-isup.md) | 801 | `result-track:b2dc79d60af1777958edf0317c8c772b9cd4a10a0cdb0c8f24659986e677343f` |
| 124 | `theorem` | [comap_inf](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/comap-inf.md) | 805 | `result-track:542149acb8156e4781f6ee5dd782da777fbad48a5a87420900667bde665f333d` |
| 125 | `theorem` | [comap_iInf](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/comap-iinf.md) | 808 | `result-track:740ba2a4f2c0b1b9e6291246336d6fe04ab81e08dd36b15188b26f84dafddb97` |
| 126 | `theorem` | [map_bot](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/map-bot.md) | 813 | `result-track:3270541b27c1c640b25dce1073090e847a3a3bbc3c06a98a90b59b16fc24e05b` |
| 127 | `theorem` | [comap_top](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/comap-top.md) | 817 | `result-track:fffc0aefd00b885698801916ea3cb800629b5927c57a8e228a5b1c7bf46ca376` |
| 128 | `def` | [prod](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/prod.md) | 822 | `declaration-track:c722151212c4223e6329db6617e84a12043e1962607987ee9eef8528209cc769` |
| 129 | `theorem` | [coe_prod](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/coe-prod.md) | 827 | `result-track:b8f43c98d323240fba8fe22046d8cd9f136cbddd3dbd308b0eabdcf155b1bd3e` |
| 130 | `theorem` | [mem_prod](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/mem-prod.md) | 831 | `result-track:9fdbb2c0db12c9a7fa8916c00c87ba498446e1f968055c601542902fadd6ac78` |
| 131 | `theorem` | [prod_mono](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/prod-mono.md) | 836 | `result-track:ece7c5d188981c3b9771e577d5b6dab3451974df0935007b65147cb2c8f70146` |
| 132 | `theorem` | [prod_mono_right](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/prod-mono-right.md) | 840 | `result-track:0352ecabb04005bdf844c6560ca07210543d6378ab70fd04e060d57c91768ec9` |
| 133 | `theorem` | [prod_mono_left](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/prod-mono-left.md) | 844 | `result-track:0b3f23ee5fa4ecc0f63b77ce09a21d479533654069df61ff44b61ee5f21ec094` |
| 134 | `theorem` | [prod_top](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/prod-top.md) | 847 | `result-track:e18f4bdcd1934ed85e48dc7b4ac3e5feb7e80b29bd3797473e7b9ad47bfbc3a2` |
| 135 | `theorem` | [top_prod](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/top-prod.md) | 851 | `result-track:12cf57e599661cda4c4b9acafe62ec8aa138a435bbe5a17a588feeefc2f19aed` |
| 136 | `theorem` | [top_prod_top](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/top-prod-top.md) | 856 | `result-track:b1983bd733d5f93e16b3ad4671b7819c6fdedaff09e40af8461ec8f7d9211b45` |
| 137 | `def` | [prodEquiv](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/prodequiv.md) | 860 | `declaration-track:211194e1c0e509892953e56e8f5f5f1f3c3144a4761c66ecab8dd5ee2a294ee3` |
| 138 | `theorem` | [mem_iSup_of_directed](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/mem-isup-of-directed.md) | 868 | `result-track:6fc6485bf22dc0850b70ee4c4b842b007cfe442e72b26ae9601f99397c2291d2` |
| 139 | `theorem` | [coe_iSup_of_directed](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/coe-isup-of-directed.md) | 878 | `result-track:ed1dc7913008331162b8f972b4a55bec381736d713f0cac3b900b471866dc66b` |
| 140 | `theorem` | [mem_sSup_of_directedOn](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/mem-ssup-of-directedon.md) | 882 | `result-track:7c766251b7d3b30c56fad04a249ddf9a129a64f0794d36f35a036dc6bf1f9f18` |
| 141 | `theorem` | [coe_sSup_of_directedOn](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/coe-ssup-of-directedon.md) | 888 | `result-track:e0f0198fb1ee01bc560cd5824ba5194824a0df504bac46bddd4202d03a1d2540` |
| 142 | `theorem` | [mem_map_equiv](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/mem-map-equiv.md) | 892 | `result-track:88d62cbd653b4983a38f9e80e27de99a692ad1846f0507b7b52d9edaf5694c5f` |
| 143 | `theorem` | [map_equiv_eq_comap_symm](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/map-equiv-eq-comap-symm.md) | 896 | `result-track:511ee70458ec8a8619a05dfe26b7b005d96d8fde2b34e55986b6fad0a64dc565` |
| 144 | `theorem` | [comap_equiv_eq_map_symm](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/comap-equiv-eq-map-symm.md) | 900 | `result-track:b0cfec70a7725f1b6d00314f0bf23ddce5e06a1e830e8c0f5730a4d4e0edaf10` |
| 145 | `def` | [rangeRestrict](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/rangerestrict.md) | 919 | `declaration-track:3986c419d2606cb91da127c89bb06f8a31b77666738bed1f27d9974567bf04f7` |
| 146 | `theorem` | [coe_rangeRestrict](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/coe-rangerestrict.md) | 923 | `result-track:f0c8a82aa3fd2e90a1494ce4d011a7cef0e8b2a88e4e78ff04bec1a4fcafe4fe` |
| 147 | `theorem` | [rangeRestrict_surjective](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/rangerestrict-surjective.md) | 926 | `result-track:b4dade24b7cd3473b14b485590e6f6ac6d46e15dd7e4ea272daaca378b0f3a31` |
| 148 | `theorem` | [range_top_iff_surjective](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/range-top-iff-surjective.md) | 931 | `result-track:138be283f045e159cb5f0b83d29abd49f795203026044100070e84a8a834bdf7` |
| 149 | `theorem` | [range_top_of_surjective](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/range-top-of-surjective.md) | 937 | `result-track:c4db29e323939ab70c5621119987c46c481bf0833e035d28fafb1b295adb0e53` |
| 150 | `def` | [eqLocus](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/eqlocus.md) | 943 | `declaration-track:98213648b8a295157361bf91463f55baefde956f12d46977b76d9c44576d613e` |
| 151 | `theorem` | [eqLocus_same](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/eqlocus-same.md) | 947 | `result-track:de3c1c66beeda112213dd94360dcffcb5fbd457f691fe5fe10aaf95fc71db689` |
| 152 | `theorem` | [eqOn_set_closure](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/eqon-set-closure.md) | 952 | `result-track:2e62767f3da92834c406653b77c322de5efeb73a1ba78022a64e41a86b3a3c4f` |
| 153 | `theorem` | [eq_of_eqOn_set_top](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/eq-of-eqon-set-top.md) | 956 | `result-track:12f9caa5605f8ae4bba1db3ed4a50369948db9b50a688714b2a4b57a61b9453a` |
| 154 | `theorem` | [eq_of_eqOn_set_dense](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/eq-of-eqon-set-dense.md) | 959 | `result-track:635eba47ef07115c986a219f96bd9ac5c8ffa072f75c409363323acce65c985d` |
| 155 | `theorem` | [closure_preimage_le](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/closure-preimage-le.md) | 963 | `result-track:15356f3037933a164c6b75d90d5bf0563de7d82e976fcd415244b5a1c7af199e` |
| 156 | `theorem` | [map_closure](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/map-closure.md) | 968 | `result-track:a6b764161aeddd553f23c9d2d997782a0b7a4b1e4de8c89e267fb0bd1559c48e` |
| 157 | `def` | [inclusion](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/inclusion.md) | 987 | `declaration-track:6d1a3411c1466389e30aadad0fc1cd1666687de78265e6fed9b3e52684ca83d1` |
| 158 | `theorem` | [range_subtype](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/range-subtype.md) | 991 | `result-track:d352806b6f75e33aa90004b7ec8a512f45d35f8c3cd8dc5bad8bbecaeea52d9e` |
| 159 | `theorem` | [range_fst](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/range-fst.md) | 994 | `result-track:adb386c24789685a5c4de0826c7d0d279ed84ad419ff41f71b0c5a986a2727b1` |
| 160 | `theorem` | [range_snd](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/range-snd.md) | 997 | `result-track:5d741da656f3ef27ee05ffea9165931e4281f207b785459dc370b4ce054bed3d` |
| 161 | `def` | [nonUnitalSubringCongr](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/nonunitalsubringcongr.md) | 1012 | `declaration-track:7b9bbfd92eaa57567c1ab95a1550f5f9caab3db972b7d7294738749abbbb6d45` |
| 162 | `def` | [ofLeftInverse'](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/ofleftinverse.md) | 1020 | `declaration-track:f44a32de98d888f96684b290fa146f767dc801e53feb5eb165e93607fd4973a3` |
| 163 | `theorem` | [ofLeftInverse'_apply](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/ofleftinverse-apply.md) | 1031 | `result-track:a9c19726815aed677fbf93fac0d551b883c1fe0ab30ea9d6166f596e960344ab` |
| 164 | `theorem` | [ofLeftInverse'_symm_apply](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/ofleftinverse-symm-apply.md) | 1036 | `result-track:a80fd1cf88dadeda65b544ce33384b85ec295553b29d7116ae119da957550520` |
| 165 | `theorem` | [closure_preimage_le](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNonUnitalSubringClass.lean/declarations/closure-preimage-le-source-edition-2.md) | 1048 | `result-track:3c8da26a459495731f8d225a83e17ba6883eae3ed7a824f7013ec1c4323df3ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=add7cc338a423c1f4f50fc52fdf4e60dc05d6de66c445bc7b57609090034bf60 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7729be8292f4b170235d220cf2d9679371d570cdac130a2e7b709d17c570c8b2.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant7729be8292f4b170235d220cf2d9679371d570cdac130a2e7b709d17c570c8b2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
