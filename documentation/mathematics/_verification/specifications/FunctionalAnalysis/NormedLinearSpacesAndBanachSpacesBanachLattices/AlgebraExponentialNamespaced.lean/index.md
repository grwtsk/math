# Verification target: Algebra Exponential Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65f7c16954d7fea763fb38e78bce65ccf371540d",
  "lexical_observation_count": 86,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Exponential/Variant6a5055aea791f34a29e13c8aea8021f36f9eed2b2d863ff09114fbab49d41ca7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65f7c16954d7fea763fb38e78bce65ccf371540d`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Exponential/Variant6a5055aea791f34a29e13c8aea8021f36f9eed2b2d863ff09114fbab49d41ca7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Exponential/Variant6a5055aea791f34a29e13c8aea8021f36f9eed2b2d863ff09114fbab49d41ca7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Action.ConjAct` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.ChangeOrigin` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Cast` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.OfScalars` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.RCLike` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [expSeries](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/expseries.md) | 110 | `declaration-track:06f524cea7ddc08eb72d3cdb33e107845558fcb166479930fcef06eaf51e2477` |
| 2 | `theorem` | [expSeries_eq_ofScalars](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/expseries-eq-ofscalars.md) | 114 | `result-track:1ebb86913f7ee2785e8b65aebca8b7f54a863ea5f4fda467ef8fe520eb9bee30` |
| 3 | `def` | [exp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/exp.md) | 125 | `declaration-track:5603430b72c9f3446c98591ca0764e155868b44c6163b171861a43c16b5c52fb` |
| 4 | `theorem` | [expSeries_apply_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/expseries-apply-eq.md) | 130 | `result-track:6ef846a4966496018ea2f5a6bc050cb6085d3e0f97b1a71638dc51bc27ea494c` |
| 5 | `theorem` | [expSeries_apply_eq'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/expseries-apply-eq-source-edition-2.md) | 133 | `result-track:c4385d2199d7be86d1e1c717c7690456b36e944b184fdc308924814cafd61717` |
| 6 | `theorem` | [expSeries_sum_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/expseries-sum-eq.md) | 137 | `result-track:d37d4939b9230615cb0d697159ed201a45d05974c84e2f75e5262d27ceaa4934` |
| 7 | `theorem` | [exp_eq_tsum](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/exp-eq-tsum.md) | 140 | `result-track:929aff91902069a6a3ba58e5154574b2282fd2c78213b53b08e72632bca2707c` |
| 8 | `theorem` | [exp_eq_ofScalarsSum](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/exp-eq-ofscalarssum.md) | 144 | `result-track:81578f6cb3dc55b33a7920542a51b93c8ef5d2c54086fb39ea65733ed690b2ab` |
| 9 | `theorem` | [expSeries_apply_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/expseries-apply-zero.md) | 147 | `result-track:0f8894a1c2c3ae064444235b29a9983fb10993b5bceb61c5f9d2506d80548e01` |
| 10 | `theorem` | [exp_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/exp-zero.md) | 155 | `result-track:e8c882301a1ad88e017cf66a70c21a8fe33707f298926e8989254ea2e101f254` |
| 11 | `theorem` | [exp_op](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/exp-op.md) | 159 | `result-track:c69e199d99dba574433b0387c739bc5a3f3f5b9b745055967c57b4a0d8eb9a05` |
| 12 | `theorem` | [exp_unop](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/exp-unop.md) | 163 | `result-track:0c78c929937f60c775a249430a296869908bbd04b98e2435e1fac812a32c6f3c` |
| 13 | `theorem` | [star_exp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/star-exp.md) | 167 | `result-track:e540bb0de0138dc1ab13125391450ad5861c96479ee19f2969ba50a3c1096d48` |
| 14 | `theorem` | [Algebra Exponential Namespaced](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/exp-source-line-174-occurrence-2.md) | 174 | `result-track:0b7709cba396fdcf88e152631887d71796e62bda8e40265c2fc75537afae82dc` |
| 15 | `theorem` | [Algebra Exponential Namespaced](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/exp-right.md) | 178 | `result-track:64d07c6004f48f202a79536c6b48bc49ff5d42ce8cab18194cac9c272dac2cb1` |
| 16 | `theorem` | [Algebra Exponential Namespaced](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/exp-left.md) | 183 | `result-track:d4b134a9abc773f3bb63f0f9fcdeaf24d41a4227d0d79272140cd94947c40a4d` |
| 17 | `theorem` | [Algebra Exponential Namespaced](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/exp-source-line-186-occurrence-2.md) | 186 | `result-track:9956afb464594aef96cbc4cc3655fa668217c3cd7186922b2ab3852cad8cecd8` |
| 18 | `theorem` | [expSeries_apply_eq_div](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/expseries-apply-eq-div-source-edition-2.md) | 196 | `result-track:9ba84da8936f115341c1b47063393167a65bce7bcc56e7e33607c793085bed75` |
| 19 | `theorem` | [expSeries_apply_eq_div'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/expseries-apply-eq-div.md) | 200 | `result-track:29a95eb5132f2f32351f4a19300b79f2585e78eaa9ab2f0774d6d74793722c69` |
| 20 | `theorem` | [expSeries_sum_eq_div](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/expseries-sum-eq-div.md) | 204 | `result-track:64dd64ae30c8f383de8bba859cd0305dbb22bbdbcc96dd6c77c27006ea0c9d50` |
| 21 | `theorem` | [exp_eq_tsum_div](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/exp-eq-tsum-div.md) | 207 | `result-track:5bfd0a453d2a71e1227f53d38d3e0c9a6f395ea0352e4e1b8c97db0fe17ffb5c` |
| 22 | `theorem` | [norm_expSeries_summable_of_mem_ball](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/norm-expseries-summable-of-mem-ball.md) | 219 | `result-track:02e398f41f61755067ef10a443e78a13ad70525d5611dba89e56f2b079957770` |
| 23 | `theorem` | [norm_expSeries_summable_of_mem_ball'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/norm-expseries-summable-of-mem-ball-source-edition-2.md) | 224 | `result-track:0369070334358a3dd64cc0abc8da7754ec2211f217641674450312c6059d13c7` |
| 24 | `theorem` | [expSeries_summable_of_mem_ball](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/expseries-summable-of-mem-ball-source-edition-2.md) | 235 | `result-track:c8f7f7f422343e4ad013847b55c046eea3d85df8d222c9e2b7523a27c8edb165` |
| 25 | `theorem` | [expSeries_summable_of_mem_ball'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/expseries-summable-of-mem-ball.md) | 240 | `result-track:3eb904c182521ef8d9f781908c15bfbfa8b1698412ab296c524179b1cffcfd3d` |
| 26 | `theorem` | [expSeries_hasSum_exp_of_mem_ball](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/expseries-hassum-exp-of-mem-ball.md) | 245 | `result-track:8e88579d1d92ceb1cce73119300f5eeb6f247e56631a0e9f7f80b5ee35276082` |
| 27 | `theorem` | [expSeries_hasSum_exp_of_mem_ball'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/expseries-hassum-exp-of-mem-ball-source-edition-2.md) | 250 | `result-track:c8a94f6d423ee8f4a3b3a441c9e4f1a060b95922068833cd85dc225d1676b872` |
| 28 | `theorem` | [hasFPowerSeriesOnBall_exp_of_radius_pos](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/hasfpowerseriesonball-exp-of-radius-pos.md) | 256 | `result-track:40bfde80fdfd4901de06ab40426efce9fb142f2c49bcee32d76c3b553ac89c1d` |
| 29 | `theorem` | [hasFPowerSeriesAt_exp_zero_of_radius_pos](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/hasfpowerseriesat-exp-zero-of-radius-pos.md) | 260 | `result-track:75410c61de4a5a34cfcffec7cefe3cfadda8f955d3c576ccee06e6fe19595358` |
| 30 | `theorem` | [continuousOn_exp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/continuouson-exp.md) | 264 | `result-track:d28c976f7aac83b551e1fe49de5a02f2bf7e601acbc5b5fdcac51b9c5a9b2f30` |
| 31 | `theorem` | [analyticAt_exp_of_mem_ball](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/analyticat-exp-of-mem-ball.md) | 267 | `result-track:0b749cefb3b32ac0c86dcdaef1a0ee44731ef6bb20de4b24cb8dcdbb2736d596` |
| 32 | `theorem` | [exp_add_of_commute_of_mem_ball](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/exp-add-of-commute-of-mem-ball.md) | 277 | `result-track:06489aa2b3e2d73b75e143ab7d551fd7e11850de290ac48b55fb2b2bf77be5f0` |
| 33 | `def` | [invertibleExpOfMemBall](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/invertibleexpofmemball.md) | 296 | `declaration-track:17aab8961593b7d37777916af67ae88f887de3b6bcb0d6f4fcf20088f0512f60` |
| 34 | `theorem` | [isUnit_exp_of_mem_ball](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/isunit-exp-of-mem-ball.md) | 312 | `result-track:7fcf8840efa2ddc3ff151cee1410822d7b3b3b4edf7557b120f207da57d7b08d` |
| 35 | `theorem` | [invOf_exp_of_mem_ball](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/invof-exp-of-mem-ball.md) | 316 | `result-track:38ba5a743b2fc775498fb8958ea149fd698f011860c823aff9b318bad73b02d0` |
| 36 | `theorem` | [map_exp_of_mem_ball](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/map-exp-of-mem-ball.md) | 322 | `result-track:e3482c1777ab9fd6b63f2b3cd624e5de32f0a8dcccaa707429866e4703f50018` |
| 37 | `theorem` | [algebraMap_exp_comm_of_mem_ball](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/algebramap-exp-comm-of-mem-ball.md) | 332 | `result-track:480c3524874a761f14e5a4c6d4765df8b4daeab3781f009518506def0586ab4e` |
| 38 | `theorem` | [norm_expSeries_div_summable_of_mem_ball](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/norm-expseries-div-summable-of-mem-ball.md) | 344 | `result-track:c969401e566364dcb250527033ed6b14958d336ff747aa1d73661d5e81f57d2a` |
| 39 | `theorem` | [expSeries_div_summable_of_mem_ball](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/expseries-div-summable-of-mem-ball.md) | 351 | `result-track:fe05285e7e1a206b74fbaec22df443716a66d531bb9365884633e1bb16bed704` |
| 40 | `theorem` | [expSeries_div_hasSum_exp_of_mem_ball](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/expseries-div-hassum-exp-of-mem-ball.md) | 355 | `result-track:a10e48a8569996974b6f5584230a4ce9be2eec53637191027dd3e488e8fc1bab` |
| 41 | `theorem` | [exp_neg_of_mem_ball](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/exp-neg-of-mem-ball.md) | 363 | `result-track:87222dba6e9e5b9cea81b97f7bfcd8370a87a093d0188d47a7e178c65497b2a0` |
| 42 | `theorem` | [exp_add_of_mem_ball](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/exp-add-of-mem-ball.md) | 378 | `result-track:fefa2d4bcaca883e72e34105807d05930ebdae9c17b2d3f6707da2e528e35fc1` |
| 43 | `theorem` | [expSeries_radius_eq_top](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/expseries-radius-eq-top.md) | 394 | `result-track:6d2ea313fa7a8227153f893ab7c2ae6f67eefff5d86b6db9f4d0f799301ab694` |
| 44 | `theorem` | [expSeries_radius_pos](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/expseries-radius-pos.md) | 405 | `result-track:0baf71feb26a3332fd47a976acf17c6e156550cf96ee36c31bc68fa4c4937b66` |
| 45 | `theorem` | [norm_expSeries_summable](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/norm-expseries-summable.md) | 411 | `result-track:edd64438863f505f38da7613412b9700c63c0ba750cac0085dc9c671ddf732e9` |
| 46 | `theorem` | [norm_expSeries_summable'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/norm-expseries-summable-source-edition-2.md) | 414 | `result-track:f6dc0b6a8735469f138c656210cda547ded6173b4e62eb9b42c17351407f8c54` |
| 47 | `theorem` | [expSeries_summable](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/expseries-summable.md) | 421 | `result-track:96942756630c9fb485600e835cce596efd9b4b60975220063a166aed9e22b8d1` |
| 48 | `theorem` | [expSeries_summable'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/expseries-summable-source-edition-2.md) | 424 | `result-track:fb2bc6816a954c01e73ff5d7510a59ef2622a05aa8799ccde9aba6825173b0a5` |
| 49 | `theorem` | [expSeries_hasSum_exp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/expseries-hassum-exp.md) | 427 | `result-track:6e24b3bdb730b0faecba0201d317b6bc0ad7413912e06171a0b8356180eecb8a` |
| 50 | `theorem` | [exp_series_hasSum_exp'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/exp-series-hassum-exp.md) | 430 | `result-track:140af1750b4c31a2da4b03a81ca752c814326b89f75b0f8037b6c067096778af` |
| 51 | `theorem` | [exp_hasFPowerSeriesOnBall](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/exp-hasfpowerseriesonball.md) | 433 | `result-track:03d501a323ab1be6045da648c5bd5b8c682dc5d842d27e37487fc6f06830852e` |
| 52 | `theorem` | [exp_hasFPowerSeriesAt_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/exp-hasfpowerseriesat-zero.md) | 436 | `result-track:d6d6b194055eb22e04531ee2be45d62f4a267806a7ac2679f8e531e6c3fa619b` |
| 53 | `theorem` | [exp_continuous](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/exp-continuous.md) | 440 | `result-track:58f0a8ffc860f4f9a64620f53741033971edcbed437af8eda2a77b53c9a323c5` |
| 54 | `lemma` | [Algebra Exponential Namespaced](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/exp-source-line-446-occurrence-2.md) | 446 | `result-track:e5520fedd73afc38944772fff0f9699ea459e27e6feaad4c64ba8ee068953bb0` |
| 55 | `theorem` | [exp_analytic](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/exp-analytic.md) | 451 | `result-track:3eba7550d12b0c2b8312540a797f2edf5d39a6a07cb3d21bd5d867dceb355750` |
| 56 | `theorem` | [exp_add_of_commute](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/exp-add-of-commute.md) | 456 | `result-track:0200b8be6e6b6df0b399329edf01e9573a1f978f86113a2430a99782d5b216b8` |
| 57 | `def` | [invertibleExp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/invertibleexp.md) | 465 | `declaration-track:efa71195c789ed2bb6add4e7796199e89c65997076747d8dbcda6e70ced9bf25` |
| 58 | `theorem` | [isUnit_exp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/isunit-exp.md) | 468 | `result-track:6f442f5b10ec85bd11aa88ca56fd84906a95669b8059b8b6936af773a5e0cc18` |
| 59 | `theorem` | [invOf_exp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/invof-exp.md) | 471 | `result-track:a7d22db3ea93cf1291f595667d495fa9ad531e4585f35aa0e0585a145dd5ac83` |
| 60 | `theorem` | [Algebra Exponential Namespaced](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/inverse-exp.md) | 474 | `result-track:ce5b31b5a1420b8720088bc69a83176e7a370b335cca33dc12ffa76c7679ae84` |
| 61 | `theorem` | [exp_mem_unitary_of_mem_skewAdjoint](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/exp-mem-unitary-of-mem-skewadjoint.md) | 478 | `result-track:9fbcf4c0551efc4e39f3a6c7fae23009bdf5d3c3b761d132fd31e5ad9765d84b` |
| 62 | `theorem` | [exp_sum_of_commute](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/exp-sum-of-commute.md) | 489 | `result-track:8a6b6df60c91620b3e19224e651eafb5dd34099fe0c59061dc3bbef5bcc3dd63` |
| 63 | `theorem` | [exp_nsmul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/exp-nsmul.md) | 501 | `result-track:289b7a1f25f392844d17a07dce307dad151a1d80b96403cb9e7fef690760ba30` |
| 64 | `theorem` | [map_exp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/map-exp.md) | 509 | `result-track:2a8f7a43fa0d2c813b02fee7abab21e4285f5c78fbfac035d1cc487305f649ed` |
| 65 | `theorem` | [exp_smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/exp-smul.md) | 513 | `result-track:ecfa93b9e46f59b389b426717046a727e4498aeba1aa672a25b23282844e8b74` |
| 66 | `theorem` | [exp_units_conj](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/exp-units-conj.md) | 517 | `result-track:5edab119a87aa719727d969b2354808a868db6cad4bd6c63ff432cab8d7aedf3` |
| 67 | `theorem` | [exp_units_conj'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/exp-units-conj-source-edition-2.md) | 520 | `result-track:ab2af5ded4a17ca56b6511bbd2f2e8a5e3b2743a5160ff87539a0d4ca49e9bd0` |
| 68 | `theorem` | [Algebra Exponential Namespaced](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/fst-exp.md) | 524 | `result-track:cbd8e2cf12e6b5c715c35fb8036be10cdf8b3681d7e0e33658f454dc2376760d` |
| 69 | `theorem` | [Algebra Exponential Namespaced](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/snd-exp.md) | 528 | `result-track:d57a64a50fd6784fcd5a0759f1ccd586b76d766911092d64a7b880478c2e03d7` |
| 70 | `theorem` | [Algebra Exponential Namespaced](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/coe-exp.md) | 532 | `result-track:27eea0fc9e007ef2cf82e8e9f5796f768d35f45f51abe3e24802c51660b289c9` |
| 71 | `theorem` | [Algebra Exponential Namespaced](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/exp-def.md) | 538 | `result-track:b54cc581b77b82c81286fe08b6be3a25f75b05d0a737eeb7362f2a205b5cb192` |
| 72 | `theorem` | [Algebra Exponential Namespaced](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/update-exp.md) | 543 | `result-track:02b723b38f85d8418d07839a0349a0507295b45e48f46be519b648d3ec411cca` |
| 73 | `theorem` | [algebraMap_exp_comm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/algebramap-exp-comm.md) | 553 | `result-track:f677b4aa7a5ccec5e3459bcf2e170a3c3063f71ebd8ec9679541d0fb1cb66316` |
| 74 | `theorem` | [norm_expSeries_div_summable](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/norm-expseries-div-summable.md) | 564 | `result-track:dd125b7159bd64a0f2a3f5218af04bb4c096189899420ec1f708032110630478` |
| 75 | `theorem` | [expSeries_div_summable](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/expseries-div-summable.md) | 570 | `result-track:4de128b07391c8144084be882191d93499ca92f9189ba8c79cee635cb4b589d2` |
| 76 | `theorem` | [expSeries_div_hasSum_exp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/expseries-div-hassum-exp.md) | 573 | `result-track:934e2b0cbd81f8b7bedd28935e3d1cd3d65325222b2657cd22fd3e7bbaea8f49` |
| 77 | `theorem` | [exp_neg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/exp-neg.md) | 578 | `result-track:d23fafe11089d5f2dd55940ddf2f316922ac0fc02c94d87c09edc380aa844a10` |
| 78 | `theorem` | [exp_zsmul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/exp-zsmul.md) | 581 | `result-track:7ca5d2225d8f06b1c5d3da30ba5e2f722a4c3461e16bc647614d20f5dd327433` |
| 79 | `theorem` | [exp_conj](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/exp-conj.md) | 586 | `result-track:0e1aa03f24909c4c6a022cb31b11500c943c62ef63b1450ca801385739c26f0e` |
| 80 | `theorem` | [exp_conj'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/exp-conj-source-edition-2.md) | 589 | `result-track:c5be369fd9acc583dc2daa8883f07e294e05aaabfe37301bd2d3fb093486cc59` |
| 81 | `theorem` | [exp_add](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/exp-add.md) | 600 | `result-track:4ae08f1f395ba1c1085dabf464ce08d98fe86720bfe3cef4ce8390361a4bdf45` |
| 82 | `theorem` | [exp_sum](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/exp-sum.md) | 605 | `result-track:81e3189c025cbc332bf95b1f1585aa3c8c5faf1beff9d2c6663bd757850571a1` |
| 83 | `theorem` | [expSeries_eq_expSeries](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/expseries-eq-expseries.md) | 622 | `result-track:eeb4fb1149dad2ed20ae4fa22feace266c038496df2b5006c3fca99ab01294c6` |
| 84 | `theorem` | [exp_eq_exp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/exp-eq-exp.md) | 628 | `result-track:dfbebc45491233c7938a2d2f35f835edb4409886c2b2c4ff18ef6982f4a5eb44` |
| 85 | `theorem` | [exp_ℝ_ℂ_eq_exp_ℂ_ℂ](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/exp-eq-exp-source-edition-2.md) | 634 | `result-track:ee5bb8875ea5de4c961409e84afa6dc74a9e9bce712d4cf50a2635646694754e` |
| 86 | `theorem` | [of_real_exp_ℝ_ℝ](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraExponentialNamespaced.lean/declarations/of-real-exp.md) | 639 | `result-track:dcce99cce0c9ed23c28226d0ef915bcb6dae01dfea89121d57357843f6210509` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6e9d1ca38d042ffb742fb6a15afd1dd6947761917eb3332063352cf94ed2979a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Exponential/Variant6a5055aea791f34a29e13c8aea8021f36f9eed2b2d863ff09114fbab49d41ca7.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/Exponential/Variant6a5055aea791f34a29e13c8aea8021f36f9eed2b2d863ff09114fbab49d41ca7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
