# Verification target: Cont Diff Defs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0727b456665e9979d92cea6b8c838d7d8403f214",
  "lexical_observation_count": 151,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantd409bd3dfc60968e59f61f9abb80513ff61ec0fb1238440104ad93e6afedeb7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/ContDiffDefs.lean/index.md) · [Full source](../../../../RealFunctions/ContDiffDefs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0727b456665e9979d92cea6b8c838d7d8403f214`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantd409bd3dfc60968e59f61f9abb80513ff61ec0fb1238440104ad93e6afedeb7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantd409bd3dfc60968e59f61f9abb80513ff61ec0fb1238440104ad93e6afedeb7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Within` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.FTaylorSeries` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ContDiffWithinAt](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat.md) | 125 | `declaration-track:43b4f23e8e9d0ef665e07393d1fc0b0f031034fbf79bd04e216c085082a0fe8e` |
| 2 | `lemma` | [HasFTaylorSeriesUpToOn.analyticOn](../../../../RealFunctions/ContDiffDefs.lean/declarations/hasftaylorseriesuptoon-analyticon.md) | 132 | `result-track:f90baab9f67669b9bebef4b035c09ef5d1ef308956ee031045ec365d9b94f6fe` |
| 3 | `lemma` | [ContDiffWithinAt.analyticOn](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-analyticon.md) | 140 | `result-track:8a8ef34a98caf6aa322ecb8ee4a924c557724340eee8296bf7a3ff93146f10cd` |
| 4 | `lemma` | [ContDiffWithinAt.analyticWithinAt](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-analyticwithinat.md) | 145 | `result-track:f6573313372de304ab502175186da4076b8256277b6fb8e03d9df6d6dca7909e` |
| 5 | `theorem` | [contDiffWithinAt_omega_iff_analyticWithinAt](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-omega-iff-analyticwithinat.md) | 151 | `result-track:7de47f4924c8ef3d05586977dce233b1e31004badb9a4ee5b76cfe142ec15d13` |
| 6 | `theorem` | [contDiffWithinAt_nat](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-nat.md) | 157 | `result-track:396fc6cdec4c34269779055053276081836f8ebbeba43b14afdf6464dd61e6b6` |
| 7 | `lemma` | [contDiffWithinAt_iff_of_ne_infty](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-iff-of-ne-infty.md) | 165 | `result-track:9bedb72551bdd91185004dc69281940dafcd45cc6d4f284aef76271e0610e6fd` |
| 8 | `theorem` | [ContDiffWithinAt.of_le](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-of-le.md) | 175 | `result-track:e91095be023ff9d1c69a35d0bca907f1d28a712dfb0b1f596ecb1e604b4e742c` |
| 9 | `theorem` | [AnalyticWithinAt.contDiffWithinAt](../../../../RealFunctions/ContDiffDefs.lean/declarations/analyticwithinat-contdiffwithinat.md) | 191 | `result-track:48f435f0de7f6b5248165e1b7ee06c0d5a26fc78ca07e45b17924bb0c2c2dc9e` |
| 10 | `theorem` | [contDiffWithinAt_iff_forall_nat_le](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-iff-forall-nat-le.md) | 195 | `result-track:819c34d01969ef27ad85c8899d8adc607d474fa7a3768b20684b10de7aa28832` |
| 11 | `theorem` | [contDiffWithinAt_infty](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-infty.md) | 199 | `result-track:75ace46ca2cf881ef0cf34ee50f869bcbc5d56bfa968f4598927249e1c254580` |
| 12 | `theorem` | [ContDiffWithinAt.continuousWithinAt](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-continuouswithinat.md) | 205 | `result-track:b5eb441b875dc4a435c757c8c9b3717979704cc55be96f2b1d4ea6c83c5b30d2` |
| 13 | `theorem` | [ContDiffWithinAt.congr_of_eventuallyEq](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-congr-of-eventuallyeq.md) | 214 | `result-track:0fb29d4c10196ede979c02ea639e322c28a60c72ccc0f87f50aa7fe1e6f88e68` |
| 14 | `theorem` | [Filter.EventuallyEq.congr_contDiffWithinAt](../../../../RealFunctions/ContDiffDefs.lean/declarations/filter-eventuallyeq-congr-contdiffwithinat.md) | 228 | `result-track:c582822ff76ba7cbe9044e2c86c20cd4e27db7019ede9963c3493603d8e0461f` |
| 15 | `theorem` | [ContDiffWithinAt.congr_of_eventuallyEq_insert](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-congr-of-eventuallyeq-insert.md) | 232 | `result-track:45db8020a1fab61a9a90863c698e88acab476237f9d5501dfd4b4765ae6dab6e` |
| 16 | `theorem` | [Filter.EventuallyEq.congr_contDiffWithinAt_of_insert](../../../../RealFunctions/ContDiffDefs.lean/declarations/filter-eventuallyeq-congr-contdiffwithinat-of-insert.md) | 237 | `result-track:68641bf9566f338e5240d79f33590bb709537b0be7670d7f6be2a33df96fe1f0` |
| 17 | `theorem` | [ContDiffWithinAt.congr_of_eventuallyEq_of_mem](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-congr-of-eventuallyeq-of-mem.md) | 241 | `result-track:f69f4c9e21fc4e09c5e88ab99d551b14c49615461f08b4b01620d7ab4a9720a6` |
| 18 | `theorem` | [Filter.EventuallyEq.congr_contDiffWithinAt_of_mem](../../../../RealFunctions/ContDiffDefs.lean/declarations/filter-eventuallyeq-congr-contdiffwithinat-of-mem.md) | 245 | `result-track:287441657f7dc287842e96cb0f857dbcbaef4bdb8be2ca6ce23b0c3adddb0a07` |
| 19 | `theorem` | [ContDiffWithinAt.congr](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-congr-source-edition-2.md) | 249 | `result-track:a6f270f2064ddd97adee087730f9e743dd8b1ce554e259071e1fe377479e9e9a` |
| 20 | `theorem` | [contDiffWithinAt_congr](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-congr.md) | 253 | `result-track:5858df8ad81c5646f3cf9a05888bd004efda5be068663720891ebcaefdde2096` |
| 21 | `theorem` | [ContDiffWithinAt.congr_of_mem](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-congr-of-mem.md) | 257 | `result-track:916c6628ee7e561ef028acf33f595b837f3006d87e5dc4a10befe7fa96afa1f7` |
| 22 | `theorem` | [contDiffWithinAt_congr_of_mem](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-congr-of-mem-source-edition-2.md) | 261 | `result-track:a0c70847d301116b7b6cf3f163f7f24b6b796fb394d6557c0491e5a1dd3405fb` |
| 23 | `theorem` | [ContDiffWithinAt.congr_of_insert](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-congr-of-insert-source-edition-2.md) | 265 | `result-track:9ae7641e37c811ba89c49161d60256ca39c9b05d8759bf9847d3a56d9249c3e9` |
| 24 | `theorem` | [contDiffWithinAt_congr_of_insert](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-congr-of-insert.md) | 269 | `result-track:09bd3b45a050075131af8f94a196249f409e163ecdcacc995b74d1935a32a0b4` |
| 25 | `theorem` | [ContDiffWithinAt.mono_of_mem_nhdsWithin](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-mono-of-mem-nhdswithin.md) | 273 | `result-track:d302cfc60654ada0e3e26f8bcc6b5c8552b1a56f87e11e92e52c5701df696b6b` |
| 26 | `theorem` | [ContDiffWithinAt.mono](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-mono.md) | 287 | `result-track:920840c37263a8c249832d209d504d320a32e90a2833a09a3df47c5a136acd15` |
| 27 | `theorem` | [ContDiffWithinAt.congr_mono](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-congr-mono.md) | 291 | `result-track:3190bc1aa79e480ab29dca887b2e49180d5e8d6b10fac87f0ec8bd97784576ca` |
| 28 | `theorem` | [ContDiffWithinAt.congr_set](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-congr-set-source-edition-2.md) | 296 | `result-track:73181a853992a9bcc513c22c4b56d2e463e7c897db822ef92f07b930d19ab99a` |
| 29 | `theorem` | [contDiffWithinAt_congr_set](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-congr-set.md) | 304 | `result-track:5d5af3be5598432d9960f4b504d07346041d25d6179efd18b59aef0f204fa584` |
| 30 | `theorem` | [contDiffWithinAt_inter'](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-inter-source-edition-2.md) | 311 | `result-track:d24bb6e535936eac1a323a0372a516a3bdf23921ff975b801e3df961cdbd488f` |
| 31 | `theorem` | [contDiffWithinAt_inter](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-inter.md) | 315 | `result-track:113b59c55a72f62d395a51cc451b4263dcc247afff775767c7347c7a25a7dcb6` |
| 32 | `theorem` | [contDiffWithinAt_insert_self](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-insert-self.md) | 319 | `result-track:cf1e51a9287f9a13d6124b501a33f06531439873001a0611a1b41e1388a577fc` |
| 33 | `theorem` | [contDiffWithinAt_insert](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-insert.md) | 325 | `result-track:62e55e863df01cba5c137987d1c46f178f7114dc068cc85ed58d0b56f5fbe7a8` |
| 34 | `theorem` | [ContDiffWithinAt.insert](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-insert-source-edition-2.md) | 335 | `result-track:a2363af4cd0adae3d890cade882d18c664e00bf62377b10347dabbb94750c3b0` |
| 35 | `theorem` | [contDiffWithinAt_diff_singleton](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-diff-singleton.md) | 339 | `result-track:284c62430009694e59f25f9e59d139ba46888c6394824e628e8a2f71cce051a9` |
| 36 | `theorem` | [ContDiffWithinAt.differentiableWithinAt'](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-differentiablewithinat-source-edition-2.md) | 345 | `result-track:5a579c6a48c1c81302356ec4042c6ee4b2706ea53132127da02e028a0539f2e0` |
| 37 | `theorem` | [ContDiffWithinAt.differentiableWithinAt](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-differentiablewithinat.md) | 353 | `result-track:59c7900d595526d8a11906c51254022c0bd919adb8cf38228d903a6015f67841` |
| 38 | `theorem` | [contDiffWithinAt_succ_iff_hasFDerivWithinAt](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-succ-iff-hasfderivwithinat.md) | 359 | `result-track:2b4076e8006b7b4dbd1d05217f52fd1e54f36a229574d523d01447d9c0b19ad4` |
| 39 | `theorem` | [contDiffWithinAt_succ_iff_hasFDerivWithinAt'](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-succ-iff-hasfderivwithinat-source-edition-2.md) | 428 | `result-track:2dcc50204dda431c0d2a2419ee2d26b7423676544b1b7588eabcee347dc81c93` |
| 40 | `def` | [ContDiffOn](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon.md) | 461 | `declaration-track:be16fc0300ddc01a13ba39c9f98bf4eb2a02ba5969820c496875a0bcff698722` |
| 41 | `theorem` | [HasFTaylorSeriesUpToOn.contDiffOn](../../../../RealFunctions/ContDiffDefs.lean/declarations/hasftaylorseriesuptoon-contdiffon.md) | 464 | `result-track:b167b13d8a5467384a5714cc3f0bbd4690e75ccee8f965e7e2988b9b6479fef1` |
| 42 | `theorem` | [ContDiffOn.contDiffWithinAt](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-contdiffwithinat.md) | 471 | `result-track:605974d8b683c31354ec284213a4e66a092db1bf0407fea853647976bd846ab9` |
| 43 | `theorem` | [ContDiffOn.of_le](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-of-le.md) | 476 | `result-track:00d188a48d4d1164d52f5d01a4e7183101e24017ce66433f4957efcdc0145dbe` |
| 44 | `theorem` | [ContDiffWithinAt.contDiffOn'](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-contdiffon.md) | 479 | `result-track:23c5eec11c82aa311d88d136efd50bdfb8c4f23688f03c4741088115cce27448` |
| 45 | `theorem` | [ContDiffWithinAt.contDiffOn](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-contdiffon-source-edition-2.md) | 500 | `result-track:34a3f18ddd767fd5edb3c1481f0dcd504aab4dcc9ddde126cded2703218aaa37` |
| 46 | `theorem` | [ContDiffOn.analyticOn](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-analyticon.md) | 506 | `result-track:4c017dd4ce76cd379b393f954f2ddad558250e6575037486df131fc961fc80bf` |
| 47 | `theorem` | [contDiffWithinAt_iff_contDiffOn_nhds](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-iff-contdiffon-nhds.md) | 511 | `result-track:b2e102e938bfc7f5fbac7b38644468bea60d52799be959bc6dd353df4901d860` |
| 48 | `theorem` | [ContDiffWithinAt.eventually](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-eventually.md) | 520 | `result-track:4533478e94823ceb942e90a325c51ba0ed0b382c4743e07fd113823cf70c444b` |
| 49 | `theorem` | [ContDiffOn.of_succ](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-of-succ.md) | 528 | `result-track:b753f1d7bde1124a56569bd6f7cc5462f80e1bd3288c6a053ee8f94a0ef8d40f` |
| 50 | `theorem` | [ContDiffOn.one_of_succ](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-one-of-succ.md) | 531 | `result-track:7f3f8d5d6a44d514b6bcb294c15722c906517270cf49b02c6c6e0bfd5539a08f` |
| 51 | `theorem` | [contDiffOn_iff_forall_nat_le](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-iff-forall-nat-le.md) | 534 | `result-track:827b56359e6e5a7e0ed85276e77479fc38bb2a998a16e0d706d7e5e00b400eb8` |
| 52 | `theorem` | [contDiffOn_infty](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-infty.md) | 538 | `result-track:2b0a73049aa76b6b9801bcb7cd0a67f04af043a80776ab0261078f87aebc5ba0` |
| 53 | `theorem` | [contDiffOn_all_iff_nat](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-all-iff-nat.md) | 545 | `result-track:16d1415409847580d9d3d613683c7045c1c2d85d79c939f9ab47254eadb94f4f` |
| 54 | `theorem` | [ContDiffOn.continuousOn](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-continuouson.md) | 551 | `result-track:d4848bb35449291900da32f5a175f22df68f31fe4ec61de9017a742e94940518` |
| 55 | `theorem` | [ContDiffOn.continuousOn_zero](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-continuouson-zero.md) | 555 | `result-track:3c583a5f802611cada84a630c6c6a2fa618764180e944fe6fc5b84859d08baff` |
| 56 | `theorem` | [ContDiffOn.congr](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-congr.md) | 558 | `result-track:10e5c64915255dc14e113e0977a7ed80831ccd2560945e347a6f48815d9d400e` |
| 57 | `theorem` | [contDiffOn_congr](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-congr-source-edition-2.md) | 561 | `result-track:195915cbd09b820a3e0b5f62cd036dc8e258320c36fec6a3a27e86437989e4c7` |
| 58 | `theorem` | [ContDiffOn.mono](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-mono.md) | 564 | `result-track:cc9dd4b2b13e1bfb35ff290690acb53a08261086ca7186bcb052bf4911907c7b` |
| 59 | `theorem` | [ContDiffOn.congr_mono](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-congr-mono.md) | 567 | `result-track:bfe2aec95e15d5a7464c9948e43f4cdae086440237fd3fb704068b025cb45de6` |
| 60 | `theorem` | [ContDiffOn.differentiableOn](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-differentiableon.md) | 572 | `result-track:6e9568f65deb5fa60fc17b5ce900bb7db6be03626fc2dfc10269658174772d23` |
| 61 | `theorem` | [ContDiffOn.differentiableOn_one](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-differentiableon-one.md) | 576 | `result-track:afe81ce026c715a8f77319b0148e5f8a33cf4438e7775b7e8e59345b09c1a0e0` |
| 62 | `theorem` | [contDiffOn_of_locally_contDiffOn](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-of-locally-contdiffon.md) | 580 | `result-track:63b5adda84be1655610301b024aab45af0549d1f3eed1cccc9d3fe50008e3b74` |
| 63 | `theorem` | [contDiffOn_succ_iff_hasFDerivWithinAt](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-succ-iff-hasfderivwithinat.md) | 588 | `result-track:f8691d35dc179e7e0112a4f7c6e4b17f9d58aa4162cc534fa217e23dfd30b4bd` |
| 64 | `theorem` | [contDiffOn_zero](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-zero.md) | 612 | `result-track:77b5bb82418d7ccf09781856fa17b8f90ceb2fb48b0d076e9210d88d5c006275` |
| 65 | `theorem` | [contDiffWithinAt_zero](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-zero.md) | 620 | `result-track:648a914f63ca84655fe8a223cd3707f488f4a83237db7a1f16032a395aa8ee66` |
| 66 | `theorem` | [ContDiffOn.ftaylorSeriesWithin](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-ftaylorserieswithin.md) | 636 | `result-track:7b58602ffa738cc1ec137545e3bb6d22bc1bced506d78fc077a9a215ca66ef18` |
| 67 | `theorem` | [iteratedFDerivWithin_subset](../../../../RealFunctions/ContDiffDefs.lean/declarations/iteratedfderivwithin-subset.md) | 679 | `result-track:588ed3e2b963612ec1f120b72786bbe9879844431a0c0c8a57b871f78c674740` |
| 68 | `theorem` | [ContDiffWithinAt.eventually_hasFTaylorSeriesUpToOn](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-eventually-hasftaylorseriesuptoon.md) | 684 | `result-track:61d219106d379b2058dcd4da6ef389def221c5658606c1b8f4b2816a4bd43db1` |
| 69 | `theorem` | [AnalyticOn.contDiffOn](../../../../RealFunctions/ContDiffDefs.lean/declarations/analyticon-contdiffon.md) | 699 | `result-track:ba421a0b5c43113684646fff494e1b2d6ad56cfc0f4eadbf38fdfe687a770bfb` |
| 70 | `theorem` | [AnalyticOnNhd.contDiffOn](../../../../RealFunctions/ContDiffDefs.lean/declarations/analyticonnhd-contdiffon.md) | 711 | `result-track:487dc20f981a5e89623c0fea6b839de397e4386ce4eedd3fd23ec7d688042636` |
| 71 | `theorem` | [AnalyticOn.contDiffOn_of_completeSpace](../../../../RealFunctions/ContDiffDefs.lean/declarations/analyticon-contdiffon-of-completespace.md) | 715 | `result-track:ddaa963d8405a6bfb7cd1433ad41426220977a5f9a244fa6114ca98123644d51` |
| 72 | `theorem` | [AnalyticOnNhd.contDiffOn_of_completeSpace](../../../../RealFunctions/ContDiffDefs.lean/declarations/analyticonnhd-contdiffon-of-completespace.md) | 720 | `result-track:d394813ab948602157d99975aaad0523bb8b83ecd99996d566d010682a1aed8c` |
| 73 | `theorem` | [contDiffOn_of_continuousOn_differentiableOn](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-of-continuouson-differentiableon.md) | 724 | `result-track:95dd395ebef8c0863983a1e69525a944f1da121688bdac4ca537e599e6125ba8` |
| 74 | `theorem` | [contDiffOn_of_differentiableOn](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-of-differentiableon.md) | 741 | `result-track:d50d9076ab505255b5dffec708ddc3a329c0905b2c9610caf4ffd0cd5998904e` |
| 75 | `theorem` | [contDiffOn_of_analyticOn_iteratedFDerivWithin](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-of-analyticon-iteratedfderivwithin.md) | 747 | `result-track:f27ea5ecdf7e30075274ff6740b4ed8b60c9a9e42733503153e62ca5b86a3722` |
| 76 | `theorem` | [contDiffOn_omega_iff_analyticOn](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-omega-iff-analyticon.md) | 766 | `result-track:5eeff306f6c740974bfa2cb54f32429ef3050d8d4d0875c9ff28886ef3fd4daf` |
| 77 | `theorem` | [ContDiffOn.continuousOn_iteratedFDerivWithin](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-continuouson-iteratedfderivwithin.md) | 770 | `result-track:626b48eaeac84a1b772b2e7285ce5660bc88d96dcc0d403dae5b5b82782c4628` |
| 78 | `theorem` | [ContDiffOn.differentiableOn_iteratedFDerivWithin](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-differentiableon-iteratedfderivwithin.md) | 774 | `result-track:acbb0cfc731eaf29b00247128ff62b2c2a88da3298dcb04cf9a0ef660b9af1db` |
| 79 | `theorem` | [ContDiffWithinAt.differentiableWithinAt_iteratedFDerivWithin](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-differentiablewithinat-iteratedfderivwithin.md) | 782 | `result-track:a47fb47374c4607c4ab2df408b7983c225aa76639069fb42a64e77b2c2ded042` |
| 80 | `theorem` | [contDiffOn_iff_continuousOn_differentiableOn](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-iff-continuouson-differentiableon.md) | 802 | `result-track:536a3d0fa08f4dfcaecb77afdb927b8dca9f6c299be7e9df537d11f1844e4386` |
| 81 | `theorem` | [contDiffOn_nat_iff_continuousOn_differentiableOn](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-nat-iff-continuouson-differentiableon.md) | 810 | `result-track:83df804713a2f6d49ed53f58cdbb0602fbd78a24db2214f4aa3d6bbf79a91313` |
| 82 | `theorem` | [contDiffOn_succ_of_fderivWithin](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-succ-of-fderivwithin.md) | 817 | `result-track:84845f2e7e20ec6f741b3af49e10df8cfad3ca7e6aa4470e22bbfd124974b33c` |
| 83 | `theorem` | [contDiffOn_of_analyticOn_of_fderivWithin](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-of-analyticon-of-fderivwithin.md) | 834 | `result-track:af570b07bae4ae27d3e569580287cb548811feac6d800cda5fb33f8dbe927547` |
| 84 | `theorem` | [contDiffOn_succ_iff_fderivWithin](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-succ-iff-fderivwithin.md) | 841 | `result-track:54a6107070cff1c82c65085bac88590d0d040901750c3f74bf62e5f06c92a886` |
| 85 | `theorem` | [contDiffOn_succ_iff_hasFDerivWithinAt_of_uniqueDiffOn](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-succ-iff-hasfderivwithinat-of-uniquediffon.md) | 868 | `result-track:7a81dd98defa4e1ef7d332e343c19be4c09d456bccf027bd54712320ab931f56` |
| 86 | `theorem` | [contDiffOn_infty_iff_fderivWithin](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-infty-iff-fderivwithin.md) | 881 | `result-track:0a7cdfa5fa897e7b7962546f2326613b845aa6c06a1b36e5c7848bfa589c0c24` |
| 87 | `theorem` | [contDiffOn_succ_iff_fderiv_of_isOpen](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-succ-iff-fderiv-of-isopen.md) | 891 | `result-track:7d2a863418f0ae80ae4a57d902a4b5e68690f13583815b85d80728e5b7bb9c30` |
| 88 | `theorem` | [contDiffOn_infty_iff_fderiv_of_isOpen](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-infty-iff-fderiv-of-isopen.md) | 898 | `result-track:41780276949701c062e10e86dbc93ed4464980811e127be414037428bb62ed21` |
| 89 | `theorem` | [ContDiffOn.fderivWithin](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-fderivwithin.md) | 906 | `result-track:d102b377577b5957536b07bf880db207c95cb2d92b1462db8d9f6f57ba0ec97b` |
| 90 | `theorem` | [ContDiffOn.fderiv_of_isOpen](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-fderiv-of-isopen.md) | 910 | `result-track:cecf1feab74e95b2449fb69e317e5967044d0b03418204bb86bd46ffff7242f5` |
| 91 | `theorem` | [ContDiffOn.continuousOn_fderivWithin](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-continuouson-fderivwithin.md) | 914 | `result-track:c0da744523858f50ec9635856db27f432bbb220810a8f6bacae92f56a16bb2ca` |
| 92 | `theorem` | [ContDiffOn.continuousOn_fderiv_of_isOpen](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-continuouson-fderiv-of-isopen.md) | 919 | `result-track:279753971e2118e1e0e17f5f7302d422d22f4ced64f2aa2a356780b9b82371df` |
| 93 | `def` | [ContDiffAt](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffat.md) | 931 | `declaration-track:d3cf5bdf31bc801d0e628e03ec38332e8068622c6e5e6c132e0144a8d10c8ab3` |
| 94 | `theorem` | [contDiffWithinAt_univ](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-univ.md) | 934 | `result-track:8bff6e09e81dab7fe21668d9c2b4fef2ceca38d9760e0c83de03e49c05cea94c` |
| 95 | `theorem` | [contDiffAt_infty](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffat-infty.md) | 937 | `result-track:c6d91e5368d7941dcf34b4fe3ebdb7df151202a788543fb4b2537e31bdc20b8e` |
| 96 | `theorem` | [ContDiffAt.contDiffWithinAt](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffat-contdiffwithinat.md) | 943 | `result-track:7c142bbe759446d04e04e7ef768b498247170ad8fd9d082f38fdb99329b0b591` |
| 97 | `theorem` | [ContDiffWithinAt.contDiffAt](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-contdiffat.md) | 947 | `result-track:3be208f219d18a90e2080359d703b4c70f368bd3ad7f1f75d038e1ed87ba88cd` |
| 98 | `theorem` | [contDiffWithinAt_iff_contDiffAt](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-iff-contdiffat.md) | 950 | `result-track:cedd3a1351f93bb161abbdfcaefcfdbc1de6b109fc3e78258961250c19f73d31` |
| 99 | `theorem` | [IsOpen.contDiffOn_iff](../../../../RealFunctions/ContDiffDefs.lean/declarations/isopen-contdiffon-iff.md) | 954 | `result-track:d4ba3537362301e8f34eeae692da28408cb38c0b2784bc98d3f414b4f7e0286b` |
| 100 | `theorem` | [ContDiffOn.contDiffAt](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-contdiffat.md) | 959 | `result-track:109cea0eb69a92c4408c6828ec2dd56b8ddff4becdcf4d81489ccc2d3baa5720` |
| 101 | `theorem` | [ContDiffAt.congr_of_eventuallyEq](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffat-congr-of-eventuallyeq.md) | 963 | `result-track:08c224eb56851c7a2a8f43090c860a228958ff67a50b1728f961b60e43652d48` |
| 102 | `theorem` | [ContDiffAt.of_le](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffat-of-le.md) | 967 | `result-track:a65483e0208b482865473d371f32d8be3c9ef26e6b4eb0fbae9ea0a83011adab` |
| 103 | `theorem` | [ContDiffAt.continuousAt](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffat-continuousat.md) | 971 | `result-track:a144b262337d700a516d61423fd806d4599a13d49d238e3905da3025843cfb9a` |
| 104 | `theorem` | [ContDiffAt.analyticAt](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffat-analyticat.md) | 974 | `result-track:2dc5046e7cc346f6b586a665be94545140f318954305b651d79931a4f18d120c` |
| 105 | `theorem` | [AnalyticAt.contDiffAt](../../../../RealFunctions/ContDiffDefs.lean/declarations/analyticat-contdiffat.md) | 982 | `result-track:1326300d8930f68bc6aece2c17233a5c7f34638936bccb962ae4fe80f27b9345` |
| 106 | `theorem` | [contDiffWithinAt_compl_self](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffwithinat-compl-self.md) | 989 | `result-track:16c8caeae66e10ba4d39df7037f8080ed7ca5c734c15ac58560d9f7d546654d3` |
| 107 | `theorem` | [ContDiffAt.differentiableAt](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffat-differentiableat.md) | 994 | `result-track:deebfe23ef801b4f0488bb735e2b75762b50c3f16dc8a0315db1c1b7b4838691` |
| 108 | `theorem` | [ContDiffAt.differentiableAt_one](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffat-differentiableat-one.md) | 999 | `result-track:73b7f251b217db94508ea94810f80b3e914cd60b35f40756b3bafa255ffedffb` |
| 109 | `lemma` | [ContDiffAt.contDiffOn](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffat-contdiffon.md) | 1003 | `result-track:dbcfb67c2e4beda49c2280be4314c2f5d47a3e82066cc1d36b3866a6b71b2103` |
| 110 | `theorem` | [contDiffAt_succ_iff_hasFDerivAt](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffat-succ-iff-hasfderivat.md) | 1008 | `result-track:3eb2621b08c990e2f27e38b1f9cb6deec5429d5575165429fa8bfd1c9b1bf77b` |
| 111 | `theorem` | [ContDiffAt.eventually](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffat-eventually.md) | 1025 | `result-track:f3b07eb5d5c59074c7a77ef1dcbd77f16534dca68386b80b5dc0227babc2057b` |
| 112 | `theorem` | [iteratedFDerivWithin_eq_iteratedFDeriv](../../../../RealFunctions/ContDiffDefs.lean/declarations/iteratedfderivwithin-eq-iteratedfderiv.md) | 1029 | `result-track:c8f14e5e8715ea19ef7039a37baa5c52e4c87f5b4210cbdb614fdfc2e959bd49` |
| 113 | `def` | [ContDiff](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiff.md) | 1051 | `declaration-track:2018f9e41a001f61eb631185114f470653b9bef5c4797bc76c58589bc085e965` |
| 114 | `theorem` | [HasFTaylorSeriesUpTo.contDiff](../../../../RealFunctions/ContDiffDefs.lean/declarations/hasftaylorseriesupto-contdiff.md) | 1058 | `result-track:8f27cb7d309f789407899c0566043a3fe2fb57fd66b4292974b3b8a40f9164ee` |
| 115 | `theorem` | [contDiffOn_univ](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffon-univ.md) | 1062 | `result-track:335fb1caefe8ef947540887e0920f9b45698fcaf554a2f0b11610aabbcc16dc0` |
| 116 | `theorem` | [contDiff_iff_contDiffAt](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiff-iff-contdiffat.md) | 1085 | `result-track:60278bf60180efff18b363704d5aaae63e4b9d2208d31562dc49a3323d1cccea` |
| 117 | `theorem` | [ContDiff.contDiffAt](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiff-contdiffat.md) | 1089 | `result-track:13736f8174293b4ffc9d88cd6ebbb60c3206e534bff761c9db9de8d37d123242` |
| 118 | `theorem` | [ContDiff.contDiffWithinAt](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiff-contdiffwithinat.md) | 1093 | `result-track:56e599f78a564ad77a0cba68b87498f31615203d81720cc21b1b731f9e727b91` |
| 119 | `theorem` | [contDiff_infty](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiff-infty.md) | 1096 | `result-track:72864d729f3f4c8c32a7c0b2c67abd99ded52e7d66567e79256ba7ae4ac0c245` |
| 120 | `theorem` | [contDiff_all_iff_nat](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiff-all-iff-nat.md) | 1103 | `result-track:71e64bc4ac1cecf1092c74be2b333605517c2090736fbc19f395418c589e3d57` |
| 121 | `theorem` | [ContDiff.contDiffOn](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiff-contdiffon.md) | 1107 | `result-track:01fde1427c388e70f1a30ef6be00342d76bf0784107113f158c68eecd4dbac5e` |
| 122 | `theorem` | [contDiff_zero](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiff-zero.md) | 1111 | `result-track:36391571a8b3ea2a585b89dea3b202d9b3c90ed8501014065c6d5d347327177a` |
| 123 | `theorem` | [contDiffAt_zero](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffat-zero.md) | 1115 | `result-track:89f5dac6e02fc9510a1c2c6d5ef64733b962550c2099e10a5771d1ec1fdc1b7c` |
| 124 | `theorem` | [contDiffAt_one_iff](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiffat-one-iff.md) | 1118 | `result-track:80c82ebdf1c1623d906ea018c3a5c020ce55aa3b2db6315c2e50ee97fd588608` |
| 125 | `theorem` | [ContDiff.of_le](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiff-of-le.md) | 1126 | `result-track:c49df297bea839fc244bd911122ffe3a4e5f25f3c26192ba774c9d882dc825e6` |
| 126 | `theorem` | [ContDiff.of_succ](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiff-of-succ.md) | 1129 | `result-track:9ee635124cc5ca810379a5ff188b8ba789154e6e74f9cc5bf215c768ce3a85d1` |
| 127 | `theorem` | [ContDiff.one_of_succ](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiff-one-of-succ.md) | 1132 | `result-track:c02cd19665603df5f578b87cf4f19cb275646409609db0df0333121635a9b72d` |
| 128 | `theorem` | [ContDiff.continuous](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiff-continuous.md) | 1135 | `result-track:ccbda3b661d7c9cc6e85eb3a482598aa46767c70d0aaf689cf8a7d07f0540956` |
| 129 | `theorem` | [ContDiff.continuous_zero](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiff-continuous-zero.md) | 1139 | `result-track:14c3879f02a74cbc05b55bccc07fddefdf4231bde2e5b747a11d3765f63e7db5` |
| 130 | `theorem` | [ContDiff.differentiable](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiff-differentiable.md) | 1143 | `result-track:5c1e1aee7374496e59d5eeab70191ecf697263adaeb4d504d6b126a3782e628a` |
| 131 | `theorem` | [ContDiff.differentiable_one](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiff-differentiable-one.md) | 1147 | `result-track:0a9531142f8bf1a83c717316843d802ef37669e506af919697dbd9584f9aaa32` |
| 132 | `theorem` | [contDiff_iff_forall_nat_le](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiff-iff-forall-nat-le.md) | 1150 | `result-track:d1e97c845defb2f1e6604ccfb7f713e52bb31849a039619615df4461661823b3` |
| 133 | `theorem` | [contDiff_succ_iff_hasFDerivAt](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiff-succ-iff-hasfderivat.md) | 1155 | `result-track:68e33a9fcd4069ca8370a5c222806ccf703a1fb0cbabdbab5692ce6c65a36731` |
| 134 | `theorem` | [contDiff_one_iff_hasFDerivAt](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiff-one-iff-hasfderivat.md) | 1162 | `result-track:14587577881a7734e9109fb0541fad7a1e25fd3f5d8fcaa117b6e4148b4f2214` |
| 135 | `theorem` | [AnalyticOn.contDiff](../../../../RealFunctions/ContDiffDefs.lean/declarations/analyticon-contdiff.md) | 1166 | `result-track:2e741c1fdddae05f78e37d3871191194fd5aa4c2dff2c5915c293910eedf1b10` |
| 136 | `theorem` | [AnalyticOnNhd.contDiff](../../../../RealFunctions/ContDiffDefs.lean/declarations/analyticonnhd-contdiff.md) | 1170 | `result-track:3e576aaf5406cb28d83c662280ba375b63ee403f05344eab3ad7b471710a854e` |
| 137 | `theorem` | [ContDiff.analyticOnNhd](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiff-analyticonnhd.md) | 1173 | `result-track:1d0d705248e8387169f976c2a18df4e6f146d0fd070b79b9863626b83978ddfb` |
| 138 | `theorem` | [contDiff_omega_iff_analyticOnNhd](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiff-omega-iff-analyticonnhd.md) | 1179 | `result-track:7d510baff74d7bc1821f62d516019e1285f7b44c9089f3547a492f26bee6d9e9` |
| 139 | `theorem` | [ContDiff.ftaylorSeries](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiff-ftaylorseries.md) | 1187 | `result-track:749e7c35b304a4f017c0e4396baf74e2ad5e0646c891e26288254e28a334d05b` |
| 140 | `theorem` | [contDiff_iff_ftaylorSeries](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiff-iff-ftaylorseries.md) | 1195 | `result-track:7000fa3da65b6023f77ea0f2179bbaa9cc8c05db00d26a0da08ecce04d108e43` |
| 141 | `theorem` | [contDiff_iff_continuous_differentiable](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiff-iff-continuous-differentiable.md) | 1202 | `result-track:6d2f8ac8356eccdd624c9f020c38a166e35ae5cc4f9721103c60f3a0ddba521f` |
| 142 | `theorem` | [contDiff_nat_iff_continuous_differentiable](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiff-nat-iff-continuous-differentiable.md) | 1209 | `result-track:9be67ce88e338ae75896f3ffd5ac3c0f1c0ea15d1259c6be7d9e8f3de205365d` |
| 143 | `theorem` | [ContDiff.continuous_iteratedFDeriv](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiff-continuous-iteratedfderiv.md) | 1217 | `result-track:267cb3e38f8fef51558aab06930b27d754a3a381ed0dc00e658fb4dd195fabb0` |
| 144 | `theorem` | [ContDiff.continuous_iteratedFDeriv'](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiff-continuous-iteratedfderiv-source-edition-2.md) | 1222 | `result-track:a4758a8d42bd98152f21b97ae1fc2214eb99cf974bbbf8061ecd58d25690e806` |
| 145 | `theorem` | [ContDiff.differentiable_iteratedFDeriv](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiff-differentiable-iteratedfderiv.md) | 1227 | `result-track:53ebbb3b1b46d22defe46aa085827777c98a94817df54d3e1f8859b348de7105` |
| 146 | `theorem` | [contDiff_of_differentiable_iteratedFDeriv](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiff-of-differentiable-iteratedfderiv.md) | 1232 | `result-track:adc6ba9e0be6e4895f1d1f344f05926a1a6cca93c177eed80678f130abb5b1fe` |
| 147 | `theorem` | [contDiff_succ_iff_fderiv](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiff-succ-iff-fderiv.md) | 1239 | `result-track:906c969442f813e3f35ddec9dca1088e997cfd175f26b1405476a2380ceebd9a` |
| 148 | `theorem` | [contDiff_one_iff_fderiv](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiff-one-iff-fderiv.md) | 1245 | `result-track:70b7fdca1ed2a87c67385d4d2a55bfe0c246cb4a7b0f39483709a323c4d976ff` |
| 149 | `theorem` | [contDiff_infty_iff_fderiv](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiff-infty-iff-fderiv.md) | 1250 | `result-track:6c5c3790626e1c6884b25964eaa68061b1c775e9d0b6192690d30a231f2f2127` |
| 150 | `theorem` | [ContDiff.continuous_fderiv](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiff-continuous-fderiv.md) | 1257 | `result-track:ad81a573ac5e8c57e03f67cb511f8f27af686840c424b949194d049a3a58fc58` |
| 151 | `theorem` | [ContDiff.continuous_fderiv_apply](../../../../RealFunctions/ContDiffDefs.lean/declarations/contdiff-continuous-fderiv-apply.md) | 1263 | `result-track:22bd3f88e13cdb8971e18f5ab58879d399cd08bbffa46f7910e112fa7545893c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e94f357542a980c4217d59647dadadb63270ee0c7d610ee2c7ada9b49383094d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantd409bd3dfc60968e59f61f9abb80513ff61ec0fb1238440104ad93e6afedeb7e.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantd409bd3dfc60968e59f61f9abb80513ff61ec0fb1238440104ad93e6afedeb7e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
