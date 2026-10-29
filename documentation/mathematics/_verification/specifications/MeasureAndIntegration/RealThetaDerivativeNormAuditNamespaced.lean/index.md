# Verification target: Real Theta Derivative Norm Audit Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e1969d3c754b4c2f1c3205b90c2a61e25240308",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormAudit/Variant20c6a463e4ff9dc1589b23c0f876770b28528fd5e4ce00b6f92e41c00245fb01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e1969d3c754b4c2f1c3205b90c2a61e25240308`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormAudit/Variant20c6a463e4ff9dc1589b23c0f876770b28528fd5e4ce00b6f92e41c00245fb01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormAudit/Variant20c6a463e4ff9dc1589b23c0f876770b28528fd5e4ce00b6f92e41c00245fb01.lean.json)

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
| 1 | `def` | [realThetaKernel](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/realthetakernel.md) | 33 | `declaration-track:fa1a004d0d7d5eb07d17dcb688f032fa819e651db43c85be92b2284686abcc1a` |
| 2 | `def` | [differenceSamplingKernel](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/differencesamplingkernel.md) | 36 | `declaration-track:2f3a0b33bfa0feab33b7519d15e37108551c05f69aedc091e6bc9593b6288def` |
| 3 | `def` | [realThetaDifferenceKernel](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/realthetadifferencekernel.md) | 40 | `declaration-track:440faabe84cd6d635aa1210967f615c924e499512d09651cf1127749e72a8b75` |
| 4 | `def` | [realThetaRemainder](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/realthetaremainder.md) | 43 | `declaration-track:f6b7e34092ceb62e0fb77e055e9cd19e006b580b390cdd57cad26fc15ffd4383` |
| 5 | `theorem` | [samplingIndices_eq_fixed_filter](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/samplingindices-eq-fixed-filter.md) | 46 | `result-track:b4bbc6864167a1a41bf6d9312eb831bf50cd2678b0273dd8481d5484df7cc03a` |
| 6 | `theorem` | [realThetaKernel_eq_strict_sum](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/realthetakernel-eq-strict-sum.md) | 62 | `result-track:f34b65627a5984a297480cf9d980a4c2d34ce0f9e1af3e172447b4fa8c5c9fcc` |
| 7 | `theorem` | [realThetaKernel_eq_nat](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/realthetakernel-eq-nat.md) | 77 | `result-track:91cf48f457c76345b98c6594fb8d3a17ad42e16b468a1125d683936e4f45c461` |
| 8 | `theorem` | [realThetaRemainder_eq_nat](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/realthetaremainder-eq-nat.md) | 82 | `result-track:4533107eeacd54c8462e6d4c9bd20ff90e345c9c27a25e5ab8ff3fb8d09edd1b` |
| 9 | `theorem` | [differenceSamplingKernel_eq_mul_deriv](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/differencesamplingkernel-eq-mul-deriv.md) | 87 | `result-track:e3e46bdafdd9cfceddee28eec3168146ec3af7055b8ef468572b4022112c6ee5` |
| 10 | `theorem` | [realThetaKernel_hasDerivAt](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/realthetakernel-hasderivat.md) | 93 | `result-track:a50b8d198caf1e0b2f6a41cf51651bc019a68eff3f931ee6bacedde8a957b408` |
| 11 | `theorem` | [realThetaKernel_deriv](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/realthetakernel-deriv.md) | 109 | `result-track:9da70db70a9f070e988b3cd5231220138abfab93576f2ee28b3004a0e30850ea` |
| 12 | `theorem` | [realThetaRemainder_hasDerivAt](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/realthetaremainder-hasderivat.md) | 113 | `result-track:88a2998e3fcd0bdbe6749092cc3e3dd8c5d92620173e56504706260547e98e00` |
| 13 | `theorem` | [realThetaRemainder_differentiableOn](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/realthetaremainder-differentiableon.md) | 123 | `result-track:109761fc903bff3aec8ed2166beb8712015bc90e9d07433c259588c9b20decba` |
| 14 | `theorem` | [difference_primitive_eq](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/difference-primitive-eq.md) | 128 | `result-track:c999c10d50dde6c375d8eda2c0e42c68b4b94f526d7fe7d768dac3d578a659b0` |
| 15 | `def` | [differencePrimitiveSamplingKernel](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/differenceprimitivesamplingkernel.md) | 146 | `declaration-track:6f4e8ba5c21852a07fcdb4c1032e75f96dc18ccf68dc6c34f8cb0af06ad8d701` |
| 16 | `theorem` | [differencePrimitiveSamplingKernel_eq](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/differenceprimitivesamplingkernel-eq.md) | 151 | `result-track:84d588ff7fa9c2af3094bfeba66c4e7e0cb1c5cfd76d50755020970c1a50652a` |
| 17 | `theorem` | [differencePrimitiveSamplingKernel_add_rankOne_abs_le](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/differenceprimitivesamplingkernel-add-rankone-abs-le.md) | 158 | `result-track:c66e76871847be7ac924bf47ca1ebb13d2aa2ffdd2923511fa7d17a00cc05262` |
| 18 | `theorem` | [differencePrimitiveSamplingKernel_eq_fixed_sum](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/differenceprimitivesamplingkernel-eq-fixed-sum.md) | 181 | `result-track:aa4f147d4b7bfe64df7f97b6488bc1a304f08fef443a045d692efabdccabbea3` |
| 19 | `theorem` | [difference_tail_eq_primitive](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/difference-tail-eq-primitive.md) | 201 | `result-track:751d1bc1cdffec6feaafd1baee30197560faa4e6d0a2d7b24c47f122a98653fd` |
| 20 | `theorem` | [rootWeight_difference_integral](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/rootweight-difference-integral.md) | 239 | `result-track:b78fade50394a7703f598a9a55c51a844299596360d2f94a5e3b190c7676b48a` |
| 21 | `def` | [differenceInnerTerm](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/differenceinnerterm.md) | 249 | `declaration-track:baf6b9272869a9c11883ac437c816bc990d97d8df6ad6ed1d8973a03ede40c5c` |
| 22 | `theorem` | [differenceInnerTerm_eq](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/differenceinnerterm-eq.md) | 253 | `result-track:cff6a64dba8055f29b47f797c42edb9a9e37170407dbd01b964ca83cd9840477` |
| 23 | `theorem` | [differenceInnerTerm_integrable](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/differenceinnerterm-integrable.md) | 262 | `result-track:24f2d281cbf30020cc8f39bdbe0a6d6793684bd69ff66e7010768b0f4be32176` |
| 24 | `theorem` | [differenceInnerTerm_integral](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/differenceinnerterm-integral.md) | 275 | `result-track:3367cbad090fb902f18d8eeef274c30de026442cec69b2f32834e516f235734d` |
| 25 | `theorem` | [differenceKernel_eq_inner_sum](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/differencekernel-eq-inner-sum.md) | 292 | `result-track:0b4931f93ef132f21c635d4c9f4a2c23363ba435fcdb2449e34609ae9a159710` |
| 26 | `theorem` | [differenceKernel_rescaled_integrable](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/differencekernel-rescaled-integrable.md) | 304 | `result-track:f6155a91e1275547577477e4c6a71d1f87d5084d3540c7fe661060e1dac6fce1` |
| 27 | `theorem` | [differenceKernel_integral_eq_primitive](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/differencekernel-integral-eq-primitive.md) | 314 | `result-track:c3c7a63cb815e6d05b5f9c915b98a09b32b20ec747c9ea3b7ff9ae471097bfd1` |
| 28 | `theorem` | [differenceKernel_integral_add_rankOne_abs_le](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/differencekernel-integral-add-rankone-abs-le.md) | 333 | `result-track:ee05e7e312fea2dfb8dc5b6f064381dfd0217373114743f8d234db7da4b84d78` |
| 29 | `def` | [iteratedDifference](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/iterateddifference.md) | 345 | `declaration-track:a665519309b2216a45d66b8f04f098bade6a0cb551a58654ef13e483b292d1fb` |
| 30 | `theorem` | [iteratedDifference_eq](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/iterateddifference-eq.md) | 348 | `result-track:5a0de512233b15ae9671984ee99abcd9c7eaa60992e9970898057333721bc48c` |
| 31 | `theorem` | [iteratedDifference_contDiff](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/iterateddifference-contdiff.md) | 356 | `result-track:a26eff577b59388d18aa3f6920d74fe02c8c4658f37fca0cab5629fe69b97d94` |
| 32 | `theorem` | [iteratedDifference_hasCompactSupport](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/iterateddifference-hascompactsupport.md) | 368 | `result-track:d291240411004b88b5302024049b19d3701e40616f955dbbe477001a011d436f` |
| 33 | `theorem` | [iteratedDifference_abs_le](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/iterateddifference-abs-le.md) | 377 | `result-track:a12686eb93ec9e72322ec54e57c626afe263c928a1f27c4aca1fba2eaed8fd5e` |
| 34 | `theorem` | [iteratedDifference_derivative_abs_le](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/iterateddifference-derivative-abs-le.md) | 393 | `result-track:5e1fab4441089f9cd7e61b2b0b407d91eeb1b148dbb3e2f9f637cb3aa1a69841` |
| 35 | `theorem` | [compact_derivative_two_moments_zero](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/compact-derivative-two-moments-zero.md) | 427 | `result-track:ca1ae7959687586480d65a85f988d1f41be357bdfd7e761d9b575474f4896724` |
| 36 | `theorem` | [iteratedDifference_two_moments_zero](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/iterateddifference-two-moments-zero.md) | 462 | `result-track:f1d1db84ce3941c7a07ad84317a254357cabd48a79586fe10b790ff2de39ac34` |
| 37 | `theorem` | [iteratedDifference_zero_right](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/iterateddifference-zero-right.md) | 487 | `result-track:1da6bd86ae42cf123b5ab2eb224692f0079043c13c75a89ca1a27c031b637aa8` |
| 38 | `theorem` | [differenceSamplingKernel_hasDerivAt](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/differencesamplingkernel-hasderivat.md) | 498 | `result-track:14fadbaf6d68069fd8a96c5e324f0128347fcf649152d1e6f10a46f8290323c3` |
| 39 | `theorem` | [iteratedDifference_sampling_zero](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/iterateddifference-sampling-zero.md) | 518 | `result-track:8a24cf7bce9ca6d2094ad367c40c5f9d3ba24d6e01aeb7fde3af847cfb0fbf85` |
| 40 | `theorem` | [iteratedDifference_sampling_sum_abs_le](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/iterateddifference-sampling-sum-abs-le.md) | 526 | `result-track:dda03a223be1267c63d9acb080b34d7648064779bef0231bb9c00c04b0d649cc` |
| 41 | `theorem` | [differenceSamplingKernel_derivative_abs_le](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/differencesamplingkernel-derivative-abs-le.md) | 570 | `result-track:445d17ebf913d15b4cde6cf6f3171322cf513aaf9d85a5ad2d315ecef8a4ebcc` |
| 42 | `theorem` | [inverse_root_majorant_eq](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/inverse-root-majorant-eq.md) | 584 | `result-track:b60d43a4b90cc08162662605d525a05b7341a8e553d4a0da08669fd15d3a1eae` |
| 43 | `theorem` | [inverse_root_majorant_integrable](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/inverse-root-majorant-integrable.md) | 593 | `result-track:9c27d349f59470c140755afe99f0f76ebc60eaa82d0381711bda270e61be30ff` |
| 44 | `theorem` | [inverse_root_majorant_integral](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/inverse-root-majorant-integral.md) | 602 | `result-track:c5cf090dd2de66e6d7527c06b4a9b5526cd9dc82cfe8aa245b1e10519aa4ac4a` |
| 45 | `theorem` | [scaledDifference_hasDerivAt](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/scaleddifference-hasderivat.md) | 614 | `result-track:908d349941ea03c3e101ea8451fc501df8e63ac7e78f60a727e41145a366f925` |
| 46 | `theorem` | [scaledDifference_derivative_integrable](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/scaleddifference-derivative-integrable.md) | 621 | `result-track:c1f48af4f64c1548171ad9b5ac0f4189695d15c61f11f94942164df3319bd973` |
| 47 | `theorem` | [scaledDifference_variation_le](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/scaleddifference-variation-le.md) | 633 | `result-track:d72296c75253aaf18a4d8e7bad00272e5cb7c43c33c535e519b51fb50ea02f9a` |
| 48 | `theorem` | [differenceSamplingKernel_zero_of_exp_le](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/differencesamplingkernel-zero-of-exp-le.md) | 651 | `result-track:1ca4f0b7df726d3c2da5a6cd1f449f65ed949f1cda7df0c0c5fde4c109527fe2` |
| 49 | `theorem` | [realThetaDifferenceKernel_eq_padded_sum](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/realthetadifferencekernel-eq-padded-sum.md) | 661 | `result-track:ad95956ecc9c06bea7b1f4ff072b4e344aa8391355aacedf6a0dda3a97e39ab1` |
| 50 | `theorem` | [realThetaDifferenceKernel_sub_integral_abs_le](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/realthetadifferencekernel-sub-integral-abs-le.md) | 681 | `result-track:b9468d6f5e729e636db41ac75397c4e6b08cdb505773014a516f2cb024e63033` |
| 51 | `theorem` | [realThetaDifferenceKernel_add_rankOne_abs_le](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/realthetadifferencekernel-add-rankone-abs-le.md) | 704 | `result-track:7587d0c985ffcd14b5ec75478dc1b327312a269febacbbf2c0811f9d3314ee30` |
| 52 | `theorem` | [realThetaRemainder_derivative_abs_le](../../../../MeasureAndIntegration/RealThetaDerivativeNormAuditNamespaced.lean/declarations/realthetaremainder-derivative-abs-le.md) | 724 | `result-track:e8b3897df303d5c02920a0e67f9633005968c06011254f95cb89119a3dc93974` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3928dc5bdba68b60b8e0db3a4b17d95b559c2e3e9b70dc976333decf319a8e79 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormAudit/Variant20c6a463e4ff9dc1589b23c0f876770b28528fd5e4ce00b6f92e41c00245fb01.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormAudit/Variant20c6a463e4ff9dc1589b23c0f876770b28528fd5e4ce00b6f92e41c00245fb01.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
