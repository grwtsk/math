# Verification target: Pseudo Defs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d0e6da2c77245966a3fa5c4356ba79581daaa14",
  "lexical_observation_count": 223,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variant825972435fbcd324cf276a031e80b9b26138ddb7e1bed1530124b46f66f0799e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/PseudoDefs.lean/index.md) · [Full source](../../../../GeneralTopology/PseudoDefs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d0e6da2c77245966a3fa5c4356ba79581daaa14`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variant825972435fbcd324cf276a031e80b9b26138ddb7e1bed1530124b46f66f0799e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Defs/Variant825972435fbcd324cf276a031e80b9b26138ddb7e1bed1530124b46f66f0799e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENNReal.Real` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Bound.Attribute` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bornology.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.EMetricSpace.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [UniformSpace.ofDist_aux](../../../../GeneralTopology/PseudoDefs.lean/declarations/uniformspace-ofdist-aux.md) | 52 | `result-track:630123bf23c72a239263fb931f6d7f264748a86b6f057ac3834d2b5ecb8a08e6` |
| 2 | `def` | [UniformSpace.ofDist](../../../../GeneralTopology/PseudoDefs.lean/declarations/uniformspace-ofdist.md) | 56 | `declaration-track:76a64fe1c41570976afb28a7e3d790f1dd79222bddb8452a9f3a36d50703d7c9` |
| 3 | `abbrev` | [Bornology.ofDist](../../../../GeneralTopology/PseudoDefs.lean/declarations/bornology-ofdist.md) | 62 | `declaration-track:03e092e35be8a2d0fb41ca0f962c95beaae9c1215b987226caa91edc4ea55669` |
| 4 | `class` | [Dist](../../../../GeneralTopology/PseudoDefs.lean/declarations/dist.md) | 84 | `declaration-track:6de992c8fcb198718904ac137c1ec0074140a381012d53151a3bf9286899aba8` |
| 5 | `theorem` | [dist_nonneg'](../../../../GeneralTopology/PseudoDefs.lean/declarations/dist-nonneg.md) | 93 | `result-track:39bbea423ceb9ff12049d8c18564329948d9ee35f35ba7ba66e30cbb1e92fa30` |
| 6 | `class` | [PseudoMetricSpace](../../../../GeneralTopology/PseudoDefs.lean/declarations/pseudometricspace.md) | 118 | `declaration-track:f92793fd96441aa671b6efb84976b94e98dedfc5c3ef9244735215923b1b913e` |
| 7 | `theorem` | [PseudoMetricSpace.ext](../../../../GeneralTopology/PseudoDefs.lean/declarations/pseudometricspace-ext.md) | 134 | `result-track:8af368d59e9a09438666fb63dbb35e4d8da9441ea6d58747c7fb27b7f2c86c96` |
| 8 | `instance` | [(anonymous)](../../../../GeneralTopology/PseudoDefs.lean/declarations/instance-source-edition-3.md) | 153 | `declaration-track:a7401491302fb5495dfe73a9befeef759c3fcd7c1f89c70c92f3107924723432` |
| 9 | `def` | [PseudoMetricSpace.ofDistTopology](../../../../GeneralTopology/PseudoDefs.lean/declarations/pseudometricspace-ofdisttopology.md) | 159 | `declaration-track:c3598c35e454af956930b26ab1c47a0c8026e0f7906461c656851d5816b8b7bd` |
| 10 | `theorem` | [dist_self](../../../../GeneralTopology/PseudoDefs.lean/declarations/dist-self.md) | 178 | `result-track:e587f688b4cee1f20e372990a52cf5068075d4a9930784bd5ade28c821f63faf` |
| 11 | `theorem` | [dist_comm](../../../../GeneralTopology/PseudoDefs.lean/declarations/dist-comm.md) | 181 | `result-track:d7653235c9b731f06010c8cb4d64012965ea2999e4a5b4b0b7baa70f4436d48c` |
| 12 | `theorem` | [edist_dist](../../../../GeneralTopology/PseudoDefs.lean/declarations/edist-dist.md) | 184 | `result-track:b29c3807856970e190efbf01c8f60f45ed789da32c8a260d36f202efb88038c2` |
| 13 | `theorem` | [dist_triangle](../../../../GeneralTopology/PseudoDefs.lean/declarations/dist-triangle.md) | 188 | `result-track:40ab0de8aa9b62eb8ea50f78efe8cc220e4e4d08590993355a27b0be50ffe162` |
| 14 | `theorem` | [dist_triangle_left](../../../../GeneralTopology/PseudoDefs.lean/declarations/dist-triangle-left.md) | 191 | `result-track:f5fa09e94c0e5667e15383b0b64029f92675b1b232bf18cc6a0b5bc5164f761b` |
| 15 | `theorem` | [dist_triangle_right](../../../../GeneralTopology/PseudoDefs.lean/declarations/dist-triangle-right.md) | 194 | `result-track:ee41520f66c1ec8d61c969d59d93367370e9c88e0a4d38534cdae159730ae7d8` |
| 16 | `theorem` | [dist_triangle4](../../../../GeneralTopology/PseudoDefs.lean/declarations/dist-triangle4.md) | 197 | `result-track:f16eb64a036ff2074b8d0f24edfbab2e79f5aa6d0216f10c6ed6b66173e7f985` |
| 17 | `theorem` | [dist_triangle4_left](../../../../GeneralTopology/PseudoDefs.lean/declarations/dist-triangle4-left.md) | 202 | `result-track:57a148dd3895f1028d29f212d651033b7007f154e6487e343f386e253ce27c26` |
| 18 | `theorem` | [dist_triangle4_right](../../../../GeneralTopology/PseudoDefs.lean/declarations/dist-triangle4-right.md) | 207 | `result-track:8fab3c03a911ea830232ee76ff5bac6215708eaf9b5e06f21d4e62d12449fc21` |
| 19 | `theorem` | [dist_triangle8](../../../../GeneralTopology/PseudoDefs.lean/declarations/dist-triangle8.md) | 212 | `result-track:a64d0ca40ab15f31aab0706c7e16d8baa2f2f8e764c3afe98f75df31703a4fe0` |
| 20 | `theorem` | [swap_dist](../../../../GeneralTopology/PseudoDefs.lean/declarations/swap-dist.md) | 220 | `result-track:c937e17d403b7d390dcf728cd3bf168e46744edc3069017549022c274fa3ebf0` |
| 21 | `theorem` | [abs_dist_sub_le](../../../../GeneralTopology/PseudoDefs.lean/declarations/abs-dist-sub-le.md) | 222 | `result-track:76e302bc00ba1b3a07c63f48856477ed7ba681a99438157d0168314d64f83b04` |
| 22 | `theorem` | [dist_nonneg](../../../../GeneralTopology/PseudoDefs.lean/declarations/dist-nonneg-source-edition-2.md) | 227 | `result-track:471b0b15bc28c9b2d56e8823d989c67462e298a25b1ba71937017d3c1b842773` |
| 23 | `def` | [evalDist](../../../../GeneralTopology/PseudoDefs.lean/declarations/evaldist.md) | 236 | `declaration-track:4ab73379ab444ff259d429961ac1976cc5784c2ab8997f8e04d6d6ada235c7b2` |
| 24 | `example` | [(anonymous)](../../../../GeneralTopology/PseudoDefs.lean/declarations/example.md) | 246 | `declaration-track:2ec6f29c71eaf8886ff7fb13b4a592b27c278e9805e80eca134d59e94588dad7` |
| 25 | `theorem` | [abs_dist](../../../../GeneralTopology/PseudoDefs.lean/declarations/abs-dist.md) | 248 | `result-track:70446fa1899f0dd330dc4ecf220b752d021edd8436b3d397143c7129ff11b40d` |
| 26 | `class` | [NNDist](../../../../GeneralTopology/PseudoDefs.lean/declarations/nndist.md) | 251 | `declaration-track:b760cac946db9288ec9315ab5e5873f79619bba6096cf08a6a472d2d78bb93ef` |
| 27 | `instance` | [(anonymous)](../../../../GeneralTopology/PseudoDefs.lean/declarations/instance-source-edition-4.md) | 259 | `declaration-track:b2c1607599a6a60e235fbaa453327774c2e8dea031244670d4ffa3d342011c56` |
| 28 | `theorem` | [dist_nndist](../../../../GeneralTopology/PseudoDefs.lean/declarations/dist-nndist.md) | 263 | `result-track:642950f29f98d1bbeaab8403d19a4d646c445b8be0f55705b13161c33a6a3e75` |
| 29 | `theorem` | [coe_nndist](../../../../GeneralTopology/PseudoDefs.lean/declarations/coe-nndist.md) | 266 | `result-track:583f5ce9f381104edbaf6c10c81ac477ba0c0a243159bc2d5a48a6f84726f369` |
| 30 | `theorem` | [edist_nndist](../../../../GeneralTopology/PseudoDefs.lean/declarations/edist-nndist.md) | 269 | `result-track:84acee439ae7a09764dcb4b3011657feb7fb6f3356b3f3665d41d7de6e3c597e` |
| 31 | `theorem` | [nndist_edist](../../../../GeneralTopology/PseudoDefs.lean/declarations/nndist-edist.md) | 273 | `result-track:11fb9c6303e2a8bf78e3ad3f68e8813ba33f20d886959155fd2c35ba8bc78deb` |
| 32 | `theorem` | [coe_nnreal_ennreal_nndist](../../../../GeneralTopology/PseudoDefs.lean/declarations/coe-nnreal-ennreal-nndist.md) | 277 | `result-track:aea73a46344e3bcdcee7ef048d3e9d3e41e1dc7831e53869aed827c8739ea441` |
| 33 | `theorem` | [edist_lt_coe](../../../../GeneralTopology/PseudoDefs.lean/declarations/edist-lt-coe.md) | 281 | `result-track:3800a5aa9829f3d0fc6afe00043c887a21dae6db246b534b66eea9d74f2ca7b4` |
| 34 | `theorem` | [edist_le_coe](../../../../GeneralTopology/PseudoDefs.lean/declarations/edist-le-coe.md) | 285 | `result-track:4eefac058c89375f75ce68d3c390a0e9c264c1b13ed9b78058481d503ba3112a` |
| 35 | `theorem` | [edist_lt_top](../../../../GeneralTopology/PseudoDefs.lean/declarations/edist-lt-top.md) | 289 | `result-track:eeaa5bfca101daf34c02337abc1a261790c3d1d5ebc2e604c8a5b188a3fa2966` |
| 36 | `theorem` | [edist_ne_top](../../../../GeneralTopology/PseudoDefs.lean/declarations/edist-ne-top.md) | 293 | `result-track:c491a8b3026361b374ab1cc4b21d4448ae5055d8f6b661b8833ba90152534ea7` |
| 37 | `theorem` | [nndist_self](../../../../GeneralTopology/PseudoDefs.lean/declarations/nndist-self.md) | 297 | `result-track:db4b638286f83de367545fdf585fcc098dfc16dcd9b73f15e462dba3f0a7ec9f` |
| 38 | `theorem` | [dist_lt_coe](../../../../GeneralTopology/PseudoDefs.lean/declarations/dist-lt-coe.md) | 300 | `result-track:e3076de2f50fa17f0eef558afb475f87db1fba4491f0b44dbd2b6be156d80355` |
| 39 | `theorem` | [dist_le_coe](../../../../GeneralTopology/PseudoDefs.lean/declarations/dist-le-coe.md) | 304 | `result-track:c76a6e0ecf304ee65753a4693f72cb96c99e5d8bef94adcd212849725a592fc3` |
| 40 | `theorem` | [edist_lt_ofReal](../../../../GeneralTopology/PseudoDefs.lean/declarations/edist-lt-ofreal.md) | 308 | `result-track:e50b2400d05c8e5c0c2fe49d4b26428fb8f2d03fd17766290f6b085a5db7b5ce` |
| 41 | `theorem` | [edist_le_ofReal](../../../../GeneralTopology/PseudoDefs.lean/declarations/edist-le-ofreal.md) | 312 | `result-track:7d6ca4fa02664a07ade3131a94441509f9f0dee5200676c5e44e034f8e4ce853` |
| 42 | `theorem` | [nndist_dist](../../../../GeneralTopology/PseudoDefs.lean/declarations/nndist-dist.md) | 317 | `result-track:f6fe3d25c817225f6acf1659762c881e8cdeb35f9a9622c50fc26913c2c8194a` |
| 43 | `theorem` | [nndist_comm](../../../../GeneralTopology/PseudoDefs.lean/declarations/nndist-comm.md) | 320 | `result-track:b4eefc598b0263980b7cceb2ae15cbf5fae88ee771e9f85ecb4dd96ee8a94165` |
| 44 | `theorem` | [nndist_triangle](../../../../GeneralTopology/PseudoDefs.lean/declarations/nndist-triangle.md) | 323 | `result-track:12082e47bf76dd37812fa9e7e598df9d21613dd47de6f5185c8a42c44f205cae` |
| 45 | `theorem` | [nndist_triangle_left](../../../../GeneralTopology/PseudoDefs.lean/declarations/nndist-triangle-left.md) | 326 | `result-track:601170c2e3b76afec12118c7337ad3d6745ba8d96b103e00f56dbf76dc0e2a32` |
| 46 | `theorem` | [nndist_triangle_right](../../../../GeneralTopology/PseudoDefs.lean/declarations/nndist-triangle-right.md) | 329 | `result-track:06a101e63691b4dc459810ecd7b0d011fae69eb579d5f6a2bee8f9555aa4a643` |
| 47 | `theorem` | [dist_edist](../../../../GeneralTopology/PseudoDefs.lean/declarations/dist-edist.md) | 333 | `result-track:8a623638c8354fd7a3480620469cac717f4dc7d89975e05bc677a92cc12aa288` |
| 48 | `def` | [ball](../../../../GeneralTopology/PseudoDefs.lean/declarations/ball.md) | 342 | `declaration-track:be39dcbd2dad7ab98f78e029ac1a79156d79aee9b9f7ed637b8b77034fb964ec` |
| 49 | `theorem` | [mem_ball](../../../../GeneralTopology/PseudoDefs.lean/declarations/mem-ball.md) | 346 | `result-track:375f53b5e36470067126fc68babdec63de7b971806b08b0d0a50742ac299555d` |
| 50 | `theorem` | [mem_ball'](../../../../GeneralTopology/PseudoDefs.lean/declarations/mem-ball-source-edition-2.md) | 349 | `result-track:6d9a664813eddafbdfc5b4d609dd4157fd0e4e588ef0254d31df7f7fb14df80d` |
| 51 | `theorem` | [pos_of_mem_ball](../../../../GeneralTopology/PseudoDefs.lean/declarations/pos-of-mem-ball.md) | 351 | `result-track:bdce550606a3a0c30d497dcddfff25152e7f815a8e66056f55250d50fd06fba5` |
| 52 | `theorem` | [mem_ball_self](../../../../GeneralTopology/PseudoDefs.lean/declarations/mem-ball-self.md) | 354 | `result-track:8f87c63ff2002873a0b8242ffa46566b8e73050525d5693cc1206b9f91641513` |
| 53 | `theorem` | [nonempty_ball](../../../../GeneralTopology/PseudoDefs.lean/declarations/nonempty-ball.md) | 358 | `result-track:b76284e9d1dfc08493f25584ea7a00bc18444ea48297d3578a80f0fdb9cfb2a2` |
| 54 | `theorem` | [ball_eq_empty](../../../../GeneralTopology/PseudoDefs.lean/declarations/ball-eq-empty.md) | 362 | `result-track:7178bbf85ec815d713a03361ea7be9a12d943b074b22924463f92d83c7ab1e2f` |
| 55 | `theorem` | [ball_zero](../../../../GeneralTopology/PseudoDefs.lean/declarations/ball-zero.md) | 366 | `result-track:c7ca692023eeebdeca763d2d8bfa6952260aa9e4b419f99a29fa11d6a214df11` |
| 56 | `theorem` | [exists_lt_mem_ball_of_mem_ball](../../../../GeneralTopology/PseudoDefs.lean/declarations/exists-lt-mem-ball-of-mem-ball.md) | 372 | `result-track:72c49437598165ff070b1810ccf0384132c42822515993c1d84c92b77d5e6dbc` |
| 57 | `theorem` | [ball_eq_ball](../../../../GeneralTopology/PseudoDefs.lean/declarations/ball-eq-ball.md) | 376 | `result-track:abcf5d12a1fe1cfbbed4047d1e7f53f6e3b2aaa0572a568625baa28ad6dbb9ca` |
| 58 | `theorem` | [ball_eq_ball'](../../../../GeneralTopology/PseudoDefs.lean/declarations/ball-eq-ball-source-edition-2.md) | 380 | `result-track:e352be7f46748a23e80c6b4feb713c900ce2202ca4d2c8aeedb68b07c9886c92` |
| 59 | `theorem` | [iUnion_ball_nat](../../../../GeneralTopology/PseudoDefs.lean/declarations/iunion-ball-nat.md) | 386 | `result-track:11bbd554bb91c5a2abe300f9406abbec191f5b153e94cb0d0f851d1988b31b1c` |
| 60 | `theorem` | [iUnion_ball_nat_succ](../../../../GeneralTopology/PseudoDefs.lean/declarations/iunion-ball-nat-succ.md) | 390 | `result-track:819f86a71892b1bf2d20846858b9f0a338f6cf7a64b82792dc4632294b12600d` |
| 61 | `def` | [closedBall](../../../../GeneralTopology/PseudoDefs.lean/declarations/closedball.md) | 394 | `declaration-track:db59fa8aeaa53101058a7f02b67c64c688b2e0743095609c490b672c9b498eb8` |
| 62 | `theorem` | [mem_closedBall](../../../../GeneralTopology/PseudoDefs.lean/declarations/mem-closedball.md) | 397 | `result-track:6614990e981b874d1015cfa9211df6d6fc24a5b9433869a44195786d16108cae` |
| 63 | `theorem` | [mem_closedBall'](../../../../GeneralTopology/PseudoDefs.lean/declarations/mem-closedball-source-edition-2.md) | 399 | `result-track:9ed95f951d479ed6aa31fd4627d9eb32713eaf08b18815d26e37abb7e82bc94e` |
| 64 | `def` | [sphere](../../../../GeneralTopology/PseudoDefs.lean/declarations/sphere.md) | 402 | `declaration-track:e5df594c42d64060c021b95b31c210964defdf5ae6b6bc0a7be738f93916b437` |
| 65 | `theorem` | [mem_sphere](../../../../GeneralTopology/PseudoDefs.lean/declarations/mem-sphere-source-edition-2.md) | 404 | `result-track:9e854ee689e9cee7b13d081d03e1357bfd4446051af197449509f034605144f7` |
| 66 | `theorem` | [mem_sphere'](../../../../GeneralTopology/PseudoDefs.lean/declarations/mem-sphere.md) | 406 | `result-track:70a38503efa3b0c41ceb160448ac01dffa9ae780fc386ba30e687ebf0447014f` |
| 67 | `theorem` | [ne_of_mem_sphere](../../../../GeneralTopology/PseudoDefs.lean/declarations/ne-of-mem-sphere.md) | 408 | `result-track:6daaeaaba0a0938324ed30ff849522f78b5b7418d57a6b3be7babe8fb5de472c` |
| 68 | `theorem` | [nonneg_of_mem_sphere](../../../../GeneralTopology/PseudoDefs.lean/declarations/nonneg-of-mem-sphere.md) | 411 | `result-track:b0c8d5766bdc28b255568a3c7a65c6b5db2902fac4c5d5d201a19c964ae452fa` |
| 69 | `theorem` | [sphere_eq_empty_of_neg](../../../../GeneralTopology/PseudoDefs.lean/declarations/sphere-eq-empty-of-neg.md) | 415 | `result-track:cb292f853ecc4a5fee28639da59c75c503a85c0c6c238fa2b334b17428879c94` |
| 70 | `theorem` | [sphere_eq_empty_of_subsingleton](../../../../GeneralTopology/PseudoDefs.lean/declarations/sphere-eq-empty-of-subsingleton.md) | 418 | `result-track:f75b03b7eb3eb02fe07e613d152e3bbd28dd23db7f0edc2ce6d63ba802807bf0` |
| 71 | `instance` | [sphere_isEmpty_of_subsingleton](../../../../GeneralTopology/PseudoDefs.lean/declarations/sphere-isempty-of-subsingleton.md) | 421 | `declaration-track:35549ff63af5108e0fde17c5434016b91562e40cdaa36988d42d7630cede293f` |
| 72 | `theorem` | [closedBall_eq_singleton_of_subsingleton](../../../../GeneralTopology/PseudoDefs.lean/declarations/closedball-eq-singleton-of-subsingleton.md) | 424 | `result-track:58915deb3803e91ae176408a1349f28c4c3b1ab7b0c91598c1c0060f28482cce` |
| 73 | `theorem` | [ball_eq_singleton_of_subsingleton](../../../../GeneralTopology/PseudoDefs.lean/declarations/ball-eq-singleton-of-subsingleton.md) | 429 | `result-track:7f49a172e0b2c59789d24695e4c8ee8e7b2cf961137c6f00a8292960b3255802` |
| 74 | `theorem` | [mem_closedBall_self](../../../../GeneralTopology/PseudoDefs.lean/declarations/mem-closedball-self.md) | 433 | `result-track:b821c85e3218332ff1ac5bfdc7d686dc1794296e8fa6af412e2a0b8711adc2eb` |
| 75 | `theorem` | [nonempty_closedBall](../../../../GeneralTopology/PseudoDefs.lean/declarations/nonempty-closedball.md) | 437 | `result-track:b7df779cf194955d751b6d02e445cf06e3244592f1e9925167d34d2611c5525d` |
| 76 | `theorem` | [closedBall_eq_empty](../../../../GeneralTopology/PseudoDefs.lean/declarations/closedball-eq-empty.md) | 441 | `result-track:5b7ba36682079a30482960675895e64e81e4b11b413062ec6bfc2e1547a1e192` |
| 77 | `theorem` | [closedBall_eq_sphere_of_nonpos](../../../../GeneralTopology/PseudoDefs.lean/declarations/closedball-eq-sphere-of-nonpos.md) | 445 | `result-track:df8aa827add090c1532347c56b4765deca5fe97a22e96371925515a729f83557` |
| 78 | `theorem` | [ball_subset_closedBall](../../../../GeneralTopology/PseudoDefs.lean/declarations/ball-subset-closedball.md) | 448 | `result-track:7b8ddf6623bfa2e1b705af948f902db0e33efafb7068b962f2f106e40e99a0a4` |
| 79 | `theorem` | [sphere_subset_closedBall](../../../../GeneralTopology/PseudoDefs.lean/declarations/sphere-subset-closedball.md) | 451 | `result-track:0a0ee32a32d65c997162bfef00439754e3b064804bb46f79bf7f8d8cf18b3295` |
| 80 | `lemma` | [sphere_subset_ball](../../../../GeneralTopology/PseudoDefs.lean/declarations/sphere-subset-ball.md) | 453 | `result-track:165fb07ecae48d38864d7773d829fb4446adb12acb3d8313ba50422809afd694` |
| 81 | `theorem` | [closedBall_disjoint_ball](../../../../GeneralTopology/PseudoDefs.lean/declarations/closedball-disjoint-ball.md) | 456 | `result-track:fe2461d6a36b58c4a7a98fea4d19af4733aad928e38447c3772f5bf7bcc2b6dc` |
| 82 | `theorem` | [ball_disjoint_closedBall](../../../../GeneralTopology/PseudoDefs.lean/declarations/ball-disjoint-closedball.md) | 460 | `result-track:460b411ed321caacdea1bdab3521b5ab62819cc263e9118221b3715fa90f2c7c` |
| 83 | `theorem` | [ball_disjoint_ball](../../../../GeneralTopology/PseudoDefs.lean/declarations/ball-disjoint-ball.md) | 463 | `result-track:b7f072562e699cd15ee6a6ff905439d89a4b63d9d2e67b3c810d3a0c0c71806e` |
| 84 | `theorem` | [closedBall_disjoint_closedBall](../../../../GeneralTopology/PseudoDefs.lean/declarations/closedball-disjoint-closedball.md) | 466 | `result-track:bea39b5dd58a035e33d44021ad191f32bce5577f361b81611bdff4989ec6f405` |
| 85 | `theorem` | [sphere_disjoint_ball](../../../../GeneralTopology/PseudoDefs.lean/declarations/sphere-disjoint-ball.md) | 471 | `result-track:faa5c50d49b59e462622d89e41213c4bf5dd6e02b4839154fb73e37a35f34d69` |
| 86 | `theorem` | [ball_union_sphere](../../../../GeneralTopology/PseudoDefs.lean/declarations/ball-union-sphere.md) | 475 | `result-track:b45189c961c673b8a6600a6f5421badd8b81932e3e5a8e7f45d5f7bb05f3dd73` |
| 87 | `theorem` | [sphere_union_ball](../../../../GeneralTopology/PseudoDefs.lean/declarations/sphere-union-ball.md) | 479 | `result-track:0a0eb25120bf43f87bc9fbad3671a77d415a14030cc56dc94d9276836ee6c976` |
| 88 | `theorem` | [closedBall_diff_sphere](../../../../GeneralTopology/PseudoDefs.lean/declarations/closedball-diff-sphere.md) | 483 | `result-track:bb8cc64137e4ad1685813e8c90083b932b31be1e8ec52bb67f353dcd894ac98c` |
| 89 | `theorem` | [closedBall_diff_ball](../../../../GeneralTopology/PseudoDefs.lean/declarations/closedball-diff-ball.md) | 487 | `result-track:8a712e7057c6242199dd8660a35c871e041c68ec3560baac9661e532c85d4bbb` |
| 90 | `theorem` | [mem_ball_comm](../../../../GeneralTopology/PseudoDefs.lean/declarations/mem-ball-comm.md) | 490 | `result-track:da75c03555bef3863d371fa7852f144569079ea78621e285e8bf1f2883ec5f39` |
| 91 | `theorem` | [mem_closedBall_comm](../../../../GeneralTopology/PseudoDefs.lean/declarations/mem-closedball-comm.md) | 492 | `result-track:fb4eaf6ca5d7cbeb205e2a3f0abf24163b467b3aa3a958b449e915e72ee1b861` |
| 92 | `theorem` | [mem_sphere_comm](../../../../GeneralTopology/PseudoDefs.lean/declarations/mem-sphere-comm.md) | 495 | `result-track:c3b5cc861e627d8420202642603078899bbccd1ac15b0974b040ee771bc5aa62` |
| 93 | `theorem` | [ball_subset_ball](../../../../GeneralTopology/PseudoDefs.lean/declarations/ball-subset-ball-source-edition-2.md) | 498 | `result-track:d5a1e4ec60a68d2e98e312b2a122f824dbf6bf4aa5818c606bd71530b67891eb` |
| 94 | `theorem` | [closedBall_eq_bInter_ball](../../../../GeneralTopology/PseudoDefs.lean/declarations/closedball-eq-binter-ball.md) | 501 | `result-track:da40e5e5edcff770d811be01b2d385042ed98c82e18866d9edab81e6d7717e90` |
| 95 | `theorem` | [ball_subset_ball'](../../../../GeneralTopology/PseudoDefs.lean/declarations/ball-subset-ball.md) | 504 | `result-track:bcd2838bf066e9c91c1331d1a3e31ca4409f5c0dfca9ef310c37f134d3864086` |
| 96 | `theorem` | [closedBall_subset_closedBall](../../../../GeneralTopology/PseudoDefs.lean/declarations/closedball-subset-closedball-source-edition-2.md) | 511 | `result-track:ee6cfb998a81fd8fc77f69db6af31fb8674ca6524b0b10704023822627a7962b` |
| 97 | `theorem` | [closedBall_subset_closedBall'](../../../../GeneralTopology/PseudoDefs.lean/declarations/closedball-subset-closedball.md) | 514 | `result-track:194fe54bebeba5f38f0eab9c769e0b3faf7920c04963b859f1ceec8e230888d2` |
| 98 | `theorem` | [closedBall_subset_ball](../../../../GeneralTopology/PseudoDefs.lean/declarations/closedball-subset-ball.md) | 521 | `result-track:152a8f7f11d26ebdeb712a642f8ec7a5c2be73392fdbd2762e76d150e4a2880a` |
| 99 | `theorem` | [closedBall_subset_ball'](../../../../GeneralTopology/PseudoDefs.lean/declarations/closedball-subset-ball-source-edition-2.md) | 524 | `result-track:5d598067b3280b6c73a5bbfdf3f4e2a65acaf4b691f88bd355d2a7733cebdebb` |
| 100 | `theorem` | [dist_le_add_of_nonempty_closedBall_inter_closedBall](../../../../GeneralTopology/PseudoDefs.lean/declarations/dist-le-add-of-nonempty-closedball-inter-closedball.md) | 531 | `result-track:a039da4b08e521ca0424923d91b8e1ca00c5d05c521b864bc70d204aa6c8fefe` |
| 101 | `theorem` | [dist_lt_add_of_nonempty_closedBall_inter_ball](../../../../GeneralTopology/PseudoDefs.lean/declarations/dist-lt-add-of-nonempty-closedball-inter-ball.md) | 538 | `result-track:3bdc3cb70a53dca1bc7eb8a7f3a483b0a0cf54d9729031802bf664bb1f3a55b8` |
| 102 | `theorem` | [dist_lt_add_of_nonempty_ball_inter_closedBall](../../../../GeneralTopology/PseudoDefs.lean/declarations/dist-lt-add-of-nonempty-ball-inter-closedball.md) | 545 | `result-track:87f94c3c3c360dda7040df15e4a5e5e55c951805444318a55932cad518f0a8be` |
| 103 | `theorem` | [dist_lt_add_of_nonempty_ball_inter_ball](../../../../GeneralTopology/PseudoDefs.lean/declarations/dist-lt-add-of-nonempty-ball-inter-ball.md) | 551 | `result-track:83f1b52c2715c02e827a27a95461164494d61027ba42136328892100d03b6abb` |
| 104 | `theorem` | [iUnion_closedBall_nat](../../../../GeneralTopology/PseudoDefs.lean/declarations/iunion-closedball-nat.md) | 557 | `result-track:7715ebf6f9e42c8a76a9d0d52ee3fdeadc5f5eabfea88d543e7dabf3ce0630f9` |
| 105 | `theorem` | [iUnion_inter_closedBall_nat](../../../../GeneralTopology/PseudoDefs.lean/declarations/iunion-inter-closedball-nat.md) | 560 | `result-track:1a50b7af0bb701a7b156683c8ebe2ad77af9233e699d05fb77019f18a2afef5c` |
| 106 | `theorem` | [ball_subset](../../../../GeneralTopology/PseudoDefs.lean/declarations/ball-subset.md) | 563 | `result-track:4db5c1e9c634cd910d3f23da145968d228559d9934b7fce6e7a015bc95b6a872` |
| 107 | `theorem` | [ball_half_subset](../../../../GeneralTopology/PseudoDefs.lean/declarations/ball-half-subset.md) | 567 | `result-track:2f207bc9282fdf80439c2f3e7c4ce8b3b044bca7da095832c94f9341fc2bb320` |
| 108 | `theorem` | [exists_ball_subset_ball](../../../../GeneralTopology/PseudoDefs.lean/declarations/exists-ball-subset-ball.md) | 570 | `result-track:74bc1b98bf0b077c82945a186cc042d95bcdaa69c8dac8e9a14785bfccb6470b` |
| 109 | `theorem` | [forall_of_forall_mem_closedBall](../../../../GeneralTopology/PseudoDefs.lean/declarations/forall-of-forall-mem-closedball.md) | 575 | `result-track:8e4679089d15d14dc0b10c97780fb5ef496afab35569c3f07dfb91d7fe9181cf` |
| 110 | `theorem` | [forall_of_forall_mem_ball](../../../../GeneralTopology/PseudoDefs.lean/declarations/forall-of-forall-mem-ball.md) | 583 | `result-track:70848152c837a29fee49d9fb7608c5edbd61eafb87a05a77719067990f9e7407` |
| 111 | `theorem` | [isBounded_iff](../../../../GeneralTopology/PseudoDefs.lean/declarations/isbounded-iff.md) | 589 | `result-track:515e636f5da94e55c78a74a6cb57c2cf03711ea7248dadbce7952f519800d163` |
| 112 | `theorem` | [isBounded_iff_eventually](../../../../GeneralTopology/PseudoDefs.lean/declarations/isbounded-iff-eventually.md) | 594 | `result-track:59e672ffed6a457a89cb34f48b4406a7f60e95346e65ab0f76a9eb089eaeef97` |
| 113 | `theorem` | [isBounded_iff_exists_ge](../../../../GeneralTopology/PseudoDefs.lean/declarations/isbounded-iff-exists-ge.md) | 600 | `result-track:03e50dc80d7ffe703f778b3028138751e70eea83b3778995d30b36c98eb6d59a` |
| 114 | `theorem` | [isBounded_iff_nndist](../../../../GeneralTopology/PseudoDefs.lean/declarations/isbounded-iff-nndist.md) | 605 | `result-track:18c6335e7f29e7fa10616a0284926b136eab9d8a6810ee7a7e1d83756b55b3bd` |
| 115 | `theorem` | [toUniformSpace_eq](../../../../GeneralTopology/PseudoDefs.lean/declarations/touniformspace-eq.md) | 610 | `result-track:1ffb0b385a67544068c3885b2a3da00c42a74d3e677517025c6b041a94d551dd` |
| 116 | `theorem` | [uniformity_basis_dist](../../../../GeneralTopology/PseudoDefs.lean/declarations/uniformity-basis-dist.md) | 614 | `result-track:1269bda46f7b497dae3e4de3872b535ed723e0939546a6b38bcdeab50d74763c` |
| 117 | `theorem` | [mk_uniformity_basis](../../../../GeneralTopology/PseudoDefs.lean/declarations/mk-uniformity-basis.md) | 624 | `result-track:1114da314dc54eca5ba2aa3a4e2609e9b68de6f2d6353621019f879164d55c2d` |
| 118 | `theorem` | [uniformity_basis_dist_rat](../../../../GeneralTopology/PseudoDefs.lean/declarations/uniformity-basis-dist-rat.md) | 634 | `result-track:6a7a523246dff971b9053d420bbfa2c3cf1da02c282e5a1cfb3f6020d6d60e2a` |
| 119 | `theorem` | [uniformity_basis_dist_inv_nat_succ](../../../../GeneralTopology/PseudoDefs.lean/declarations/uniformity-basis-dist-inv-nat-succ.md) | 640 | `result-track:78b342edf1974a864a24a0a096e6113015986d0ef1aab684ec1cd1355049704e` |
| 120 | `theorem` | [uniformity_basis_dist_inv_nat_pos](../../../../GeneralTopology/PseudoDefs.lean/declarations/uniformity-basis-dist-inv-nat-pos.md) | 645 | `result-track:91962a476aaee816617a6d7cf2f7ef69c385b8ea9e92ec5d48fb3e59d693a620` |
| 121 | `theorem` | [uniformity_basis_dist_pow](../../../../GeneralTopology/PseudoDefs.lean/declarations/uniformity-basis-dist-pow.md) | 651 | `result-track:ce7eee640222952ce08c80dfff07804e0a674c05bc056e544bf4e54e2d9257f5` |
| 122 | `theorem` | [uniformity_basis_dist_lt](../../../../GeneralTopology/PseudoDefs.lean/declarations/uniformity-basis-dist-lt.md) | 657 | `result-track:ca8c08eeadeee1e47aaeb5f0b3baa9a99ab0a9758162e9aa253f107168d84359` |
| 123 | `theorem` | [mk_uniformity_basis_le](../../../../GeneralTopology/PseudoDefs.lean/declarations/mk-uniformity-basis-le.md) | 669 | `result-track:724fc63ea4b84963c15f02681f74e473f04bd2fc18edffc58a52eb9c52475fd1` |
| 124 | `theorem` | [uniformity_basis_dist_le](../../../../GeneralTopology/PseudoDefs.lean/declarations/uniformity-basis-dist-le.md) | 682 | `result-track:d1a0eec8873c936ff2d4f58cbdc780947f6568156ec8242df42314a081909de0` |
| 125 | `theorem` | [uniformity_basis_dist_le_pow](../../../../GeneralTopology/PseudoDefs.lean/declarations/uniformity-basis-dist-le-pow.md) | 686 | `result-track:2e410a3bdf1edfe927a4129feaea68a85758f9134f3d4442631768e724bf5101` |
| 126 | `theorem` | [mem_uniformity_dist](../../../../GeneralTopology/PseudoDefs.lean/declarations/mem-uniformity-dist.md) | 692 | `result-track:cea857317e797cd07a0050b65ed6358278c652225fd68307cbe4081aac7edb0b` |
| 127 | `theorem` | [dist_mem_uniformity](../../../../GeneralTopology/PseudoDefs.lean/declarations/dist-mem-uniformity.md) | 697 | `result-track:96ad16497611948c18119396a7c41798cd2016b0fec876c9cd84f8e52c47c8e7` |
| 128 | `theorem` | [uniformContinuous_iff](../../../../GeneralTopology/PseudoDefs.lean/declarations/uniformcontinuous-iff.md) | 700 | `result-track:d9395fa4bf7636cae7e3a01f9702a87ef69877d610d8e6310ac0c252128ff5cb` |
| 129 | `theorem` | [uniformContinuousOn_iff](../../../../GeneralTopology/PseudoDefs.lean/declarations/uniformcontinuouson-iff.md) | 704 | `result-track:8371e72cc5d52381330711c27af15c83c739144f9c3d0a262b29717fb7d7c41c` |
| 130 | `theorem` | [uniformContinuousOn_iff_le](../../../../GeneralTopology/PseudoDefs.lean/declarations/uniformcontinuouson-iff-le.md) | 709 | `result-track:bfe73455f859be3d975430f0bc8478a4bcf93018a02a65e39fcc895289e0e05f` |
| 131 | `theorem` | [nhds_basis_ball](../../../../GeneralTopology/PseudoDefs.lean/declarations/nhds-basis-ball.md) | 714 | `result-track:fea01bfe56d8986c44755ec808e3b65d90c12d822a26566beeeca2b24e09fc7e` |
| 132 | `theorem` | [mem_nhds_iff](../../../../GeneralTopology/PseudoDefs.lean/declarations/mem-nhds-iff.md) | 717 | `result-track:404d4835ac1a05f64f437b7eb720581617bedf9c124303995e52fa7ab1cc46dd` |
| 133 | `theorem` | [eventually_nhds_iff](../../../../GeneralTopology/PseudoDefs.lean/declarations/eventually-nhds-iff.md) | 720 | `result-track:0b6b02cd3c0e85db10ab651b54c215ee269b0fc0b1fcdeff4fc1a22eeebf09d0` |
| 134 | `theorem` | [eventually_nhds_iff_ball](../../../../GeneralTopology/PseudoDefs.lean/declarations/eventually-nhds-iff-ball.md) | 724 | `result-track:f0e79fa9f04f37a8f813195d46df3004582fab97b937151d8ea6654339384fd7` |
| 135 | `theorem` | [eventually_nhds_prod_iff](../../../../GeneralTopology/PseudoDefs.lean/declarations/eventually-nhds-prod-iff.md) | 730 | `result-track:54dcec83c00f45d7eddf5070f57f2a90871915474cc631231bf48644238ead29` |
| 136 | `theorem` | [eventually_prod_nhds_iff](../../../../GeneralTopology/PseudoDefs.lean/declarations/eventually-prod-nhds-iff.md) | 739 | `result-track:5a409d9b573b05461081756d98846091d484fa34e524dd37e90ba5c495c9240b` |
| 137 | `theorem` | [nhds_basis_closedBall](../../../../GeneralTopology/PseudoDefs.lean/declarations/nhds-basis-closedball.md) | 747 | `result-track:3239146f2713be58e856c8bd67d19805a1d1903fd2c050c747d7f787394fe136` |
| 138 | `theorem` | [nhds_basis_ball_inv_nat_succ](../../../../GeneralTopology/PseudoDefs.lean/declarations/nhds-basis-ball-inv-nat-succ.md) | 750 | `result-track:6ff79d1fa3817082140d453ec9ad105a44c20d024406ecb0dfd8649359fe8edc` |
| 139 | `theorem` | [nhds_basis_ball_inv_nat_pos](../../../../GeneralTopology/PseudoDefs.lean/declarations/nhds-basis-ball-inv-nat-pos.md) | 754 | `result-track:34eca1959cecf840935ad157509d9e8513aa49a64ab5418b53c32d0db6a1aaa0` |
| 140 | `theorem` | [nhds_basis_ball_pow](../../../../GeneralTopology/PseudoDefs.lean/declarations/nhds-basis-ball-pow.md) | 758 | `result-track:fde72b05258b8d52f624d7be69aa69142b0d238566e2c333beb9f02defc7b3bb` |
| 141 | `theorem` | [nhds_basis_closedBall_pow](../../../../GeneralTopology/PseudoDefs.lean/declarations/nhds-basis-closedball-pow.md) | 762 | `result-track:ac034921ea74d5ff41d132453090c84638d46062dc6851ca0efdd3924baf4c20` |
| 142 | `theorem` | [isOpen_iff](../../../../GeneralTopology/PseudoDefs.lean/declarations/isopen-iff.md) | 766 | `result-track:fdc6b8f562bab758f607c9fb8f8f70dc4b26b58859216d57ff8685f68aedc201` |
| 143 | `theorem` | [isOpen_ball](../../../../GeneralTopology/PseudoDefs.lean/declarations/isopen-ball.md) | 769 | `result-track:d88011fcd123f274a217d504f3426f97e561e61f97435c8038fde5fbf31268b0` |
| 144 | `theorem` | [ball_mem_nhds](../../../../GeneralTopology/PseudoDefs.lean/declarations/ball-mem-nhds.md) | 772 | `result-track:15c3a2cd6e1d4a5c8b351f089a159352a77e5c4a77132ddcb8eed2504bdb3000` |
| 145 | `theorem` | [closedBall_mem_nhds](../../../../GeneralTopology/PseudoDefs.lean/declarations/closedball-mem-nhds.md) | 775 | `result-track:5c5cf7ceebeb16d3d7f9b98d9e97495c7edfa8d7d44dedad1ddf49fee46f560f` |
| 146 | `theorem` | [closedBall_mem_nhds_of_mem](../../../../GeneralTopology/PseudoDefs.lean/declarations/closedball-mem-nhds-of-mem.md) | 778 | `result-track:1d006c11d55bf3133ddee6f99f8148bbab12e24656858c39839dc61e17242b8f` |
| 147 | `theorem` | [nhdsWithin_basis_ball](../../../../GeneralTopology/PseudoDefs.lean/declarations/nhdswithin-basis-ball.md) | 781 | `result-track:094e80b255d6de356d8cbb15b3a653eb427f77f9cc18a35ba6508f14e36f79ed` |
| 148 | `theorem` | [mem_nhdsWithin_iff](../../../../GeneralTopology/PseudoDefs.lean/declarations/mem-nhdswithin-iff.md) | 785 | `result-track:77a4151f4080f4110ede0e63ca51b254f5a5bbdfaedf3a2953d5e64da3fdb6b8` |
| 149 | `theorem` | [tendsto_nhdsWithin_nhdsWithin](../../../../GeneralTopology/PseudoDefs.lean/declarations/tendsto-nhdswithin-nhdswithin.md) | 788 | `result-track:2e9c38b27721f808a5faa814fda973f416ed7e51bd014a7b1db4bdaeb72d4a37` |
| 150 | `theorem` | [tendsto_nhdsWithin_nhds](../../../../GeneralTopology/PseudoDefs.lean/declarations/tendsto-nhdswithin-nhds.md) | 794 | `result-track:80592d9100e42836a0e232a1c4e291b7ff0eb3b59a9f4a6ecbeccc1fac202a0f` |
| 151 | `theorem` | [tendsto_nhds_nhds](../../../../GeneralTopology/PseudoDefs.lean/declarations/tendsto-nhds-nhds.md) | 800 | `result-track:067c18100d242c03526f5303a203048bf04a7904b2651975d8fd66e2030ce774` |
| 152 | `theorem` | [continuousAt_iff](../../../../GeneralTopology/PseudoDefs.lean/declarations/continuousat-iff.md) | 804 | `result-track:2e2266b4d81defb0bdd534f4651b81fde8badef8f37cd3d43593f6cafeb384ac` |
| 153 | `theorem` | [continuousWithinAt_iff](../../../../GeneralTopology/PseudoDefs.lean/declarations/continuouswithinat-iff-source-edition-2.md) | 808 | `result-track:e5ae7686d3044cdd9dff8a59c152fb64b796399cc3731348fc171e5f0a73bcff` |
| 154 | `theorem` | [continuousOn_iff](../../../../GeneralTopology/PseudoDefs.lean/declarations/continuouson-iff.md) | 813 | `result-track:1a31f9be306438ab2b0fb61babe56139f3ed00dc21dafe337c03a21f3490618d` |
| 155 | `theorem` | [continuous_iff](../../../../GeneralTopology/PseudoDefs.lean/declarations/continuous-iff-source-edition-2.md) | 817 | `result-track:e19f948d18dfa1a15bd262937d06a81c0d152c678ce692c8b8774d15a9792d93` |
| 156 | `theorem` | [tendsto_nhds](../../../../GeneralTopology/PseudoDefs.lean/declarations/tendsto-nhds.md) | 821 | `result-track:d254c91b047c29f54591dffe00073d50825fdef1d2158851cd3c4999e7c04357` |
| 157 | `theorem` | [continuousAt_iff'](../../../../GeneralTopology/PseudoDefs.lean/declarations/continuousat-iff-source-edition-2.md) | 825 | `result-track:7aa0030b9d92983990980aa29ef868b40e628425c25fd4f3a98396b83ca5b1c0` |
| 158 | `theorem` | [continuousWithinAt_iff'](../../../../GeneralTopology/PseudoDefs.lean/declarations/continuouswithinat-iff.md) | 829 | `result-track:dc13f8790e5c388e06c57a1844d916256af15ba80750bbf59e00a3b357019e38` |
| 159 | `theorem` | [continuousOn_iff'](../../../../GeneralTopology/PseudoDefs.lean/declarations/continuouson-iff-source-edition-2.md) | 833 | `result-track:99167f35cc668849e096def911e7ae13674b84712a364867bc2e55901c2f1a63` |
| 160 | `theorem` | [continuous_iff'](../../../../GeneralTopology/PseudoDefs.lean/declarations/continuous-iff.md) | 837 | `result-track:54728704874260ded09ff19e64e23dfdd2cc9320e138b2dc7bc92b4213f37097` |
| 161 | `theorem` | [tendsto_atTop](../../../../GeneralTopology/PseudoDefs.lean/declarations/tendsto-attop.md) | 841 | `result-track:6242c2a5f20e4b693646eff3f86cb053afdd9c499cbcb583f66cf49cbb049f73` |
| 162 | `theorem` | [tendsto_atTop'](../../../../GeneralTopology/PseudoDefs.lean/declarations/tendsto-attop-source-edition-2.md) | 849 | `result-track:f381f00b22cfa695abbf5f666a88db99c0a058bb5c24339ae03eca24b26059d5` |
| 163 | `theorem` | [isOpen_singleton_iff](../../../../GeneralTopology/PseudoDefs.lean/declarations/isopen-singleton-iff.md) | 854 | `result-track:f98a51678019c7cd8764777201ec3b7d4cfe61209913eba064e1809791aa9b99` |
| 164 | `theorem` | [_root_.Dense.exists_dist_lt](../../../../GeneralTopology/PseudoDefs.lean/declarations/root-dense-exists-dist-lt.md) | 858 | `result-track:f110ff975ff2e11f925a6230c25accfa4faeedf32c94d0d887b87b21ebfa3e64` |
| 165 | `theorem` | [_root_.DenseRange.exists_dist_lt](../../../../GeneralTopology/PseudoDefs.lean/declarations/root-denserange-exists-dist-lt.md) | 863 | `result-track:3d045676f5ef439df02486678386bbb0e74ec3a613705b1b726aec033cde8892` |
| 166 | `lemma` | [uniformSpace_eq_bot](../../../../GeneralTopology/PseudoDefs.lean/declarations/uniformspace-eq-bot.md) | 869 | `result-track:663629405eb66fb9596e677658f6ae24a4f3746841168d975470413ca3aa6df3` |
| 167 | `lemma` | [DiscreteTopology.of_forall_le_dist](../../../../GeneralTopology/PseudoDefs.lean/declarations/discretetopology-of-forall-le-dist.md) | 880 | `result-track:b0949d4c1be6e5ab381b1d89c05f811dbbe365298fe720b741d104484e19b68d` |
| 168 | `theorem` | [Metric.uniformity_edist_aux](../../../../GeneralTopology/PseudoDefs.lean/declarations/metric-uniformity-edist-aux.md) | 888 | `result-track:f49a9f38c5c8c225f96149a9ac92e08a708281aa557b53aab35e9f780b9ea024` |
| 169 | `theorem` | [Metric.uniformity_edist](../../../../GeneralTopology/PseudoDefs.lean/declarations/metric-uniformity-edist.md) | 900 | `result-track:39a7245f18755734edb99ec56dfbcbe29292f3ef85f2b169d61425236988e1a4` |
| 170 | `instance` | [(anonymous)](../../../../GeneralTopology/PseudoDefs.lean/declarations/instance.md) | 906 | `declaration-track:2155aba080db68ce2a4b1cac91c5a0b88d1dda86c2493543b8aea5930ef12712` |
| 171 | `theorem` | [Metric.eball_top_eq_univ](../../../../GeneralTopology/PseudoDefs.lean/declarations/metric-eball-top-eq-univ.md) | 918 | `result-track:34ad8e982cfe5de483e0e21fecf772c4df42106e0f0265dad3f6ff45475cd243` |
| 172 | `theorem` | [Metric.emetric_ball](../../../../GeneralTopology/PseudoDefs.lean/declarations/metric-emetric-ball.md) | 923 | `result-track:dc3b6b672547ed56c57ffcb35ff8cde220af516f42245bec60edf8298f11af9b` |
| 173 | `theorem` | [Metric.emetric_ball_nnreal](../../../../GeneralTopology/PseudoDefs.lean/declarations/metric-emetric-ball-nnreal.md) | 930 | `result-track:e742f06414e6741601220e4ad3bcccac259039216d3491e17f46615d0a4ad390` |
| 174 | `theorem` | [Metric.emetric_closedBall](../../../../GeneralTopology/PseudoDefs.lean/declarations/metric-emetric-closedball.md) | 935 | `result-track:87ea0fb001992081ca029cad3fb9b02037ea2ca1944d7acaf13af5b112dd4c63` |
| 175 | `theorem` | [Metric.emetric_closedBall_nnreal](../../../../GeneralTopology/PseudoDefs.lean/declarations/metric-emetric-closedball-nnreal.md) | 941 | `result-track:0165a49962c8df96a02668c8bd2fadb0dff0432f83014046962443c44b65e311` |
| 176 | `theorem` | [Metric.emetric_ball_top](../../../../GeneralTopology/PseudoDefs.lean/declarations/metric-emetric-ball-top.md) | 946 | `result-track:21c8b9361cbda0e1ee5d6cbbe77e258ce6b9cddab62db7759525a74d0a6793b4` |
| 177 | `abbrev` | [PseudoMetricSpace.replaceUniformity](../../../../GeneralTopology/PseudoDefs.lean/declarations/pseudometricspace-replaceuniformity.md) | 954 | `declaration-track:dba8a474ae6c4552f75ab6c82349f3ce2d66704be1d42c8493ff33deb1ab12c4` |
| 178 | `theorem` | [PseudoMetricSpace.replaceUniformity_eq](../../../../GeneralTopology/PseudoDefs.lean/declarations/pseudometricspace-replaceuniformity-eq.md) | 960 | `result-track:acf6d36678ecab5af21cad49c94d9a90a590fc291f9b1af582bbba72420a01df` |
| 179 | `example` | [(anonymous)](../../../../GeneralTopology/PseudoDefs.lean/declarations/example-source-edition-3.md) | 966 | `declaration-track:ad7d36361bb95e110a1577411a88bd4f80db35ac6f9c451426a43c346b2956c0` |
| 180 | `abbrev` | [PseudoMetricSpace.replaceTopology](../../../../GeneralTopology/PseudoDefs.lean/declarations/pseudometricspace-replacetopology.md) | 976 | `declaration-track:ca2960808dbc4d6a7302616edd7d3ecfec2655129ae83daa4208bbcb07c35ba8` |
| 181 | `theorem` | [PseudoMetricSpace.replaceTopology_eq](../../../../GeneralTopology/PseudoDefs.lean/declarations/pseudometricspace-replacetopology-eq.md) | 980 | `result-track:1478bedd5b3ccdd8f722a085f35d46338e27f51c9b179970fec5dc9a630f2857` |
| 182 | `abbrev` | [PseudoEMetricSpace.toPseudoMetricSpaceOfDist](../../../../GeneralTopology/PseudoDefs.lean/declarations/pseudoemetricspace-topseudometricspaceofdist.md) | 990 | `declaration-track:222a3cd1cfdd8af8f7ba30d6c0af5c12065955bcc9eb5111e816334d19706cc7` |
| 183 | `abbrev` | [PseudoEMetricSpace.toPseudoMetricSpace](../../../../GeneralTopology/PseudoDefs.lean/declarations/pseudoemetricspace-topseudometricspace.md) | 1009 | `declaration-track:54cef905b7c046615bff265fe92c8cf5fad24ad3c7187244756b625e4093beb3` |
| 184 | `abbrev` | [PseudoMetricSpace.replaceBornology](../../../../GeneralTopology/PseudoDefs.lean/declarations/pseudometricspace-replacebornology.md) | 1019 | `declaration-track:f7915fd86a3cb55e53d1f551ddaf5993c00c8d77086613a6345f40aa5bb9ffb1` |
| 185 | `theorem` | [PseudoMetricSpace.replaceBornology_eq](../../../../GeneralTopology/PseudoDefs.lean/declarations/pseudometricspace-replacebornology-eq.md) | 1027 | `result-track:6ede6ae671d9b92efb24a53f44885c4812d0a70e2ef69393fa34618af1e04dbf` |
| 186 | `example` | [(anonymous)](../../../../GeneralTopology/PseudoDefs.lean/declarations/example-source-edition-2.md) | 1034 | `declaration-track:54c6ba906a58aa06a967525a925bba6d984904a55531b6da3b04f1a31e1c34b8` |
| 187 | `instance` | [Real.pseudoMetricSpace](../../../../GeneralTopology/PseudoDefs.lean/declarations/real-pseudometricspace.md) | 1042 | `declaration-track:14d5a8bea8638f392eebf0250fa66c821123ff1e854bfb42836b5f365261587d` |
| 188 | `theorem` | [Real.dist_eq](../../../../GeneralTopology/PseudoDefs.lean/declarations/real-dist-eq.md) | 1048 | `result-track:5da43e601e2af0b563bd1f13ab44a96cc6d511b1c4c1a3d396e529b67394ae8f` |
| 189 | `theorem` | [Real.nndist_eq](../../../../GeneralTopology/PseudoDefs.lean/declarations/real-nndist-eq.md) | 1050 | `result-track:038c070432275f4b5d8692ae8fd33a4d11e7bc7d439822bba0cbee996fd4bc69` |
| 190 | `theorem` | [Real.nndist_eq'](../../../../GeneralTopology/PseudoDefs.lean/declarations/real-nndist-eq-source-edition-2.md) | 1052 | `result-track:644172ca4e754bec4d24485d087207eb2b592e02e9eded429bb11e14434ad719` |
| 191 | `theorem` | [Real.dist_0_eq_abs](../../../../GeneralTopology/PseudoDefs.lean/declarations/real-dist-0-eq-abs.md) | 1055 | `result-track:a674cb11810b9c357c382e59c0d9117b60f2a77db6b1a6e333acb9cc92d009f9` |
| 192 | `theorem` | [Real.sub_le_dist](../../../../GeneralTopology/PseudoDefs.lean/declarations/real-sub-le-dist.md) | 1057 | `result-track:69aca726d6c182da068a1f843012d6363586459caf01070b98ba63ce47ffc357` |
| 193 | `theorem` | [Real.ball_eq_Ioo](../../../../GeneralTopology/PseudoDefs.lean/declarations/real-ball-eq-ioo.md) | 1061 | `result-track:2d71665282ffeb0a7a0efdfb5f67e8aae0f8ffef27e08ac627ef657452a4274e` |
| 194 | `theorem` | [Real.closedBall_eq_Icc](../../../../GeneralTopology/PseudoDefs.lean/declarations/real-closedball-eq-icc.md) | 1066 | `result-track:56fb8e13c18fdf31a380b863e193ee50537dde2390d0daf9508e531d269ac0d2` |
| 195 | `theorem` | [Real.Ioo_eq_ball](../../../../GeneralTopology/PseudoDefs.lean/declarations/real-ioo-eq-ball.md) | 1071 | `result-track:76ed21f93833d5a98a4af41dbe8a76fb6a210f759b94d85c11b44d3590700383` |
| 196 | `theorem` | [Real.Icc_eq_closedBall](../../../../GeneralTopology/PseudoDefs.lean/declarations/real-icc-eq-closedball.md) | 1075 | `result-track:2c4ef15ccdeb1f11ce5583284e8ad6dac6fc6d4f72bc53a031a91d97022349d8` |
| 197 | `theorem` | [Metric.uniformity_eq_comap_nhds_zero](../../../../GeneralTopology/PseudoDefs.lean/declarations/metric-uniformity-eq-comap-nhds-zero.md) | 1079 | `result-track:41990d37576e5aa30f1736ec53b7d2cb284669589e384e8498f878ba881a8712` |
| 198 | `theorem` | [tendsto_uniformity_iff_dist_tendsto_zero](../../../../GeneralTopology/PseudoDefs.lean/declarations/tendsto-uniformity-iff-dist-tendsto-zero.md) | 1085 | `result-track:700675661ac1405a2845b6e049885fd31397948bacf0577a8bcfc5441c74d9b1` |
| 199 | `theorem` | [Filter.Tendsto.congr_dist](../../../../GeneralTopology/PseudoDefs.lean/declarations/filter-tendsto-congr-dist.md) | 1089 | `result-track:a5acdf48617bb0a2353c5212224831216c1c037b477367a07e384e7421715b0a` |
| 200 | `theorem` | [tendsto_iff_of_dist](../../../../GeneralTopology/PseudoDefs.lean/declarations/tendsto-iff-of-dist.md) | 1096 | `result-track:16bd96f7f391c9b58cd8f24403d3f31d5084af35bf2e26bbcf1a0aeee5fce675` |
| 201 | `theorem` | [PseudoMetricSpace.dist_eq_of_dist_zero](../../../../GeneralTopology/PseudoDefs.lean/declarations/pseudometricspace-dist-eq-of-dist-zero.md) | 1102 | `result-track:ad6d4e97f1fe673e38091311e3795ce99820dd4f5b28c9fcde2e964f8e5c593e` |
| 202 | `theorem` | [dist_dist_dist_le_left](../../../../GeneralTopology/PseudoDefs.lean/declarations/dist-dist-dist-le-left.md) | 1106 | `result-track:7e7fc7beec9aa2fc823d3f0f05b7f83a8bb34b1ad2324becc12d7904d9e9d48c` |
| 203 | `theorem` | [dist_dist_dist_le_right](../../../../GeneralTopology/PseudoDefs.lean/declarations/dist-dist-dist-le-right.md) | 1109 | `result-track:6b9983ccaad3d1fd0f6738fa8a97341d7172b70f7b3ca5456bab64d14d5f989b` |
| 204 | `theorem` | [dist_dist_dist_le](../../../../GeneralTopology/PseudoDefs.lean/declarations/dist-dist-dist-le.md) | 1112 | `result-track:92313474cf390704653458936a49eb1f04d602e99d436f5a8b109d6c3a11d7d6` |
| 205 | `theorem` | [nhds_comap_dist](../../../../GeneralTopology/PseudoDefs.lean/declarations/nhds-comap-dist.md) | 1116 | `result-track:97f4926b85d473bdbd37a5dbd7ac494a859b594054f88b9c1086c92bf197d6f8` |
| 206 | `theorem` | [tendsto_iff_dist_tendsto_zero](../../../../GeneralTopology/PseudoDefs.lean/declarations/tendsto-iff-dist-tendsto-zero.md) | 1120 | `result-track:7d0765210c5a73ec0aa67abdb1f327d70e11a857e996d96021157c90115d89a8` |
| 207 | `theorem` | [ball_subset_interior_closedBall](../../../../GeneralTopology/PseudoDefs.lean/declarations/ball-subset-interior-closedball.md) | 1128 | `result-track:2796826b4c8a74fe9e63b7b1c7582dfdbbb259da81a8884bb3aceaffdbbab80e` |
| 208 | `theorem` | [mem_closure_iff](../../../../GeneralTopology/PseudoDefs.lean/declarations/mem-closure-iff.md) | 1132 | `result-track:f28723e4a07affd8506f3ec4138bbaac58cd215f9de2b03fb35b4ac796a338c9` |
| 209 | `theorem` | [mem_closure_range_iff](../../../../GeneralTopology/PseudoDefs.lean/declarations/mem-closure-range-iff.md) | 1135 | `result-track:13ce40d5d7aeefe360e16c5663b16015d66c960e141343b9731fa6457c0de7dd` |
| 210 | `theorem` | [mem_closure_range_iff_nat](../../../../GeneralTopology/PseudoDefs.lean/declarations/mem-closure-range-iff-nat.md) | 1139 | `result-track:f9944616a172f8586b1f628c14f8b97faefe119975d418ee851c7a061c458022` |
| 211 | `theorem` | [mem_of_closed'](../../../../GeneralTopology/PseudoDefs.lean/declarations/mem-of-closed.md) | 1144 | `result-track:c233140e38e46edb8c49639f4824f7686a450f9441ee639ab8e9c8a86ab2e9d1` |
| 212 | `theorem` | [dense_iff](../../../../GeneralTopology/PseudoDefs.lean/declarations/dense-iff.md) | 1148 | `result-track:cc8edbbd5e38371a4bd9c90121719c3d40f415191a23d9dd5ddb50d8abe1a308` |
| 213 | `theorem` | [dense_iff_iUnion_ball](../../../../GeneralTopology/PseudoDefs.lean/declarations/dense-iff-iunion-ball.md) | 1152 | `result-track:82070fca2ded576e290832d46b76255768f042a675854013621b7a997ce94ac4` |
| 214 | `theorem` | [denseRange_iff](../../../../GeneralTopology/PseudoDefs.lean/declarations/denserange-iff.md) | 1156 | `result-track:1807cc94be0908657ad05b4e6e2dd76e6ca39499f32bbb132145e2fbbee30f9f` |
| 215 | `instance` | [(anonymous)](../../../../GeneralTopology/PseudoDefs.lean/declarations/instance-source-edition-6.md) | 1163 | `declaration-track:efb40559122349d64540435153afd19aad5a2057b012c687e46184a597c14b0b` |
| 216 | `instance` | [(anonymous)](../../../../GeneralTopology/PseudoDefs.lean/declarations/instance-source-edition-2.md) | 1164 | `declaration-track:868b778c29c64c3138d92bf5446b7fd91fb8e5ae731f58b390826512a693c79d` |
| 217 | `theorem` | [nndist_ofMul](../../../../GeneralTopology/PseudoDefs.lean/declarations/nndist-ofmul.md) | 1170 | `result-track:2f23beea557f8724a6b812de90368a5a6f85e8cb3f8f2f543d05c150aa067100` |
| 218 | `theorem` | [nndist_ofAdd](../../../../GeneralTopology/PseudoDefs.lean/declarations/nndist-ofadd.md) | 1172 | `result-track:6f3b479a1578af370a23ca3960ae4966098e1beb07c2aed6cd1927440020700c` |
| 219 | `theorem` | [nndist_toMul](../../../../GeneralTopology/PseudoDefs.lean/declarations/nndist-tomul.md) | 1174 | `result-track:92a9c96ee1edfcc6d53da640cd6fd1ea85f4073f43ae4c04817c3550607bd084` |
| 220 | `theorem` | [nndist_toAdd](../../../../GeneralTopology/PseudoDefs.lean/declarations/nndist-toadd.md) | 1177 | `result-track:4637c82e03daf500538d81e1db602428cca2f83064a7faba52cd335c68b26fa9` |
| 221 | `instance` | [(anonymous)](../../../../GeneralTopology/PseudoDefs.lean/declarations/instance-source-edition-5.md) | 1183 | `declaration-track:d7e6ff3e8979c865081d268c81d47909e56944368382f67fc47371a69ee668a3` |
| 222 | `theorem` | [nndist_toDual](../../../../GeneralTopology/PseudoDefs.lean/declarations/nndist-todual.md) | 1189 | `result-track:2ae150895221b7312532ae90c4797f1012b6352567f9b39b16d4ca5e38695f68` |
| 223 | `theorem` | [nndist_ofDual](../../../../GeneralTopology/PseudoDefs.lean/declarations/nndist-ofdual.md) | 1191 | `result-track:41635fd8d3128f71df13bfc738691954817b71e94d4e9c7cfd441d4d8db5bca4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b92517b34de27f478bd4c39459c6f6642d7a421047a00cfcc0f9fdb271378e89 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variant825972435fbcd324cf276a031e80b9b26138ddb7e1bed1530124b46f66f0799e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/Defs/Variant825972435fbcd324cf276a031e80b9b26138ddb7e1bed1530124b46f66f0799e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
