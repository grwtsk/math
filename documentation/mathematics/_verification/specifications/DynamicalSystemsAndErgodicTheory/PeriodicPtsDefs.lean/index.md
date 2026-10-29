# Verification target: Periodic Pts Defs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd1c2d8a6ebc024ed0dffa7e2c64c6fbb51d6a7b",
  "lexical_observation_count": 99,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d902f6b2ea44bfeefc75c91b12bb1930edeb4cc1abfcfde88cc869715ab17dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/index.md) · [Full source](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd1c2d8a6ebc024ed0dffa7e2c64c6fbb51d6a7b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d902f6b2ea44bfeefc75c91b12bb1930edeb4cc1abfcfde88cc869715ab17dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d902f6b2ea44bfeefc75c91b12bb1930edeb4cc1abfcfde88cc869715ab17dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.Nat.Gcd` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Nat` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Sub.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Cycle` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Notation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.FixedPoints.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPeriodicPt](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/isperiodicpt.md) | 60 | `declaration-track:fe2a18ec4f77c86a93e613986f1e1f64d3b3b348cdd008bdf94e3dc51cf9be5a` |
| 2 | `theorem` | [IsFixedPt.isPeriodicPt](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/isfixedpt-isperiodicpt.md) | 64 | `result-track:604e5024e45698017446add5e9f5dc3e4a6f57f5128d9d27ff3bebee9efb6ab9` |
| 3 | `theorem` | [is_periodic_id](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/is-periodic-id.md) | 68 | `result-track:4a607de153e7271155b95e71911c4b19a9d69af67488f4327f239a7057b1f258` |
| 4 | `theorem` | [isPeriodicPt_zero](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/isperiodicpt-zero.md) | 72 | `result-track:b8359f29e9d1d4d02ad5a867a7568fea498b15a7aea7ea42f020537f68341111` |
| 5 | `instance` | [(anonymous)](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/instance.md) | 77 | `declaration-track:14fa9160aef2143be1feda0cad37674efa1630a863dc49d09e1ef53bb9ed52db` |
| 6 | `theorem` | [isFixedPt](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/isfixedpt.md) | 80 | `result-track:ec1bad1402f034442edb529c3bde778cbe1f91065314900fa2f3fb4284a9607d` |
| 7 | `theorem` | [map](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/map.md) | 83 | `result-track:57e2b922682b10924e39d14ad64782eadb53e2f8ad91e6d384e732e7d9ada47c` |
| 8 | `theorem` | [apply_iterate](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/apply-iterate.md) | 87 | `result-track:d606c7e5bf0d2a69b6100330ee17a8b22c720e72c91879e02dcd82921c7d123f` |
| 9 | `theorem` | [apply](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/apply.md) | 90 | `result-track:a159c63460bb1c95dc4279130489562f8f9b90769c848f7c9d1b4f0a654b32f4` |
| 10 | `theorem` | [add](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/add.md) | 93 | `result-track:ae97059e0cfca73735ffb70d11f78d4df11e0bcc4570d1eb7eb0e2719b56ad06` |
| 11 | `theorem` | [left_of_add](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/left-of-add.md) | 98 | `result-track:899046b015511af528b478707a3f736a4497d6d207445a272dec720cb71080c1` |
| 12 | `theorem` | [right_of_add](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/right-of-add.md) | 103 | `result-track:3194122abd37264f0ee65a570ba6644393291cb73b3ac604692e841fe2c526d7` |
| 13 | `theorem` | [sub](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/sub.md) | 108 | `result-track:fd1e937ec9bdd49294f233c4dcceaa5e1b5f73994c7ce212d8b4d5a9f6113e12` |
| 14 | `theorem` | [mul_const](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/mul-const.md) | 116 | `result-track:01a6b87ab4031be02f7e02932bb3d27c1c48118a57b1786cc83f4b73eb81104d` |
| 15 | `theorem` | [const_mul](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/const-mul.md) | 119 | `result-track:42714ee3ff59ad70899823a5a29dcbeecd9b20496bcd948d73b4d6cd8c8a73bd` |
| 16 | `theorem` | [trans_dvd](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/trans-dvd.md) | 122 | `result-track:225c6a7e940a52950e8f57dca645e5a6b0889751aa297eeba49a72dab1080c88` |
| 17 | `theorem` | [iterate](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/iterate.md) | 126 | `result-track:89b5e7704c81daeff3fc42ec1de765724fdb01dc81af6227a7a13c6f8c284d8b` |
| 18 | `theorem` | [comp](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/comp.md) | 130 | `result-track:550eef55ccf997a23be72cead4892962d2ff44eaadf5c92cfc14c325a1287014` |
| 19 | `theorem` | [comp_lcm](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/comp-lcm.md) | 135 | `result-track:660d1e860d4e5a60bd58353a6cc290a1d29619c18aabe14993a2123819fb5cc9` |
| 20 | `theorem` | [left_of_comp](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/left-of-comp.md) | 139 | `result-track:133feac749d39bcc5aa8f26c9ce70ba0c6d82e04dbf42315fd0e64d5c73c3e48` |
| 21 | `theorem` | [iterate_mod_apply](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/iterate-mod-apply.md) | 144 | `result-track:d53b4c1e561dc517740bdcfed56711eb19512a21ae9a054ebe4ab9f462839d55` |
| 22 | `theorem` | [mod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/mod.md) | 147 | `result-track:89a5fcf0fe85182e13019818add661a3cb9a66d51bd76d3d83a027ae9e0db468` |
| 23 | `theorem` | [gcd](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/gcd.md) | 151 | `result-track:e106951356855f3ed620c366bdff49b712df7eb0eed27ad140940e43895b0897` |
| 24 | `theorem` | [eq_of_apply_eq_same](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/eq-of-apply-eq-same.md) | 161 | `result-track:67553cab4c462eeec7053530b3396e79d1ef45fcba3b69cd4ebff378b8e52463` |
| 25 | `theorem` | [eq_of_apply_eq](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/eq-of-apply-eq.md) | 167 | `result-track:0282eb5248caa4221bc517c9161fc8792b4c1632481d97bc3efd254dd1da31ca` |
| 26 | `def` | [ptsOfPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/ptsofperiod.md) | 174 | `declaration-track:7b0f02fff6eab824c8d0b19fde6d82145c7dfe72b7512b07eed8a4b1c721eb45` |
| 27 | `theorem` | [mem_ptsOfPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/mem-ptsofperiod.md) | 178 | `result-track:3b06d9622ec083bde4cbcf7db3ee1524dd1a861124e0bfafeaf69ba75a43c812` |
| 28 | `theorem` | [Semiconj.mapsTo_ptsOfPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/semiconj-mapsto-ptsofperiod.md) | 181 | `result-track:386523bdb927ffa75182e94e952f4087ab77871809b68c46fe512cba8a796b14` |
| 29 | `theorem` | [bijOn_ptsOfPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/bijon-ptsofperiod.md) | 185 | `result-track:4029e4ef712f3b7ea2973641fbed1fc4e47a38f252f247dde75ee3e57fba17d5` |
| 30 | `def` | [periodicPts](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/periodicpts.md) | 193 | `declaration-track:81c9062881218c591eabc338fd5142d35c9d8a953a0eef37e01ee203a014efd8` |
| 31 | `theorem` | [mk_mem_periodicPts](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/mk-mem-periodicpts.md) | 196 | `result-track:bc13814a6499ed737d526af29cc90f56127cd550cb747c336a99b3a8830eb1e4` |
| 32 | `theorem` | [mem_periodicPts](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/mem-periodicpts.md) | 199 | `result-track:d4fd42c7a026d71566c4613dbfc1cc1138db7e5362c4b4c49e781a6618ac5f85` |
| 33 | `theorem` | [periodicPts_subset_range](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/periodicpts-subset-range.md) | 202 | `result-track:576b89d17d1315b12c35e1b9eb619e596f71215a28eb48b74bb71b157a120dcf` |
| 34 | `theorem` | [isPeriodicPt_of_mem_periodicPts_of_isPeriodicPt_iterate](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/isperiodicpt-of-mem-periodicpts-of-isperiodicpt-iterate.md) | 214 | `result-track:10d3d55ee042adcde1b5150f6bafd200ecafddc46caca1d9016c15aac94c5ead` |
| 35 | `theorem` | [bUnion_ptsOfPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/bunion-ptsofperiod.md) | 226 | `result-track:1cad075d66d62a70a519868a925e10688d791b0d3786883364498eeeec76042c` |
| 36 | `theorem` | [iUnion_pnat_ptsOfPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/iunion-pnat-ptsofperiod.md) | 229 | `result-track:662d5a1c000c31bb68ee16b5ab881f0097e81e9279d9554425fbba46a3df69f2` |
| 37 | `theorem` | [Semiconj.mapsTo_periodicPts](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/semiconj-mapsto-periodicpts.md) | 237 | `result-track:44edaa129711c7d81614ef8de0a9aed161e72de7f1f2fd3bc7df5c15c0f57c69` |
| 38 | `def` | [minimalPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/minimalperiod.md) | 245 | `declaration-track:22c095a4e3036a82d2a08be37db4ab3d744c0962d23c0a35aaf5f3ea857c6036` |
| 39 | `theorem` | [isPeriodicPt_minimalPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/isperiodicpt-minimalperiod.md) | 248 | `result-track:7a82c7e039ea4da60059ae870fa95430c6136e0cc1a423f63a3fc0cd66beda7c` |
| 40 | `theorem` | [iterate_minimalPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/iterate-minimalperiod.md) | 256 | `result-track:b110ce75f9d3a6633da2045ee4b695750e3c5a54dbf518f20938e9a40a1bc1b3` |
| 41 | `theorem` | [iterate_add_minimalPeriod_eq](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/iterate-add-minimalperiod-eq.md) | 260 | `result-track:94f58f62f0e14e7ed99076e7c51ba110bd08537701383e683f94fe4c9e462d24` |
| 42 | `theorem` | [iterate_mod_minimalPeriod_eq](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/iterate-mod-minimalperiod-eq.md) | 266 | `result-track:8e9e8bdb7377ce0cd0c68c71929892802101c9c0611593ee63b56bbda95bcab8` |
| 43 | `theorem` | [minimalPeriod_pos_of_mem_periodicPts](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/minimalperiod-pos-of-mem-periodicpts.md) | 269 | `result-track:49c70718ad5472b3c358387bc34ab5057b76a95dc7b7872b49d7f2495b4e7a11` |
| 44 | `theorem` | [minimalPeriod_eq_zero_of_notMem_periodicPts](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/minimalperiod-eq-zero-of-notmem-periodicpts.md) | 273 | `result-track:41db66bd7cd6779a391ca73fc1625dc89433f38a4c446322f892d2effc4d7ccf` |
| 45 | `theorem` | [IsPeriodicPt.minimalPeriod_pos](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/isperiodicpt-minimalperiod-pos.md) | 279 | `result-track:da9958af3cd2df06631023ab07038344b8b7f97c0b80d2e2fdbf45171ed105a7` |
| 46 | `theorem` | [minimalPeriod_pos_iff_mem_periodicPts](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/minimalperiod-pos-iff-mem-periodicpts.md) | 283 | `result-track:36c84c852b1dfe4377ebfcbfb74910967485676dddbf2d60766c19ecfca57bf3` |
| 47 | `theorem` | [minimalPeriod_eq_zero_iff_notMem_periodicPts](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/minimalperiod-eq-zero-iff-notmem-periodicpts.md) | 287 | `result-track:9b8733cd0a5201daa5be41d957ef97bbce73cb9b4a5ef43319be8057a9948b6d` |
| 48 | `theorem` | [IsPeriodicPt.minimalPeriod_le](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/isperiodicpt-minimalperiod-le.md) | 294 | `result-track:8945ea4fb212af60728222e8e101d3e5fe0b67201a654eb50793300b34c7a967` |
| 49 | `theorem` | [minimalPeriod_apply_iterate](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/minimalperiod-apply-iterate.md) | 300 | `result-track:f745c26894f78919b0b9822696cfd4534942f666dfd5753b29292aa7c13a586f` |
| 50 | `theorem` | [minimalPeriod_apply](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/minimalperiod-apply.md) | 311 | `result-track:7a69c046d0ecb79532ba48bfdff6cdbc42f611524816f8596cc9338ce63eaf7c` |
| 51 | `theorem` | [le_of_lt_minimalPeriod_of_iterate_eq](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/le-of-lt-minimalperiod-of-iterate-eq.md) | 314 | `result-track:f610914cfce0a9ca1316f4ffae2710b1731d8f20474e780e471977c9e52024ae` |
| 52 | `theorem` | [iterate_injOn_Iio_minimalPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/iterate-injon-iio-minimalperiod.md) | 325 | `result-track:89d1a47f0c43d7552333c01994472a60b2f0b1fb798bd3a5cef2c5c74301407f` |
| 53 | `theorem` | [iterate_eq_iterate_iff_of_lt_minimalPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/iterate-eq-iterate-iff-of-lt-minimalperiod.md) | 329 | `result-track:4d13aa1640e9c8103a7652abb7e8243d724c1b821b10af4a340fc9f638e89751` |
| 54 | `theorem` | [minimalPeriod_id](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/minimalperiod-id.md) | 333 | `result-track:d4d6abfe8d5279127715d59cf92c8765ecf30b2cb4cf50e7c978378d204e99ff` |
| 55 | `theorem` | [minimalPeriod_eq_one_iff_isFixedPt](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/minimalperiod-eq-one-iff-isfixedpt.md) | 337 | `result-track:edceab770dd10e21301f59873ce73af39006e51e88edb6434d254e2ce482e203` |
| 56 | `theorem` | [IsPeriodicPt.eq_zero_of_lt_minimalPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/isperiodicpt-eq-zero-of-lt-minimalperiod.md) | 347 | `result-track:107144496e7ae827757f1822ba21d1795d1490cfa9ac96ef31124853da9518ed` |
| 57 | `theorem` | [not_isPeriodicPt_of_pos_of_lt_minimalPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/not-isperiodicpt-of-pos-of-lt-minimalperiod.md) | 352 | `result-track:0b7c67cb32d6473bcce3625bf7c10e54cf0c7994713ed4e8060812bf39206667` |
| 58 | `theorem` | [IsPeriodicPt.minimalPeriod_dvd](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/isperiodicpt-minimalperiod-dvd.md) | 357 | `result-track:164ffe5e268a8a1b6defa5c7ca26b0c1408d9a20f70531b74e42f8657b719c6b` |
| 59 | `theorem` | [isPeriodicPt_iff_minimalPeriod_dvd](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/isperiodicpt-iff-minimalperiod-dvd.md) | 363 | `result-track:029fa151ae1964e4cc7e885368783ae68f4d8fd257efbaf21ec2bc47f2d85d08` |
| 60 | `theorem` | [minimalPeriod_eq_minimalPeriod_iff](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/minimalperiod-eq-minimalperiod-iff.md) | 368 | `result-track:d17d11cb11259f8f27a49e50f70b025d73e99e0179a4ceb6915bfd6e8785734d` |
| 61 | `theorem` | [Commute.minimalPeriod_of_comp_dvd_lcm](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/commute-minimalperiod-of-comp-dvd-lcm.md) | 372 | `result-track:c2d24f626c1a679e275aceaa0b2cdd422df10eda7df6053270fed458abdc6651` |
| 62 | `theorem` | [minimalPeriod_iterate_eq_div_gcd_aux](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/minimalperiod-iterate-eq-div-gcd-aux.md) | 377 | `result-track:46006a3bba4c756d023e998d2b6d2aac0e665f8afa0daa29782e537d0b276cdc` |
| 63 | `theorem` | [minimalPeriod_iterate_eq_div_gcd](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/minimalperiod-iterate-eq-div-gcd.md) | 392 | `result-track:43f7bd8cc291167304ec746b80f186b349c6be9d8a64b309338da53130c80385` |
| 64 | `theorem` | [minimalPeriod_iterate_eq_div_gcd'](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/minimalperiod-iterate-eq-div-gcd-source-edition-2.md) | 396 | `result-track:e06caec3648d93e8628dc068dd0f95c2bd2826ee9c0f4285ef83a3a3c22fd3cf` |
| 65 | `def` | [periodicOrbit](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/periodicorbit.md) | 405 | `declaration-track:29a948c59414e1b8ae6e3e25373825217a29c8f9d7900c2fca1da2825fcda762` |
| 66 | `theorem` | [periodicOrbit_def](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/periodicorbit-def.md) | 409 | `result-track:c3ccb1147121b2104be06772729fb92f7e12882e801a97696ec173826a4a581a` |
| 67 | `theorem` | [periodicOrbit_eq_cycle_map](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/periodicorbit-eq-cycle-map.md) | 414 | `result-track:3817bc1beacc31d0d9eb5314402c0b1721b6a9fdfde27919ca898a34db59cc6c` |
| 68 | `theorem` | [periodicOrbit_length](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/periodicorbit-length.md) | 419 | `result-track:5357accd21308643416b8e739aa0e125f500001aafcec2121ba9d89174cb7beb` |
| 69 | `theorem` | [periodicOrbit_eq_nil_iff_not_periodic_pt](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/periodicorbit-eq-nil-iff-not-periodic-pt.md) | 423 | `result-track:2ddf41e4b2ec9c85ee79824daebd1d7db133b918213ff581b6d32a86b2b75f5d` |
| 70 | `theorem` | [periodicOrbit_eq_nil_of_not_periodic_pt](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/periodicorbit-eq-nil-of-not-periodic-pt.md) | 428 | `result-track:a8b29879991b733c09e6a7321d432b518f091cb07ba6832f7bca1ec637fcd5fe` |
| 71 | `theorem` | [mem_periodicOrbit_iff](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/mem-periodicorbit-iff.md) | 433 | `result-track:e19ca43b93e9c4aaaabaded986496722c1b8adb6be3bf3404809a78eaed235bd` |
| 72 | `theorem` | [iterate_mem_periodicOrbit](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/iterate-mem-periodicorbit.md) | 441 | `result-track:f35c5590869a69c1d9fc689f4c329a0e792ad51930abfcd950482b91e9b9ca27` |
| 73 | `theorem` | [exists_iterate_apply_eq_of_mem_periodicPts](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/exists-iterate-apply-eq-of-mem-periodicpts.md) | 446 | `result-track:cdacb6c52bb551b8c2deb8c4e1dd64d68f05b6c9fe367add3fc65b282c91d854` |
| 74 | `theorem` | [self_mem_periodicOrbit](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/self-mem-periodicorbit.md) | 449 | `result-track:75f9b0e2c853dd24f51c8018150ac8d3ecab123a0e3205b83262d0cb01bb3400` |
| 75 | `theorem` | [nodup_periodicOrbit](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/nodup-periodicorbit.md) | 452 | `result-track:db796c2fc7f665b9a5ab751e9a4e9ff359b11f84d50c6845979131cef38b1f78` |
| 76 | `theorem` | [periodicOrbit_apply_iterate_eq](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/periodicorbit-apply-iterate-eq.md) | 458 | `result-track:d3b8968d5b94a0a59114ee939a014b147d4cc9bced27fd940566a59f25bc526d` |
| 77 | `theorem` | [periodicOrbit_apply_eq](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/periodicorbit-apply-eq.md) | 464 | `result-track:f545edf8b04c0a3f2a27b8a268cf8103149aa99d1d591a1642e4f4636f25203d` |
| 78 | `theorem` | [periodicOrbit_chain](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/periodicorbit-chain.md) | 468 | `result-track:03d613e63ad726b9dc3006bbac15a09efff8fae858f410b566f405e45f66b3d4` |
| 79 | `theorem` | [periodicOrbit_chain'](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/periodicorbit-chain-source-edition-2.md) | 486 | `result-track:3a375f02b5f2255ab08a338df254459970d904472feeded40cc2bafeee1ad569` |
| 80 | `theorem` | [isFixedPt_prodMap](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/isfixedpt-prodmap-source-edition-2.md) | 503 | `result-track:a304129b3444224772c91530a9e225df095c59d89492221cc82678cffaddcfc1` |
| 81 | `theorem` | [IsFixedPt.prodMap](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/isfixedpt-prodmap.md) | 510 | `result-track:923078bcbd9126af10c24485c839fd917806f6c98248c452f951abc4f3ea358f` |
| 82 | `theorem` | [isPeriodicPt_prodMap](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/isperiodicpt-prodmap.md) | 515 | `result-track:456463c86c257fbc74b978da5acc0b58bb6c6cac0988bf9e112cc6a884b00a59` |
| 83 | `theorem` | [IsPeriodicPt.prodMap](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/isperiodicpt-prodmap-source-edition-2.md) | 522 | `result-track:5d8d37222a9899e109df08a4dc8d44feeff2a411ddc94b6e35098b43d9a85344` |
| 84 | `def` | [period](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/period.md) | 543 | `declaration-track:4c16d588c1d30361c9455cde1e0c7fbe208e347d97b3ee7d55516e70b21d2db7` |
| 85 | `theorem` | [period_eq_minimalPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/period-eq-minimalperiod.md) | 548 | `result-track:5767b9fa056f77dbf35a1e62b732059d31b9bceee672c628925e49034c364dcb` |
| 86 | `theorem` | [pow_period_smul](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/pow-period-smul.md) | 553 | `result-track:c6027968179b2ed5ac5ece448cf65a371b13f8707350441ac1d3c67863a267e9` |
| 87 | `lemma` | [isPeriodicPt_smul_iff](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/isperiodicpt-smul-iff.md) | 557 | `result-track:d02b07f2e485ac30484aa5274e13501a5666596368d837c175ffb0fd5f702342` |
| 88 | `theorem` | [pow_smul_eq_iff_period_dvd](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/pow-smul-eq-iff-period-dvd.md) | 570 | `result-track:1a23b68f08661f80a50f692da937b869a18d3b608366a7accde98af2f5e92977` |
| 89 | `theorem` | [zpow_smul_eq_iff_period_dvd](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/zpow-smul-eq-iff-period-dvd.md) | 575 | `result-track:fe2178516eddc8cc968b2af0ba11b7176d261e774cbe089bc61ea60c2d7440ff` |
| 90 | `theorem` | [pow_mod_period_smul](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/pow-mod-period-smul.md) | 584 | `result-track:4d028169b1eca04901a647071c290c9f6b45b5e55f599dc96111f1f0367356ad` |
| 91 | `theorem` | [zpow_mod_period_smul](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/zpow-mod-period-smul.md) | 590 | `result-track:e3cf04895871ce4b03972c165cf76a5b65cd40e6e4899073f70f8b53785b70d9` |
| 92 | `theorem` | [pow_add_period_smul](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/pow-add-period-smul.md) | 596 | `result-track:da99ac527d55f355bb69dce1df416a474b1cd7ac66d7abc06b4f8c13b1136704` |
| 93 | `theorem` | [pow_period_add_smul](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/pow-period-add-smul.md) | 601 | `result-track:8a5b1d3aa1154dffcef2cfe2af698ccf602000cac1d89a6e14a9c0e674081e32` |
| 94 | `theorem` | [zpow_add_period_smul](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/zpow-add-period-smul.md) | 606 | `result-track:cc6eb8b95d6770e211f9804c1b1fe77044fa33cd8177a34dc327c1bcfaf5d659` |
| 95 | `theorem` | [zpow_period_add_smul](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/zpow-period-add-smul.md) | 611 | `result-track:39c1d023918c76185f3c158cc14294d7050ec92981c75bdf5570ba553d44da7c` |
| 96 | `theorem` | [pow_smul_eq_iff_minimalPeriod_dvd](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/pow-smul-eq-iff-minimalperiod-dvd.md) | 618 | `result-track:25000e37c84e7a041d513379d3fe099b6a5fe1a2b11133b3be3f149605584555` |
| 97 | `theorem` | [zpow_smul_eq_iff_minimalPeriod_dvd](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/zpow-smul-eq-iff-minimalperiod-dvd.md) | 623 | `result-track:0ea39a11dfd0b2aba589356e805d987850cfa297350ca2380a571ea120d1ada7` |
| 98 | `theorem` | [pow_smul_mod_minimalPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/pow-smul-mod-minimalperiod.md) | 630 | `result-track:f8369a7c022a0faa2ff03e666cecc0b39b2cbf3edc04e6897d3ca037d5154998` |
| 99 | `theorem` | [zpow_smul_mod_minimalPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPtsDefs.lean/declarations/zpow-smul-mod-minimalperiod.md) | 635 | `result-track:a4a8ab9100c03f54661dd7c5c3d70766e9034909814121be7f4c19f2faa8b1e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0f1b63f671d4bb1e4257031758c9b2d49cdba5841a37f7dc6b3bacc7af0a07f2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d902f6b2ea44bfeefc75c91b12bb1930edeb4cc1abfcfde88cc869715ab17dd.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant7d902f6b2ea44bfeefc75c91b12bb1930edeb4cc1abfcfde88cc869715ab17dd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
