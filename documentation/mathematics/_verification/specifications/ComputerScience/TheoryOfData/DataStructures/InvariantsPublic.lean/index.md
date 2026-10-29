# Verification target: Invariants Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9b77f45967cb3091b5f34001bf26a344faaf787",
  "lexical_observation_count": 130,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Invariants/Variant51e6f698f499df072b1898c9de4834d45195551da0f8c336dfb18db2d2680af3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9b77f45967cb3091b5f34001bf26a344faaf787`.

Source path: `GRWTSK/Topology/MetricTopology/Invariants/Variant51e6f698f499df072b1898c9de4834d45195551da0f8c336dfb18db2d2680af3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Invariants/Variant51e6f698f499df072b1898c9de4834d45195551da0f8c336dfb18db2d2680af3.lean.json)

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
| 1 | `theorem` | [not_le_delta](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/not-le-delta.md) | 59 | `result-track:679e71745e89a6a600bc7120cfa03e83c3219eee9a403aa1eccd387c9fb29313` |
| 2 | `theorem` | [delta_lt_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/delta-lt-false.md) | 62 | `result-track:8bde71d6e30568ec256f0c262f6f23cee1aa93ccfde92c1a20e9f7f2495e2a76` |
| 3 | `def` | [realSize](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/realsize.md) | 73 | `declaration-track:41fc1d353035020179b1b9a81f461fb1ac48426d9f56f64b192e849728bb99dc` |
| 4 | `def` | [Sized](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/sized.md) | 82 | `declaration-track:ff02f6b905c6042cb2ce360c2397ebfc8708de95f82e838d284eba9d0ad37adb` |
| 5 | `theorem` | [Sized.node'](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/node.md) | 86 | `result-track:7fafd7c4ebbcbc3af7edb98ad3a4da16d9dd2b1872d42477631a327979ae5c2b` |
| 6 | `theorem` | [Sized.eq_node'](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/eq-node.md) | 89 | `result-track:20b6061f76218e9e31a81cd263d5f4c16ef3d41f2020db3599df278e20dbf4bf` |
| 7 | `theorem` | [Sized.size_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/size-eq.md) | 92 | `result-track:1bc8812204c263b2ca0fee408c444897cea0fa8cb941b4b9ee7f9f564db23f7a` |
| 8 | `theorem` | [Sized.induction](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/induction.md) | 97 | `result-track:5838e0b23fc54ce73f1aeae4f88f7e46e8657014877685af8adb43f721580506` |
| 9 | `theorem` | [size_eq_realSize](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/size-eq-realsize.md) | 105 | `result-track:2d90f129a3e3e46eda2fdb08c970d8a7567e248882322534d97318b8d2cd85f2` |
| 10 | `theorem` | [Sized.size_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/size-eq-zero.md) | 111 | `result-track:067ca9e1ff62e1f688bcef1f9a0591467e6281a135ed48e3512d59010b45c5c4` |
| 11 | `theorem` | [Sized.pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/pos.md) | 114 | `result-track:a162209689708d64a240e6df0734e96c7d8c72f33ccdfe31eac0c8e452bd82ac` |
| 12 | `theorem` | [dual_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/dual-dual.md) | 120 | `result-track:1eb4c68fe09dbaa4a2843fb177b417c223ea19d34849d5539f137e7df9067cec` |
| 13 | `theorem` | [size_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/size-dual.md) | 125 | `result-track:0df638bcb1b060c2736646c2ac0ef70ce9b0952bb942113d4dcd5f8d387f51d7` |
| 14 | `def` | [BalancedSz](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/balancedsz.md) | 133 | `declaration-track:d25130291fddf20abeb38eabb2ca6ca38887dd6b81be63effd15c165c45d299c` |
| 15 | `instance` | [BalancedSz.dec](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/dec-source-line-136-occurrence-2.md) | 136 | `declaration-track:7cb864630ea52f65bc373bed6e8b7a743ea988d5a6c82a52af69a7b36f107d41` |
| 16 | `def` | [Balanced](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/balanced.md) | 140 | `declaration-track:e277945a253796e4d7561fcd3c9e2e8d3a571ed5b1b06fb81b61043ae63efd38` |
| 17 | `instance` | [Balanced.dec](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/dec.md) | 144 | `declaration-track:f760e707d84a4cf97993629fd37c2096a465a0549fb4f74e794ebf2f9b879098` |
| 18 | `theorem` | [BalancedSz.symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/symm.md) | 152 | `result-track:ef74a0b1de12455cf15844817d8db9ce71f8e44b2ce734c9e11c0232ecdfbbf4` |
| 19 | `theorem` | [balancedSz_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/balancedsz-zero.md) | 155 | `result-track:60bd336b452987ba34a2f8235a9d37c3208af12226cefb066a442577b8dcdc55` |
| 20 | `theorem` | [balancedSz_up](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/balancedsz-up.md) | 158 | `result-track:ef1e179e56c820e058bc6437cffc5b57666f6f1c91a05e64c3979d4b4cef1383` |
| 21 | `theorem` | [balancedSz_down](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/balancedsz-down.md) | 170 | `result-track:3c57b0ee0fcc78b04c7f5ffaf555d6a673072d144c0d6e2f176a1647ed43fbe2` |
| 22 | `theorem` | [Balanced.dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/dual.md) | 175 | `result-track:f9c4d429ae96efff5e32625acb2b05cf6e8c260b93cbdcb6b1a120bc04b8ba68` |
| 23 | `def` | [node3L](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/node3l.md) | 183 | `declaration-track:a4f773ae701469cfd4a663017a4ce66502ca0015ed98bb5be807d678895058bc` |
| 24 | `def` | [node3R](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/node3r.md) | 187 | `declaration-track:c40f96f9da26226956a606d8d541dc3ceba507238d65e6f2d81867cdf55dc5ca` |
| 25 | `def` | [node4L](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/node4l.md) | 191 | `declaration-track:002efcb1b7611c640964a99cdfcf13493b185b08743fb7b8f8b2701788988299` |
| 26 | `def` | [node4R](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/node4r.md) | 197 | `declaration-track:ace74daf99d7821d1c2d1b8675b802db782e08586fce53e3e7ab1e383c2c81b0` |
| 27 | `def` | [rotateL](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/rotatel.md) | 204 | `declaration-track:573da20c62e189309021edf00609c154c11c03fcec6314c344ba23e37c319dc1` |
| 28 | `theorem` | [rotateL_node](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/rotatel-node.md) | 208 | `result-track:72b3cfb201497ac15f73adcd9452e6484c7b0030bfdf03620f26c5933a192f12` |
| 29 | `theorem` | [rotateL_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/rotatel-nil.md) | 213 | `result-track:8a46b2ab295743d3d148f148a085ea39e057bf1a7468866bd7a7cf057e188c45` |
| 30 | `def` | [rotateR](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/rotater.md) | 219 | `declaration-track:3364226862990b621cb0be1f0d9548522fc445346c58506a14f738931bea7b1e` |
| 31 | `theorem` | [rotateR_node](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/rotater-node.md) | 223 | `result-track:0298d44c8b5f605ee8c5d0d43922aeb54f65c9b7af09c683ceb615219a9ac703` |
| 32 | `theorem` | [rotateR_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/rotater-nil.md) | 228 | `result-track:82f49a57a0ec37311a081f97587dd23f9182f91888230040633ea31d37eb7ff5` |
| 33 | `def` | [balanceL'](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/balancel.md) | 234 | `declaration-track:6bc348c9bbe7044a3cd91a3b528772031d0f15ce6bd90ff8bbc9c0486a742bc2` |
| 34 | `def` | [balanceR'](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/balancer.md) | 240 | `declaration-track:6460eaa4e45fcce872b7e538bed87715bb08f196bc3ee8fc43c8a42bbb859320` |
| 35 | `def` | [balance'](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/balance.md) | 246 | `declaration-track:651e49f31470f0467f0860dbd573dcf8454bce7e50edd96019b44bc667d57729` |
| 36 | `theorem` | [dual_node'](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/dual-node.md) | 252 | `result-track:abaee0f23fb495061fdc77da6fb53dd5913039ed44498292495c518cd637efb3` |
| 37 | `theorem` | [dual_node3L](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/dual-node3l.md) | 255 | `result-track:10e7662b5f2151463d07df916b1bb5b54cc5ef999c97d1ffa65d004c330bdb72` |
| 38 | `theorem` | [dual_node3R](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/dual-node3r.md) | 259 | `result-track:fa852c9ed56289c0cd949a1372f41710e10e15fdab26eed16cb2dbe758a9675e` |
| 39 | `theorem` | [dual_node4L](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/dual-node4l.md) | 263 | `result-track:08dc97fddb092a773cdea8d6197972b2281d16e9c78d8a7bd18857b593453f33` |
| 40 | `theorem` | [dual_node4R](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/dual-node4r.md) | 267 | `result-track:b874e2da3919795ad7d4d785047a5a618693ead4e56303057ca2853e89b0cd90` |
| 41 | `theorem` | [dual_rotateL](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/dual-rotatel.md) | 271 | `result-track:174d2c2df7c8339fa781a4fb62ba34232c441b958273f47f621c8dbcd59049ca` |
| 42 | `theorem` | [dual_rotateR](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/dual-rotater.md) | 276 | `result-track:cdd5ea5aee1595fefe0b4c4ed3e705515678cd9024abd4042c9688bddaa8994e` |
| 43 | `theorem` | [dual_balance'](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/dual-balance.md) | 280 | `result-track:4c6f42918eb0feedac7a9150c9ac6b27e282a75ef88c7a280d952339ae8a29ea` |
| 44 | `theorem` | [dual_balanceL](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/dual-balancel.md) | 286 | `result-track:031728d00c42f584f2408cb44377ed1b6365b5a6a8adc950e414b8860d40576b` |
| 45 | `theorem` | [dual_balanceR](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/dual-balancer.md) | 301 | `result-track:2dc00e795bc50fc1fd5a77f7a8e19e0223f55321795bb085684843f45fb11caa` |
| 46 | `theorem` | [Sized.node3L](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/node3l-source-line-305-occurrence-2.md) | 305 | `result-track:22620a725d3192f03cb3f8c0ad19a40021b69fdc267e5a726880b678c2bb4ac9` |
| 47 | `theorem` | [Sized.node3R](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/node3r-source-line-309-occurrence-2.md) | 309 | `result-track:8a5935e24d028eac9c5a8e6161148b981cdcb793521d94554382ec5007600fc7` |
| 48 | `theorem` | [Sized.node4L](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/node4l-source-line-313-occurrence-2.md) | 313 | `result-track:f0c95b4e9beb26a95c8e33bd8bd71bbfc70ebaa4972c9b0859e279de16f46d32` |
| 49 | `theorem` | [node3L_size](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/node3l-size.md) | 317 | `result-track:bf5bd2500ac25b8976eff7aee9afb9888eb4d5d853ab7ab7ef638786eb9ad98f` |
| 50 | `theorem` | [node3R_size](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/node3r-size.md) | 320 | `result-track:6a903979a7252b3e911d8e8c76c48f8661e567ee335371648cb9b9aa66c3cfd6` |
| 51 | `theorem` | [node4L_size](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/node4l-size.md) | 323 | `result-track:4615f70f358ee54026cbf272886b3fd010bda136e6ab210c680c672bdd256c1f` |
| 52 | `theorem` | [Sized.dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/dual-source-line-330-occurrence-2.md) | 330 | `result-track:c6af7eca14ce1603d1ce9ffefc13ad1779816ed848415585418bdee8788bdb64` |
| 53 | `theorem` | [Sized.dual_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/dual-iff-source-line-334-occurrence-2.md) | 334 | `result-track:af6df898281f703a62e17b1f83781cbaaad19a33daeae1c65436da10c155e9f7` |
| 54 | `theorem` | [Sized.rotateL](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/rotatel-source-line-337-occurrence-2.md) | 337 | `result-track:084a877eb826e150b0d6ca82dc9142104679a7d1eb68f7c225ab6480cf3dabef` |
| 55 | `theorem` | [Sized.rotateR](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/rotater-source-line-343-occurrence-2.md) | 343 | `result-track:c14969967a5461b1870650bf03f503d2cfe2c58ecd4b5bf44406e7d8b5ba322f` |
| 56 | `theorem` | [Sized.rotateL_size](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/rotatel-size.md) | 346 | `result-track:c008b5220eb1b48fd200c299364950af45bed88619d2fc5ddd2c438bdb168539` |
| 57 | `theorem` | [Sized.rotateR_size](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/rotater-size.md) | 352 | `result-track:410ec32e9d03941701a56de8bfffb3d10bea63061e6efd332e67abfc7bcfbc91` |
| 58 | `theorem` | [Sized.balance'](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/balance-source-line-356-occurrence-2.md) | 356 | `result-track:08212f83c7aa6cda35e595646d5df12b6076faf73398d679c1062f47d315c7cd` |
| 59 | `theorem` | [size_balance'](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/size-balance.md) | 363 | `result-track:87d45a5dace3e3579728bfdc1f3283f0a5503350aab42eb2a1879b133741704a` |
| 60 | `theorem` | [All.imp](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/imp.md) | 374 | `result-track:a295b31f4dc8a847835d024c4c97274c3a7ad0c1f6443164d2c2e25514695ced` |
| 61 | `theorem` | [Any.imp](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/imp-source-line-378-occurrence-2.md) | 378 | `result-track:1ef3d943a6f1812c05da76029c69d5fec14b60720462d3e6a6c373993ff4cdf2` |
| 62 | `theorem` | [all_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/all-singleton.md) | 382 | `result-track:4480995dc14d4d4f30ea850984dfe521aa63b2b05c6dcf82a064397d88018ef6` |
| 63 | `theorem` | [any_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/any-singleton.md) | 385 | `result-track:94c57a6bff65172daa1815fc93353f1ae23b512a5cfe71f25f13b1a6048de5fc` |
| 64 | `theorem` | [all_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/all-dual.md) | 388 | `result-track:65433d7afab3444cc05725a054e1a24ba41f042eb362f7eb943a9edbaa2cbfff` |
| 65 | `theorem` | [all_iff_forall](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/all-iff-forall.md) | 394 | `result-track:369c6b7dc3eeea1977469e83944146faaaa2ba94367580f1244700565c44b4a9` |
| 66 | `theorem` | [any_iff_exists](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/any-iff-exists.md) | 398 | `result-track:d2f0ce92e16bfeef11ffe37f2afe2b00a8d4c135a62ab98e0c04d02721f1094d` |
| 67 | `theorem` | [emem_iff_all](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/emem-iff-all.md) | 402 | `result-track:d30ac4c4356a1a7c989fc26b8e5fa14925ebd16cde2d0cfbe4559d5c49edbd5b` |
| 68 | `theorem` | [all_node'](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/all-node.md) | 405 | `result-track:969d1703c0b5ff4b306e493860c413961735fbad800d121d17bd7d05172108f6` |
| 69 | `theorem` | [all_node3L](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/all-node3l.md) | 408 | `result-track:c552412734d535f94ff3f83361acade7d006d4ab664700f238d8f30ca525dc3a` |
| 70 | `theorem` | [all_node3R](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/all-node3r.md) | 412 | `result-track:3ff21de5a9d6fe5d99b91e126e036f7015d3762f2e5917c7018976f14b3af989` |
| 71 | `theorem` | [all_node4L](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/all-node4l.md) | 416 | `result-track:f0b9530bb3c1e595c037b4629174af95509844110769d7292410421ec252f67a` |
| 72 | `theorem` | [all_node4R](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/all-node4r.md) | 420 | `result-track:502356f474fe352728cceac4f965725fc214239860ed7e17e7bbfe5362ceaa30` |
| 73 | `theorem` | [all_rotateL](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/all-rotatel.md) | 424 | `result-track:f45ba9ad80d152099d204f9a4e7e4fa9ab19b3e4d358bfdfe35343c311525012` |
| 74 | `theorem` | [all_rotateR](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/all-rotater.md) | 428 | `result-track:9f33ed576d98cdb514d1547a9af24c20894bf813a2db84bd96566a4a644e0bde` |
| 75 | `theorem` | [all_balance'](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/all-balance.md) | 431 | `result-track:3e67693da65fef34a124519bc58a2bb76c17e1d6ad663439a8fd073841c197c5` |
| 76 | `theorem` | [foldr_cons_eq_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/foldr-cons-eq-tolist.md) | 437 | `result-track:b5555d850b8035cb467113f1206e54963d7b9b79f8148fd5498659632984e31c` |
| 77 | `theorem` | [toList_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/tolist-nil.md) | 444 | `result-track:9b44e024e8d812ed935e12210111b1ea71d1bb57e5db33802c79ff83121ce3ba` |
| 78 | `theorem` | [toList_node](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/tolist-node.md) | 448 | `result-track:65156ef02be21a603c2756f3b69bce3bdafbfc44d774758d1d41305ccd67d855` |
| 79 | `theorem` | [emem_iff_mem_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/emem-iff-mem-tolist.md) | 451 | `result-track:02709027037c23578deb0639cab39ddd8e8ca51557a05d173ee2b9690da941d0` |
| 80 | `theorem` | [length_toList'](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/length-tolist.md) | 454 | `result-track:28a68057e61cd47336f676bb27ac74cf95d7c4726c96d9612baa1c92f8869aae` |
| 81 | `theorem` | [length_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/length-tolist-source-line-460-occurrence-2.md) | 460 | `result-track:57b6d20cef0b9354dd16804f11b4a0848c48ac5808ef2e1470ab20d5f3babdd8` |
| 82 | `theorem` | [equiv_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/equiv-iff.md) | 463 | `result-track:1bac528606c9e8e501a2ca16bfa40611bf1a74b5fc55c54ef3d63e3bd5a4a29f` |
| 83 | `theorem` | [pos_size_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/pos-size-of-mem.md) | 470 | `result-track:dd65f5d3b7b598315475288ac966ed55ff62f533b1a68cccc3dd3c4935100902` |
| 84 | `theorem` | [findMin'_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/findmin-dual.md) | 476 | `result-track:49fac72c521f98cf2cd0757ca124581ae98989f246f4b1314096d935fea8d5b8` |
| 85 | `theorem` | [findMax'_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/findmax-dual.md) | 480 | `result-track:0c3ece2ce0ab17a3cfcaf9bbb8aee0c07f030374727f5588476af8d4b2fd789b` |
| 86 | `theorem` | [findMin_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/findmin-dual-source-line-483-occurrence-2.md) | 483 | `result-track:feef065e3d4ce4f4dcfabbea9f5f5aebfef6c466890e224aa99a893685fdba0d` |
| 87 | `theorem` | [findMax_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/findmax-dual-source-line-487-occurrence-2.md) | 487 | `result-track:fb55157f95ab95f243248c24b720023b5ff99b07826b95830f2a6160445e9c43` |
| 88 | `theorem` | [dual_eraseMin](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/dual-erasemin.md) | 490 | `result-track:4ae13c2ad00f42becd9aa9b404abc38237de98049a4540395f34e01ddbbec2f1` |
| 89 | `theorem` | [dual_eraseMax](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/dual-erasemax.md) | 496 | `result-track:258c5e3ec1389c2287d169aa607c1a8538aa81ed45554d2815f8732e5271b956` |
| 90 | `theorem` | [splitMin_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/splitmin-eq.md) | 499 | `result-track:d79ed8afc08fa461b4a298741551c3d57850831b96051792481b9d83c9443fba` |
| 91 | `theorem` | [splitMax_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/splitmax-eq.md) | 504 | `result-track:7da3822837775356e1ab402711bae906377e6d7ae09219f527da04c102a20bcb` |
| 92 | `theorem` | [findMin'_all](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/findmin-all.md) | 510 | `result-track:6c3c408924acd9ed2db331ec34060c66259196810310991c12a0cdd490ba01da` |
| 93 | `theorem` | [findMax'_all](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/findmax-all.md) | 515 | `result-track:e3ff091b667190519a871f4cb68105d024c41936452d27e4c662a3988b31078c` |
| 94 | `theorem` | [merge_nil_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/merge-nil-left.md) | 526 | `result-track:ead2d034009412d4d7099cc5fe423742e0c04d42aa8817f78e92c633ff4b96be` |
| 95 | `theorem` | [merge_nil_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/merge-nil-right.md) | 529 | `result-track:ce1ec7db876115b0b70fd7adb6890d5ef86bef5a11d0581ec2306d6add03ef29` |
| 96 | `theorem` | [merge_node](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/merge-node.md) | 533 | `result-track:a2f38770e8bc5b779f197e82dcb0e7f5ff4505b5979decb3d9dc730d7095fbba` |
| 97 | `theorem` | [dual_insert](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/dual-insert.md) | 544 | `result-track:69ef3befa4d28c233424cc99d9e3a4045164affdac206d9fcc4c89388535b2c5` |
| 98 | `theorem` | [balance_eq_balance'](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/balance-eq-balance.md) | 557 | `result-track:92d5ea742726ba4be38c80c38a38cad7bdec83084476feea2d45c17e51d4a0c2` |
| 99 | `theorem` | [balanceL_eq_balance](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/balancel-eq-balance-source-line-641-occurrence-2.md) | 641 | `result-track:9accd627b52ef7e2e712f5fd5e0c56cfec3f126431fd0c509863de1b9f993496` |
| 100 | `def` | [Raised](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/raised.md) | 657 | `declaration-track:c243f93c8d5161be0e9413323548e470e273dde6ad1e1eb32889f5a5f5dc3c17` |
| 101 | `theorem` | [raised_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/raised-iff.md) | 660 | `result-track:3e54205585587f8f5fcc8b988d53a084d4e2bb77e3809e118278a62ccac7392f` |
| 102 | `theorem` | [Raised.dist_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/dist-le-source-line-670-occurrence-2.md) | 670 | `result-track:f477bb6aceee7492b72f7b25849b02d8ca3d19830653deef0d250881676eb371` |
| 103 | `theorem` | [Raised.dist_le'](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/dist-le.md) | 673 | `result-track:f3b1651fab2cc34eb5eeb93e5d799567f9d77f79c97c624b75aa1a894560938f` |
| 104 | `theorem` | [Raised.add_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/add-left.md) | 676 | `result-track:330495ff997fe4dca3236406380c9dd3f11eaef753dce803c8ec2fbca42fe3a0` |
| 105 | `theorem` | [Raised.add_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/add-right.md) | 681 | `result-track:fe8dd4ed195cfb55e06a81f002c6d35dd5523f7ed9b8366f4fb0de53e0bab3fe` |
| 106 | `theorem` | [Raised.right](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/right.md) | 684 | `result-track:f67d0d54759d732638d6039fa862db5654902d5feefa2122eba18ba6072a91df` |
| 107 | `theorem` | [balanceL_eq_balance'](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/balancel-eq-balance.md) | 691 | `result-track:01a954c110627ab7de847ac3e240d226b53b0fe00dfddb8c0526fb4a11a6b296` |
| 108 | `theorem` | [balance_sz_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/balance-sz-dual.md) | 709 | `result-track:d5f5a91134883b91ba113c8e673b3823fa8c56b585211eebccc0981d8e140e72` |
| 109 | `theorem` | [size_balanceL](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/size-balancel.md) | 719 | `result-track:bbedfb0f37ad821bde909c248916a8c7b35e7e08bbd5013f4befe9524364248b` |
| 110 | `theorem` | [all_balanceL](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/all-balancel.md) | 725 | `result-track:df6e9b2ca779b3cf959a1f13879c3a13ba4fbb491a01e7dfbe2680dadbb77e5c` |
| 111 | `theorem` | [balanceR_eq_balance'](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/balancer-eq-balance.md) | 732 | `result-track:5f87ad111fb78889722440ad4ebc195b32e2a6056d2a88a3a3e12932891bc4d6` |
| 112 | `theorem` | [size_balanceR](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/size-balancer.md) | 741 | `result-track:78f1150b7a32da09e2db11ba37c4729d8ca62abe509218b6c7bb8c501c1de5e9` |
| 113 | `theorem` | [all_balanceR](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/all-balancer.md) | 747 | `result-track:8bf5c9aae8a0d47398c390de2c9a7b004ad22d9a99f0681cda234b5661401f83` |
| 114 | `def` | [Bounded](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/bounded.md) | 761 | `declaration-track:a7f3aeeae3a76781bce414ea97bb71e31a952e81c059df4ed6a3dfd6b9fa925d` |
| 115 | `theorem` | [Bounded.dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/dual-source-line-766-occurrence-2.md) | 766 | `result-track:ef4e69cd8f6113fdd794c8496213bfd680d3042136677b8facfb7f78320e82df` |
| 116 | `theorem` | [Bounded.dual_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/dual-iff.md) | 772 | `result-track:ccb44edaef22256dd52211024e35d97821a47d313439f0564f835929ed4d5fba` |
| 117 | `theorem` | [Bounded.weak_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/weak-left.md) | 777 | `result-track:02805e55f6cbc3962619dcb62ae490463ae787726510a8321132b14280cf1f64` |
| 118 | `theorem` | [Bounded.weak_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/weak-right.md) | 781 | `result-track:1bd66f61ce2fdf29611fc416c88a29beca7fc45984f655308414d4fd5de9fb6d` |
| 119 | `theorem` | [Bounded.weak](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/weak.md) | 785 | `result-track:6aed8057ee34af58a51c28dd38881e4b6ea73c676261326eacda7357041aaf33` |
| 120 | `theorem` | [Bounded.mono_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/mono-left.md) | 788 | `result-track:bb19113628b9daaa88eba723b36f609d801c55c4061a040fdfe2dcb34dfcb654` |
| 121 | `theorem` | [Bounded.mono_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/mono-right.md) | 794 | `result-track:aa5317605bbafd69279b4995f50ac59b3e3de9ac9b2f907e9721133f537f1995` |
| 122 | `theorem` | [Bounded.to_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/to-lt.md) | 800 | `result-track:486ba13c0bbcdc2abcfdba55a34945279f2e7c488555deb1c614148eea8d7563` |
| 123 | `theorem` | [Bounded.to_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/to-nil.md) | 804 | `result-track:4b09c66b51d415ff03f0dda3dc2e28179884ddb68434ae8b95a9fcae9ad16bbb` |
| 124 | `theorem` | [Bounded.trans_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/trans-left.md) | 809 | `result-track:538d7ae8c615b0a541959d117c3d246d887360efec0a538a401e8858704c4073` |
| 125 | `theorem` | [Bounded.trans_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/trans-right.md) | 814 | `result-track:366ad38939ec765315c07a4eee0d647818580a1505661305d73d993ace44ab0c` |
| 126 | `theorem` | [Bounded.mem_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/mem-lt.md) | 819 | `result-track:ea612de801d90698ed902f20a1855ebcb5074ae4a51e0ce1e509f7c4f18f3e1b` |
| 127 | `theorem` | [Bounded.mem_gt](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/mem-gt.md) | 824 | `result-track:77408d6f4c7cf470eb457b9b8388843071ce0392d04f2f44672a36a442c7c2b4` |
| 128 | `theorem` | [Bounded.of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/of-lt.md) | 828 | `result-track:f12789c1e4f48982b17d1e2c9aaeb4ce965cd1edd71ccea3bf6f50e91a1e69da` |
| 129 | `theorem` | [Bounded.of_gt](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/of-gt.md) | 833 | `result-track:0da1e2f0ca38cb556c7103bb860b98229d1da204f46f2c10005b23cf0c48d015` |
| 130 | `theorem` | [Bounded.to_sep](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsPublic.lean/declarations/to-sep.md) | 838 | `result-track:86a5cdc32123c0fa0a3f0c687f9d15941bd2c0b72183d89e16935a6c65bab2f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4ab78633b85e0193ede181678a003af0ff636c60b3ce6349bc845a7e8ac04744 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Invariants/Variant51e6f698f499df072b1898c9de4834d45195551da0f8c336dfb18db2d2680af3.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Invariants/Variant51e6f698f499df072b1898c9de4834d45195551da0f8c336dfb18db2d2680af3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
