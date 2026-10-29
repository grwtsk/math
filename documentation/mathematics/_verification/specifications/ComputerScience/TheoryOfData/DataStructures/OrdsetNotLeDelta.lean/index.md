# Verification target: Ordset Not Le Delta

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0b7d02f26aecf4da3b9803cbe86682331cca63b",
  "lexical_observation_count": 217,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Ordset/Varianta5672cdabf07354bda78eb786f8392f20a4585c7e0a46e6f63f544d8450d124c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0b7d02f26aecf4da3b9803cbe86682331cca63b`.

Source path: `GRWTSK/Topology/MetricTopology/Ordset/Varianta5672cdabf07354bda78eb786f8392f20a4585c7e0a46e6f63f544d8450d124c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Ordset/Varianta5672cdabf07354bda78eb786f8392f20a4585c7e0a46e6f63f544d8450d124c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Ordmap.Ordnode` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Dist` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_le_delta](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/not-le-delta.md) | 78 | `result-track:acb3d16404e6456e630e795ec258e12cbba9181646b69efcff650f265efb6be6` |
| 2 | `theorem` | [delta_lt_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/delta-lt-false.md) | 82 | `result-track:c570c39187bf0d95c5632aa3f85981d0b01bb1fea90ea2a745ea343264cfe218` |
| 3 | `def` | [realSize](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/realsize.md) | 94 | `declaration-track:fcfea524d432999f619f0bb4e2a00772bb118b78bce6e4a55dd4b28bb127b1ff` |
| 4 | `def` | [Sized](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/sized.md) | 104 | `declaration-track:01007009b98746cd536894a2536f49d609dc00a9872bb712d9b4a4c534353bda` |
| 5 | `theorem` | [Sized.node'](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/sized-node.md) | 109 | `result-track:22dd23679db000eb0f912b52754aeb4824cfa35a29b4f210e5482be4d6d73637` |
| 6 | `theorem` | [Sized.eq_node'](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/sized-eq-node.md) | 113 | `result-track:c667810030754dd671aafbab75634af487bc9c238f227f359fbc81b1f7408a9e` |
| 7 | `theorem` | [Sized.size_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/sized-size-eq.md) | 117 | `result-track:48750748837f9dece1ab5d31c3e5d0abd5a57018b1337bcf8f4ad077a3099084` |
| 8 | `theorem` | [Sized.induction](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/sized-induction.md) | 123 | `result-track:da4962a431af48b1c19301ace4b582c7610f8b17fb182eef53abe32250b8a8a1` |
| 9 | `theorem` | [size_eq_realSize](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/size-eq-realsize.md) | 132 | `result-track:e93d1a2ff78bccb10a54cb0698f26521f4e98453030929208e04d845c1fde099` |
| 10 | `theorem` | [Sized.size_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/sized-size-eq-zero.md) | 139 | `result-track:1a29a168a1590ff86539a7c6885de74dec9dc5b1db3d300b4d7838f8d76fffdb` |
| 11 | `theorem` | [Sized.pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/sized-pos.md) | 143 | `result-track:8a43dcb800318f9eb89942218f3080843b3518d763858e61381fe7de146a8c4c` |
| 12 | `theorem` | [dual_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/dual-dual.md) | 150 | `result-track:f8b285abc48dfd92ff34cb0b977d9a4bd3587122ed778e583fd1ba112d0ee815` |
| 13 | `theorem` | [size_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/size-dual.md) | 156 | `result-track:7332288c8b161209e7b1d70d977962741216d5e32bd466bd0be41de71479cd80` |
| 14 | `def` | [BalancedSz](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/balancedsz.md) | 165 | `declaration-track:a2cb01a7ec4a88e9d88a01d59deba7caf6d2467cdf2df75f7ad553e18263731b` |
| 15 | `instance` | [BalancedSz.dec](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/balancedsz-dec.md) | 169 | `declaration-track:9aa315e8ddfff73ef3167b4214af777933930c5c4ba874ff06b84f52e53aa70a` |
| 16 | `def` | [Balanced](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/balanced.md) | 174 | `declaration-track:8a9b463ad286aa492c11036da853df10c9a043c79a5ccf18cb193d1a854641e0` |
| 17 | `instance` | [Balanced.dec](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/balanced-dec.md) | 179 | `declaration-track:7b985a87c11e4aafd2ee3391e5e6fb4c904bdc63290148919d6f80a8bcd704b8` |
| 18 | `theorem` | [BalancedSz.symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/balancedsz-symm.md) | 191 | `result-track:3b3d3064382f1b5f2db4570fa0df3001e2eb8829d3f38af8a5c6c9e07dee1f97` |
| 19 | `theorem` | [balancedSz_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/balancedsz-zero.md) | 195 | `result-track:bfd62e1b3ddd7f12870fca3068525a2812ebd3a39e83c41188d14c24997e747e` |
| 20 | `theorem` | [balancedSz_up](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/balancedsz-up.md) | 199 | `result-track:40fbed07eff6b5de65301d2bac6a3415a8b4d910c9f0929abf724ed2d69c5156` |
| 21 | `theorem` | [balancedSz_down](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/balancedsz-down.md) | 212 | `result-track:0959d9c156371e302c827e7e725ad0786200d1d0d6484e9bad374fa9ebcc7a7a` |
| 22 | `theorem` | [Balanced.dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/balanced-dual.md) | 218 | `result-track:32004c88883cf4c72fc9d961f4157466dd2c0c598662815736ffb7a98aa9ccff` |
| 23 | `def` | [node3L](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/node3l.md) | 227 | `declaration-track:2d97d6bc7d71377d46743fdb8526a8cc4c76110d61527ba4a4ecb86210a0cd53` |
| 24 | `def` | [node3R](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/node3r.md) | 232 | `declaration-track:9306ce34bb4b19f643d7b33f64fabad33cb1cda87fcd91812217ce340af7c76e` |
| 25 | `def` | [node4L](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/node4l.md) | 237 | `declaration-track:b9a4b56ca6b91cf9331cc082a0c77e5b234c2bd964d4536f8955306d9ba0607a` |
| 26 | `def` | [node4R](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/node4r.md) | 244 | `declaration-track:179b620b0e2b5c6008fe2e1b821f18299d9db90168dd82c16b3798cde7dd6818` |
| 27 | `def` | [rotateL](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/rotatel.md) | 252 | `declaration-track:85d774dde3c0528042c59b85c414741fea9adcf7d99fef0d7f373ff9d4c9377d` |
| 28 | `theorem` | [rotateL_node](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/rotatel-node.md) | 257 | `result-track:e53832fb8b689842282a67d342f2c42a7febebc3f6a4d0276114b92fd7162eff` |
| 29 | `theorem` | [rotateL_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/rotatel-nil.md) | 262 | `result-track:a60df1d290815e9be661cdac286ee719cfc988bfd8cbe737a60c223fe7562fa2` |
| 30 | `def` | [rotateR](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/rotater.md) | 270 | `declaration-track:43fa00b0eccfbb98698d530edfd681a54720d7af9678c3bbfbca04b4a6d27075` |
| 31 | `theorem` | [rotateR_node](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/rotater-node.md) | 275 | `result-track:db7f0a38b61b62a7ca318fb9d112b61ab8336ef96d95b432d23107622080ee66` |
| 32 | `theorem` | [rotateR_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/rotater-nil.md) | 280 | `result-track:9f570dba0941860b42d3b0284c73d690bd6de1ebd5f6cff297edbbbda4ecaed2` |
| 33 | `def` | [balanceL'](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/balancel.md) | 288 | `declaration-track:ba22c25f9cda34fd578d8a426007a877b3fdeb048b2189abfa04a20530d5c0c8` |
| 34 | `def` | [balanceR'](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/balancer.md) | 295 | `declaration-track:c01272cf50e49592316ae7df28f65924beffa5e2f7bbbc70d3acdec7277138ec` |
| 35 | `def` | [balance'](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/balance.md) | 302 | `declaration-track:b9b0003b10bc8499646a58d16e196d8d55c05140bfe04ced47c060e68b299c36` |
| 36 | `theorem` | [dual_node'](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/dual-node.md) | 309 | `result-track:d340717dcc3102aa70739ebca4aa0b6698e18594f4943c135d0b0e778ce4d025` |
| 37 | `theorem` | [dual_node3L](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/dual-node3l.md) | 313 | `result-track:4d18311a83d0bacf0a3a05d9519725a06e9a89f9372aa03991b90902a7323a6e` |
| 38 | `theorem` | [dual_node3R](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/dual-node3r.md) | 318 | `result-track:120a4d3d6067343d7dbc02a333bca442ca54a82fccbf8fb47f507787b898bf04` |
| 39 | `theorem` | [dual_node4L](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/dual-node4l.md) | 323 | `result-track:80b0d32efbd866c11cdcceb8eadb1bd4a838dd073d31aaf7db65234ca92836f2` |
| 40 | `theorem` | [dual_node4R](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/dual-node4r.md) | 328 | `result-track:2f7b3261a328f749b99bbd5e754c20f50a21d2cafb616597df8fb63521a90dd3` |
| 41 | `theorem` | [dual_rotateL](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/dual-rotatel.md) | 333 | `result-track:2215ab3ab6a720b615696af60948cc4c3a8eb372a19498ee73cdae7b5a0a14a6` |
| 42 | `theorem` | [dual_rotateR](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/dual-rotater.md) | 339 | `result-track:cb58ab0cb5747681ca0bdc92f90ba70369de8dcb7bfed25d2d7d8983ffc7d321` |
| 43 | `theorem` | [dual_balance'](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/dual-balance.md) | 344 | `result-track:6145ff9811bb7b651c0483ec858459d2d2170bfdbe55647b121a8a9d8c9501b4` |
| 44 | `theorem` | [dual_balanceL](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/dual-balancel.md) | 351 | `result-track:e552a57773ac69cbb9e4c56df116b3501e4b987eefb6c3c179fb61f0da86bdfd` |
| 45 | `theorem` | [dual_balanceR](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/dual-balancer.md) | 367 | `result-track:87951edb7a3bcec82b0e282c6bb5ab57a2e71e090909d3b8fe684047d510bdf2` |
| 46 | `theorem` | [Sized.node3L](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/sized-node3l.md) | 372 | `result-track:abc694b15fc62095d8248f3b92c26fc04e57a1bf4900b792ab9a8e6fa04e3981` |
| 47 | `theorem` | [Sized.node3R](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/sized-node3r.md) | 377 | `result-track:2a5fc51e0bb72123e296dd527c13fd26190f1adfe912fcc1c27930e5f88a8c45` |
| 48 | `theorem` | [Sized.node4L](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/sized-node4l.md) | 382 | `result-track:b25bcb1e5dbbf5f3b3c4d7418debe3ffeb6c05a4f906b46b3dd7d20d8232faf9` |
| 49 | `theorem` | [node3L_size](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/node3l-size.md) | 387 | `result-track:ccf3ccc7e3caada3cde698253b49b60bf40f97e5811a6766a58b08cf4067362c` |
| 50 | `theorem` | [node3R_size](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/node3r-size.md) | 391 | `result-track:d0ef17d18cb5c7bd57927934afe66a76851811262155465c43b789f62afbcb20` |
| 51 | `theorem` | [node4L_size](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/node4l-size.md) | 395 | `result-track:40c9160a145ebbe05ef48a9be8c8f3836476fad3db150b6c4da9a2a2aade5e2b` |
| 52 | `theorem` | [Sized.dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/sized-dual.md) | 400 | `result-track:e1c114740bc9bce80459a543c4b19bcb6cba5f42f0ed84e7a0f7059d2ca35610` |
| 53 | `theorem` | [Sized.dual_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/sized-dual-iff.md) | 405 | `result-track:4d982c66bab48e45fc5660e3da40dce5749f4d4f28a6e5cc9378fd7263022267` |
| 54 | `theorem` | [Sized.rotateL](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/sized-rotatel.md) | 409 | `result-track:820ea4f29a437ca409f7faec58185d3042203f79e26d8d9361017eb0867dcec1` |
| 55 | `theorem` | [Sized.rotateR](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/sized-rotater.md) | 416 | `result-track:42cccb6453c51c41a58c81eac9564e43a7796f31f609ad4a00264f24a945bec1` |
| 56 | `theorem` | [Sized.rotateL_size](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/sized-rotatel-size.md) | 420 | `result-track:4de5934f8779e0a2945284696a281a81968192af51d9f4e372a95c26e11ed1dd` |
| 57 | `theorem` | [Sized.rotateR_size](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/sized-rotater-size.md) | 427 | `result-track:cd8e3ca77a677561865360d8311e4582d8e4f83dabe28b9403f7915290d8fe4b` |
| 58 | `theorem` | [Sized.balance'](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/sized-balance.md) | 432 | `result-track:19e84903f19780bbfb7fc7e50ffb883c32f0a35482ef7866b928b72297efc75f` |
| 59 | `theorem` | [size_balance'](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/size-balance.md) | 440 | `result-track:8245feff47e385d272f56dddebb3a9187195ed47744c81a1fb1f7e2fa053dc72` |
| 60 | `theorem` | [All.imp](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/all-imp.md) | 452 | `result-track:0777efb326d41d6b8d89a117facfebcf6476d0472acb5507c1b0e9babe69265c` |
| 61 | `theorem` | [Any.imp](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/any-imp.md) | 457 | `result-track:4410d7fc7ccac1c7eec6fe798a45ee1b1d7465ec9cf5962eec576fdc02e5fc62` |
| 62 | `theorem` | [all_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/all-singleton.md) | 462 | `result-track:782e134da83819a0f5635c2ce60428e2ce1d1fbaa13009f4a49e3e6b5548bbdf` |
| 63 | `theorem` | [any_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/any-singleton.md) | 466 | `result-track:f0d29805e8122d74f056116693d92c7f26932ca57afa0775286b04e20793ee04` |
| 64 | `theorem` | [all_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/all-dual.md) | 470 | `result-track:002be0e1f8b3254a1266ad4e94aaddcec8439b1e781ebf91c3878aa58e27c475` |
| 65 | `theorem` | [all_iff_forall](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/all-iff-forall.md) | 477 | `result-track:51adacd80814f2c017681453aa0d900d5121307d6d5348fe0021445a7686e031` |
| 66 | `theorem` | [any_iff_exists](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/any-iff-exists.md) | 482 | `result-track:c403d7b837b86edf4606d65923a7065d60455799af3972d043368526a995f79c` |
| 67 | `theorem` | [emem_iff_all](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/emem-iff-all.md) | 487 | `result-track:138e0f85432c73091b11842965e71c62b80d24d8232d2d3e9b0edf24ab1b11a2` |
| 68 | `theorem` | [all_node'](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/all-node.md) | 491 | `result-track:f2035d32001b09b2bc7773312f5b02005ae0cf8249b846f21d1d2559ffada84c` |
| 69 | `theorem` | [all_node3L](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/all-node3l.md) | 495 | `result-track:0c5f4c2e003e82623b8b8a759c0bf8aacb0f50a96608fc73638615aab12ec82b` |
| 70 | `theorem` | [all_node3R](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/all-node3r.md) | 500 | `result-track:0f3d67bc4fc145090402d77d7e30f650572c6a4dd51b4eb8243b5baba98b2f6d` |
| 71 | `theorem` | [all_node4L](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/all-node4l.md) | 505 | `result-track:4aaa53c77ee556269a147062cc744427bf6a1e0c3831882fc7e5d52dddc0a2eb` |
| 72 | `theorem` | [all_node4R](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/all-node4r.md) | 510 | `result-track:b654c17fd3bf17cdf89983d8dfdac4f625bbdf3e0e1f8238e3ee4e4339375922` |
| 73 | `theorem` | [all_rotateL](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/all-rotatel.md) | 515 | `result-track:32a92d572b5f3cd5ff114f876bdf9f793a30e4a03f5f4ff9a1ebff3c41dfde0c` |
| 74 | `theorem` | [all_rotateR](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/all-rotater.md) | 520 | `result-track:582f612b240565c57761909575283f468cc5cbe790e5af41ee30a0b05a720844` |
| 75 | `theorem` | [all_balance'](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/all-balance.md) | 524 | `result-track:15d8318107f19466ad4c97ba708829074594510092e7ffd8affc1638fc405c3f` |
| 76 | `theorem` | [foldr_cons_eq_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/foldr-cons-eq-tolist.md) | 531 | `result-track:21e6dc17388f9841000b8f5f6836d2b4ab0a92e4cbf0852a3ba1384a27c6cf0b` |
| 77 | `theorem` | [toList_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/tolist-nil.md) | 539 | `result-track:f2c4d0d892c2838ced450be522641ac29d388438b12257d18b0a8d4105142deb` |
| 78 | `theorem` | [toList_node](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/tolist-node.md) | 544 | `result-track:2d59631d341125926ea8270c347b36eee57f865ccca7b07f459371479d7f079f` |
| 79 | `theorem` | [emem_iff_mem_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/emem-iff-mem-tolist.md) | 548 | `result-track:3ab05475f23d82f2d706982d901965beed90c5841c402de9dd58604a9dc441b1` |
| 80 | `theorem` | [length_toList'](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/length-tolist.md) | 552 | `result-track:633d44dc737286f91aa0fa8f367d314f1622077c164b605d3c88fd17277a4942` |
| 81 | `theorem` | [length_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/length-tolist-source-edition-2.md) | 559 | `result-track:b0d29f19ab2c3b843fdddff127bb44be089bd4080a682b7281b28a4b36b1823c` |
| 82 | `theorem` | [equiv_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/equiv-iff.md) | 563 | `result-track:8249d009f74ffa070c5863caf9c4027299dad2528569a0de4e38e224065cc355` |
| 83 | `theorem` | [pos_size_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/pos-size-of-mem.md) | 571 | `result-track:0dce9b1ff81887293da7db9b8bec3ec420c8b735597cb31fd5a6ba26f5c143e0` |
| 84 | `theorem` | [findMin'_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/findmin-dual-source-edition-2.md) | 578 | `result-track:d86a579d609ea7abade63781c81828bc3998ce83c84355a5be1e07e1bfc698b9` |
| 85 | `theorem` | [findMax'_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/findmax-dual-source-edition-2.md) | 583 | `result-track:fad97cf45b559071571b929329a13595dce163ef955cf8285948a93784b6bb10` |
| 86 | `theorem` | [findMin_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/findmin-dual.md) | 587 | `result-track:607533bc55a3589b5536193040545bd8f11fafb74e1d1fc77c24d1789ba515e3` |
| 87 | `theorem` | [findMax_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/findmax-dual.md) | 592 | `result-track:e3526848200dc022ae29445e0509781d23c052b4339abd5c6aa75cc40a99703b` |
| 88 | `theorem` | [dual_eraseMin](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/dual-erasemin.md) | 596 | `result-track:41efe140e95c4ba5d0d16f65f48c98204b3de6f19423afb3a0a735375d7766c4` |
| 89 | `theorem` | [dual_eraseMax](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/dual-erasemax.md) | 603 | `result-track:d1ebb5497dcf84ac98bfe2482db9b89e0faebf37c5104dfa1e2e1df6104cd7d0` |
| 90 | `theorem` | [splitMin_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/splitmin-eq.md) | 607 | `result-track:a63e6e22a6e6c9d94164d18ce6c994ccfa9b10858993e6563437a2c8d4eaf6f5` |
| 91 | `theorem` | [splitMax_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/splitmax-eq.md) | 613 | `result-track:81c30a9b5fa52794c4fe5acccd15316c3ee43402eebcfee062bf2a8d8ae4931f` |
| 92 | `theorem` | [findMin'_all](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/findmin-all.md) | 620 | `result-track:2983123aef9911c6ab43508806f855ca4b6af252fc93f579e4a7539ad2a144d1` |
| 93 | `theorem` | [findMax'_all](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/findmax-all.md) | 626 | `result-track:aae199d859d11295ecbd6f785bdff6a28ec56d97e8e5209decd9ff911724fade` |
| 94 | `theorem` | [merge_nil_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/merge-nil-left.md) | 638 | `result-track:ec6bb7dd4f933f8a11802b21accc80eb60c03757bd637f0d27b6c76f25fe2c73` |
| 95 | `theorem` | [merge_nil_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/merge-nil-right.md) | 642 | `result-track:c8808ce0e5e600fb5cbf1131806bf13defdbeeb903533de7fa5d32d3b1eb0d17` |
| 96 | `theorem` | [merge_node](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/merge-node.md) | 647 | `result-track:80a0be37d7283953adb8d3a04c24cb79e42cddac4a5854690fb096d6952e9eae` |
| 97 | `theorem` | [dual_insert](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/dual-insert.md) | 658 | `result-track:2686ae1a764fb15e4e09ef713dda7d02d9db32e28c6c56c79bebed3d3f659874` |
| 98 | `theorem` | [balance_eq_balance'](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/balance-eq-balance.md) | 671 | `result-track:be3fbba5398ef45c486964fe7d499dd6db16299497664edac1db7fb1c03c61b1` |
| 99 | `theorem` | [balanceL_eq_balance](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/balancel-eq-balance-source-edition-2.md) | 759 | `result-track:6aec0c55b05e94db9428026f32ae684db2b3f76b9612452778468208138e84bf` |
| 100 | `def` | [Raised](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/raised.md) | 776 | `declaration-track:73c2188636ca59256666e79ee4a0de26c500f8a1b0efcdbfcd9a4fbc121338f5` |
| 101 | `theorem` | [raised_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/raised-iff.md) | 780 | `result-track:fdc99673a36a6b2ffc246e1af64a8f16986f69ff716e6b6b4b73185bfad44167` |
| 102 | `theorem` | [Raised.dist_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/raised-dist-le-source-edition-2.md) | 790 | `result-track:69ef798c3899cafcf4bb1b45a24e199b12d00776866bfba42659069d3d081097` |
| 103 | `theorem` | [Raised.dist_le'](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/raised-dist-le.md) | 794 | `result-track:21ea6b507f9f39db8e4804d3847fc66281c61d24c803b9b733e95e810134e79a` |
| 104 | `theorem` | [Raised.add_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/raised-add-left.md) | 798 | `result-track:d49442ac1d630b82bda82f56f1e876951da898024f3b90a47e3bad7f5bc80498` |
| 105 | `theorem` | [Raised.add_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/raised-add-right.md) | 804 | `result-track:0f2b61fb66e133f0e02e5e00aed183c209cffb442a7629f8bf3fad2e77e4501a` |
| 106 | `theorem` | [Raised.right](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/raised-right.md) | 808 | `result-track:6e59e93d3e6800f4ef9922c3098d1737057ce397fdc04a926f5c8e4e96cb0334` |
| 107 | `theorem` | [balanceL_eq_balance'](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/balancel-eq-balance.md) | 816 | `result-track:31e98f13a8c4a2269e774d4e70a32d2d27499174ce1220f12c75adc17df3d224` |
| 108 | `theorem` | [balance_sz_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/balance-sz-dual.md) | 835 | `result-track:657d0d6d5bba428942b0d90b3963023ef4a00767329be9445828ea9c68eebec8` |
| 109 | `theorem` | [size_balanceL](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/size-balancel.md) | 846 | `result-track:ed33ab9deee9903710e1898d75a11af360fcc32dc223170159edb56d968e99e5` |
| 110 | `theorem` | [all_balanceL](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/all-balancel.md) | 853 | `result-track:9e50b6404072b6a02d82b022b57c09decb2b06e3745e30acc400cac906176cdf` |
| 111 | `theorem` | [balanceR_eq_balance'](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/balancer-eq-balance.md) | 861 | `result-track:6aac4d92e6e4af4d44ce3b5613221921869ac29f7e4aaa033780e54c7ea46f3a` |
| 112 | `theorem` | [size_balanceR](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/size-balancer.md) | 871 | `result-track:dcc7d97dc94f87f5ce91e382a01c24c95c83cdacd5fddceae24373a409100c9a` |
| 113 | `theorem` | [all_balanceR](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/all-balancer.md) | 878 | `result-track:c70c92a1d93a3512f47b4456b63eacd04f83acce13dda984921cc0342a39a6b2` |
| 114 | `def` | [Bounded](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/bounded.md) | 896 | `declaration-track:05da37826b16146ff049f2ee66e34dc87bcbd9367f658b208f8234133a0aeb56` |
| 115 | `theorem` | [Bounded.dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/bounded-dual.md) | 902 | `result-track:80c446e852aa54a3686983ebd8ade83da47364d10ae5a027242d0340ce119180` |
| 116 | `theorem` | [Bounded.dual_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/bounded-dual-iff.md) | 908 | `result-track:3e69c061a6c8fe0c345ee292263fc8557a6882f23b0cab35ee94e259a1401e2f` |
| 117 | `theorem` | [Bounded.weak_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/bounded-weak-left.md) | 914 | `result-track:222e25443055b7b284bcd4b5603f38cf8db4ceab9cd7c5d8e2f8dc5b2d306d59` |
| 118 | `theorem` | [Bounded.weak_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/bounded-weak-right.md) | 919 | `result-track:4cb2bb6247d1f7962585cf9725032465bca56bd4e18d4cf56c381acbd89e5fc8` |
| 119 | `theorem` | [Bounded.weak](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/bounded-weak.md) | 924 | `result-track:5a850d380db63350d22abb359b15885dcc453e043f000444267e9743f83d9f96` |
| 120 | `theorem` | [Bounded.mono_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/bounded-mono-left.md) | 928 | `result-track:3c3807cd6789ff44a7af44223c2f26c471b4f80547ac2329973d947834073b44` |
| 121 | `theorem` | [Bounded.mono_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/bounded-mono-right.md) | 935 | `result-track:1382b61e085990364febef2d97f47f88dd9c8775ba40351635cf49b253f67c22` |
| 122 | `theorem` | [Bounded.to_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/bounded-to-lt.md) | 942 | `result-track:311e7d5c910d82697fa65e94a958e9cf4a21ffcfb119c5ef077dc0cb38cedc68` |
| 123 | `theorem` | [Bounded.to_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/bounded-to-nil.md) | 947 | `result-track:c350a656c18d1c161a168c7af80e27f1e1e9beade149d0b9ea22e3c8b5f0f196` |
| 124 | `theorem` | [Bounded.trans_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/bounded-trans-left.md) | 953 | `result-track:2845320117afcc4a57ceaa7d835f0b0729d5e6ba2346b4bb09fc6b34b02fda59` |
| 125 | `theorem` | [Bounded.trans_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/bounded-trans-right.md) | 959 | `result-track:d29e57575111d8cfb0c10621d3b4ac288bf0f4e21fb6daa55e5f5145a686e569` |
| 126 | `theorem` | [Bounded.mem_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/bounded-mem-lt.md) | 965 | `result-track:283ec2e757381382953a22a5585462d8fe4e1c0aa0b3c386ca6923a19ffc477a` |
| 127 | `theorem` | [Bounded.mem_gt](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/bounded-mem-gt.md) | 971 | `result-track:e6713a78fd14324ced56962361697af8e15d52217c1945afcfd83f7e77f719b9` |
| 128 | `theorem` | [Bounded.of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/bounded-of-lt.md) | 976 | `result-track:8e40b8d2cc6a45d0d6e0fe22f41039ea155e0b6745b38222213cd7b34f870d71` |
| 129 | `theorem` | [Bounded.of_gt](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/bounded-of-gt.md) | 982 | `result-track:8b7085645dbf74ecf48595d977a71259150757bde0fd21fd146e39bd0d77fb7d` |
| 130 | `theorem` | [Bounded.to_sep](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/bounded-to-sep.md) | 988 | `result-track:9fa96e1a45fb4f8a57e6ed0e57087429614e1318a8416d2dfce7397d08ed2151` |
| 131 | `structure` | [Valid'](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-source-edition-2.md) | 1007 | `declaration-track:d3c155ba51bdf73ebaed95781877bb518ac28643946ca194e57cc90db965e09c` |
| 132 | `def` | [Valid](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid.md) | 1019 | `declaration-track:40871aa9f7e73268e0a6c231de55e5f5bf6892e5891e7274b15f32f111c3f0e3` |
| 133 | `theorem` | [Valid'.mono_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-mono-left.md) | 1023 | `result-track:a483f2873832b2798f286f597d63f87b60618b50a7e289f6c8970d6bffd0c66c` |
| 134 | `theorem` | [Valid'.mono_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-mono-right.md) | 1028 | `result-track:eb762652c6130e98163321c4ec062328bfed136c86a739399daa3e45098fc288` |
| 135 | `theorem` | [Valid'.trans_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-trans-left.md) | 1033 | `result-track:d4eb181611617e41a0a9f324a1e36c665da7f93a0fd1d287b74fa36deaaddaf5` |
| 136 | `theorem` | [Valid'.trans_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-trans-right.md) | 1038 | `result-track:0c9c107a03e1ceb0d3412f50b1f4183fc5e1ed4fa4be09c26b4ecb83e78c3983` |
| 137 | `theorem` | [Valid'.of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-of-lt.md) | 1043 | `result-track:2b36c30e27e39cddc3c2e182d7a6f942d9c46b99c8de2631548913ba6e2bf3dd` |
| 138 | `theorem` | [Valid'.of_gt](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-of-gt.md) | 1048 | `result-track:84ceeb91009dd57ef64a31298464de4a1d251f311a6c1a3f3b75ffd3da92328c` |
| 139 | `theorem` | [Valid'.valid](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-valid.md) | 1053 | `result-track:80fbafe0e7d8600a5825b4b05b41a1140c496abd43c93bc3b875ebb4d5e4ba94` |
| 140 | `theorem` | [valid'_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-nil-source-edition-2.md) | 1057 | `result-track:086e7a85bbf4787400acd257ec905bc2e3353fd70fbf9d5b01922100a5048cc7` |
| 141 | `theorem` | [valid_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-nil.md) | 1061 | `result-track:01d99deba46db25d6c9d1264b79b3fd1f6d53cc37c23d532bb9a5586e532e1fc` |
| 142 | `theorem` | [Valid'.node](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-node-source-edition-2.md) | 1065 | `result-track:28d6eef0d134d1b766f15eaa380a1fac0605ebdd89bd54cc28eec809ea91dc06` |
| 143 | `theorem` | [Valid'.dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-dual.md) | 1071 | `result-track:30b162c7e97bf7955a5f8997ff2f9ce352c33845241d4a0bac4af4d9f974f91e` |
| 144 | `theorem` | [Valid'.dual_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-dual-iff.md) | 1080 | `result-track:0e9d1e920631570fca31416b3dd755bf2899f2238f267651be250f5ea48ca575` |
| 145 | `theorem` | [Valid.dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-dual-source-edition-2.md) | 1085 | `result-track:faf5eee367c77b70eddab9e84739aac91efc224f01f615b5c392119d4cd2cb85` |
| 146 | `theorem` | [Valid.dual_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-dual-iff-source-edition-2.md) | 1089 | `result-track:71d1faa642c2b4988e7538f71810b419ae8d905ab10764aa6892c206d70033d5` |
| 147 | `theorem` | [Valid'.left](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-left.md) | 1093 | `result-track:91636b48ef6d5f326a39ae6aefa89096732aac4c1ed5464176c7ad333ffbc8be` |
| 148 | `theorem` | [Valid'.right](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-right-source-edition-2.md) | 1097 | `result-track:8c4d6dfa6e58b7c8d45f3cf0fc51d599a48ab5c717cd3bf9485cbf456bb17f47` |
| 149 | `theorem` | [Valid.left](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-left-source-edition-2.md) | 1101 | `result-track:e9cf7c85cc6e200509016ce2107fed45574a25585450b470237229f3d221b72d` |
| 150 | `theorem` | [Valid.right](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-right.md) | 1105 | `result-track:40eda79170d12ba54ef4bf7a08e2c70bf899f4d026b9d4e4bccbbd3f0710a2b4` |
| 151 | `theorem` | [Valid.size_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-size-eq.md) | 1109 | `result-track:be19850f2c413cc26ad3af39da253c1844225abc6b0f485cd45a0335a23b046f` |
| 152 | `theorem` | [Valid'.node'](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-node.md) | 1114 | `result-track:175a51a60a0cdda70d269dcf11b9d60ba568daaf29b6c06b2e525820364cc75f` |
| 153 | `theorem` | [valid'_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-singleton.md) | 1119 | `result-track:57a685ee4af3b7195a1c95121cbb80a421c95360743841731a4ffb41f2d5cc3e` |
| 154 | `theorem` | [valid_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-singleton-source-edition-2.md) | 1124 | `result-track:e4e576e7e771e473975d88f3015af3059978606baa63157de2d2f104e61231f1` |
| 155 | `theorem` | [Valid'.node3L](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-node3l.md) | 1128 | `result-track:8a1853476ba2f37e5cb618867b199846a3bfe9343a34c48a9dbdff660e3b2ed4` |
| 156 | `theorem` | [Valid'.node3R](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-node3r.md) | 1134 | `result-track:8216b830584c3f7efe2389f4e25be58670e30fa3bf3df2481571f3aaad711f1b` |
| 157 | `theorem` | [Valid'.node4L_lemma₁](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-node4l-lemma-source-edition-5.md) | 1140 | `result-track:b931343bf9cdad7268150d8cada497d27f0916a229a3e4f3f307d0eb43e3b810` |
| 158 | `theorem` | [Valid'.node4L_lemma₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-node4l-lemma-source-edition-2.md) | 1144 | `result-track:5b84fc5d2359e168ebf0a8be5ef0a5071a23155f9c40623f4c042d3aa6cebf68` |
| 159 | `theorem` | [Valid'.node4L_lemma₃](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-node4l-lemma-source-edition-4.md) | 1147 | `result-track:b6bccbfdc3d8e66de982c6046ef8d5859e2c3cb5b95f5b2af35a72148663444b` |
| 160 | `theorem` | [Valid'.node4L_lemma₄](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-node4l-lemma-source-edition-3.md) | 1151 | `result-track:6238118fa75a1498ef1bca0deb701fbbfe1aff283bf29c6377b93219be64dfe2` |
| 161 | `theorem` | [Valid'.node4L_lemma₅](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-node4l-lemma.md) | 1155 | `result-track:21b798e851ca97297b7fc011c2fed4e28bd3b79003dd45bd7af903c6866e1d3c` |
| 162 | `theorem` | [Valid'.node4L](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-node4l.md) | 1159 | `result-track:4416de2ce136425f0fc2d1404c09b8b36e1258959bd3d9ac59469c1f9b3c0787` |
| 163 | `theorem` | [Valid'.rotateL_lemma₁](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-rotatel-lemma-source-edition-2.md) | 1217 | `result-track:0d584b694495172c9606fc58402ef4bd5e12fe4b02e888bebbf47147cd355b32` |
| 164 | `theorem` | [Valid'.rotateL_lemma₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-rotatel-lemma.md) | 1221 | `result-track:0ac9746b1d5b8b1ce28414c2693e926c03cab8d3abe964da6d14ef90e8b0236d` |
| 165 | `theorem` | [Valid'.rotateL_lemma₃](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-rotatel-lemma-source-edition-3.md) | 1225 | `result-track:f81efcff2726ab606b4a14de45935857b97cb28b94e4e7a7187e0df2ac64fd1e` |
| 166 | `theorem` | [Valid'.rotateL_lemma₄](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-rotatel-lemma-source-edition-4.md) | 1229 | `result-track:feb2bc2b8f7039b2e3cd5955f2ddbda35b72033e6502737c93e1474295962034` |
| 167 | `theorem` | [Valid'.rotateL](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-rotatel.md) | 1233 | `result-track:e49ac14ace1705af659e7a446c5d9c5e8bdbe636cddb738e2f30e02ef571d256` |
| 168 | `theorem` | [Valid'.rotateR](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-rotater.md) | 1293 | `result-track:40a6dfee8f09cbdf05ad36e5f41eee4b514e92e0e28c8d01e35ce4ccfb267724` |
| 169 | `theorem` | [Valid'.balance'_aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-balance-aux.md) | 1304 | `result-track:289f3de99012d1fd06489bf8587f4e9a33072d7da5f60abf9dad303fc78ba3a2` |
| 170 | `theorem` | [Valid'.balance'_lemma](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-balance-lemma.md) | 1314 | `result-track:858d6eca0b6b50ba2bcdb703a09cd702e94823960edaa20e6197cdd094c66744` |
| 171 | `theorem` | [Valid'.balance'](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-balance-source-edition-2.md) | 1333 | `result-track:e4eefc53de68d574e16c8666435df543d1a21fa4df586dc354465a62e2671caf` |
| 172 | `theorem` | [Valid'.balance](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-balance.md) | 1341 | `result-track:9cb8e8f1ccc787ea98bbbea5bca0d6730f093603f2449fbd64ee4f36872c42a1` |
| 173 | `theorem` | [Valid'.balanceL_aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-balancel-aux.md) | 1348 | `result-track:12c8869c791134be1d600536e12452a8263ea7b796a04d6d7007af10e60d0df8` |
| 174 | `theorem` | [Valid'.balanceL](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-balancel.md) | 1360 | `result-track:d4dd33e6f5cd829530082498eb83df9362721e6d4cad001e8de37fb0ece06205` |
| 175 | `theorem` | [Valid'.balanceR_aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-balancer-aux.md) | 1371 | `result-track:c9c3e4229fa6c607e893ab7ae5f3b67d2c17497ae59cf4e74d69ac0161ab7ce9` |
| 176 | `theorem` | [Valid'.balanceR](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-balancer.md) | 1380 | `result-track:ad92e647346c0cfc88c1c974ece2557f2f59d3f1cea0782fd6bcf9d1924f658f` |
| 177 | `theorem` | [Valid'.eraseMax_aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-erasemax-aux.md) | 1387 | `result-track:918f38fdcb1af04512177590c615a2b5defaebe3b0bb2c283e501ab224eea7fd` |
| 178 | `theorem` | [Valid'.eraseMin_aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-erasemin-aux.md) | 1400 | `result-track:eb9ea837370bcb92ba04c07ab3a8c5656807188fd70966ea04b6b80cd39da4ad` |
| 179 | `theorem` | [eraseMin.valid](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/erasemin-valid.md) | 1408 | `result-track:f2e197359dd0c267f2601f56b6125b6dda0d9cc4fb8301f763e517fca7ae35ce` |
| 180 | `theorem` | [eraseMax.valid](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/erasemax-valid.md) | 1413 | `result-track:b3b93da5e2efdf58c652454dfac9259095e332e3b1581ac90fec8912caa23572` |
| 181 | `theorem` | [Valid'.glue_aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-glue-aux.md) | 1417 | `result-track:8ed837caa06ff1b72cc6c442f21bbd1b29ca9c61a6c2b40028d2ab5284ca8465` |
| 182 | `theorem` | [Valid'.glue](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-glue.md) | 1450 | `result-track:1368665f938c6e71c0aac694876895fe3b9f96c4b7bc479ea501074ad645490a` |
| 183 | `theorem` | [Valid'.merge_lemma](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-merge-lemma.md) | 1456 | `result-track:71959a559f048427e46c55700492015107838e60213818590460c0813f5140d9` |
| 184 | `theorem` | [Valid'.merge_aux₁](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-merge-aux-source-edition-2.md) | 1460 | `result-track:f8efc121b9c03d4f546af9b5eab6ed1f45bd48dd527748784074c19ce4ff1d56` |
| 185 | `theorem` | [Valid'.merge_aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-merge-aux.md) | 1477 | `result-track:da62213c98bb1cdf154715c9c5e74a0b2cf199e59bbacd3f561d8b760a777974` |
| 186 | `theorem` | [Valid.merge](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-merge.md) | 1498 | `result-track:28a71dfc6f1338d0bec5baff5ebef7659c5ef065673f97025531385a57a46390` |
| 187 | `theorem` | [insertWith.valid_aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/insertwith-valid-aux.md) | 1503 | `result-track:c2bcffaffdb7e7895f36fafb3feec40f01ebfcda86cc6229f1ac7f531b7c13c4` |
| 188 | `theorem` | [insertWith.valid](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/insertwith-valid.md) | 1533 | `result-track:46a4dc8324d5f5a6e3472ac59790de95daa42a5d71e803915167ada7ec4c0bc6` |
| 189 | `theorem` | [insert_eq_insertWith](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/insert-eq-insertwith-source-edition-2.md) | 1538 | `result-track:4981abb9c0805c48b09ec78a2749992d932d4c1cdfb8d74e4160c0d65cacd1d9` |
| 190 | `theorem` | [insert.valid](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/insert-valid.md) | 1545 | `result-track:410f6f54b08287ba37c7bbd163aae62afc22a7d1d84708eb1a62c6fe18f3baf4` |
| 191 | `theorem` | [insert'_eq_insertWith](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/insert-eq-insertwith.md) | 1550 | `result-track:02b2f64f6fb44cb1c98551364869d002c18099b077bd2161c66df720ec3ee868` |
| 192 | `theorem` | [insert'.valid](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/insert-valid-source-edition-2.md) | 1557 | `result-track:60018444aaa16c04cf6be591e3756ab4cc9674ecbe8f761a54f908d753f18692` |
| 193 | `theorem` | [Valid'.map_aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-map-aux.md) | 1562 | `result-track:660bafc4b6aca2a46cd8f66804aa79991b6b8c36da31f424b2aec98fb9363ae4` |
| 194 | `theorem` | [map.valid](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/map-valid.md) | 1593 | `result-track:e19cf7cdd7fb12088439754e4b63c502f9de7249484e7f218ad9b4a2cabe8f7d` |
| 195 | `theorem` | [Valid'.erase_aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/valid-erase-aux.md) | 1598 | `result-track:49edef0a7a479829cb48bac226df0bc0b301f6125c448347942674a162d0d6c9` |
| 196 | `theorem` | [erase.valid](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/erase-valid.md) | 1633 | `result-track:d0e18850125e29f30e0a4c761ed77f336c29f65eff1427ec8a2b46b4a0333057` |
| 197 | `theorem` | [size_erase_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/size-erase-of-mem.md) | 1637 | `result-track:b2bb1d9e267441f7a16ecb07162c5b76d4f952bbb99a9fc0e90f905428f4b503` |
| 198 | `def` | [Ordset](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/ordset.md) | 1682 | `declaration-track:049a4c96e6cc8ee28aff8c8468bae5bfc42bce17cbc2b2f4292be23b32d53604` |
| 199 | `def` | [nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/nil.md) | 1693 | `declaration-track:159ebba07531ccc8337a7e299c1d231e259892f7cc8a90afb9fee4140e20bf94` |
| 200 | `def` | [size](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/size.md) | 1698 | `declaration-track:2a93f6f5c011d118a9bd7f3644be2eb84f17ea6bbb141c833f1f371a75ce32d9` |
| 201 | `def` | [singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/singleton.md) | 1703 | `declaration-track:d4f32139366d37d67f48df561490c4d57eaa4c18d6d4c6beb96b4e2b56fa4add` |
| 202 | `instance` | [instEmptyCollection](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/instemptycollection.md) | 1707 | `declaration-track:49e23fa70f2360b5e52ab9eed1fdd02bb14acbabb66312f717ccab62db25aeb9` |
| 203 | `instance` | [instInhabited](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/instinhabited.md) | 1711 | `declaration-track:af954a9fdf05d7beb8eec192c396b7fc90f2005a90cd3c9dc2616fb51b9b4644` |
| 204 | `instance` | [instSingleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/instsingleton.md) | 1715 | `declaration-track:af6e069127aa5acc7e7df9901de8da4325e2adfb907cdc20271153e86c253aea` |
| 205 | `def` | [Empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/empty.md) | 1720 | `declaration-track:26b23a4d3eec58cc51d170e2807a7591df9f426aebecfc5f6208ed0924bd2d45` |
| 206 | `theorem` | [empty_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/empty-iff.md) | 1724 | `result-track:e865ed08d596c1ca8b2d0080c774ba792816ea8d55120693f3eccfb829241e31` |
| 207 | `instance` | [Empty.instDecidablePred](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/empty-instdecidablepred.md) | 1729 | `declaration-track:96a90d76ee8064c98474d39bf1b72a939416a9f9dd2e5ae8a0c9ee0b52c7097d` |
| 208 | `def` | [insert](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/insert.md) | 1735 | `declaration-track:233d0538d7638729cc816efe5198b3365acb758b147bfa206e378f8303704fcb` |
| 209 | `instance` | [instInsert](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/instinsert.md) | 1740 | `declaration-track:423575c4874b3a51c6e0fd978e96d6e1231e5ed29144393dbf7df90a5a747de5` |
| 210 | `def` | [insert'](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/insert-source-edition-2.md) | 1746 | `declaration-track:d7cc2b40fe1478abdd4e7ad517d35435a3b8a11bc361fe728a5d27569c746834` |
| 211 | `def` | [mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/mem.md) | 1757 | `declaration-track:39f88428c78e83a208517ec18e43040a3103395f72077496e0af0837b8b812f3` |
| 212 | `def` | [find](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/find.md) | 1763 | `declaration-track:8b7d8a7bf8eafe26473df39659218085478d273af883c7f1840f21766d7458a3` |
| 213 | `instance` | [instMembership](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/instmembership.md) | 1767 | `declaration-track:98e8ce0e8f6a6ae95d64ce58082cf49aa0f09beaaceb6cd4eb200dd24581e3fc` |
| 214 | `instance` | [mem.decidable](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/mem-decidable.md) | 1771 | `declaration-track:6fab8e93d0cfd85ff3afcc93286a894f026110a1b4b8b0fa33149eedc730a73d` |
| 215 | `theorem` | [pos_size_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/pos-size-of-mem-source-edition-2.md) | 1775 | `result-track:8498204043c622683f7fe0f22bc9f0a6a34a4ceb6582735df287c606525a6bd1` |
| 216 | `def` | [erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/erase.md) | 1784 | `declaration-track:617ff97765e56c8043f7624a90bd6ac2202f2e073cf37ed6bd03fda25ec316f0` |
| 217 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/OrdsetNotLeDelta.lean/declarations/map.md) | 1789 | `declaration-track:c9aac5b4eca404a25ef8058bc69c220c2756b373d548130e4e3415c45d6e49f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c8d6535da70b945d283ef40e541b5643d087a16d5aa4ad573c5120655eb59c6f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Ordset/Varianta5672cdabf07354bda78eb786f8392f20a4585c7e0a46e6f63f544d8450d124c.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Ordset/Varianta5672cdabf07354bda78eb786f8392f20a4585c7e0a46e6f63f544d8450d124c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
