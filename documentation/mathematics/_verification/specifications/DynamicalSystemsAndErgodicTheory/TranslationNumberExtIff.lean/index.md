# Verification target: Translation Number Ext Iff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af72e3fe717e1d7fecd4defc5613fcf324547514",
  "lexical_observation_count": 134,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TranslationNumber/Variantacb4711f796682e68a1835b27bd674df7087131ee33ac1e51a59a2bdcef18d87.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/index.md) · [Full source](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af72e3fe717e1d7fecd4defc5613fcf324547514`.

Source path: `GRWTSK/Topology/GeneralTopology/TranslationNumber/Variantacb4711f796682e68a1835b27bd674df7087131ee33ac1e51a59a2bdcef18d87.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TranslationNumber/Variantacb4711f796682e68a1835b27bd674df7087131ee33ac1e51a59a2bdcef18d87.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Iterate` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Iterate` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SemiconjSup` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Monotonicity` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.MonotoneContinuity` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CircleDeg1Lift](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/circledeg1lift.md) | 130 | `declaration-track:886fd53e93969c560555c26417dd958a93a5fbfc57b11245d7fac51f0f6d96d6` |
| 2 | `instance` | [(anonymous)](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/instance-source-edition-3.md) | 136 | `declaration-track:b07ddcc3267fccbe56394286fd0672c8cfe0958d89e1ca8367cba14084447e12` |
| 3 | `theorem` | [coe_mk](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/coe-mk.md) | 141 | `result-track:41d2ba52225937008e1fece4677642b730d0564460d96434b2c78b197145b2c5` |
| 4 | `theorem` | [coe_toOrderHom](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/coe-toorderhom.md) | 146 | `result-track:e35fd4ba1221eb2c96d964ef1c9ce294b28ea7df9f7338e096e9d1b952686115` |
| 5 | `theorem` | [monotone](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/monotone.md) | 148 | `result-track:b9a6098985cf57fc659b69847b90c3e6e7790ec06c6bbb7b5c19dea7f83b3c14` |
| 6 | `theorem` | [mono](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/mono.md) | 151 | `result-track:ef2c9a59700a988eee1361fa1782d20b482de526166676c7bcc4d8a1f9d47edc` |
| 7 | `theorem` | [strictMono_iff_injective](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/strictmono-iff-injective.md) | 154 | `result-track:9a4a137f860aad322db4a87a049879143c7bf0f065be41d4ca60a55db0f74d03` |
| 8 | `theorem` | [map_add_one](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/map-add-one.md) | 159 | `result-track:acc9251b3263455e1f564cd63192f5647ceedb7cff39cdfe2fa4e02a5e1bfd09` |
| 9 | `theorem` | [map_one_add](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/map-one-add.md) | 164 | `result-track:965cfb99ce17534cb6975a5ca9b6a72fc7a80eeb25c88d90689b966b441a97a2` |
| 10 | `theorem` | [ext](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/ext.md) | 170 | `result-track:206d38b22ca1743897116e2a6eda69f29d43739e6966c46d88f80ffc55778d3d` |
| 11 | `theorem` | [ext_iff](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/ext-iff.md) | 174 | `result-track:345d38269ca8ca5b2734152cd26418955a92050cd1bd5c82c885f9068419a308` |
| 12 | `instance` | [(anonymous)](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/instance-source-edition-4.md) | 178 | `declaration-track:c8629836b00aa05d4c06b7bff60990511fab1aad1aca3feb86c89ab4ff28da8a` |
| 13 | `instance` | [(anonymous)](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/instance-source-edition-2.md) | 187 | `declaration-track:47c3953d11364aaa31090e1d85eb359d4fcd096097c5f6bbe73abd0c521a439d` |
| 14 | `theorem` | [coe_mul](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/coe-mul.md) | 190 | `result-track:490e8176078588fb0129359a2ba80644f1542c1f9afa1fdd667abf3a52e30ed4` |
| 15 | `theorem` | [mul_apply](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/mul-apply.md) | 194 | `result-track:184e297e9479619aaa6db95ab4c6c73de70531ae16fb341cfd0744fcc319fa51` |
| 16 | `theorem` | [coe_one](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/coe-one.md) | 199 | `result-track:3b8cbcf7be1b2087533e4b98731e963b467ef19961e1f6c5c7405783c7834d89` |
| 17 | `instance` | [unitsHasCoeToFun](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/unitshascoetofun.md) | 203 | `declaration-track:972e633ee16655e283686544712cb480ff52deec586acc3e611e5725c78003e6` |
| 18 | `theorem` | [units_inv_apply_apply](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/units-inv-apply-apply.md) | 210 | `result-track:ef827e333126219780a741bd2210189a7dc4a6c3739e7a70657bb17833f0e87d` |
| 19 | `theorem` | [units_apply_inv_apply](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/units-apply-inv-apply.md) | 215 | `result-track:7a725fc9cd5c2e90a6c3efd5db72f55fbf0df4180bad07d2db649006bd1a247d` |
| 20 | `def` | [toOrderIso](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/toorderiso.md) | 220 | `declaration-track:c53d69f6ca40307ca12a8f557b95168503947a44b3fbd8607c4f9794c619fbb1` |
| 21 | `theorem` | [coe_toOrderIso](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/coe-toorderiso.md) | 232 | `result-track:544fb9188db0f7b1246590262c0a742bdc10e63a6642aeb317757044b87fabf5` |
| 22 | `theorem` | [coe_toOrderIso_symm](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/coe-toorderiso-symm.md) | 237 | `result-track:2dab7ac0ea6384f4607470b099c351dcea50c19bf522b6c8af465750656342d3` |
| 23 | `theorem` | [coe_toOrderIso_inv](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/coe-toorderiso-inv.md) | 243 | `result-track:113de981a3fc20900021b9d1fea3030a18c152c36e3b91ab7e0e01f5412b03bf` |
| 24 | `theorem` | [isUnit_iff_bijective](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/isunit-iff-bijective.md) | 247 | `result-track:ae2772f2d57cc4cd9a3a6e4c43298d930c53ca4837a5ee7e6068a063852c3588` |
| 25 | `theorem` | [coe_pow](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/coe-pow.md) | 262 | `result-track:bcc61cea11f29fe0aee5fadd5fb45ce68c0afbef724a82af111c5126ad7d1bb2` |
| 26 | `theorem` | [semiconjBy_iff_semiconj](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/semiconjby-iff-semiconj.md) | 269 | `result-track:42333b79c5d2dd4a2c256b65afe835e9b7939e58cdebfc5282baf9d49ec0f3db` |
| 27 | `theorem` | [commute_iff_commute](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/commute-iff-commute.md) | 274 | `result-track:23332d2613abf636646721eff98b40220273f0fc5ef69922933bc66e8533a7b1` |
| 28 | `def` | [translate](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/translate.md) | 286 | `declaration-track:68f3fb3159b71b9b9483c2df43aa31b4c6cc293ae6896432cf3939394d0d5d72` |
| 29 | `theorem` | [translate_apply](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/translate-apply.md) | 295 | `result-track:5eb99455a8c95e13e88dd0964d893dbed281c7365ea50fd516dec98efe916edc` |
| 30 | `theorem` | [translate_inv_apply](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/translate-inv-apply.md) | 300 | `result-track:281962597e53040326ed0103a2163c238aa1a6a0655e7424c6a189b7d88f51ee` |
| 31 | `theorem` | [translate_zpow](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/translate-zpow.md) | 305 | `result-track:d87924210b5029ba6fcff7c406f3b3277847166d4918ee90a7d59ebdecf49c5f` |
| 32 | `theorem` | [translate_pow](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/translate-pow.md) | 311 | `result-track:e169022d2c58b9a73c4e25eee10fd539b69df771b13789fb41eeeab8cd6812d4` |
| 33 | `theorem` | [translate_iterate](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/translate-iterate.md) | 317 | `result-track:19d88441bd84301f7c9c8015047d8c049c91cabaa37d042791ffcf418d4a5248` |
| 34 | `theorem` | [commute_nat_add](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/commute-nat-add.md) | 331 | `result-track:469825b0e377073fdab047271eb0b15a61207b70eb5c839fa277977976f5d461` |
| 35 | `theorem` | [commute_add_nat](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/commute-add-nat.md) | 335 | `result-track:c5e144050d4dfa929df8bbc0783cf0aa1556cc758385e0834b6e0d03ca659e4f` |
| 36 | `theorem` | [commute_sub_nat](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/commute-sub-nat.md) | 339 | `result-track:2d8234740e2907208304c7cd365ff22d57c5e442f3f6ee12e039d5f9433a003d` |
| 37 | `theorem` | [commute_add_int](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/commute-add-int.md) | 344 | `result-track:061d4682718c4a7d3ff40936198ceed78f8d0bf2ee3b3767f28bc6fcc896bced` |
| 38 | `theorem` | [commute_int_add](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/commute-int-add.md) | 349 | `result-track:1191d63b90793aaf75b38ffed6ee37571591f860c7493b46ffd5c791c207f854` |
| 39 | `theorem` | [commute_sub_int](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/commute-sub-int.md) | 353 | `result-track:a41aef50ae3666c44175b020adb0942fdee14dc68320dab27943a786cc761289` |
| 40 | `theorem` | [map_int_add](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/map-int-add.md) | 359 | `result-track:95197b555ea2b37f51144f1dcbf2e9398278757c31d874d63517ca77dcab5e61` |
| 41 | `theorem` | [map_add_int](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/map-add-int.md) | 364 | `result-track:75c9924a2be0d9ae71623d2cbb4983f23f69d24be9c57179f347187ade1ec64d` |
| 42 | `theorem` | [map_sub_int](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/map-sub-int.md) | 369 | `result-track:eb8435bfb8792e2d64a99a72af7e6731e92e73c288d516da7a821db5aa32ba9f` |
| 43 | `theorem` | [map_add_nat](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/map-add-nat.md) | 374 | `result-track:2e713aaffe30db146484af7ae484d351e7da056ac365c8ddeb2b75fad2f9c8c0` |
| 44 | `theorem` | [map_nat_add](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/map-nat-add.md) | 379 | `result-track:0d849b1848699d571c28f910116f00c427d921a2915eb302614400da3ba6bd07` |
| 45 | `theorem` | [map_sub_nat](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/map-sub-nat.md) | 384 | `result-track:27a5a892cc8126652d2ca23dcd34088c89c94348168218af531a9304a0f53f3a` |
| 46 | `theorem` | [map_int_of_map_zero](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/map-int-of-map-zero.md) | 388 | `result-track:6413354e15d685198d93979f8f3207ce798d298dd4d1872fe1b0de06285a64dc` |
| 47 | `theorem` | [map_fract_sub_fract_eq](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/map-fract-sub-fract-eq.md) | 392 | `result-track:a89b1e2614a847eda3841d2b7cb7b3d7eb3eab9f19bb5295c3f44addd7d618c0` |
| 48 | `instance` | [(anonymous)](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/instance.md) | 402 | `declaration-track:0c2d8bfa694ee38d7796d2f38661d86365b759a2082ad0d89e27596f505dfe1a` |
| 49 | `theorem` | [sup_apply](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/sup-apply.md) | 424 | `result-track:4db8c1472f1dd5f1a690e177e1b52da62e0f9e24864e15e93aed7333306d5e11` |
| 50 | `theorem` | [inf_apply](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/inf-apply.md) | 429 | `result-track:8fc3d7a62dc95626f68e0b27651bbd55fdb79d5f39580b17cc1c4d5ed396a459` |
| 51 | `theorem` | [iterate_monotone](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/iterate-monotone.md) | 433 | `result-track:eaefe95c6f7feb60f23f1edead1a98ca9c8405677b4cd126ef7f5a032f50ce21` |
| 52 | `theorem` | [iterate_mono](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/iterate-mono.md) | 437 | `result-track:b07932cabdac091e1228b17d5dbe86458c242a6ddfa427b27ed4f7fd5c42c386` |
| 53 | `theorem` | [pow_mono](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/pow-mono.md) | 441 | `result-track:3f267999f6257f23300c99609830684f7d73a84a88a4217c3dcc9df476c87cec` |
| 54 | `theorem` | [pow_monotone](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/pow-monotone.md) | 445 | `result-track:2b94e129a5023ee62b950cc2f6fdee5f0df22762b944c6bca2a5f7bd0d355e5b` |
| 55 | `theorem` | [map_le_of_map_zero](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/map-le-of-map-zero.md) | 458 | `result-track:68321874030f7bf65f5cdfa65496e8e24bbe8e0e2a816e79fd6e4c8235739100` |
| 56 | `theorem` | [map_map_zero_le](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/map-map-zero-le.md) | 464 | `result-track:c8f161d4359804577caac8cf15b65595cf5ec82e56853136b7da8c4d13679ec2` |
| 57 | `theorem` | [floor_map_map_zero_le](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/floor-map-map-zero-le.md) | 468 | `result-track:2fcb13e58f5693fa5ae9beb7233b4eeceed6c9706153a2f4042ba44c3b895965` |
| 58 | `theorem` | [ceil_map_map_zero_le](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/ceil-map-map-zero-le.md) | 474 | `result-track:d3e0b8345a5a4a63d2bbfc9a43d0c13d91d36650f58c33a441d75c0cf2fcb451` |
| 59 | `theorem` | [map_map_zero_lt](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/map-map-zero-lt.md) | 480 | `result-track:e9b7baab3c8693288ea91465cb34f4c6cc6e97d14b4f3e2168927ad8e5ba3449` |
| 60 | `theorem` | [le_map_of_map_zero](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/le-map-of-map-zero.md) | 487 | `result-track:762b4b188b6ff91cfd20c889c97cc7cf85b156091debf61b0a412c6227ab879c` |
| 61 | `theorem` | [le_map_map_zero](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/le-map-map-zero.md) | 493 | `result-track:6d79648aeffc9b644b8fb7f9fa97448939113fc9954890bdc048e5720453f666` |
| 62 | `theorem` | [le_floor_map_map_zero](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/le-floor-map-map-zero.md) | 497 | `result-track:b0c8eb5ebb1e3db138931c76085140607ee175a1f27d6f58acbcbdf23520dd3e` |
| 63 | `theorem` | [le_ceil_map_map_zero](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/le-ceil-map-map-zero.md) | 503 | `result-track:94965fa320b240b9822bae81b20f3eb4b60030643843fddcdeab32df06cefced` |
| 64 | `theorem` | [lt_map_map_zero](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/lt-map-map-zero.md) | 509 | `result-track:0d5c5dfbd1a7624b3c75cca519de16e25c4d7b131a0ac8ffeee150dac83939a1` |
| 65 | `theorem` | [dist_map_map_zero_lt](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/dist-map-map-zero-lt.md) | 516 | `result-track:c4e2dd85bc8e16b2a7e4f99c5268b68dc2e0703b9dea38d09e1ccb372223962b` |
| 66 | `theorem` | [dist_map_zero_lt_of_semiconj](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/dist-map-zero-lt-of-semiconj.md) | 521 | `result-track:b94bc28b4154c9daeae977c205829256cf88d873b6ea41a09f0277a15e84acd9` |
| 67 | `theorem` | [dist_map_zero_lt_of_semiconjBy](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/dist-map-zero-lt-of-semiconjby.md) | 532 | `result-track:d0b477adc209b5c7d4479d24bd61503635d87adde12f44d944ece11f68a008bf` |
| 68 | `theorem` | [tendsto_atBot](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/tendsto-atbot.md) | 541 | `result-track:413566a86feaf5d56fd9d7eebc4dd72266e730b10f67bdd46a630bd0b1acc461` |
| 69 | `theorem` | [tendsto_atTop](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/tendsto-attop.md) | 547 | `result-track:5311c3f835439585d4aaef3dd96e3354a081ec213ba4dc1ecb63e23d21b6eaed` |
| 70 | `theorem` | [continuous_iff_surjective](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/continuous-iff-surjective.md) | 553 | `result-track:6d846ce1f3c21f2e24b05af3f88996c00d0da499d31738bc38861bfeb87f2b82` |
| 71 | `theorem` | [iterate_le_of_map_le_add_int](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/iterate-le-of-map-le-add-int.md) | 568 | `result-track:7cff1404d5cabfc973160a4ef5abbd8948468ec7f0230721a4a8e5a8019a0bbc` |
| 72 | `theorem` | [le_iterate_of_add_int_le_map](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/le-iterate-of-add-int-le-map.md) | 574 | `result-track:488c6d1760843e031fdede0eb89de1e44bee00ff76e921a033ea9c2ead91e1ae` |
| 73 | `theorem` | [iterate_eq_of_map_eq_add_int](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/iterate-eq-of-map-eq-add-int.md) | 580 | `result-track:0fb36f370473fd722ae9e63200ea6812cd6e8566d040f74ed91b632211f28ff7` |
| 74 | `theorem` | [iterate_pos_le_iff](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/iterate-pos-le-iff.md) | 585 | `result-track:82a2cac6857a0eedffbe12b588234c97f06972b0065a4cbe4574e9299fd1c83d` |
| 75 | `theorem` | [iterate_pos_lt_iff](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/iterate-pos-lt-iff.md) | 591 | `result-track:d22c8eb035bdb2daa53b50b728db2f2ea4f4f7590bdb07e46a2c03c358d1ca6e` |
| 76 | `theorem` | [iterate_pos_eq_iff](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/iterate-pos-eq-iff.md) | 597 | `result-track:9ac96526bc749b7806f851602756a69830bc9c2ef8c6af45e7d4ba54444756bf` |
| 77 | `theorem` | [le_iterate_pos_iff](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/le-iterate-pos-iff.md) | 603 | `result-track:1e8aecc3bd53e2e7a90beac9d3c8f7ea653290d3cf656f50aa119c767382c290` |
| 78 | `theorem` | [lt_iterate_pos_iff](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/lt-iterate-pos-iff.md) | 608 | `result-track:b8ef7b349ccbe1492660a8b54b26b0aa8e74edfb7a6b00b17766e3a2068fdb38` |
| 79 | `theorem` | [mul_floor_map_zero_le_floor_iterate_zero](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/mul-floor-map-zero-le-floor-iterate-zero.md) | 613 | `result-track:dcc850f67f3b298c35938702eeebd63c1fae113a9a2a346b91f486e4ba9a4e4b` |
| 80 | `def` | [transnumAuxSeq](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/transnumauxseq.md) | 626 | `declaration-track:7205be5909c3590b0e4e167d0d79fa8653efe4a1348c0a088f73fecb31496e64` |
| 81 | `def` | [translationNumber](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/translationnumber.md) | 633 | `declaration-track:34942ec1b5c4039c28042d57e69eb7bedad6c230f42fe76c5f6ec3c9d05bbc40` |
| 82 | `theorem` | [transnumAuxSeq_def](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/transnumauxseq-def.md) | 644 | `result-track:7d5ecf0f5447a22a265ffa5120c4e66fb8f2087ac1792ace4a745076d8c3cdf4` |
| 83 | `theorem` | [translationNumber_eq_of_tendsto_aux](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/translationnumber-eq-of-tendsto-aux.md) | 648 | `result-track:9a785aba127b198d7c5c61a13a0b9e6208ba3147db15001b928ffd38ae036785` |
| 84 | `theorem` | [translationNumber_eq_of_tendsto₀](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/translationnumber-eq-of-tendsto-source-edition-2.md) | 653 | `result-track:918d48eef11927fe4660bc08ae437494cb876a9c32830658b7fb8a22715e6923` |
| 85 | `theorem` | [translationNumber_eq_of_tendsto₀'](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/translationnumber-eq-of-tendsto.md) | 660 | `result-track:31cb64708cf6541d3ca86e8af1c97e3474fb76fc7dc8a65fbb4bd275738a0bc0` |
| 86 | `theorem` | [transnumAuxSeq_zero](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/transnumauxseq-zero.md) | 665 | `result-track:c871914373b96a29e3b16e22502cd64c79f9dd56166a50075d54ac377772c7ca` |
| 87 | `theorem` | [transnumAuxSeq_dist_lt](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/transnumauxseq-dist-lt.md) | 668 | `result-track:c6b26d2923759e369ff14d98eba5d0b46002dec6387856cfa5ff921a95c5474d` |
| 88 | `theorem` | [tendsto_translationNumber_aux](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/tendsto-translationnumber-aux.md) | 679 | `result-track:b50a77a18a4c95b3cd078e77e5c6c96643cf7d411e0fe7b311084e5d4a996a16` |
| 89 | `theorem` | [dist_map_zero_translationNumber_le](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/dist-map-zero-translationnumber-le.md) | 683 | `result-track:16b033e5848b669343b9613838b6faf0676fdc08ae064293e0a9aa0bbd140db7` |
| 90 | `theorem` | [tendsto_translationNumber_of_dist_bounded_aux](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/tendsto-translationnumber-of-dist-bounded-aux.md) | 689 | `result-track:eb9bc86ca7c3bc63ceb766aeae1e2d682d325ee9c2ba761cd9a49c9bac92d02e` |
| 91 | `theorem` | [translationNumber_eq_of_dist_bounded](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/translationnumber-eq-of-dist-bounded.md) | 702 | `result-track:79a7705fe437339a2e83bd3df8a759bb6012f88576dfdb1c14490ba5cb23e4a6` |
| 92 | `theorem` | [translationNumber_one](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/translationnumber-one.md) | 709 | `result-track:58395eebcd2ea618c982422f211038416024375d23403aa5fab61b43e020dbae` |
| 93 | `theorem` | [translationNumber_eq_of_semiconjBy](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/translationnumber-eq-of-semiconjby.md) | 713 | `result-track:dc5c4ed61719dc007985327efcee8f4401b1a58dd67e23c678928a1e16fe2732` |
| 94 | `theorem` | [translationNumber_eq_of_semiconj](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/translationnumber-eq-of-semiconj.md) | 719 | `result-track:ff3450e88ba38891a4cdbaa52ab889360fb0ffb9dc1cedc745da3ad064d897f0` |
| 95 | `theorem` | [translationNumber_mul_of_commute](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/translationnumber-mul-of-commute.md) | 724 | `result-track:d42e8b29a0b70febee7c84c83b4c3362ed89b2459bdf74152cda6ca22fa81b9b` |
| 96 | `theorem` | [translationNumber_units_inv](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/translationnumber-units-inv.md) | 736 | `result-track:fc0e8a147611cf600d926e6dbd66be00789e6a92d449557f6df6655275e9439b` |
| 97 | `theorem` | [translationNumber_pow](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/translationnumber-pow.md) | 742 | `result-track:781fd0598f41ac3ad4cc76288da784f840946672d5c1147dd5f32d81ed6a8a54` |
| 98 | `theorem` | [translationNumber_zpow](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/translationnumber-zpow.md) | 750 | `result-track:e01aef20a70a8ec715c6b1e403c9644d5a8c88309cd45a85b651b327fc2f79af` |
| 99 | `theorem` | [translationNumber_conj_eq](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/translationnumber-conj-eq-source-edition-2.md) | 756 | `result-track:d7b286c8a688ed2f06b4d1b930db8a6d4fcac12e7b9bdd6040bc52b24ae223e0` |
| 100 | `theorem` | [translationNumber_conj_eq'](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/translationnumber-conj-eq.md) | 762 | `result-track:26070e2cccf6cf78f35384987ee5434ab925e0b360d36307e522c087032a2d62` |
| 101 | `theorem` | [dist_pow_map_zero_mul_translationNumber_le](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/dist-pow-map-zero-mul-translationnumber-le.md) | 767 | `result-track:e4ede3e4d620103b584cd3dab239ef1255bfb28a1910b7b85ee59e0e934c987f` |
| 102 | `theorem` | [tendsto_translation_number₀'](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/tendsto-translation-number-source-edition-2.md) | 772 | `result-track:74f73b68b1cff278a8c129373bba8fe26d99af31017380a162419caef919df94` |
| 103 | `theorem` | [tendsto_translation_number₀](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/tendsto-translation-number-source-edition-3.md) | 785 | `result-track:fe361b624f207a20781e25fc38411b20c2d7b4c9d37958c97529d68a50515b38` |
| 104 | `theorem` | [tendsto_translationNumber](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/tendsto-translationnumber.md) | 791 | `result-track:bf3ec19d81e1cdc110f4a697d9bd4ab21847d0eb79314ed030cd5a2c6091f2f9` |
| 105 | `theorem` | [tendsto_translation_number'](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/tendsto-translation-number.md) | 798 | `result-track:05280a2f1c529f8820730f621fd1344b3d2dfc6ab8b5a8abdafe05b94ae0a5df` |
| 106 | `theorem` | [translationNumber_mono](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/translationnumber-mono.md) | 803 | `result-track:30a2e3677503a8589e1344ceea57a8a0429d5d201541d475a02812b8e1e0cb8a` |
| 107 | `theorem` | [translationNumber_translate](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/translationnumber-translate.md) | 808 | `result-track:e3775ea581b7aa2ef1cf89640133f3927543aec909416a8a49a03e60c096da11` |
| 108 | `theorem` | [translationNumber_le_of_le_add](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/translationnumber-le-of-le-add.md) | 814 | `result-track:257fadf1fd4876d0b8fc07a78e3bce9b10a7075d007e0dc9e1dda0a5cd3a8beb` |
| 109 | `theorem` | [le_translationNumber_of_add_le](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/le-translationnumber-of-add-le.md) | 818 | `result-track:4dc439117aba57431af8528507cafdd02ef110a30de1034d42e3aed571e430ce` |
| 110 | `theorem` | [translationNumber_le_of_le_add_int](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/translationnumber-le-of-le-add-int.md) | 822 | `result-track:cb60ba014c6d5e2501e8707f073f865d485907608ce4e7ae08ff2d0537a39c4b` |
| 111 | `theorem` | [translationNumber_le_of_le_add_nat](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/translationnumber-le-of-le-add-nat.md) | 828 | `result-track:b2f9f20d2b49c512abb8e0906ca1ea2de3d4cf7065fb451a2edcb2c7a2d1766c` |
| 112 | `theorem` | [le_translationNumber_of_add_int_le](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/le-translationnumber-of-add-int-le.md) | 832 | `result-track:61d49ea657478282b1f63945d6fbccb1327a611f2165430ae62809a4d0e7dd4e` |
| 113 | `theorem` | [le_translationNumber_of_add_nat_le](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/le-translationnumber-of-add-nat-le.md) | 838 | `result-track:944749b68637c86f0f9b986984ca672b670872a4c1deaa8be3498c2f5c229142` |
| 114 | `theorem` | [translationNumber_of_eq_add_int](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/translationnumber-of-eq-add-int.md) | 844 | `result-track:74869ae811f434ba18250950e89c0b983ea884e9d3af49aace62cfdf7d0e50e1` |
| 115 | `theorem` | [floor_sub_le_translationNumber](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/floor-sub-le-translationnumber.md) | 849 | `result-track:7b610a9a755bba6fe15f5f669e46da3ea63eb760c768f4cdd46b717a285d6bae` |
| 116 | `theorem` | [translationNumber_le_ceil_sub](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/translationnumber-le-ceil-sub.md) | 853 | `result-track:a31d4930d6a58fccf0529fb3040590a86a7ad35c9dcf18ca6a139625b8370af2` |
| 117 | `theorem` | [map_lt_of_translationNumber_lt_int](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/map-lt-of-translationnumber-lt-int.md) | 857 | `result-track:d0c51db787eb3c388cd9317cf39d96a76334b3b327d2ca719f4aaf5f02a30685` |
| 118 | `theorem` | [map_lt_of_translationNumber_lt_nat](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/map-lt-of-translationnumber-lt-nat.md) | 861 | `result-track:e0e669a9e4a03b506eeaf90b3bc3c28e7770192f59a2c39c0ff5464c3ea5b985` |
| 119 | `theorem` | [map_lt_add_floor_translationNumber_add_one](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/map-lt-add-floor-translationnumber-add-one.md) | 865 | `result-track:a3c90304b98fa8324618ca1531791e76e11f8a5197487e59139f6a7b04d41ac8` |
| 120 | `theorem` | [map_lt_add_translationNumber_add_one](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/map-lt-add-translationnumber-add-one.md) | 873 | `result-track:5a4244333b35021a6dac0eb4ebf5fa5c09a72fb67bcfb134348fff1499b1ef70` |
| 121 | `theorem` | [lt_map_of_int_lt_translationNumber](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/lt-map-of-int-lt-translationnumber.md) | 879 | `result-track:16bfbec7c87d9cc66e7cac94991422277fdf09d699f80feebd3f16e4b8b54ddd` |
| 122 | `theorem` | [lt_map_of_nat_lt_translationNumber](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/lt-map-of-nat-lt-translationnumber.md) | 883 | `result-track:38a423e93a04b2b66752d0e79d4b8e70870186cc0efe201645eb57b38c73227e` |
| 123 | `theorem` | [translationNumber_of_map_pow_eq_add_int](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/translationnumber-of-map-pow-eq-add-int.md) | 890 | `result-track:ac3b48d3b6a3857e2ee306a8b05d1b06c1c52aa1bef48f7b2269051a7f7c1f08` |
| 124 | `theorem` | [forall_map_sub_of_Icc](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/forall-map-sub-of-icc.md) | 899 | `result-track:64726f60e7ee26daba9734c5a4afdf32bf76faa1befdd8c92ed09a87ada760ca` |
| 125 | `theorem` | [translationNumber_lt_of_forall_lt_add](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/translationnumber-lt-of-forall-lt-add.md) | 904 | `result-track:e17d1b2034b2e8a1b2966ab9da2ce9ca30122148f35c33c315ba6fdf84a15cce` |
| 126 | `theorem` | [lt_translationNumber_of_forall_add_lt](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/lt-translationnumber-of-forall-add-lt.md) | 915 | `result-track:4beee0382d405291b30a7518d37a125e0284c1113b9166010e6675781ad4b89e` |
| 127 | `theorem` | [exists_eq_add_translationNumber](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/exists-eq-add-translationnumber.md) | 928 | `result-track:bcab14e93867029aaee046a19ef7d0f8e7a795909a061f88a50df887811546ec` |
| 128 | `theorem` | [translationNumber_eq_int_iff](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/translationnumber-eq-int-iff.md) | 938 | `result-track:82e3bab33783fb2a0cfd4383afa31e087051d6bb1bde7c42f6e6dbb6182e32a1` |
| 129 | `theorem` | [continuous_pow](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/continuous-pow.md) | 948 | `result-track:0bc66dd37699fef52ab1d996f11045359582bc7fb967b7c045303e38d608d71d` |
| 130 | `theorem` | [translationNumber_eq_rat_iff](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/translationnumber-eq-rat-iff.md) | 953 | `result-track:cbfbfc705591c50817d1dda1949d4d4a35064194d05a2d40a70ceca0c7bea415` |
| 131 | `theorem` | [semiconj_of_group_action_of_forall_translationNumber_eq](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/semiconj-of-group-action-of-forall-translationnumber-eq.md) | 966 | `result-track:e94ea85ef12df7aef1765acd4f9ba136291980e111fcaafdc00662d907db9a66` |
| 132 | `theorem` | [units_semiconj_of_translationNumber_eq](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/units-semiconj-of-translationnumber-eq.md) | 1003 | `result-track:3fd530491c97b1831ae92d98be5909106120d58870e1d7ad06fab70739dad360` |
| 133 | `theorem` | [semiconj_of_isUnit_of_translationNumber_eq](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/semiconj-of-isunit-of-translationnumber-eq.md) | 1016 | `result-track:5549b9b14f33e9feb2f5e8cb178171761b44a9aa3720bd8438e6bf5b0cd11ce5` |
| 134 | `theorem` | [semiconj_of_bijective_of_translationNumber_eq](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberExtIff.lean/declarations/semiconj-of-bijective-of-translationnumber-eq.md) | 1025 | `result-track:486ddeddb11a03f6248306dcfaaae089b4bfa1ea1159c9b9fd1ee6170c2e9591` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=edd34be8be7fcbf3abf3224b6c5ed6ba7bfbe935e5a652376eb07a45cc36c46c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/TranslationNumber/Variantacb4711f796682e68a1835b27bd674df7087131ee33ac1e51a59a2bdcef18d87.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/TranslationNumber/Variantacb4711f796682e68a1835b27bd674df7087131ee33ac1e51a59a2bdcef18d87.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
