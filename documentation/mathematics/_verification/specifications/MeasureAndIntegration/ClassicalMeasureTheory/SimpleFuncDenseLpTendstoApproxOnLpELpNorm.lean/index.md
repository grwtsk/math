# Verification target: Simple Func Dense Lp Tendsto Approx On Lp ELp Norm

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8c42bc3f0aa0818639c71056518a58cf5f53418",
  "lexical_observation_count": 88,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant00729b335e80b8e7a5f50d764df1523bf20567e3fdc47561ee5874862851efd0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8c42bc3f0aa0818639c71056518a58cf5f53418`.

Source path: `GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant00729b335e80b8e7a5f50d764df1523bf20567e3fdc47561ee5874862851efd0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant00729b335e80b8e7a5f50d764df1523bf20567e3fdc47561ee5874862851efd0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.L1Space.AEEqFun` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.Complete` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.Indicator` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nnnorm_approxOn_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/nnnorm-approxon-le.md) | 66 | `result-track:c3832e1df6c08986bdaa58458b16dde359abbb4b2698af566a3fe0bc381a25cc` |
| 2 | `theorem` | [norm_approxOn_y₀_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/norm-approxon-y-le.md) | 74 | `result-track:f2a7f810adcfa67d87a97f8fec00c5a5932f81272f1ec1d4410dcc2b3240cdcb` |
| 3 | `theorem` | [norm_approxOn_zero_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/norm-approxon-zero-le.md) | 80 | `result-track:956b7f44e3ae8e6f4e02956d4f31ca3d07e1b85f614d4a5aadf68c1b7b28503b` |
| 4 | `theorem` | [tendsto_approxOn_Lp_eLpNorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/tendsto-approxon-lp-elpnorm.md) | 86 | `result-track:7e04cbfbaf3574c0331fdfaefaaababa373dcfd676dc174b1f7eb9eedd53ff8f` |
| 5 | `theorem` | [memLp_approxOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/memlp-approxon.md) | 123 | `result-track:4f5f61369f7b23d74ec5ed915dd228340e05db1df28ea379ef82b230c5dfeccc` |
| 6 | `theorem` | [tendsto_approxOn_range_Lp_eLpNorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/tendsto-approxon-range-lp-elpnorm.md) | 152 | `result-track:6858c3d83d23a40af31a7c2d945ab06e472024a860c146c8e922ead77c83b1be` |
| 7 | `theorem` | [memLp_approxOn_range](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/memlp-approxon-range.md) | 161 | `result-track:54eb23ee13c34a7716962c858bbab4660a743e725adf5fffca61b6f6a9873b74` |
| 8 | `theorem` | [tendsto_approxOn_range_Lp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/tendsto-approxon-range-lp.md) | 166 | `result-track:6996990e775d4611c0a3a0cff94e6adb1856ced6709dc2176dbc4e15f510a271` |
| 9 | `theorem` | [_root_.MeasureTheory.MemLp.exists_simpleFunc_eLpNorm_sub_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/root-measuretheory-memlp-exists-simplefunc-elpnorm-sub-lt.md) | 177 | `result-track:de9c95f4bcf5d9be5388107092087b7130aee6817edcd8c9c72c8b8cd4bf2851` |
| 10 | `theorem` | [tendsto_approxOn_L1_enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/tendsto-approxon-l1-enorm.md) | 207 | `result-track:21408a0e6359ae139ed346685b1ed3f5949a7e1487b17b645a31e07e2f6341b7` |
| 11 | `theorem` | [integrable_approxOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/integrable-approxon.md) | 217 | `result-track:d2a8081d38623b0bef85550c052e86c24409c26badfaf06f0e637593e3fcb618` |
| 12 | `theorem` | [tendsto_approxOn_range_L1_enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/tendsto-approxon-range-l1-enorm.md) | 223 | `result-track:a7c65a6495231cf4731fe6a86058575f1c280fa3931b810e91c9474138a56134` |
| 13 | `theorem` | [integrable_approxOn_range](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/integrable-approxon-range.md) | 234 | `result-track:65369ae93aefe22639e92f950a8953ad0f1a46c65981c335b1071314400c9361` |
| 14 | `theorem` | [exists_forall_norm_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/exists-forall-norm-le.md) | 257 | `result-track:a6d72fd64e890ddca77caa11100736c5c38bcdff550e3cdf66dd1cce8b2f1c95` |
| 15 | `theorem` | [memLp_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/memlp-zero.md) | 260 | `result-track:643eff0aceb65263b487ec8bcb1a58ba2b8361edb82221771f42be5d8990b878` |
| 16 | `theorem` | [memLp_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/memlp-top.md) | 263 | `result-track:562e63014167e1c1a1d7524043e46503375c06baa29f6403db70c027b549e958` |
| 17 | `theorem` | [eLpNorm'_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/elpnorm-eq.md) | 267 | `result-track:600eab05c31332d5bb5f60b852f7be00ac531d857ab254be6e3e52c8f4f0a720` |
| 18 | `theorem` | [measure_preimage_lt_top_of_memLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/measure-preimage-lt-top-of-memlp.md) | 272 | `result-track:9a0141fa04128f670a64e8f099a77136c290ed2d2cf6f179311359fd696ebcb0` |
| 19 | `theorem` | [memLp_of_finite_measure_preimage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/memlp-of-finite-measure-preimage.md) | 300 | `result-track:1d904f57a8d797b6b32198212b306a0ea257b4df35ee191a0a463c1b32e1ef6e` |
| 20 | `theorem` | [memLp_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/memlp-iff.md) | 314 | `result-track:d1f5af0c4a3a0fd1d8439dd0eb0ef8c33fcefa3a5022b2455ae18da563a12eef` |
| 21 | `theorem` | [integrable_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/integrable-iff.md) | 319 | `result-track:18cb5bbfd7abf2d0c49948b9f58eb8e6b5428a3bcc9b38d8ca0115c63844e1e8` |
| 22 | `theorem` | [memLp_iff_integrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/memlp-iff-integrable.md) | 322 | `result-track:47486ed51121f13656d4333891a030a6c28b32193d08b356a466219d305c9347` |
| 23 | `theorem` | [memLp_iff_finMeasSupp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/memlp-iff-finmeassupp.md) | 326 | `result-track:d9bd7aff4ba4788455c48812814b562bfd94019f44ce7405b752b80ba33db9a5` |
| 24 | `theorem` | [integrable_iff_finMeasSupp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/integrable-iff-finmeassupp.md) | 330 | `result-track:e68369781c4b52740ab8ef70d74b89d6985dc7b0ed6f3b8527ad1cf70de84e7c` |
| 25 | `theorem` | [FinMeasSupp.integrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/finmeassupp-integrable.md) | 333 | `result-track:1b4f98082e5c0e7d6c2b1d1ef9fc6fc39903f061a51351807159bf80c9e074c0` |
| 26 | `theorem` | [integrable_pair](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/integrable-pair.md) | 336 | `result-track:bf3d1a5ccd360a3510757c317220ced11cf7fd25680232d06b78e93407ed288a` |
| 27 | `theorem` | [memLp_of_isFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/memlp-of-isfinitemeasure.md) | 340 | `result-track:ecefbfe26f79751e4259b91aaa859d140cb8557431a2cb2d0afd9d0effdd7053` |
| 28 | `theorem` | [integrable_of_isFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/integrable-of-isfinitemeasure.md) | 346 | `result-track:a0330e51af0c988e4ac1226eddd708b4770662fa1dbcc944f4a39cac0aa8ce72` |
| 29 | `theorem` | [measure_preimage_lt_top_of_integrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/measure-preimage-lt-top-of-integrable.md) | 349 | `result-track:b6ef2381097ac030b8a358443eb0c365eb9b94470b215f4b5edf56df0420f925` |
| 30 | `theorem` | [measure_support_lt_top_of_memLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/measure-support-lt-top-of-memlp.md) | 353 | `result-track:560abf7ad5f74da9fb41610586a1a4c27e8ea98703cfb047087a4167a1691d6e` |
| 31 | `theorem` | [measure_support_lt_top_of_integrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/measure-support-lt-top-of-integrable.md) | 357 | `result-track:c95713b9a4580721016ba154b2cc696f929c0bfae340bb72ea33911597a92c91` |
| 32 | `theorem` | [measure_lt_top_of_memLp_indicator](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/measure-lt-top-of-memlp-indicator.md) | 361 | `result-track:59cff6e37747dba8a45eab8ab7af2f8f7d1b71abe482070df7fded564128cba0` |
| 33 | `def` | [simpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/simplefunc.md) | 386 | `declaration-track:ce6f187e085dee13d2f7727463690dcee323b16c90419a3f176565bb575186bb` |
| 34 | `theorem` | [eq'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/eq.md) | 409 | `result-track:83db710b0bb777931aa500dbc9bc3bf4604deae4022e3d7af6974fd330cf3dfa` |
| 35 | `def` | [smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/smul.md) | 423 | `declaration-track:8890e29b78086eba7a0196913e1f01065a16f4866fc82fbde28cd6af1ac233c7` |
| 36 | `theorem` | [coe_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/coe-smul.md) | 435 | `result-track:7ad50f362cf8c84f9234e0432c1a40b0cbebe5f21d192567bd13e48f765bc481` |
| 37 | `def` | [module](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/module.md) | 441 | `declaration-track:a48de60cba087907ba12883077a4f9137cf5ef1635e2bd44dae54c5a0217589d` |
| 38 | `theorem` | [isBoundedSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/isboundedsmul.md) | 453 | `result-track:1ba9535798988ba125231b8d8ac0a135c05c4256afb771adf4f175d41ea145c2` |
| 39 | `def` | [normedSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/normedspace.md) | 462 | `declaration-track:4effb06af433e2381a06f2ec04d8dc75e2053661e09125445e3ca34092051f0f` |
| 40 | `abbrev` | [toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/tolp.md) | 473 | `declaration-track:513862111373dbfc2c63c1cf88701699a9a330ba47158f358c031a8b888f8c3a` |
| 41 | `theorem` | [toLp_eq_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/tolp-eq-tolp.md) | 476 | `result-track:1eb1993090b7542c1a1f81aa4d7e7986c752262244022a5c8c5a10d3ea2ad0ab` |
| 42 | `theorem` | [toLp_eq_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/tolp-eq-mk.md) | 479 | `result-track:89c04ca970e7e75e5980eda13543672f5931400f4423b36903c65b73b755a9d8` |
| 43 | `theorem` | [toLp_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/tolp-zero.md) | 483 | `result-track:a61b03f735de3e12908283e7db4bf8acc54628f3bd6018eb0e445c21c93be2bb` |
| 44 | `theorem` | [toLp_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/tolp-add.md) | 486 | `result-track:aa30f48c6427ebe15d99730a81d20f3bde2fff26fc0387b144ed54b2b9b33b3e` |
| 45 | `theorem` | [toLp_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/tolp-neg.md) | 490 | `result-track:4e1f421b48b9295cbf5728c1419b8fb139fd721a3a8f8fb9fdf483521a56200c` |
| 46 | `theorem` | [toLp_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/tolp-sub.md) | 493 | `result-track:dc0fbcdaafdf2197c7a2d6ef6cc0ef8aa718f60358a612aa9f51556c852705ae` |
| 47 | `theorem` | [toLp_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/tolp-smul.md) | 499 | `result-track:91cf6c7252585cd7de6bfeeca10003c62e8b60eedb4559e359e4a3f315c243b3` |
| 48 | `theorem` | [norm_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/norm-tolp.md) | 503 | `result-track:559970b69453617f4826469c7961804f7f689a6b8b00ff0553f161c2c8251bfd` |
| 49 | `def` | [toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/tosimplefunc.md) | 512 | `declaration-track:4ecb8c17d90dc43a44b3ae26cddb3f4a10655e63c8f3c5ae7240b22e7b41b19a` |
| 50 | `theorem` | [measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/measurable.md) | 517 | `result-track:7bc3750df4834ff6163d2431a0083007bff08b464277631c628507286f055031` |
| 51 | `theorem` | [stronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/stronglymeasurable.md) | 521 | `result-track:ecbaee498b2b0215ad636905dbdedcf8a7423b512915b952e491cfd6c6bb797a` |
| 52 | `theorem` | [aemeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/aemeasurable.md) | 526 | `result-track:8638d51daaad3648a1a6f0f565b2b43d9525cd82a128a776cddb67d4eb0911a3` |
| 53 | `theorem` | [aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/aestronglymeasurable.md) | 530 | `result-track:9b218b40b682abaa6c0070b2639e78181a84761e2db7fef4ec02ca886950531a` |
| 54 | `theorem` | [toSimpleFunc_eq_toFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/tosimplefunc-eq-tofun.md) | 534 | `result-track:e4b5e9476c0c9176c496a8bee8410f06dbb89262ed79b63537a5c7a196e1caf1` |
| 55 | `theorem` | [memLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/memlp.md) | 541 | `result-track:313507957af635a810d627759262ef90bb95418ff7f7fd89ea3974b8968ae0e8` |
| 56 | `theorem` | [toLp_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/tolp-tosimplefunc.md) | 544 | `result-track:70b28d1546f80e9630d2a23cf9cc9df2b17ec761e24cfda85896fa22a49988b5` |
| 57 | `theorem` | [toSimpleFunc_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/tosimplefunc-tolp.md) | 548 | `result-track:0b9f98c6b4c1553f9f1492472b7cabfe38b68fec35a1add0fca7fd6cb77c2106` |
| 58 | `theorem` | [zero_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/zero-tosimplefunc.md) | 553 | `result-track:b738da12a7bde60f287fa31278f193c042edd3f430d1c336de93cc132c0da5b4` |
| 59 | `theorem` | [add_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/add-tosimplefunc.md) | 560 | `result-track:4c6dd1c9a73a210481a138b6d82222eaef8ce77d7478149d219e7de473dab05e` |
| 60 | `theorem` | [neg_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/neg-tosimplefunc.md) | 567 | `result-track:08bea8eeb66cc5b83fefc72210ed595c2b9b109ccbc15f34d8d15d8e28976840` |
| 61 | `theorem` | [sub_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/sub-tosimplefunc.md) | 573 | `result-track:6ea469d47857fab1681dc36b11e6fb06695ac6d28939467fcce81bca2fb21690` |
| 62 | `theorem` | [smul_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/smul-tosimplefunc.md) | 582 | `result-track:b456635124415b7c8612d8f3c06e897fdbc1c1002712d28a2cd9069cde8c852a` |
| 63 | `theorem` | [norm_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/norm-tosimplefunc.md) | 589 | `result-track:f78d269f05eafa65e6982e7338777f7ac96cc3bdbc32bd61d7baf13cf357c53a` |
| 64 | `def` | [indicatorConst](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/indicatorconst.md) | 600 | `declaration-track:8f597c4ca58873430fad1828cbccab40b8903e7e6e8e2ccaa1850b4ae2c7a9fe` |
| 65 | `theorem` | [coe_indicatorConst](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/coe-indicatorconst.md) | 606 | `result-track:e600b69965daa7f2f55de30ed60632d61c4c0e5070d32def44387b7e0580cc00` |
| 66 | `theorem` | [toSimpleFunc_indicatorConst](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/tosimplefunc-indicatorconst.md) | 610 | `result-track:b3d0a2083db60ad4686bf2cb213369fd3150affe7e4a8918bdbd5d13875b0f56` |
| 67 | `theorem` | [induction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/induction.md) | 619 | `result-track:4ebff426f05ec573a6fc581d2d20ff2f7ff092ce89299e6fa1a2a33fb83a019f` |
| 68 | `theorem` | [uniformContinuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/uniformcontinuous.md) | 654 | `result-track:0b28e00755e15251c0fa29671000a9ede55a668af17077added71676ddd4a340` |
| 69 | `lemma` | [isUniformEmbedding](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/isuniformembedding.md) | 657 | `result-track:05a55731c06bd3a1d31b9ab7e7e236ee0a04e4446ab3aa40aa24feeeeb800258` |
| 70 | `theorem` | [isUniformInducing](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/isuniforminducing.md) | 660 | `result-track:6b0b02d4746ec251534bafe6cf612938e19ae0519dc70763d4056aa7b9eccf6f` |
| 71 | `lemma` | [isDenseEmbedding](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/isdenseembedding.md) | 663 | `result-track:6e9d0b0338b12ab623b220be2d26fbe46c031f5839d3aea307c77eebc274f75f` |
| 72 | `theorem` | [isDenseInducing](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/isdenseinducing.md) | 681 | `result-track:82f37f52ddacd1c562cc80550f8978a0dc75b187638cc83384c0900b99f47b48` |
| 73 | `theorem` | [denseRange](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/denserange.md) | 685 | `result-track:943b9e00841bc4f07ea3a3244837a74b7b206bb472b179f0655024629f487863` |
| 74 | `theorem` | [dense](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/dense.md) | 689 | `result-track:0874b2034a2554c5b5874a2996f87352664063abc980b086064dd5c60a97056c` |
| 75 | `def` | [coeToLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/coetolp.md) | 696 | `declaration-track:29e995c3b622ef72dad2fa9212c9d5b58164cdc96450fc72a0770ac36cda7b85` |
| 76 | `theorem` | [coeFn_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/coefn-le.md) | 709 | `result-track:77cef1319ad9fff63e29503c76da3d9e6501162754211f5aa7254add396cede8` |
| 77 | `instance` | [instAddLeftMono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/instaddleftmono.md) | 712 | `declaration-track:42b0aadbea3a06b0fdb53d6a9d40ea92c4c47b52c0d8cd0b41578845e8e81d02` |
| 78 | `theorem` | [coeFn_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/coefn-zero.md) | 719 | `result-track:a7f9e7b9474d1a88fafd815272c4acb6d7fff1c71f6df2a64a8c93a17cb2d9d1` |
| 79 | `theorem` | [coeFn_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/coefn-nonneg.md) | 726 | `result-track:6ba6d5b6de0ba4d6521e13c1a984d5f226504f75b490578edc368b9f0263bc6b` |
| 80 | `theorem` | [exists_simpleFunc_nonneg_ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/exists-simplefunc-nonneg-ae-eq.md) | 729 | `result-track:7fffcf7dfe8cc729deea2f9acf1298b6073c85d98c2fdcd744e4fb8c4a3248a1` |
| 81 | `def` | [coeSimpleFuncNonnegToLpNonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/coesimplefuncnonnegtolpnonneg.md) | 742 | `declaration-track:e00b337c7de55ae6ea65953af87663860c1663edbb54de7584412386ed9dc299` |
| 82 | `theorem` | [denseRange_coeSimpleFuncNonnegToLpNonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/denserange-coesimplefuncnonnegtolpnonneg.md) | 745 | `result-track:ee394be8afce1c5708c5a749c89601f6746c7a764d21575cf7bddc1cdd4af052` |
| 83 | `theorem` | [Lp.induction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/lp-induction.md) | 817 | `result-track:044f0834e6cfdc8a49fe33553f6244cf53bdd7c49843ca5d1cd4bc2a030691be` |
| 84 | `theorem` | [MemLp.induction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/memlp-induction.md) | 842 | `result-track:aca05299c1ad2bcff7059e64bb24d5d0118be7e283cc6d1451ac3c84cbc0fbde` |
| 85 | `theorem` | [MemLp.induction_dense](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/memlp-induction-dense.md) | 871 | `result-track:568fd7af69cfc02d082b28bb23bf69822d70e5cc62ffaba6132273e1008dab9d` |
| 86 | `theorem` | [L1.SimpleFunc.toLp_one_eq_toL1](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/l1-simplefunc-tolp-one-eq-tol1.md) | 924 | `result-track:40d69a432fd83016331a613f47fb6aee4bb6b8334d2e33c8646b44ed81c3d715` |
| 87 | `theorem` | [L1.SimpleFunc.integrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/l1-simplefunc-integrable.md) | 929 | `result-track:232e59d733a6dd3d14b2148cba371b1f8413715273c6b6719d5d2b453e808453` |
| 88 | `theorem` | [Integrable.induction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpELpNorm.lean/declarations/integrable-induction.md) | 946 | `result-track:a8d093bae96b3df42911275c2366f7b8c4944665829c6db9df564791ab1e003f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dec26d4758abf4f49c103a0bb99037214f54f0bcf5813c5a21ae4ee97e2e16e4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant00729b335e80b8e7a5f50d764df1523bf20567e3fdc47561ee5874862851efd0.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant00729b335e80b8e7a5f50d764df1523bf20567e3fdc47561ee5874862851efd0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
