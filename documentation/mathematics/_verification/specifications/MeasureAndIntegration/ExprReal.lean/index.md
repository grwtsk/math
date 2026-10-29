# Verification target: Expr Real

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "138486839d71214f386f94d3481e400319a9b832",
  "lexical_observation_count": 83,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Expr/Variant929722716cf289d8aad98e29472e5575b7ba8df9d4f2bc85ead2b2045c986e05.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ExprReal.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ExprReal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `138486839d71214f386f94d3481e400319a9b832`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Expr/Variant929722716cf289d8aad98e29472e5575b7ba8df9d4f2bc85ead2b2045c986e05.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Expr/Variant929722716cf289d8aad98e29472e5575b7ba8df9d4f2bc85ead2b2045c986e05.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Arctan` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Sinc` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Arsinh` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.EulerMascheroni` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Real.atanh](../../../../MeasureAndIntegration/ExprReal.lean/declarations/real-atanh.md) | 45 | `declaration-track:d289e487111b0399cd5268aed330a624ad48439ee6e4192ad0f3a3a6164da389` |
| 2 | `theorem` | [Real.atanh_arg_pos](../../../../MeasureAndIntegration/ExprReal.lean/declarations/real-atanh-arg-pos.md) | 49 | `result-track:d95eed1a1316c7e5e21d1208e3296c52c90a6f1cb8f1c0ab7532e2b330cbc430` |
| 3 | `theorem` | [Real.atanh_zero](../../../../MeasureAndIntegration/ExprReal.lean/declarations/real-atanh-zero.md) | 58 | `result-track:2dbe126eff9b69b07f46b810b7b512f518271e21bdc108a8af0f8cac30b01ab0` |
| 4 | `theorem` | [Real.atanh_neg](../../../../MeasureAndIntegration/ExprReal.lean/declarations/real-atanh-neg.md) | 62 | `result-track:359547658d929e91103e31ba2acccee182138f44ba3663d8970ebc24f9a0625c` |
| 5 | `theorem` | [Real.atanh_strictMonoOn](../../../../MeasureAndIntegration/ExprReal.lean/declarations/real-atanh-strictmonoon.md) | 76 | `result-track:4e73fae6ffbaee6a9ee7b1dbe6354c786b3d4d63294794c2b115bd568bd84d9e` |
| 6 | `theorem` | [Real.atanh_mono](../../../../MeasureAndIntegration/ExprReal.lean/declarations/real-atanh-mono.md) | 93 | `result-track:f09267c32c777f15ae38b02d87c201660778cdbe1667da4502100f78aee9d5c9` |
| 7 | `def` | [Real.erf](../../../../MeasureAndIntegration/ExprReal.lean/declarations/real-erf.md) | 104 | `declaration-track:ddd483cd7ffbdca993f3c80275c10e6fb8151ec59a04514a3764bfbea7dcdddf` |
| 8 | `theorem` | [exp_neg_sq_pos](../../../../MeasureAndIntegration/ExprReal.lean/declarations/exp-neg-sq-pos.md) | 108 | `result-track:6f5d7bfa10637ff3070fbc3f19a770218eb9660dcfaff2c62414332757e5363d` |
| 9 | `theorem` | [intervalIntegrable_exp_neg_sq](../../../../MeasureAndIntegration/ExprReal.lean/declarations/intervalintegrable-exp-neg-sq.md) | 112 | `result-track:29b740d9561a3349761bbdc31d10b15589e4785d0c2690acb5c030a6bbeebf5b` |
| 10 | `theorem` | [integral_exp_neg_sq_le_half_gaussian](../../../../MeasureAndIntegration/ExprReal.lean/declarations/integral-exp-neg-sq-le-half-gaussian.md) | 119 | `result-track:1bfa82a6945e0572ab30781f4ea886fd7ca55dcd961dad3eb05ec2c9f1cb6916` |
| 11 | `theorem` | [integral_exp_neg_sq_nonneg](../../../../MeasureAndIntegration/ExprReal.lean/declarations/integral-exp-neg-sq-nonneg.md) | 148 | `result-track:0380237b7465c8fffd1694bc7a646004603d87876649b9374a366853367cd253` |
| 12 | `theorem` | [Real.erf_le_one](../../../../MeasureAndIntegration/ExprReal.lean/declarations/real-erf-le-one.md) | 156 | `result-track:9f12388890c4b98afb2ac7cbe35ed0fc366445856dca81763ee976250aa5ffaa` |
| 13 | `theorem` | [integral_exp_neg_sq_le_half_gaussian'](../../../../MeasureAndIntegration/ExprReal.lean/declarations/integral-exp-neg-sq-le-half-gaussian-source-edition-2.md) | 188 | `result-track:f9705933cc6700c85fdda83a2de3a42c33b89fdafdb3fdeb9f5a59137e7854b2` |
| 14 | `theorem` | [Real.neg_one_le_erf](../../../../MeasureAndIntegration/ExprReal.lean/declarations/real-neg-one-le-erf.md) | 202 | `result-track:2c5f23c1d0387df564b3d360ae904594fa747e28e7d9b61c00f3019451f4fb31` |
| 15 | `inductive` | [MathConst](../../../../MeasureAndIntegration/ExprReal.lean/declarations/mathconst.md) | 235 | `declaration-track:b81dc30820d5255cc17b10854f0cab0f2212174339cf6646c0c5de15b5139782` |
| 16 | `def` | [MathConst.toReal](../../../../MeasureAndIntegration/ExprReal.lean/declarations/mathconst-toreal.md) | 241 | `declaration-track:173740edfe9b353ec0677b4f0cf0d030a83f7ab07bd75b41eed38191351199f2` |
| 17 | `def` | [MathConst.toFloat](../../../../MeasureAndIntegration/ExprReal.lean/declarations/mathconst-tofloat.md) | 246 | `declaration-track:601757274fa0983db2c907f64d96b713b3924e6988c948db4b6b083d611a3842` |
| 18 | `def` | [MathConst.toRatApprox](../../../../MeasureAndIntegration/ExprReal.lean/declarations/mathconst-toratapprox.md) | 251 | `declaration-track:a94955aca87ea5c7eaf3ea430ec08b672890822ad321a6ea0c3788c61faf0d0c` |
| 19 | `inductive` | [Expr](../../../../MeasureAndIntegration/ExprReal.lean/declarations/expr.md) | 256 | `declaration-track:96964110492f74c322a0c86dcba404753e20184a93dc62ecf7b745295fc46e2a` |
| 20 | `def` | [sub](../../../../MeasureAndIntegration/ExprReal.lean/declarations/sub.md) | 302 | `declaration-track:7c590741df5662255162378a15f5a352b3ed53f06905214b5a9d364ad59d2722` |
| 21 | `def` | [div](../../../../MeasureAndIntegration/ExprReal.lean/declarations/div.md) | 305 | `declaration-track:4766591800c8f7480cef5e41da9cf081319f4c6e624ca22da9b5df525ca85d5f` |
| 22 | `def` | [pow](../../../../MeasureAndIntegration/ExprReal.lean/declarations/pow.md) | 308 | `declaration-track:40c6a94865a5c6622c8deceb1775db0870700267e9d79be21672fa78050ee149` |
| 23 | `def` | [abs](../../../../MeasureAndIntegration/ExprReal.lean/declarations/abs.md) | 314 | `declaration-track:0d7f16ecc245ad6c4b8737f67913e19c2ac5f7f81d1cb338c68424f02c194ff5` |
| 24 | `def` | [eval](../../../../MeasureAndIntegration/ExprReal.lean/declarations/eval.md) | 317 | `declaration-track:b84323db18a4cf12e660421442e62a188c3bbe6bdcfcb3ba246c0fe088f3690b` |
| 25 | `def` | [updateVar](../../../../MeasureAndIntegration/ExprReal.lean/declarations/updatevar.md) | 340 | `declaration-track:f637c54900ca6ff4b65b0d7d1a1a2dedc39c20f83fdd4818b91c9c3dfd902e55` |
| 26 | `theorem` | [updateVar_same](../../../../MeasureAndIntegration/ExprReal.lean/declarations/updatevar-same.md) | 346 | `result-track:1e087c5b02fbbf05b33686c96edb809b814f2197c479de1ea97154ddd35fe45d` |
| 27 | `theorem` | [updateVar_other](../../../../MeasureAndIntegration/ExprReal.lean/declarations/updatevar-other.md) | 350 | `result-track:ebb41fb9320273b265a1febecb1834efca3f9281085bcfa4c98d5791103dff62` |
| 28 | `theorem` | [updateVar_self](../../../../MeasureAndIntegration/ExprReal.lean/declarations/updatevar-self.md) | 353 | `result-track:7784ec3fc1fbe22f32211b9a55285792bf561470fc22fb06192b278d7af6ee35` |
| 29 | `abbrev` | [evalAlong](../../../../MeasureAndIntegration/ExprReal.lean/declarations/evalalong.md) | 363 | `declaration-track:c3db0ed245d740b66a64bc50f1e2d6bdc3e0aa36ab312fca487ccfb34d216f48` |
| 30 | `def` | [freeVars](../../../../MeasureAndIntegration/ExprReal.lean/declarations/freevars.md) | 367 | `declaration-track:1a809df98779e8ad40171151cfa2ad5eb92bc0cec690961a20d18230636bd29b` |
| 31 | `def` | [isClosed](../../../../MeasureAndIntegration/ExprReal.lean/declarations/isclosed.md) | 390 | `declaration-track:4dcf8c579af483801e1c56ac97e79b5b6106d2e09d8008722d9982ff1990d8d4` |
| 32 | `theorem` | [eval_const](../../../../MeasureAndIntegration/ExprReal.lean/declarations/eval-const.md) | 395 | `result-track:2726a7ac76d59ac58958644d58014ae4a10add8bdaffa54b13db94ff2de80874` |
| 33 | `theorem` | [eval_var](../../../../MeasureAndIntegration/ExprReal.lean/declarations/eval-var.md) | 398 | `result-track:7ee589b96485ee9881979c9d486e31015c0a570a7dcc002e395d871a97f46292` |
| 34 | `theorem` | [eval_add](../../../../MeasureAndIntegration/ExprReal.lean/declarations/eval-add.md) | 401 | `result-track:cb19dc5b18f4a6a386563eb68791c43b5c9123016e735fa4c5d39035aaafabea` |
| 35 | `theorem` | [eval_mul](../../../../MeasureAndIntegration/ExprReal.lean/declarations/eval-mul.md) | 405 | `result-track:4387a0f77ea5c6a28c1a0bbe0dde037a7f55143ad887258558508527106af90b` |
| 36 | `theorem` | [eval_neg](../../../../MeasureAndIntegration/ExprReal.lean/declarations/eval-neg.md) | 409 | `result-track:49cc33dcc1a6f0989d5292f2f06b91616daffdb93bf1f2d90ae3056342a4f659` |
| 37 | `theorem` | [eval_inv](../../../../MeasureAndIntegration/ExprReal.lean/declarations/eval-inv.md) | 412 | `result-track:148bd28fe31237fa90384893c5b9ad4ff6960aa348a1ceb0ccfc22085b54734c` |
| 38 | `theorem` | [eval_exp](../../../../MeasureAndIntegration/ExprReal.lean/declarations/eval-exp.md) | 415 | `result-track:7df61b96886fe0a267e333f2c64709ae9eda2478e8a829aa9ae10a7ed7ba86c1` |
| 39 | `theorem` | [eval_sin](../../../../MeasureAndIntegration/ExprReal.lean/declarations/eval-sin.md) | 418 | `result-track:ee1c26428b9b5b76b88c8a74cdc9dcf85c94a81447019d66a2d37dde47e0cc9c` |
| 40 | `theorem` | [eval_cos](../../../../MeasureAndIntegration/ExprReal.lean/declarations/eval-cos.md) | 421 | `result-track:6f3a400323127c5af5d6ba4365e8e88dc7fec77ce9ab8a3d6a2e75e98601072e` |
| 41 | `theorem` | [eval_log](../../../../MeasureAndIntegration/ExprReal.lean/declarations/eval-log.md) | 424 | `result-track:7ced2efa9fafc5a8b64f1813759f3dad4841e881a92a5b52b48bbc3327ce4543` |
| 42 | `theorem` | [eval_atan](../../../../MeasureAndIntegration/ExprReal.lean/declarations/eval-atan.md) | 427 | `result-track:457cdc8c3878778bf9a6519ea71e8d76ce7e6d458a1ce007d09b98043085bfb2` |
| 43 | `theorem` | [eval_arsinh](../../../../MeasureAndIntegration/ExprReal.lean/declarations/eval-arsinh.md) | 430 | `result-track:57f619508519c62315c196a6eb2f5eda31a27342558ec7407f0156bc238ddecd` |
| 44 | `theorem` | [eval_atanh](../../../../MeasureAndIntegration/ExprReal.lean/declarations/eval-atanh.md) | 433 | `result-track:82bd0bbfacc8dce8250fbb53f41ec3838206abfc34111d86ce0a279e24473ec5` |
| 45 | `theorem` | [eval_sinc](../../../../MeasureAndIntegration/ExprReal.lean/declarations/eval-sinc.md) | 436 | `result-track:2e76d9a2e995598887b8da9b93245f6b874acd7b4862d8f72851d53a51d7d65e` |
| 46 | `theorem` | [eval_erf](../../../../MeasureAndIntegration/ExprReal.lean/declarations/eval-erf.md) | 439 | `result-track:44df1dfb39a87c415a4f37c3d7fdc4fc5fa6c4e54d95ea77c5817fb17da7065d` |
| 47 | `theorem` | [eval_sinh](../../../../MeasureAndIntegration/ExprReal.lean/declarations/eval-sinh.md) | 442 | `result-track:5839b2cdebdd2a4b5b22e9e3c928637f10df34b9bd3a49300ed776e3df3c28de` |
| 48 | `theorem` | [eval_cosh](../../../../MeasureAndIntegration/ExprReal.lean/declarations/eval-cosh.md) | 445 | `result-track:e6d0a231303d8217d1d9365c23ad1d06d6012cb6a5a3b5f2c655d120fa346420` |
| 49 | `theorem` | [eval_tanh](../../../../MeasureAndIntegration/ExprReal.lean/declarations/eval-tanh.md) | 448 | `result-track:5c249b118d6a03c4915e23867c4eec0d667c936c896f46a6b2008344583da413` |
| 50 | `theorem` | [eval_sqrt](../../../../MeasureAndIntegration/ExprReal.lean/declarations/eval-sqrt.md) | 451 | `result-track:08f009b52121b78b7dc32c7f285d1d276aa55899f062bf6afa1215fd4f410ef3` |
| 51 | `theorem` | [eval_namedConst](../../../../MeasureAndIntegration/ExprReal.lean/declarations/eval-namedconst.md) | 454 | `result-track:58d800b2e8257cbfcdbceb07aae0d92b99353c9f87d1cb315809e7e90dcd9b62` |
| 52 | `theorem` | [eval_pi](../../../../MeasureAndIntegration/ExprReal.lean/declarations/eval-pi.md) | 458 | `result-track:31dc2e23850e5d2c7c86eddb2ba3bab57c30d06fba785dec4aafa071f0e9a156` |
| 53 | `theorem` | [eval_eulerMascheroni](../../../../MeasureAndIntegration/ExprReal.lean/declarations/eval-eulermascheroni.md) | 460 | `result-track:2ca39cb4081078773c5cb6e868ffac99ee762eab8ec2db9d65da381b45a27dbe` |
| 54 | `theorem` | [eval_sub](../../../../MeasureAndIntegration/ExprReal.lean/declarations/eval-sub.md) | 464 | `result-track:d0f9b018455160401d792eea73ff60d1b22c4c73e0452be32f8440241b351ce6` |
| 55 | `theorem` | [eval_div](../../../../MeasureAndIntegration/ExprReal.lean/declarations/eval-div.md) | 468 | `result-track:885c4453f88bdbbc0281c7f7c2b77e9aa09f2e4e2d793a99e8d56c325494a2f4` |
| 56 | `theorem` | [eval_pow](../../../../MeasureAndIntegration/ExprReal.lean/declarations/eval-pow.md) | 472 | `result-track:8c735e997a8df8f1eb8c4f0de2798585445b5aecc9cc3be30bf0d31fbd850706` |
| 57 | `theorem` | [eval_abs](../../../../MeasureAndIntegration/ExprReal.lean/declarations/eval-abs.md) | 479 | `result-track:dd5a0300e6d7cd001811ed52edfbc9b7ceeb83d76dc4b150efb99e0a9fb221d9` |
| 58 | `theorem` | [eval_sqrt_sq_of_pos](../../../../MeasureAndIntegration/ExprReal.lean/declarations/eval-sqrt-sq-of-pos.md) | 484 | `result-track:bbd53a2c61a8382e8351ca6d9b8b1231acf6680786bf39e0bebd422db8fb6d8d` |
| 59 | `theorem` | [eval_abs_of_pos](../../../../MeasureAndIntegration/ExprReal.lean/declarations/eval-abs-of-pos.md) | 489 | `result-track:76acff9bfd2a606dfb1fbd4a45de7a6d989387d9717a3b6782d198870bc31c4a` |
| 60 | `theorem` | [eval_abs_of_neg](../../../../MeasureAndIntegration/ExprReal.lean/declarations/eval-abs-of-neg.md) | 494 | `result-track:56dfffecde760e0e0b881abf942070a18bd9597755bf1eb3dbd77d5e4cd9457d` |
| 61 | `theorem` | [evalAlong_eq](../../../../MeasureAndIntegration/ExprReal.lean/declarations/evalalong-eq.md) | 500 | `result-track:49c4c9c6555d26642812fa69ee832594ec8d415967dbd408a340b3660f41bfd9` |
| 62 | `theorem` | [evalAlong_at_ρ](../../../../MeasureAndIntegration/ExprReal.lean/declarations/evalalong-at.md) | 503 | `result-track:71161c2c651ca1ed9b790151b1de364404b2317fcfdd93f7fb5e0b638c4082ac` |
| 63 | `theorem` | [evalAlong_const'](../../../../MeasureAndIntegration/ExprReal.lean/declarations/evalalong-const.md) | 508 | `result-track:cc32054029fd2bafe9c51b76f3eee00b0eb1d5a1446112d88930647d0e01cda9` |
| 64 | `theorem` | [evalAlong_var_active](../../../../MeasureAndIntegration/ExprReal.lean/declarations/evalalong-var-active.md) | 512 | `result-track:79a68a429a0cf27d68b5e4b515557f52d6ab709997637278e8aa008bcaa577f1` |
| 65 | `theorem` | [evalAlong_var_passive](../../../../MeasureAndIntegration/ExprReal.lean/declarations/evalalong-var-passive.md) | 518 | `result-track:b77b790bb5b4be030216067cd4ab61cae032de831643f504ecf1ca77675a3626` |
| 66 | `theorem` | [evalAlong_add](../../../../MeasureAndIntegration/ExprReal.lean/declarations/evalalong-add.md) | 524 | `result-track:13da7533456067da3bf64fd7bb1e1280c85922d124a58f66c6425e4c3497c18f` |
| 67 | `theorem` | [evalAlong_add_pi](../../../../MeasureAndIntegration/ExprReal.lean/declarations/evalalong-add-pi.md) | 530 | `result-track:a006eb3b63e5bd5ca6d7b2aabfe9e6d0f44455b5e8577f66ef96b238389b6ff7` |
| 68 | `theorem` | [evalAlong_mul](../../../../MeasureAndIntegration/ExprReal.lean/declarations/evalalong-mul.md) | 534 | `result-track:517467429893015e28bcab9bb540a4cbcf309cab2e2e5d254854923483e87c2d` |
| 69 | `theorem` | [evalAlong_mul_pi](../../../../MeasureAndIntegration/ExprReal.lean/declarations/evalalong-mul-pi.md) | 540 | `result-track:4413f002cc400821022213bf18335c652313eee0daad440ddd690be194f96365` |
| 70 | `theorem` | [evalAlong_neg](../../../../MeasureAndIntegration/ExprReal.lean/declarations/evalalong-neg.md) | 544 | `result-track:73dbc965876e5333d2c1ef930d9c37877a26a335e7557d7e0602a897749d55d8` |
| 71 | `theorem` | [evalAlong_neg_pi](../../../../MeasureAndIntegration/ExprReal.lean/declarations/evalalong-neg-pi.md) | 550 | `result-track:a8bc49a5383976d4c016b13df4e35243578e0c5add11ea4ac1e4aa97458c2f02` |
| 72 | `theorem` | [evalAlong_sin](../../../../MeasureAndIntegration/ExprReal.lean/declarations/evalalong-sin.md) | 554 | `result-track:fef84593360ea41beda6b42c7fbdddc81b47f15833648d1c01c567bd479acc49` |
| 73 | `theorem` | [evalAlong_cos](../../../../MeasureAndIntegration/ExprReal.lean/declarations/evalalong-cos.md) | 560 | `result-track:3ad7a2a61ed1c19ca5377f1c78c525b0b2806dedf9b41183eebd0e3572ab59fa` |
| 74 | `theorem` | [evalAlong_exp](../../../../MeasureAndIntegration/ExprReal.lean/declarations/evalalong-exp.md) | 566 | `result-track:e7399aa08e245d0c3d4ee611a69086914316a48dfe4f5e16c4c8dc1fbcfc43f5` |
| 75 | `theorem` | [evalAlong_inv](../../../../MeasureAndIntegration/ExprReal.lean/declarations/evalalong-inv.md) | 572 | `result-track:4e784174f8289e2316cf06485d9691d2d5bf144bb78a497552bc35fec6a3bb52` |
| 76 | `theorem` | [evalAlong_log](../../../../MeasureAndIntegration/ExprReal.lean/declarations/evalalong-log.md) | 578 | `result-track:2583579df0ce378b67b08a50db09719f7be294ab4e6afb6a2320dcb16a33e193` |
| 77 | `theorem` | [evalAlong_atan](../../../../MeasureAndIntegration/ExprReal.lean/declarations/evalalong-atan.md) | 584 | `result-track:ee4990c4d2102c8ee5067564e413f96272a56f21e4e98d7c7314f1ede5d19c95` |
| 78 | `theorem` | [evalAlong_arsinh](../../../../MeasureAndIntegration/ExprReal.lean/declarations/evalalong-arsinh.md) | 590 | `result-track:8dec6a81d987b2198e4ac0ec1eec524fdd7ae31dd874bedacd9cdda0d1e05f91` |
| 79 | `theorem` | [evalAlong_atanh](../../../../MeasureAndIntegration/ExprReal.lean/declarations/evalalong-atanh.md) | 596 | `result-track:60095ac5c663099bf3d53419e9eda6628f5b4ffd3ae1389846aecf013a4f2050` |
| 80 | `def` | [usesOnlyVar0](../../../../MeasureAndIntegration/ExprReal.lean/declarations/usesonlyvar0.md) | 609 | `declaration-track:c04307ebb652aa02eeb5a13a8ef2c7d7a2b1727db53011a3ff1227cedeac572b` |
| 81 | `theorem` | [eval_usesOnlyVar0_eq](../../../../MeasureAndIntegration/ExprReal.lean/declarations/eval-usesonlyvar0-eq.md) | 632 | `result-track:88df0c6236df2309970022fc9a3edac7c669361e3893d69be703b0aa3117923e` |
| 82 | `theorem` | [eval_1d_equiv](../../../../MeasureAndIntegration/ExprReal.lean/declarations/eval-1d-equiv.md) | 695 | `result-track:134b6b97d3fff6183b7949785eb27ab85bea1de23b5382117c2d497806fa48fe` |
| 83 | `theorem` | [eval_box1d_eq_eval1d](../../../../MeasureAndIntegration/ExprReal.lean/declarations/eval-box1d-eq-eval1d.md) | 701 | `result-track:7cd7b9ba43f7cb9c6862fa3b05d0bcd4c668ef5266bfb68a2016bf4eddb0e7b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7fb83fb2774e50f2d1d292cd64eb044542f777350bc9645ff3a98aea55e2c14c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SpecialFunctions/Expr/Variant929722716cf289d8aad98e29472e5575b7ba8df9d4f2bc85ead2b2045c986e05.lean","GRWTSK/_verification/specifications/Analysis/SpecialFunctions/Expr/Variant929722716cf289d8aad98e29472e5575b7ba8df9d4f2bc85ead2b2045c986e05.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
