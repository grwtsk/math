# Verification target: Data Real Sqrt Sqrt Eq Iff Sq Eq

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54a869250d78f589f7e64e320a92b6882f44de3e",
  "lexical_observation_count": 83,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Sqrt/Varianta1436ddee23af9b196d48568c716098e4b9fff59c107cde82313c9e1fba05a39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/index.md) · [Full source](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54a869250d78f589f7e64e320a92b6882f44de3e`.

Source path: `GRWTSK/Topology/GeneralTopology/Sqrt/Varianta1436ddee23af9b196d48568c716098e4b9fff59c107cde82313c9e1fba05a39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Sqrt/Varianta1436ddee23af9b196d48568c716098e4b9fff59c107cde82313c9e1fba05a39.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.MonotoneContinuity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.NNReal` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt.md) | 50 | `declaration-track:294b13658fe5b8e525570cdfcdad27fa475dcec2c58653c0d745c43f00b2c11e` |
| 2 | `theorem` | [sqrt_le_sqrt_iff](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-le-sqrt-iff.md) | 54 | `result-track:59271733cbc617f7713f6c8fba9fe9c4bba12332c129c3dfbf74ab9d0ac93edb` |
| 3 | `theorem` | [sqrt_lt_sqrt_iff](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-lt-sqrt-iff.md) | 58 | `result-track:051bb7b495288031dfcccce33d5cf88e08bb7276de8cbd15b8e1c2b8b64225c7` |
| 4 | `theorem` | [sqrt_eq_iff_sq_eq](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-eq-iff-sq-eq.md) | 62 | `result-track:2dbefa99a44f07a61048a8b75afa35c0564015ac32bf7e481efe6d192e6359c0` |
| 5 | `theorem` | [sqrt_le_iff](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-le-iff-source-edition-2.md) | 66 | `result-track:53dae1fba1a397ad0535ef40d13188dc374d79401ccb2893a16b540668d579cb` |
| 6 | `theorem` | [le_sqrt_iff](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/le-sqrt-iff.md) | 70 | `result-track:34a9a38efc44d838827bd4d4dc12348f9d7e36deb90cad5e19f5854d020ab9d5` |
| 7 | `theorem` | [sqrt_eq_zero](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-eq-zero-source-edition-3.md) | 75 | `result-track:e986935df2d38e861021681ed674662c48d5bacf4b8da5decd94f262bd9b0ad0` |
| 8 | `theorem` | [sqrt_zero](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-zero.md) | 80 | `result-track:25090ec3b213083bf9b749333bb146bdabab031806158786c4a9bdadee9dc04c` |
| 9 | `theorem` | [sqrt_one](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-one.md) | 85 | `result-track:335194962bfb9981827f49871bb24939b5a27e7296d11d390b90419c5f9ee98c` |
| 10 | `theorem` | [sq_sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sq-sqrt.md) | 90 | `result-track:b59322d7f40f8d0d84bf0a27326f512b77944285f49b6debdca21e61ec23bcf7` |
| 11 | `theorem` | [mul_self_sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/mul-self-sqrt.md) | 95 | `result-track:0de8ed9343277d321be09372546c3888c9941bd3c5b47e85d74c3fc470afcdd8` |
| 12 | `theorem` | [sqrt_sq](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-sq-source-edition-2.md) | 99 | `result-track:90158900e472d020c2eb9e932637da9365f5992cd99a372614df896b496d9c17` |
| 13 | `theorem` | [sqrt_mul_self](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-mul-self.md) | 104 | `result-track:0f7d03b49ba4d5b89c1553be08ed71bcb6b40f6583aa882413a34e49e6822ae3` |
| 14 | `theorem` | [sqrt_mul](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-mul.md) | 107 | `result-track:07f7c90844f809dad07713585c87cf1293aa958012e0162e56b567ed56bd3db9` |
| 15 | `def` | [sqrtHom](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrthom.md) | 112 | `declaration-track:4d59df4be21d510b7e076e41010f28ae9dba5bfbbf47298d73718c39ec862950` |
| 16 | `theorem` | [sqrt_inv](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-inv-source-edition-2.md) | 116 | `result-track:546ba9a01277a446876e65ed76e60d4611abe613b1b3108b35e77831a1a72fd2` |
| 17 | `theorem` | [sqrt_div](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-div.md) | 120 | `result-track:1366165565d0acd0bcee9618719018882c61e7f7f0d3586f3d9ffff1bb7c74de` |
| 18 | `theorem` | [continuous_sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/continuous-sqrt.md) | 124 | `result-track:add23abee852ee676c34f870e2efae231bcff577b460568a0dc38b654fae26b1` |
| 19 | `theorem` | [sqrt_pos](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-pos.md) | 127 | `result-track:0405ddada1c90f4ee009cf9419da5650f5308369e4a55261a54b6f81a1a78a96` |
| 20 | `def` | [sqrtAux](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrtaux.md) | 137 | `declaration-track:80198b48f10e46d574ab2c3b90d59a09ddd13713442c41aa5fb9b929e700afa5` |
| 21 | `theorem` | [sqrtAux_nonneg](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrtaux-nonneg.md) | 144 | `result-track:cff473e18fd3f6366c47062b8121d00ee70fcba8afa5d2c16d3c1b1d41e72a0a` |
| 22 | `def` | [sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-source-edition-2.md) | 166 | `declaration-track:359431ff1d88d7ae89f8b11c1fc94b89d5496cf690b99dd6ffca78149b97e5d3` |
| 23 | `theorem` | [coe_sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/coe-sqrt.md) | 182 | `result-track:7e4477bee5ff677aaf6032a93ccdb00c6c429a5cf0b2a3e0d495592028aa9808` |
| 24 | `theorem` | [continuous_sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/continuous-sqrt-source-edition-2.md) | 187 | `result-track:ae6d978789de133e8477e98a0c2c5f0d90972d1dd262140dcd8e525c6c0eb0a4` |
| 25 | `theorem` | [sqrt_eq_zero_of_nonpos](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-eq-zero-of-nonpos.md) | 191 | `result-track:b3c6568b7d129069f11ecd56c1b338b49340748336eba3bd912eb009aca5d0d0` |
| 26 | `theorem` | [sqrt_nonneg](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-nonneg.md) | 194 | `result-track:51e29c7f20a89b3b9ffb08262fe3a72ed1af64a93b80b120ed218b4af32b5eed` |
| 27 | `theorem` | [mul_self_sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/mul-self-sqrt-source-edition-2.md) | 199 | `result-track:89f4be6703ddf673b8373717dc15e9280be31dfd5a9f5cd2ab0c7cf674897a8c` |
| 28 | `theorem` | [sqrt_mul_self](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-mul-self-source-edition-2.md) | 204 | `result-track:95b80a0e02dd7be452bda8c43e612e5f29310949d18af81d02206a002f5aaed2` |
| 29 | `theorem` | [sqrt_eq_cases](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-eq-cases.md) | 208 | `result-track:e82739cc8b133f5d19fe7a2b8427e324707fc18e32d960b0ec652ae085753059` |
| 30 | `theorem` | [sqrt_eq_iff_mul_self_eq](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-eq-iff-mul-self-eq.md) | 218 | `result-track:7a77ede2311dd9a9a77b7fffaa23578a41ade8c6972ee0c3d341763b5ee5aaae` |
| 31 | `theorem` | [sqrt_eq_iff_mul_self_eq_of_pos](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-eq-iff-mul-self-eq-of-pos.md) | 222 | `result-track:d2c5800ccadc6b1abd5e7950e1cbf08b0daf88ea14667e0c64be2c057a1bf2bd` |
| 32 | `theorem` | [sqrt_eq_one](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-eq-one.md) | 227 | `result-track:15bc30e38a7362946e489caf029687e34f309015abf48f242ab91e0159499cd3` |
| 33 | `theorem` | [sq_sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sq-sqrt-source-edition-2.md) | 234 | `result-track:ecc9bbeb2aa9f28bc9fd7a5a2dca37b137c59c62c9981d8b2972b4b01958d5d3` |
| 34 | `theorem` | [sqrt_sq](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-sq.md) | 238 | `result-track:65516d5bfec24f691a5c6bb9a30b9f55898525a74b98863e6a729eb3bc1d4399` |
| 35 | `theorem` | [sqrt_eq_iff_sq_eq](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-eq-iff-sq-eq-source-edition-2.md) | 241 | `result-track:df281fc31ebb6c33317ca88d24719f753bae178816ca3e3e1830c4e1af92034f` |
| 36 | `theorem` | [sqrt_mul_self_eq_abs](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-mul-self-eq-abs.md) | 245 | `result-track:7dd0ee8eabf0330065b068c25f57ccecde9f0e56992a6e2bfb8fc74f513284db` |
| 37 | `theorem` | [sqrt_sq_eq_abs](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-sq-eq-abs.md) | 249 | `result-track:667572e8a45ccca3c8710531cd6135950e4f933c401f0754ef1d132cdbc4c9ef` |
| 38 | `theorem` | [sqrt_zero](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-zero-source-edition-2.md) | 253 | `result-track:f22d0558e94a8a3c5ec11db40bcfafb421683bdf6cc1216818db9cb3bf5edaa8` |
| 39 | `theorem` | [sqrt_one](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-one-source-edition-2.md) | 257 | `result-track:619549898e259ddc30864d0499163538366a7fb7b9e1a015c1d3ab41cd3ce9d6` |
| 40 | `theorem` | [sqrt_le_sqrt_iff](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-le-sqrt-iff-source-edition-2.md) | 261 | `result-track:73df6f1b3d43d38888576a3eb7298b3684407f510189690e1ba6febe275555d3` |
| 41 | `theorem` | [sqrt_lt_sqrt_iff](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-lt-sqrt-iff-source-edition-2.md) | 266 | `result-track:0d08959671b2b58310a1cdac36656ab42f34fb1e303f9ae8db78f8a7bc9b4df3` |
| 42 | `theorem` | [sqrt_lt_sqrt_iff_of_pos](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-lt-sqrt-iff-of-pos.md) | 270 | `result-track:05758a8dc53a6931f57ce617d31613bfeb6e5fdda7eb53d65db39910526b8911` |
| 43 | `theorem` | [sqrt_le_sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-le-sqrt.md) | 274 | `result-track:41ef2098c03066479b3bbeb321cf35a8cf1ae12efe20284d5d2ad166f26e8cf8` |
| 44 | `theorem` | [sqrt_lt_sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-lt-sqrt.md) | 279 | `result-track:929c28f691206124fbe81848d13e43f0a74b2d873171bb1d573457d921e64c98` |
| 45 | `theorem` | [sqrt_le_left](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-le-left.md) | 283 | `result-track:eb5287793e943c4242922a69ea2ac26d7aeb35d051925f23a73668694e30f9dd` |
| 46 | `theorem` | [sqrt_le_iff](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-le-iff.md) | 288 | `result-track:19f9a66d02f0c754b7bac7286cf38ef98ff20fab20dd17141c541790d45c4bc3` |
| 47 | `theorem` | [sqrt_lt](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-lt.md) | 293 | `result-track:0f4f6582abe6c022f5366978b5acf77b878fb9432a2df5d300d7fb7fa36c6a2a` |
| 48 | `theorem` | [sqrt_lt'](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-lt-source-edition-2.md) | 297 | `result-track:4499316d45f476c1d5e720e0e6385212872771e3f5ca35d6a222518785083c03` |
| 49 | `theorem` | [le_sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/le-sqrt.md) | 303 | `result-track:307ceca941000727270c8dcec4a9e8a9254ce934cf3548b17747d670fc35093a` |
| 50 | `theorem` | [le_sqrt'](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/le-sqrt-source-edition-2.md) | 307 | `result-track:7e911a4e97d458a0c715c697a46e072464d1666fbbc95f5638271a2e00fc503f` |
| 51 | `theorem` | [abs_le_sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/abs-le-sqrt.md) | 311 | `result-track:afffafea5d97afb4d255206be88082ee07fd9c097600b3828f05a8596f8cfdd7` |
| 52 | `theorem` | [sq_le](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sq-le.md) | 315 | `result-track:1086f658818b642afb471afd35158a42dc64d69a83b5efd72264e35dde8116f7` |
| 53 | `theorem` | [neg_sqrt_le_of_sq_le](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/neg-sqrt-le-of-sq-le.md) | 322 | `result-track:3604bc054ea642d6413cd1684a76f9f0c76a2a27f967d92580fee87962f6a4da` |
| 54 | `theorem` | [le_sqrt_of_sq_le](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/le-sqrt-of-sq-le.md) | 326 | `result-track:7581bd1a2ab0f03abd211adb99bf11ab2c67b17c7fdc02d9e4cd654b87250a0d` |
| 55 | `theorem` | [sqrt_inj](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-inj.md) | 331 | `result-track:5df379ad0b33e32e1b6c85af7b82b55eef2d00eae062fb972a3f244a59cc2c88` |
| 56 | `theorem` | [sqrt_eq_zero](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-eq-zero.md) | 336 | `result-track:2c940139112c58ad144a998788377e57f983d59362afe0e642deab15cddae202` |
| 57 | `theorem` | [sqrt_eq_zero'](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-eq-zero-source-edition-2.md) | 339 | `result-track:95be955f152c84fd3d2a6de0bb5b935eac5082da9a4dcbf04596faa0c2074445` |
| 58 | `theorem` | [sqrt_ne_zero](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-ne-zero.md) | 343 | `result-track:17b70b4ff1270c5536c27469f0d19f3234b574b35902ab60d0fb906b354da3a2` |
| 59 | `theorem` | [sqrt_ne_zero'](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-ne-zero-source-edition-2.md) | 346 | `result-track:8fc4a8ddbac3f83446b1aec7a318a59bba93260d6ba60100b7c824bd537e5761` |
| 60 | `theorem` | [sqrt_pos](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-pos-source-edition-2.md) | 350 | `result-track:661d6d1b948d664cbe023791215cde475290b7303d4798f3934305feaeaa5d00` |
| 61 | `def` | [evalNNRealSqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/evalnnrealsqrt.md) | 366 | `declaration-track:5290b71e7321d6daa9cfa642d8035bfa576c1d55a6380caa4728965d467bf6e5` |
| 62 | `def` | [evalSqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/evalsqrt.md) | 379 | `declaration-track:9ae7dae44bd0a2f79d317da93c8eb02e2208346915f0eaf9d0961d44fde1f18a` |
| 63 | `theorem` | [sqrt_mul](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-mul-source-edition-3.md) | 394 | `result-track:7d47ba6718a2d76ba8af07e6dc3705c1607a06ac23ce449f5288da5e3830ab16` |
| 64 | `theorem` | [sqrt_mul'](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-mul-source-edition-2.md) | 399 | `result-track:6003ead0b67b7e4fbb537663c1c67e0957c2fd3e2adbbe8b373417c52b9a6b47` |
| 65 | `theorem` | [sqrt_inv](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-inv.md) | 404 | `result-track:4009e73e2d9c8f34e345a35a91481ee20af71290e37d3955d46e8701346839a1` |
| 66 | `theorem` | [sqrt_div](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-div-source-edition-3.md) | 409 | `result-track:fd80fc78e9c4b2c17473b22d234b84f14e9afa9c6a8fff11402b6c205574391d` |
| 67 | `theorem` | [sqrt_div'](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-div-source-edition-2.md) | 414 | `result-track:43cda848acc4b2a66b932d8318efe0a51eef31b30e6754ce8cd3e5c6443dd275` |
| 68 | `theorem` | [div_sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/div-sqrt.md) | 419 | `result-track:11e87f66cc807c9cc25858aa07219c5e569d5cee124e9ef70ac33642ece05714` |
| 69 | `theorem` | [sqrt_div_self'](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-div-self-source-edition-2.md) | 425 | `result-track:d2f1a3deb5f1e91397c334ea4b327d68bde24abc0a6bc8132e1d99bc2468d877` |
| 70 | `theorem` | [sqrt_div_self](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sqrt-div-self.md) | 428 | `result-track:3b462263301aa5557e4f0dcecaf2a7fe7c87c0a691b50331b87e694446c86142` |
| 71 | `theorem` | [lt_sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/lt-sqrt.md) | 431 | `result-track:44c16d0f51fef6ab08ac61b1ea33a2611528897f05afb6f8cf0334d4c3c71767` |
| 72 | `theorem` | [sq_lt](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/sq-lt.md) | 435 | `result-track:f5006e217b1adea9a1fdf7aac218ba813c7f909c0dd8d716bd183995d0931cf1` |
| 73 | `theorem` | [neg_sqrt_lt_of_sq_lt](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/neg-sqrt-lt-of-sq-lt.md) | 439 | `result-track:83d40d2b31763a77f5e89178dc565ebf481624f6cbe33982b689357184bf5bea` |
| 74 | `theorem` | [lt_sqrt_of_sq_lt](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/lt-sqrt-of-sq-lt.md) | 443 | `result-track:cb3375fc9db7bc60c97fab6a6876f783a1228a902a014251fe49162cbe71c5fa` |
| 75 | `theorem` | [lt_sq_of_sqrt_lt](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/lt-sq-of-sqrt-lt.md) | 447 | `result-track:9470ea609dbaef977535f60ca66ac284501d0fddb9ab5c0a2ad09b5b0e56d3fc` |
| 76 | `theorem` | [nat_sqrt_le_real_sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/nat-sqrt-le-real-sqrt.md) | 453 | `result-track:805c1e445f877bd40c848e4726840406039623e6bbed80f0c3134b47691e936b` |
| 77 | `theorem` | [real_sqrt_le_nat_sqrt_succ](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/real-sqrt-le-nat-sqrt-succ.md) | 460 | `result-track:0c6993d6d1393275b93774bd4277d8d521597453a6231da76ddd151062cdf6f9` |
| 78 | `instance` | [(anonymous)](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/instance.md) | 474 | `declaration-track:7283815574f2fc57a73ba19dec5a25c2006f595fdcaa063a63d69c02c4b56399` |
| 79 | `theorem` | [Filter.Tendsto.sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/filter-tendsto-sqrt.md) | 486 | `result-track:62402b40dd41f424ad014fd5dc67cbc151692bf946e1ebb7e39d5b5c23c335a4` |
| 80 | `theorem` | [ContinuousWithinAt.sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/continuouswithinat-sqrt.md) | 493 | `result-track:9f0dcef791236d3eb47082c9d0f489c7a9fa5d1b81bfd5a9bf021ad6f0491774` |
| 81 | `theorem` | [ContinuousAt.sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/continuousat-sqrt.md) | 498 | `result-track:9cae78c315d3fc2d4ac670cc66d2fd62dd516b099a8058e660025a01e7036d80` |
| 82 | `theorem` | [ContinuousOn.sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/continuouson-sqrt.md) | 502 | `result-track:e3dfccc75777bc02fc42ea01fa10e4db6c722756f4c2563946d59a4751c3272e` |
| 83 | `theorem` | [Continuous.sqrt](../../../../RealFunctions/DataRealSqrtSqrtEqIffSqEq.lean/declarations/continuous-sqrt-source-edition-3.md) | 507 | `result-track:c15c13b1317c59b9e7e0486381f61183206657c0a58aa86dd2120c5cfcbdc656` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=80ec4a0c439258d8047577fd625c09d494bfca0426de6d8b0f5a2f28b8438d5f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Sqrt/Varianta1436ddee23af9b196d48568c716098e4b9fff59c107cde82313c9e1fba05a39.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Sqrt/Varianta1436ddee23af9b196d48568c716098e4b9fff59c107cde82313c9e1fba05a39.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
