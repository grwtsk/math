# Verification target: Local Invariant Properties Namespaced Lift Prop Within At Congr Set

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e497d787ca2cb9e80a13f7df41c26cb91d46ff9",
  "lexical_observation_count": 76,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variant077dfed1d3dadcdcf6b06b603031300de35fe263fa718f53becc087a7006e8aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/index.md) · [Full source](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e497d787ca2cb9e80a13f7df41c26cb91d46ff9`.

Source path: `GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variant077dfed1d3dadcdcf6b06b603031300de35fe263fa718f53becc087a7006e8aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocalInvariantProperties/Variant077dfed1d3dadcdcf6b06b603031300de35fe263fa718f53becc087a7006e8aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.ChartedSpace` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LocalInvariantProp](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/localinvariantprop.md) | 71 | `declaration-track:d0a92b0a7e4eb3a673a9c7317aa5f91e5481811d219dc5a9319a9070a11f1df8` |
| 2 | `theorem` | [congr_set](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/congr-set.md) | 85 | `result-track:6f3c9380895113eda4c38ffee5445239469aa61151047f274c2393984af2ffa2` |
| 3 | `theorem` | [is_local_nhds](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/is-local-nhds.md) | 90 | `result-track:513eea1b5aea6ca1fc0bd93fa336f8d280ea8b9a8884eb2a5235913b73dfdcb8` |
| 4 | `theorem` | [congr_iff_nhdsWithin](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/congr-iff-nhdswithin.md) | 94 | `result-track:bd7458f226aa072b603ad74a993168b7132ad71c6691e5f6a217189039d7f2dc` |
| 5 | `theorem` | [congr_nhdsWithin](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/congr-nhdswithin.md) | 99 | `result-track:12f93a3a00d707b98798a5443f41f8db6c0ddb87d3163b320a140e78449d789a` |
| 6 | `theorem` | [congr_nhdsWithin'](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/congr-nhdswithin-source-line-103-occurrence-2.md) | 103 | `result-track:63bc4e95b7fea9a56c18d5e1053beda8d8d90023bb05a0c03d3854d3376f7cb9` |
| 7 | `theorem` | [congr_iff](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/congr-iff.md) | 107 | `result-track:1f372e85b67093c884be2646cf85cc086ba018ebb2bdab5ebd2ba1c264c11df1` |
| 8 | `theorem` | [congr](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/congr-source-line-110-occurrence-2.md) | 110 | `result-track:34e912f2ae641a34ac9337e186ed462fe56b0375b169ba2550db0041dcd0f78d` |
| 9 | `theorem` | [congr'](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/congr.md) | 113 | `result-track:01c79d6d8a7ffab1508540fdd3b345294c1c1e27310a9034491c9ea91dd15566` |
| 10 | `theorem` | [left_invariance](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/left-invariance.md) | 116 | `result-track:93b310683b855aa80d8d4706b055fa6f34ebb863f9a8ad2cfc2e2d4894e6616f` |
| 11 | `theorem` | [right_invariance](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/right-invariance.md) | 133 | `result-track:c6bcbd2a778e341ba78dc6130cd77fb9c89b6d0a65138f8839a229bbdf253a46` |
| 12 | `structure` | [LiftPropWithinAt](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat.md) | 158 | `declaration-track:7420c6f1dea0f253303222972a60cecf28b14a252c84c43072d105144cc58bed` |
| 13 | `def` | [LiftPropOn](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropon.md) | 166 | `declaration-track:3d774fe34fcff35e119891f8382b17195d0652241643d752fbf76fbc629075a2` |
| 14 | `def` | [LiftPropAt](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropat.md) | 172 | `declaration-track:5d97e4e37454d46c07f1ae6b5388b82ced57aa98ffe315006ed7d2528183e9b3` |
| 15 | `theorem` | [liftPropAt_iff](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropat-iff.md) | 175 | `result-track:4d93ce02e769ab2647097d9ee010faff631e608f8be4068270c9ea9cf62b047d` |
| 16 | `def` | [LiftProp](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftprop.md) | 183 | `declaration-track:8ce9aedde7842f526dd2be531557001afcfd62f9d2659f74acb2f713efcb2913` |
| 17 | `theorem` | [liftProp_iff](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftprop-iff.md) | 186 | `result-track:cdd114f5b3fc38b4d85d092c2581e9d3633cb6db9b8cd7a28394255da97d4235` |
| 18 | `theorem` | [liftPropWithinAt_univ](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-univ.md) | 201 | `result-track:f40ccb4b0c76830ee80279583b6d01ca03dcfd8e342665ff51578b6d6ff8b25a` |
| 19 | `theorem` | [liftPropOn_univ](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropon-univ.md) | 203 | `result-track:81485f7d5bd0f6151c453c7585258ca35f9bd77d654753e5aedd6ad90962bb64` |
| 20 | `theorem` | [liftPropWithinAt_self](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-self.md) | 206 | `result-track:07c9a0ee9fc91d44d63cc8461cce075b048e4836d1696adf7d913cf11c59600b` |
| 21 | `theorem` | [liftPropWithinAt_self_source](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-self-source.md) | 210 | `result-track:c251d5497f40791f290401d99953512a50c9f7bea34fe9368f79025362017c00` |
| 22 | `theorem` | [liftPropWithinAt_self_target](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-self-target.md) | 214 | `result-track:7215a7f97eb914b2085b8500d85e20c3a671adb0ebfade4068ddc04a7b44b3f2` |
| 23 | `theorem` | [liftPropWithinAt_iff](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-iff.md) | 227 | `result-track:c75baae166a7c340f8ddb67e08d949d1b335570cce8c87614cf091cccc2aaff9` |
| 24 | `theorem` | [liftPropWithinAt_indep_chart_source_aux](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-indep-chart-source-aux.md) | 238 | `result-track:83b152cf9fb519022318ebfb502c2b0271876f2f177f8bbae703bfae8ea55259` |
| 25 | `theorem` | [liftPropWithinAt_indep_chart_target_aux2](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-indep-chart-target-aux2.md) | 255 | `result-track:caaf22e9049bc6f0096c94f2d5c2e952beff51a467ee0be7334676b3b0a6a84b` |
| 26 | `theorem` | [liftPropWithinAt_indep_chart_target_aux](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-indep-chart-target-aux.md) | 264 | `result-track:aef41fbf0c870b7b7a8a80831e90887985f38fd64db4a1753d7d4d0c84e6289f` |
| 27 | `theorem` | [liftPropWithinAt_indep_chart_aux](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-indep-chart-aux.md) | 278 | `result-track:ea895f2c5090e986b550662bce50f96bfc861a69e65a42ebc7a708f143e71988` |
| 28 | `theorem` | [liftPropWithinAt_indep_chart](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-indep-chart-source-line-286-occurrence-2.md) | 286 | `result-track:6ddfbb29cd0ad1a4f6fc233186d0e651aaf1bcfbd709077dc2cd34a3e57534d2` |
| 29 | `theorem` | [liftPropWithinAt_indep_chart_source](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-indep-chart-source.md) | 297 | `result-track:bac5d3ffc44ee1f8c1db7f9cbc23528265f8e6367e3ad8b10d2ac3f5eff2d31f` |
| 30 | `theorem` | [liftPropWithinAt_indep_chart_target](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-indep-chart-target.md) | 308 | `result-track:c1607f0b00242c9800532a77a0022633704282af4d5bfa96e81b266008cd21fe` |
| 31 | `theorem` | [liftPropWithinAt_indep_chart'](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-indep-chart.md) | 318 | `result-track:59d28d59661387ef9989f3cbe00a3c02d2a858165f951924cdc088da511bd3d0` |
| 32 | `theorem` | [liftPropOn_indep_chart](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropon-indep-chart.md) | 331 | `result-track:9936bc0f21f9d610815993184de6c64736986b5ed955fefda47e8f07c4ca2b9a` |
| 33 | `theorem` | [liftPropWithinAt_inter'](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-inter.md) | 338 | `result-track:ad3ed9fe6f18a821abb56c41dce21609542a64d6fa2a3f2313270deef95ed0bc` |
| 34 | `theorem` | [liftPropWithinAt_inter](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-inter-source-line-345-occurrence-2.md) | 345 | `result-track:dbfca592d264b4cc19f566b54b5b69bd4880688ca2522f589d544aaf18eb8bf1` |
| 35 | `theorem` | [liftPropWithinAt_congr_set](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-congr-set.md) | 349 | `result-track:77a1c5d57fddf7ecc25be46e9a41c36426fee885f4928fc41b4a4900f22a7207` |
| 36 | `theorem` | [liftPropAt_of_liftPropWithinAt](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropat-of-liftpropwithinat.md) | 356 | `result-track:0b73768e6d3bbe4e59cf345b371fdf182d8dc671e4e4fa1883344c7a18417ea3` |
| 37 | `theorem` | [liftPropWithinAt_of_liftPropAt_of_mem_nhds](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-of-liftpropat-of-mem-nhds.md) | 360 | `result-track:209ba4561e6d2aa847902efc2017cbb880095c175ca29148230047873404d0ea` |
| 38 | `theorem` | [liftPropOn_of_locally_liftPropOn](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropon-of-locally-liftpropon.md) | 364 | `result-track:4043c8eca3adee9fa77ece693041eaf4efb5bbfca2a76b4e78f7b7d0899461e7` |
| 39 | `theorem` | [liftProp_of_locally_liftPropOn](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftprop-of-locally-liftpropon.md) | 372 | `result-track:4998cc40146f9dc8280b921c01d3bd82ac2ab4305e64828f6b6d8412e4deeff7` |
| 40 | `theorem` | [liftPropWithinAt_congr_of_eventuallyEq](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-congr-of-eventuallyeq.md) | 378 | `result-track:b1cbee5ca2e043673cdb99adcf9d53d09846980b95e28449d688df5b0e81031c` |
| 41 | `theorem` | [liftPropWithinAt_congr_of_eventuallyEq_of_mem](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-congr-of-eventuallyeq-of-mem.md) | 388 | `result-track:3247399232fb54c1996a03f4a10806ee809e3d039061cbd01b8b612f5cf5118e` |
| 42 | `theorem` | [liftPropWithinAt_congr_iff_of_eventuallyEq](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-congr-iff-of-eventuallyeq.md) | 392 | `result-track:456f204616e387e62b1f4949a4d4b5b80eaff982a1b967e7ce4c982badac1cb0` |
| 43 | `theorem` | [liftPropWithinAt_congr_iff](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-congr-iff.md) | 397 | `result-track:0d935b22087f5b1a2ec3dd4a34054319c695e353b9de113c645fe44a7866f515` |
| 44 | `theorem` | [liftPropWithinAt_congr_iff_of_mem](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-congr-iff-of-mem.md) | 401 | `result-track:ff6d2374b7ee9ab70e37bed82190b6e95e833b15a92bc38c1ba2ad244aae2d5e` |
| 45 | `theorem` | [liftPropWithinAt_congr](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-congr.md) | 405 | `result-track:ac30fd99fe61579dd3c639f209ee1fd4d5a67d6aed619a0883ddde7ff4ae3075` |
| 46 | `theorem` | [liftPropWithinAt_congr_of_mem](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-congr-of-mem.md) | 409 | `result-track:a4d6f0d8af56153b72b1f295ad99dc3c28d519969043132c14ecb427d8d87682` |
| 47 | `theorem` | [liftPropAt_congr_iff_of_eventuallyEq](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropat-congr-iff-of-eventuallyeq.md) | 413 | `result-track:6eb1bcdd35bea37395fb0c9cc0e7d5437ace2d234d51c0f396dd412a1a047ccf` |
| 48 | `theorem` | [liftPropAt_congr_of_eventuallyEq](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropat-congr-of-eventuallyeq.md) | 417 | `result-track:913d0f3607ebaf228fc9a7926d110eb8d45eba74bba05081d872e2235fad0cc5` |
| 49 | `theorem` | [liftPropOn_congr](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropon-congr.md) | 421 | `result-track:c17eb849cb0391f277a2f283453824fc45602d5b8bc487153c177caa326ec89f` |
| 50 | `theorem` | [liftPropOn_congr_iff](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropon-congr-iff.md) | 424 | `result-track:cca494469736a303f8f7ea66f34d7538167d9c61df3d42ac817077a62eb2e46d` |
| 51 | `theorem` | [liftPropWithinAt_mono_of_mem_nhdsWithin](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-mono-of-mem-nhdswithin.md) | 429 | `result-track:0adb35cfa5cfde7aa55d212e910d74833661ea1b186aa90843d5e335a28c5121` |
| 52 | `theorem` | [liftPropWithinAt_mono](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-mono.md) | 440 | `result-track:b978dba4f54d4a9ecc0b12c46d0898a1485b89b562d10bd4be66de9b25542e91` |
| 53 | `theorem` | [liftPropWithinAt_of_liftPropAt](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropwithinat-of-liftpropat.md) | 446 | `result-track:1b7bdb379d5b60eb90cb59abe338cc2675a0461537f6a170a9fbdbd97c2e9662` |
| 54 | `theorem` | [liftPropOn_mono](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropon-mono.md) | 451 | `result-track:d99d5553e59f2ba72176f2678371d96a0ec96172b03fd3c20bcb765421908c93` |
| 55 | `theorem` | [liftPropOn_of_liftProp](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropon-of-liftprop.md) | 455 | `result-track:56a8409c13ec675d648e7990a23dc5e31d7d4755bc9e4b8f347cea215f659c0c` |
| 56 | `theorem` | [liftPropAt_of_mem_maximalAtlas](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropat-of-mem-maximalatlas.md) | 460 | `result-track:5fbc93d2ecb182679bcb3e1f98306cc689da7b5847a539a2a029ac13c832b516` |
| 57 | `theorem` | [liftPropOn_of_mem_maximalAtlas](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropon-of-mem-maximalatlas.md) | 466 | `result-track:af159b4bfe03d249aaa70be6f2cd8026c99001b8f1248a4a701190779740a858` |
| 58 | `theorem` | [liftPropAt_symm_of_mem_maximalAtlas](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropat-symm-of-mem-maximalatlas.md) | 472 | `result-track:84dcbd25561c94319b20a9f441c855f95edfd481aeaacc11b96fcd3c14e4bc31` |
| 59 | `theorem` | [liftPropOn_symm_of_mem_maximalAtlas](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropon-symm-of-mem-maximalatlas.md) | 482 | `result-track:751a7b0ca429f33245821c8d36321cba0173ed0a7453bd446ea0a984afa70210` |
| 60 | `theorem` | [liftPropAt_chart](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropat-chart.md) | 489 | `result-track:5dc62f09d5c558ec0b0bed67606e508c34900258adc76508b3e4653d0cd82271` |
| 61 | `theorem` | [liftPropOn_chart](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropon-chart.md) | 493 | `result-track:f633347acb7b6f0de550b3148ab8f193426d2412a19da0d83c141e72e837754a` |
| 62 | `theorem` | [liftPropAt_chart_symm](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropat-chart-symm.md) | 497 | `result-track:e604643e28152c5bc8741736d49a69c54458b06ffc5e44713b61cd7d620919c3` |
| 63 | `theorem` | [liftPropOn_chart_symm](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropon-chart-symm.md) | 501 | `result-track:a655187f621e66dd8d5d831c40dbb5cda0f30e6c789166d12cda6e0fb3f341a6` |
| 64 | `theorem` | [liftPropAt_of_mem_groupoid](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropat-of-mem-groupoid.md) | 505 | `result-track:dbece5395b1837909e90e9c80c6bc7b4cbee0ea96ccd417a5f8497a4778cb767` |
| 65 | `theorem` | [liftPropOn_of_mem_groupoid](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropon-of-mem-groupoid.md) | 509 | `result-track:8510e6cc6dace54e3adf9f544cf91bee64d655f8f9bf0b04051e13ab464283df` |
| 66 | `theorem` | [liftProp_id](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftprop-id.md) | 513 | `result-track:3ce433da068b000f13ef6d9526d3ef025a142f9d1b2ab2791618ba829ff638b1` |
| 67 | `theorem` | [liftPropAt_iff_comp_subtype_val](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropat-iff-comp-subtype-val.md) | 518 | `result-track:d0c096bef21d23b8b6e3f22469caa9c2b60402bf2910baa8326f0d12bceeffb6` |
| 68 | `theorem` | [liftPropAt_iff_comp_inclusion](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftpropat-iff-comp-inclusion.md) | 527 | `result-track:b23d21ae190dc04d1117cbe606b2d592b5b7658fa7035e85d625382b3d79d736` |
| 69 | `theorem` | [liftProp_subtype_val](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftprop-subtype-val.md) | 538 | `result-track:8115c23e9ef241a4e1ce7363179daaf87b236dd501d6cfbef4c29b303893c56d` |
| 70 | `theorem` | [liftProp_inclusion](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/liftprop-inclusion.md) | 546 | `result-track:73fd92e5fbda52d0a5dd7537a49bb1f9270ddd90baf5e168b43b13219871e750` |
| 71 | `def` | [IsLocalStructomorphWithinAt](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/islocalstructomorphwithinat.md) | 565 | `declaration-track:d8a318b6672c4a8629f39c09e6fd592ae10c5471acc5c3c18b873aa2255ab8d0` |
| 72 | `theorem` | [isLocalStructomorphWithinAt_localInvariantProp](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/islocalstructomorphwithinat-localinvariantprop.md) | 570 | `result-track:58b78f91b99ea3a0062104161c0399a740d231e4a5b430bee0eeca257252c09d` |
| 73 | `theorem` | [Local Invariant Properties Namespaced Lift Prop Within At Congr Set](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/islocalstructomorphwithinat-iff-source-line-612-occurrence-2.md) | 612 | `result-track:e01c12017b811f0813f08adcbc9fb5d161a63e6f16831d82f4d9d8572429c44a` |
| 74 | `theorem` | [Local Invariant Properties Namespaced Lift Prop Within At Congr Set](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/islocalstructomorphwithinat-iff.md) | 634 | `result-track:3e338dddd0652a6f78b1f9eaa0774f7d07c5420383831920bcc53efe27d300df` |
| 75 | `theorem` | [Local Invariant Properties Namespaced Lift Prop Within At Congr Set](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/islocalstructomorphwithinat-source-iff.md) | 647 | `result-track:08e083fc5deb96be37e04c646ef93c0ec1dc39f19c59bc709cc95f712ef79bf0` |
| 76 | `theorem` | [HasGroupoid.comp](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedLiftPropWithinAtCongrSet.lean/declarations/comp.md) | 659 | `result-track:a17f500ce5b7babd1c4bec4061964c90b5e5af472cdd40070e46b105a7e32c5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=11b50d0a1fb9f939ca364ba0c41283a91c75210a68f67de2b93826ea327c3c94 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variant077dfed1d3dadcdcf6b06b603031300de35fe263fa718f53becc087a7006e8aa.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LocalInvariantProperties/Variant077dfed1d3dadcdcf6b06b603031300de35fe263fa718f53becc087a7006e8aa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
