# Verification target: Local Invariant Properties Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5331c9ae9bf2531410ac53149121976f8da9d41",
  "lexical_observation_count": 79,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variant2a62ff6cf8b981e5c26c908c6f89fe2cfc010a5029a69f6e6646941f0505a735.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/index.md) · [Full source](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5331c9ae9bf2531410ac53149121976f8da9d41`.

Source path: `GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variant2a62ff6cf8b981e5c26c908c6f89fe2cfc010a5029a69f6e6646941f0505a735.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocalInvariantProperties/Variant2a62ff6cf8b981e5c26c908c6f89fe2cfc010a5029a69f6e6646941f0505a735.lean.json)

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
| 1 | `structure` | [LocalInvariantProp](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/localinvariantprop.md) | 75 | `declaration-track:f5fa6669d2e28e6caae25a04e8c85473c2976ae65a6159819665b2eb03565bea` |
| 2 | `theorem` | [congr_set](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/congr-set.md) | 89 | `result-track:c5eee34acfae5bd6f4036399fb0d513e1f3c564dc1e499c48ab37e9e60bcd21e` |
| 3 | `theorem` | [is_local_nhds](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/is-local-nhds.md) | 94 | `result-track:6ece157fbe2359523f8f5665fbfa29af48aa8aeca970f2dedf50b484bac1dc7e` |
| 4 | `theorem` | [congr_iff_nhdsWithin](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/congr-iff-nhdswithin.md) | 98 | `result-track:e4f7f66f9c83780292fb2a96b0faec0b009729e1ef51380e55324741ae8bf5b0` |
| 5 | `theorem` | [congr_nhdsWithin](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/congr-nhdswithin-source-line-103-occurrence-2.md) | 103 | `result-track:f002e4a43edbb69859b4136f4cbb767bc790c2e4b67b957483fc95cc9e5a8fea` |
| 6 | `theorem` | [congr_nhdsWithin'](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/congr-nhdswithin.md) | 107 | `result-track:be4f57527f467ceb517b9ca0cf782858f749375deabb5ee815e988d66dc5726a` |
| 7 | `theorem` | [congr_iff](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/congr-iff.md) | 111 | `result-track:08e7583aa7e829c6388751a8e1b1d72bc83d3fbdbddc40abf22be9bdf50d1ab7` |
| 8 | `theorem` | [congr](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/congr-source-line-114-occurrence-2.md) | 114 | `result-track:750a7db438da26d8a014044e432524d8498e8e03c879593a11f33943c35688e6` |
| 9 | `theorem` | [congr'](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/congr.md) | 117 | `result-track:2cbbbbc94a5f7a361638d39b1ecf28b9f8fc14d33274fb6c15bc8342b68a7dd0` |
| 10 | `theorem` | [congr_set_fun](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/congr-set-fun.md) | 120 | `result-track:521833b2654414cd6d377096ed68c113adb924f96c9f05132b6bfd0532393925` |
| 11 | `theorem` | [left_invariance](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/left-invariance.md) | 124 | `result-track:393c4a81a70007a46cd919c0436830fcb91af2971c18d06a33acdbd1a2572a2d` |
| 12 | `theorem` | [right_invariance](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/right-invariance.md) | 141 | `result-track:d7c29537d614051840718e298a29010224fe83c0ba21f65d9ead6f2fc12d9b04` |
| 13 | `structure` | [LiftPropWithinAt](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropwithinat.md) | 165 | `declaration-track:5d76fa0fe8114c7a626110a783059ad5204f61037f3969ec225bc015794f8e84` |
| 14 | `def` | [LiftPropOn](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropon.md) | 173 | `declaration-track:0eedf69b3c3acde9b1c71d0a47b3fccfd5c66ce84a685f845fe152d5512087fd` |
| 15 | `def` | [LiftPropAt](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropat.md) | 179 | `declaration-track:05b5e8e8a7c178ae37a537bf43bbbfc4e1a0d07f5f5909bdeeae496135858787` |
| 16 | `theorem` | [liftPropAt_iff](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropat-iff.md) | 182 | `result-track:5bc0fa1781f3f9107e0bcc5a7907c3e11057b7b0ff40a644436c4e3f70529cf2` |
| 17 | `def` | [LiftProp](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftprop.md) | 190 | `declaration-track:dffda9dc078ffbc29ed401e05154eb28740447958e80cc04cac4a220b681165b` |
| 18 | `theorem` | [liftProp_iff](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftprop-iff.md) | 193 | `result-track:8b922058e2e22ac25810a0c7cea9ac730474829206ef2d3bfa8c7c3c5665dc6f` |
| 19 | `lemma` | [liftPropWithinAt_subtypeVal_comp_iff](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropwithinat-subtypeval-comp-iff.md) | 199 | `result-track:ff00c9e3ea9ad32be930b962753c104e90a4a17ae9ff6a1754521e8872c4c403` |
| 20 | `theorem` | [liftPropWithinAt_univ](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropwithinat-univ.md) | 217 | `result-track:1ce47a2a1ad84ecc1eb5946ed5c728cbaf58184b344b81ffc9122e664f2a5a59` |
| 21 | `theorem` | [liftPropOn_univ](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropon-univ.md) | 219 | `result-track:283052865b9b0131961734c5b43d6ce78c4e5c250af4829b204eedc47d4d4605` |
| 22 | `theorem` | [liftPropWithinAt_self](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropwithinat-self.md) | 222 | `result-track:782f367f9375ac991273bbf4939b00018717883a7c4485fe3378240ac9c4c6b7` |
| 23 | `theorem` | [liftPropWithinAt_self_source](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropwithinat-self-source.md) | 226 | `result-track:6bb259aef15b661f77ef2a339426403540121371a6090c37f3123deee57e1b17` |
| 24 | `theorem` | [liftPropWithinAt_self_target](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropwithinat-self-target.md) | 230 | `result-track:f96ae1081812cb7653e48b2a383de2abeaa0da05cdb969b858ca94931c385a18` |
| 25 | `theorem` | [liftPropWithinAt_iff](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropwithinat-iff.md) | 243 | `result-track:e8368a910813eef410e0e39c6a3a4ecc3ff0526b824993fb672947ef1bf137a2` |
| 26 | `theorem` | [liftPropWithinAt_indep_chart_source_aux](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropwithinat-indep-chart-source-aux.md) | 254 | `result-track:47538a45bd76a5c30f172294b98b6e349bd53393c16be1d2044153f952a2fc27` |
| 27 | `theorem` | [liftPropWithinAt_indep_chart_target_aux2](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropwithinat-indep-chart-target-aux2.md) | 272 | `result-track:096da5f75e5109430909efd92a16d0616488bd7eaffa6c65a0ca629d6c0e1013` |
| 28 | `theorem` | [liftPropWithinAt_indep_chart_target_aux](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropwithinat-indep-chart-target-aux.md) | 284 | `result-track:514feb879554a62cbb3d9f9bebe8a9206f9af188a2665aad8ce20b9aa9e75ac3` |
| 29 | `theorem` | [liftPropWithinAt_indep_chart_aux'](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropwithinat-indep-chart-aux-source-line-301-occurrence-2.md) | 301 | `result-track:c3a362a632cf15146209fa5739bd12db24f3e205ec5f4d437c08eb32963e9d22` |
| 30 | `theorem` | [liftPropWithinAt_indep_chart_aux](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropwithinat-indep-chart-aux.md) | 316 | `result-track:6252ac1b646a28190fa759d0a528089c922893318998ef69ee9ab6baf4d4d45b` |
| 31 | `theorem` | [liftPropWithinAt_indep_chart](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropwithinat-indep-chart-source-line-324-occurrence-2.md) | 324 | `result-track:d6e13b5cccbdd1901e703fd31247c1918adb731cd48e068e4136ee23f4962858` |
| 32 | `theorem` | [liftPropWithinAt_indep_chart_source](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropwithinat-indep-chart-source.md) | 333 | `result-track:939500c83421390dda505fb670e2c0807a7b6a3dedec68e7d643c88b2967b677` |
| 33 | `theorem` | [liftPropWithinAt_indep_chart_target](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropwithinat-indep-chart-target.md) | 342 | `result-track:974379937627ec17a8b9fcdcc45e57c555a43f63e1b370888277917aa9e58f0a` |
| 34 | `theorem` | [liftPropWithinAt_indep_chart'](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropwithinat-indep-chart.md) | 351 | `result-track:58690eb20d8690358122939107e837c27447e7efdb3b188f3aaccac723bf7cfa` |
| 35 | `theorem` | [liftPropOn_indep_chart](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropon-indep-chart.md) | 364 | `result-track:1574393da92c37f0f9031b43584dea786a88a8a70ee001c34e8d65a74d3af360` |
| 36 | `theorem` | [liftPropWithinAt_inter'](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropwithinat-inter-source-line-371-occurrence-2.md) | 371 | `result-track:aaf710d942758dfc47e0e973ea7026ebecdf74405c5cd1072715ad7ca347295a` |
| 37 | `theorem` | [liftPropWithinAt_inter](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropwithinat-inter.md) | 378 | `result-track:62d894de3dbff58df6822c342907a97fc3ea5aca4e216ec0a801a33ad113cf1a` |
| 38 | `theorem` | [liftPropWithinAt_congr_set](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropwithinat-congr-set.md) | 382 | `result-track:7580b836ef9725dcffbfcdc727dcf198ee521958376a92209389a2a592a03cd7` |
| 39 | `theorem` | [liftPropAt_of_liftPropWithinAt](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropat-of-liftpropwithinat.md) | 389 | `result-track:4cbbf501b15f082d8de544dc50ded86c107ea4b6fada39b9813ae0e6b5b7f119` |
| 40 | `theorem` | [liftPropWithinAt_of_liftPropAt_of_mem_nhds](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropwithinat-of-liftpropat-of-mem-nhds.md) | 393 | `result-track:1e1270dc0907761273f18a728f5532ca2bfe2139c4db7ef91ea181e841eb4a80` |
| 41 | `theorem` | [liftPropOn_of_locally_liftPropOn](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropon-of-locally-liftpropon.md) | 397 | `result-track:75e92b6ff0276ef98420b66ca9f0dc0e3440d431119b7abac5c5d763153e6329` |
| 42 | `theorem` | [liftProp_of_locally_liftPropOn](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftprop-of-locally-liftpropon.md) | 405 | `result-track:a7d3e9d18aec94e8b631fbd9165ebc8a41dfb18236c6cb832a64e157a17ea444` |
| 43 | `theorem` | [liftPropWithinAt_congr_of_eventuallyEq](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropwithinat-congr-of-eventuallyeq.md) | 411 | `result-track:501062dbe5f0e57d5aa3d634bd0ea579fca41cba6364aa865fecec5e6ec21dfb` |
| 44 | `theorem` | [liftPropWithinAt_congr_of_eventuallyEq_of_mem](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropwithinat-congr-of-eventuallyeq-of-mem.md) | 421 | `result-track:6298fab574542fb86a26bacf6231a7d61a43f328dc4568c828381dd204f91702` |
| 45 | `theorem` | [liftPropWithinAt_congr_iff_of_eventuallyEq](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropwithinat-congr-iff-of-eventuallyeq.md) | 425 | `result-track:6c2a7197dc0dec69bbdf00aa583b9978998cd889db54b1c4106040bb3e00b348` |
| 46 | `theorem` | [liftPropWithinAt_congr_iff](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropwithinat-congr-iff.md) | 430 | `result-track:7db4a610f0ef138818471b6344f25bd746b885d6b4aca23fc9567700f2399138` |
| 47 | `theorem` | [liftPropWithinAt_congr_iff_of_mem](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropwithinat-congr-iff-of-mem.md) | 434 | `result-track:73d7807dcf223defb8365146260f6166614e8b912f1a4d3942933a13a89f06bc` |
| 48 | `theorem` | [liftPropWithinAt_congr](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropwithinat-congr.md) | 438 | `result-track:8445f4b1f2074a4a158269cb22c98804ae2462abe5a7627e9836524030710512` |
| 49 | `theorem` | [liftPropWithinAt_congr_of_mem](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropwithinat-congr-of-mem.md) | 442 | `result-track:6fbdfaf76418348e45d92931d3c9f561d0b213b1cb4d25234e24543ff21990ce` |
| 50 | `theorem` | [liftPropAt_congr_iff_of_eventuallyEq](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropat-congr-iff-of-eventuallyeq.md) | 446 | `result-track:adb2b3c63c4b2c4622a3fdf3f405c8b6af3451cc94bbffed5702bcaa2a179158` |
| 51 | `theorem` | [liftPropAt_congr_of_eventuallyEq](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropat-congr-of-eventuallyeq.md) | 450 | `result-track:407758171ed9f1de42bcccb45a8a35d5d85577e6c96f23986e7ec72385636366` |
| 52 | `theorem` | [liftPropOn_congr](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropon-congr.md) | 454 | `result-track:a33630c5f1677c0fb639ea486c6f5fe0518cb12d01f320a6d30eccd60a49476b` |
| 53 | `theorem` | [liftPropOn_congr_iff](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropon-congr-iff.md) | 457 | `result-track:dac5f413b8438ec0847cf2f51b999f4db6611e07d0d1e1581209c0731497f414` |
| 54 | `theorem` | [liftPropWithinAt_mono_of_mem_nhdsWithin](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropwithinat-mono-of-mem-nhdswithin.md) | 462 | `result-track:dd0a00f14b47f651151242b5c4421fcd04c586a777cfbc227cab241d6dc1703f` |
| 55 | `theorem` | [liftPropWithinAt_mono](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropwithinat-mono.md) | 470 | `result-track:8d5e149358ab92a03f5bd5d9561a04ba067943a0335ae367189bf5e3df1efdf8` |
| 56 | `theorem` | [liftPropWithinAt_of_liftPropAt](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropwithinat-of-liftpropat.md) | 476 | `result-track:af84a5e5163f30e29f16a50b3bc8c042ac97a7acd4aa1c82b8ccd7005b871145` |
| 57 | `theorem` | [liftPropOn_mono](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropon-mono.md) | 481 | `result-track:d204edfccb27544b649fdb3ac4a09e1577e22a0e00a60460535329fa44a2ce2b` |
| 58 | `theorem` | [liftPropOn_of_liftProp](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropon-of-liftprop.md) | 485 | `result-track:747cf61a50310bff39bfd1ef330f2632628cb8630eb1df6bbfd4493ad086c6b6` |
| 59 | `theorem` | [liftPropAt_of_mem_maximalAtlas](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropat-of-mem-maximalatlas.md) | 490 | `result-track:83fc9440c7d9acaba9b3bf032c04fe993c66fa3eadc386521dc6fe75b1f2564c` |
| 60 | `theorem` | [liftPropOn_of_mem_maximalAtlas](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropon-of-mem-maximalatlas.md) | 496 | `result-track:f6a2e77171cdeabd02cbefa705127844fbc40a8fd0bd4b4dfc2b889a41dff22c` |
| 61 | `theorem` | [liftPropAt_symm_of_mem_maximalAtlas](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropat-symm-of-mem-maximalatlas.md) | 502 | `result-track:0a822fea056d5d15c025d5d10517acbb8ea315b54a1f1aafada39c2964121da7` |
| 62 | `theorem` | [liftPropOn_symm_of_mem_maximalAtlas](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropon-symm-of-mem-maximalatlas.md) | 512 | `result-track:826ae5e7894206e84202428485dc1e8d1bfeb82702b0f823b2bbf92b36084572` |
| 63 | `theorem` | [liftPropAt_chart](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropat-chart.md) | 519 | `result-track:fe136f6d65b2e3827d711cb7169e541902b6e07ce933b0686e78a7d17efa5de8` |
| 64 | `theorem` | [liftPropOn_chart](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropon-chart.md) | 523 | `result-track:b039f8a861223765d1b1b46c1453d2d7d9394db0ac21d05bb191630425428463` |
| 65 | `theorem` | [liftPropAt_chart_symm](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropat-chart-symm.md) | 527 | `result-track:9359072430955a004c4bb1fafe79693eb7994beb553e38d894cd6275c6312477` |
| 66 | `theorem` | [liftPropOn_chart_symm](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropon-chart-symm.md) | 531 | `result-track:88e9c474c14578c199369f7ae3e7d565ef560b41b0794404064ec02678a995e7` |
| 67 | `theorem` | [liftPropAt_of_mem_groupoid](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropat-of-mem-groupoid.md) | 535 | `result-track:14f9dda13c0ca50f4147a957c5138c2324e82345363689ba80a5c911ae5df52b` |
| 68 | `theorem` | [liftPropOn_of_mem_groupoid](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropon-of-mem-groupoid.md) | 539 | `result-track:296b0f8f278b26dbf6db70da640d75005e905adfafe64020e7797537c5157233` |
| 69 | `theorem` | [liftProp_id](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftprop-id.md) | 543 | `result-track:2b225af05bdacd2a6b7138c22592b1b40e72714647552b6ada41390de8df9e4c` |
| 70 | `theorem` | [liftPropAt_iff_comp_subtype_val](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropat-iff-comp-subtype-val.md) | 548 | `result-track:2c73477f85b8926d916de97e182f12f6a1cbc9cccaf7412d3359323135e405b4` |
| 71 | `theorem` | [liftPropAt_iff_comp_inclusion](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftpropat-iff-comp-inclusion.md) | 557 | `result-track:11ca73a28a6d9172858b102e3b78a90c824bbbfe4e97ddbf1785344c0b3873b0` |
| 72 | `theorem` | [liftProp_subtype_val](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftprop-subtype-val.md) | 568 | `result-track:f24baa4edb1e2aca8c18fa706481f20fbfd18c529ebd5bf1350b3541e1c30545` |
| 73 | `theorem` | [liftProp_inclusion](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/liftprop-inclusion.md) | 576 | `result-track:c5649f34ad826a32c70df4862780df2bedf9caa3c1632425b274580e24927d01` |
| 74 | `def` | [IsLocalStructomorphWithinAt](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/islocalstructomorphwithinat.md) | 595 | `declaration-track:9e3e6acd899cd6d149e56ed35466ac715e1cbe146ba7bb5112926e4c7b6f8f09` |
| 75 | `theorem` | [isLocalStructomorphWithinAt_localInvariantProp](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/islocalstructomorphwithinat-localinvariantprop.md) | 600 | `result-track:6930f9cefe50902aa48594b1b98d968fc41534f6c3f3cb8b955c5f2a609b945c` |
| 76 | `theorem` | [Local Invariant Properties Namespaced Public](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/islocalstructomorphwithinat-iff-source-line-642-occurrence-2.md) | 642 | `result-track:b458fadc24c951cd532cd13c604a9472c47586f5d7c1966ea5f6265689feab82` |
| 77 | `theorem` | [Local Invariant Properties Namespaced Public](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/islocalstructomorphwithinat-iff.md) | 664 | `result-track:06e6ea042f92441e6fabdaf3370cd67782240bb95744548041ff3c3d2742f025` |
| 78 | `theorem` | [Local Invariant Properties Namespaced Public](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/islocalstructomorphwithinat-source-iff.md) | 677 | `result-track:e5106c3bd4fdc32dc3a32daf39441496785184e43b447c0e6deed8b5c6d2a766` |
| 79 | `theorem` | [HasGroupoid.comp](../../../../DifferentialGeometry/LocalInvariantPropertiesNamespacedPublic.lean/declarations/comp.md) | 689 | `result-track:7d08128c75f37771e6697a74631c78e101483a3d98571783538c85a85667baf4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=166aaa3ba7ab5b0f2865a67baa07f69da6f365f2af7faf0325d273d0d0f8308d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LocalInvariantProperties/Variant2a62ff6cf8b981e5c26c908c6f89fe2cfc010a5029a69f6e6646941f0505a735.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LocalInvariantProperties/Variant2a62ff6cf8b981e5c26c908c6f89fe2cfc010a5029a69f6e6646941f0505a735.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
