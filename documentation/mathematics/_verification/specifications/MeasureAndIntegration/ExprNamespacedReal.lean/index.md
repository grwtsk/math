# Verification target: Expr Namespaced Real

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbbeabf31f259c64b9edcd689d9547d1922b82a6",
  "lexical_observation_count": 83,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Expr/Variant45c1ed79298f24c2a27f4ad8abc40e55515a51225b816af41e2457d9dc225ce1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbbeabf31f259c64b9edcd689d9547d1922b82a6`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Expr/Variant45c1ed79298f24c2a27f4ad8abc40e55515a51225b816af41e2457d9dc225ce1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Expr/Variant45c1ed79298f24c2a27f4ad8abc40e55515a51225b816af41e2457d9dc225ce1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Arctan` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Sinc` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Arsinh` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.EulerMascheroni` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Real.atanh](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/real-atanh.md) | 53 | `declaration-track:96488369a1d55f5afee7e50dc5d4fc6e399b5729b58c63b34f4f6362add8fe54` |
| 2 | `theorem` | [Real.atanh_arg_pos](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/real-atanh-arg-pos.md) | 57 | `result-track:8fccd724d8d9e2357d90b1aa7b3ca3aecad71336b137e95ca6af1c276b228a0a` |
| 3 | `theorem` | [Real.atanh_zero](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/real-atanh-zero.md) | 66 | `result-track:d0c414df41f0be0d71a739c8e2e70c8cae11cda3907466c3e234d073df0b10ed` |
| 4 | `theorem` | [Real.atanh_neg](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/real-atanh-neg.md) | 70 | `result-track:9b464f5515d9d0903209ba05e1196dca976a877cdaea2aec9b4077da85af4dd0` |
| 5 | `theorem` | [Real.atanh_strictMonoOn](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/real-atanh-strictmonoon.md) | 84 | `result-track:b781c65731233110bbffef87bfca73c32fcc4d5d1e33a00fa58b4618502088c9` |
| 6 | `theorem` | [Real.atanh_mono](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/real-atanh-mono.md) | 101 | `result-track:815c5202f564f216bccb48aa1c699030616b3cebfcccefaf07c8d57ba8fdd662` |
| 7 | `def` | [Real.erf](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/real-erf.md) | 112 | `declaration-track:e79af2717c20918c4f60fec07f636be94f34916695dd92cf666daf33819948e9` |
| 8 | `theorem` | [exp_neg_sq_pos](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/exp-neg-sq-pos.md) | 116 | `result-track:9fcbc865ccc68a637e2b80888b1ad70d6d61fe40b549b937add2322d6d405890` |
| 9 | `theorem` | [intervalIntegrable_exp_neg_sq](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/intervalintegrable-exp-neg-sq.md) | 120 | `result-track:036e19302c07cdb5ff4f81a52f4b69a18e63f925be32dff73a7fad7a8f6553b0` |
| 10 | `theorem` | [integral_exp_neg_sq_le_half_gaussian](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/integral-exp-neg-sq-le-half-gaussian-source-edition-2.md) | 127 | `result-track:b19547532f52de3edefb548a3f69d2b1665407c7d9f5792af6c4c65bf82e61fc` |
| 11 | `theorem` | [integral_exp_neg_sq_nonneg](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/integral-exp-neg-sq-nonneg.md) | 156 | `result-track:79bcc3d321957ef294b3595447491a36a28763bcac415a81ecebbf804419b157` |
| 12 | `theorem` | [Real.erf_le_one](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/real-erf-le-one.md) | 164 | `result-track:80e689d10f364619daf76f05b56631f1b9d35ce5babb2803dd5c6804287487d9` |
| 13 | `theorem` | [integral_exp_neg_sq_le_half_gaussian'](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/integral-exp-neg-sq-le-half-gaussian.md) | 196 | `result-track:0bfb6eab2b30dbf78c7782cf26c5637552385d5b734e88983c7033ffc52d6ee3` |
| 14 | `theorem` | [Real.neg_one_le_erf](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/real-neg-one-le-erf.md) | 210 | `result-track:e8aa1f41f0fc3e2eeb9056658a4552d45492026903556094fe3ec1bac3dc19d3` |
| 15 | `inductive` | [MathConst](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/mathconst.md) | 243 | `declaration-track:4c7c6073bf614b734a156f31db52b4aaa43ba4c2d7a5ca91c962a6fb5c7c075e` |
| 16 | `def` | [MathConst.toReal](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/mathconst-toreal.md) | 249 | `declaration-track:cb37a74fab8a9562fd8aaef9a606d4d86036ee30229462efe6f6d9d894055065` |
| 17 | `def` | [MathConst.toFloat](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/mathconst-tofloat.md) | 254 | `declaration-track:ae789b3aae3c0dfd30ca88d629c9a1779e64b7eb67d84de3623cae1013503f2a` |
| 18 | `def` | [MathConst.toRatApprox](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/mathconst-toratapprox.md) | 259 | `declaration-track:803c7be42a76082f863334da4b2f055acaa3c39f7fc3849941dd528ff67b78f3` |
| 19 | `inductive` | [Expr](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/expr.md) | 264 | `declaration-track:4ed6e7742d0b469d91fc515d5b1ebe9534ea62aef90130bd3040d9d950b309a7` |
| 20 | `def` | [sub](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/sub.md) | 310 | `declaration-track:d7bc37e7cd72c15373f9023b36083f4e5b6acb388eff62f4a6882a6a372c6407` |
| 21 | `def` | [div](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/div.md) | 313 | `declaration-track:4863b286a4aa8ce063228d9cd6f952267ff6e4e942c8527f119b70774656d578` |
| 22 | `def` | [pow](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/pow.md) | 316 | `declaration-track:171d738d4455fae6447cc9955ca0e5b02378cf4b1f7a165a9376957b88cf8789` |
| 23 | `def` | [abs](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/abs.md) | 322 | `declaration-track:f2fd627e0d7a63ab40be4c804d36cf6e6c98bc6c45f6d0353c10e699f7326923` |
| 24 | `def` | [eval](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/eval.md) | 325 | `declaration-track:c4d964d18ceab0b288e910526ef7a8a9219da0b46d151e6da67ff20405135ad9` |
| 25 | `def` | [updateVar](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/updatevar.md) | 348 | `declaration-track:c9a56bd0cb4bb4db39628015718bec90a15ebd782013fbbeaf8406bef61234ba` |
| 26 | `theorem` | [updateVar_same](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/updatevar-same.md) | 354 | `result-track:8d7841a27e41bbd707596f63fd7fa6fa559ef71eddd6d1e1e7a88d56d7256526` |
| 27 | `theorem` | [updateVar_other](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/updatevar-other.md) | 358 | `result-track:8e24db0366914e9864cc5a3793446242864572013be4353b98f058d655d36a08` |
| 28 | `theorem` | [updateVar_self](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/updatevar-self.md) | 361 | `result-track:036cc433114cf3dcbeb3bba9ad9dff6d601501f036bae0c5348744185a0e0671` |
| 29 | `abbrev` | [evalAlong](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/evalalong.md) | 371 | `declaration-track:74f00aa0fdaf7fd720c13603c5fde1a7c2cd1af1dc8a69e463abcdec58f698e9` |
| 30 | `def` | [freeVars](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/freevars.md) | 375 | `declaration-track:09826ef537eb456c7476ba99d5c1c62b376245f4080b49aacd6844eb620d51d0` |
| 31 | `def` | [isClosed](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/isclosed.md) | 398 | `declaration-track:d6243983637104e1b05de27a557a888fd78df26c82f579c3f78c3738c9223ee5` |
| 32 | `theorem` | [eval_const](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/eval-const.md) | 403 | `result-track:2999487b73f5ae3f51c3417dde3cf81e5a2b72d358a4b84507e46cc22caa1bbe` |
| 33 | `theorem` | [eval_var](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/eval-var.md) | 406 | `result-track:9150402211ec27b2ef5c4ec03a34dc44a2119e314bd582355074df1cf353a797` |
| 34 | `theorem` | [eval_add](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/eval-add.md) | 409 | `result-track:f8fd78beabd7158736f8aa87997b3e068dcfc25749e77b06ad8639cdef218a6c` |
| 35 | `theorem` | [eval_mul](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/eval-mul.md) | 413 | `result-track:65bbc7e0522c8e9a3b47372701223fba7812b2a458b25577af48e90b544eb317` |
| 36 | `theorem` | [eval_neg](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/eval-neg.md) | 417 | `result-track:16bfac31a5c4594936fb65b838038548a3496b6b8f1b8220e79581939e3449c7` |
| 37 | `theorem` | [eval_inv](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/eval-inv.md) | 420 | `result-track:e146f069afb2c864c6bde8e8cd0f5e91e11c4d950ddcd94975e4835afec4867e` |
| 38 | `theorem` | [eval_exp](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/eval-exp.md) | 423 | `result-track:5a4af0bf7281f8070ec1c8b0d9dc33d50b88bb6593b69a16472ecf1fb0fe415a` |
| 39 | `theorem` | [eval_sin](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/eval-sin.md) | 426 | `result-track:74985e847e4d638261d378970026938b0af9d8ba27f53f16d80d03aa44cf24e3` |
| 40 | `theorem` | [eval_cos](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/eval-cos.md) | 429 | `result-track:1aab43e0ff476d0a92d767b955482c6a0e5a6b2b3420cfff07feb145da29b042` |
| 41 | `theorem` | [eval_log](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/eval-log.md) | 432 | `result-track:52e7296a9df0307f957ffb29c25c4851023a50faccf6eef097000220d6fcad94` |
| 42 | `theorem` | [eval_atan](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/eval-atan.md) | 435 | `result-track:dc1d73fba6bc2563c09164e4d352ab718740829f945f778d95d240bffde81d4a` |
| 43 | `theorem` | [eval_arsinh](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/eval-arsinh.md) | 438 | `result-track:782d44f092fde41de3d5743bffceca38a96488e24618a76ee4a4c2f465ede81f` |
| 44 | `theorem` | [eval_atanh](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/eval-atanh.md) | 441 | `result-track:6af359eeaa1b16bd1cbf95a4e9774e1a3b123ed1c4ff4009fae312355fe9a66d` |
| 45 | `theorem` | [eval_sinc](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/eval-sinc.md) | 444 | `result-track:7d984403b0017bdb32261bb702cc0197dc78a71649ab6319cb9109ee9049c5e2` |
| 46 | `theorem` | [eval_erf](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/eval-erf.md) | 447 | `result-track:f89c7a34d24eebd4c5f8e1a8788aa2b33083e80e218a7dc95766fbf93b7cd4e4` |
| 47 | `theorem` | [eval_sinh](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/eval-sinh.md) | 450 | `result-track:2b025a5f1d9346986bd81d827427a8628721bf68cf6293ed263f1e0b0d1bb615` |
| 48 | `theorem` | [eval_cosh](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/eval-cosh.md) | 453 | `result-track:00115a240290f557a45428cd35f2baa8005e568bcabdc14e4b50c05bdbf9c47b` |
| 49 | `theorem` | [eval_tanh](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/eval-tanh.md) | 456 | `result-track:8ad51bdf70608dca0b20a115ec35228d7eb5a51431ad60e65d8b867b0eabbfcb` |
| 50 | `theorem` | [eval_sqrt](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/eval-sqrt.md) | 459 | `result-track:c9d9bbad2a27a550ba5436041c8cd21816e93abba130b16b7ffeb2d3cb259ffc` |
| 51 | `theorem` | [eval_namedConst](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/eval-namedconst.md) | 462 | `result-track:1f4aab4c9861a292e617eca958f1382c65989fa780e6b11cbb4648b77d4be61d` |
| 52 | `theorem` | [eval_pi](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/eval-pi.md) | 466 | `result-track:af1ec98162ced75659a33d2580321fcd37588fb1fa1e0bac56481444e4a67287` |
| 53 | `theorem` | [eval_eulerMascheroni](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/eval-eulermascheroni.md) | 468 | `result-track:7478a6d9d669dc7295fee68b8d0bf24044208c34864eaae35a1f8133c8d140e2` |
| 54 | `theorem` | [eval_sub](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/eval-sub.md) | 472 | `result-track:caf8593037dad43856a1b37c18170e840865dfbbb8fbda56a4b7af2394d835aa` |
| 55 | `theorem` | [eval_div](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/eval-div.md) | 476 | `result-track:6c240c75834a863f2f18d183b5218558582108d045e7683673c2deddf6b15f5c` |
| 56 | `theorem` | [eval_pow](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/eval-pow.md) | 480 | `result-track:6fc5239ce9d79f491ee3ae448ba2e8e0ddfe399952465629c17343f41c7505f1` |
| 57 | `theorem` | [eval_abs](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/eval-abs.md) | 487 | `result-track:107e4be1b04848a9639a305255bfde1e41de63152348d6cda144b9f4d2659905` |
| 58 | `theorem` | [eval_sqrt_sq_of_pos](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/eval-sqrt-sq-of-pos.md) | 492 | `result-track:da6b1567b215e9ce856a3d598f1a53317ec60f7fb95657f69ec09939607c096c` |
| 59 | `theorem` | [eval_abs_of_pos](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/eval-abs-of-pos.md) | 497 | `result-track:dfa2caf304f3c0f5ce715ea2098a9bc725935159f6dabfa3b3d29bc6b1ebca32` |
| 60 | `theorem` | [eval_abs_of_neg](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/eval-abs-of-neg.md) | 502 | `result-track:aeab3700b159c0c7df9b5e5ce569a73c38c52aa436a9830e857600158029a730` |
| 61 | `theorem` | [evalAlong_eq](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/evalalong-eq.md) | 508 | `result-track:f7bddc0e9501c2ad6130c036edf14199aa9eef93a9d367e74e87354452e4d5cb` |
| 62 | `theorem` | [evalAlong_at_ρ](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/evalalong-at.md) | 511 | `result-track:c8502d70c99689b2c79910927ad0b6fca12d4fa75a81b6b97d1496fa5b5d4f03` |
| 63 | `theorem` | [evalAlong_const'](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/evalalong-const.md) | 516 | `result-track:232fa0bd590a8c561fdefe0245241246234256afdfacec8016b76ae75817e627` |
| 64 | `theorem` | [evalAlong_var_active](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/evalalong-var-active.md) | 520 | `result-track:10bd102b9a57af2045538bd83d9a9c44e766327c899b613c711171610091185e` |
| 65 | `theorem` | [evalAlong_var_passive](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/evalalong-var-passive.md) | 526 | `result-track:b665fb6de96227b58cdf9a4d9d37eb5c00c019b677c728c346de0bff3402a7f2` |
| 66 | `theorem` | [evalAlong_add](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/evalalong-add.md) | 532 | `result-track:7111081c014b12441637a7422e9d1f10374bca36eb448eebe05632a6fb0c1bee` |
| 67 | `theorem` | [evalAlong_add_pi](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/evalalong-add-pi.md) | 538 | `result-track:9b901a5bce8a3d2a77df291629581e874c60102e43765b6e9308e9747677fa78` |
| 68 | `theorem` | [evalAlong_mul](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/evalalong-mul.md) | 542 | `result-track:0a3ba0145f936d6c6099e4d5246004988213665aa52ca5d6ef9deb8d2c50313d` |
| 69 | `theorem` | [evalAlong_mul_pi](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/evalalong-mul-pi.md) | 548 | `result-track:6ba664ef6059afe51be31c4970eaf8b95e4c287fea8321f4e021bb8a5940b366` |
| 70 | `theorem` | [evalAlong_neg](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/evalalong-neg.md) | 552 | `result-track:76bf2e52a51f50d0e5259dd273d1367b7d2be15b06396e63359eca43494ebbe6` |
| 71 | `theorem` | [evalAlong_neg_pi](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/evalalong-neg-pi.md) | 558 | `result-track:fe88c9fc3027e063bb461e15cf97b72c9c4b4c3d963f603c0c2dad1c05016a82` |
| 72 | `theorem` | [evalAlong_sin](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/evalalong-sin.md) | 562 | `result-track:7c65e1ddf39988c8992bf6cc8efd0146482782cc9a03e2ad14c266a2f293c990` |
| 73 | `theorem` | [evalAlong_cos](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/evalalong-cos.md) | 568 | `result-track:17cea8dec6bc6d10320434f7df060a587526735d99db2f8bf681b9570b68c19e` |
| 74 | `theorem` | [evalAlong_exp](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/evalalong-exp.md) | 574 | `result-track:41a7b601b9ec721b63b43271e604a7bf86742bca0ad9b3b70ae16569dd025a93` |
| 75 | `theorem` | [evalAlong_inv](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/evalalong-inv.md) | 580 | `result-track:4c0a3669eae9746220be4fcc519214cc1788930c3102218046795dc892a6db38` |
| 76 | `theorem` | [evalAlong_log](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/evalalong-log.md) | 586 | `result-track:43b96e3e052cf65dc8ba912b07198e57769c5a089e2aae18efaac71c46d50457` |
| 77 | `theorem` | [evalAlong_atan](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/evalalong-atan.md) | 592 | `result-track:9d2d38f8cf3da331b0497acd4da690dbc896e5722e285ae69697a7bc7dbae00a` |
| 78 | `theorem` | [evalAlong_arsinh](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/evalalong-arsinh.md) | 598 | `result-track:f311d7f2c65a318db6516ab0272454efa351be880b157083a086946aa6c7516e` |
| 79 | `theorem` | [evalAlong_atanh](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/evalalong-atanh.md) | 604 | `result-track:49296978e5c53b02b2c2311b9c9838065ecc87e03f86e3f3d193b335bb345b94` |
| 80 | `def` | [usesOnlyVar0](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/usesonlyvar0.md) | 617 | `declaration-track:760faa24c3523e7e84f407caf4b38a14b2dde27ae87186c10b7a6154bb5ec01b` |
| 81 | `theorem` | [eval_usesOnlyVar0_eq](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/eval-usesonlyvar0-eq.md) | 640 | `result-track:1537d9f2031c2a7920a7c8b22904acb56ee47f26e96a241e8ee8637a98bc6e70` |
| 82 | `theorem` | [eval_1d_equiv](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/eval-1d-equiv.md) | 703 | `result-track:01e8fe812afb7872c0b0de829f3a5f9419e07f4123acd387ec768ec6c6300b45` |
| 83 | `theorem` | [eval_box1d_eq_eval1d](../../../../MeasureAndIntegration/ExprNamespacedReal.lean/declarations/eval-box1d-eq-eval1d.md) | 709 | `result-track:146990786d9a24c97364d4f309ed40ddc878a7c4eca53a0ad34164101368690e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3e647d724a77e2ccb94974deb408bdbd0e7135475ca918be3bf6a1a7cebfaed8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SpecialFunctions/Expr/Variant45c1ed79298f24c2a27f4ad8abc40e55515a51225b816af41e2457d9dc225ce1.lean","GRWTSK/_verification/specifications/Analysis/SpecialFunctions/Expr/Variant45c1ed79298f24c2a27f4ad8abc40e55515a51225b816af41e2457d9dc225ce1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
