# Verification target: Analytic Constructions

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34edca26773cb9ac7f5304b14c0662b7e3166edd",
  "lexical_observation_count": 178,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Constructions/Varianta34ea55ba46afdd9591a6ba1361e94050b9607e3f8dbc6b0120460fbee69de23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/AnalyticConstructions.lean/index.md) · [Full source](../../../../FunctionalAnalysis/AnalyticConstructions.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34edca26773cb9ac7f5304b14c0662b7e3166edd`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Constructions/Varianta34ea55ba46afdd9591a6ba1361e94050b9607e3f8dbc6b0120460fbee69de23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Constructions/Varianta34ea55ba46afdd9591a6ba1361e94050b9607e3f8dbc6b0120460fbee69de23.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Composition` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Linear` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.Mul` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.Units` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.OfScalars` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasFPowerSeriesOnBall_const](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerseriesonball-const.md) | 40 | `result-track:e2672b17fb0e0d3e676d7f3adbb652d2b174fb012cf8aeb0369e12b966658be6` |
| 2 | `theorem` | [hasFPowerSeriesAt_const](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerseriesat-const.md) | 45 | `result-track:da8f149759a37422e6f6896d550659806d1832783f9943898ada19c0a7aeca79` |
| 3 | `theorem` | [analyticAt_const](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-const.md) | 50 | `result-track:8af2578b0df22c171bc35ee982ee007333ff40420c66894055426262e66fb2f1` |
| 4 | `theorem` | [analyticOnNhd_const](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticonnhd-const.md) | 53 | `result-track:e2b6b02b36db2b754605a9edc89b8aaffa8e684265341e7014d4b694ac64b227` |
| 5 | `theorem` | [analyticWithinAt_const](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticwithinat-const.md) | 56 | `result-track:19735d38403d7dc327419e9bacfe08d75c158ac016b9cc0e30b70c5d4d479452` |
| 6 | `theorem` | [analyticOn_const](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticon-const.md) | 59 | `result-track:ba3fff1b92eebc77b5a12d019cbe84a0ba65a57f08d5a81a9fa1d06aa31b7072` |
| 7 | `theorem` | [HasFPowerSeriesWithinOnBall.add](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerserieswithinonball-add.md) | 71 | `result-track:903e76f3ab65a9bd0cf3a5408a886e027bb6a6ec7799c2a47df6decc6d862265` |
| 8 | `theorem` | [HasFPowerSeriesOnBall.add](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerseriesonball-add.md) | 78 | `result-track:b149f2fbe77e4fe6b51cbab936813d207254a9e985c13e32a3f61b46f8a862ab` |
| 9 | `theorem` | [HasFPowerSeriesWithinAt.add](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerserieswithinat-add.md) | 84 | `result-track:67d205447634194de329b2828781279fdd825a02d9da4044d633bd27d7bdc38d` |
| 10 | `theorem` | [HasFPowerSeriesAt.add](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerseriesat-add.md) | 90 | `result-track:66f62aba14f6cf497aac052130d781e21a50c6e1de428e8db39daebc42f577b2` |
| 11 | `theorem` | [AnalyticWithinAt.add](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticwithinat-add.md) | 95 | `result-track:d5a90e178d11d09f84cc9d34453b8ea47f868dac0b185053ec552fe02e9b4d61` |
| 12 | `theorem` | [AnalyticAt.fun_add](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-fun-add.md) | 102 | `result-track:ada6b9627468642fcac33320232504a2b76f5e65129a7caeeec6d58b61d35639` |
| 13 | `theorem` | [AnalyticAt.add](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-add.md) | 111 | `result-track:927a33cd623e98ce8534c76969a9581a027d5533a8d44e3087c8475afd25e4da` |
| 14 | `theorem` | [HasFPowerSeriesWithinOnBall.neg](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerserieswithinonball-neg.md) | 114 | `result-track:fb644d2f4be0c48525e4d45246ca9766ed35ed4bbf0a72cdd3ed70743739bcaf` |
| 15 | `theorem` | [HasFPowerSeriesOnBall.neg](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerseriesonball-neg.md) | 122 | `result-track:9dc73549fdcd652054e2b874a47351b0742819bb12b5331521c7b0f5e297714a` |
| 16 | `theorem` | [HasFPowerSeriesWithinAt.neg](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerserieswithinat-neg.md) | 130 | `result-track:d19dd3ba941944e86c49487b009a7fd88f5811cdfccb4bc90c65b79018db5cf3` |
| 17 | `theorem` | [HasFPowerSeriesAt.neg](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerseriesat-neg.md) | 135 | `result-track:93f3d8dd177199c3a92dec2ea394a786532323c62d56fc598a8c0afa8edc2e78` |
| 18 | `theorem` | [AnalyticWithinAt.neg](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticwithinat-neg.md) | 139 | `result-track:b5c437a9eef6850080af554b7e5478b294e2b3435c1adb38d118b9fed5f6f4be` |
| 19 | `theorem` | [AnalyticAt.fun_neg](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-fun-neg.md) | 144 | `result-track:c247d6d89b1b843c06c8d0351a96a1079bb94b5f3cd093b2963b6a8baab30f9a` |
| 20 | `theorem` | [AnalyticAt.neg](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-neg.md) | 149 | `result-track:15d9acaac33d9748ac3ddbc423a29e26b4b7313a13a85aaadc6543e868ce6e62` |
| 21 | `lemma` | [analyticAt_neg](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-neg-source-edition-2.md) | 152 | `result-track:3bd114f68b8b688337324f7894affec9a4c3855f7ace35bc5041d86369618e4e` |
| 22 | `theorem` | [HasFPowerSeriesWithinOnBall.sub](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerserieswithinonball-sub.md) | 158 | `result-track:f00883caf157814655ec9da6f57c63e2869b6f034e8537def3a48d0df7882b46` |
| 23 | `theorem` | [HasFPowerSeriesOnBall.sub](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerseriesonball-sub.md) | 163 | `result-track:c9f78612e114ab4a6ec437ed6fe464cc862e7095f2971befac2238d7e4a84ea8` |
| 24 | `theorem` | [HasFPowerSeriesWithinAt.sub](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerserieswithinat-sub.md) | 167 | `result-track:b78a3f39d8018130a4572a096467b1650fcc16361876e706f88e1299d4f7fbc1` |
| 25 | `theorem` | [HasFPowerSeriesAt.sub](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerseriesat-sub.md) | 172 | `result-track:3fe34cc286db2a34763e5fb9a3d3fdfddf1b7d14e267acc3ee605934f4a2bc89` |
| 26 | `theorem` | [AnalyticWithinAt.sub](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticwithinat-sub.md) | 176 | `result-track:3540702be45d51b7512f7226c7a0fc12f271d2b09727ab42a3086405b4267fdf` |
| 27 | `theorem` | [AnalyticAt.fun_sub](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-fun-sub.md) | 181 | `result-track:9fb9e782712482f5fb9d2f5f9ea5ca9155a15c7eef039f13c92b77a9d9bb05bd` |
| 28 | `theorem` | [AnalyticAt.sub](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-sub.md) | 186 | `result-track:bf8b9b456513374355f1983f24c209c7049b4600062dcde0f6329a6907731de3` |
| 29 | `theorem` | [HasFPowerSeriesWithinOnBall.const_smul](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerserieswithinonball-const-smul.md) | 192 | `result-track:5e3f95ef384aa5e6f1c26edd62a61099f9996f8794cf1e011d19afdcd334b1ca` |
| 30 | `theorem` | [HasFPowerSeriesOnBall.const_smul](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerseriesonball-const-smul.md) | 198 | `result-track:1d4cd4148cbadd0e9105a9ab7d6f36cd0946505155a9406dd2864dafa90fffde` |
| 31 | `theorem` | [HasFPowerSeriesWithinAt.const_smul](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerserieswithinat-const-smul.md) | 204 | `result-track:683275b44ce0435cc6663e675364c8df1414398f5972c03ffd4aab6357e1645c` |
| 32 | `theorem` | [HasFPowerSeriesAt.const_smul](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerseriesat-const-smul.md) | 209 | `result-track:fe1b90794bc23dbbfd03323f14bd5af1b674a0f2ccee0e664a75fdc075245036` |
| 33 | `theorem` | [AnalyticWithinAt.const_smul](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticwithinat-const-smul.md) | 214 | `result-track:3f1fd488b9bf2eb26063affc06687875ebcbfb6de86fba6b7510d76246165a13` |
| 34 | `theorem` | [AnalyticAt.fun_const_smul](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-fun-const-smul.md) | 220 | `result-track:f0350631a7d73e3482e59cbe777cce6d49a859e521c0959c94705ae0ee30c3b2` |
| 35 | `theorem` | [AnalyticAt.const_smul](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-const-smul.md) | 225 | `result-track:9c518503ce787df9b617f8830e11535b3a353c11fb8350778e4aa9fa2886d272` |
| 36 | `theorem` | [AnalyticOn.add](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticon-add.md) | 230 | `result-track:a042bb97cb7279feaa4a309e648879a615298bfc66632296a412aef25f067dff` |
| 37 | `theorem` | [AnalyticOnNhd.add](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticonnhd-add.md) | 234 | `result-track:a54cc60632f9e723e826d2547fde0c8c4b50c4c258f6b7f6505e1de798f31b33` |
| 38 | `theorem` | [AnalyticOn.neg](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticon-neg.md) | 238 | `result-track:56a6e336295215f71e78b96b7c512b9750cc558e7cdbf1713668c57426943ef4` |
| 39 | `theorem` | [AnalyticOnNhd.neg](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticonnhd-neg.md) | 241 | `result-track:66deb25ff8ce93c89aecaf7e7996430d818337570a2a908c33adce629d963051` |
| 40 | `theorem` | [AnalyticOn.sub](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticon-sub.md) | 244 | `result-track:a163eb375a4e01583a20531fc4b0c93034e120925891c7380471cb4e6a886eba` |
| 41 | `theorem` | [AnalyticOnNhd.sub](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticonnhd-sub.md) | 248 | `result-track:9247f496fb4ba3194c37e794cc35b63e49540368533de82bab262630723a8a0a` |
| 42 | `lemma` | [FormalMultilinearSeries.radius_prod_eq_min](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/formalmultilinearseries-radius-prod-eq-min.md) | 259 | `result-track:0dd3470f24b47fa8c1ed030f15bd63e9672b5be1343239798ea4deb2ddf1d9b6` |
| 43 | `lemma` | [HasFPowerSeriesWithinOnBall.prod](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerserieswithinonball-prod.md) | 286 | `result-track:d1bd48a67481dc2c3216f7a3e8a84cb25c08325c8755bf641f8f9bda71e8d773` |
| 44 | `lemma` | [HasFPowerSeriesOnBall.prod](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerseriesonball-prod.md) | 301 | `result-track:865cbba0df402dc5469d8eca5861953aae273593a2758b293d4f458c5e29a72a` |
| 45 | `lemma` | [HasFPowerSeriesWithinAt.prod](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerserieswithinat-prod.md) | 308 | `result-track:73d989993fa7c9891f1bd345afe1fb446914336fc81e2d8b5fced03ae8d3b41d` |
| 46 | `lemma` | [HasFPowerSeriesAt.prod](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerseriesat-prod.md) | 316 | `result-track:e6f963dcfe467b8941c02b354ba8c4273a58640a415469180b837ce7107075fb` |
| 47 | `lemma` | [AnalyticWithinAt.prod](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticwithinat-prod.md) | 325 | `result-track:1c3aa7e28fd03b99da58a2f0ac6a782618df3bf3403f47c67179932736b63439` |
| 48 | `lemma` | [AnalyticAt.prod](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-prod.md) | 334 | `result-track:5d1d4e1764f66d99deb4b07b19789252ab40345c146c514e940fede6fc11e5b4` |
| 49 | `lemma` | [AnalyticOn.prod](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticon-prod.md) | 342 | `result-track:a9a1915bfa48fb5dbc7a78241d3ad1ae42c7ecbc7e5f306b978dcd6571593367` |
| 50 | `lemma` | [AnalyticOnNhd.prod](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticonnhd-prod.md) | 348 | `result-track:27d85d2b7d794c22248212063a811ce5e73b210eb6a3ae3fa1d84682a89c7745` |
| 51 | `theorem` | [AnalyticAt.comp₂](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-comp.md) | 354 | `result-track:33ea3ef10d9d2b62a16905ea65d214609ab98ed1c066c96d759478a3a4848482` |
| 52 | `theorem` | [AnalyticWithinAt.comp₂](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticwithinat-comp.md) | 361 | `result-track:78c444baadb0b8561939e71d73407adc21f95412ea7161e68a6228e74af84ee0` |
| 53 | `theorem` | [AnalyticAt.comp₂_analyticWithinAt](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-comp-analyticwithinat.md) | 369 | `result-track:130f297ab3048aa3f207022603402b7fc06876e76cf6317233b702018f2729cf` |
| 54 | `theorem` | [AnalyticOnNhd.comp₂](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticonnhd-comp.md) | 377 | `result-track:1edfc79e0cb55ce3f42376c5f6e64e403ca00a71505a1dabac61f791f0faa55b` |
| 55 | `theorem` | [AnalyticOn.comp₂](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticon-comp.md) | 383 | `result-track:1dc47b3301a9facef07869a604770914005e7825cffcdcefd20825789a5d3498` |
| 56 | `theorem` | [AnalyticAt.curry_left](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-curry-left.md) | 391 | `result-track:795d193e80faacd111bbe3f53bd35fa9707e0f6be42e423eb450d4cb06b63394` |
| 57 | `theorem` | [AnalyticWithinAt.curry_left](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticwithinat-curry-left.md) | 396 | `result-track:98d6c429b031d2ba344a4477b36218ab67aff27d57d82c7dea97ff896e6cc318` |
| 58 | `theorem` | [AnalyticAt.curry_right](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-curry-right.md) | 402 | `result-track:a47ffa474397bdc79ca1fc2cf67e9cfdea8ff995073ec1af08237ceb02c00ec1` |
| 59 | `theorem` | [AnalyticWithinAt.curry_right](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticwithinat-curry-right.md) | 407 | `result-track:b88f1d982a9a4fe5fc2ce5e1d91bd5ae5f1580d2c736c62dca1dde182bc3f3ec` |
| 60 | `theorem` | [AnalyticOnNhd.curry_left](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticonnhd-curry-left.md) | 413 | `result-track:406410094a4b59a572502c9165775ff8d47126d3eff2f49da26e4e2377150519` |
| 61 | `theorem` | [AnalyticOn.curry_left](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticon-curry-left.md) | 419 | `result-track:50ca0ce21a6e9d4724922658080476d896dca35968301e638202e7e6801392ff` |
| 62 | `theorem` | [AnalyticOnNhd.curry_right](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticonnhd-curry-right.md) | 425 | `result-track:9b51d51c8c489139ceabdef9e281f03d9e93838c3e78e504f8b0ffe067bff6f8` |
| 63 | `theorem` | [AnalyticOn.curry_right](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticon-curry-right.md) | 431 | `result-track:5cc18946218752c5e18653bdb1125a941478fbd1291c4ddd406773f35e68675c` |
| 64 | `lemma` | [FormalMultilinearSeries.radius_pi_le](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/formalmultilinearseries-radius-pi-le.md) | 453 | `result-track:2562bb0c87c528dc0e2b440989746d7909f737ca1208e4e1a6a3f76474d713e1` |
| 65 | `lemma` | [FormalMultilinearSeries.le_radius_pi](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/formalmultilinearseries-le-radius-pi.md) | 463 | `result-track:0e516c035e8938d5dddccf314e43f5f1cc0d0a3cfca45adb012218861cb92f91` |
| 66 | `lemma` | [FormalMultilinearSeries.radius_pi_eq_iInf](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/formalmultilinearseries-radius-pi-eq-iinf.md) | 481 | `result-track:76f98ab4107003ed6e38de805a94449886af7f3480873cfc03ae747f0cd67024` |
| 67 | `lemma` | [HasFPowerSeriesWithinOnBall.pi](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerserieswithinonball-pi.md) | 490 | `result-track:0b7139c320212b57efde233081926bbe076d25dd41affd9ace175122b3493c14` |
| 68 | `lemma` | [hasFPowerSeriesWithinOnBall_pi_iff](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerserieswithinonball-pi-iff.md) | 499 | `result-track:e84fcd8115f5d43df91e7da89ca0032e8aeb1af68113bdeded4e0acaf4eaa018` |
| 69 | `lemma` | [HasFPowerSeriesOnBall.pi](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerseriesonball-pi.md) | 507 | `result-track:f5068149fe090fff10f7c52676875305298a98fffde3115b8a05c5fa222a0ddd` |
| 70 | `lemma` | [hasFPowerSeriesOnBall_pi_iff](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerseriesonball-pi-iff.md) | 513 | `result-track:2fc287af0b539bdc150a86dc4e341ac5ef774b90d0c5e7212cebb6f6e65df0c2` |
| 71 | `lemma` | [HasFPowerSeriesWithinAt.pi](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerserieswithinat-pi.md) | 519 | `result-track:06aabe865065b63d14de9102db31f15d55fb57307be164f3e08d070baf93ea6c` |
| 72 | `lemma` | [hasFPowerSeriesWithinAt_pi_iff](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerserieswithinat-pi-iff.md) | 527 | `result-track:2348ca513267ff3e4c7dea82d3dc63cecda3ff759ceb4951626dc36d3f978a6f` |
| 73 | `lemma` | [HasFPowerSeriesAt.pi](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerseriesat-pi.md) | 534 | `result-track:623a24a6dffe9d18991ac3003199ab5eeb134f58c33e108ab3f88afc7bdf9bec` |
| 74 | `lemma` | [hasFPowerSeriesAt_pi_iff](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerseriesat-pi-iff.md) | 540 | `result-track:52487457df59e2f7885db67af086b807862ba8b1cebc52878252d5442158ceca` |
| 75 | `lemma` | [AnalyticWithinAt.pi](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticwithinat-pi.md) | 546 | `result-track:2e118572ad1306e09e09a2bd65ade207616099f43a4eefbcc3b31f0d5bbc162b` |
| 76 | `lemma` | [analyticWithinAt_pi_iff](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticwithinat-pi-iff.md) | 551 | `result-track:c02e1dc848d1f63e71657d52f3eb236413d9bd337b1951ec7bc9cca365ea5bcb` |
| 77 | `lemma` | [AnalyticAt.pi](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-pi.md) | 556 | `result-track:f2e6f485a116c63d0d6be4b714445e27ed6566c81b31fa5eb03d3c8b9c40418b` |
| 78 | `lemma` | [analyticAt_pi_iff](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-pi-iff.md) | 561 | `result-track:ecd7af63cca8797a3b9b715918fbad13218e612ba203411e00c70e38c3639da6` |
| 79 | `lemma` | [AnalyticOn.pi](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticon-pi.md) | 566 | `result-track:ae506de5499037374bfbac3a2624cd75f75979aa3602583e312065e7e12ebf1d` |
| 80 | `lemma` | [analyticOn_pi_iff](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticon-pi-iff.md) | 570 | `result-track:32602e07d66082757bb7ba054152c43aa546b432c11c52313077ade8ba5b4d58` |
| 81 | `lemma` | [AnalyticOnNhd.pi](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticonnhd-pi.md) | 574 | `result-track:99f2da6f71f0fca855139db4dde7ec7e069d494c19e2e60a14c4f97db3e4d0b4` |
| 82 | `lemma` | [analyticOnNhd_pi_iff](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticonnhd-pi-iff.md) | 578 | `result-track:681f8c394e7942c0cb3d0fdcd1676f3e83ae81a5c154427e46660271dc8a7b40` |
| 83 | `lemma` | [analyticAt_smul](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-smul-source-edition-2.md) | 594 | `result-track:d1c972f323fa876f1868a70462dcf3c8a7290605f38e907f6b9071319eb430b8` |
| 84 | `lemma` | [analyticAt_mul](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-mul-source-edition-2.md) | 600 | `result-track:f70b39601dfa828b935314473c64be036e8401f3541a164a974c9ab4ba2710d8` |
| 85 | `lemma` | [AnalyticWithinAt.smul](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticwithinat-smul.md) | 604 | `result-track:9711f3e937eaf20e0364bf1ac56d3b70fba84687609e017b56f5ad41f38144e6` |
| 86 | `lemma` | [AnalyticAt.fun_smul](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-fun-smul.md) | 612 | `result-track:a35ceccdfdc7ff19a989eb0f243dc67065d8c564a1cdc1615031ccf3c2daaf01` |
| 87 | `lemma` | [AnalyticAt.smul](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-smul.md) | 619 | `result-track:5cdddbd5baee6e67c3efa33772ba0c5c75a0ab7aac31fdfb8702dd3cab12ad7b` |
| 88 | `lemma` | [AnalyticOn.smul](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticon-smul.md) | 627 | `result-track:30c50062e735bb00edeede222a33294253c0e68c59692cabdf1aa8fd01c289a2` |
| 89 | `lemma` | [AnalyticOnNhd.smul](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticonnhd-smul.md) | 634 | `result-track:a83dadf91f047527d13ae4c2233f43e1bc1bee7915c05f46aef052191ad70e5d` |
| 90 | `lemma` | [AnalyticWithinAt.mul](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticwithinat-mul.md) | 640 | `result-track:0eef4597e40064deb551baeec3843f8ebaf70b7cab4c86a1327ee833ae3ca97f` |
| 91 | `lemma` | [AnalyticAt.fun_mul](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-fun-mul.md) | 647 | `result-track:e73ba4b1f8f78283bfe23000042e10144087b86f34e7d0b8e44f7fa55646eaae` |
| 92 | `lemma` | [AnalyticAt.mul](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-mul.md) | 653 | `result-track:1f78483bc6c97b5fe4bc558a998abf97927550f128d32a290df117e7845492ab` |
| 93 | `lemma` | [AnalyticOn.mul](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticon-mul.md) | 660 | `result-track:1671f0829789d1d0ff6eb1022eb3941aad34ac13c5389090abca79a7b3e66d23` |
| 94 | `lemma` | [AnalyticOnNhd.mul](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticonnhd-mul.md) | 666 | `result-track:0d2963cb9a76e1919e043edf31588bae1d2b7c0f0836a595ea7cd52ce7bf6bbc` |
| 95 | `lemma` | [AnalyticWithinAt.fun_pow](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticwithinat-fun-pow.md) | 672 | `result-track:fae4bd32baafb3d50c50fef27704da0b7cb8a7648ee380dd5a645d68df75b050` |
| 96 | `lemma` | [AnalyticWithinAt.pow](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticwithinat-pow.md) | 684 | `result-track:aab772cf43e4f34fe1b6be0a8c96fc5e8f8cd1a52505a61630b59acaf24709c2` |
| 97 | `lemma` | [AnalyticAt.fun_pow](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-fun-pow.md) | 691 | `result-track:ed5474b872eb4dbcaee3fe517f99030420767ad5bbf50e22b100fff08b07746f` |
| 98 | `lemma` | [AnalyticAt.pow](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-pow.md) | 698 | `result-track:d8a611c52b2cf9a63b528a84c83b5acf1a84521cb4da4b3d64d42783b22336c1` |
| 99 | `lemma` | [AnalyticOn.fun_pow](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticon-fun-pow.md) | 703 | `result-track:2677a4a60ac2a8aedf4374ae591cb37b1f3e2734fe0b7c1013e13b27d6dec96d` |
| 100 | `lemma` | [AnalyticOn.pow](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticon-pow.md) | 708 | `result-track:c89f7329001ed56627fe31b1a98cffebc953c2afdde5084735bc12398a6401ae` |
| 101 | `lemma` | [AnalyticOnNhd.fun_pow](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticonnhd-fun-pow.md) | 713 | `result-track:95bfe7fd029e1d3172fc19cba5892d50cd77214fdd79cbbf5ad00a3c4fa3cb32` |
| 102 | `lemma` | [AnalyticOnNhd.pow](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticonnhd-pow.md) | 718 | `result-track:f59df4dabcf6f93ae363488a9b304591a7321747a70bf364f66471483adac994` |
| 103 | `lemma` | [AnalyticWithinAt.fun_zpow_nonneg](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticwithinat-fun-zpow-nonneg.md) | 724 | `result-track:4a97f77f0bd675451e22f84655b4f70a97bc5ccbac34354c6ec8ef085334fae4` |
| 104 | `lemma` | [AnalyticWithinAt.zpow_nonneg](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticwithinat-zpow-nonneg.md) | 731 | `result-track:633ffc857a599803e40dbbf9ae3b662161fbc93ba441f9efae35450d87f44867` |
| 105 | `lemma` | [AnalyticAt.fun_zpow_nonneg](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-fun-zpow-nonneg.md) | 738 | `result-track:bf2c441ff6a3aa919a1083fe38d6919aeeffff56198317659cf107ab9f83b338` |
| 106 | `lemma` | [AnalyticAt.zpow_nonneg](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-zpow-nonneg.md) | 744 | `result-track:077810f26e03be4ae67959e391fe75112cb9a112d288ce4c11abfc34e30f86ab` |
| 107 | `lemma` | [AnalyticOn.fun_zpow_nonneg](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticon-fun-zpow-nonneg.md) | 750 | `result-track:d4de489656c465243ad623556a9f4c60e0ab96b1ce1bd6d83cba3e9ccc3e8062` |
| 108 | `lemma` | [AnalyticOn.zpow_nonneg](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticon-zpow-nonneg.md) | 757 | `result-track:e1ddef6dec33d26ce35a691d64dc34e9da7b8c6154398aaf4d362b65fda19887` |
| 109 | `lemma` | [AnalyticOnNhd.fun_zpow_nonneg](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticonnhd-fun-zpow-nonneg.md) | 764 | `result-track:6c637e433231425adb7290384e2dcd97c5fd70f4d6449345a49bd88cb4e22100` |
| 110 | `lemma` | [AnalyticOnNhd.zpow_nonneg](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticonnhd-zpow-nonneg.md) | 772 | `result-track:559d9e56de6467bbba07190e23e6ae51b115bb699491e723d9d9381d5dc29dba` |
| 111 | `lemma` | [HasFPowerSeriesWithinOnBall.restrictScalars](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerserieswithinonball-restrictscalars.md) | 788 | `result-track:f2f558f2b931cff44bb003b9feebb489c18e429ff8af168b87280938b6708419` |
| 112 | `lemma` | [HasFPowerSeriesOnBall.restrictScalars](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerseriesonball-restrictscalars.md) | 792 | `result-track:9422def69c12184c4eee0cab02736ca745d58a2f9f7d980d5fe6b252f533a60a` |
| 113 | `lemma` | [HasFPowerSeriesWithinAt.restrictScalars](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerserieswithinat-restrictscalars.md) | 796 | `result-track:7ac73ff707d526a57d71e3f3a99bb4db609ad281f590d460d7d023688f5e2dbf` |
| 114 | `lemma` | [HasFPowerSeriesAt.restrictScalars](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerseriesat-restrictscalars.md) | 801 | `result-track:335246bf09b335e9e2f3224a9ea7020f82af557517f9338283e900a64906e4e9` |
| 115 | `lemma` | [AnalyticWithinAt.restrictScalars](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticwithinat-restrictscalars.md) | 806 | `result-track:ac0187b1bef3ec15062167fd03744371bb245c89a950e46a7f6ecf081685d250` |
| 116 | `lemma` | [AnalyticAt.restrictScalars](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-restrictscalars.md) | 811 | `result-track:3c8b3e1b659684e0673b323f2d06e818e993abab1ebecba51a89cdbe8d26b565` |
| 117 | `lemma` | [AnalyticOn.restrictScalars](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticon-restrictscalars.md) | 816 | `result-track:ad08f39596fa6cbb4412c1458833ad72bc5844004b34ef75b72b466dc818722e` |
| 118 | `lemma` | [AnalyticOnNhd.restrictScalars](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticonnhd-restrictscalars.md) | 820 | `result-track:a13e18114c97bf3d39d3655b1b6dea3f80abd1b721f7d56a94f78b8400d92a93` |
| 119 | `def` | [formalMultilinearSeries_geometric](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/formalmultilinearseries-geometric.md) | 836 | `declaration-track:f8cf0ef772d6651fc3271c1b3f9e28c0ed7d0d17a1abebf42881608af3b76515` |
| 120 | `theorem` | [formalMultilinearSeries_geometric_eq_ofScalars](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/formalmultilinearseries-geometric-eq-ofscalars.md) | 840 | `result-track:5c01b4d1f339e9b3992cfabff9858a2c6e1cc5f71d45424549cbf048fc1dd932` |
| 121 | `lemma` | [formalMultilinearSeries_geometric_apply_norm_le](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/formalmultilinearseries-geometric-apply-norm-le.md) | 846 | `result-track:a55ae34db6bf72e84d54aa17346ffe0d14b308d9f1226b1891a43ca4bddfcce7` |
| 122 | `lemma` | [formalMultilinearSeries_geometric_apply_norm](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/formalmultilinearseries-geometric-apply-norm.md) | 850 | `result-track:df87d94f16d4f807ebde08a5e3a106a364080bfc4f841c486c30cde76d1d58ff` |
| 123 | `lemma` | [one_le_formalMultilinearSeries_geometric_radius](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/one-le-formalmultilinearseries-geometric-radius.md) | 856 | `result-track:37c17cdbcb926bf1dc560e5371d3bdb19e7b2bd9b096e59cc01d842fb9cf9b60` |
| 124 | `lemma` | [formalMultilinearSeries_geometric_radius](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/formalmultilinearseries-geometric-radius.md) | 863 | `result-track:a447b4d3c3a940e775ea7a3afbcb71f9bce12d3dfd0f96b91adfbc6cb71ab650` |
| 125 | `lemma` | [hasFPowerSeriesOnBall_inverse_one_sub](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerseriesonball-inverse-one-sub.md) | 869 | `result-track:9517622623f282647588c83e2505e91887264caf9390e3e5ea9385981e56d568` |
| 126 | `lemma` | [analyticAt_inverse_one_sub](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-inverse-one-sub.md) | 885 | `result-track:ffb6d58e44f7d9036c26d4e75b13a0af18b80c6291e7570acdbefa365b3dbf74` |
| 127 | `lemma` | [analyticAt_inverse](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-inverse.md) | 893 | `result-track:520fc22cbc18c37103d5467e9aece5fa40e446684090db2e1e2724eef727223b` |
| 128 | `lemma` | [analyticOnNhd_inverse](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticonnhd-inverse.md) | 921 | `result-track:81f215c74324d45da915c9b9ccc26331d40717c9858eb927b296419ddecc4877` |
| 129 | `lemma` | [hasFPowerSeriesOnBall_inv_one_sub](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerseriesonball-inv-one-sub.md) | 926 | `result-track:a1d61de0397e9d489d33b6853a73699ea99ea280f6e2508e2d9471534631d563` |
| 130 | `lemma` | [analyticAt_inv_one_sub](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-inv-one-sub.md) | 933 | `result-track:946f78d9593fe8b5fbd8155815ae5d7805653686e03e7fe18efaa15f6d39dea2` |
| 131 | `lemma` | [analyticAt_inv](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-inv-source-edition-2.md) | 940 | `result-track:d931c19ccc89cd8d89d90002587c2e6fcaae7c4108caf6ffb551c3395e9f5f5a` |
| 132 | `lemma` | [analyticOnNhd_inv](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticonnhd-inv-source-edition-2.md) | 945 | `result-track:c23c900b13cbe80a590d62afb8578b1faa42739ef85e90cba414f4b47f0eeeef` |
| 133 | `lemma` | [analyticOn_inv](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticon-inv-source-edition-2.md) | 948 | `result-track:835a894ad7dbed16536946177db41044e1bc712783eeec8afa493c9ed8502017` |
| 134 | `theorem` | [AnalyticWithinAt.fun_inv](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticwithinat-fun-inv.md) | 952 | `result-track:71e64133dbfd73b6c885c37b20075fc5826cd229fc33256fcdc7eaf5caa91192` |
| 135 | `theorem` | [AnalyticWithinAt.inv](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticwithinat-inv.md) | 958 | `result-track:6fbd904ed1e20daa5ff18b52266b3758a6d2bd521e8867ae91cba9a386b0fc34` |
| 136 | `theorem` | [AnalyticAt.fun_inv](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-fun-inv.md) | 965 | `result-track:6c0b5e10cb34aa3c143005dcf74acf91662f0eed5c3d1400c897d257d1c4c358` |
| 137 | `theorem` | [AnalyticAt.inv](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-inv.md) | 971 | `result-track:266e4608349055c1758fc717c727703086fbb5ff48f5ec043593693581a9922e` |
| 138 | `theorem` | [AnalyticOn.fun_inv](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticon-fun-inv.md) | 976 | `result-track:96b77c0a04829c1561557ed0984a0d6e6d99f1c0ff69a595911dcd72642a346a` |
| 139 | `theorem` | [AnalyticOn.inv](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticon-inv.md) | 983 | `result-track:6aa3640770f8c7715ef0b60e708ad74904610bc1073fe34e109ac9f3f467c0a5` |
| 140 | `theorem` | [AnalyticOnNhd.fun_inv](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticonnhd-fun-inv.md) | 988 | `result-track:b7329bc4a387552331020d4d3f4e1ba350e52e1d2fc23d3bee33bd6c1d26bd16` |
| 141 | `theorem` | [AnalyticOnNhd.inv](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticonnhd-inv.md) | 994 | `result-track:95db3da1808ad5befb0a3a810921936cca944960d9c1612627a7b00ef234aa8c` |
| 142 | `lemma` | [AnalyticWithinAt.fun_zpow](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticwithinat-fun-zpow.md) | 1001 | `result-track:846a5c0085a02742c0130d8ccb15537c68913be4473a3730197cf25095e53899` |
| 143 | `lemma` | [AnalyticWithinAt.zpow](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticwithinat-zpow.md) | 1012 | `result-track:f20ef0be9168a1ae70ee9343c37a4f296bf8b16ea5e8d39dc000a96a41e62191` |
| 144 | `lemma` | [AnalyticAt.fun_zpow](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-fun-zpow.md) | 1019 | `result-track:5586d253af2044c3e1056257077db7f5a954bf5f124acd0c15eaca56a09c4bb0` |
| 145 | `lemma` | [AnalyticAt.zpow](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-zpow.md) | 1029 | `result-track:d2402ce3968cbb42a0912942ce2b5e90930391befc96698a83516d1becff294a` |
| 146 | `lemma` | [AnalyticOn.fun_zpow](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticon-fun-zpow.md) | 1035 | `result-track:c1e5a8da4b9c3affb9920d043837b9b965e5a7d9712f5ebb6578cdcf02c0dfec` |
| 147 | `lemma` | [AnalyticOn.zpow](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticon-zpow.md) | 1042 | `result-track:6b315102a264056d92617f1b76150e3743ac85b44b9eb25a1ce97c4d4a0134f5` |
| 148 | `lemma` | [AnalyticOnNhd.fun_zpow](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticonnhd-fun-zpow.md) | 1049 | `result-track:28d4e25afa09eeedb743822f864ce5626a74885337b52ee29863b67a2320f4a8` |
| 149 | `lemma` | [AnalyticOnNhd.zpow](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticonnhd-zpow.md) | 1056 | `result-track:e41b25c409a739e5634db2cd11b3a666ae01eda41105dc6966cc95378bb99425` |
| 150 | `theorem` | [analyticAt_iff_analytic_fun_smul](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-iff-analytic-fun-smul.md) | 1063 | `result-track:5ed98608a7395db8acabe8dace787c31d65d8081ea65d69bd1e94945d366981c` |
| 151 | `theorem` | [analyticAt_iff_analytic_smul](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-iff-analytic-smul.md) | 1078 | `result-track:ed55ac9849bbdbce629bd95e6278e732bb57d83c649a96f04ef99aecc49d2fd1` |
| 152 | `theorem` | [analyticAt_iff_analytic_fun_mul](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-iff-analytic-fun-mul.md) | 1085 | `result-track:099a47ed18de72d60d35f23386b3db04f26c64ea8c5a6ff1b8630a8d1a277a32` |
| 153 | `theorem` | [analyticAt_iff_analytic_mul](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-iff-analytic-mul.md) | 1093 | `result-track:6288dc4f6c98a7f08ecdb33f6aae80709f26a885dada311d9d94e1e2d3f6dc8a` |
| 154 | `theorem` | [AnalyticWithinAt.div](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticwithinat-div.md) | 1099 | `result-track:2ed1e2a870424899946c58243c475e7ab37a65e62c826d58acd73f8c8b92bae2` |
| 155 | `theorem` | [AnalyticAt.fun_div](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-fun-div.md) | 1106 | `result-track:c3392463bf8c3a79396ced730ab2aadca641df0d92155f3a872fdc3b62151646` |
| 156 | `theorem` | [AnalyticAt.div](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-div.md) | 1112 | `result-track:881e7be4a1306a92afcc749151f4311fd3f0c180ef72a303434cf7eb8a96363a` |
| 157 | `theorem` | [AnalyticOn.div](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticon-div.md) | 1120 | `result-track:25c332f7e283f3096b81e4fe0bba777e7acee194cfee7b37dd103c9d773be5d1` |
| 158 | `theorem` | [AnalyticOnNhd.div](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticonnhd-div.md) | 1126 | `result-track:4ccc53a70d1ebba3e3162a436458123c14a274634b845f6be41680737fe24844` |
| 159 | `theorem` | [Finset.analyticWithinAt_fun_sum](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/finset-analyticwithinat-fun-sum.md) | 1136 | `result-track:7aa996ab9f40e6a6641957865eeb5c5fbd9f8f6ea783a71a2e4e2333adb588e1` |
| 160 | `theorem` | [Finset.analyticWithinAt_sum](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/finset-analyticwithinat-sum.md) | 1148 | `result-track:98a06712d60585a4b2014aed7d5478c2390a91798bf58bf70c42f9fde14f7356` |
| 161 | `theorem` | [Finset.analyticAt_fun_sum](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/finset-analyticat-fun-sum.md) | 1156 | `result-track:876aed58f0a39b7ed761d0899ebbb835d840d55fd3cd32ee3298907e4ced3634` |
| 162 | `theorem` | [Finset.analyticAt_sum](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/finset-analyticat-sum.md) | 1164 | `result-track:1bc35ced084f3fd0c2148713b5c897fd5597f35abdea005e0207c777ba76312d` |
| 163 | `theorem` | [Finset.analyticOn_fun_sum](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/finset-analyticon-fun-sum.md) | 1171 | `result-track:61d428e5f27a8e8fbce86f11eaa33b7f5a157ecf9e5153d8ce1150404c6f5d54` |
| 164 | `theorem` | [Finset.analyticOn_sum](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/finset-analyticon-sum.md) | 1177 | `result-track:e55e7b13e3552a900bcc69771fa7e5535283b657d46f6722fa0b0db1829388b6` |
| 165 | `theorem` | [Finset.analyticOnNhd_fun_sum](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/finset-analyticonnhd-fun-sum.md) | 1183 | `result-track:d002b418595b4f11e486c468287ce7b33110144857d4e0e1abb30c8de5d01a4c` |
| 166 | `theorem` | [Finset.analyticOnNhd_sum](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/finset-analyticonnhd-sum.md) | 1189 | `result-track:49afd93eaf0e7e3d2078dd243f9756627475b1243184ac0e5ab21f96c14b7aa5` |
| 167 | `theorem` | [Finset.analyticWithinAt_fun_prod](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/finset-analyticwithinat-fun-prod.md) | 1195 | `result-track:5e2f9cb711ba35a6780c17de2c034c426920bec07861e9a3b09699e8d847ffd7` |
| 168 | `theorem` | [Finset.analyticWithinAt_prod](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/finset-analyticwithinat-prod.md) | 1207 | `result-track:358a11945e15149bc745ed6ffae00130338e149a2b3f8bea9a33cca41dffe9d1` |
| 169 | `theorem` | [Finset.analyticAt_fun_prod](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/finset-analyticat-fun-prod.md) | 1215 | `result-track:2d69c7f0dd2878eb60ec1905cc3bb8be2ba184088713b96ce2fbd86e669a2473` |
| 170 | `theorem` | [Finset.analyticAt_prod](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/finset-analyticat-prod.md) | 1223 | `result-track:949c52827c555976fde5cd256d0a42d630a86e49e489bbb6cf9cf6fd01b1f77f` |
| 171 | `theorem` | [Finset.analyticOn_fun_prod](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/finset-analyticon-fun-prod.md) | 1230 | `result-track:f367955af32cd05f5ccdb036903d4d2fd63619c1f034509e8f2232ac1308031c` |
| 172 | `theorem` | [Finset.analyticOn_prod](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/finset-analyticon-prod.md) | 1236 | `result-track:99dc2adadc8187d6d89b82ad9c1a0905b3b03333fa189f8f3dd65245b545c195` |
| 173 | `theorem` | [Finset.analyticOnNhd_fun_prod](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/finset-analyticonnhd-fun-prod.md) | 1242 | `result-track:148dcf7e6b94a3e4d809196e567b99c33bab068fdf6fb5b9711198ffdc218493` |
| 174 | `theorem` | [Finset.analyticOnNhd_prod](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/finset-analyticonnhd-prod.md) | 1248 | `result-track:c832e6b38c316efeba39c06fe835fa05c6b7809d913ba93e16981d47f5f1f153` |
| 175 | `theorem` | [analyticAt_finprod](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/analyticat-finprod.md) | 1255 | `result-track:66f486fbcd886c7ba3814f1a4499e389fa976343563c472f13b09dcdfa012d72` |
| 176 | `theorem` | [HasFPowerSeriesWithinOnBall.unshift](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerserieswithinonball-unshift.md) | 1272 | `result-track:8b60bb01a3f6dc617d0ae36bbc7d76927887b24bf05b70357583b2c7bcb9cf1f` |
| 177 | `theorem` | [HasFPowerSeriesOnBall.unshift](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerseriesonball-unshift.md) | 1285 | `result-track:5a76e6e0c77fdc66de38370d36749ffd9b9ad05940f54650402b62172b990556` |
| 178 | `theorem` | [HasFPowerSeriesWithinAt.unshift](../../../../FunctionalAnalysis/AnalyticConstructions.lean/declarations/hasfpowerserieswithinat-unshift.md) | 1298 | `result-track:0773d5a3f9ad3e42e748e028cdd4a24b1c2dbb8af545e6f261117ba698f725b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=34125fab5fe144d5953b5bced1e09b4beec7922af7b08cab41a0c913193d6f3e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/Constructions/Varianta34ea55ba46afdd9591a6ba1361e94050b9607e3f8dbc6b0120460fbee69de23.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/Constructions/Varianta34ea55ba46afdd9591a6ba1361e94050b9607e3f8dbc6b0120460fbee69de23.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
