# Verification target: Periodic Pts

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c765b5f701ae5a51aaa3893473b7aff51e0d3fa",
  "lexical_observation_count": 93,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicPts/Variante8b537d4ea9515f0af073096feb6948d3fb07f46acc9f126bfc535e7ca66e127.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/index.md) · [Full source](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c765b5f701ae5a51aaa3893473b7aff51e0d3fa`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicPts/Variante8b537d4ea9515f0af073096feb6948d3fb07f46acc9f126bfc535e7ca66e127.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicPts/Variante8b537d4ea9515f0af073096feb6948d3fb07f46acc9f126bfc535e7ca66e127.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Iterate` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Cycle` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.FixedPoints.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Group` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPeriodicPt](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/isperiodicpt.md) | 56 | `declaration-track:a19ce6d71ee7ab7d7ef2cd8101964d15177740776fe224eb0df331103422daa8` |
| 2 | `theorem` | [IsFixedPt.isPeriodicPt](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/isfixedpt-isperiodicpt.md) | 61 | `result-track:c02ca0c61c3347be5701a516212f8cfa2634dea9ef28488b44b28395230a62c1` |
| 3 | `theorem` | [is_periodic_id](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/is-periodic-id.md) | 66 | `result-track:9735a1763b259bea75bdca4e6d9e79e69f6d24eebe47e227321529c115ed5d3c` |
| 4 | `theorem` | [isPeriodicPt_zero](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/isperiodicpt-zero.md) | 71 | `result-track:66e9dbf6d0cd28b2bcdfde49b71dd72d6d366e87584c04cfd994ee4963d9e6ea` |
| 5 | `instance` | [(anonymous)](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/instance.md) | 77 | `declaration-track:7b9d3708f68ac32591cd967f29be830f4b3851a3ccb0bbefd24a1484608718e8` |
| 6 | `theorem` | [isFixedPt](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/isfixedpt.md) | 80 | `result-track:dff216ca627bfb68fe4dbce0c98a68d2f9619b6f0c0baac7b14c59909c2ff21a` |
| 7 | `theorem` | [map](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/map.md) | 84 | `result-track:6aa25b7d9bd779b0ef5e82a5638d293b07e6f28bc984ec38bc224e6c795633f9` |
| 8 | `theorem` | [apply_iterate](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/apply-iterate.md) | 89 | `result-track:91465ff7ccefd92b9652ddd659586278e39b33b5af4a2c11f4d15b89f70dddd9` |
| 9 | `theorem` | [apply](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/apply.md) | 93 | `result-track:8995174e9c6bec69cdafad878335ecbec6d71e632529f38a3339e01abbe5a587` |
| 10 | `theorem` | [add](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/add.md) | 97 | `result-track:59f0488ac5e37de373e1452f199d203412713498c8c4136b69ad369d50f9b8ad` |
| 11 | `theorem` | [left_of_add](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/left-of-add.md) | 103 | `result-track:f249c40be1cbbad36b17081fa81f9f614bb68cd0f321f6bd4202fd9245bcfda3` |
| 12 | `theorem` | [right_of_add](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/right-of-add.md) | 109 | `result-track:fc77f1809e753a2f157975031a53c1615f88466de8bd3399136dbbd449850009` |
| 13 | `theorem` | [sub](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/sub.md) | 115 | `result-track:e13498e090c18d5a7837ddeaf3c9ce7780a237171bf3aeea1967f50b77e563a4` |
| 14 | `theorem` | [mul_const](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/mul-const.md) | 124 | `result-track:dc43842a74784915e2e636a7c7b0d133ade04ead021df0a6b0ed1cc377fa7f34` |
| 15 | `theorem` | [const_mul](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/const-mul.md) | 128 | `result-track:743793fe30ae5d01d826b4647e5717b23eb3ca418828270bb051441e8cf7420b` |
| 16 | `theorem` | [trans_dvd](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/trans-dvd.md) | 132 | `result-track:c6f4a6132032667287fab8906d0ba2fab202753716730f7947f55fc6054c5cdc` |
| 17 | `theorem` | [iterate](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/iterate.md) | 137 | `result-track:57138b6bbc872cabbb46b9d75919a8bb8dd639101ff2c458213fec082ed3f7ea` |
| 18 | `theorem` | [comp](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/comp.md) | 142 | `result-track:4d716707dd50ecc1522f3ccd9e74c696ebe0586731977ba74bfcc17fb171b0eb` |
| 19 | `theorem` | [comp_lcm](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/comp-lcm.md) | 148 | `result-track:67bfef087cd56c520e5dfbe8dc4159ad0c9c0d84bc46b02c2c6aa1d85270e4e2` |
| 20 | `theorem` | [left_of_comp](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/left-of-comp.md) | 153 | `result-track:b4cde8ce7c0d0f58dc32d84fbae07ce8cd6c45a39f747a951af942b301e29fee` |
| 21 | `theorem` | [iterate_mod_apply](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/iterate-mod-apply.md) | 159 | `result-track:06d65c3469cec43b774a023eb3e3d41cbc77d79f013bc59db8fcfedf59105262` |
| 22 | `theorem` | [mod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/mod.md) | 163 | `result-track:4ff180c6a5554b2c2c99f7fa94a22fa8880009d1ffc0ea7e4ead02496488b9a1` |
| 23 | `theorem` | [gcd](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/gcd.md) | 168 | `result-track:edc89ba0d51ed9453984b354dd5befc2c95d47e19263cc4099f435b88e18a1a4` |
| 24 | `theorem` | [eq_of_apply_eq_same](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/eq-of-apply-eq-same.md) | 179 | `result-track:c86290985cfb050e31a9668fe9ffadabbf25ebc04b41b59e024100d1d5c92aab` |
| 25 | `theorem` | [eq_of_apply_eq](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/eq-of-apply-eq.md) | 186 | `result-track:96e0f15fb78a3051b7a7c70d59019ce25076d44c1c1e9e05669d6aeeecd7223a` |
| 26 | `def` | [ptsOfPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/ptsofperiod.md) | 194 | `declaration-track:dbaf3187a8bb43a63b2769d7cac720c9e263d3ae52a79aa8f5fd253dbf9f1fc2` |
| 27 | `theorem` | [mem_ptsOfPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/mem-ptsofperiod.md) | 199 | `result-track:9c2486036e1c8c3240dd957e09eb4d10f029c0d93df846da46c34b01ac743243` |
| 28 | `theorem` | [Semiconj.mapsTo_ptsOfPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/semiconj-mapsto-ptsofperiod.md) | 203 | `result-track:20c4e9994502891b661daff20a8c7e24a0d582e35da3d8f09d9f794cc01a46e6` |
| 29 | `theorem` | [bijOn_ptsOfPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/bijon-ptsofperiod.md) | 208 | `result-track:389d930dee175c6e7dc27bed8f2de01382cd1fbb7f99c59191cc1fd78f17f9ad` |
| 30 | `theorem` | [directed_ptsOfPeriod_pNat](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/directed-ptsofperiod-pnat.md) | 216 | `result-track:39bebc81d8ee56238bd763c8ab76d5bbc03b9e864c1412ca07489e112c150646` |
| 31 | `def` | [periodicPts](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/periodicpts.md) | 221 | `declaration-track:4e30e7cff3c7180f71dcea02c7b0231838ad59de4ee1e065e3f28247b82c3b31` |
| 32 | `theorem` | [mk_mem_periodicPts](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/mk-mem-periodicpts.md) | 225 | `result-track:852869f2c8e53e9155807d9702048455f8ed87387fced1561585230daf24ba3b` |
| 33 | `theorem` | [mem_periodicPts](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/mem-periodicpts.md) | 229 | `result-track:ccd8b27749c853ca52ccbcaadf80fae32bf980ed16fb47a025fab96bba2a7316` |
| 34 | `theorem` | [isPeriodicPt_of_mem_periodicPts_of_isPeriodicPt_iterate](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/isperiodicpt-of-mem-periodicpts-of-isperiodicpt-iterate.md) | 233 | `result-track:195db7a8c083b70a467f9c2697401bfc8a922c22ca9b939b3d65cb3ef29a500e` |
| 35 | `theorem` | [bUnion_ptsOfPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/bunion-ptsofperiod.md) | 247 | `result-track:c0fe628a071d599620b0910848bfccf5ac2be050e8852646b8ac9d9bd5b9c4e0` |
| 36 | `theorem` | [iUnion_pNat_ptsOfPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/iunion-pnat-ptsofperiod.md) | 251 | `result-track:8454103ae4c692a7905694d3950529862487a4a294e199c5024af16f026538b8` |
| 37 | `theorem` | [bijOn_periodicPts](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/bijon-periodicpts.md) | 255 | `result-track:26ccfdea5205f4758c504e58426e3adaa6107a641ba13b09e56c177b618f7047` |
| 38 | `theorem` | [Semiconj.mapsTo_periodicPts](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/semiconj-mapsto-periodicpts.md) | 262 | `result-track:6612813ce2ba9c091c2204572f652e2a646bb7efea4f1245777d55932d191008` |
| 39 | `def` | [minimalPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/minimalperiod.md) | 272 | `declaration-track:d5ba3ef465cc902b99d59aab641c6ca7d07f0dcb1f1c5542bb2833a780b0c52b` |
| 40 | `theorem` | [isPeriodicPt_minimalPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/isperiodicpt-minimalperiod.md) | 276 | `result-track:e454aa3031c60c8380a553447b138af97c6a8a03603ee0011bee8d1591b06f18` |
| 41 | `theorem` | [iterate_minimalPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/iterate-minimalperiod.md) | 284 | `result-track:9deb9a5c16cb5f846f6ec6b1c92cd0c2536503188bedabc59e0dd502d4d035f5` |
| 42 | `theorem` | [iterate_add_minimalPeriod_eq](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/iterate-add-minimalperiod-eq.md) | 289 | `result-track:8396f79caa705186939a6c672ac68ff99c704ea2398b80f98c1d625c1c9ba7a6` |
| 43 | `theorem` | [iterate_mod_minimalPeriod_eq](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/iterate-mod-minimalperiod-eq.md) | 296 | `result-track:5cb71fcdc79eebfa62db4facb394ca0dca108c0ab8b6d2bc0f1cf2ba873f624b` |
| 44 | `theorem` | [minimalPeriod_pos_of_mem_periodicPts](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/minimalperiod-pos-of-mem-periodicpts.md) | 300 | `result-track:c0c2f7eadb969352174487a4e91beca9b092c94df3d9130242675df34d0280a1` |
| 45 | `theorem` | [minimalPeriod_eq_zero_of_nmem_periodicPts](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/minimalperiod-eq-zero-of-nmem-periodicpts.md) | 304 | `result-track:9f2c223d644958303dd998d08cb9f1052b9f15f697d51436347e0085814377de` |
| 46 | `theorem` | [IsPeriodicPt.minimalPeriod_pos](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/isperiodicpt-minimalperiod-pos.md) | 308 | `result-track:4f03a5d2e12868345a30cba87135c880b5c616b6b160d790769fa59967d2afd6` |
| 47 | `theorem` | [minimalPeriod_pos_iff_mem_periodicPts](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/minimalperiod-pos-iff-mem-periodicpts.md) | 313 | `result-track:5192f8ed76262a98e34c31531b3b1c409da9a73838019ddbff790e737f3fec7b` |
| 48 | `theorem` | [minimalPeriod_eq_zero_iff_nmem_periodicPts](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/minimalperiod-eq-zero-iff-nmem-periodicpts.md) | 318 | `result-track:f90cc2949384817fd9d1f950e200847ccf4edb0599f5eb7d6ed0eb106c5a7ace` |
| 49 | `theorem` | [IsPeriodicPt.minimalPeriod_le](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/isperiodicpt-minimalperiod-le.md) | 322 | `result-track:45b74386daafa547203e5cb333962c63b179aac31b397503ac23e55396f09a72` |
| 50 | `theorem` | [minimalPeriod_apply_iterate](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/minimalperiod-apply-iterate.md) | 328 | `result-track:fd961dea224905862d6b427b944242817d9db240eee9b58efda9b9c392e16c00` |
| 51 | `theorem` | [minimalPeriod_apply](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/minimalperiod-apply.md) | 340 | `result-track:e2cbb6dc085b62e9eab98622687d2266c0aed11b9dbcbda51192ed3dd2f21b45` |
| 52 | `theorem` | [le_of_lt_minimalPeriod_of_iterate_eq](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/le-of-lt-minimalperiod-of-iterate-eq.md) | 344 | `result-track:bf5e46390ad5886d78bbdaa1d6529679add653e63d66560a8b10650147a57ade` |
| 53 | `theorem` | [eq_of_lt_minimalPeriod_of_iterate_eq](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/eq-of-lt-minimalperiod-of-iterate-eq.md) | 356 | `result-track:45022a59fb397d0a9142785099cc195fd17b1a2f606b73607f5236dfd607947a` |
| 54 | `theorem` | [eq_iff_lt_minimalPeriod_of_iterate_eq](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/eq-iff-lt-minimalperiod-of-iterate-eq.md) | 362 | `result-track:b72815f16f4f0b1eafb586ae1279ebafdb98c6b760efca1ec9f6b14df3357536` |
| 55 | `theorem` | [minimalPeriod_id](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/minimalperiod-id.md) | 367 | `result-track:a92ffd0f14ed18fd078d34552055ee0c817696b2bddf319e43f310a08d3b7fed` |
| 56 | `theorem` | [minimalPeriod_eq_one_iff_isFixedPt](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/minimalperiod-eq-one-iff-isfixedpt.md) | 372 | `result-track:863dc3fa5f1bb8a9a516e831154031b97c78286ed400237dba7d16ef897d031f` |
| 57 | `theorem` | [IsPeriodicPt.eq_zero_of_lt_minimalPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/isperiodicpt-eq-zero-of-lt-minimalperiod.md) | 383 | `result-track:794bb38e1f9071861c0ca05e8bb21b1d1ca5369066cee92f26f910b88a6b37f2` |
| 58 | `theorem` | [not_isPeriodicPt_of_pos_of_lt_minimalPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/not-isperiodicpt-of-pos-of-lt-minimalperiod.md) | 389 | `result-track:e9205b641a28fb5b2eac7a4153e521b3dc1859150280583e3c66fa58d12def0d` |
| 59 | `theorem` | [IsPeriodicPt.minimalPeriod_dvd](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/isperiodicpt-minimalperiod-dvd.md) | 395 | `result-track:21be6a99f4667ce13ff39fc8f812b335759d855f653c3ca97f2aa6859e8b0247` |
| 60 | `theorem` | [isPeriodicPt_iff_minimalPeriod_dvd](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/isperiodicpt-iff-minimalperiod-dvd.md) | 403 | `result-track:f345f8b1c499a3f1dd319074bfc47744c4de3325ca11cca5c7c606348de7c39f` |
| 61 | `theorem` | [minimalPeriod_eq_minimalPeriod_iff](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/minimalperiod-eq-minimalperiod-iff.md) | 409 | `result-track:598824135a5c746438521fc8bb32666a89c078f32189ad60f1f4e5262925f53e` |
| 62 | `theorem` | [minimalPeriod_eq_prime](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/minimalperiod-eq-prime.md) | 414 | `result-track:271ca819b29729608b9a6171561920520af39d4a3bc89c2800e20670136e3242` |
| 63 | `theorem` | [minimalPeriod_eq_prime_pow](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/minimalperiod-eq-prime-pow.md) | 420 | `result-track:17a05e40a0ec7b51f716e6b22d01d5e0ae0a42c30bbfc838f5febfcd9b396a00` |
| 64 | `theorem` | [Commute.minimalPeriod_of_comp_dvd_lcm](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/commute-minimalperiod-of-comp-dvd-lcm.md) | 426 | `result-track:4656ff2f5abd7946fb8586cd1cbbc8e70c02f9525a9a3e03d78155ed518ae496` |
| 65 | `theorem` | [Commute.minimalPeriod_of_comp_dvd_mul](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/commute-minimalperiod-of-comp-dvd-mul.md) | 432 | `result-track:e400db0af3f59079c484641ce3ffb7ef8f87e3f156c7663300d4418b8cd65ad3` |
| 66 | `theorem` | [Commute.minimalPeriod_of_comp_eq_mul_of_coprime](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/commute-minimalperiod-of-comp-eq-mul-of-coprime.md) | 437 | `result-track:15a7fbaaa8d2c4fd7b0a958ce0e4844e2d4935b76296a76288b6cd2a2fac48b8` |
| 67 | `theorem` | [minimalPeriod_iterate_eq_div_gcd_aux](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/minimalperiod-iterate-eq-div-gcd-aux.md) | 453 | `result-track:f233638532e1ff306ff7fd997409e964a26be8eabb41937d14adaa3dcab3ca58` |
| 68 | `theorem` | [minimalPeriod_iterate_eq_div_gcd](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/minimalperiod-iterate-eq-div-gcd-source-edition-2.md) | 468 | `result-track:91d159049a4d179a681643a9f11fd1f74eca7bef36391c86852c164f3b086834` |
| 69 | `theorem` | [minimalPeriod_iterate_eq_div_gcd'](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/minimalperiod-iterate-eq-div-gcd.md) | 473 | `result-track:57339a017ffb9de296d85e4a307cdd715cb32dc2978dc8443e7c552c294a7b8f` |
| 70 | `def` | [periodicOrbit](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/periodicorbit.md) | 483 | `declaration-track:668ca1e604106d197c859289c4ffb2e554e9416b9d56ea4739cf1fc16d223fa7` |
| 71 | `theorem` | [periodicOrbit_def](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/periodicorbit-def.md) | 488 | `result-track:b7a5fbae1cea6c4edbf876aae76cf3f19fa0e3ef1d4fbf88317e076d0748f0cf` |
| 72 | `theorem` | [periodicOrbit_eq_cycle_map](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/periodicorbit-eq-cycle-map.md) | 494 | `result-track:5b28b8db428ee524f174b3ad8104fd453d2ff5ead78158ace627b8d1e34a237f` |
| 73 | `theorem` | [periodicOrbit_length](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/periodicorbit-length.md) | 500 | `result-track:42cac81aad85a10bec60a12b65512b29f87114576aa01f4bcdf63a133a9ff641` |
| 74 | `theorem` | [periodicOrbit_eq_nil_iff_not_periodic_pt](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/periodicorbit-eq-nil-iff-not-periodic-pt.md) | 505 | `result-track:6f94b0bf01958899b9e68f9c30e0d314be77738f657166490c128699049b84dc` |
| 75 | `theorem` | [periodicOrbit_eq_nil_of_not_periodic_pt](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/periodicorbit-eq-nil-of-not-periodic-pt.md) | 511 | `result-track:247c2e971b5dd38f253a5ee304bf40a65299811f1b1e76dc132365cff3b309ce` |
| 76 | `theorem` | [mem_periodicOrbit_iff](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/mem-periodicorbit-iff.md) | 517 | `result-track:2e5c8df4c16cf6e5836ee11a7423bfac92fdef87460eef4889d95aa78246fddf` |
| 77 | `theorem` | [iterate_mem_periodicOrbit](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/iterate-mem-periodicorbit.md) | 527 | `result-track:97d0a4ebe1223bdf87cded3a8217fb0d64f5bd81d2e3e4eea95b0faa6dbd8f56` |
| 78 | `theorem` | [self_mem_periodicOrbit](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/self-mem-periodicorbit.md) | 533 | `result-track:fffd8b6225fff00c07c04d4c2283af766923c56978adf19c22c7f96e91d4f257` |
| 79 | `theorem` | [nodup_periodicOrbit](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/nodup-periodicorbit.md) | 537 | `result-track:c62e3f0c41e2ace705003b8aaca50f8a815bf76fd15b82df241ca1772a50dbb4` |
| 80 | `theorem` | [periodicOrbit_apply_iterate_eq](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/periodicorbit-apply-iterate-eq.md) | 545 | `result-track:cee555c5355296397e053114b06dc2d7f5e3b8ebafadaf3878c7a0549d0b997d` |
| 81 | `theorem` | [periodicOrbit_apply_eq](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/periodicorbit-apply-eq.md) | 555 | `result-track:be9c1c3288b8fe16a12eb8b7e80418b37c955d8473e300956bd897cac659a341` |
| 82 | `theorem` | [periodicOrbit_chain](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/periodicorbit-chain.md) | 560 | `result-track:76e2d3c0c0a67d4bef0870ab74475807e8fde699b36a9d3c2b1a9d227b721570` |
| 83 | `theorem` | [periodicOrbit_chain'](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/periodicorbit-chain-source-edition-2.md) | 579 | `result-track:e05a99a799e20d2aee18bd6d2e05ce5e7c849cf44b5b3ed2691215b490827145` |
| 84 | `theorem` | [iterate_prod_map](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/iterate-prod-map.md) | 597 | `result-track:0a2180dddaf10a478d4bd88110635cf4cb9cf46280e10f92e200b454490d0f97` |
| 85 | `theorem` | [isFixedPt_prod_map](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/isfixedpt-prod-map.md) | 602 | `result-track:1416e12d63b317113453db6bad0f3cc081b3895a4ee61d72542edf0a27dcb719` |
| 86 | `theorem` | [isPeriodicPt_prod_map](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/isperiodicpt-prod-map.md) | 608 | `result-track:b90098c929a8c9914302c9c31295fa5c85c46b546ddbba9393ac55859eb4d6b4` |
| 87 | `theorem` | [minimalPeriod_prod_map](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/minimalperiod-prod-map.md) | 613 | `result-track:88ce104e26f083591eaf08ee29057364bd41125a4ddc7ff8514e185cb9948705` |
| 88 | `theorem` | [minimalPeriod_fst_dvd](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/minimalperiod-fst-dvd.md) | 618 | `result-track:0a79c2219f0b67231d2931b2b45ca41d1633f9724bf81bf3ebc7932587afa2d2` |
| 89 | `theorem` | [minimalPeriod_snd_dvd](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/minimalperiod-snd-dvd.md) | 622 | `result-track:2112e32379a79cfe2b8af7d6ec1d5812bff3e01ba6a6ffe9fbf44439b8d8819e` |
| 90 | `theorem` | [pow_smul_eq_iff_minimalPeriod_dvd](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/pow-smul-eq-iff-minimalperiod-dvd.md) | 635 | `result-track:b3616b0b63683815a62bc2eca1301d1db405e748d5a32cebd31d8189a29547fb` |
| 91 | `theorem` | [zpow_smul_eq_iff_minimalPeriod_dvd](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/zpow-smul-eq-iff-minimalperiod-dvd.md) | 642 | `result-track:0faf26aaebb5409f890c861a101f8202e04aa2c4b77ed54eab5fc804e8c32afe` |
| 92 | `theorem` | [pow_smul_mod_minimalPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/pow-smul-mod-minimalperiod.md) | 654 | `result-track:4ef3f2560ea24f789e81289c3dc189c3e3d88ac462475e66f1df1b9ed819cfce` |
| 93 | `theorem` | [zpow_smul_mod_minimalPeriod](../../../../DynamicalSystemsAndErgodicTheory/PeriodicPts.lean/declarations/zpow-smul-mod-minimalperiod.md) | 663 | `result-track:6dff53ed7202974efcc31a73c5c6213ebbf73d84e8b9809017ce11ec81923dfb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=232a0b9f28f8734d87e9471b4fbca00589d96788ebc2190323ab4dc465110505 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicPts/Variante8b537d4ea9515f0af073096feb6948d3fb07f46acc9f126bfc535e7ca66e127.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PeriodicPts/Variante8b537d4ea9515f0af073096feb6948d3fb07f46acc9f126bfc535e7ca66e127.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
