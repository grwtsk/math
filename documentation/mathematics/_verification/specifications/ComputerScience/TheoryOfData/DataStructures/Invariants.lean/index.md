# Verification target: Invariants

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d60e6f837c547ef8117f69ce51f166c83810a09",
  "lexical_observation_count": 130,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Invariants/Variant545a9323df8fc68971b95b22bb4c1ab5aeee8fe1d902eed3d964b9dff6c7690e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d60e6f837c547ef8117f69ce51f166c83810a09`.

Source path: `GRWTSK/Topology/MetricTopology/Invariants/Variant545a9323df8fc68971b95b22bb4c1ab5aeee8fe1d902eed3d964b9dff6c7690e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Invariants/Variant545a9323df8fc68971b95b22bb4c1ab5aeee8fe1d902eed3d964b9dff6c7690e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Nat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Dist` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Ordmap.Ordnode` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_le_delta](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/not-le-delta.md) | 55 | `result-track:d45747ca2d303f65d068fa3f06ecc0c6da221db4ca9b2bf24de15758a0efb70e` |
| 2 | `theorem` | [delta_lt_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/delta-lt-false.md) | 58 | `result-track:125435373678542a92a9db1021f4866227478847c99a09f6b0a30abab188d2dc` |
| 3 | `def` | [realSize](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/realsize.md) | 69 | `declaration-track:a75b3406123ec60f5517094b4c41a836349c51d8b340b47a688c21b34d493898` |
| 4 | `def` | [Sized](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/sized.md) | 78 | `declaration-track:322eb35bee2bc236fd351b185a3d9ae1affa3720242881c0f1797338f36a272b` |
| 5 | `theorem` | [Sized.node'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/node.md) | 82 | `result-track:f45522e038cc080a90aba47e59020b6ce1c5eb1640358380d944532f05dd4cc1` |
| 6 | `theorem` | [Sized.eq_node'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/eq-node.md) | 85 | `result-track:424bb70e8cb5ab9b8dcb7156ef0ba2d4e116b61b4c9b60b9ed06f182e028f0bf` |
| 7 | `theorem` | [Sized.size_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/size-eq.md) | 88 | `result-track:2467c60761bf9027985025b9b26043e0618545d1b012c7a6c8acfd8451c3ec0c` |
| 8 | `theorem` | [Sized.induction](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/induction.md) | 93 | `result-track:5771fd6a50b67b7e5498e4a9378066b1adf969532b6fc6d5d5e028063aaab715` |
| 9 | `theorem` | [size_eq_realSize](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/size-eq-realsize.md) | 101 | `result-track:89ae96cf39ce410fe8c8691e11f9bbbe11f38eab4e11b557be04153a6c776f75` |
| 10 | `theorem` | [Sized.size_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/size-eq-zero.md) | 107 | `result-track:34386c43ec4a50019cf940a07f3e949c9bfe6280a9c6da723fb49edca660b00e` |
| 11 | `theorem` | [Sized.pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/pos.md) | 110 | `result-track:bff21fefba4c968915bb3e4973d4f3a11615aa2be765b7322877bfaf474541f3` |
| 12 | `theorem` | [dual_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/dual-dual.md) | 116 | `result-track:77f5d7372c08a4eaea02d94e25df9f762cfd33f2accb9ca7b2ece40a025aa806` |
| 13 | `theorem` | [size_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/size-dual.md) | 121 | `result-track:c3f6860752ce87fe654b4d05bf3f81713b9a94b6e3fc2986caf47f41c08624f8` |
| 14 | `def` | [BalancedSz](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/balancedsz.md) | 129 | `declaration-track:f69ba1cf438267bbca67493e6077fff0345dfaf4241d390be6d59dfd8b6a1038` |
| 15 | `instance` | [BalancedSz.dec](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/dec-source-line-132-occurrence-2.md) | 132 | `declaration-track:83e8102187a481808d608ce7aada35349b30fd284fe53313d67e39547a2e9254` |
| 16 | `def` | [Balanced](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/balanced.md) | 136 | `declaration-track:2d18a085e28a73529899cf0249f0013f6d99d3b43dec66c14f75434c39fc97fc` |
| 17 | `instance` | [Balanced.dec](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/dec.md) | 140 | `declaration-track:6bd76347e9ce475e791b9e9255fb864356eb63697a686610441e5edd4e72a0e1` |
| 18 | `theorem` | [BalancedSz.symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/symm.md) | 151 | `result-track:10697fa227321145cca37ff961e1db5c1167b28b5f3aefe8832cf8b88b5efcf5` |
| 19 | `theorem` | [balancedSz_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/balancedsz-zero.md) | 154 | `result-track:7f4640fdc114010f539adf453f138db921efa4a19a88d59fe7b895602ab38048` |
| 20 | `theorem` | [balancedSz_up](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/balancedsz-up.md) | 157 | `result-track:5e29edf5258f3c4168c512603af3382adbb358f4e76d6ffa2b674f94e4d22b4b` |
| 21 | `theorem` | [balancedSz_down](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/balancedsz-down.md) | 169 | `result-track:0637eb7ebe1f2e2d6903165a0a2bc3d0dd6338657ad958be30c295c5e77ee010` |
| 22 | `theorem` | [Balanced.dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/dual.md) | 174 | `result-track:b8bc437d8f14c28978f09450a2e71fc3cd006d067cb6201d837482b4bf7d1573` |
| 23 | `def` | [node3L](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/node3l.md) | 182 | `declaration-track:2cdd1ff24b736b52d712fafb58d58b2d7ccf82530f77b79ac804a938de508e5e` |
| 24 | `def` | [node3R](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/node3r.md) | 186 | `declaration-track:ab1b46fe86b8b2562b2099e0186cab00c89dd39a21dfaf62734e8bb21c185519` |
| 25 | `def` | [node4L](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/node4l.md) | 190 | `declaration-track:3ea1201cd2cc826122349f846bbecb94e7d16f5485216c0fbd908e53d454578d` |
| 26 | `def` | [node4R](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/node4r.md) | 196 | `declaration-track:a4d26855f5570059f1cefb1c9f150655424869536c747c2a41b646f471db3232` |
| 27 | `def` | [rotateL](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/rotatel.md) | 203 | `declaration-track:9c9494e9381ec936d467536a573b82755f80d603ea0fb8dd1a5e9a3be5e1cf68` |
| 28 | `theorem` | [rotateL_node](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/rotatel-node.md) | 207 | `result-track:e0e30a7b2855ebafd6b61107c42afc464821f01158aa0028f211f54bde4c592a` |
| 29 | `theorem` | [rotateL_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/rotatel-nil.md) | 212 | `result-track:81f80b7722eca85d61d12b905f30c1232d257117652fa22c6e03ff4e4c1e183a` |
| 30 | `def` | [rotateR](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/rotater.md) | 218 | `declaration-track:68dcef53af293c50a96ab1b7317b7029a17a44be41551b8cfb52e599e66f8b4e` |
| 31 | `theorem` | [rotateR_node](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/rotater-node.md) | 222 | `result-track:472a6f475a36d06459b1fdacd8103562142674de6e12eff394dc0375df7cda00` |
| 32 | `theorem` | [rotateR_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/rotater-nil.md) | 227 | `result-track:20337dc5cf2f42e23f3dbf391e4715a9212cc01305449e83534afb03b74e728e` |
| 33 | `def` | [balanceL'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/balancel.md) | 233 | `declaration-track:dc84f78b375486ece8de89ba49ae23278fc39df9f825720229ab9a156c054dd9` |
| 34 | `def` | [balanceR'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/balancer.md) | 239 | `declaration-track:550b1ba665a7e0afbe01b222e8a1640d28347dffb41bbf87a0fc9eee13c7f82b` |
| 35 | `def` | [balance'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/balance.md) | 245 | `declaration-track:82886b323d4c7b10fa09d5699f4357fa6701fcca935036715a31bf62c1138d32` |
| 36 | `theorem` | [dual_node'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/dual-node.md) | 251 | `result-track:414b9144af6e8b1227b8c06112df1fb76bee4f2d48c20b5acdb7ce9841577f38` |
| 37 | `theorem` | [dual_node3L](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/dual-node3l.md) | 254 | `result-track:f34026097d05983f46404f3a1441e5a28fcb5ab34e286b00e83ff6b32b2e3b73` |
| 38 | `theorem` | [dual_node3R](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/dual-node3r.md) | 258 | `result-track:1b92679180592f9dce26241ec9a4d92b6c9c431f6cbcaeeefd4393acb08dd42a` |
| 39 | `theorem` | [dual_node4L](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/dual-node4l.md) | 262 | `result-track:cb0e3707bf1ad4d387b1444b61b926ed8660d97cc23c9c1ec8197174dee403ad` |
| 40 | `theorem` | [dual_node4R](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/dual-node4r.md) | 266 | `result-track:d9c5d6b30b510839719210ffa3ab56cb4da8fe3da1f967f777a2b2df33d24a89` |
| 41 | `theorem` | [dual_rotateL](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/dual-rotatel.md) | 270 | `result-track:33857983d984ecd1f870a998aebb6700aa926e62ea3bd846f4c27e16c77a7149` |
| 42 | `theorem` | [dual_rotateR](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/dual-rotater.md) | 275 | `result-track:fa74bbcae8a7b7ceca613c93e9a05bb5d58b22b6d3b37f697386cd237baf1b40` |
| 43 | `theorem` | [dual_balance'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/dual-balance.md) | 279 | `result-track:b7b7e0494e5427bcf737d942dd39183585e9192c34e50b3826a36c218ce5e5f7` |
| 44 | `theorem` | [dual_balanceL](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/dual-balancel.md) | 285 | `result-track:c8768546e774ef6df7238317574a107dc677b4e4273073f85963dee29c369cc7` |
| 45 | `theorem` | [dual_balanceR](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/dual-balancer.md) | 300 | `result-track:5c798ce29060c50051a05c97bd2cc7c94d1e001c14af665f73bec35f17ad78fd` |
| 46 | `theorem` | [Sized.node3L](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/node3l-source-line-304-occurrence-2.md) | 304 | `result-track:54640aea50a399910a42c076f6afc2ab5f7ab5a1ca99f5d12caaffe0dd2a34e5` |
| 47 | `theorem` | [Sized.node3R](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/node3r-source-line-308-occurrence-2.md) | 308 | `result-track:4fcc83281424ba6bd1d8231f4ca891ee699452698d9e398e8bc9215d0461f445` |
| 48 | `theorem` | [Sized.node4L](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/node4l-source-line-312-occurrence-2.md) | 312 | `result-track:5e7b8fc508d3295f3aadf846ee9b79413a50c1c208570dda6a0391f66f8c836c` |
| 49 | `theorem` | [node3L_size](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/node3l-size.md) | 316 | `result-track:15ef3fd8b546da68b0bac739e751758a336a975444c708ec7e277e6f8eff87ac` |
| 50 | `theorem` | [node3R_size](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/node3r-size.md) | 319 | `result-track:17d095c2521bc17b0784b1e075de45701615af4cd061107dbff7c9e68c20488d` |
| 51 | `theorem` | [node4L_size](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/node4l-size.md) | 322 | `result-track:bd786636a7bad71b9482b5e6db138f7704db76845e0cace2351f563e00b4dabd` |
| 52 | `theorem` | [Sized.dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/dual-source-line-329-occurrence-2.md) | 329 | `result-track:44641fcbce12cd093bcbbd3ae6e8d2a83e2ac9150d3fa6ef7c7c3b69e3bad05a` |
| 53 | `theorem` | [Sized.dual_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/dual-iff-source-line-333-occurrence-2.md) | 333 | `result-track:0fffd252d1542b0930dc24c546acb0d7b050ce98b4b5ef67b2b15ae8b1b39788` |
| 54 | `theorem` | [Sized.rotateL](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/rotatel-source-line-336-occurrence-2.md) | 336 | `result-track:ab20a9b0183808ccf4469cadbbff5c55ce5f677b7e294274829c25a4ae45e3c9` |
| 55 | `theorem` | [Sized.rotateR](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/rotater-source-line-342-occurrence-2.md) | 342 | `result-track:209a1a66097eca41073d961a0c837eddd59aab628734c6c7a171a00ea9f8abf8` |
| 56 | `theorem` | [Sized.rotateL_size](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/rotatel-size.md) | 345 | `result-track:f3035b883d9ba58446cfd7c165dff724f642d8c6b3f6f0877dfa9b11567f276a` |
| 57 | `theorem` | [Sized.rotateR_size](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/rotater-size.md) | 351 | `result-track:ef2c3637bcaf5c64c5b8d3808a9a7945a5acaa0471086d46ae92b90c1363be5b` |
| 58 | `theorem` | [Sized.balance'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/balance-source-line-355-occurrence-2.md) | 355 | `result-track:27eb102349c49015a01a37e6d1577f706c1ebeaedb5a93cdcae0a1ca7454cdb3` |
| 59 | `theorem` | [size_balance'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/size-balance.md) | 362 | `result-track:d2e1d9b855b78cc733d7c793c8165e4d5db80bf89db015e4366ab0d8f5e89601` |
| 60 | `theorem` | [All.imp](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/imp.md) | 373 | `result-track:817079b94efe91dd9db62ad36ca511f0cb670a34be063eb2d712036fdc8b191f` |
| 61 | `theorem` | [Any.imp](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/imp-source-line-377-occurrence-2.md) | 377 | `result-track:f81f95de6c9c0c9511618e6bb85def483b6d2113a13c7cee89d1b4ca400b88f2` |
| 62 | `theorem` | [all_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/all-singleton.md) | 381 | `result-track:9b358bd4068f1513fd4bbd53debe9ab9a93f5a95e829357fa303543142c212e6` |
| 63 | `theorem` | [any_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/any-singleton.md) | 384 | `result-track:c00401d9657e16d948b2755ecc55d126082f0140eb1616110164df1ffb73b1bb` |
| 64 | `theorem` | [all_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/all-dual.md) | 387 | `result-track:752ba0f037d480f0505ae27e5f513b5d70f2618834ec8c160f1696c07c60c626` |
| 65 | `theorem` | [all_iff_forall](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/all-iff-forall.md) | 393 | `result-track:1408863f0aeb7c7527f93098cfc9bcd83b75583ed656ec823bbbcf14a1b8fe51` |
| 66 | `theorem` | [any_iff_exists](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/any-iff-exists.md) | 397 | `result-track:a2cb0dccaed0b078adc8af3814e6df6718a03005709f2570cf8f942b27d91b16` |
| 67 | `theorem` | [emem_iff_all](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/emem-iff-all.md) | 401 | `result-track:b646273fd1f8555688dcedeef930e62ceb78cedfd1181d87bb97067fc74b6bd1` |
| 68 | `theorem` | [all_node'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/all-node.md) | 404 | `result-track:bc9fb011c61ab4b3750db37ca1e2c187924cec749709ddac75f6c92f5172c2ca` |
| 69 | `theorem` | [all_node3L](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/all-node3l.md) | 407 | `result-track:edeaa688c19d42ad41fbb0fe2534243bb655b630b349ee85a382293f94ca2951` |
| 70 | `theorem` | [all_node3R](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/all-node3r.md) | 411 | `result-track:5c0f73126c92ff2602e2723e6bbd4e61ddbbcf5ca4f4f69dfe572d8f3f2311a9` |
| 71 | `theorem` | [all_node4L](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/all-node4l.md) | 415 | `result-track:48bdd0863af17ef63fc418690f2ca9b96ff8af5d02d9bd2089664cd6a9e58545` |
| 72 | `theorem` | [all_node4R](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/all-node4r.md) | 419 | `result-track:58656beec065816d7ee5886ca17a2e407e80601d2c2555ebdd94d23692032219` |
| 73 | `theorem` | [all_rotateL](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/all-rotatel.md) | 423 | `result-track:4a27a52f72256be88a3e45449d9284ac6e24a6482d2f81f161e3b6d9efa81aee` |
| 74 | `theorem` | [all_rotateR](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/all-rotater.md) | 427 | `result-track:1a744936727fa67c78d056c0cfd14e5f36bd6fe3fa5b8cc169c96c163952f91c` |
| 75 | `theorem` | [all_balance'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/all-balance.md) | 430 | `result-track:e507ba764b02fc5d1023b81f778d9e4ba18b40ac75f4440c0a7472237cd0b70d` |
| 76 | `theorem` | [foldr_cons_eq_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/foldr-cons-eq-tolist.md) | 436 | `result-track:06e7b18d1e20fc5e2e8497d58ca0d75f15f039fd7cfe9eb55f7eb046db84e5e1` |
| 77 | `theorem` | [toList_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/tolist-nil.md) | 443 | `result-track:fc819a5a85839d061d5ecb338563ca486e941c29aefc3ae8ecbe77ce0449709b` |
| 78 | `theorem` | [toList_node](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/tolist-node.md) | 447 | `result-track:27995a92c82159323854bb3bd1e829158ace3007d4eacbd27cc98f8e68c40ae9` |
| 79 | `theorem` | [emem_iff_mem_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/emem-iff-mem-tolist.md) | 450 | `result-track:4919c596baf9336c65b0314af0c1c2b900c3b54df80583c89f6bd76763dd392a` |
| 80 | `theorem` | [length_toList'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/length-tolist-source-line-453-occurrence-2.md) | 453 | `result-track:f479357fcae03e7182d45dfcaa89a26a97ec68e4eb5fd3063a812b8d5f189547` |
| 81 | `theorem` | [length_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/length-tolist.md) | 459 | `result-track:1b725f4bb03dc730644cca7acefe848b0ac250ef0988e9cdd611d5fcf5d483e7` |
| 82 | `theorem` | [equiv_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/equiv-iff.md) | 462 | `result-track:a2a6979460c6a460b24ab202e0842704564a2f65f23ef17a43adc7f71771cbaa` |
| 83 | `theorem` | [pos_size_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/pos-size-of-mem.md) | 469 | `result-track:1a1d1aad6ddd846c7a8ce97674cb5f78aa42abdd7c9c0138fc22171e0a3a9909` |
| 84 | `theorem` | [findMin'_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/findmin-dual.md) | 475 | `result-track:251ae1e266e2bff60e20f75b6477bdc21ac583d519e8f7723805c9c59b6fc34f` |
| 85 | `theorem` | [findMax'_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/findmax-dual.md) | 479 | `result-track:4aa9e4496944152605a2829c5d8a5f33e9e2df0a428a73ab9cc3156d66d5d1f7` |
| 86 | `theorem` | [findMin_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/findmin-dual-source-line-482-occurrence-2.md) | 482 | `result-track:3710dc9656a3d10007b3d38607e4a1df876f1da764040eed63c7af3ab75c09aa` |
| 87 | `theorem` | [findMax_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/findmax-dual-source-line-486-occurrence-2.md) | 486 | `result-track:a034376fd1934f4cb827b8c74814eb77467d10420ec3cdbc6ed6da5ec200f331` |
| 88 | `theorem` | [dual_eraseMin](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/dual-erasemin.md) | 489 | `result-track:603f651dc8edfc4037f50e7ff8b6da976df6c1172a8645129e59be628891ad38` |
| 89 | `theorem` | [dual_eraseMax](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/dual-erasemax.md) | 495 | `result-track:6d95c91d0896175cc76393e44814b6d8114928f8dab53937e4b902ac60a6c0f9` |
| 90 | `theorem` | [splitMin_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/splitmin-eq.md) | 498 | `result-track:d6c84cbd966a30a16b64bb350e3a42702922121ca15c02138ce6ffcee4c62922` |
| 91 | `theorem` | [splitMax_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/splitmax-eq.md) | 503 | `result-track:ad891fcd018c94e1489bf06cfb4f230bfcf8046486cd0b47de0fa8b586f4d702` |
| 92 | `theorem` | [findMin'_all](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/findmin-all.md) | 509 | `result-track:d746cb7010ea32d383ced86120b06b086f8ccd6b96dd22bd99bd1b5b644c99ba` |
| 93 | `theorem` | [findMax'_all](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/findmax-all.md) | 514 | `result-track:fb2f57525bb9587a7182493875ec0bb46c71a63c975a9903ad78321ac0bf04b5` |
| 94 | `theorem` | [merge_nil_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/merge-nil-left.md) | 525 | `result-track:7451c7b9a789d80fbd4c1e198efb11d3c8b52b71b141724543b13d82e480a10b` |
| 95 | `theorem` | [merge_nil_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/merge-nil-right.md) | 528 | `result-track:ca1275a12454ddd5e996296ecc79f58fe42a305d8060881a029f7ac050623138` |
| 96 | `theorem` | [merge_node](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/merge-node.md) | 532 | `result-track:01d7035e74677c3dbdcf36b3269673353e341b97518d59850a193e410c969fa4` |
| 97 | `theorem` | [dual_insert](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/dual-insert.md) | 542 | `result-track:214999778b3583a3ca6f8aa1696ed07ab9ef5250017d593266bdc1837a917917` |
| 98 | `theorem` | [balance_eq_balance'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/balance-eq-balance.md) | 554 | `result-track:dc5334b1a08b89716395c717b83a4063a37edd0b6f676138f44efd44ff07fba7` |
| 99 | `theorem` | [balanceL_eq_balance](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/balancel-eq-balance-source-line-640-occurrence-2.md) | 640 | `result-track:88b382d7cfcb211ca0b6742ad02f87c6f9458fd76a6507e72bd4e9930e8f7fb5` |
| 100 | `def` | [Raised](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/raised.md) | 656 | `declaration-track:5b2da4e36d88b7360b56eb639d2ca56e312b4b5697798b8668b9c9582cd8ec43` |
| 101 | `theorem` | [raised_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/raised-iff.md) | 659 | `result-track:b695ab46d257bca265484e96feb59b7d353e2b66eb21be3d71e58a0919053086` |
| 102 | `theorem` | [Raised.dist_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/dist-le.md) | 669 | `result-track:afd818f5bcb0d4e17f22f5b83409c76213508210eb3bcf29db4da431cc191c61` |
| 103 | `theorem` | [Raised.dist_le'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/dist-le-source-line-672-occurrence-2.md) | 672 | `result-track:b6201b52291b1bce616e0a0ee89ded95d1d4a09852451f2d1d24e4d4ec4b0548` |
| 104 | `theorem` | [Raised.add_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/add-left.md) | 675 | `result-track:fee349cf6a5cd180fd4579ce16237293a9e75442d5383f4e3504e645f35c49eb` |
| 105 | `theorem` | [Raised.add_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/add-right.md) | 680 | `result-track:e4c2738bc2db0c05e3b2f865200816de958fdd01bafff8c628bd3ced8746675f` |
| 106 | `theorem` | [Raised.right](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/right.md) | 683 | `result-track:3c0a6e7c55d4812759eae605c8ec13beec701095fb65761ec45f06b99826404c` |
| 107 | `theorem` | [balanceL_eq_balance'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/balancel-eq-balance.md) | 690 | `result-track:2240683b2c40c3a218a23d198e42a362a9e677bc357cb9e90f7e6cf222450075` |
| 108 | `theorem` | [balance_sz_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/balance-sz-dual.md) | 708 | `result-track:918df265fd7b9cfaab56515ab26ae318e55fce7de202d903730e32c48e8ec020` |
| 109 | `theorem` | [size_balanceL](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/size-balancel.md) | 718 | `result-track:6774c0f8fc51cd19a510e75fa02c3de45760a8519787a5aad0de6f33f1e6ccf5` |
| 110 | `theorem` | [all_balanceL](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/all-balancel.md) | 724 | `result-track:76b3a41d71d79c5b5a8efa741010c02aff1b4e1e9c7c8e7b2fdeb08942ac629c` |
| 111 | `theorem` | [balanceR_eq_balance'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/balancer-eq-balance.md) | 731 | `result-track:79414d8fad7f522e315dfabe950464afb80cc441eed37a7979279471ea65a66b` |
| 112 | `theorem` | [size_balanceR](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/size-balancer.md) | 740 | `result-track:01b4f27826a1b49a02145a9058f629f073d2a487589a4b39612a5db2777ff146` |
| 113 | `theorem` | [all_balanceR](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/all-balancer.md) | 746 | `result-track:580827c58445ba0ad808400eb3d3023f090db57213de48fb8936d31e76778ae9` |
| 114 | `def` | [Bounded](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/bounded.md) | 760 | `declaration-track:e2f98d362a3cd421b7a17760cfc8dc99654afd0835978ade3fb5126ff9d39666` |
| 115 | `theorem` | [Bounded.dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/dual-source-line-765-occurrence-2.md) | 765 | `result-track:2b5ecb2bcf03c4ffa35f55f0ddd9d2ece3508362744cfdebf03383d02d92c106` |
| 116 | `theorem` | [Bounded.dual_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/dual-iff.md) | 770 | `result-track:9aa234f526511935a2c6796e16f90b0ed571483ad4803064a3dbc93d31984762` |
| 117 | `theorem` | [Bounded.weak_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/weak-left.md) | 775 | `result-track:aa725c97940f0d7330badd1306cc048098995fae26c15f050b9777a61e43540f` |
| 118 | `theorem` | [Bounded.weak_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/weak-right.md) | 779 | `result-track:9036573fb6a4ed0b03078e02a8926256cd541f2ca1ae72ba663c65ab40405fd3` |
| 119 | `theorem` | [Bounded.weak](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/weak.md) | 783 | `result-track:c8854f5de5db1e7bdb802dd3fd021350eb642f8c2b035eea36dd32a1c1f8ac08` |
| 120 | `theorem` | [Bounded.mono_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/mono-left.md) | 786 | `result-track:983dc0fd8c88a442addb3dfeffc7569adba5effe9e4950bc2d7a186aa19230f4` |
| 121 | `theorem` | [Bounded.mono_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/mono-right.md) | 792 | `result-track:8a2baacc32e688c7d274e46a54dc213318ab245cdf8c6b34a2ff0f2b4f7d7052` |
| 122 | `theorem` | [Bounded.to_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/to-lt.md) | 798 | `result-track:cecbe858642ffba252a0503919289534456d9581cb0556c2df73a41dac434ea6` |
| 123 | `theorem` | [Bounded.to_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/to-nil.md) | 802 | `result-track:13d9b2daac0fe08b052b5d4c9bf6a424486592a958907b50aa81d6a23ad61a03` |
| 124 | `theorem` | [Bounded.trans_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/trans-left.md) | 807 | `result-track:3b84ee632c15d54e4ee8130c9a001584c9ae181f898852d7f5ac8aed37c6a67a` |
| 125 | `theorem` | [Bounded.trans_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/trans-right.md) | 812 | `result-track:fdb63056bf172471cea6a958cd298c12f9b76af957b34192f78c1efcfed812bc` |
| 126 | `theorem` | [Bounded.mem_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/mem-lt.md) | 817 | `result-track:2abad7d06818451ed6c6a4e51f09c520f6bd587406f975edab6e8b703bd429cc` |
| 127 | `theorem` | [Bounded.mem_gt](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/mem-gt.md) | 822 | `result-track:23b0551cb98dcbf919c73615f8800a27e42d765925ce6fb4d7122498d55e8cdd` |
| 128 | `theorem` | [Bounded.of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/of-lt.md) | 826 | `result-track:a02f55d7300c4cdfd66b3200a90e1b87aba7ded0dbf80ebb000eeb0da0d8e0bf` |
| 129 | `theorem` | [Bounded.of_gt](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/of-gt.md) | 831 | `result-track:2cef2c58c1f9de9238ca12d0136f2d3450afa304a3084c09c127eb06690dd224` |
| 130 | `theorem` | [Bounded.to_sep](../../../../../../ComputerScience/TheoryOfData/DataStructures/Invariants.lean/declarations/to-sep.md) | 836 | `result-track:97b33e07f3d20402fd57cecb4f87f4166a929b8f3ae2602268bc559809c7c5fd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2b31d4166e455958cb779da829c43e8c8af0870f6e96b57dd4057154a4fb8827 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Invariants/Variant545a9323df8fc68971b95b22bb4c1ab5aeee8fe1d902eed3d964b9dff6c7690e.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Invariants/Variant545a9323df8fc68971b95b22bb4c1ab5aeee8fe1d902eed3d964b9dff6c7690e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
