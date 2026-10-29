# Verification target: Non Unital Subring Basic Namespaced Not Mem Of Not Mem Closure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0fd9472ec4c0b4fc12646bfaa213bbfd2bdc841f",
  "lexical_observation_count": 116,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbc7dc7fe7582902619352ff913320b7b19f3ceb58abd9fd2e6c2a976bc847384.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/index.md) · [Full source](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0fd9472ec4c0b4fc12646bfaa213bbfd2bdc841f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbc7dc7fe7582902619352ff913320b7b19f3ceb58abd9fd2e6c2a976bc847384.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbc7dc7fe7582902619352ff913320b7b19f3ceb58abd9fd2e6c2a976bc847384.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.BigOperators` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subsemigroup.Center` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.NonUnitalSubring.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.NonUnitalSubsemiring.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [list_sum_mem](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/list-sum-mem.md) | 86 | `result-track:1ea3959cb2783931a22aa21066df44326c77b6e6bff0b5e574826014f02d5e74` |
| 2 | `theorem` | [multiset_sum_mem](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/multiset-sum-mem.md) | 91 | `result-track:3084137e899c89d0d459063dac3b562be6f8fd2499096e0da42197a75940d8f6` |
| 3 | `theorem` | [sum_mem](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/sum-mem.md) | 97 | `result-track:d08e6942c183b8c5e93ac93fd8e044fadfd100ec6352ad09eae39add812e7ad2` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/instance-source-edition-4.md) | 105 | `declaration-track:85e33e896f85b9acac1a6ad32f7ee35463431677fe331f67702c1360569221cd` |
| 5 | `theorem` | [mem_top](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/mem-top.md) | 109 | `result-track:436dabfeed007089f70acc1e9b8140f175d5474d0816fedfd05c2ce92b0781a7` |
| 6 | `theorem` | [coe_top](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/coe-top.md) | 113 | `result-track:36d6e141a52c170b4c2b346d233325bf51534d8b4ce0809f53e76aea6733fa77` |
| 7 | `def` | [topEquiv](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/topequiv.md) | 118 | `declaration-track:e43fad17b8d53fb5c4c63d07a6fdd00178d99e35199213d026a51e84679ce3ff` |
| 8 | `def` | [comap](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/comap.md) | 136 | `declaration-track:4281958f387fa3be19d42a0af50077447a2473a1af48036f6d898d95470cbd4b` |
| 9 | `theorem` | [coe_comap](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/coe-comap.md) | 143 | `result-track:d7b02b26f9bf2ac484fa2aa458e02c0f586a14d3765348187da0f1b6ba988b30` |
| 10 | `theorem` | [mem_comap](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/mem-comap.md) | 147 | `result-track:9ce6ad88338d08667e09f1b021619266cb34cac212cb0a773f63ecaa33a3b1d0` |
| 11 | `theorem` | [comap_comap](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/comap-comap.md) | 150 | `result-track:022508904e9869ece0dbf068a249980dfce784acaf4cf3c8c8ed6c7b78baab46` |
| 12 | `def` | [map](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/map.md) | 157 | `declaration-track:f9745ed4195ee7cef00e50d7bc2002b79b6332f6679a987f4352640e5cf11088` |
| 13 | `theorem` | [coe_map](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/coe-map.md) | 164 | `result-track:799ca8588986d6fd121a76b8c8a949263e5f15279b0b507d9ee0ecaddd34f0cf` |
| 14 | `theorem` | [mem_map](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/mem-map.md) | 168 | `result-track:5b8e7a9e1c8dfe103d0a0943dee27032f4f59307f054d093bd338060eaa92dd3` |
| 15 | `theorem` | [map_id](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/map-id.md) | 172 | `result-track:93f7363538a20e0ae66b33c96a235bacceb3fa2fc72578e952b2991a6f592fdb` |
| 16 | `theorem` | [map_map](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/map-map.md) | 175 | `result-track:59f541cc043f347ec229b8e27f148e32ee196b1dda216645ef65190ab551658b` |
| 17 | `theorem` | [map_le_iff_le_comap](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/map-le-iff-le-comap.md) | 178 | `result-track:fb184e139af57a0a869e17ccbd8ed98a338858df6899574f42e36253007cbb2c` |
| 18 | `theorem` | [gc_map_comap](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/gc-map-comap.md) | 182 | `result-track:ad5c8b3f06aa8268ccd76e3dc2db280c92075cf4520e2e449ef8a256bcc1db98` |
| 19 | `def` | [equivMapOfInjective](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/equivmapofinjective.md) | 187 | `declaration-track:f3bfb57fccc93027baf99f7d2a1787089b37c785ff885657b94d1c5ed315371f` |
| 20 | `theorem` | [coe_equivMapOfInjective_apply](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/coe-equivmapofinjective-apply.md) | 196 | `result-track:e560a42f75ed8a0f95f880f3bd1d8f0498296c8cd014f7231d55dd04530a561a` |
| 21 | `def` | [range](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/range.md) | 212 | `declaration-track:abfea6204f3f9ba86776fcc545c6f0d3a324f467abaa7ded0f0a9cef972f3478` |
| 22 | `theorem` | [coe_range](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/coe-range.md) | 217 | `result-track:51c68283d15208ce6927e63a3ba7de3271985e9d24038e2aa43e937f9b6c3c2e` |
| 23 | `theorem` | [mem_range](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/mem-range.md) | 221 | `result-track:21c5b99e0bae8af432f6fa5b446e812171dbe74ac4e9bf7b32203236d39cf1f5` |
| 24 | `theorem` | [range_eq_map](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/range-eq-map.md) | 224 | `result-track:6db78ca57ce9a7c4db198ac86929dd646055eeae1b729b37db6386868616439b` |
| 25 | `theorem` | [mem_range_self](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/mem-range-self.md) | 226 | `result-track:4ab545e736a0baef678b7d8de0d43fa5f74603f0f722d02cedda51f3d2e5b7d3` |
| 26 | `theorem` | [map_range](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/map-range.md) | 229 | `result-track:d17d356949f209f6308d5c09bf6e87411198c5ff3498bf4e43046755f2ab332d` |
| 27 | `instance` | [fintypeRange](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/fintyperange.md) | 235 | `declaration-track:fae0b45456f8dc4735ecb702237f0cf3f28bbaf8ae2f1c692e2e9ac109c017d5` |
| 28 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/instance.md) | 249 | `declaration-track:5ea3df043f9554bc0866c76394587515634d0ac27ecba4f143b716f7b065285f` |
| 29 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/instance-source-edition-6.md) | 252 | `declaration-track:c4586134665abbde181ed57efc03ab7240517deadd60b41ca910d78f0958beae` |
| 30 | `theorem` | [coe_bot](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/coe-bot.md) | 255 | `result-track:511d07af33a818601f2ef5ad01f31eb421715d8fadd144ea5bc03ad272e8c2c7` |
| 31 | `theorem` | [mem_bot](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/mem-bot.md) | 258 | `result-track:1df89566eb21a4107fd5f9ba4ec5e4a2ffe003883a1023247fc6e880d270f5a0` |
| 32 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/instance-source-edition-2.md) | 264 | `declaration-track:67e85ef23eab9a4384d4a3a8cbc4bab259758e39b344c418671539574eb09f2f` |
| 33 | `theorem` | [coe_inf](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/coe-inf.md) | 270 | `result-track:fec4fb0437e96fb211330bc95f608809cdced9bd6ef870a5e7bafb9b27615443` |
| 34 | `theorem` | [mem_inf](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/mem-inf.md) | 275 | `result-track:1c499a2b950d493cc282a8e14a203f372d4503bcd37db5f7f65387ff309b3b81` |
| 35 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/instance-source-edition-3.md) | 278 | `declaration-track:72a7d3191ce4ecfdd32aa79b7fa953f247e7e023fcc610f514d5ed600508e6f4` |
| 36 | `theorem` | [coe_sInf](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/coe-sinf.md) | 284 | `result-track:2c014137a5e6c4a0e4dbcaa9f2432f211c141d516d1d95885abd5940b611376d` |
| 37 | `theorem` | [mem_sInf](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/mem-sinf.md) | 288 | `result-track:ec3ecd4a17f61bc0485c82cc92c9fb21158a7ac5c20553fa735a3678da85a2d9` |
| 38 | `theorem` | [coe_iInf](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/coe-iinf.md) | 292 | `result-track:20775a78d399748bf6b7d3a9ca76c2caa5b9caba09b03f3e4a6138d4fc23dcc7` |
| 39 | `theorem` | [mem_iInf](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/mem-iinf.md) | 295 | `result-track:3020c88ccda504590e2067d9e11061db2d32c85be478ad24900bc1e0104cd091` |
| 40 | `theorem` | [sInf_toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/sinf-tosubsemigroup.md) | 299 | `result-track:3080c736c3140a9aa600e1035a10416223e602f6c4082440ae3f8638c46ffad6` |
| 41 | `theorem` | [sInf_toAddSubgroup](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/sinf-toaddsubgroup.md) | 304 | `result-track:ae864b113ba90628a207b3c846caf92f3e7e07ca3cdf4a237a944b4c06b66d94` |
| 42 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/instance-source-edition-5.md) | 309 | `declaration-track:b72dbc857af337c463486c63429fba509fd4eeb7ece688dceb79860d49c055b0` |
| 43 | `theorem` | [eq_top_iff'](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/eq-top-iff.md) | 322 | `result-track:95d387014d9f8a311bb447e18fd0d034563faf988731672d5377d43371aed466` |
| 44 | `def` | [center](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/center.md) | 336 | `declaration-track:ca07646aeaad65948964fd3f634d7a11f85ee1c2c995a1e81a991f3165045a8c` |
| 45 | `theorem` | [coe_center](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/coe-center.md) | 340 | `result-track:8126cea24e8753ff91646d2c0235df28085865aa9a00616998bff155feb5832b` |
| 46 | `theorem` | [center_toNonUnitalSubsemiring](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/center-tononunitalsubsemiring.md) | 344 | `result-track:e1c029ddf8042c82d0589333812da294813c6463795a467175b7d2a3401396dd` |
| 47 | `instance` | [center.instNonUnitalCommRing](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/center-instnonunitalcommring.md) | 349 | `declaration-track:8a9e9dfb3afebfc6f293480648d404e1f7386e1f26e2bb8e836e2eff6e77cf7f` |
| 48 | `def` | [centerCongr](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/centercongr.md) | 356 | `declaration-track:48044d7117d1ef1886920135d1c4027d7143224d821b74e09d88efaac8e431f3` |
| 49 | `def` | [centerToMulOpposite](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/centertomulopposite.md) | 361 | `declaration-track:7252d98e18435f4c3e7bbbe1ff02c92b31cc9177bde0e7b19c1dab239195e4bf` |
| 50 | `example` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/example.md) | 370 | `declaration-track:4296a1d1a473d26310c3f49a32c8a29b1db2e0b1761b1fba446763246ceaedff` |
| 51 | `theorem` | [mem_center_iff](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/mem-center-iff.md) | 374 | `result-track:1021824a080148264b11de56cc9cc68b0d9c160a31e5313e08d1f9331f0ad1ba` |
| 52 | `instance` | [decidableMemCenter](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/decidablememcenter.md) | 376 | `declaration-track:ebf9fbf521800b797a6215511f4a826f4acf242f8232dcad4ab5b1995357e362` |
| 53 | `theorem` | [center_eq_top](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/center-eq-top.md) | 380 | `result-track:51e6f64b05abd386b298588736d936764476a3e0f3e246cd9f0b58f5ad51a29b` |
| 54 | `def` | [closure](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/closure.md) | 394 | `declaration-track:a33828c49d48bb52fe93946bb80efc3276790ec82de8abecd7e04b96f01c3955` |
| 55 | `theorem` | [mem_closure](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/mem-closure.md) | 397 | `result-track:18eccef6533563840b4eb071af9263f8b1138db6d7250358534ad34372fe3cb3` |
| 56 | `theorem` | [subset_closure](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/subset-closure.md) | 402 | `result-track:6887cd0fbf130dbbdea8cbb8d61bcae507743f8945963c1cf26ad5093598dd09` |
| 57 | `theorem` | [notMem_of_notMem_closure](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/notmem-of-notmem-closure.md) | 404 | `result-track:170d923c05edc9d969dba1ee8c9e2725dc45e4778fa4382ca7b3cac09fc1cb61` |
| 58 | `theorem` | [closure_le](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/closure-le.md) | 411 | `result-track:504add9d01db93e8c0df73230c6abc4664183ec3b882c627ed30c8f1dc6d0356` |
| 59 | `theorem` | [closure_mono](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/closure-mono.md) | 417 | `result-track:adff888558d73f333ea8fb77423e40b57473d96002435428840b06df01a60104` |
| 60 | `theorem` | [closure_eq_of_le](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/closure-eq-of-le.md) | 420 | `result-track:1017f3492a43885b3fb8d0bc7bada4b2065d5707901ebecc84c74933cc9a897f` |
| 61 | `theorem` | [closure_induction](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/closure-induction.md) | 428 | `result-track:16ae8c13ee98154a4ba33a01d6284a971da2f527e84ee1adb2685c941ecb37b1` |
| 62 | `theorem` | [closure_induction₂](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/closure-induction-source-edition-2.md) | 444 | `result-track:343f1a7cdf0fe509754bc9f3f939f1ec023e6bbc03b1be1ef94bd5f0190d0c72` |
| 63 | `theorem` | [mem_closure_iff](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/mem-closure-iff.md) | 467 | `result-track:36df16ab871c4c03d44434d765395ebbc09d3f47c72d6bcd184526d132361d4c` |
| 64 | `def` | [closureNonUnitalCommRingOfComm](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/closurenonunitalcommringofcomm.md) | 495 | `declaration-track:46119820078d9e1a162dd9228d779412cd1c23db197a11287403526da399a0b6` |
| 65 | `def` | [gi](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/gi.md) | 514 | `declaration-track:eb92e52c32e35652c81d9305ca240af460daff0532e9c5ef6d9adb8e783d2060` |
| 66 | `theorem` | [closure_eq](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/closure-eq.md) | 522 | `result-track:db72cd9232bc8a92a2628113ddf4b34838f63ef71ce8d4c40ff7c6ab5e73d980` |
| 67 | `theorem` | [closure_empty](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/closure-empty.md) | 526 | `result-track:209fd41460282c5095beff906425e3b8c01173a0840f87125a1739f8be941e40` |
| 68 | `theorem` | [closure_univ](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/closure-univ.md) | 530 | `result-track:754d7e2fe81bd5d2122b83611fe7cd89d395d2fa9f8c5217966786e3fee0ec8b` |
| 69 | `theorem` | [closure_union](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/closure-union.md) | 533 | `result-track:b31ea5d4a750832aec862196efe69e9a2b1a4cfd499e92b4cdb7b64175f98e72` |
| 70 | `theorem` | [closure_iUnion](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/closure-iunion.md) | 536 | `result-track:a6932677952eed63175d27818c0123e1774bee9dc91a23b5a27151a6b8ccb5cd` |
| 71 | `theorem` | [closure_sUnion](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/closure-sunion.md) | 539 | `result-track:2c2c3c91ba83c0882baab4e5828385e69572601e70e8f8576f3c21b6d5b0b079` |
| 72 | `theorem` | [map_sup](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/map-sup.md) | 542 | `result-track:0ad3b2552af362d868b24ea0c996254defeb726f5a15b95aac1138de12e1512f` |
| 73 | `theorem` | [map_iSup](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/map-isup.md) | 545 | `result-track:aaa8e5cd1f774131965e53f9389c311f397b05cb460ea76c7251a42d2e9b0e26` |
| 74 | `theorem` | [map_inf](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/map-inf.md) | 549 | `result-track:438e59940ed4e15017f55be04799c8d6e8bcd84ad859a720c20851c424e22a05` |
| 75 | `theorem` | [map_iInf](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/map-iinf.md) | 552 | `result-track:945afde5f4b287519eb7897b8b2d87d20fc7b0d1797685f5fe2fd0befb84c05d` |
| 76 | `theorem` | [comap_inf](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/comap-inf.md) | 557 | `result-track:6fabc9f916bee6db6f207009740b42d65765a927f9d92e55dcbd0ffaf5c2fc20` |
| 77 | `theorem` | [comap_iInf](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/comap-iinf.md) | 560 | `result-track:0bc8b42eb54317d656692e2e2d194cd2a712fe9c6fe722b7d8ef05c3f0b440eb` |
| 78 | `theorem` | [map_bot](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/map-bot.md) | 565 | `result-track:254cd708b26474dde40f57775f38d5ce9b50abaf721d93a4b446143bd31a28f1` |
| 79 | `theorem` | [comap_top](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/comap-top.md) | 569 | `result-track:568a1c2904552da46a8cfa73061ea72129c118444f7653aad26c83c18bb0c60a` |
| 80 | `def` | [prod](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/prod.md) | 574 | `declaration-track:f7413793fb1c9b4c3c1a14080e4303ae8f5886d1795f9605ebceb669a6fb9177` |
| 81 | `theorem` | [coe_prod](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/coe-prod.md) | 579 | `result-track:464e4de7d96082f60ed03cb7597e594d7f0e0a6db1f13c0ae8119abe3b107ca0` |
| 82 | `theorem` | [mem_prod](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/mem-prod.md) | 583 | `result-track:0c285a4c0b048972f819f2755398c979f3cbc145e44a49c9f5644d1fad2c4368` |
| 83 | `theorem` | [prod_mono](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/prod-mono.md) | 588 | `result-track:687786dab41eebd71e797027f01e690adee66aa63f0aa0fcb0754a9a569791b8` |
| 84 | `theorem` | [prod_mono_right](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/prod-mono-right.md) | 592 | `result-track:dac4ed72d8d3f1ec463ac670fc38244fe1a01f38270fa36b25b942ff2fdfbb10` |
| 85 | `theorem` | [prod_mono_left](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/prod-mono-left.md) | 596 | `result-track:df100502eed7dc1c838c1739bddc8f2c6a95a67cd1eb5dea4d8c485c991da242` |
| 86 | `theorem` | [prod_top](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/prod-top.md) | 599 | `result-track:b394185276802e5d4939e95d16e1ee47f0be7f433da2d8fa1b657b932a2d7ed1` |
| 87 | `theorem` | [top_prod](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/top-prod.md) | 603 | `result-track:d8401589622c34f42f4da4e84472a8f07d3b9641a27ff3800c591ebb3d283b2c` |
| 88 | `theorem` | [top_prod_top](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/top-prod-top.md) | 608 | `result-track:bf950a2f637be2579680b9d0ca975b537737687009aeac1c3fa95e5957579153` |
| 89 | `def` | [prodEquiv](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/prodequiv.md) | 612 | `declaration-track:eac36cdd1a2afab393836aabfef3e30f072f62028bc1996e25e1b1f32d1a9d00` |
| 90 | `theorem` | [mem_iSup_of_directed](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/mem-isup-of-directed.md) | 620 | `result-track:87ee9eeac64e15b2bd1e659d5ddbeb967d152d0c37a3ea1887858e9a15cf946e` |
| 91 | `theorem` | [coe_iSup_of_directed](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/coe-isup-of-directed.md) | 629 | `result-track:644f4a1efaf460b04f3cc3bf4e44a899ed02fa545505bbf11f10498d16728cc6` |
| 92 | `theorem` | [mem_sSup_of_directedOn](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/mem-ssup-of-directedon.md) | 633 | `result-track:6015d55b5461f44b2776c2c98f0d5fc5a95df07e7bcd92881e1eef886c511522` |
| 93 | `theorem` | [coe_sSup_of_directedOn](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/coe-ssup-of-directedon.md) | 639 | `result-track:0eee078df3412eaa6e095eff6089c340558ec4f4640301a0fc2b8a237e9563c3` |
| 94 | `theorem` | [mem_map_equiv](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/mem-map-equiv.md) | 643 | `result-track:e8df87c1d056df367d8efba4955b903c517aad4c16652943739dfbadcb39321b` |
| 95 | `theorem` | [map_equiv_eq_comap_symm](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/map-equiv-eq-comap-symm.md) | 647 | `result-track:22a80e78a4a9bbc6dc9dc935d346981971d6ff20b495ef78300e0beadf035c8f` |
| 96 | `theorem` | [comap_equiv_eq_map_symm](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/comap-equiv-eq-map-symm.md) | 651 | `result-track:d4f02bb286fd7ced8603157a98072e551b760ccfe6bcdd5dd90414f07795dc35` |
| 97 | `def` | [rangeRestrict](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/rangerestrict.md) | 667 | `declaration-track:33b0452db0a84c6977479a63c04f36a2e39912a173bbec9e7443bee1ea59c9b3` |
| 98 | `theorem` | [coe_rangeRestrict](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/coe-rangerestrict.md) | 671 | `result-track:20ac80ba1d88ae9131ea1e072633becf068f34b4fc04ac802dae692716439aa0` |
| 99 | `theorem` | [rangeRestrict_surjective](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/rangerestrict-surjective.md) | 674 | `result-track:fb97382cd0444e618f6bf1d9449eb4b0cb09b11441d9bc1ccf5e018593048604` |
| 100 | `theorem` | [range_eq_top](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/range-eq-top.md) | 679 | `result-track:b987010280ff9bbd71d0d23b9c94238bc5a18e91beb6f370d6ccf7573caf63b7` |
| 101 | `theorem` | [range_eq_top_of_surjective](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/range-eq-top-of-surjective.md) | 687 | `result-track:ea6405f045f21e39e77de81b3a19ac8cdf0e20845b791c12b9b606d97dfa3903` |
| 102 | `def` | [eqLocus](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/eqlocus.md) | 695 | `declaration-track:dfc20d1fe2fc2ef0d325242c5692f39fadf14fd461d8ba4cf8a68166be5450b8` |
| 103 | `theorem` | [eqLocus_same](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/eqlocus-same.md) | 699 | `result-track:e910af22910af4a0df4c6394e7a74705cb56138092e36247737007d6e7a71389` |
| 104 | `theorem` | [eqOn_set_closure](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/eqon-set-closure.md) | 704 | `result-track:03475c54e4ba0ecbdefc7cb51b3a643335cffc3225004564cda2202a7ca4589c` |
| 105 | `theorem` | [eq_of_eqOn_set_top](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/eq-of-eqon-set-top.md) | 708 | `result-track:5b2ffb0160e66e3807cfb1e5bf516d8c0d506eba5aa87a9bc7dbc494c9f881c9` |
| 106 | `theorem` | [eq_of_eqOn_set_dense](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/eq-of-eqon-set-dense.md) | 711 | `result-track:4414580c234a40137a5e0fd671eea70af4bd86639710a4554ce749b213f7c453` |
| 107 | `theorem` | [closure_preimage_le](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/closure-preimage-le-source-edition-2.md) | 715 | `result-track:d022b059f84f918b74a9c0f408e56f69afca8a402a60cd98af03b74e0af371d2` |
| 108 | `theorem` | [map_closure](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/map-closure.md) | 720 | `result-track:90b6ed3578e86b5c56f1986e98ef79d3a8e5efa07e4889c6c3d379a17df8016d` |
| 109 | `theorem` | [range_subtype](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/range-subtype.md) | 734 | `result-track:39797e50d410783326fd41c9275be21a06659a9e4122fb1f221772eae642c44f` |
| 110 | `theorem` | [range_fst](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/range-fst.md) | 737 | `result-track:00fe1529d0381666ffe144fb4dbd797890e88def01c30d4dce2a50d33e897ff8` |
| 111 | `theorem` | [range_snd](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/range-snd.md) | 740 | `result-track:d38cb5ff7d9e7c9d52ff86aaa4f01f3b9f970a2de3e5df84e4b46bcee1ac3a86` |
| 112 | `def` | [nonUnitalSubringCongr](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/nonunitalsubringcongr.md) | 751 | `declaration-track:3c30f58f1ad3834e9dd78ac5c48e60305f5c0722805ab9e660400a314012d21d` |
| 113 | `def` | [ofLeftInverse'](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/ofleftinverse.md) | 759 | `declaration-track:31f21d06e73564705c46a7d66e479aa89832b1c64d91cd272b867b21bab8a9fc` |
| 114 | `theorem` | [ofLeftInverse'_apply](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/ofleftinverse-apply.md) | 770 | `result-track:f7d33c0290b1c18b4f833aed9e5ec6b8b85dffc14cd97334b67afa86255b63f8` |
| 115 | `theorem` | [ofLeftInverse'_symm_apply](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/ofleftinverse-symm-apply.md) | 775 | `result-track:d3ed7a408e5b2e09307c394ef4578b03ea934ce155426bdc029ba51c5101065d` |
| 116 | `theorem` | [closure_preimage_le](../../../../CommutativeAlgebra/NonUnitalSubringBasicNamespacedNotMemOfNotMemClosure.lean/declarations/closure-preimage-le.md) | 787 | `result-track:8c9ed8df86bddd7156a5c20db1e8deb1a2715eb0a0f2c8d4723f58985dd9c476` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=533e51e07995fc9a890b2e8458cc24fa28c8a3ef248e64fbab295eb00f0607de -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbc7dc7fe7582902619352ff913320b7b19f3ceb58abd9fd2e6c2a976bc847384.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantbc7dc7fe7582902619352ff913320b7b19f3ceb58abd9fd2e6c2a976bc847384.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
