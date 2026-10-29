# Verification target: Coprod Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89b6a0a71b0943a43266b42849e9d28bef10283b",
  "lexical_observation_count": 119,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant8d1852bf12eb6e7500f720378b396b84670850f04be8b8ff3d385a935165e6d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89b6a0a71b0943a43266b42849e9d28bef10283b`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant8d1852bf12eb6e7500f720378b396b84670850f04be8b8ff3d385a935165e6d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant8d1852bf12eb6e7500f720378b396b84670850f04be8b8ff3d385a935165e6d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.PUnit` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Ker` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Membership` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Congruence.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coprodCon](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/coprodcon.md) | 140 | `declaration-track:05f9b74c51c1bbf3ec4407788214e56f35cd1c5cf789e3eb24599e1c2bc97455` |
| 2 | `def` | [Coprod](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/coprod.md) | 148 | `declaration-track:50c3e1197d92caba9c060846db9b1769e949d2373f5810f986f83a106a38f8b1` |
| 3 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/instance.md) | 160 | `declaration-track:21d03a4b724600ff7c915757276cffcc00f1149fab5e7f7211914b2677b08a42` |
| 4 | `def` | [mk](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/mk.md) | 164 | `declaration-track:67ed1509cf85064178c9fd50af4b1b8996c6f05915287439a1c0649f1567d06c` |
| 5 | `theorem` | [con_ker_mk](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/con-ker-mk.md) | 167 | `result-track:1dfd1137207dfdcfafe65354054ed0aa4d75ab37237bf56ea22eb621cd4cca8a` |
| 6 | `theorem` | [mk_surjective](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/mk-surjective.md) | 170 | `result-track:5aa0ce74440c411eb7a543a6f9d3907b9f92bdcf3190f30a9b7ba8e46c9b6a19` |
| 7 | `theorem` | [mrange_mk](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/mrange-mk.md) | 173 | `result-track:be90df74c6136b685b4be1ad950f8a0f54a12e1f1959643ef17c2393cc9b4412` |
| 8 | `theorem` | [mk_eq_mk](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/mk-eq-mk.md) | 176 | `result-track:6d26c93ab73112e0697ec0e2f4344223c2e7bd35ff0a6a1fbe58470dfd7b879e` |
| 9 | `def` | [inl](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/inl.md) | 180 | `declaration-track:d3b44c21feb9eef737ae8dac1c4ab6254ecebeefd3af34d51980a3ec63f4d063` |
| 10 | `def` | [inr](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/inr.md) | 187 | `declaration-track:403c24dbc8b82a21dc2b2587e59017a994cd6f24c8d8bea527ce35fce75ac931` |
| 11 | `theorem` | [mk_of_inl](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/mk-of-inl.md) | 193 | `result-track:e0ebe9be0792aa7a5f90c71a4a4794fa91221adcf096b5af42c2989159c84ff3` |
| 12 | `theorem` | [mk_of_inr](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/mk-of-inr.md) | 196 | `result-track:3166b22d4ec22b45ed0f32feb16dd6d8f8aa9ef4efb0b684d0cc8c00a9e0f3ef` |
| 13 | `theorem` | [induction_on'](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/induction-on.md) | 199 | `result-track:56c3e1bdc1d2437185d4192d75a25acce00f0cfecf3af7601ce99b1a586ed29f` |
| 14 | `theorem` | [induction_on](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/induction-on-source-edition-2.md) | 212 | `result-track:8a2e02ccbe7bffd1eefab1cc40670710cb0bb27b4ab71c74fa3708cf21ce4ca4` |
| 15 | `def` | [clift](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/clift.md) | 230 | `declaration-track:7b1fe01a18094fe39ebbc45a26cf1301bd670c145d4bd1c7c5ef3ab63492b3db` |
| 16 | `theorem` | [clift_apply_inl](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/clift-apply-inl.md) | 238 | `result-track:a5b956583129fae7900343be6eea9746ca047958a99e93ff7c1d0bad15c37ad3` |
| 17 | `theorem` | [clift_apply_inr](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/clift-apply-inr.md) | 243 | `result-track:027db6e8eb6c9a5187821bf42847f5f6d29732f4f3f9c21008bc6d6ee655a5f2` |
| 18 | `theorem` | [clift_apply_mk](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/clift-apply-mk.md) | 248 | `result-track:06bc96e20b7528e508b8159f885aa3ab368d3f5c8bf91ff55ba8a4ece364584f` |
| 19 | `theorem` | [clift_comp_mk](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/clift-comp-mk.md) | 253 | `result-track:78390235c6d54b7875e35eb6db0d7f2a2e31e1a069c536aa4099be55fbc4b1bd` |
| 20 | `theorem` | [mclosure_range_inl_union_inr](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/mclosure-range-inl-union-inr.md) | 258 | `result-track:2c3ea6a4aed9d2e618c542b2ce93d1cde04742dfb953893cfb27f89111cb9c9d` |
| 21 | `theorem` | [mrange_inl_sup_mrange_inr](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/mrange-inl-sup-mrange-inr.md) | 263 | `result-track:2b5d30782d2a26e1a47f9d86a3387431473dfffd759d93ae4d7a847f8c17784b` |
| 22 | `theorem` | [codisjoint_mrange_inl_mrange_inr](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/codisjoint-mrange-inl-mrange-inr.md) | 269 | `result-track:58cc257f6abc4b91f07edc58cb1757b3ce9fdd263c633dc046a930729e58af9e` |
| 23 | `theorem` | [mrange_eq](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/mrange-eq.md) | 273 | `result-track:f193489588d42d78085badbe8173198ff2432f7450297ea721001a1d26340600` |
| 24 | `theorem` | [hom_ext](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/hom-ext.md) | 285 | `result-track:d935141b788e1791c95531668c3b8b57c4b4821d8581bc2b5d50ee466037b9cb` |
| 25 | `theorem` | [clift_mk](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/clift-mk.md) | 291 | `result-track:071fa0d46fa4467f9c590059e0fb44c49c9f1f857520d0b0cdb1d62223135ae8` |
| 26 | `def` | [map](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/map.md) | 299 | `declaration-track:68c8bb0e3c2e702aaca2fb60ac410eb6ccbd259f081f20db98fb3a6d6e44c111` |
| 27 | `theorem` | [map_mk_ofList](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/map-mk-oflist.md) | 307 | `result-track:682dafa2873ff8990ffd87cc3dbc4caaac7fc0c1c16bb579a495b72f05d5fc35` |
| 28 | `theorem` | [map_apply_inl](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/map-apply-inl.md) | 312 | `result-track:d1673beec81b23e5d8f6a54ab48128d03df2746c4ab22869ada34ddeff48728f` |
| 29 | `theorem` | [map_apply_inr](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/map-apply-inr.md) | 315 | `result-track:ab3d7d95e27d5166e1e900d9424895ba802760807b988c40a75aef0ab87b4a6c` |
| 30 | `theorem` | [map_comp_inl](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/map-comp-inl.md) | 318 | `result-track:aa2c55d27ffbcce5e095d05101c915d7cf26e03c557c4fa4ca4540df100d0b7a` |
| 31 | `theorem` | [map_comp_inr](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/map-comp-inr.md) | 321 | `result-track:1c1a81685fd05210f0619c5e8b70d54ffb6a19418a678ceece4630eb4d439204` |
| 32 | `theorem` | [map_id_id](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/map-id-id.md) | 324 | `result-track:14c7697ff8c81adc89f592da4accb70362e39c3625d2d45129c8b12826a17b0a` |
| 33 | `theorem` | [map_comp_map](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/map-comp-map.md) | 327 | `result-track:15f43c6f93b55829c236c17e527d03d66046edd3ae425ca8065f2825d777dab9` |
| 34 | `theorem` | [map_map](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/map-map.md) | 332 | `result-track:34efc6a3ccc3f47d4def9511b943ce9b0f21089411fce51088ca5fe02ced4655` |
| 35 | `def` | [swap](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/swap.md) | 346 | `declaration-track:114f9a37fd11261983b100f239e9d43254c08e975a28fe4f5d18be67f0800b25` |
| 36 | `theorem` | [swap_comp_swap](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/swap-comp-swap.md) | 354 | `result-track:b0d45fed142afd8a304b229352e15f57135afd2b68d9440ad0feb661b3fd4df1` |
| 37 | `theorem` | [swap_swap](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/swap-swap.md) | 359 | `result-track:b42c31d05a39d7f0206a29a1cfd1f02dc2a88a78a64b3568e810a3b3b5f01685` |
| 38 | `theorem` | [swap_comp_map](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/swap-comp-map.md) | 363 | `result-track:f151d8c9545134b6f1a8985a0e392d1d7cbe54a6b5d749f7e5e8b513e3af6b9c` |
| 39 | `theorem` | [swap_map](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/swap-map.md) | 368 | `result-track:eb22fc6a7084fc36899ae60642925cd58e0431dd63430cd408a843597f612c5d` |
| 40 | `theorem` | [swap_comp_inl](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/swap-comp-inl.md) | 372 | `result-track:0bd295ec4b725bbd821cbd346bbbdeb337e3f3e8a879947063927a0085a9ddad` |
| 41 | `theorem` | [swap_inl](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/swap-inl.md) | 373 | `result-track:11b696be6600268e77e641ee5546b66988d23f58d13574a9286e6da7d31d95c4` |
| 42 | `theorem` | [swap_comp_inr](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/swap-comp-inr.md) | 374 | `result-track:2e18ad21a12fcdbcf32369788b362ca2d796f3f186585ce9f9d084d47f58c571` |
| 43 | `theorem` | [swap_inr](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/swap-inr.md) | 375 | `result-track:6a802c1ad77bbfa2fae39728f55323024c11c4d92e643ffb5dce67345247e9c6` |
| 44 | `theorem` | [swap_injective](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/swap-injective.md) | 378 | `result-track:6105fb5eb52927f8b34035d87c77cf8fee39e6b9cadd6a92dabad6764ccfc8f2` |
| 45 | `theorem` | [swap_inj](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/swap-inj.md) | 381 | `result-track:18e0ed8fc4f95c3888b0317b4f2f160fe5f3c1cb2a6726b73072f48be9c235b0` |
| 46 | `theorem` | [swap_eq_one](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/swap-eq-one.md) | 384 | `result-track:e56e4d421b3c3e35a54283010bafd056b09452504a2cdcc47b23b6cd63d1b3cb` |
| 47 | `theorem` | [swap_surjective](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/swap-surjective.md) | 387 | `result-track:394f86df1fa2c3b0d3453dac2fc20f84a4856165271ed6b1ecfee8b4f868441c` |
| 48 | `theorem` | [swap_bijective](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/swap-bijective.md) | 390 | `result-track:2bd988276b6b4a963b35e70d40505169b16f35b28ab798ec1e5fe7a399ad3286` |
| 49 | `theorem` | [mker_swap](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/mker-swap.md) | 393 | `result-track:af3c166190ac08b42926fccbf5fbc7c7395fa33e42c49363c2a2a087d49a9f11` |
| 50 | `theorem` | [mrange_swap](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/mrange-swap.md) | 396 | `result-track:02d1385b9207f019041e2952e3165945ff65f26ee00951293327678b215d0568` |
| 51 | `def` | [lift](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/lift.md) | 416 | `declaration-track:5c55c4dc65e51264d4a2b9a94b4c053eb1795a8b49fa2d672c763cc6775ae31d` |
| 52 | `theorem` | [lift_apply_mk](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/lift-apply-mk.md) | 420 | `result-track:1129472fdd9485ac0dc5f22fcc0a43a4db6a7c8359dafd0c18a528c2b3571eac` |
| 53 | `theorem` | [lift_apply_inl](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/lift-apply-inl.md) | 425 | `result-track:c1fbc671989272e583923bb5c819894bf97e81eb65d0d8e56c77ec6e9d110190` |
| 54 | `theorem` | [lift_unique](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/lift-unique.md) | 429 | `result-track:a540f466ca0b717e7d3bf1d895a5ccb3ff039d8e0caf7aa1cbf241eee9756f2a` |
| 55 | `theorem` | [lift_comp_inl](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/lift-comp-inl.md) | 434 | `result-track:78c5b81190e9f8827fb6e31f4caf107368a1232b068510138d07dbf035dc3c48` |
| 56 | `theorem` | [lift_apply_inr](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/lift-apply-inr.md) | 437 | `result-track:789a891bfbf7548f40adb25cd0295dbdcdc3c9b2fd28308315817387b63356aa` |
| 57 | `theorem` | [lift_comp_inr](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/lift-comp-inr.md) | 441 | `result-track:b9a0a30e40f8e805a79fa1f5592c60c872d160d80c3107020959d5f6ab7f7ef3` |
| 58 | `theorem` | [lift_comp_swap](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/lift-comp-swap.md) | 444 | `result-track:2da0dc0b8dd5c11137e0e037fff8cccb26f546c9acc0036c8f64dda1ad6333a9` |
| 59 | `theorem` | [lift_swap](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/lift-swap.md) | 448 | `result-track:1942f064053bb2a7dc82e701151407ab4c88901279e2558bf16248d39f806af7` |
| 60 | `theorem` | [comp_lift](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/comp-lift.md) | 452 | `result-track:9f847f9531a1af8a898916182a7194ff604a89c648e9d4133ea81a52545e3f4d` |
| 61 | `def` | [liftEquiv](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/liftequiv.md) | 459 | `declaration-track:d946139b6170212c61da3552414b2287c3a6649e07af06c98fa11409f59fd1bb` |
| 62 | `theorem` | [mrange_lift](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/mrange-lift.md) | 466 | `result-track:f3d040212db74c939f38ab33040182b70b7512ad9f222027fd94d9502e02785b` |
| 63 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 476 | `declaration-track:9d65ba3bb24d0fe0b307272945dc67e2cdf390164b79d9a70f1cac4922e38e77` |
| 64 | `def` | [fst](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/fst.md) | 483 | `declaration-track:b8746e74331b3543f7f03cf6ffc0a4c7a70a11e8b98804986945682b303ee925` |
| 65 | `def` | [snd](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/snd.md) | 487 | `declaration-track:d1707f39eae390bfb27c105d6054cecd57316a99e646e0e46c96e29c92f36872` |
| 66 | `def` | [toProd](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/toprod.md) | 491 | `declaration-track:3488fbb7ae82c42b9ed126e12a46bb50bb5fd95dafd73331b22f37f79086713e` |
| 67 | `theorem` | [fst_comp_inl](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/fst-comp-inl.md) | 496 | `result-track:c97b45d95bd726d7e8c124a47a059921b379e14cd2c6df498343860a24160bf5` |
| 68 | `theorem` | [fst_apply_inl](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/fst-apply-inl.md) | 497 | `result-track:6b3336b7daa6e172bc83356b0ab3daa425f378338a358ada146d25c1310ed32e` |
| 69 | `theorem` | [fst_comp_inr](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/fst-comp-inr.md) | 498 | `result-track:16a36e0a2de90283541fff3cbc6abb232dbd33b52269b1585de4de7a4ec573ce` |
| 70 | `theorem` | [fst_apply_inr](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/fst-apply-inr.md) | 499 | `result-track:7203f09a02547aae0706a51db70a4ad471a4ee35f7afc68268bd747056f59aa2` |
| 71 | `theorem` | [snd_comp_inl](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/snd-comp-inl.md) | 500 | `result-track:d8ae323a54b7ef5758d93ff35b4a4d887673248d6ac76e67779f299c0911d813` |
| 72 | `theorem` | [snd_apply_inl](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/snd-apply-inl.md) | 501 | `result-track:65c4005baf59ddd7f9d8e8024d62a882904266d9d4e1dcbfe07d5f80b50d0aaf` |
| 73 | `theorem` | [snd_comp_inr](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/snd-comp-inr.md) | 502 | `result-track:0a6d4074254c358215a37bf664ff906a0493c69ce24f416e30295101fe3f5fff` |
| 74 | `theorem` | [snd_apply_inr](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/snd-apply-inr.md) | 503 | `result-track:12769ab3bce84a5542bb56c224302c69eb2ad289d8d12797009974652dce3a17` |
| 75 | `theorem` | [toProd_comp_inl](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/toprod-comp-inl.md) | 506 | `result-track:7f04e74177c03fe0bb7f6dc17bc644ec6f13e1813a82284ae6bfd355b012dd0b` |
| 76 | `theorem` | [toProd_comp_inr](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/toprod-comp-inr.md) | 512 | `result-track:6feb8e1336f562b8dabc736c1bfc293d7c38d23a03baae86f481dc934d4d215a` |
| 77 | `theorem` | [toProd_apply_inl](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/toprod-apply-inl.md) | 518 | `result-track:127ccedaaed083110f232eadc31e4cf494a1621fb2f5ca5eba0a2091591e9a14` |
| 78 | `theorem` | [toProd_apply_inr](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/toprod-apply-inr.md) | 524 | `result-track:c5fffdce1a2317eb1aebc441276d008c86a98cc0293b7dd2dcd130701677f2ae` |
| 79 | `theorem` | [fst_prod_snd](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/fst-prod-snd.md) | 530 | `result-track:036e76b690ea33206addb99704d3ecdcf32d5cf6b89174b66020c2981ffed78c` |
| 80 | `theorem` | [prod_mk_fst_snd](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/prod-mk-fst-snd.md) | 536 | `result-track:822307e150c4410008f71e465c4ee13c1ce3bfdbcbcdf40f4d72d8a4fc450ce8` |
| 81 | `theorem` | [fst_comp_toProd](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/fst-comp-toprod.md) | 543 | `result-track:31e0a7f81beef5b1821466391cc3c9615c6ebc717d53dd541d6100d09d201f43` |
| 82 | `theorem` | [fst_toProd](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/fst-toprod.md) | 550 | `result-track:79d77d500934480b2ff55668925fb7a125bcba5666819ba738d88b89e73a13be` |
| 83 | `theorem` | [snd_comp_toProd](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/snd-comp-toprod.md) | 557 | `result-track:b958939433b755c4d458f7e9c7e49efffc059a63778b56a07d4192c8505cf792` |
| 84 | `theorem` | [snd_toProd](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/snd-toprod.md) | 564 | `result-track:291d1b38f2bed019c18f8256d3e0c16cffad4ea9fc91fab8d793a5840355dbc1` |
| 85 | `theorem` | [fst_comp_swap](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/fst-comp-swap.md) | 571 | `result-track:1a3112fc287ee6ae209cd85c3ea01c9f7c6d6f93b36e8cd4899ac269175ce104` |
| 86 | `theorem` | [fst_swap](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/fst-swap.md) | 574 | `result-track:e0cc7743d87bd5269c5024e07ae19e441dcf9abef2067642ce9ce3f7d0e9c15a` |
| 87 | `theorem` | [snd_comp_swap](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/snd-comp-swap.md) | 577 | `result-track:96e08c78848fa1a0624f11b624203273f01844e5f7045b5861fbea3dafdde671` |
| 88 | `theorem` | [snd_swap](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/snd-swap.md) | 580 | `result-track:91dc04f3f19662adda7af8c8a18cf2619d924058dfc79cc7c3192a37332ed901` |
| 89 | `theorem` | [lift_inr_inl](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/lift-inr-inl.md) | 583 | `result-track:c83fe99dcbea3176644f61ca6f64fdc5a509f48c1f12bf8b1ebe7ebb778bfe42` |
| 90 | `theorem` | [lift_inl_inr](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/lift-inl-inr.md) | 586 | `result-track:c619b687cf8251821fbfd440c69f3f4ff163a0ce02fe372c67f5cb89d8de40a1` |
| 91 | `theorem` | [inl_injective](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/inl-injective.md) | 589 | `result-track:c5c0a193ea6ed5ed66e99d2d5bb4c07ab567dd23a41601076d7d8a231e0bb460` |
| 92 | `theorem` | [inr_injective](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/inr-injective.md) | 592 | `result-track:a8ae583712f43411793ec4275f4b2b6f9d0d8e7ca876c35d309afcd34aebcd84` |
| 93 | `theorem` | [fst_surjective](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/fst-surjective.md) | 595 | `result-track:facfe78d8d2e5efba4cbc7acee79be7be46db47fe1aff058dd1c2d57fb691fa1` |
| 94 | `theorem` | [snd_surjective](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/snd-surjective.md) | 598 | `result-track:c1e7c279b3fd3208da45d3d415486fa500fe90dc58a8e4b40f4cdb6424929c1d` |
| 95 | `theorem` | [toProd_surjective](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/toprod-surjective.md) | 601 | `result-track:7135cfe5c6c21d837a9557070743ed681968ac029513638bba8f269b1ebc6823` |
| 96 | `theorem` | [mk_of_inv_mul](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/mk-of-inv-mul.md) | 614 | `result-track:36a5f8cf15a11c11dd042d44c7551fc03c932123a665d019add4e98b2883da45` |
| 97 | `theorem` | [con_inv_mul_cancel](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/con-inv-mul-cancel.md) | 619 | `result-track:7fffe787e643ef9538471771ccf5e7bfce259a117d27b2926a32189e563e36dc` |
| 98 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 629 | `declaration-track:5e668f9f6b203684a8c64aee759cd80f747479bf196c9c17afa08120f8d56744` |
| 99 | `theorem` | [inv_def](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/inv-def.md) | 634 | `result-track:0a5350dde9856e61eb336f243915a304aefe3dd6c7243821e594c416b80139f3` |
| 100 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 639 | `declaration-track:8f7f5fe4552de3c37216f3a661d37ebdf51990096b25439818daae894a74fa6e` |
| 101 | `theorem` | [closure_range_inl_union_inr](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/closure-range-inl-union-inr.md) | 643 | `result-track:dad60cea26993563721398b94194cb67912de79568a466ded2527b745d7f3c72` |
| 102 | `theorem` | [range_inl_sup_range_inr](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/range-inl-sup-range-inr.md) | 647 | `result-track:ed5f3ce0120a32d2247eec6fc68357e93ca9df96716a9d72d909101cf905a8cd` |
| 103 | `theorem` | [codisjoint_range_inl_range_inr](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/codisjoint-range-inl-range-inr.md) | 653 | `result-track:6431c2a6cbfd34ead3b42cc253706a7013ad4c6e2c162908b041118befcb2f01` |
| 104 | `theorem` | [range_swap](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/range-swap.md) | 657 | `result-track:2352413bb18a8dbc07dbefdeee5cd5f19dc9a94c951484d7d1ac53ea24f32c45` |
| 105 | `theorem` | [range_eq](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/range-eq.md) | 662 | `result-track:7f5e61d967e9db90ecb7edece625a52d1dd34f13f77eccf49296254ef46fafbb` |
| 106 | `theorem` | [range_lift](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/range-lift.md) | 667 | `result-track:4bc3b96be70dbdfbfdce7a828de5c359c659fa81c95336b7e7dfff849e1fb7db` |
| 107 | `def` | [coprodCongr](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/coprodcongr.md) | 689 | `declaration-track:74dc7663dd5f469b466d4dbecd5a6feea69b82a5954c8282440eb12b538cea6b` |
| 108 | `def` | [coprodComm](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/coprodcomm.md) | 698 | `declaration-track:ebe01eb0b16c239169e23be97913bd24c3ccd6ab20df47d485477f133bb3133e` |
| 109 | `def` | [coprodAssoc](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/coprodassoc.md) | 709 | `declaration-track:4d5d1f537dcb027091c41924a8d36eb8e47bd5d03fb0d7d39a5046bf38ad71fc` |
| 110 | `theorem` | [coprodAssoc_apply_inl_inl](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/coprodassoc-apply-inl-inl.md) | 718 | `result-track:1a8b301ad4fdeec15e627927bd2b13f7d897910d6a79aed004d2cbf2e05aae27` |
| 111 | `theorem` | [coprodAssoc_apply_inl_inr](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/coprodassoc-apply-inl-inr.md) | 721 | `result-track:9f917f57d8392ec9424d5eb1e6863dfe21087d13d80665bbffa3390ae695684b` |
| 112 | `theorem` | [coprodAssoc_apply_inr](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/coprodassoc-apply-inr.md) | 724 | `result-track:4cbbae31d57314da4b38f71063443dddd3a6abb5af20187edbca6eb3d441eacb` |
| 113 | `theorem` | [coprodAssoc_symm_apply_inl](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/coprodassoc-symm-apply-inl.md) | 727 | `result-track:a940e6cf50e2fd081e306daee0b580976a69565be261b5b1d43c0e499af4da5c` |
| 114 | `theorem` | [coprodAssoc_symm_apply_inr_inl](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/coprodassoc-symm-apply-inr-inl.md) | 731 | `result-track:776b3df3cf9e74004a6ee7197916f4ed53c506988feab2a0e261b0fd65128ac6` |
| 115 | `theorem` | [coprodAssoc_symm_apply_inr_inr](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/coprodassoc-symm-apply-inr-inr.md) | 736 | `result-track:ca1433b3ccdc30e48156ba7e1fc4365c790d959a68bf04c10490b43e819f525f` |
| 116 | `def` | [coprodPUnit](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/coprodpunit.md) | 744 | `declaration-track:40234a7c24847b937718eb706fbd74bcb207acc314ead79561e0c07736e78a01` |
| 117 | `def` | [punitCoprod](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/punitcoprod-source-edition-2.md) | 749 | `declaration-track:b2cf6f8732c5c9ff6b34d100f6b8ae93f9b333a21995a4c3ced5928e1c4948b9` |
| 118 | `def` | [coprodUnit](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/coprodunit.md) | 762 | `declaration-track:77c8f540daeee7b53d53fae08b5d1503e7ce089439e95e2304bfd0704ff9674b` |
| 119 | `def` | [punitCoprod](../../../../GroupTheoryAndGeneralizations/CoprodBasicNamespaced.lean/declarations/punitcoprod.md) | 768 | `declaration-track:0308b02a98debe3558edec486bbf3cbdb994941c1d993e8571efa331f0aade42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e0037c004fe05512959c64b60259503e4c5e6259c43e3c235dd010e702f18345 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variant8d1852bf12eb6e7500f720378b396b84670850f04be8b8ff3d385a935165e6d5.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variant8d1852bf12eb6e7500f720378b396b84670850f04be8b8ff3d385a935165e6d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
