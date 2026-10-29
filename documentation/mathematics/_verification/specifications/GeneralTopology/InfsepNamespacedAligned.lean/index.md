# Verification target: Infsep Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ded06d8a961e71b879c1c49853bcb9d828a18c9",
  "lexical_observation_count": 82,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Infsep/Variant56ff79ac5d6aba202e1c09d5e72984aa08ac127b4515b15e2fa8b0d90c54e688.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/InfsepNamespacedAligned.lean/index.md) · [Full source](../../../../GeneralTopology/InfsepNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ded06d8a961e71b879c1c49853bcb9d828a18c9`.

Source path: `GRWTSK/Topology/MetricTopology/Infsep/Variant56ff79ac5d6aba202e1c09d5e72984aa08ac127b4515b15e2fa8b0d90c54e688.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Infsep/Variant56ff79ac5d6aba202e1c09d5e72984aa08ac127b4515b15e2fa8b0d90c54e688.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [einfsep](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/einfsep.md) | 50 | `declaration-track:dc109bb110f7d72f8dd5f56a3a177802cf6b84f1068e16443ecc30abb3635f1e` |
| 2 | `theorem` | [le_einfsep_iff](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/le-einfsep-iff.md) | 58 | `result-track:bddf4989d4168dca281278402178fa96f31185c7eb7f0bbb690d68c44f425f7e` |
| 3 | `theorem` | [einfsep_zero](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/einfsep-zero.md) | 63 | `result-track:4ee1d612caa34ee571d83e2841e0dbba57c7d1fa7e5b602b63033dad13d3a3b9` |
| 4 | `theorem` | [einfsep_pos](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/einfsep-pos.md) | 68 | `result-track:3a9a7cc5a662b0c267158a82384041b18af66d651981c4ecc6b14cb1e5f6d292` |
| 5 | `theorem` | [einfsep_top](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/einfsep-top.md) | 75 | `result-track:c5bdc25546e3c5a41f5ae87dae137f5543e464fb53971e92ac8c707840fbfcc3` |
| 6 | `theorem` | [einfsep_lt_top](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/einfsep-lt-top.md) | 80 | `result-track:b0cd628969a270bb0c534eff68f6fca311447e461aeafb7d3f87e8b75ed88106` |
| 7 | `theorem` | [einfsep_ne_top](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/einfsep-ne-top.md) | 85 | `result-track:c1b464c6028dfc449be2678b6df928ec78fd5af44463801c29df0b61d1517684` |
| 8 | `theorem` | [einfsep_lt_iff](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/einfsep-lt-iff.md) | 90 | `result-track:9475dea04856971c9870f32bbb9fa7cf2843b9438d0cf7b2823707f0ddb841b2` |
| 9 | `theorem` | [nontrivial_of_einfsep_lt_top](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/nontrivial-of-einfsep-lt-top.md) | 95 | `result-track:edec0ae6182e487bccdb37db23e6c13c297e6c5aceaaa7d1833e1fca6fdc2f42` |
| 10 | `theorem` | [nontrivial_of_einfsep_ne_top](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/nontrivial-of-einfsep-ne-top.md) | 100 | `result-track:68f92acacb3f755ee9468ab445c84f6eb45926ae6ad592e933a5f9b9c475cdaf` |
| 11 | `theorem` | [Subsingleton.einfsep](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/subsingleton-einfsep.md) | 104 | `result-track:35f04aabcfa81dc0ea7b907ad5043a6251dedab3a74a3f621149d5f2af2322f8` |
| 12 | `theorem` | [le_einfsep_image_iff](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/le-einfsep-image-iff.md) | 109 | `result-track:3f409e9e1888691ad13e4392efb5cafca0b7612d8354142fb24937e16203a4d7` |
| 13 | `theorem` | [le_edist_of_le_einfsep](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/le-edist-of-le-einfsep.md) | 114 | `result-track:1346b63dbe8f33fae97938df8b37f4b2278dad6ab4ae03c41a1f129b76bb341d` |
| 14 | `theorem` | [einfsep_le_edist_of_mem](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/einfsep-le-edist-of-mem.md) | 119 | `result-track:fc5c7e61e7a70ce1f578b8cb64629744585c8bb3bff08c084b8d3a045de6dc58` |
| 15 | `theorem` | [einfsep_le_of_mem_of_edist_le](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/einfsep-le-of-mem-of-edist-le.md) | 124 | `result-track:2448179a63b044b548f092f7742d439377765f5e5de4e5dead0461959cb48479` |
| 16 | `theorem` | [le_einfsep](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/le-einfsep.md) | 129 | `result-track:cd3a1d46123bd5367a289be770f782cdf231f3a8a392c424ff273057cf1b24b7` |
| 17 | `theorem` | [einfsep_empty](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/einfsep-empty.md) | 135 | `result-track:f7a33fb8a7d3fb43fea2a233ccaf1294daf04a9fa6479deb5267b7a6ee252769` |
| 18 | `theorem` | [einfsep_singleton](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/einfsep-singleton.md) | 140 | `result-track:3d727d5e8e7b1b9a7042795a27a31e87fc85f1d52b05642999a9094b33edab3c` |
| 19 | `theorem` | [einfsep_iUnion_mem_option](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/einfsep-iunion-mem-option.md) | 144 | `result-track:29aa46e704a44f539a59957d93296ebea9e4d4dc5a0743989a9374026a8cecb2` |
| 20 | `theorem` | [einfsep_anti](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/einfsep-anti.md) | 148 | `result-track:20f6ea6d55a0eda4bb6ed3c34e9db6ae20839bf21451a86708b14bf68262d16f` |
| 21 | `theorem` | [einfsep_insert_le](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/einfsep-insert-le.md) | 152 | `result-track:d5ed88bc3850cd375b4c7080e6d86dd3db9126f19e90289b8ba95c29c33baf2f` |
| 22 | `theorem` | [le_einfsep_pair](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/le-einfsep-pair.md) | 157 | `result-track:6ec97bfba8621970b1b0e9f0ee5c714fe772b5c791de900f60f6fb707cd87c80` |
| 23 | `theorem` | [einfsep_pair_le_left](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/einfsep-pair-le-left.md) | 163 | `result-track:347a020fc51624737bda23526bdd9262ecea79ec30c4733e0d31673062e0af81` |
| 24 | `theorem` | [einfsep_pair_le_right](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/einfsep-pair-le-right.md) | 167 | `result-track:10a94229812863b3003012c2efae22d2b542d63b885c404e068e10e462444151` |
| 25 | `theorem` | [einfsep_pair_eq_inf](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/einfsep-pair-eq-inf.md) | 171 | `result-track:5f3101a169470054e628b601540b6974f1278c8749138af061ee7250182afeef` |
| 26 | `theorem` | [einfsep_eq_iInf](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/einfsep-eq-iinf.md) | 175 | `result-track:ced5b0d9ee250b28e288a3667b1ddfa4fb40aa4249ab100ac1ed8b8859695366` |
| 27 | `theorem` | [einfsep_of_fintype](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/einfsep-of-fintype.md) | 181 | `result-track:ca0af2784e9718876e62aef9fcc2db65f2826522ba3d6e8d548990cb887a7896` |
| 28 | `theorem` | [Finite.einfsep](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/finite-einfsep.md) | 188 | `result-track:18a369fe627307016f44db12569cf16409dc5bca88dbd748509476f132507f4a` |
| 29 | `theorem` | [Finset.coe_einfsep](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/finset-coe-einfsep.md) | 194 | `result-track:1e797d8d0c723905dfa02ac6e5f35655e452d8afc7b8dec85c2a5a3b66e5d303` |
| 30 | `theorem` | [Nontrivial.einfsep_exists_of_finite](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/nontrivial-einfsep-exists-of-finite.md) | 199 | `result-track:7409efee3f883fad2181752e74ea844fb85c325a623fd7481cf90aff1ef39327` |
| 31 | `theorem` | [Finite.einfsep_exists_of_nontrivial](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/finite-einfsep-exists-of-nontrivial.md) | 210 | `result-track:f75f31fbef484bafc8b6f657a28f60d7123143e78727e0c2e06e89b1b3bee345` |
| 32 | `theorem` | [einfsep_pair](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/einfsep-pair.md) | 222 | `result-track:45c73d19cb7696e6f69e552ebb389d12a0ad9c4b79cdb00ffcd012da5abe37fb` |
| 33 | `theorem` | [einfsep_insert](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/einfsep-insert.md) | 228 | `result-track:3c212816e5e1b3fda24cf0f7c2de0c52a731a9029e8da996a67e8b7e5d0b3940` |
| 34 | `theorem` | [einfsep_triple](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/einfsep-triple.md) | 240 | `result-track:f10997c2d383849e338c77140485c93075cd8156c1485fc7490b3bb532ba6f3e` |
| 35 | `theorem` | [le_einfsep_pi_of_le](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/le-einfsep-pi-of-le.md) | 246 | `result-track:aa7e367021eb65e14631503a4de36aaaacd159ec6add4c80094ffd828747ae2c` |
| 36 | `theorem` | [subsingleton_of_einfsep_eq_top](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/subsingleton-of-einfsep-eq-top.md) | 261 | `result-track:b8008b950af2a7ee6b29d111512a7aaff5de3f59f7d1bf3cf83caf96d8916520` |
| 37 | `theorem` | [einfsep_eq_top_iff](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/einfsep-eq-top-iff.md) | 266 | `result-track:b0e0bd1c1ba32d1b7e5d172ade5646c03031dfaa4dc787b55049e9e1854adfe6` |
| 38 | `theorem` | [Nontrivial.einfsep_ne_top](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/nontrivial-einfsep-ne-top.md) | 270 | `result-track:28b19979fdc4b16ca64edb1d846d2b9435e93a30be118f519e91beda067c2c1a` |
| 39 | `theorem` | [Nontrivial.einfsep_lt_top](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/nontrivial-einfsep-lt-top.md) | 276 | `result-track:7e6af33648c5b4c27c38d60ff5ec23b513e9b8645061f53e17f0dd7d5248a9fb` |
| 40 | `theorem` | [einfsep_lt_top_iff](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/einfsep-lt-top-iff.md) | 281 | `result-track:de50a1f7ac14224e82bb792411a1b8e8da8fb16253f279ab1e4175ac79b766a7` |
| 41 | `theorem` | [einfsep_ne_top_iff](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/einfsep-ne-top-iff.md) | 285 | `result-track:aecd3ae9a5ea8dd1555545e792fa508ddc56ba6252bfa74d40356b1bd7c6d7c0` |
| 42 | `theorem` | [le_einfsep_of_forall_dist_le](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/le-einfsep-of-forall-dist-le.md) | 289 | `result-track:a5b49b9fc9fb277e4c5e48354e2dff430d5af5e00993c1a4556c056372c59e25` |
| 43 | `theorem` | [einfsep_pos_of_finite](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/einfsep-pos-of-finite.md) | 301 | `result-track:1ed723edf22b6fcc6ac834215987359bdae1b55d65b75c358c445e6f7b63b1af` |
| 44 | `theorem` | [relatively_discrete_of_finite](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/relatively-discrete-of-finite.md) | 310 | `result-track:2f2a25ede64a377d34140a0fe971b409d821378d6499e412277575d17254aab8` |
| 45 | `theorem` | [Finite.einfsep_pos](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/finite-einfsep-pos.md) | 316 | `result-track:866a2a60820d4c28db605d2cc661989d05578ef3f2f7903545680a3a5736ba9c` |
| 46 | `theorem` | [Finite.relatively_discrete](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/finite-relatively-discrete.md) | 321 | `result-track:8e33e81a32a91761295c3b6b80c0e3b40a1fc4a26708b6537360712474ef8638` |
| 47 | `def` | [infsep](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/infsep.md) | 338 | `declaration-track:ee00522ef89157fbedbb2f8a2311178f7181706b078ff9e66856c8a7f7f6d652` |
| 48 | `theorem` | [infsep_zero](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/infsep-zero.md) | 346 | `result-track:82ab663f8d6d3983cecb29f0ee7d14beec92d759ecb2e74f90f8f66beacb5e8e` |
| 49 | `theorem` | [infsep_nonneg](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/infsep-nonneg.md) | 350 | `result-track:34fca8d502553a9d39c2ca1fe624ba2f9e5e6dd4ee28e68af9a5fc0f2f3d10fc` |
| 50 | `theorem` | [infsep_pos](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/infsep-pos.md) | 354 | `result-track:32d13c205007774d761320af2b6fe68d8c80b962f1803f1b0bf94a36ab22be49` |
| 51 | `theorem` | [Subsingleton.infsep_zero](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/subsingleton-infsep-zero.md) | 358 | `result-track:94fc19b7d27d72327d72aa6d1b1c7bb6d62b008a4a322302f4a90a3eca988e14` |
| 52 | `theorem` | [nontrivial_of_infsep_pos](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/nontrivial-of-infsep-pos.md) | 364 | `result-track:8de77375e1d61267d97b9ed1d684618cf371ba05ebefb1f6f71eee582bccccb4` |
| 53 | `theorem` | [infsep_empty](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/infsep-empty.md) | 370 | `result-track:499179c7e6e8a9ec2fd1e805a520cea64f10d24486c46b37a2558c27913aedc1` |
| 54 | `theorem` | [infsep_singleton](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/infsep-singleton.md) | 374 | `result-track:7c57b5f2555ab20488cf3467d1a09eefcb7f21b2df9c47b46b714c76fdf40776` |
| 55 | `theorem` | [infsep_pair_le_toReal_inf](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/infsep-pair-le-toreal-inf.md) | 378 | `result-track:cb6c8c9bf4bc003faae8e74a6db0c08437804603bcbe9debfbf16c30d62376e1` |
| 56 | `theorem` | [infsep_pair_eq_toReal](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/infsep-pair-eq-toreal.md) | 390 | `result-track:a9f16bc4245cb72d571f6651c3c46ee8c5cd55d969dc887ed273c8451cfa1aba` |
| 57 | `theorem` | [Nontrivial.le_infsep_iff](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/nontrivial-le-infsep-iff.md) | 403 | `result-track:56b483f065fde5f54586ea9b4d0512efcc7cda0c7dc1caf33062a7122b71cf32` |
| 58 | `theorem` | [Nontrivial.infsep_lt_iff](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/nontrivial-infsep-lt-iff.md) | 409 | `result-track:2a43a48e43ac6f4d4c3c89bee6ba253c77330ef93916c7978b8b558cb14e1ba1` |
| 59 | `theorem` | [Nontrivial.le_infsep](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/nontrivial-le-infsep.md) | 416 | `result-track:2db8fe2255eb8469877a5c92e19403d13c6228502ac191b634bc994c8fc53910` |
| 60 | `theorem` | [le_edist_of_le_infsep](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/le-edist-of-le-infsep.md) | 421 | `result-track:a9c60a5f7c54200f816f4ff1245f3bc134e866ae88c4c4e249c6ec858ff562fc` |
| 61 | `theorem` | [infsep_le_dist_of_mem](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/infsep-le-dist-of-mem.md) | 430 | `result-track:4b4af4aff20943a5f5dd36110f0e4e4db4f02f73182881836f8a9293a63d6968` |
| 62 | `theorem` | [infsep_le_of_mem_of_edist_le](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/infsep-le-of-mem-of-edist-le.md) | 434 | `result-track:0c31d92a256246cfd69bf96a7209b4580658924a74abd921817f2c2a73cbf39b` |
| 63 | `theorem` | [infsep_pair](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/infsep-pair.md) | 439 | `result-track:e9630bcaf6685061d4e7f588db8de0ea028ace1dc8432775bc65e3f39d0d4e5d` |
| 64 | `theorem` | [infsep_triple](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/infsep-triple.md) | 444 | `result-track:1ac8eed966dfc9598e049c68b23def341cb65c390da20961cdd6b5a2e14fad8f` |
| 65 | `theorem` | [Nontrivial.infsep_anti](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/nontrivial-infsep-anti.md) | 451 | `result-track:744872dfa3c1966cc9e9b6f13a1459798b7c30d10acc4f03f431b36363c00969` |
| 66 | `theorem` | [infsep_eq_iInf](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/infsep-eq-iinf.md) | 455 | `result-track:bcc0833aae3bc16308b0dd2c84c00ae13a4c5d10a31e4b8052c0641456981e82` |
| 67 | `theorem` | [Nontrivial.infsep_eq_iInf](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/nontrivial-infsep-eq-iinf.md) | 469 | `result-track:b92adde26ac2b5f8a8fcb9dd2e041c5ed20789db75e8195cee93b125fa9b14ec` |
| 68 | `theorem` | [infsep_of_fintype](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/infsep-of-fintype.md) | 474 | `result-track:97a9e22680bf3d6ef59f57a67c30b59f6f9b5ecf73122890e1d782eb4383747d` |
| 69 | `theorem` | [Nontrivial.infsep_of_fintype](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/nontrivial-infsep-of-fintype.md) | 484 | `result-track:1ed2877db88f4d3f2d9e6f8fddee27a63a76b4020e9545cd2015d00357d3f7d0` |
| 70 | `theorem` | [Finite.infsep](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/finite-infsep.md) | 489 | `result-track:b14bd238ef624620b5be0ab8f5ebeb5b9c54326cd256908ffc69bce297a85c9c` |
| 71 | `theorem` | [Finite.infsep_of_nontrivial](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/finite-infsep-of-nontrivial.md) | 500 | `result-track:e03ee4ca1232265e4d894c89067a57921d9fb517206677f68aa20c00ce036b36` |
| 72 | `theorem` | [Infsep Namespaced Aligned](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/coe-infsep.md) | 505 | `result-track:76f406c3591dc5b599b541cc3b98f57807d559960a4872c455b926468db8902a` |
| 73 | `theorem` | [Infsep Namespaced Aligned](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/coe-infsep-of-offdiag-nonempty.md) | 514 | `result-track:fc6641e8ef3c444584cc3dfa368329a05f98a61f629df70af44027a56eeb25e5` |
| 74 | `theorem` | [Infsep Namespaced Aligned](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/coe-infsep-of-offdiag-empty.md) | 519 | `result-track:8e774d5ceb6d1241e8521976e734ed1dc41494e16b7d8298996664ed53df25f7` |
| 75 | `theorem` | [Nontrivial.infsep_exists_of_finite](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/nontrivial-infsep-exists-of-finite.md) | 525 | `result-track:323255fb9ac32774436c5850761c555401d6dbd29801b6898296a7dcf33b0e85` |
| 76 | `theorem` | [Finite.infsep_exists_of_nontrivial](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/finite-infsep-exists-of-nontrivial.md) | 536 | `result-track:7581616fa2bc3220cc45c201e56fe376b6875db5b6708650cc897524edbf47a2` |
| 77 | `theorem` | [infsep_zero_iff_subsingleton_of_finite](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/infsep-zero-iff-subsingleton-of-finite.md) | 548 | `result-track:f5064d7c748ece692e72cef4c4fcfe461023d6d5f69e8f09db5e564f0fa23f59` |
| 78 | `theorem` | [infsep_pos_iff_nontrivial_of_finite](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/infsep-pos-iff-nontrivial-of-finite.md) | 553 | `result-track:6a5c27deb2863687f2549508f3bc4fc5ca870c5846e9b2b257e5085ff5f12b50` |
| 79 | `theorem` | [Finite.infsep_zero_iff_subsingleton](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/finite-infsep-zero-iff-subsingleton.md) | 558 | `result-track:19f331c79735a9be20f659b0155cd8d3db55641e204e5355e088f672b9b22dee` |
| 80 | `theorem` | [Finite.infsep_pos_iff_nontrivial](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/finite-infsep-pos-iff-nontrivial.md) | 563 | `result-track:58b6a957fb4ba9b484fbed65370d7a9232449b53407d0de605ffd6ef49e5d3f5` |
| 81 | `theorem` | [Infsep Namespaced Aligned](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/infsep-zero-iff-subsingleton.md) | 568 | `result-track:b5a482e32780dbfbe4a26d6c613eaa5daed6e9cb40b15d8df2e72481ee4f6584` |
| 82 | `theorem` | [Infsep Namespaced Aligned](../../../../GeneralTopology/InfsepNamespacedAligned.lean/declarations/infsep-pos-iff-nontrivial.md) | 573 | `result-track:8c6eb57589533fd6861ed34e4c3447607ff613a5cf46de7601bd1c91214940fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=85e8955ba16be068af77ec7b21e78c97887dfcf6340f8c21e6e52fbcbecf65da -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Infsep/Variant56ff79ac5d6aba202e1c09d5e72984aa08ac127b4515b15e2fa8b0d90c54e688.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Infsep/Variant56ff79ac5d6aba202e1c09d5e72984aa08ac127b4515b15e2fa8b0d90c54e688.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
