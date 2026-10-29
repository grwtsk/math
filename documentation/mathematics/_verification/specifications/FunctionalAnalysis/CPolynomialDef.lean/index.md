# Verification target: CPolynomial Def

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c3e142d2e567652b9e04f535b76892a0f2fa7c6",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CPolynomialDef/Variantabb58af8798172ec0e8f31994e0c435437dc242afc7ba2bb8da58178881cf1b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/CPolynomialDef.lean/index.md) · [Full source](../../../../FunctionalAnalysis/CPolynomialDef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c3e142d2e567652b9e04f535b76892a0f2fa7c6`.

Source path: `GRWTSK/Topology/GeneralTopology/CPolynomialDef/Variantabb58af8798172ec0e8f31994e0c435437dc242afc7ba2bb8da58178881cf1b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CPolynomialDef/Variantabb58af8798172ec0e8f31994e0c435437dc242afc7ba2bb8da58178881cf1b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.ChangeOrigin` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HasFiniteFPowerSeriesOnBall](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/hasfinitefpowerseriesonball.md) | 58 | `declaration-track:09c0989df655d77e8db2327599d3cd0d7425a9932032312217ae65dc2ccd500b` |
| 2 | `theorem` | [HasFiniteFPowerSeriesOnBall.mk'](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/hasfinitefpowerseriesonball-mk.md) | 62 | `result-track:51d8c7d294ef2e960ee287414d88854997ec6ef081d85b210fa2e6314c1bc818` |
| 3 | `def` | [HasFiniteFPowerSeriesAt](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/hasfinitefpowerseriesat.md) | 75 | `declaration-track:24153873785101d477ad98f4c2ca45cb079d68610210413408ea117a5b37d9c1` |
| 4 | `theorem` | [HasFiniteFPowerSeriesAt.hasFPowerSeriesAt](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/hasfinitefpowerseriesat-hasfpowerseriesat.md) | 78 | `result-track:6ba6123741ed51d1b023db578b9f1b9754b31b53662ab4c748359ffa01a45193` |
| 5 | `theorem` | [HasFiniteFPowerSeriesAt.finite](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/hasfinitefpowerseriesat-finite.md) | 86 | `result-track:f726a099a799152af4b827a53643c25c15d7233fcc47947dcbe62eb5e3d1d47d` |
| 6 | `def` | [CPolynomialAt](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/cpolynomialat.md) | 93 | `declaration-track:06fb04928c05e67dafbbc77ddbf97ce91c94d097ebd8a828532a6ae20a7686c8` |
| 7 | `def` | [CPolynomialOn](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/cpolynomialon.md) | 98 | `declaration-track:5cf6eafd6c205b64333f7fb1c499bbacf5a47459b4c70834851be6b3ca37a46c` |
| 8 | `theorem` | [HasFiniteFPowerSeriesOnBall.hasFiniteFPowerSeriesAt](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/hasfinitefpowerseriesonball-hasfinitefpowerseriesat.md) | 103 | `result-track:efbe76afc2f440f9ebb611644d980eba36074d4676d6bb69340a44b36642758f` |
| 9 | `theorem` | [HasFiniteFPowerSeriesAt.cpolynomialAt](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/hasfinitefpowerseriesat-cpolynomialat.md) | 108 | `result-track:80eb8390e29708cbbee80db7467b9254f7b2572f51485e948989ceff1b68c9f0` |
| 10 | `theorem` | [HasFiniteFPowerSeriesOnBall.cpolynomialAt](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/hasfinitefpowerseriesonball-cpolynomialat.md) | 115 | `result-track:24ac56d10743cc6904037f2dbd3fed1ec569325147b96bd1d989c1647cf22469` |
| 11 | `theorem` | [CPolynomialAt.analyticAt](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/cpolynomialat-analyticat.md) | 122 | `result-track:e260fd1e93a50f2ef6941fa1377b98aeadffdadcdfa05ee802afbcf956f41872` |
| 12 | `theorem` | [CPolynomialAt.analyticWithinAt](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/cpolynomialat-analyticwithinat.md) | 126 | `result-track:9f6a4a3c06c2180c5bf03b127f9b366eb9148231003b6e1394ce828e41dbf245` |
| 13 | `theorem` | [CPolynomialOn.analyticOnNhd](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/cpolynomialon-analyticonnhd.md) | 130 | `result-track:6fa08f64f3081e3446e81a05b23470422a7cf89e3ba79c570f96547b98a81aa6` |
| 14 | `theorem` | [CPolynomialOn.analyticOn](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/cpolynomialon-analyticon.md) | 133 | `result-track:a25aaeefcfca57c6b5a01d61535d28b745c8898ebf8336d637681b963acab46b` |
| 15 | `theorem` | [HasFiniteFPowerSeriesOnBall.congr](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/hasfinitefpowerseriesonball-congr.md) | 136 | `result-track:1bdabf03274e1298d4ae7056ed233b4081da0abf1c610b7fbd6332a9cd4f486b` |
| 16 | `theorem` | [HasFiniteFPowerSeriesOnBall.of_le](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/hasfinitefpowerseriesonball-of-le.md) | 140 | `result-track:6c270c9dcef830e34112114d5ca78e27850f6d3de2824a56426ce2f8f8e2e192` |
| 17 | `theorem` | [HasFiniteFPowerSeriesAt.of_le](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/hasfinitefpowerseriesat-of-le.md) | 145 | `result-track:f7891f436e3cf47b8142a6b19314a9ad068adf8cc575c3d27e44c2c3f0df6c61` |
| 18 | `theorem` | [HasFiniteFPowerSeriesOnBall.comp_sub](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/hasfinitefpowerseriesonball-comp-sub.md) | 153 | `result-track:620411c95ce688514c7d665212d96ecf408c639c3d143027693bdae75e9e91f1` |
| 19 | `theorem` | [HasFiniteFPowerSeriesOnBall.mono](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/hasfinitefpowerseriesonball-mono.md) | 157 | `result-track:db9d042b6740915e15021d1e72682fd09f5884d12ac89529b25aa430563eb3a0` |
| 20 | `theorem` | [HasFiniteFPowerSeriesAt.congr](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/hasfinitefpowerseriesat-congr.md) | 161 | `result-track:d0dc941062796cb134fb86c45058af046eb2799d7a24672f6d7b15eec25a5f64` |
| 21 | `theorem` | [HasFiniteFPowerSeriesAt.eventually](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/hasfinitefpowerseriesat-eventually.md) | 165 | `result-track:01dc8f6467a2c6365ecdd1001dda7eb8496f9ad40ff1fd9a9ab9942cdb9004b9` |
| 22 | `theorem` | [CPolynomialAt.congr](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/cpolynomialat-congr-source-edition-2.md) | 169 | `result-track:dde867d356f758ca654ffd67b5a4d4ea9c8d5934bb961926391cf674c48e7f34` |
| 23 | `theorem` | [CPolynomialAt_congr](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/cpolynomialat-congr.md) | 173 | `result-track:96f1fece61a590d9bb25a2ef12d9c58e33d050410d14ee70b80cd60797264ff0` |
| 24 | `theorem` | [CPolynomialOn.mono](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/cpolynomialon-mono.md) | 176 | `result-track:2a78a063becbfcee1af184e924177ae7a46e73e4bb4e8960499872d3b2e86745` |
| 25 | `theorem` | [CPolynomialOn.congr'](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/cpolynomialon-congr-source-edition-3.md) | 180 | `result-track:96e3f4d5df76c08b84d56dde721dc4e82c86985bb492007dc2d0ceec24c92177` |
| 26 | `theorem` | [CPolynomialOn_congr'](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/cpolynomialon-congr.md) | 184 | `result-track:08025f67e28c128ee319a3a689a72b85c291c7bc7033585e16def50520df8ca2` |
| 27 | `theorem` | [CPolynomialOn.congr](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/cpolynomialon-congr-source-edition-4.md) | 188 | `result-track:e428cba59ed4d67afb0aa5e08aa5e4d3970605a2dc281af245a61e48474fc215` |
| 28 | `theorem` | [CPolynomialOn_congr](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/cpolynomialon-congr-source-edition-2.md) | 193 | `result-track:5a17346c69be2c551a06c2f4eef9fdcf7291430d02a531aac0de7a57cda8adac` |
| 29 | `theorem` | [ContinuousLinearMap.comp_hasFiniteFPowerSeriesOnBall](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/continuouslinearmap-comp-hasfinitefpowerseriesonball.md) | 199 | `result-track:11b6f2330c434ed2fa8c8a88c65f7efff2b78aee74bc153bd859cd3387639609` |
| 30 | `theorem` | [ContinuousLinearMap.comp_cpolynomialOn](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/continuouslinearmap-comp-cpolynomialon.md) | 208 | `result-track:c1600fdd8d40e5e69a4ce578c7574b26c5fca9eb176411ab37b2a3fe06c3febf` |
| 31 | `theorem` | [HasFiniteFPowerSeriesOnBall.eq_partialSum](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/hasfinitefpowerseriesonball-eq-partialsum-source-edition-2.md) | 219 | `result-track:5aa56cd016ad6af4adc3d4a56a5037a2c08af09b52143dcadca0ca201a9b2894` |
| 32 | `theorem` | [HasFiniteFPowerSeriesOnBall.eq_partialSum'](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/hasfinitefpowerseriesonball-eq-partialsum.md) | 229 | `result-track:5240e1cbc5ff825d961aee0beb7a78c737fc6f94f728287a5e099dbac7c5340e` |
| 33 | `theorem` | [HasFiniteFPowerSeriesOnBall.eq_zero_of_bound_zero](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/hasfinitefpowerseriesonball-eq-zero-of-bound-zero.md) | 241 | `result-track:9af8410f0ea723dca29b5fa317cbe17684ec85410b56117caedfe7fca74f02f0` |
| 34 | `theorem` | [HasFiniteFPowerSeriesOnBall.bound_zero_of_eq_zero](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/hasfinitefpowerseriesonball-bound-zero-of-eq-zero.md) | 247 | `result-track:e26b1e5ded4da6cf3d3df6512983e22971a45954669d43119aeaa642cca503fa` |
| 35 | `theorem` | [HasFiniteFPowerSeriesAt.eventually_zero_of_bound_zero](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/hasfinitefpowerseriesat-eventually-zero-of-bound-zero.md) | 261 | `result-track:ebfde98bd7f87c1bd6865c69a0554ad71886cf9ea5567b3fe17ea206bd5728e0` |
| 36 | `theorem` | [HasFiniteFPowerSeriesOnBall.eq_const_of_bound_one](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/hasfinitefpowerseriesonball-eq-const-of-bound-one.md) | 268 | `result-track:45a204246d66539f159426f6f1a52133d9dd1ee09fb1913c25a6d1a8bb19dfab` |
| 37 | `theorem` | [HasFiniteFPowerSeriesAt.eventually_const_of_bound_one](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/hasfinitefpowerseriesat-eventually-const-of-bound-one.md) | 280 | `result-track:719b7987d83c3f9aad882f1da3dc5a060098da9a53d725ea8fe884fbff44f95b` |
| 38 | `theorem` | [HasFiniteFPowerSeriesOnBall.continuousOn](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/hasfinitefpowerseriesonball-continuouson.md) | 286 | `result-track:5fd8addbdb655006a531a56ec772d18e55c24f8659bb72d327cf71489f402082` |
| 39 | `theorem` | [HasFiniteFPowerSeriesAt.continuousAt](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/hasfinitefpowerseriesat-continuousat.md) | 290 | `result-track:346c3da7c4bc415ceb3a22f8a8f91c96a3519b1332ea741a37e971489e77b25b` |
| 40 | `theorem` | [CPolynomialAt.continuousAt](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/cpolynomialat-continuousat.md) | 293 | `result-track:5edbd96f11b77d4cba26dc1cf16a5c52fede5722e382900db4a9231b7f2e0a19` |
| 41 | `theorem` | [CPolynomialOn.continuousOn](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/cpolynomialon-continuouson.md) | 296 | `result-track:17b4db236e55bb5a662b41a472f31350de18812e589496acae7dacf62879753f` |
| 42 | `theorem` | [CPolynomialOn.continuous](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/cpolynomialon-continuous.md) | 301 | `result-track:6d5835bac3faf60085201afdd143c6e257673d4b31e881f190031a0ae39d2479` |
| 43 | `theorem` | [FormalMultilinearSeries.sum_of_finite](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/formalmultilinearseries-sum-of-finite.md) | 304 | `result-track:69ad89c72386351b3eabad8a677f0697b964c59d603fbf559bd0ec55419efb40` |
| 44 | `theorem` | [FormalMultilinearSeries.hasSum_of_finite](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/formalmultilinearseries-hassum-of-finite.md) | 310 | `result-track:d0e9e3466fc209a9d6b0fd83f27a95cacb497561ce64f5fd0c4d32501f7bafe1` |
| 45 | `theorem` | [FormalMultilinearSeries.hasFiniteFPowerSeriesOnBall_of_finite](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/formalmultilinearseries-hasfinitefpowerseriesonball-of-finite.md) | 318 | `result-track:4c5bea448dda3cc5a63ff63139ccff86665af45669d5c4663cfb0e795538c12f` |
| 46 | `theorem` | [HasFiniteFPowerSeriesOnBall.sum](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/hasfinitefpowerseriesonball-sum.md) | 326 | `result-track:d8af4d3bcc6b20ffb913af400f3509ef050150fab5b75d3a388f5053f1c48b54` |
| 47 | `theorem` | [FormalMultilinearSeries.continuousOn_of_finite](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/formalmultilinearseries-continuouson-of-finite.md) | 331 | `result-track:31fcfda130cf44f61c9c97b59fff04654f47114ce08c5cef9ddd41d5f7e128c0` |
| 48 | `lemma` | [changeOriginSeriesTerm_bound](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/changeoriginseriesterm-bound.md) | 348 | `result-track:e7d00e945005633ee37a56bc40839475cc89986c5e3451694bc8cd0f6e1400db` |
| 49 | `lemma` | [changeOriginSeries_finite_of_finite](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/changeoriginseries-finite-of-finite.md) | 357 | `result-track:321754afe4e1cf5107092f5f8a091066873544776558afa8114f9ebdf769e764` |
| 50 | `lemma` | [changeOriginSeries_sum_eq_partialSum_of_finite](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/changeoriginseries-sum-eq-partialsum-of-finite.md) | 364 | `result-track:e9fb1d0255a9914d73792712e14283dd96258627d2e59f1d7df8ef601283cb36` |
| 51 | `lemma` | [changeOrigin_finite_of_finite](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/changeorigin-finite-of-finite.md) | 377 | `result-track:a294e81a87714a8783b94f97ed3a2126a9bdce4bd169dcab3e1605b727f35683` |
| 52 | `theorem` | [hasFiniteFPowerSeriesOnBall_changeOrigin](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/hasfinitefpowerseriesonball-changeorigin.md) | 387 | `result-track:1facfa6a0a03d73638e3df9a1a618f65ed7599f4b319dcb1ee105ccf2fecc737` |
| 53 | `theorem` | [changeOrigin_eval_of_finite](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/changeorigin-eval-of-finite.md) | 394 | `result-track:174a8b56995ca42de8014b58a7a621a3051994b34bcaf6ca21d347820b3e0a6f` |
| 54 | `theorem` | [cpolynomialAt_changeOrigin_of_finite](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/cpolynomialat-changeorigin-of-finite.md) | 433 | `result-track:441f5b35b57528818007e45eabd459c34d7b302fa89115047816a7322a71cf1f` |
| 55 | `theorem` | [HasFiniteFPowerSeriesOnBall.changeOrigin](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/hasfinitefpowerseriesonball-changeorigin-source-edition-2.md) | 449 | `result-track:76da12c4bdccc05ea71be359f4132d8b3a598131b14404a0330273500c76ec51` |
| 56 | `theorem` | [HasFiniteFPowerSeriesOnBall.cpolynomialAt_of_mem](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/hasfinitefpowerseriesonball-cpolynomialat-of-mem.md) | 466 | `result-track:e7fff35748663e0d704a3bac5fe7e37bd2b850b1c7984fe521df5a72a9572cce` |
| 57 | `theorem` | [HasFiniteFPowerSeriesOnBall.cpolynomialOn](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/hasfinitefpowerseriesonball-cpolynomialon.md) | 478 | `result-track:cae88a57db452adcc9fa750541d5aea070764e8795860d1e976aeeca52619516` |
| 58 | `theorem` | [isOpen_cpolynomialAt](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/isopen-cpolynomialat.md) | 489 | `result-track:4c5c56f8acbb9a596928cd216e5c2d544025ee8b8e8c271e28d8c2c7dec1d082` |
| 59 | `theorem` | [CPolynomialAt.eventually_cpolynomialAt](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/cpolynomialat-eventually-cpolynomialat.md) | 499 | `result-track:483eb8ccc1e06e34ee7a860e2bc78bf8de228e77c432c46b6ba2c405bcc4a992` |
| 60 | `theorem` | [CPolynomialAt.exists_mem_nhds_cpolynomialOn](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/cpolynomialat-exists-mem-nhds-cpolynomialon.md) | 506 | `result-track:2b9571ddc057682e03644efb193394fb403273ef1ce8320872ea485a7fe1ca74` |
| 61 | `theorem` | [CPolynomialAt.exists_ball_cpolynomialOn](../../../../FunctionalAnalysis/CPolynomialDef.lean/declarations/cpolynomialat-exists-ball-cpolynomialon.md) | 515 | `result-track:454404903224817e7072edbf70cf631e61978361119beffedc0957d2517e7002` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eedf6fc83f983f67580e93ef85cc8a627771984ed1285f9080a4199a96eb09bf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/CPolynomialDef/Variantabb58af8798172ec0e8f31994e0c435437dc242afc7ba2bb8da58178881cf1b9.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/CPolynomialDef/Variantabb58af8798172ec0e8f31994e0c435437dc242afc7ba2bb8da58178881cf1b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
