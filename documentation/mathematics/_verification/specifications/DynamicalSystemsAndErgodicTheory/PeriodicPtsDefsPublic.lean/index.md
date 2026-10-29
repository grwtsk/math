# Verification target: Periodic Pts Defs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b13c026e181e32b56f3830e702caf85c1548fa82",
  "lexical_observation_count": 105,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant826bd443e316adf818734bb47a1353b6eedf0b14ff7278c61440013b635746e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/index.md) · [Full source](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b13c026e181e32b56f3830e702caf85c1548fa82`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant826bd443e316adf818734bb47a1353b6eedf0b14ff7278c61440013b635746e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant826bd443e316adf818734bb47a1353b6eedf0b14ff7278c61440013b635746e4.lean.json)

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
| 1 | `def` | [IsPeriodicPt](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/isperiodicpt.md) | 62 | `declaration-track:acd92f616f20b171d06a4ab27594bf9a66c4036396b3d56039eee2edd7990bd3` |
| 2 | `theorem` | [IsFixedPt.isPeriodicPt](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/isfixedpt-isperiodicpt.md) | 66 | `result-track:8bfa1743e43d36429e95e5d39c5d3a00689b6d97e240dc2f44752b6767b0bf90` |
| 3 | `theorem` | [is_periodic_id](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/is-periodic-id.md) | 70 | `result-track:ab80d7a07a66b01e12c7d5a7a74f6fa0ee757b8e4b005a2b9e755aed9d6c5cbd` |
| 4 | `theorem` | [isPeriodicPt_zero](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/isperiodicpt-zero.md) | 74 | `result-track:7218a61dadd23dee1d5e8e7bd2dfe48e7853669455d65c16b274593284dfcda4` |
| 5 | `theorem` | [of_subsingleton](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/of-subsingleton.md) | 80 | `result-track:e4356e3205ba6d0b7a17128c19faf4658ae97d35f99a98630ec6e0a175aef75f` |
| 6 | `instance` | [(anonymous)](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/instance.md) | 83 | `declaration-track:b514394939258798696f913d9894de2742adb01e0a0153982f24b27a0fe3d1f5` |
| 7 | `theorem` | [isFixedPt](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/isfixedpt.md) | 86 | `result-track:7eb9701037afaa40d945056810bd8e8c54da66ca0d02f278a513c25e154d3bd6` |
| 8 | `theorem` | [map](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/map.md) | 89 | `result-track:bfdc4ea888ff3dbc157907a54d19abc438895baf8a4982c7c32efde97808176a` |
| 9 | `theorem` | [apply_iterate](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/apply-iterate.md) | 93 | `result-track:7b3fe794a9546ea07f50e5103914f8b41c2b9d73ee9ebceed2fb82f5a34ff87f` |
| 10 | `theorem` | [apply](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/apply.md) | 96 | `result-track:8b2799e4be2dc8137b4ee99bca89b586b12edb9fe60563701c4eda135d66e86c` |
| 11 | `theorem` | [add](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/add.md) | 99 | `result-track:96cf91acbaa23bdbf81c18a2237f3acb51fc123c23df3f2c40091f5f48287726` |
| 12 | `theorem` | [left_of_add](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/left-of-add.md) | 104 | `result-track:adba2e98397f04053f358b07a7633a5318dc412c36feff65a9b4c3b25af239b1` |
| 13 | `theorem` | [right_of_add](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/right-of-add.md) | 109 | `result-track:cab412a274eda230440a8ad36d8954122a3edab3736fbbc7816aa32889512bad` |
| 14 | `theorem` | [sub](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/sub.md) | 114 | `result-track:aa9c2a32d01e48cec273a4c3288fc144e3f2b7ad085625f8d2d9ff1e7eba19c3` |
| 15 | `theorem` | [mul_const](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/mul-const.md) | 122 | `result-track:8d07da0bc3443076a2e03a3b2c82a699d07aa0f51cb2fc17cdd35655963710c4` |
| 16 | `theorem` | [const_mul](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/const-mul.md) | 125 | `result-track:4f0218bbaf8b1d8b15e2293460d3323cde4e97fe1d050028af64b5167ce1e565` |
| 17 | `theorem` | [trans_dvd](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/trans-dvd.md) | 128 | `result-track:ca2a11489ca76db61e1414727fdc8f36cebf12f10d9440ffc1e651f6a10add7b` |
| 18 | `theorem` | [iterate](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/iterate.md) | 132 | `result-track:b4fbb111131ff2ec7e7e3eaa5f28bf30c28afbab0ecef66e11cb5c45fa1bd418` |
| 19 | `theorem` | [comp](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/comp.md) | 136 | `result-track:f99b751ab491a5db57795b9b460c72c01c50a1784d4acbfd18de3bf69695cb7f` |
| 20 | `theorem` | [comp_lcm](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/comp-lcm.md) | 141 | `result-track:2a8f5119fa34e3fa9a80a9f40c825a9be5ec579777108e66f893aac787a561ff` |
| 21 | `theorem` | [left_of_comp](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/left-of-comp.md) | 145 | `result-track:9cabaad4e42febf8e4365d4b90df3e7264f97e7f5138c4a792ff2ab3a90036df` |
| 22 | `theorem` | [iterate_mod_apply](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/iterate-mod-apply.md) | 150 | `result-track:bf0d6c5f96e5bf958723e2465b9eb15b3a4ce98855e920fe7d721c312db55ac3` |
| 23 | `theorem` | [mod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/mod.md) | 153 | `result-track:8d12f1370160a0a0a7d41ed064f29206cfaee333a9ed62781b8fb74022cd050a` |
| 24 | `theorem` | [gcd](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/gcd.md) | 157 | `result-track:452ec8af8e95873d60099b7c975924c330401c8c366f8316a6ad7b6bfede50db` |
| 25 | `theorem` | [eq_of_apply_eq_same](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/eq-of-apply-eq-same.md) | 167 | `result-track:c796ba1f80f7414a26921c9e80995ec032f712a2c6c424f75a37ba469c16ef03` |
| 26 | `theorem` | [eq_of_apply_eq](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/eq-of-apply-eq.md) | 173 | `result-track:5968633f04851e5b00453c63e1d487398e6b5244b5e311b8b0cb1b44679d20b0` |
| 27 | `def` | [ptsOfPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/ptsofperiod.md) | 180 | `declaration-track:7d6db0067ba694ea50d63c036cc8bac5ec646551e0bd2b636b34137524eca6ef` |
| 28 | `theorem` | [mem_ptsOfPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/mem-ptsofperiod.md) | 184 | `result-track:07df1e3e9a4d06836436e2f707b9f7a5837dccb32eb9cbc14bed5f58c6907896` |
| 29 | `theorem` | [Semiconj.mapsTo_ptsOfPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/semiconj-mapsto-ptsofperiod.md) | 187 | `result-track:17ab5a864f6bf49610052f95c4f92e37cf770b8763ee209ebff88f4c2530a912` |
| 30 | `theorem` | [bijOn_ptsOfPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/bijon-ptsofperiod.md) | 191 | `result-track:225dd3ecd43a3e47e796699ed43edb87b2cac41a46cb65093591290d4b813c6f` |
| 31 | `def` | [periodicPts](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/periodicpts.md) | 199 | `declaration-track:fda9bd5a3a9f63e105831ea360043f1e6dd1f6670d9ff3c5b45ee5b6a296fbd5` |
| 32 | `theorem` | [mk_mem_periodicPts](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/mk-mem-periodicpts.md) | 202 | `result-track:ba1e11f63201add6cfaf54a603df0143306c886aac5f5fe62ff46ace8c1c8a32` |
| 33 | `theorem` | [mem_periodicPts](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/mem-periodicpts.md) | 205 | `result-track:9060466e758f6584c4afcfc3ee4b8e8f7ad2c0f93ac543fda92bb57cdd56ef4e` |
| 34 | `theorem` | [periodicPts_subset_range](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/periodicpts-subset-range.md) | 208 | `result-track:98c11d34c64e6083d36e0e0a14d98d58fcfc2865fbfeb9379df3a5aeda87d11a` |
| 35 | `theorem` | [isPeriodicPt_of_mem_periodicPts_of_isPeriodicPt_iterate](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/isperiodicpt-of-mem-periodicpts-of-isperiodicpt-iterate.md) | 217 | `result-track:b99aa89beea418f0de31caa6ce31b79323371743d28a5b86ff1a025a6a722e45` |
| 36 | `theorem` | [bUnion_ptsOfPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/bunion-ptsofperiod.md) | 229 | `result-track:7e48b3c8a41a8be8983ba15de570db41d928838f8bc87c8c9235baef8dd1d61c` |
| 37 | `theorem` | [iUnion_pnat_ptsOfPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/iunion-pnat-ptsofperiod.md) | 232 | `result-track:9d25f5fb120e2b5ba0d0ea7527ff09c5a9057712c6bcc6b7fa342cc26428e0e2` |
| 38 | `theorem` | [Semiconj.mapsTo_periodicPts](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/semiconj-mapsto-periodicpts.md) | 237 | `result-track:a4333f29ebd2fc0d0a1b95cfec97ee88c26aa5d2f09387078b55158d61815377` |
| 39 | `def` | [minimalPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/minimalperiod.md) | 245 | `declaration-track:47fbff4370026907331e50aaeb4dbe74afad407f60a94175da7efe6f7d333843` |
| 40 | `theorem` | [isPeriodicPt_minimalPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/isperiodicpt-minimalperiod.md) | 248 | `result-track:a28486287afacb6298c7e34ae846271a05e6ca7d95c18e5764bbbff980b30ede` |
| 41 | `theorem` | [iterate_minimalPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/iterate-minimalperiod.md) | 256 | `result-track:0350f63837067e64397e8963489960fa89377576c3101b4fff1eadbc6d1632b1` |
| 42 | `theorem` | [iterate_add_minimalPeriod_eq](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/iterate-add-minimalperiod-eq.md) | 260 | `result-track:51b0012ecca27479447d1a24ff2b7c902f3463a948884bb8f2365a381bea812e` |
| 43 | `theorem` | [iterate_mod_minimalPeriod_eq](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/iterate-mod-minimalperiod-eq.md) | 266 | `result-track:d0e2e10fafae03165dd74192e99c81255985521d8fc243aa84cadfa6d788c932` |
| 44 | `theorem` | [minimalPeriod_pos_of_mem_periodicPts](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/minimalperiod-pos-of-mem-periodicpts.md) | 269 | `result-track:a2919d97447355e22de85d0cfd3dd11bde5ca66273a5f422d90deaef11152bc1` |
| 45 | `theorem` | [minimalPeriod_eq_zero_of_notMem_periodicPts](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/minimalperiod-eq-zero-of-notmem-periodicpts.md) | 273 | `result-track:23a63435821d5849534c6f3a335aedf186506a6b66737758838f131cc1400938` |
| 46 | `theorem` | [IsPeriodicPt.minimalPeriod_pos](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/isperiodicpt-minimalperiod-pos.md) | 276 | `result-track:da7da90c6b61cd5f55a3dd46b925476f894715efa85093825e21d353f77c08a2` |
| 47 | `theorem` | [minimalPeriod_pos_iff_mem_periodicPts](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/minimalperiod-pos-iff-mem-periodicpts.md) | 280 | `result-track:a2de97234c42f1a817fefa94c8c89909db958d1fbd3e05e000aaa738646af0ea` |
| 48 | `theorem` | [minimalPeriod_eq_zero_iff_notMem_periodicPts](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/minimalperiod-eq-zero-iff-notmem-periodicpts.md) | 284 | `result-track:e60f4aac2ca88edc23482e7835b5c5039907a8456414b1d5b132cf1a7920c8aa` |
| 49 | `theorem` | [IsPeriodicPt.minimalPeriod_le](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/isperiodicpt-minimalperiod-le.md) | 288 | `result-track:dfcbafe37c0877c183dde72329a41dea5b6ccdbd016a56db321b6d0ebffc87f7` |
| 50 | `theorem` | [minimalPeriod_apply_iterate](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/minimalperiod-apply-iterate.md) | 294 | `result-track:70c7696e6f9a152b90fda9c8e5ea8dad704224f34ec8f34692e618c61d0da089` |
| 51 | `theorem` | [minimalPeriod_apply](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/minimalperiod-apply.md) | 305 | `result-track:432e3d649b566c6ace3e5a566e8e4a346797feb3eb394217d6f4ca7175b9f6d7` |
| 52 | `theorem` | [le_of_lt_minimalPeriod_of_iterate_eq](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/le-of-lt-minimalperiod-of-iterate-eq.md) | 308 | `result-track:2f4177664887ca37a0a526d2231582adb39db07814c66a83435c1a750c024efd` |
| 53 | `theorem` | [iterate_injOn_Iio_minimalPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/iterate-injon-iio-minimalperiod.md) | 316 | `result-track:7d15c5f6aa143ea922de403af34945a5eb6fc13f0cf159d23cbd62496e9c0913` |
| 54 | `theorem` | [iterate_eq_iterate_iff_of_lt_minimalPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/iterate-eq-iterate-iff-of-lt-minimalperiod.md) | 320 | `result-track:bd2504e7bffcc1477f3e5a1c2a74274e2b1bad9e960dcab5734bde1cea5bf0fd` |
| 55 | `theorem` | [minimalPeriod_id](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/minimalperiod-id.md) | 324 | `result-track:4be7f07c2250981b74a3a25192a9e368e33db94f5e07c5c86307dfc36d9c2759` |
| 56 | `theorem` | [minimalPeriod_eq_one_iff_isFixedPt](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/minimalperiod-eq-one-iff-isfixedpt.md) | 329 | `result-track:1c71867c39f67e197481f06b3a4fd6c91742155fddcd7235701ee78bef8b2a04` |
| 57 | `theorem` | [minimalPeriod_eq_one_of_subsingleton](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/minimalperiod-eq-one-of-subsingleton.md) | 340 | `result-track:5b84e6a48cf20fe7f885c5c1ae9f63c91909dba6c513d3bc55aa4ea69a1990ee` |
| 58 | `theorem` | [IsPeriodicPt.eq_zero_of_lt_minimalPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/isperiodicpt-eq-zero-of-lt-minimalperiod.md) | 343 | `result-track:639f7787199dd0a31aae080787c6c43b58757bdb6200dd2589c2c4d1121cec22` |
| 59 | `theorem` | [not_isPeriodicPt_of_pos_of_lt_minimalPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/not-isperiodicpt-of-pos-of-lt-minimalperiod.md) | 348 | `result-track:8a0f3539230815f045c2ab0aac8e56299514dcd25648e18b213bb04fdbfd2451` |
| 60 | `theorem` | [IsPeriodicPt.minimalPeriod_dvd](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/isperiodicpt-minimalperiod-dvd.md) | 353 | `result-track:9054f312caa43ffb534aa3ab8dae75cc4cc1ab1522414884bba3a9103835e533` |
| 61 | `theorem` | [isPeriodicPt_iff_minimalPeriod_dvd](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/isperiodicpt-iff-minimalperiod-dvd.md) | 359 | `result-track:a9392adee2a3f5a052943d8213487bdffaed250d3abd869d046970c4a8d9aba8` |
| 62 | `theorem` | [minimalPeriod_eq_minimalPeriod_iff](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/minimalperiod-eq-minimalperiod-iff.md) | 364 | `result-track:6629347d39b5a51ecf05482e2c2e52f38fbcee89758c52b75582cb1c316e0eba` |
| 63 | `theorem` | [Commute.minimalPeriod_of_comp_dvd_lcm](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/commute-minimalperiod-of-comp-dvd-lcm.md) | 368 | `result-track:91deb273d11482bcf3c533761b49614834822d0432abb832e86f220458524140` |
| 64 | `theorem` | [minimalPeriod_iterate_eq_div_gcd_aux](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/minimalperiod-iterate-eq-div-gcd-aux.md) | 373 | `result-track:e0f8eed71bc017e7fcd8027113b5adc5e242913fd3a38144bcc59e4b1daf535a` |
| 65 | `theorem` | [minimalPeriod_iterate_eq_div_gcd](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/minimalperiod-iterate-eq-div-gcd-source-edition-2.md) | 388 | `result-track:411527e1e28554263531f8007eb52b9ca5ef5b4079dacaf2068277a086b0e10a` |
| 66 | `theorem` | [minimalPeriod_iterate_eq_div_gcd'](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/minimalperiod-iterate-eq-div-gcd.md) | 392 | `result-track:19a3f873b72951f90441fd7007191836f48111875bdd001a706473848833d0aa` |
| 67 | `def` | [periodicOrbit](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/periodicorbit.md) | 401 | `declaration-track:be047130455b9c9791108b06d1abdeef27aa3de3b4891cd6c0cf3c0076df4196` |
| 68 | `theorem` | [periodicOrbit_def](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/periodicorbit-def.md) | 405 | `result-track:9dadfbe97c57c9f9232f0db2389ea6ea982dd341e0a7b29efd560dd446f43b3e` |
| 69 | `theorem` | [periodicOrbit_eq_cycle_map](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/periodicorbit-eq-cycle-map.md) | 410 | `result-track:72dd56db340ef901997c1852dd5e6e9bbdb0d47dc10592a4a20031731f287a18` |
| 70 | `theorem` | [periodicOrbit_length](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/periodicorbit-length.md) | 415 | `result-track:cc714905114a97c392ef3671e6a7ecf4f6e2fb3f7495dbd3173e7aefa0e62e68` |
| 71 | `theorem` | [periodicOrbit_eq_nil_iff_not_periodic_pt](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/periodicorbit-eq-nil-iff-not-periodic-pt.md) | 419 | `result-track:22c411ef2e9876a9c45b388c3e3dc509248d9d9f7f2229a146a8dc8a5aefd9f2` |
| 72 | `theorem` | [periodicOrbit_eq_nil_of_not_periodic_pt](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/periodicorbit-eq-nil-of-not-periodic-pt.md) | 424 | `result-track:d63d9ac6966c4c600fb4a2a600a5198734e872125734a58e09145ffbe9e83178` |
| 73 | `theorem` | [mem_periodicOrbit_iff](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/mem-periodicorbit-iff.md) | 429 | `result-track:34973bb6b803befed1452222f0181345219136b1d1d30973ae7ec30955fce8c6` |
| 74 | `theorem` | [iterate_mem_periodicOrbit](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/iterate-mem-periodicorbit.md) | 437 | `result-track:0e38384c5d3e771e61b8de43dc8a53d0f4cf94232a547d01106858e2936c43f4` |
| 75 | `theorem` | [exists_iterate_apply_eq_of_mem_periodicPts](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/exists-iterate-apply-eq-of-mem-periodicpts.md) | 442 | `result-track:7429c07601a89e76050955b45b9296c0a2043b47cfe0549c4b95c6da834167d2` |
| 76 | `theorem` | [self_mem_periodicOrbit](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/self-mem-periodicorbit.md) | 445 | `result-track:8401ef094650e067d65c7f4f162bef38a1bfe1591c01115906788e78bb691f5d` |
| 77 | `theorem` | [nodup_periodicOrbit](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/nodup-periodicorbit.md) | 448 | `result-track:316ec7b4656453468d8e01b84650d311e73a3a0f2ce567d08c30ebd7e4a29533` |
| 78 | `theorem` | [periodicOrbit_apply_iterate_eq](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/periodicorbit-apply-iterate-eq.md) | 454 | `result-track:7d38f02792068dbf9531f95d697da047af2c9183064b1fc1ba3792f9043aa01f` |
| 79 | `theorem` | [periodicOrbit_apply_eq](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/periodicorbit-apply-eq.md) | 460 | `result-track:a07877b28f46cd31681d96f6afb8116b650c93ff4ac84430bc385e9afe61292b` |
| 80 | `theorem` | [periodicOrbit_chain](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/periodicorbit-chain.md) | 464 | `result-track:5249e4e2b5b27c143b674e103ea85d6b28160923f09c45d49dea0e9c8230fd31` |
| 81 | `theorem` | [periodicOrbit_chain'](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/periodicorbit-chain-source-edition-2.md) | 482 | `result-track:c1a0f98977b51179358e29a9e1a2c450b959c823562a802acef5c2900ee1a090` |
| 82 | `theorem` | [isFixedPt_prodMap](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/isfixedpt-prodmap.md) | 501 | `result-track:69e3b97e567b248f37c3f5212e2d1033155654063db0d0fbc0837163677a463b` |
| 83 | `theorem` | [IsFixedPt.prodMap](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/isfixedpt-prodmap-source-edition-2.md) | 505 | `result-track:f640b7a2dfae21be937d646ff21dc60b1633d533aa8d57374b3d0eff517ab9de` |
| 84 | `theorem` | [isPeriodicPt_prodMap](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/isperiodicpt-prodmap.md) | 510 | `result-track:4971aa08e898c84f6b76f4c74aaa0563d83125a6c24b173051e1601b470698f5` |
| 85 | `theorem` | [IsPeriodicPt.prodMap](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/isperiodicpt-prodmap-source-edition-2.md) | 514 | `result-track:b842b43b59ea1ad8d04b3286772f19530ee4d07c57dbc6c29102b850fb6c961c` |
| 86 | `theorem` | [isFixedPt_piMap](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/isfixedpt-pimap.md) | 525 | `result-track:2b7f624fe211b3ff31ba1561dfe5b24f35e7563d88ef61f19b7e544cee461da3` |
| 87 | `theorem` | [IsFixedPt.piMap](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/isfixedpt-pimap-source-edition-2.md) | 528 | `result-track:55e07eb61ce098dbf9acf8b4c3f9b42e2712f41a1378e0621c47912593a13218` |
| 88 | `theorem` | [isPeriodicPt_piMap](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/isperiodicpt-pimap.md) | 532 | `result-track:3e31db2aed34ec55578e1462731b3944669db5d8e742cd1bff5cebcdf315a964` |
| 89 | `theorem` | [IsPeriodicPt.piMap](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/isperiodicpt-pimap-source-edition-2.md) | 535 | `result-track:c34fb4612b378947f11aa59567153e4187d823515886463d0aab6f6e9178eeee` |
| 90 | `def` | [period](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/period.md) | 557 | `declaration-track:8a3028b94142be71382808d52110d9c7d59ece38ade16b25d6c9cee273493810` |
| 91 | `theorem` | [period_eq_minimalPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/period-eq-minimalperiod.md) | 562 | `result-track:921ba4622aeb7d22cb93ca1a7d0a10fbb47965af770413511795e78ba677215f` |
| 92 | `theorem` | [pow_period_smul](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/pow-period-smul.md) | 567 | `result-track:3021b2c32e75151e51516dc43dd2bc6669ae7063fcde626f01d95531c160b401` |
| 93 | `lemma` | [isPeriodicPt_smul_iff](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/isperiodicpt-smul-iff.md) | 571 | `result-track:195d0f7ae287e1c0c1de0f24d5a1a255ceb8543d16dfe7f60971bb2a6c7616e3` |
| 94 | `theorem` | [pow_smul_eq_iff_period_dvd](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/pow-smul-eq-iff-period-dvd.md) | 584 | `result-track:67fab217b5ea8457e21113cfc4376f6bd39dfe00fd4cbe08515680a84cbd3646` |
| 95 | `theorem` | [zpow_smul_eq_iff_period_dvd](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/zpow-smul-eq-iff-period-dvd.md) | 589 | `result-track:30f509768575beb10491bce0df526aff90c3622955e2774e00b99944e2cd5135` |
| 96 | `theorem` | [pow_mod_period_smul](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/pow-mod-period-smul.md) | 598 | `result-track:0a64304bf7c92dae6ef4d714d6d0743a76a673f6a6ae3456b43af526a08641d0` |
| 97 | `theorem` | [zpow_mod_period_smul](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/zpow-mod-period-smul.md) | 604 | `result-track:01be43091583d9f23b1fe955737851706ec35748c3dca4316f3de50b069c7058` |
| 98 | `theorem` | [pow_add_period_smul](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/pow-add-period-smul.md) | 610 | `result-track:78a31ef905daaf9bbe0ad6cffd20b01ca4beeba45cf3317da66878c053075c9b` |
| 99 | `theorem` | [pow_period_add_smul](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/pow-period-add-smul.md) | 615 | `result-track:d08b869718411ff244f61df82e4e44fad057eb9fcee775551178db9ecef77aed` |
| 100 | `theorem` | [zpow_add_period_smul](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/zpow-add-period-smul.md) | 620 | `result-track:15781e4387b5608d9546b7edc1973d6d2a59c1742c3a8a5f02a7c5c5bf0817a3` |
| 101 | `theorem` | [zpow_period_add_smul](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/zpow-period-add-smul.md) | 625 | `result-track:a9326b8b0b49fc4b0f0ee2b0a1c34fdc283bddc670b05597a100436ff16fe9a8` |
| 102 | `theorem` | [pow_smul_eq_iff_minimalPeriod_dvd](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/pow-smul-eq-iff-minimalperiod-dvd.md) | 632 | `result-track:42389c154b129cce1d783ce99af6ee5ee0392753cf4c9e14cb6f575860ae2fb7` |
| 103 | `theorem` | [zpow_smul_eq_iff_minimalPeriod_dvd](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/zpow-smul-eq-iff-minimalperiod-dvd.md) | 637 | `result-track:5805adbbbef0f2563789bd550e7f8ad2a6ac11de05c8ac420a875fd87e885576` |
| 104 | `theorem` | [pow_smul_mod_minimalPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/pow-smul-mod-minimalperiod.md) | 644 | `result-track:43e0bcdf6839ff15c73ed8df80faeddf99655424c94ec7b4d80467416436cacb` |
| 105 | `theorem` | [zpow_smul_mod_minimalPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefsPublic.lean/declarations/zpow-smul-mod-minimalperiod.md) | 649 | `result-track:8f31baecb1b895af2d7a76121430e00308ef525b32ca3e6c5cd80715c6f9784d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f4307a99d7b08dce5479fb2acb2caccf97675c45ea2027b56f112be8faef40e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant826bd443e316adf818734bb47a1353b6eedf0b14ff7278c61440013b635746e4.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant826bd443e316adf818734bb47a1353b6eedf0b14ff7278c61440013b635746e4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
