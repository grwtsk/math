# Verification target: Seam Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58375321162bbfb67cb0b2b9ce5a1574c8ee46c4",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Seam/Variant9b909efc5b7d0982ee46ba13b8d21a362ffaed7cd039781c9eb2befd2b377d99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58375321162bbfb67cb0b2b9ce5a1574c8ee46c4`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Seam/Variant9b909efc5b7d0982ee46ba13b8d21a362ffaed7cd039781c9eb2befd2b377d99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Seam/Variant9b909efc5b7d0982ee46ba13b8d21a362ffaed7cd039781c9eb2befd2b377d99.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Statement` — import line 28; external provider; requires a separately pinned dependency.
- `Zeta23.ZetaReflect` — import line 29; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.Fold` — import line 30; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.GammaSide` — import line 31; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.CountByIntegral` — import line 32; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.Effective` — import line 33; external provider; requires a separately pinned dependency.
- `Zeta23.Analytic.RectangleLogDeriv` — import line 34; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 35; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Shift` — import line 36; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [xi_eq_weilXi'](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/xi-eq-weilxi.md) | 51 | `result-track:8f90c73bec98c5d358525316b2ac50adbc80df397629aa1176ac741b803de44f` |
| 2 | `theorem` | [xi_two](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/xi-two.md) | 53 | `result-track:85d2bf26a46b11acc7ebece9385e0fdea1845a09ca231044590bba163ce84a03` |
| 3 | `theorem` | [xi_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/xi-one.md) | 55 | `result-track:257abad0bdba1da4041239c22520d1e0c5f9164696a3fa65c8f08e72477aa375` |
| 4 | `theorem` | [xi_analyticAt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/xi-analyticat.md) | 57 | `result-track:ede8cc90304d665c36d5cabd012096d32e449ff8f7998b3225aa4e6f1f6d8b6b` |
| 5 | `theorem` | [xiDeriv_analyticAt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/xideriv-analyticat.md) | 60 | `result-track:d96f973e428cca279722bfbca1b6d111eb7aef92da6116ad31c50ea4c5c02e2c` |
| 6 | `theorem` | [xiDeriv_analyticOnNhd](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/xideriv-analyticonnhd.md) | 63 | `result-track:97244fbeb7347bb96c05fd56cb210f2ba9f2dbe33598092a2b6a1323bc91c182` |
| 7 | `theorem` | [xi_eq_Gammaℝ_mul_zeta](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/xi-eq-gamma-mul-zeta.md) | 66 | `result-track:22fe660cea032aa78314cc475f3b795ece5d72b1ba609690ab01dfe623883f97` |
| 8 | `lemma` | [conj_ne_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/conj-ne-one.md) | 71 | `result-track:6465cd98c28c1a74712b2976310fb6b7d84669915feab2a469f52fc6ddcb1515` |
| 9 | `lemma` | [xi_conj_of_one_lt_re](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/xi-conj-of-one-lt-re.md) | 76 | `result-track:6ee516d4f067d23b4b1ad96fa27e1bf61eafeb9e121c260e0bae4e483e6c687b` |
| 10 | `theorem` | [xi_conj](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/xi-conj.md) | 84 | `result-track:492cdb2a9893d5160b7c96074fac111f05452a14d468409256361eecce1e4f70` |
| 11 | `lemma` | [deriv_conj_symm](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/deriv-conj-symm.md) | 101 | `result-track:1859a5ca47dd7ede11bb52c987cf8f0570521ed08144f1b8219c79874d73108f` |
| 12 | `theorem` | [xiDeriv_conj](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/xideriv-conj.md) | 112 | `result-track:d55e76565634215e1896c80663aeda269881abb089a6e51b4a5883144f88497c` |
| 13 | `theorem` | [deriv_xiDeriv_conj](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/deriv-xideriv-conj.md) | 116 | `result-track:5ae458bf4389ea045572b5188f344d7bfd05b6eb52eb836ac1d608d2a6d7ff35` |
| 14 | `theorem` | [xiDeriv_one_sub](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/xideriv-one-sub.md) | 120 | `result-track:cbf9b58cde0ffb2c2007b68f0ebcee63c5fe7ca704ce268957c594317978cc69` |
| 15 | `theorem` | [deriv_xiDeriv_one_sub](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/deriv-xideriv-one-sub.md) | 128 | `result-track:aeb6f1b6aaa5b7ec6e21b0efc28b76ba528dba8d37e6e265b5f2426c893c0d38` |
| 16 | `theorem` | [logDeriv_xiDeriv_one_sub](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/logderiv-xideriv-one-sub.md) | 135 | `result-track:2c5b1f1602a3b715040d86b8cac50111f530b7598aacd374f230922da002c1cc` |
| 17 | `theorem` | [logDeriv_xiDeriv_conj](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/logderiv-xideriv-conj.md) | 139 | `result-track:8c5dffa374a4ebeff5c323785238f9069975fe95f61d903fada1f2f296650f75` |
| 18 | `theorem` | [logDeriv_xiDeriv_one_sub_conj](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/logderiv-xideriv-one-sub-conj.md) | 143 | `result-track:de7179ae3daf659979e8f150d5c9d25940139b6d0c817612a00822c5c9932e66` |
| 19 | `theorem` | [xiDeriv_reflect](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/xideriv-reflect.md) | 148 | `result-track:86ea805ab9418cdb34ab29575d212b30703ea808061ad3f66bb232ff47833b77` |
| 20 | `theorem` | [xiDeriv_reflect_eq_zero_iff](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/xideriv-reflect-eq-zero-iff.md) | 152 | `result-track:7cdba7098c4a356e3e059c54285e6538e107a2418967dfb5b20f3d97cc23a52d` |
| 21 | `theorem` | [analyticOrderAt_xiDeriv_ne_top](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/analyticorderat-xideriv-ne-top.md) | 158 | `result-track:90001fe3377d6e7a58e265e97d4d15a484487011dc4de44d4b74143eb801cfb1` |
| 22 | `theorem` | [exists_xiDeriv_ne_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/exists-xideriv-ne-zero.md) | 171 | `result-track:078e1d1b78ae0b823a596d0c3e06b0c3e8dbad41b3f02dc15d76c29a17a45bfe` |
| 23 | `theorem` | [analyticOrderNatAt_xiDeriv](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/analyticordernatat-xideriv.md) | 176 | `result-track:06d76857e7c778cb9edd535fd59ccd7731433a6ef32f9854763d05daef92877a` |
| 24 | `theorem` | [xiDerivMult_cast](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/xiderivmult-cast.md) | 178 | `result-track:ba9d18b7cfee7349c2a18b4c62f0d9fd2ab6370d092ce0a60f1d00b8a4628bfe` |
| 25 | `theorem` | [one_le_xiDerivMult_iff](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/one-le-xiderivmult-iff.md) | 183 | `result-track:4854cbe54d3366c3959aa85a530a9f12c7d9ba1bddb8782da6e1c13188f8fca4` |
| 26 | `theorem` | [xiDerivMult_eq_zero_iff](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/xiderivmult-eq-zero-iff.md) | 197 | `result-track:6dfbc2d209aaac1f5811863b282c3884c746c1f6d86c999a377d8abc8f55bb4d` |
| 27 | `theorem` | [analyticOrderAt_xiDeriv_one_sub](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/analyticorderat-xideriv-one-sub.md) | 202 | `result-track:da26f08906fc3ff5dfae02f798bbf956f93cf598eb44d6b8c0c5b0693722a5fa` |
| 28 | `theorem` | [analyticOrderAt_xiDeriv_conj](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/analyticorderat-xideriv-conj.md) | 222 | `result-track:a0be8b61c151644db11559d2abdd8d82301490e28d83e13ab10db3df6f59b18b` |
| 29 | `theorem` | [xiDerivMult_reflect](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/xiderivmult-reflect.md) | 231 | `result-track:1e804db1f68410d806253ca25415055ddebcfcd3e123e265982b650ad63d470f` |
| 30 | `theorem` | [xiDeriv_zeros_finite_of_isCompact](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/xideriv-zeros-finite-of-iscompact.md) | 236 | `result-track:6727e4a73468a8e25375486c71ad174131b974e47e4f1384ba40a924ed9f3741` |
| 31 | `theorem` | [finite_window_of_strip](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/finite-window-of-strip.md) | 263 | `result-track:cc077c0dd4d6ca13811868b04c7c80bf8f25b78e33e9704437a40f259a90ea57` |
| 32 | `theorem` | [xiDerivSeam_of_strip](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/xiderivseam-of-strip.md) | 272 | `result-track:36baaf3f894df2e694a2b8d8dc113d295588eff2790b3f201a6564bf7fa16cbf` |
| 33 | `def` | [Lfn](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/lfn.md) | 290 | `declaration-track:c2778f39a7ae02e0e97d57bfab3b2f8b7f16735ff5c5c39bc9fffa856add1a66` |
| 34 | `def` | [Yfn](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/yfn.md) | 293 | `declaration-track:5b25774bf849867da449d71e21b25322ee6faaeb7e958e3425a4ed5a796cde1c` |
| 35 | `theorem` | [Lfn_eq_digamma](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/lfn-eq-digamma.md) | 295 | `result-track:3d56cc3650132880d78ef0595e3b9cd19d25dbf7e112e9c8e2eab4c183ff0b23` |
| 36 | `theorem` | [xiDeriv_eq_of_re_pos](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/xideriv-eq-of-re-pos.md) | 300 | `result-track:4d492b303cdee910666bccca8511c4e2410a2de5b7c69eee63c8797704d7a738` |
| 37 | `theorem` | [xiDeriv_eq_Gammaℝ_mul_Yfn](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/xideriv-eq-gamma-mul-yfn.md) | 324 | `result-track:9801b85eb160cb1d53dc324775834206101417bea28a249a9829cfcd22640210` |
| 38 | `theorem` | [Yfn_eq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/yfn-eq.md) | 329 | `result-track:f063e72db1b7c52f617714da55a4df7fcc60b84b5695eff712b1cd913e1ec635` |
| 39 | `theorem` | [Yfn_analyticAt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/yfn-analyticat.md) | 338 | `result-track:2b6a0942838845c612d4d3b47af54a4ccaf819fcbdf5afc5c77b94e7f4411242` |
| 40 | `theorem` | [Yfn_differentiableAt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/yfn-differentiableat.md) | 341 | `result-track:ef6f06924943b6814f24cb64dd6dcee902538ed1b5f31244329dc4e09f14b71c` |
| 41 | `theorem` | [Yfn_analyticOnNhd](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/yfn-analyticonnhd.md) | 344 | `result-track:7709f3c3f6a617962de71535634fd6670f3d1ba325dc1ea668f3dd32a581ad03` |
| 42 | `theorem` | [Yfn_eq_zero_iff](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/yfn-eq-zero-iff.md) | 347 | `result-track:a6d8bff6782a240c514ee0cf81f3e012c6e11507c3e743e4f9412060e0f5c83d` |
| 43 | `theorem` | [analyticOrderAt_Yfn](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/analyticorderat-yfn.md) | 352 | `result-track:8a2e68d0abb3a1b898fb4d709647d345415bbd41d68cec8fa7d3879cfd7b8be5` |
| 44 | `theorem` | [analyticOrderNatAt_Yfn](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/analyticordernatat-yfn.md) | 362 | `result-track:d0c64dc294c92429691a126eb29eeaab3dc964d062360e6641029e82afd34f79` |
| 45 | `theorem` | [Yfn_conj](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/yfn-conj.md) | 367 | `result-track:e1ae2f689164d80eb7fa42b186f2fdc084ddd2ee15fd6a3fb0a118f6fe9f4d7f` |
| 46 | `theorem` | [norm_Yfn_conj](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/norm-yfn-conj.md) | 371 | `result-track:af2c76ecaa2b0b67f26525e784b6d6f4d2cd41166548cd677aa4dcc4c9e98357` |
| 47 | `theorem` | [logDeriv_xiDeriv_eq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/logderiv-xideriv-eq.md) | 375 | `result-track:e386e8d30d8b5dff9c35ce8e95434ab07015ec851f03f2c66851e486c84ce80e` |
| 48 | `theorem` | [logDeriv_xi_eq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/logderiv-xi-eq.md) | 391 | `result-track:9aca4cc821f8b5f72e349a11caa907527f1a0da50d0e78e7c8c2d97cb685c6fa` |
| 49 | `theorem` | [xi_ne_zero_of_re_pos](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/xi-ne-zero-of-re-pos.md) | 401 | `result-track:de493705b2d3dce07094d784e8b9fb8a63658fd0373b51a637e5e3471021e5d2` |
| 50 | `theorem` | [xiDeriv_eq_xi_mul](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/xideriv-eq-xi-mul.md) | 409 | `result-track:ae904013dd9005a607b45b19c155508cd877247406859377daa7276fdb679b76` |
| 51 | `theorem` | [Yfn_eq_factor](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/yfn-eq-factor.md) | 415 | `result-track:087d11811687fa01d55ebe6880f5bbea39a7308c041de68516d7be55af8ac61d` |
| 52 | `theorem` | [xiZerosAreZetaZeros](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SeamNamespaced.lean/declarations/xizerosarezetazeros.md) | 423 | `result-track:2046c5d3991214a2d70cb3a4219bb7b41e8226fa1e6f2b8efb38123e7d3fca09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a5aa70758b7b6a8f6f6157bba693712054e76ad6b034bb97ee046fc9816ad45c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Seam/Variant9b909efc5b7d0982ee46ba13b8d21a362ffaed7cd039781c9eb2befd2b377d99.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Seam/Variant9b909efc5b7d0982ee46ba13b8d21a362ffaed7cd039781c9eb2befd2b377d99.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
