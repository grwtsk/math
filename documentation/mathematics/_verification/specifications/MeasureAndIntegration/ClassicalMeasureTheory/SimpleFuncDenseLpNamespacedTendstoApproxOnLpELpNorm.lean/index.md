# Verification target: Simple Func Dense Lp Namespaced Tendsto Approx On Lp ELp Norm

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc237f045196c891c518d440ecfe10e5273ff39c",
  "lexical_observation_count": 88,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant0f887209858333703963bb02ef2de5acb678d5d8960d78f45bf90387d858097f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc237f045196c891c518d440ecfe10e5273ff39c`.

Source path: `GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant0f887209858333703963bb02ef2de5acb678d5d8960d78f45bf90387d858097f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant0f887209858333703963bb02ef2de5acb678d5d8960d78f45bf90387d858097f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.L1Space.AEEqFun` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.Complete` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.Indicator` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nnnorm_approxOn_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/nnnorm-approxon-le.md) | 74 | `result-track:b806c8f1477911c8dc448ba61d51f1252bdef7504259b46175784cd8d800cea7` |
| 2 | `theorem` | [norm_approxOn_y₀_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/norm-approxon-y-le.md) | 82 | `result-track:87373865b2a391642a3a92adf19af9e11537450e4af8d4e4034cf8f98d47b605` |
| 3 | `theorem` | [norm_approxOn_zero_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/norm-approxon-zero-le.md) | 88 | `result-track:32c369d7d61ef612d042791a467fa5e80593077822b9c6865825f1f6ded72b79` |
| 4 | `theorem` | [tendsto_approxOn_Lp_eLpNorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/tendsto-approxon-lp-elpnorm.md) | 94 | `result-track:86d2548a7160de2de43f8fb2e373a4de36f04e67f83326327ff2a5c8a9084dcf` |
| 5 | `theorem` | [memLp_approxOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/memlp-approxon.md) | 131 | `result-track:8b3a23dca739aeec2bc0678d16ff2b774723a4c895cf027146a4bbd112027643` |
| 6 | `theorem` | [tendsto_approxOn_range_Lp_eLpNorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/tendsto-approxon-range-lp-elpnorm.md) | 160 | `result-track:85254e7d972ac1b8286effbe4c3c2fe891b91ea308f7e7751bbf74715043c793` |
| 7 | `theorem` | [memLp_approxOn_range](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/memlp-approxon-range.md) | 169 | `result-track:5f6ebd2654ccdc8c879edbee5bb6da4cefc0fa58db59f8c8d2d8832b55da3292` |
| 8 | `theorem` | [tendsto_approxOn_range_Lp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/tendsto-approxon-range-lp.md) | 174 | `result-track:f9032cb5a0ac085f80d8bac751833c8a43546bb7865901066f94c31531a543b4` |
| 9 | `theorem` | [Simple Func Dense Lp Namespaced Tendsto Approx On Lp ELp Norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/exists-simplefunc-elpnorm-sub-lt.md) | 185 | `result-track:692be64805602a70dbe71d78dd4e66964aae97c3d14e8832509b22062493215c` |
| 10 | `theorem` | [tendsto_approxOn_L1_enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/tendsto-approxon-l1-enorm.md) | 215 | `result-track:111f9cdbbded83dee55b989dc661d279fae0007b7e1caf2b4e0a0c3e58079194` |
| 11 | `theorem` | [integrable_approxOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/integrable-approxon.md) | 225 | `result-track:caac6729952ca7123049664f2b3201cc901c4b153f35a16470d390c418dee7b3` |
| 12 | `theorem` | [tendsto_approxOn_range_L1_enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/tendsto-approxon-range-l1-enorm.md) | 231 | `result-track:c95805118bf669088ca23d265fe84100b93e5558c6ef7fe8b44864663de6368b` |
| 13 | `theorem` | [integrable_approxOn_range](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/integrable-approxon-range.md) | 242 | `result-track:df7fc60068f54980a99af28f4a2f1c8e7f248553d9e5ea0c832242cffa6e394c` |
| 14 | `theorem` | [exists_forall_norm_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/exists-forall-norm-le.md) | 265 | `result-track:3b8648e739ae15f4a980d2c101037f755d978b60526ff05a6b0927400c8b6a65` |
| 15 | `theorem` | [memLp_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/memlp-zero.md) | 268 | `result-track:92f9ed91984c0986bbf9ef8dda57f75b28a3716d10240e3a95edba7051dbc53b` |
| 16 | `theorem` | [memLp_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/memlp-top.md) | 271 | `result-track:6d23ac9b600ff839c75f8d3fa15cfc173bb646fcdf17d3c549ad8c55dcc18b52` |
| 17 | `theorem` | [eLpNorm'_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/elpnorm-eq.md) | 275 | `result-track:0e2a9bd16841b874713efe5142677268d3206d21c4d0037e5751efd754d7f0fb` |
| 18 | `theorem` | [measure_preimage_lt_top_of_memLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/measure-preimage-lt-top-of-memlp.md) | 280 | `result-track:83a8a635906fac6497ca1102524a0bbd4ae268df511668323d0ef58f16edb619` |
| 19 | `theorem` | [memLp_of_finite_measure_preimage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/memlp-of-finite-measure-preimage.md) | 308 | `result-track:c8bfb0f37e5ef978270dba8e99875e869633539c232ab642cd208dbbef1e119e` |
| 20 | `theorem` | [memLp_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/memlp-iff.md) | 322 | `result-track:dc903657bd3f59492a4bb95ca9d127a7e5e02de9f0b40a397ea3ae955ab94442` |
| 21 | `theorem` | [integrable_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/integrable-iff.md) | 327 | `result-track:daa3b683a6850bec03a3ea8a8ed9b3a68cc01991a8af1aa1d43b51ae53afa48d` |
| 22 | `theorem` | [memLp_iff_integrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/memlp-iff-integrable.md) | 330 | `result-track:b0d7d874d61efacb721f038b959378331f336bdf81cd300e6920cd17cf551821` |
| 23 | `theorem` | [memLp_iff_finMeasSupp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/memlp-iff-finmeassupp.md) | 334 | `result-track:3ca50b4fbc082ba7b82520a8f73d127699eac67861af26581f235d4f835a701f` |
| 24 | `theorem` | [integrable_iff_finMeasSupp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/integrable-iff-finmeassupp.md) | 338 | `result-track:c0ddc0cdae6a4d3cc292bc29dc468297e351fe4bb1b3868c05662ab6a7e255d7` |
| 25 | `theorem` | [FinMeasSupp.integrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/finmeassupp-integrable.md) | 341 | `result-track:4c987c42babb039763c840b1458bf7fff29a5c4ed22f36e031f1b3a839075534` |
| 26 | `theorem` | [integrable_pair](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/integrable-pair.md) | 344 | `result-track:54e141ef40881209e8adc75970b247e4cb4d56baca3a1cf9fc2b1b289054ceee` |
| 27 | `theorem` | [memLp_of_isFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/memlp-of-isfinitemeasure.md) | 348 | `result-track:0a50ceb3c41aef8075c8f24521402edccb9834588a4cc397c0646984815d567b` |
| 28 | `theorem` | [integrable_of_isFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/integrable-of-isfinitemeasure.md) | 354 | `result-track:127896b0985f513679a9be28400ffff50d969b9c43947844be4764a294e62fb2` |
| 29 | `theorem` | [measure_preimage_lt_top_of_integrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/measure-preimage-lt-top-of-integrable.md) | 357 | `result-track:ce07e1442055e61e7dc66c24468c825ac1cb2a1774bf32d28ef49906819d906a` |
| 30 | `theorem` | [measure_support_lt_top_of_memLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/measure-support-lt-top-of-memlp.md) | 361 | `result-track:c6020abe5989129c9748b78b1b432940969171c725e5b23bf6490a7756e4b9f3` |
| 31 | `theorem` | [measure_support_lt_top_of_integrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/measure-support-lt-top-of-integrable.md) | 365 | `result-track:ad440ef62c22edb8ce0025a9b9b61a22ee2caabd5a336489fb9879effa4858d1` |
| 32 | `theorem` | [measure_lt_top_of_memLp_indicator](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/measure-lt-top-of-memlp-indicator.md) | 369 | `result-track:400343e7c55f4b3dcfcb6abeeeb5168aeeb011a1579053d61ca6914d80bd43fb` |
| 33 | `def` | [simpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/simplefunc.md) | 394 | `declaration-track:9ee46f92238ee9d69b472f4e4d81728d814a368bb7471d6abc7c85ab44bceb93` |
| 34 | `theorem` | [eq'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/eq.md) | 417 | `result-track:8dace621656991eefb80a16bfdd0d0a05c3a621ec610a2654bb4d995f2cbea50` |
| 35 | `def` | [smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/smul.md) | 431 | `declaration-track:aa774cbb68514464b9dde0a1344195d538f09bfc5036208a538a920f43e0f553` |
| 36 | `theorem` | [coe_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/coe-smul.md) | 443 | `result-track:cf88ac8d746330cdfe06bc49aa943694269fdb6c99052da3253f6195435b3b0f` |
| 37 | `def` | [module](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/module.md) | 449 | `declaration-track:8dd36421a5026cee7dac5dc04d1469638681e0059c9d49bf41a9d8ece5d2acb5` |
| 38 | `theorem` | [isBoundedSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/isboundedsmul.md) | 461 | `result-track:2c662b9759cb16d61d6e97111e1b2bae44f291fc5c75b455c176d80b07116824` |
| 39 | `def` | [normedSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/normedspace.md) | 470 | `declaration-track:535cf57bda44f10ef4330670fcfa26f0628d6a0b8fff2896701b2aead53cae35` |
| 40 | `abbrev` | [toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/tolp.md) | 481 | `declaration-track:0087ae98bbf73ed47a550f5b00994cf40d41d04462c99acf3affa969f2867069` |
| 41 | `theorem` | [toLp_eq_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/tolp-eq-tolp.md) | 484 | `result-track:b91c1cab4c062535b8e8759d6fa95be0fc9f3211ff483b3b929cdbd6f98fa12c` |
| 42 | `theorem` | [toLp_eq_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/tolp-eq-mk.md) | 487 | `result-track:79fcda7e340052d34eec6553e99fb3baf628d7dc7ff9d0fecad5ee58f57d694c` |
| 43 | `theorem` | [toLp_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/tolp-zero.md) | 491 | `result-track:ed05267ce22c3a83146a471842b599e928f6370011973ee7a9d3df8618db6214` |
| 44 | `theorem` | [toLp_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/tolp-add.md) | 494 | `result-track:4f0dae05770eaffaf25069df0d2d21d30f577e8dfe5a11f7f1104a8143a0e220` |
| 45 | `theorem` | [toLp_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/tolp-neg.md) | 498 | `result-track:4c5e03358609a6f03611f10d4615b38708e83ff266ec9fd03de029099a35972b` |
| 46 | `theorem` | [toLp_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/tolp-sub.md) | 501 | `result-track:069b33731fc9b3ff0f8f8076f75092a60646aa0618c13c322074630c2a186bdc` |
| 47 | `theorem` | [toLp_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/tolp-smul.md) | 507 | `result-track:0623e0cac71644b3254e00e2fa61704558aa06a662473b7db2587ebf775ec0df` |
| 48 | `theorem` | [norm_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/norm-tolp.md) | 511 | `result-track:8766e383cf62a99b806b4d6a85fae7ddf3c8420f84993dbd61ada20ebaad0fac` |
| 49 | `def` | [toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/tosimplefunc.md) | 520 | `declaration-track:220728ca88f6fcd34c6c84d245255fcbd7fa68ea088a52c615c03004d7203eb0` |
| 50 | `theorem` | [measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/measurable.md) | 525 | `result-track:9fa305f938f18db98ef643ede58a4735a26a232c100a19c2617c579d6d8d4185` |
| 51 | `theorem` | [stronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/stronglymeasurable.md) | 529 | `result-track:22c6022952a39042adf89f8220a6210daf0f9e1770fa7fec0485784f81a5ffb0` |
| 52 | `theorem` | [aemeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/aemeasurable.md) | 534 | `result-track:bb2a8f03bed9972854065181646f180d85160b34538742b085dd539a87208faf` |
| 53 | `theorem` | [aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/aestronglymeasurable.md) | 538 | `result-track:695f3c62168a4cf5a290e2e9b9c6714cf37d7c344347629663a7704d56ceca59` |
| 54 | `theorem` | [toSimpleFunc_eq_toFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/tosimplefunc-eq-tofun.md) | 542 | `result-track:905c6d4e065defe078087e1d97b7ff5f56ed6ec9df1b2e75fa9b68e9b4c19647` |
| 55 | `theorem` | [memLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/memlp.md) | 549 | `result-track:fcf1c12ffc1597d90d74b6be8797e3b3194a7e84a16250a31db50f13c690153f` |
| 56 | `theorem` | [toLp_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/tolp-tosimplefunc.md) | 552 | `result-track:45d93a03f5f463879b3b4cdcf794066aaa00c442ad6eb8ca09c5af617f6e1962` |
| 57 | `theorem` | [toSimpleFunc_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/tosimplefunc-tolp.md) | 556 | `result-track:08954b3ddccc785afeac6d412a8bebb093d4020357f8982928e21d7472d805bb` |
| 58 | `theorem` | [zero_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/zero-tosimplefunc.md) | 561 | `result-track:17657a1a9b323de7eea44ec0c6b71f280705d710fb41ef2ada25804b4956cd6e` |
| 59 | `theorem` | [add_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/add-tosimplefunc.md) | 568 | `result-track:47520c21e9c279064b8c5ef15b7b2a642428e4dd569d77c10f9657715a0edbb7` |
| 60 | `theorem` | [neg_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/neg-tosimplefunc.md) | 575 | `result-track:a0ae23055aae4a69de3938b1621ea8b56fabdc22683cb64b0497bdb7493434a7` |
| 61 | `theorem` | [sub_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/sub-tosimplefunc.md) | 581 | `result-track:daf44865a39f6d50c03b05d160823d5e050aa4a9445c30df5d186a4477a606ed` |
| 62 | `theorem` | [smul_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/smul-tosimplefunc.md) | 590 | `result-track:5385f01ddfc4cef780cade6e9a5f5ad2b1b25ccf22ddc502d858c6662a041376` |
| 63 | `theorem` | [norm_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/norm-tosimplefunc.md) | 597 | `result-track:6e15c402d849d26d866b5bdbcb733796dbbf92eaab999e6567ed13b6504805c2` |
| 64 | `def` | [indicatorConst](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/indicatorconst.md) | 608 | `declaration-track:def42f71a339d9e1aa6a9863489763484637d8afe2a93a8b485deaaa92975f8c` |
| 65 | `theorem` | [coe_indicatorConst](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/coe-indicatorconst.md) | 614 | `result-track:784c61727c6bd8a341893049cd447c50f5badcfc45aff92cb9f28409c40cefff` |
| 66 | `theorem` | [toSimpleFunc_indicatorConst](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/tosimplefunc-indicatorconst.md) | 618 | `result-track:dacbbda7dadf52727a7e593cf972e1152a9264097d62e08e2068d7be04b66a87` |
| 67 | `theorem` | [induction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/induction.md) | 627 | `result-track:65a517a62df3c9881909fbb2bbc528a7a0b441c66f4ff57a539f3e3ea3f741e0` |
| 68 | `theorem` | [uniformContinuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/uniformcontinuous.md) | 662 | `result-track:3ca266cc970371c21b3674999022f16e46f0bbe5f3614308aa1e6400e70c908f` |
| 69 | `lemma` | [isUniformEmbedding](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/isuniformembedding.md) | 665 | `result-track:432b6f6e9ebdc78781b4003ed523c669e80c3a9f4098529ac110bdbdfce0937f` |
| 70 | `theorem` | [isUniformInducing](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/isuniforminducing.md) | 668 | `result-track:535cddc2709ca9b4632b43849cf6419eadda65773eb89a075e3516a2f0215b3f` |
| 71 | `lemma` | [isDenseEmbedding](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/isdenseembedding.md) | 671 | `result-track:27e261278347de1c4810a441caacfbc3c2939fb9e76ca5543fc135f3d89454ac` |
| 72 | `theorem` | [isDenseInducing](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/isdenseinducing.md) | 689 | `result-track:2394292864d5f22bd6aa59cc5bf19d363128cfa1f0f05c25e8f1dd8ef8f44de5` |
| 73 | `theorem` | [denseRange](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/denserange.md) | 693 | `result-track:e8841b61e8bf0a600368db65be9358385e16fa9f54c577d1ab96dfa7fefe4ca4` |
| 74 | `theorem` | [dense](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/dense.md) | 697 | `result-track:033a6c4d5525ea16de1be06885b86ac29ca925b2555be12c99001ec1148fb32a` |
| 75 | `def` | [coeToLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/coetolp.md) | 704 | `declaration-track:69b0291b528605a87a1578e9c4650c7f610b6d893faa0b32dacfe426a03d8eaf` |
| 76 | `theorem` | [coeFn_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/coefn-le.md) | 717 | `result-track:cf3666bb58e4927a827937b59cebf71d5f8b7b06a4b1a8a5e84f5df63f44a774` |
| 77 | `instance` | [instAddLeftMono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/instaddleftmono.md) | 720 | `declaration-track:065ae8c9f95d0c79d28e04d319e50322cd64265f5ab8d97792a5638c78ba1428` |
| 78 | `theorem` | [coeFn_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/coefn-zero.md) | 727 | `result-track:ca546f4d2cb8a2582c1fb91f162592c5be2ba8a1e3dfbc46a88880efff95525a` |
| 79 | `theorem` | [coeFn_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/coefn-nonneg.md) | 734 | `result-track:1ae8a781a3c067ae49d655fde68043668d8c095b3d71c0c398d693e8c5433221` |
| 80 | `theorem` | [exists_simpleFunc_nonneg_ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/exists-simplefunc-nonneg-ae-eq.md) | 737 | `result-track:19c4406dd7b775f55352bcfc9e476fa3f47d744b9c2599cb632514f41c15932e` |
| 81 | `def` | [coeSimpleFuncNonnegToLpNonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/coesimplefuncnonnegtolpnonneg.md) | 750 | `declaration-track:63037878da149bc21e9fc57a0040662d3be7cc1894abac0d50431f99da45ff34` |
| 82 | `theorem` | [denseRange_coeSimpleFuncNonnegToLpNonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/denserange-coesimplefuncnonnegtolpnonneg.md) | 753 | `result-track:922f23533986a45a28912688ef88caa1de8837343c621e33a0a8911aebcffe3c` |
| 83 | `theorem` | [Lp.induction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/lp-induction.md) | 825 | `result-track:756087e15025192b1995fb8e7cb20454200d1b9a205ee89e6ee4b191f977b85c` |
| 84 | `theorem` | [MemLp.induction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/memlp-induction.md) | 850 | `result-track:c698701fabe86fc6307c3c110e948518a770e0fbad7e6affe68bf73c4c81073d` |
| 85 | `theorem` | [MemLp.induction_dense](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/memlp-induction-dense.md) | 879 | `result-track:139b939588bfce064f118518daafe88639095b83c62ffbcf10e596ff84b02484` |
| 86 | `theorem` | [L1.SimpleFunc.toLp_one_eq_toL1](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/l1-simplefunc-tolp-one-eq-tol1.md) | 932 | `result-track:ce5c6037405d819f9799083077b3b1935f754386eab91a165fe874213be3b328` |
| 87 | `theorem` | [L1.SimpleFunc.integrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/l1-simplefunc-integrable.md) | 937 | `result-track:28f4d3ae19417267cf4e9c1e04b53b4c7892732d7862507288bb757040e92694` |
| 88 | `theorem` | [Integrable.induction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedTendstoApproxOnLpELpNorm.lean/declarations/integrable-induction.md) | 954 | `result-track:49b25a672c595dbafdc1482998784ab5b112e51b3621f8b07fc46b9e2e91eadc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=de1d6be2a33c2c8dded9761d45f489129c54b9fae285ceea8c445acc457cdbb8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant0f887209858333703963bb02ef2de5acb678d5d8960d78f45bf90387d858097f.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant0f887209858333703963bb02ef2de5acb678d5d8960d78f45bf90387d858097f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
