# Verification target: Real Theta Derivative Norm Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c2493b3f8c282529b1ff3a350e9351ce7a0bd20",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNorm/Variantb571342eb49b4cfe7d5a0386f04d44426be61713d3ef9022dc38d2d87aa7465e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c2493b3f8c282529b1ff3a350e9351ce7a0bd20`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNorm/Variantb571342eb49b4cfe7d5a0386f04d44426be61713d3ef9022dc38d2d87aa7465e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/RealThetaDerivativeNorm/Variantb571342eb49b4cfe7d5a0386f04d44426be61713d3ef9022dc38d2d87aa7465e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.CorrelationThirdDerivative` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SamplingSecondDerivative` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.ThetaKernelEstimate` — import line 8; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CorrelationPrimitiveMoments` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realThetaKernel](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/realthetakernel.md) | 33 | `declaration-track:7597642d001aa662376af5e92fe5128a76499ae8e85bf73f81c29d6e6a8b7fcd` |
| 2 | `def` | [differenceSamplingKernel](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/differencesamplingkernel.md) | 36 | `declaration-track:741a7f60f2578e1b720ab26ef662de42f6743c6681aa95a33d84c7b94737ac8a` |
| 3 | `def` | [realThetaDifferenceKernel](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/realthetadifferencekernel.md) | 40 | `declaration-track:efaacf4c0fcc72c688dfa53190f3e01fe8e811d08d2d648ea2abca1fc769b8c1` |
| 4 | `def` | [realThetaRemainder](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/realthetaremainder.md) | 43 | `declaration-track:3354904e8e6a2f62056eb02df03e1bb59b3f69237688082bf13672f10484ed8c` |
| 5 | `theorem` | [samplingIndices_eq_fixed_filter](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/samplingindices-eq-fixed-filter.md) | 46 | `result-track:f11a1d3c50280a2ec054bf46d6b60b2a4f21e34807bfb033812cfc7badd6e200` |
| 6 | `theorem` | [realThetaKernel_eq_strict_sum](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/realthetakernel-eq-strict-sum.md) | 62 | `result-track:138e2be191da33d37efca4f3f35a6fa35979d0545860e4c4f01c73e2014614ae` |
| 7 | `theorem` | [realThetaKernel_eq_nat](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/realthetakernel-eq-nat.md) | 77 | `result-track:5feea1ff83530729ca7d594f80c3b577515fb5857a89e7248378207927a45315` |
| 8 | `theorem` | [realThetaRemainder_eq_nat](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/realthetaremainder-eq-nat.md) | 82 | `result-track:e14c016eae047fb25491293ce7ddef987318b84a659fa774ea5c132d1e14942b` |
| 9 | `theorem` | [differenceSamplingKernel_eq_mul_deriv](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/differencesamplingkernel-eq-mul-deriv.md) | 87 | `result-track:a97df657f037148f8f36963858f22e10331dbcc0e557fca0f4b8e87ce1bb461d` |
| 10 | `theorem` | [realThetaKernel_hasDerivAt](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/realthetakernel-hasderivat.md) | 93 | `result-track:4e45ef2c6fe3d8a5185fb9be1800ba834c84ff207d812c1dfcfc2224aefe88ed` |
| 11 | `theorem` | [realThetaKernel_deriv](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/realthetakernel-deriv.md) | 109 | `result-track:7b5d5a2d857258cb741fafbfa5ddd97c92be9050672b95db9e67ac5c310cf945` |
| 12 | `theorem` | [realThetaRemainder_hasDerivAt](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/realthetaremainder-hasderivat.md) | 113 | `result-track:ad73c3925fe7006cc7fa93f55d9734250cb897d85ac5f651bf491f88e2aecd16` |
| 13 | `theorem` | [realThetaRemainder_differentiableOn](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/realthetaremainder-differentiableon.md) | 123 | `result-track:b0bd613f257308e0b48f24abf9bd7a252ed3ffcf1bdfbc5997892ad41e19a9dc` |
| 14 | `theorem` | [difference_primitive_eq](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/difference-primitive-eq.md) | 128 | `result-track:889b93a83314f22312993b927dd647168e936968ec905849c483323e456518d2` |
| 15 | `def` | [differencePrimitiveSamplingKernel](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/differenceprimitivesamplingkernel.md) | 146 | `declaration-track:129132ff7bd8734cd4410149b4b619420095327c826160d8bc3b9e7816deaf61` |
| 16 | `theorem` | [differencePrimitiveSamplingKernel_eq](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/differenceprimitivesamplingkernel-eq.md) | 151 | `result-track:552127f4973cd03eb8365bc83b44475227b5eb6b08de6c314a38f6b68a1c70c5` |
| 17 | `theorem` | [differencePrimitiveSamplingKernel_add_rankOne_abs_le](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/differenceprimitivesamplingkernel-add-rankone-abs-le.md) | 158 | `result-track:1458653c8a74fd769865b1555cf1afe3e0b2cbea7eb3a6e5e52c197bce5c5fd9` |
| 18 | `theorem` | [differencePrimitiveSamplingKernel_eq_fixed_sum](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/differenceprimitivesamplingkernel-eq-fixed-sum.md) | 181 | `result-track:559de483dee1ecf5a7a64adcb617c908278115eac1568fd2ac688651e529c44b` |
| 19 | `theorem` | [difference_tail_eq_primitive](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/difference-tail-eq-primitive.md) | 201 | `result-track:9e052c7342d0e84383e32c73d11429f923a27f5e9596590aabb5df088b2f75f6` |
| 20 | `theorem` | [rootWeight_difference_integral](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/rootweight-difference-integral.md) | 239 | `result-track:5f52b00bd5fc8b553c61ca6f531b0d6a2b90ad43bd215443ae659ab5ec046853` |
| 21 | `def` | [differenceInnerTerm](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/differenceinnerterm.md) | 249 | `declaration-track:63f992ffd9eb2350fa46e83d2238fee549a7eadf8b2269adc94634a1f9479ad7` |
| 22 | `theorem` | [differenceInnerTerm_eq](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/differenceinnerterm-eq.md) | 253 | `result-track:a261ba1fd808ed3948c3238031e78684ade0e69a8f1b97fb13f3339f40544634` |
| 23 | `theorem` | [differenceInnerTerm_integrable](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/differenceinnerterm-integrable.md) | 262 | `result-track:dd9bee6d97effbf95ed50a634dfd1b3350b5e481e1958a894e8bb91749d74c1e` |
| 24 | `theorem` | [differenceInnerTerm_integral](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/differenceinnerterm-integral.md) | 275 | `result-track:853f26bd24df0f31f7597dee832c4f4259a166b145077067e62fa80324e00224` |
| 25 | `theorem` | [differenceKernel_eq_inner_sum](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/differencekernel-eq-inner-sum.md) | 292 | `result-track:d28ce72f2169ef9e63069eb8b88b7473551927f304de1ae7d6f7dc93b12a8274` |
| 26 | `theorem` | [differenceKernel_rescaled_integrable](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/differencekernel-rescaled-integrable.md) | 304 | `result-track:c24b5bff17ff9d2d47b91182ebf7d9db5deca2bf9a159108dc55c38c7af4e4f8` |
| 27 | `theorem` | [differenceKernel_integral_eq_primitive](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/differencekernel-integral-eq-primitive.md) | 314 | `result-track:fd9836631a16752db6290823fef9a355b65393e3f7f58ebfd9f13bba3bdbda58` |
| 28 | `theorem` | [differenceKernel_integral_add_rankOne_abs_le](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/differencekernel-integral-add-rankone-abs-le.md) | 333 | `result-track:9b8aeb0783686d336d7541cced78cbaf8c84f22df421a263963d02f290495b51` |
| 29 | `def` | [iteratedDifference](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/iterateddifference.md) | 345 | `declaration-track:5a1dec652d025e3edb7764c3f5f2cf219259cd0bf2c206ff35a99765421185c4` |
| 30 | `theorem` | [iteratedDifference_eq](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/iterateddifference-eq.md) | 348 | `result-track:deb3a0f71fa120292f31b2e32117559f9d86c0d5fdc571246f0f1fec8b7cb0df` |
| 31 | `theorem` | [iteratedDifference_contDiff](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/iterateddifference-contdiff.md) | 356 | `result-track:30684393adb4bd3ae70a5c2657d03b930335364845185a61481a43bedfc2ac15` |
| 32 | `theorem` | [iteratedDifference_hasCompactSupport](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/iterateddifference-hascompactsupport.md) | 368 | `result-track:719957718db06230e28e7747a82cb17f556e4dbff72b2b02aba5c3c36f0f6f6f` |
| 33 | `theorem` | [iteratedDifference_abs_le](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/iterateddifference-abs-le.md) | 377 | `result-track:0e6b974c7cf6c5802ba30711c377e8e95d7f0a8b7fb0e9e6697e4c740d671366` |
| 34 | `theorem` | [iteratedDifference_derivative_abs_le](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/iterateddifference-derivative-abs-le.md) | 393 | `result-track:bc8083651aaf9438a8ab3f38cdabdd9fb1574448e74a95b3e6fb6b0ba97f8a81` |
| 35 | `theorem` | [compact_derivative_two_moments_zero](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/compact-derivative-two-moments-zero.md) | 427 | `result-track:72d16fd49628016ee7ace5733f91b7428bd7a52adadc9b8c2f51d6eb128934d6` |
| 36 | `theorem` | [iteratedDifference_two_moments_zero](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/iterateddifference-two-moments-zero.md) | 462 | `result-track:2fdfa5f046a554f77f7b047dbac01c4505be7c09e6f15e69ffc6987caaa63df8` |
| 37 | `theorem` | [iteratedDifference_zero_right](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/iterateddifference-zero-right.md) | 487 | `result-track:bd4807283e1a610e02dcc01eb9dccab17d12ddc957f492613cba21c5676c2565` |
| 38 | `theorem` | [differenceSamplingKernel_hasDerivAt](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/differencesamplingkernel-hasderivat.md) | 498 | `result-track:8a512435d148eca5544639dc781dd64e3c4d0da4023a65cb0c7d0d139d9b953f` |
| 39 | `theorem` | [iteratedDifference_sampling_zero](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/iterateddifference-sampling-zero.md) | 518 | `result-track:f4900ec94b4fd7c003503e9bbd097d5cf4deb943f24ec84501841a254245e626` |
| 40 | `theorem` | [iteratedDifference_sampling_sum_abs_le](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/iterateddifference-sampling-sum-abs-le.md) | 526 | `result-track:3c0403a2e9a510b78104935ea5484480ec827c8f4bc5c222e80288cd69a4d0c9` |
| 41 | `theorem` | [differenceSamplingKernel_derivative_abs_le](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/differencesamplingkernel-derivative-abs-le.md) | 570 | `result-track:58bfeb08c7f34436d4381532852b6d0cdbe9a3fdbc8ccf203fe281d83ba86034` |
| 42 | `theorem` | [inverse_root_majorant_eq](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/inverse-root-majorant-eq.md) | 584 | `result-track:9ba7d9c51c9a64dcb73dee0579e313894e0cff58c346984e0af231c66ed116b3` |
| 43 | `theorem` | [inverse_root_majorant_integrable](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/inverse-root-majorant-integrable.md) | 593 | `result-track:f49084cf52d2c973a1b1760c9a0b1685b21b7632c5d356e9b74b510294c26f0d` |
| 44 | `theorem` | [inverse_root_majorant_integral](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/inverse-root-majorant-integral.md) | 602 | `result-track:c163dbb5a70abd9e5b73eec435e92e2b7383188c955722497a4cd4e9c296f927` |
| 45 | `theorem` | [scaledDifference_hasDerivAt](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/scaleddifference-hasderivat.md) | 614 | `result-track:e568a0175fe7a03c9eb2f2855e77b8d7e61940a1a8b0f1c6bd3b6a696d627a2d` |
| 46 | `theorem` | [scaledDifference_derivative_integrable](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/scaleddifference-derivative-integrable.md) | 621 | `result-track:e58e4a2b9ec58b0d4a31b6fd33d41e76827bc6afd9db1248766016f92daae9b8` |
| 47 | `theorem` | [scaledDifference_variation_le](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/scaleddifference-variation-le.md) | 633 | `result-track:206787c48e6f77524d0ccac250cec5877e0de973fed67429b5586564d8fb97a1` |
| 48 | `theorem` | [differenceSamplingKernel_zero_of_exp_le](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/differencesamplingkernel-zero-of-exp-le.md) | 651 | `result-track:080a206ebd225ebaa38290ba8b92a3def132621361298a0dd38098e4237da2a2` |
| 49 | `theorem` | [realThetaDifferenceKernel_eq_padded_sum](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/realthetadifferencekernel-eq-padded-sum.md) | 661 | `result-track:23cfedbbe9a0b0a17b0ac0290bd4e8848df6c8723344b2d9d8dab9304e194b58` |
| 50 | `theorem` | [realThetaDifferenceKernel_sub_integral_abs_le](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/realthetadifferencekernel-sub-integral-abs-le.md) | 681 | `result-track:20fb6a82e2347dfa16caca29a9175bb39231d6e99a16cac0c3be0fffed39d6f5` |
| 51 | `theorem` | [realThetaDifferenceKernel_add_rankOne_abs_le](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/realthetadifferencekernel-add-rankone-abs-le.md) | 704 | `result-track:67347d94ea291f93cfcd624867f3a524fba7b94a3770bcae0718a87b7ba13022` |
| 52 | `theorem` | [realThetaRemainder_derivative_abs_le](../../../../MeasureAndIntegration/RealThetaDerivativeNormNamespaced.lean/declarations/realthetaremainder-derivative-abs-le.md) | 724 | `result-track:d22c74af52f66ca1ee6d9ee1fe0efb5205efa20f45e2d9742d0001883e21de82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6406c41744648a4be09fc2f08155a44b924ceb6f95b9532aa78ba3f38a777349 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNorm/Variantb571342eb49b4cfe7d5a0386f04d44426be61713d3ef9022dc38d2d87aa7465e.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/RealThetaDerivativeNorm/Variantb571342eb49b4cfe7d5a0386f04d44426be61713d3ef9022dc38d2d87aa7465e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
