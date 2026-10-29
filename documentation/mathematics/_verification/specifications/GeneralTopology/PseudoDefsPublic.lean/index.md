# Verification target: Pseudo Defs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "912bc464320d8ea70f002255c59e9f79d41f6ac2",
  "lexical_observation_count": 236,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variant13cd9bc80e44bf7b61a55b5b1c2993058ac995f8803a6fb58c230c23a1d0fa35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/PseudoDefsPublic.lean/index.md) · [Full source](../../../../GeneralTopology/PseudoDefsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `912bc464320d8ea70f002255c59e9f79d41f6ac2`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variant13cd9bc80e44bf7b61a55b5b1c2993058ac995f8803a6fb58c230c23a1d0fa35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Defs/Variant13cd9bc80e44bf7b61a55b5b1c2993058ac995f8803a6fb58c230c23a1d0fa35.lean.json)

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
| 1 | `theorem` | [UniformSpace.ofDist_aux](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/uniformspace-ofdist-aux.md) | 71 | `result-track:f08a74f33806e6ee1748c17f848b90a411bf6f5e48e823951beec76796ce0ff6` |
| 2 | `def` | [UniformSpace.ofDist](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/uniformspace-ofdist.md) | 76 | `declaration-track:2983034e2a31c28a0b26d8b36a5603592da82101e959510de69ceb1af69b5365` |
| 3 | `abbrev` | [Bornology.ofDist](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/bornology-ofdist.md) | 82 | `declaration-track:c5d5fce27c29500fe4e322b7c9ed64085e058556ee3e0e5bed74da3c68a0d528` |
| 4 | `class` | [Dist](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/dist.md) | 104 | `declaration-track:d7348c2718c18fc0bbfcb575b581829214f47a53b4975be21d18fa3a0dbe4e14` |
| 5 | `theorem` | [dist_nonneg'](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/dist-nonneg.md) | 114 | `result-track:27893dbaf19f4dadacf36f237bd2df14052989f579ee56ce91d13d863831f61c` |
| 6 | `class` | [PseudoMetricSpace](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/pseudometricspace.md) | 141 | `declaration-track:d829c783c6593c0769e66222a5ff85449adf0d255a1f2bfedff605e2fcc8df48` |
| 7 | `theorem` | [PseudoMetricSpace.ext](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/pseudometricspace-ext.md) | 157 | `result-track:4998348fbf0dbebb5dfda73485b210a4e1b9e091d15247f80405cd91550134da` |
| 8 | `instance` | [(anonymous)](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/instance-source-edition-2.md) | 177 | `declaration-track:753d3881fa3b509f24adb76b94e8758803527529d356149b3124c33c99e1d2ec` |
| 9 | `def` | [PseudoMetricSpace.ofDistTopology](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/pseudometricspace-ofdisttopology.md) | 184 | `declaration-track:7c1fd316ddddc93b92b5aeb56017a97c405edc28a8299158e5f96b783106d577` |
| 10 | `theorem` | [dist_self](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/dist-self.md) | 203 | `result-track:9572d958d8ab4a1b3c9e4427ad57135a9a06dba120b2189999465635711215cd` |
| 11 | `theorem` | [dist_comm](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/dist-comm.md) | 206 | `result-track:07226609fa35c5e5a7ae919687af786d7c3a194d5d07935ee049d7d1e5f950fe` |
| 12 | `theorem` | [edist_dist](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/edist-dist.md) | 209 | `result-track:b6e7b9014490dfb633bd0e062cc62f9cbb940a64639ada33c58ba5a5c6f039d1` |
| 13 | `theorem` | [dist_triangle](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/dist-triangle.md) | 213 | `result-track:c010063e6b6ab4138f6e0fbb3189fbc812642cce30e5443d991f3824380691df` |
| 14 | `theorem` | [dist_triangle_left](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/dist-triangle-left.md) | 216 | `result-track:27ed1aa19e283301335a1945b894f6a5eed19a354ba6fafb3b60c5c1f1fdcd3b` |
| 15 | `theorem` | [dist_triangle_right](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/dist-triangle-right.md) | 219 | `result-track:0e0eb7f035ecfce74023650d362d6ad82322e349c6a387ee7e545db8600b58af` |
| 16 | `theorem` | [dist_triangle4](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/dist-triangle4.md) | 222 | `result-track:03c8225f80699bb6f87dd4c9c3912648bc400f953218e028a1d16c19fc5978e9` |
| 17 | `theorem` | [dist_triangle4_left](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/dist-triangle4-left.md) | 227 | `result-track:80751c7bbbcb54136e99ac3e208a0e1f59168ff35c19d7348c3646ede03089bf` |
| 18 | `theorem` | [dist_triangle4_right](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/dist-triangle4-right.md) | 232 | `result-track:933065794013564c9dac96cb975c9ce3671504348e13eb3235d43812d98c41f1` |
| 19 | `theorem` | [dist_triangle8](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/dist-triangle8.md) | 237 | `result-track:0137bd5fdbfb98751597c5e0a82ef0cf8b269b64306cde5879b0a687e87c18c8` |
| 20 | `theorem` | [swap_dist](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/swap-dist.md) | 245 | `result-track:8c2090868efc9dfd384aadb896b048a569421dd835b10a168014668e6d0d0731` |
| 21 | `theorem` | [abs_dist_sub_le](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/abs-dist-sub-le.md) | 247 | `result-track:b0e09b457f3d37046726db1692770d72edeefc65b53196c5057d2dfb574b6062` |
| 22 | `theorem` | [dist_nonneg](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/dist-nonneg-source-edition-2.md) | 252 | `result-track:6b98f8f2458c9e8071dd5ed32fac16c48d436273123d560e0c5c6f16a1a5bbbc` |
| 23 | `def` | [evalDist](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/evaldist.md) | 261 | `declaration-track:6fec08a44d0ca7e5d6e48809ddd2ba66df1bf58ecceb551e2a14538c314909be` |
| 24 | `example` | [(anonymous)](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/example.md) | 272 | `declaration-track:6b71e26f50e6755d1037f182a9994880bcb8aefe97f08c5659f081971c602941` |
| 25 | `theorem` | [abs_dist](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/abs-dist.md) | 274 | `result-track:86eb51655b9715e90df37f43f70569af61d7606ff16cdacb29dc5079f33f2ee3` |
| 26 | `class` | [NNDist](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/nndist.md) | 277 | `declaration-track:c2c55112533d901ac151bd759e3c8987dda197f5148657d5d2bbea9640cc59e3` |
| 27 | `instance` | [(anonymous)](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/instance-source-edition-4.md) | 285 | `declaration-track:b67476b92ed58a068f5a79c8a61eed2d6e0ecb15b8da402edd9ef4c12984ccfc` |
| 28 | `theorem` | [dist_nndist](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/dist-nndist.md) | 289 | `result-track:37b796ee9c72e7fb2e1e820f28af053ed0b5a721579711f7aadcfed2e7da8742` |
| 29 | `theorem` | [coe_nndist](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/coe-nndist.md) | 292 | `result-track:d3fabb4242cfe85c8af264cd8af14aab8da33a712a9e7dbe6373c7fbe80e026b` |
| 30 | `theorem` | [edist_nndist](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/edist-nndist.md) | 295 | `result-track:e0a6929bdd5962ceb8ae38754d1526e162e79e34e15ef1f5dc69f7324a6821da` |
| 31 | `theorem` | [nndist_edist](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/nndist-edist.md) | 299 | `result-track:0b5a9cf4bc340548ef19ae0d9b759943c6fa626be8c91db8748371b39a8f8690` |
| 32 | `theorem` | [coe_nnreal_ennreal_nndist](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/coe-nnreal-ennreal-nndist.md) | 303 | `result-track:dc7c3f82f0e8f0801300009e88526a3f915d1b2302e4019584be6ccab020efdd` |
| 33 | `theorem` | [edist_lt_coe](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/edist-lt-coe.md) | 307 | `result-track:3c90f4a0364d8dca4987ea46d4a7dc7df690a7ce4b81ea5f1a252e4b912beb0c` |
| 34 | `theorem` | [edist_le_coe](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/edist-le-coe.md) | 311 | `result-track:82fe11c895b74b3573c44310548ba1b48c19921399400b09f757bb2716e60188` |
| 35 | `theorem` | [edist_lt_top](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/edist-lt-top.md) | 315 | `result-track:a8a31a07ee1f7eae15faf07b7e6096a8a9dafdce0029c2128fe1186f5d0861ad` |
| 36 | `theorem` | [edist_ne_top](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/edist-ne-top.md) | 320 | `result-track:b59ec340a4ea07f9ae9f5bd1c6465626f49da62bd4f80345b7f370a9a0fd9c0b` |
| 37 | `theorem` | [nndist_self](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/nndist-self.md) | 324 | `result-track:0f6b2731d7ba31d20df4d5a7d4251faaf44527977737a054b1a1a4b3036e788e` |
| 38 | `theorem` | [dist_lt_coe](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/dist-lt-coe.md) | 327 | `result-track:c20bbde68aec09dab91b48bbf9a87ca91c2c1972dd805fcf4e79320e52486151` |
| 39 | `theorem` | [dist_le_coe](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/dist-le-coe.md) | 331 | `result-track:c0c6f4b2fedbc982370a0b2d3c27a73e5db43c10a21576c4d3536bf4ebc6f3ae` |
| 40 | `theorem` | [edist_lt_ofReal](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/edist-lt-ofreal.md) | 335 | `result-track:751c0525fe50da3ac716837e753189f62efd65749a7d3adac50a546e80fcc125` |
| 41 | `theorem` | [edist_le_ofReal](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/edist-le-ofreal.md) | 339 | `result-track:bc1d2c39dc6cf88597ce2860d5fd93f23917a6f90a8a05ec371648f3764a72a2` |
| 42 | `theorem` | [nndist_dist](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/nndist-dist.md) | 344 | `result-track:31f07876885954e78001478e71aa8486432aa5f2c1631a651e2316913e28f505` |
| 43 | `theorem` | [nndist_comm](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/nndist-comm.md) | 347 | `result-track:ca4bb133bea67a5a32a99e343626c2eaf08e1a8887ed8dae66fd2cdbc8f0f083` |
| 44 | `theorem` | [nndist_triangle](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/nndist-triangle.md) | 350 | `result-track:94e76e7c30a3801b921ca674d7de71430684b0d18191c6f57edf7140a6834001` |
| 45 | `theorem` | [nndist_triangle_left](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/nndist-triangle-left.md) | 353 | `result-track:ffb0b2593bc9741e2225ce3cf9cf8d7feb763ee3a8e3d4b404c4c374168ec192` |
| 46 | `theorem` | [nndist_triangle_right](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/nndist-triangle-right.md) | 356 | `result-track:8fc8a902b37b4b1b0a0816b8ecd2e971a3d2c402426f567fab62065f0b502608` |
| 47 | `theorem` | [dist_edist](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/dist-edist.md) | 360 | `result-track:c147933b38201a471371617a3e3629eafaa29ce5aa16e38ba09caf623b63fc00` |
| 48 | `def` | [ball](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/ball.md) | 370 | `declaration-track:d13c956b161c99daeb043d4f7834724b6f6a46a198473b5a2b2503d9cf03834d` |
| 49 | `theorem` | [mem_ball](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/mem-ball.md) | 374 | `result-track:33c533112fc99842a6a75556695c399d76157fa5ca34bd002cf6a77b0b1965f9` |
| 50 | `theorem` | [mem_ball'](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/mem-ball-source-edition-2.md) | 377 | `result-track:e35f793eb8d89bcb5998034955df908cc37107faf02f0967f05cc51ece8ad6cd` |
| 51 | `theorem` | [pos_of_mem_ball](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/pos-of-mem-ball.md) | 379 | `result-track:9097a145babd7db6013f379bd67afe2fde6e33184e915ed9aa6f44d3e744f508` |
| 52 | `theorem` | [mem_ball_self](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/mem-ball-self.md) | 382 | `result-track:65e21915234b5a3897b0f3e6a90af243a99668599dc616c16901f97174021c7c` |
| 53 | `theorem` | [nonempty_ball](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/nonempty-ball.md) | 386 | `result-track:73f60cc2d76ba7dbb86bca4b3e945cd0f47f3535ab8efa144d45ee098c4a8378` |
| 54 | `theorem` | [ball_eq_empty](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/ball-eq-empty.md) | 390 | `result-track:93124a1077f1be0d61847d8e046a75c7372fd1235e2cf7ccec9d755091d8cc07` |
| 55 | `theorem` | [ball_zero](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/ball-zero.md) | 394 | `result-track:c69aecf3e6144bb0eb9b45fd1fa6ce99ec2e9d872d10477e8c7b2a8f15256717` |
| 56 | `theorem` | [exists_lt_mem_ball_of_mem_ball](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/exists-lt-mem-ball-of-mem-ball.md) | 400 | `result-track:5b811c7cf8662e59d3f51b59a069c3aee116214b8417c9662e12b809e7bc8044` |
| 57 | `theorem` | [ball_eq_ball](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/ball-eq-ball.md) | 403 | `result-track:c76f968f9cba1b1bf913da781342250d5847861f3a66da656797a546d431b116` |
| 58 | `theorem` | [ball_eq_ball'](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/ball-eq-ball-source-edition-2.md) | 407 | `result-track:f440d4da5db1ff218de8538fedec5003ae16b7a7893773961b80059307ef33af` |
| 59 | `theorem` | [iUnion_ball_nat](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/iunion-ball-nat.md) | 413 | `result-track:3749634e302a139893d37c8d80c2249938ecb8c84c52043a50e63e5316f69c67` |
| 60 | `theorem` | [iUnion_ball_nat_succ](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/iunion-ball-nat-succ.md) | 417 | `result-track:632a4d29f75b5f2c3fcdb8259bfa8fcfb14c97500c394a87c605eb5e08386be4` |
| 61 | `def` | [closedBall](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/closedball.md) | 421 | `declaration-track:a010595159cc1822a522c1499fd76863837eb38efef0b96c3190c4b5487f4437` |
| 62 | `theorem` | [mem_closedBall](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/mem-closedball.md) | 424 | `result-track:816a365e9ce86c446c9f3da873b8b92801d4a76a1e3e8fde3a55e8f39f9d978e` |
| 63 | `theorem` | [mem_closedBall'](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/mem-closedball-source-edition-2.md) | 426 | `result-track:e70ca4cd86e619a6026fcdd97a947c6ea03ab02bf5a65f3334883b31c6dd1e50` |
| 64 | `theorem` | [nonneg_of_mem_closedBall](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/nonneg-of-mem-closedball.md) | 428 | `result-track:e22ec10fcf3b6ccd86ff3fefa33c8c0ce563175d52bd36ab9a1ce4abb65addf9` |
| 65 | `def` | [sphere](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/sphere.md) | 432 | `declaration-track:ecf6eef0041ce780323b2646e79d34c3e414f21735ae57f611c001115d329056` |
| 66 | `theorem` | [mem_sphere](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/mem-sphere-source-edition-2.md) | 434 | `result-track:7b81247a1e8e816be17d5f1a8e1f3d62491cdd40ab6f00f8efa04eabeaad96a6` |
| 67 | `theorem` | [mem_sphere'](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/mem-sphere.md) | 436 | `result-track:590e95ca5ef192c80b373d64fb39d9e27493ae955d60b4480475084e943dd49e` |
| 68 | `theorem` | [ne_of_mem_sphere](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/ne-of-mem-sphere.md) | 438 | `result-track:21373875744970afcc8e47a35330cc6f58ad0eeca2bba0bca396a59ac7e2766c` |
| 69 | `theorem` | [nonneg_of_mem_sphere](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/nonneg-of-mem-sphere.md) | 441 | `result-track:cc8a0c6e20c84c4adbaea9d8843b78337db0d9cdd022d9a3a7e1048517e22fb7` |
| 70 | `theorem` | [sphere_eq_empty_of_neg](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/sphere-eq-empty-of-neg.md) | 445 | `result-track:1bfa778503542c2e8ee193d0c0d77fa7b3185446be9406c0364ea7e15a8d9b88` |
| 71 | `theorem` | [sphere_eq_empty_of_subsingleton](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/sphere-eq-empty-of-subsingleton.md) | 448 | `result-track:398418cbe5af015b91fedb423bab3434d7a79e257d9e1ca125bcbb14a0d5506b` |
| 72 | `instance` | [sphere_isEmpty_of_subsingleton](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/sphere-isempty-of-subsingleton.md) | 451 | `declaration-track:92d906d0465e238b6997973d9671083e55eefa73a447e8d14bb8c3884870125d` |
| 73 | `theorem` | [closedBall_eq_singleton_of_subsingleton](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/closedball-eq-singleton-of-subsingleton.md) | 454 | `result-track:05a97193bd7598a48035c0ab70ca3095d3c02fe20af31b8740acb8f567221505` |
| 74 | `theorem` | [ball_eq_singleton_of_subsingleton](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/ball-eq-singleton-of-subsingleton.md) | 459 | `result-track:c3c71726fbcdc82d95d9e94efc7769bcdfcc24a89ff03747d0e72baee301b0c7` |
| 75 | `theorem` | [mem_closedBall_self](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/mem-closedball-self.md) | 463 | `result-track:24b5f52ed55e4bb3ea9726fbf0877d7d97e59773ed540ae3581f874a86baedfd` |
| 76 | `theorem` | [nonempty_closedBall](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/nonempty-closedball.md) | 467 | `result-track:f4c0b559fcaacfe80635c7c7ede75a38565ddfadc00f9c6c23035b8c130fb09b` |
| 77 | `theorem` | [closedBall_eq_empty](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/closedball-eq-empty.md) | 471 | `result-track:d5d386ec63c8faef1671e45bcd835219cf11da37c36ae2e0868ca8dfd9eb73cb` |
| 78 | `theorem` | [closedBall_eq_sphere_of_nonpos](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/closedball-eq-sphere-of-nonpos.md) | 477 | `result-track:c89975997b27dbcc61c862e6073cb7b4ba1ee1e8639af323931262f1cb56b331` |
| 79 | `theorem` | [ball_subset_closedBall](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/ball-subset-closedball.md) | 480 | `result-track:1c01ac7371865045a453146956061316dba7fcde01eb4be2bea4b5a8691af78b` |
| 80 | `theorem` | [sphere_subset_closedBall](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/sphere-subset-closedball.md) | 483 | `result-track:3371dea866cffa55fdf254dc32176a5447ce49ad14fa612a5a5257e4dc471441` |
| 81 | `lemma` | [sphere_subset_ball](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/sphere-subset-ball.md) | 485 | `result-track:c9b4c4d04e9bc1af1e136db3789a8fb66916302c5aff6f67c4ebf9671e7bb868` |
| 82 | `theorem` | [closedBall_disjoint_ball](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/closedball-disjoint-ball.md) | 488 | `result-track:1508d5b5cf48cd199b83a7a63cfc14a108c0d8885093bd76824742b1fd6a5547` |
| 83 | `theorem` | [ball_disjoint_closedBall](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/ball-disjoint-closedball.md) | 492 | `result-track:7c25d350366a7133c2c62b090b66f4a46e537731d1662aabdde711c750b1cb50` |
| 84 | `theorem` | [ball_disjoint_ball](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/ball-disjoint-ball.md) | 495 | `result-track:d5b677f8a4538ac1952d58501d3a462d45419d6df8dffa7e0b4598837c3457e7` |
| 85 | `theorem` | [closedBall_disjoint_closedBall](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/closedball-disjoint-closedball.md) | 498 | `result-track:4bc4a8a694326a1a067c359bb800f15c283df47c951c68231860e902689c8479` |
| 86 | `theorem` | [sphere_disjoint_ball](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/sphere-disjoint-ball.md) | 503 | `result-track:e9d97fbb5ffc0e6c837624332bc1d6293e75a0d8fb821f015c365a9d74bdc7d3` |
| 87 | `theorem` | [ball_union_sphere](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/ball-union-sphere.md) | 507 | `result-track:6a72fc11c7e9511b5af20d1f40952deba7db6a0cf8cafa2a1144a6c75727f331` |
| 88 | `theorem` | [sphere_union_ball](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/sphere-union-ball.md) | 511 | `result-track:d51e3b265495f650b22ab3703ae9c587ecce15949ba1e40ccd86b29b07c93feb` |
| 89 | `theorem` | [closedBall_sdiff_sphere](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/closedball-sdiff-sphere.md) | 515 | `result-track:8987bf3c1335900df334d0ba2a37f76bd04060288ce3f047227d4bcb1857870d` |
| 90 | `theorem` | [closedBall_sdiff_ball](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/closedball-sdiff-ball.md) | 521 | `result-track:81261f25dada17db7c2a8c9f3dbc849ecaf33f93ad638b3412aac825a00d2923` |
| 91 | `theorem` | [mem_ball_comm](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/mem-ball-comm.md) | 526 | `result-track:258680f6f3afd522b05c632a4c0ef613ff95757ff90edf5816174c62502a72a3` |
| 92 | `theorem` | [mem_closedBall_comm](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/mem-closedball-comm.md) | 528 | `result-track:7fc9fcd70034de95e8886a78028aa3299c9c03c96e25f8bab9ced1bf8cb737be` |
| 93 | `theorem` | [mem_sphere_comm](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/mem-sphere-comm.md) | 531 | `result-track:db6ad48a208937eda50cfe999e6339468bb0ab078692bc41309963089d48ccb6` |
| 94 | `theorem` | [ball_subset_ball](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/ball-subset-ball-source-edition-2.md) | 534 | `result-track:b1248a3c33ab1b593d850c499428fa136e643f1801ebe7f82c13985daf7635cb` |
| 95 | `theorem` | [closedBall_eq_bInter_ball](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/closedball-eq-binter-ball.md) | 537 | `result-track:172748de99666250c7cbce4c99de32591be2d857ab3341543b93886e1cdb8256` |
| 96 | `theorem` | [ball_subset_ball'](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/ball-subset-ball.md) | 540 | `result-track:53c9fade94bac0990cafad212e0896ce9da4f2215da3b7e4a69e674782a71822` |
| 97 | `theorem` | [closedBall_subset_closedBall](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/closedball-subset-closedball.md) | 547 | `result-track:32c1b512bd9908e7f231f535b1e1e80f995c6659584927acb44d8117c27d7b8d` |
| 98 | `theorem` | [closedBall_subset_closedBall'](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/closedball-subset-closedball-source-edition-2.md) | 550 | `result-track:dd4d44e419e53edd623a20a45b4e49b5c95c76270ea0f5b8b55bf20a4440a59d` |
| 99 | `theorem` | [closedBall_subset_ball](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/closedball-subset-ball-source-edition-2.md) | 557 | `result-track:9efc0deef4671ac2984e310b1ce9055b895a8cf35c5d682748db085c6bfba9c4` |
| 100 | `theorem` | [closedBall_subset_ball'](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/closedball-subset-ball.md) | 560 | `result-track:533f4e572f35a1ab19c67acc936312d6d1a9a6d837d184f8470e9ae54de5f37c` |
| 101 | `theorem` | [dist_le_add_of_nonempty_closedBall_inter_closedBall](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/dist-le-add-of-nonempty-closedball-inter-closedball.md) | 567 | `result-track:2641f897fbf815c03269037740850923104704c157d615f6248f82bc91feea00` |
| 102 | `theorem` | [dist_lt_add_of_nonempty_closedBall_inter_ball](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/dist-lt-add-of-nonempty-closedball-inter-ball.md) | 574 | `result-track:11bf423676ac5c404758035085d745f48cd4a7ebb9df55c4972d6e243df84e71` |
| 103 | `theorem` | [dist_lt_add_of_nonempty_ball_inter_closedBall](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/dist-lt-add-of-nonempty-ball-inter-closedball.md) | 581 | `result-track:ae9d7e0da5e7fcd437873e870dfe897a0987b2a09d007cc3c3300bfbec29508a` |
| 104 | `theorem` | [dist_lt_add_of_nonempty_ball_inter_ball](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/dist-lt-add-of-nonempty-ball-inter-ball.md) | 587 | `result-track:2ed35b52fac30c05b70cffa872e5fd0d575517b73f9d6385d0b74757b45f142f` |
| 105 | `theorem` | [iUnion_closedBall_nat](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/iunion-closedball-nat.md) | 593 | `result-track:066b45fc0ac139c8d971a20266c481ecaa0b365208ca1090690111ddaf36e532` |
| 106 | `theorem` | [iUnion_inter_closedBall_nat](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/iunion-inter-closedball-nat.md) | 596 | `result-track:4a45d68e8261762349585685e17e201e8d53d02d3d81e8701e5db8c79ee4fcaa` |
| 107 | `theorem` | [ball_subset](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/ball-subset.md) | 599 | `result-track:eb7ba5f9e7b2b1fc10777c48964c2a76bbfb6d09f081491dbd379c38c3482c4e` |
| 108 | `theorem` | [ball_half_subset](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/ball-half-subset.md) | 603 | `result-track:cd9ab8feacb2823f16cb90283face0a976151ac0963768d6b56b5be340c388fe` |
| 109 | `theorem` | [exists_ball_subset_ball](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/exists-ball-subset-ball.md) | 606 | `result-track:f125792c097cface1249fe962c02dfeb31134bd863a8e2c1d8732ea481d21e9b` |
| 110 | `theorem` | [forall_of_forall_mem_closedBall](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/forall-of-forall-mem-closedball.md) | 611 | `result-track:5d4c47df2d04b25b8a5b0e95ec30ff28e03133fe8aed261208682e77514342b0` |
| 111 | `theorem` | [forall_of_forall_mem_ball](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/forall-of-forall-mem-ball.md) | 619 | `result-track:e411a72094701c19abfd26ce0e5200b4a0372796db9c2ca7f6d386474688b9d0` |
| 112 | `theorem` | [isBounded_iff](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/isbounded-iff.md) | 625 | `result-track:b379acdb45695f17a7261e620b98d634f295a1bf1c75e9b43f68392f76fc4cba` |
| 113 | `lemma` | [boundedSpace_iff](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/boundedspace-iff.md) | 630 | `result-track:0d5e76136ee43d185ce585feadaf5de858a8ce5b905bd160efc0d345eb47206f` |
| 114 | `theorem` | [isBounded_iff_eventually](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/isbounded-iff-eventually.md) | 634 | `result-track:871b4811ccc4fad8369cd18947920916550cbb6069d38e46247f20f4c76c183b` |
| 115 | `theorem` | [isBounded_iff_exists_ge](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/isbounded-iff-exists-ge.md) | 640 | `result-track:7d533bae4dc9e72eac6886113ce047b5753c667de24f4752d67d4eac7fef394e` |
| 116 | `theorem` | [isBounded_iff_nndist](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/isbounded-iff-nndist.md) | 645 | `result-track:e334c91517ff4df6fa1416059cf4a7f2ab53cd2987414d98656827e83286ccac` |
| 117 | `lemma` | [boundedSpace_iff_nndist](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/boundedspace-iff-nndist.md) | 650 | `result-track:f87d4425fa7692053f261e6cc2b08deb58b50f865b167488819f2278d0bc7437` |
| 118 | `lemma` | [boundedSpace_iff_edist](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/boundedspace-iff-edist.md) | 654 | `result-track:e93525a94eba1a45cb9415454a3c97806d47ebfd839f96efd381f3a75741045c` |
| 119 | `theorem` | [toUniformSpace_eq](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/touniformspace-eq.md) | 657 | `result-track:8a7243ce80280336d67630a2b626334e8ffc00f9e90585704c7d11678386b989` |
| 120 | `theorem` | [uniformity_basis_dist](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/uniformity-basis-dist.md) | 661 | `result-track:1170c8c3b08c18fc689fdf43e845c71d4ce6b6807d6cc8bc1be1beb2a355e403` |
| 121 | `theorem` | [mk_uniformity_basis](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/mk-uniformity-basis.md) | 671 | `result-track:677f8e906191666b740c552a0264515223545243d01fba3cd33669046e6f0c29` |
| 122 | `theorem` | [uniformity_basis_dist_rat](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/uniformity-basis-dist-rat.md) | 681 | `result-track:d4c31dda5c3b0e2f7a8f14db2af0c9e7fa8e307fb610c7885e5e374891026814` |
| 123 | `theorem` | [uniformity_basis_dist_inv_nat_succ](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/uniformity-basis-dist-inv-nat-succ.md) | 687 | `result-track:5ca9fa6bf838357305b70895db6831c75019a241d7d64b2307719805a25cbeeb` |
| 124 | `theorem` | [uniformity_basis_dist_inv_nat_pos](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/uniformity-basis-dist-inv-nat-pos.md) | 692 | `result-track:49e71486bfa85c424a15e05c4a4d3c4ec2e694d19e3691bfa345a8a30cc19da1` |
| 125 | `theorem` | [uniformity_basis_dist_pow](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/uniformity-basis-dist-pow.md) | 698 | `result-track:99eb19660a11ce4a0fb2948c8c247b444e40da13144e4ed518dcc724241f59a6` |
| 126 | `theorem` | [uniformity_basis_dist_lt](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/uniformity-basis-dist-lt.md) | 704 | `result-track:f9081fdbb6e7a485120501b2e92b434438b138a75907d75371afececf28793f7` |
| 127 | `theorem` | [mk_uniformity_basis_le](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/mk-uniformity-basis-le.md) | 716 | `result-track:8bfcef3b9aac07097ec086ecc9dc8ed7a477ac93dcfbce51b82b4f469c06d091` |
| 128 | `theorem` | [uniformity_basis_dist_le](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/uniformity-basis-dist-le.md) | 729 | `result-track:89c44067020db7ac6368f0562388965fa795610c724ef363a0a165032ed9ef62` |
| 129 | `theorem` | [uniformity_basis_dist_le_inv_nat_succ](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/uniformity-basis-dist-le-inv-nat-succ.md) | 733 | `result-track:e2643fd3553637071aba638598e52e2adc4e25d319646afb6f394466588d785e` |
| 130 | `theorem` | [uniformity_basis_dist_le_inv_nat_pos](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/uniformity-basis-dist-le-inv-nat-pos.md) | 738 | `result-track:0644245b8d961aa423409956ef7e77796a632c445744b12759c8d5f81eb0c9d6` |
| 131 | `theorem` | [uniformity_basis_dist_le_pow](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/uniformity-basis-dist-le-pow.md) | 744 | `result-track:ab4c66bcc9abf71261cc68884fc9346cc0ae2ac1151f12489faf268d05867292` |
| 132 | `theorem` | [mem_uniformity_dist](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/mem-uniformity-dist.md) | 750 | `result-track:f8ac64105e2ccca9ceee42dc7709f64cee096c561ec026490272169b81d8a17c` |
| 133 | `theorem` | [dist_mem_uniformity](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/dist-mem-uniformity.md) | 755 | `result-track:0cb465a72c30552a9a48240fb49215233bc58bac80e8f3ac64a7f6890d75e57d` |
| 134 | `theorem` | [uniformContinuous_iff](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/uniformcontinuous-iff.md) | 758 | `result-track:04209102a9b70c7458aff8b9c8dc966d7116692624e8bbb2865d56bf3bb0663a` |
| 135 | `theorem` | [uniformContinuousOn_iff](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/uniformcontinuouson-iff.md) | 762 | `result-track:c6e13ad5bcba58aad97b1226c65924cbb7900668bdbe3e84d4d6d23b4d1460f0` |
| 136 | `theorem` | [uniformContinuous_iff_le](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/uniformcontinuous-iff-le.md) | 767 | `result-track:fae20b423a388fb29c2a10e5e27c9d39a5e4ac4ff7926b3b54dd6566c5485801` |
| 137 | `theorem` | [uniformContinuousOn_iff_le](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/uniformcontinuouson-iff-le.md) | 771 | `result-track:8f7cb84a49ab65d7397ba5bdb2e261b8b3d326e46719beadcb4f6a0b07826ad1` |
| 138 | `theorem` | [nhds_basis_ball](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/nhds-basis-ball.md) | 776 | `result-track:234dcb3fadaec2eaecafc5a4f7ee0cfaace0b20456ecdc44f8f31123afd2b574` |
| 139 | `theorem` | [mem_nhds_iff](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/mem-nhds-iff.md) | 779 | `result-track:b41b6bfe0906efbcc4b8c2d01bdfbfb6f57517e7c8e4281278082cf459b8e67e` |
| 140 | `theorem` | [eventually_nhds_iff](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/eventually-nhds-iff.md) | 782 | `result-track:bf7af68f2ce3c965c8a6cb32ca21de8c2c0202243314fe74773ba50e3da89c57` |
| 141 | `theorem` | [eventually_nhds_iff_ball](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/eventually-nhds-iff-ball.md) | 786 | `result-track:ae8c38d0817c80ee32d4fdf89280f00e596af8b878107a39e3a2c324b9a7978b` |
| 142 | `theorem` | [eventually_nhds_prod_iff](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/eventually-nhds-prod-iff.md) | 792 | `result-track:724c811dd71b80816dca699547d73eb3b48fc8a4b491043963ed5fe727d70b21` |
| 143 | `theorem` | [eventually_prod_nhds_iff](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/eventually-prod-nhds-iff.md) | 801 | `result-track:fe76d851929ff7a847fd8fab23025e3c0218fedbca2b17993d0b8c8bc95ee9ca` |
| 144 | `theorem` | [nhds_basis_closedBall](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/nhds-basis-closedball.md) | 809 | `result-track:d036beb026ad070f12f9588f2df8393707dbd8ac98f7498d78915fbb8024dc5e` |
| 145 | `theorem` | [nhds_basis_ball_inv_nat_succ](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/nhds-basis-ball-inv-nat-succ.md) | 812 | `result-track:2a75bd6db8d30ce38ad2b5a00f93b5fd5e46222dd95329ea65f8d98212fad25c` |
| 146 | `theorem` | [nhds_basis_ball_inv_nat_pos](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/nhds-basis-ball-inv-nat-pos.md) | 816 | `result-track:fc7ef00718e19f000edc91a905f78ef88475ae8167e709e675072b0b7599b914` |
| 147 | `theorem` | [nhds_basis_closedBall_inv_nat_succ](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/nhds-basis-closedball-inv-nat-succ.md) | 820 | `result-track:318905dce77c4ab2ea1ec92fd70b8984c2559ae0240e46c9a600f110320d5013` |
| 148 | `theorem` | [nhds_basis_closedBall_inv_nat_pos](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/nhds-basis-closedball-inv-nat-pos.md) | 824 | `result-track:7da0505feed44c876f2a8a67b13b209c1c7be884a1f0946f27078c779f777723` |
| 149 | `theorem` | [nhds_basis_ball_pow](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/nhds-basis-ball-pow.md) | 828 | `result-track:d2d0e624d5059a407d52c7c2e80d499077283d98a544ec0373165c1ff33781e9` |
| 150 | `theorem` | [nhds_basis_closedBall_pow](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/nhds-basis-closedball-pow.md) | 832 | `result-track:63d113c8b27b4d9c3262b1dc68a48656b9085997a3fa07baaf129a49451f5ad1` |
| 151 | `theorem` | [isOpen_iff](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/isopen-iff.md) | 836 | `result-track:d5016f2e25b2e30a0a962a721ea5e017a58a2f6566e147998df7ab4ddbf8c881` |
| 152 | `theorem` | [isOpen_ball](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/isopen-ball.md) | 839 | `result-track:5bb7a0a702980a87146a8fdef9bc8361dac657b8241f187182ae5cba1178b96c` |
| 153 | `theorem` | [ball_mem_nhds](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/ball-mem-nhds.md) | 842 | `result-track:f8708f78636699dd550b3034e75ae71848335bb9215003b79a8eefdec04b09a8` |
| 154 | `theorem` | [closedBall_mem_nhds](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/closedball-mem-nhds.md) | 845 | `result-track:4308841cc541f0674f62627dd2e5aae46e5ba40ee74dac2eb2e6beec0dab35a7` |
| 155 | `theorem` | [closedBall_mem_nhds_of_mem](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/closedball-mem-nhds-of-mem.md) | 848 | `result-track:3e828cc2b0caceff5639dba005474350fe2299f800edd14b5303ad35163d43a4` |
| 156 | `theorem` | [nhdsWithin_basis_ball](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/nhdswithin-basis-ball.md) | 851 | `result-track:6f7e040f1f8132a0ec127a872e8675e6ebf96f32dc5b29058c34fea006c2146d` |
| 157 | `theorem` | [mem_nhdsWithin_iff](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/mem-nhdswithin-iff.md) | 855 | `result-track:d2c2216dd95701c1ad1a77ed9e6ecca3e458b465c6af79047160409eeca0c19e` |
| 158 | `theorem` | [tendsto_nhdsWithin_nhdsWithin](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/tendsto-nhdswithin-nhdswithin.md) | 858 | `result-track:e89b994e698aad782024b3b0544dd3c157b5cbe3e52bb466489abab68851e210` |
| 159 | `theorem` | [tendsto_nhdsWithin_nhds](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/tendsto-nhdswithin-nhds.md) | 864 | `result-track:8193d3b443b80f8dc3bb6a48fcdc1a9998ec526cebd58852aed4e2c067a204fe` |
| 160 | `theorem` | [tendsto_nhds_nhds](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/tendsto-nhds-nhds.md) | 870 | `result-track:939d2bfd7594dae9f5699f3957b00f6199f4da014754a4ece2474895f4b83160` |
| 161 | `theorem` | [continuousAt_iff](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/continuousat-iff.md) | 874 | `result-track:59ce30eda72f4efb2d8c885004adc16c907572792590911f9fcc6403c1486819` |
| 162 | `theorem` | [continuousWithinAt_iff](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/continuouswithinat-iff.md) | 878 | `result-track:21f32620420a2cde008a108b80137d1c97b3fd07148920d051f3bf5c5c664fe2` |
| 163 | `theorem` | [continuousOn_iff](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/continuouson-iff.md) | 883 | `result-track:7726943da3479ff28ac90d1dcc3333d6bd316f9ca8c84ce2ed6ec417bb985e1e` |
| 164 | `theorem` | [continuous_iff](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/continuous-iff-source-edition-2.md) | 887 | `result-track:c78812586400b046cdccf682c746a853f5b3448faeae0031b2cc43779186a444` |
| 165 | `theorem` | [tendsto_nhds](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/tendsto-nhds.md) | 891 | `result-track:e74b15b278db389b8999e3ad0393d36eba65e8e635c85a11f9f24d3c03102a52` |
| 166 | `theorem` | [continuousAt_iff'](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/continuousat-iff-source-edition-2.md) | 895 | `result-track:abb52b6a7a5f89915b616d876a659e762f49667ee9807f4c5975ac4db660c5e9` |
| 167 | `theorem` | [continuousWithinAt_iff'](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/continuouswithinat-iff-source-edition-2.md) | 899 | `result-track:6d215a4c4de8e6608801eea9a2beb95f8e96f8c4cec6f4f2f7c8650e098cf6a9` |
| 168 | `theorem` | [continuousOn_iff'](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/continuouson-iff-source-edition-2.md) | 903 | `result-track:a4ff821dc08b67fe1c447fa8097edf20c97fe18a7bf523e28806d481b1176fe3` |
| 169 | `theorem` | [continuous_iff'](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/continuous-iff.md) | 907 | `result-track:47f572ad3cc7ae63223d1a745908fe3d07ce628b20fe3b0c93119e927d12ec6e` |
| 170 | `theorem` | [tendsto_atTop](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/tendsto-attop.md) | 911 | `result-track:9c988ac4815a9150fc290c5524687763a122c34156ecee88be857fe4d6ee939b` |
| 171 | `theorem` | [tendsto_atTop'](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/tendsto-attop-source-edition-2.md) | 919 | `result-track:d5156e19f67a4dcd8c884b40bf9d91768a71bb6cf23739b03741e4965f5c7d74` |
| 172 | `theorem` | [isOpen_singleton_iff](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/isopen-singleton-iff.md) | 924 | `result-track:2bd22912a737edbb1088ceccf59df78432767bdc7771179b0a37e96e21a2f472` |
| 173 | `theorem` | [_root_.Dense.exists_dist_lt](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/root-dense-exists-dist-lt.md) | 928 | `result-track:a37b06b777089afa51a78c765b36aa0d8fd9e801a87d73f3e2564a3d7aba4ba3` |
| 174 | `theorem` | [_root_.DenseRange.exists_dist_lt](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/root-denserange-exists-dist-lt.md) | 933 | `result-track:a677725226eb2b818a0d430286b26174080d14b43d37edf724a4c103702bb92c` |
| 175 | `lemma` | [uniformSpace_eq_bot](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/uniformspace-eq-bot.md) | 939 | `result-track:89a1bd77653e4456d66e21472cef0276c4007141aed7e89350f096fb22c6eef3` |
| 176 | `lemma` | [DiscreteTopology.of_forall_le_dist](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/discretetopology-of-forall-le-dist.md) | 950 | `result-track:ce7bc0f97fbaa16ae0d43c13b13df37b367a54998b636627b2a2b5b6cfb4c354` |
| 177 | `theorem` | [Metric.uniformity_edist_aux](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/metric-uniformity-edist-aux.md) | 958 | `result-track:9de516eccbd413c0ec50c3118e2d08a04c1062ca324dbfd7a09c552a4837ce41` |
| 178 | `theorem` | [Metric.uniformity_edist](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/metric-uniformity-edist.md) | 970 | `result-track:061b04981682a236e451735cbd6910b4f1414f4bec963436d1dcb56104c4b79e` |
| 179 | `instance` | [(anonymous)](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/instance-source-edition-3.md) | 976 | `declaration-track:78b9908f8ebba1892e576a8a7b12aa073b95afeb7e1b34f85bb7bd31aa9094b9` |
| 180 | `theorem` | [Metric.eball_top_eq_univ](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/metric-eball-top-eq-univ.md) | 988 | `result-track:94e421ae241fdc7e3ccc68ca6fba1eb764492a674b5971597c2004db56c2b786` |
| 181 | `theorem` | [Metric.eball_ofReal](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/metric-eball-ofreal.md) | 993 | `result-track:c4c1fe7002259889a187c38ba1862206ab61887a5c998b84dcc09d71266b6ede` |
| 182 | `theorem` | [Metric.eball_coe](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/metric-eball-coe.md) | 1000 | `result-track:f90a4e3ae687926bdea61c49b1964c232c6dae011fcb45368b082770f1fda4fd` |
| 183 | `theorem` | [Metric.closedEBall_ofReal](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/metric-closedeball-ofreal.md) | 1005 | `result-track:3660813f91b780411a5f8206f43afdbba0e984ccc6b2160b0efa039c5e722f0c` |
| 184 | `theorem` | [Metric.closedEBall_coe](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/metric-closedeball-coe.md) | 1011 | `result-track:ce4679d6cf9ebeea0193e63c6bb2d3b3a24e30cab10560489220eb9326d07627` |
| 185 | `theorem` | [Metric.eball_top](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/metric-eball-top.md) | 1016 | `result-track:927f948dc8a6d35fa241c8fdf2535bd7fb90ef9c5532f7152ddb8e4ea8e82d36` |
| 186 | `abbrev` | [PseudoMetricSpace.replaceUniformity](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/pseudometricspace-replaceuniformity.md) | 1024 | `declaration-track:9948ca8b6ff8a0605e68663f1210ad19b664abd7df53504161be4c1cfb5dab3b` |
| 187 | `theorem` | [PseudoMetricSpace.replaceUniformity_eq](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/pseudometricspace-replaceuniformity-eq.md) | 1030 | `result-track:4871875437ba65671deb69b9ed07f6df9604541127a727d68481aedae52b13fc` |
| 188 | `example` | [(anonymous)](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/example-source-edition-2.md) | 1036 | `declaration-track:b142d98a619546346b6104c57ccb29fc77540531fda3adb667acb17573ab19af` |
| 189 | `abbrev` | [PseudoMetricSpace.replaceTopology](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/pseudometricspace-replacetopology.md) | 1046 | `declaration-track:e78dc22758885f75a4dfc92fd4fa9711f866f38e912f108e0f8f1518c5167c55` |
| 190 | `theorem` | [PseudoMetricSpace.replaceTopology_eq](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/pseudometricspace-replacetopology-eq.md) | 1050 | `result-track:96b5e790454e39e60daf0e1a376140821c87cfc44dcd63517109345caf5a7918` |
| 191 | `abbrev` | [PseudoEMetricSpace.toPseudoMetricSpaceOfDist](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/pseudoemetricspace-topseudometricspaceofdist.md) | 1060 | `declaration-track:a35e38a23dc91c3f515ad29ce89697a34c395860e779dbbe4b61579cb9a2edde` |
| 192 | `abbrev` | [PseudoEMetricSpace.toPseudoMetricSpace](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/pseudoemetricspace-topseudometricspace.md) | 1080 | `declaration-track:2c2b03ff8ef8f4d1dac1e0d1f805d7df53fc86e5a0cbc2bf86098c02b292b2a7` |
| 193 | `abbrev` | [PseudoMetricSpace.replaceBornology](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/pseudometricspace-replacebornology.md) | 1089 | `declaration-track:f6a2a53f4632685701b2c2c9ba64286310f030a52ffe7f02e60bd90754f25118` |
| 194 | `theorem` | [PseudoMetricSpace.replaceBornology_eq](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/pseudometricspace-replacebornology-eq.md) | 1097 | `result-track:092e5b477c0d9c1b5d7c27ab1abcbb7bdbe9151700338552eb9f754f1c17c993` |
| 195 | `example` | [(anonymous)](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/example-source-edition-3.md) | 1104 | `declaration-track:cd2eb5d8420f529de5c7e5c648c322761370d98bf57a95bece97dbafd817596d` |
| 196 | `instance` | [Real.pseudoMetricSpace](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/real-pseudometricspace.md) | 1112 | `declaration-track:87d1499a43a754e2a640ac0f5ffdd04d994e202592030270ec5a69be287fb2a5` |
| 197 | `theorem` | [Real.dist_eq](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/real-dist-eq.md) | 1118 | `result-track:52c7e191d94c4692b6a00785b683fd2f824dd4c058e75fad9e9c935a90f6604c` |
| 198 | `theorem` | [Real.nndist_eq](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/real-nndist-eq-source-edition-2.md) | 1120 | `result-track:bf947854067ac65eacf9494f810ad5f2f9df671b7c6864c350830a69c375ba3d` |
| 199 | `theorem` | [Real.nndist_eq'](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/real-nndist-eq.md) | 1122 | `result-track:9bd8678465128362c5a0b043414e7f2e390fd97d1ab0978645bb77738f5f4aa5` |
| 200 | `theorem` | [Real.dist_0_eq_abs](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/real-dist-0-eq-abs.md) | 1125 | `result-track:0735f04478d5b20493ea2d8aebfcb1c1dd3716a6b9bd80b4f1eb4685e44570aa` |
| 201 | `theorem` | [Real.sub_le_dist](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/real-sub-le-dist.md) | 1127 | `result-track:8f1b026a3e25bd4487be295b1ad0f6ac229ed13f8f1cb3c660ab4c059d5b2035` |
| 202 | `theorem` | [Real.ball_eq_Ioo](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/real-ball-eq-ioo.md) | 1131 | `result-track:ab4d65fb6cd8201a2fe54da76d7781b00fe85af97d0c5c916686d2d1bdbf855f` |
| 203 | `theorem` | [Real.ball_zero_eq_Ioo](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/real-ball-zero-eq-ioo.md) | 1136 | `result-track:5fd5ae71f00b9e05136309e77c4adf9b14ed2ed7dade36964abd6931ede4ff74` |
| 204 | `theorem` | [Real.closedBall_eq_Icc](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/real-closedball-eq-icc.md) | 1139 | `result-track:a746738fc85954e2349074a8f0c9592169333fa51f16d44c02993a1498fbac68` |
| 205 | `theorem` | [Real.closedBall_zero_eq_Icc](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/real-closedball-zero-eq-icc.md) | 1144 | `result-track:5b5ec662ed70afbc5bec1360e7e39a3c6369195e0f07cb1ff438afafa354b4dd` |
| 206 | `theorem` | [Real.Ioo_eq_ball](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/real-ioo-eq-ball.md) | 1147 | `result-track:322a7ea075b7a8b05cd24cf4c8a911ef2d8f3e9ad3a271fcd82b4bb95424cde3` |
| 207 | `theorem` | [Real.Icc_eq_closedBall](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/real-icc-eq-closedball.md) | 1151 | `result-track:e1698cf4bf806cfabacabd794ed533cebd95965dbd38ef313862847a25c422c0` |
| 208 | `lemma` | [Real.sphere_eq_pair](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/real-sphere-eq-pair.md) | 1155 | `result-track:6e7f1eb0756bc177a3abac64b468e120cd5754cc9eb2a31d1608cb472a73454c` |
| 209 | `theorem` | [Metric.uniformity_eq_comap_nhds_zero](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/metric-uniformity-eq-comap-nhds-zero.md) | 1158 | `result-track:919889b6b15fa742637aa541c739a961ad3823c8968890aa779c9b2d2d9808e6` |
| 210 | `theorem` | [tendsto_uniformity_iff_dist_tendsto_zero](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/tendsto-uniformity-iff-dist-tendsto-zero.md) | 1164 | `result-track:ccd1cdd32de2b10670878393c20a68be673bc95d47d225a3f5a83ded1fe4a2ba` |
| 211 | `theorem` | [Filter.Tendsto.congr_dist](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/filter-tendsto-congr-dist.md) | 1168 | `result-track:2419443063e90807f876066ee1a5f76ca50030332110aa5ba6019ef226f931d3` |
| 212 | `theorem` | [tendsto_iff_of_dist](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/tendsto-iff-of-dist.md) | 1175 | `result-track:bad2f25dc042354aa769b5d986c3b8b5644db57fc4388ce6b75312533e6fe445` |
| 213 | `theorem` | [PseudoMetricSpace.dist_eq_of_dist_zero](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/pseudometricspace-dist-eq-of-dist-zero.md) | 1181 | `result-track:8c7f20e8b8b3dac711d8979a1771ea39fd858b253bf73662d684f9e65aff6432` |
| 214 | `theorem` | [dist_dist_dist_le_left](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/dist-dist-dist-le-left.md) | 1185 | `result-track:ea2c897e40c93b938349453fbd72ee74260eaa96f623e4818ebbcc1f262d905e` |
| 215 | `theorem` | [dist_dist_dist_le_right](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/dist-dist-dist-le-right.md) | 1188 | `result-track:e37b4d4819210098542ca9ce3a3cd9a0daaafe3274c5b3eaa040002c6baefef9` |
| 216 | `theorem` | [dist_dist_dist_le](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/dist-dist-dist-le.md) | 1191 | `result-track:f11feb754c78f98468255b8168e723bbdc54f2e485817c56b95d52074978a94d` |
| 217 | `theorem` | [nhds_comap_dist](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/nhds-comap-dist.md) | 1195 | `result-track:c4263762722e663f0dd33481cd02efa4052b17aab37446083f30b417b17e2eeb` |
| 218 | `theorem` | [tendsto_iff_dist_tendsto_zero](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/tendsto-iff-dist-tendsto-zero.md) | 1199 | `result-track:17c9131fa21925ab66720f90543fdb9025295af4fd744f4bfe044f130fb3b60e` |
| 219 | `lemma` | [mk_uniformity_basis_of_tendsto](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/mk-uniformity-basis-of-tendsto.md) | 1209 | `result-track:570ea140f9f522601006696a7fb3a94a0e115c9f08a8b1a594918b9c8cc7b593` |
| 220 | `theorem` | [ball_subset_interior_closedBall](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/ball-subset-interior-closedball.md) | 1219 | `result-track:dc8b4dcf6adadd508482e94ca8125f9bebb19c6d0eec56c4de4d6610378e1277` |
| 221 | `theorem` | [mem_closure_iff](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/mem-closure-iff.md) | 1223 | `result-track:8be79212c893dc8dd32a8d549b879c609bd629175b97e46490458f8c511dd598` |
| 222 | `theorem` | [mem_closure_range_iff](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/mem-closure-range-iff.md) | 1226 | `result-track:86ce7271bc416fc82e38331d73b117cd1cd18af2608f246da9f7a19e95280262` |
| 223 | `theorem` | [mem_closure_range_iff_nat](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/mem-closure-range-iff-nat.md) | 1230 | `result-track:b926dee77debaf0ab78109092425a3656622c3f19625057bf4a7fd2952bc0f82` |
| 224 | `theorem` | [mem_of_closed'](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/mem-of-closed.md) | 1235 | `result-track:699df9c69e0383c0ebda6c0222e5b4d0afc576ef1785fbdce7ac9f125cfa051f` |
| 225 | `theorem` | [dense_iff](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/dense-iff.md) | 1239 | `result-track:afde0b9c5f967788b09a67e931d087c872c22e9f88c9475e9e9f1ad2e4b56940` |
| 226 | `theorem` | [dense_iff_iUnion_ball](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/dense-iff-iunion-ball.md) | 1243 | `result-track:371ca43c1ee21b8a37a3d1f95cc4555a375aa0b2402bff2105ea593275a74b78` |
| 227 | `theorem` | [denseRange_iff](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/denserange-iff.md) | 1247 | `result-track:a6288da3251150cc69f704fa49cd9613c98398d003257418a73f2913e2c3f5c6` |
| 228 | `instance` | [(anonymous)](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/instance-source-edition-6.md) | 1254 | `declaration-track:f3217facdf420faa4c183fb50d4e5651f7768e93592bfd06e530ca2c861b24a7` |
| 229 | `instance` | [(anonymous)](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/instance.md) | 1255 | `declaration-track:6e91454023416cecc4d856db812d244f0d6df9ec6ba35b3cc6caffa0c23faae2` |
| 230 | `theorem` | [nndist_ofMul](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/nndist-ofmul.md) | 1261 | `result-track:7b3c9278a2e6b99f366bb96a282e85d651f2a43e7f8a203994010896d93d93ef` |
| 231 | `theorem` | [nndist_ofAdd](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/nndist-ofadd.md) | 1263 | `result-track:efc3189fa290659d89bf4c5e437a844eedc90accbc58e6dc460a9a9d2610c82c` |
| 232 | `theorem` | [nndist_toMul](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/nndist-tomul.md) | 1265 | `result-track:44484e5c6ed6fe9c468eb0e871a6c42d5df52c59a11dc5a49d8f4326882cfca6` |
| 233 | `theorem` | [nndist_toAdd](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/nndist-toadd.md) | 1268 | `result-track:1c8ba56a360215cb49929db6f7612e45af7c00a26c35a21afa07b4da2b57fbd9` |
| 234 | `instance` | [(anonymous)](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/instance-source-edition-5.md) | 1274 | `declaration-track:efe8ec65856a3d548bcf61603aa0c176aa871b90afc395b328be63b74f68697c` |
| 235 | `theorem` | [nndist_toDual](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/nndist-todual.md) | 1280 | `result-track:8b12ba1fddf3e962db40c46af20942cd46b9593d1261031ec8d1f2d5f2c3c58a` |
| 236 | `theorem` | [nndist_ofDual](../../../../GeneralTopology/PseudoDefsPublic.lean/declarations/nndist-ofdual.md) | 1282 | `result-track:afb7500713462aa6ebdeb8f02691e1cf8ff273c31037c6695b873b1b35e0de0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e20f96856c7bae5a18b274feed031b1c896ae5b899ba3eca1cae2ab4bc8d271d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variant13cd9bc80e44bf7b61a55b5b1c2993058ac995f8803a6fb58c230c23a1d0fa35.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/Defs/Variant13cd9bc80e44bf7b61a55b5b1c2993058ac995f8803a6fb58c230c23a1d0fa35.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
