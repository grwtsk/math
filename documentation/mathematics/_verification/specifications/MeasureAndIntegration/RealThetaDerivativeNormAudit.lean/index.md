# Verification target: Real Theta Derivative Norm Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "058469b9cee2fd5b4666a680245a2f98368e398a",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormAudit/Variant7f123b3c6cecf4a46f5ced293a7bb85cb4f25800986e7d88245c1987beb8d616.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/index.md) · [Full source](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `058469b9cee2fd5b4666a680245a2f98368e398a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormAudit/Variant7f123b3c6cecf4a46f5ced293a7bb85cb4f25800986e7d88245c1987beb8d616.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormAudit/Variant7f123b3c6cecf4a46f5ced293a7bb85cb4f25800986e7d88245c1987beb8d616.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.CorrelationThirdDerivative` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SamplingSecondDerivative` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.ThetaKernelEstimate` — import line 3; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.CorrelationPrimitiveMoments` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realThetaKernel](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/realthetakernel.md) | 25 | `declaration-track:bee44030691259043e23ec9bff7f97ec44f698424cb6d9fa4c7bf2a62bc9e5a0` |
| 2 | `def` | [differenceSamplingKernel](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/differencesamplingkernel.md) | 28 | `declaration-track:392699db919f94de72be5872e497aecb47e3ba85a5681e5d624352819b90b476` |
| 3 | `def` | [realThetaDifferenceKernel](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/realthetadifferencekernel.md) | 32 | `declaration-track:806ec7f6eb5158ac5d9bbc9635111248af954f63965b5604fd34db071138c4f8` |
| 4 | `def` | [realThetaRemainder](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/realthetaremainder.md) | 35 | `declaration-track:3ac5f743d913112f62a4da523dcc1205d235649135bd0b62e15a474e4c16e98a` |
| 5 | `theorem` | [samplingIndices_eq_fixed_filter](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/samplingindices-eq-fixed-filter.md) | 38 | `result-track:fb8b3c400f0b0483a9363723ca71cb63e156c373ddef8c4771e31256de7a85d2` |
| 6 | `theorem` | [realThetaKernel_eq_strict_sum](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/realthetakernel-eq-strict-sum.md) | 54 | `result-track:3b2f053598d819480f5d985deda093aba5a3207b00a138e62f8759b7ac1156ae` |
| 7 | `theorem` | [realThetaKernel_eq_nat](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/realthetakernel-eq-nat.md) | 69 | `result-track:7a726d4df2344fa1fcbc2be1810a81e92305c04247d672b0e31f2d35fbc15df5` |
| 8 | `theorem` | [realThetaRemainder_eq_nat](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/realthetaremainder-eq-nat.md) | 74 | `result-track:f6c5275ef833179516da960e6439eb3fdc2504f263c6c72022db553f7f8ff438` |
| 9 | `theorem` | [differenceSamplingKernel_eq_mul_deriv](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/differencesamplingkernel-eq-mul-deriv.md) | 79 | `result-track:7db2fd80e6e1199effdf7e83336592c02e8e00a2855a0f9af2053bb0280e09fa` |
| 10 | `theorem` | [realThetaKernel_hasDerivAt](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/realthetakernel-hasderivat.md) | 85 | `result-track:071c6be8b5a34825e4b6206d084ec742d085b152915396ffaf57dfe11b864171` |
| 11 | `theorem` | [realThetaKernel_deriv](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/realthetakernel-deriv.md) | 101 | `result-track:6a0a2c45b8a408b53e87d0632595ea2bca38bd7d2e6ffa5e4b558e13e41e4fc2` |
| 12 | `theorem` | [realThetaRemainder_hasDerivAt](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/realthetaremainder-hasderivat.md) | 105 | `result-track:f38c260bc88691dffb9b9e41b7c16f18ddc5ec337080a0f7aa1b6b2c4c75005f` |
| 13 | `theorem` | [realThetaRemainder_differentiableOn](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/realthetaremainder-differentiableon.md) | 115 | `result-track:38f0fe248f37df44aa8e3d1a582d2018836ca2586d2890ea42eb68c08ccdae08` |
| 14 | `theorem` | [difference_primitive_eq](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/difference-primitive-eq.md) | 120 | `result-track:4f5f71b555d15b65ecc0ecbf0390b5f6ec7d21a4260ca6c6b8202297287182ad` |
| 15 | `def` | [differencePrimitiveSamplingKernel](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/differenceprimitivesamplingkernel.md) | 138 | `declaration-track:47df9b080484ecf6adce6b463e360cce3bc4ba133960b3186d99e0a1b3ecfb8f` |
| 16 | `theorem` | [differencePrimitiveSamplingKernel_eq](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/differenceprimitivesamplingkernel-eq.md) | 143 | `result-track:aa999e7f731c85897dedcac70070cfe400bb4ef63f09b2824f4fcbf150dfb10d` |
| 17 | `theorem` | [differencePrimitiveSamplingKernel_add_rankOne_abs_le](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/differenceprimitivesamplingkernel-add-rankone-abs-le.md) | 150 | `result-track:9da89d123acb349bed80132b5388cd0a4683b1d53a047e7f3ef26a36dc218a4b` |
| 18 | `theorem` | [differencePrimitiveSamplingKernel_eq_fixed_sum](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/differenceprimitivesamplingkernel-eq-fixed-sum.md) | 173 | `result-track:2f3730d5d87ba5e45cb233aa2289759386d2f4de394e251a18a7f406faf6c511` |
| 19 | `theorem` | [difference_tail_eq_primitive](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/difference-tail-eq-primitive.md) | 193 | `result-track:2cad47cb5607fd2f4bb3aae3b2cd5e806294478c8b378d468d9654c48ebb75ed` |
| 20 | `theorem` | [rootWeight_difference_integral](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/rootweight-difference-integral.md) | 231 | `result-track:74deee431d931bda5279c6e554d0fca106424323f569795357d8d9d1466acd87` |
| 21 | `def` | [differenceInnerTerm](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/differenceinnerterm.md) | 241 | `declaration-track:6c8315292bb580424609bdd2d294884621099b447985c7bbff786e83b7795bb1` |
| 22 | `theorem` | [differenceInnerTerm_eq](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/differenceinnerterm-eq.md) | 245 | `result-track:ecffe2af739c13053baa4f902d8d8c678576352b0c8b6bc25f7942e1ff91b0db` |
| 23 | `theorem` | [differenceInnerTerm_integrable](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/differenceinnerterm-integrable.md) | 254 | `result-track:a8f04636fb2a32eef0bb85ed06ecd80872bbc0550c01c106a2800ae1f9926aee` |
| 24 | `theorem` | [differenceInnerTerm_integral](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/differenceinnerterm-integral.md) | 267 | `result-track:9602dfd98dae7b07d5426bb412d514304a0ab4360ec91602e9ccf0ac0a0b2510` |
| 25 | `theorem` | [differenceKernel_eq_inner_sum](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/differencekernel-eq-inner-sum.md) | 284 | `result-track:04a1b3f5ccc62e4688664a519e16bae3d014dc5268a9177ebc995c2e4bb5447d` |
| 26 | `theorem` | [differenceKernel_rescaled_integrable](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/differencekernel-rescaled-integrable.md) | 296 | `result-track:85bb83211006d31b4614eea067c6e6b45c6d974d9bd9b1c49e8238ca40e8b475` |
| 27 | `theorem` | [differenceKernel_integral_eq_primitive](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/differencekernel-integral-eq-primitive.md) | 306 | `result-track:99b435a3ba4de7e0f85e2f2567895a6b35778dc7583ab1f4241149f87aa2b71c` |
| 28 | `theorem` | [differenceKernel_integral_add_rankOne_abs_le](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/differencekernel-integral-add-rankone-abs-le.md) | 325 | `result-track:b2d904729ce0c2492853abe39c1f3dce18981dcb743d6cab8a233ad1af4cdaac` |
| 29 | `def` | [iteratedDifference](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/iterateddifference.md) | 337 | `declaration-track:dc8cc3f19f5decea262523d2ed095c8c221fdfa34f1a6ac4bdb74d458e8ada08` |
| 30 | `theorem` | [iteratedDifference_eq](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/iterateddifference-eq.md) | 340 | `result-track:6bd8035ad0d7166fe4d880c2192eb2fcd0c08e6ea5ca47cda4235bfad223f59f` |
| 31 | `theorem` | [iteratedDifference_contDiff](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/iterateddifference-contdiff.md) | 348 | `result-track:f921e1d731f9fb0cebac6ae7b533a992f2adb645fa136c7a2ddbb7ea4f530db3` |
| 32 | `theorem` | [iteratedDifference_hasCompactSupport](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/iterateddifference-hascompactsupport.md) | 360 | `result-track:17447f6e89fa133c20d77c14f52eac4c402374dedb348381600a17148b1bbe46` |
| 33 | `theorem` | [iteratedDifference_abs_le](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/iterateddifference-abs-le.md) | 369 | `result-track:dcd3303610afa1a7b00f284e92634ef646d45c043054007194a1a1b8cae719a1` |
| 34 | `theorem` | [iteratedDifference_derivative_abs_le](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/iterateddifference-derivative-abs-le.md) | 385 | `result-track:3d0b182ffcf85444ee46bc8a2112dee58247d2c6b0e50ed1a4949d518cbfc662` |
| 35 | `theorem` | [compact_derivative_two_moments_zero](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/compact-derivative-two-moments-zero.md) | 419 | `result-track:bf10a82f9423c27bed7d57bfd259c9c8abbb5eb819ad55ddca91b29d033b959f` |
| 36 | `theorem` | [iteratedDifference_two_moments_zero](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/iterateddifference-two-moments-zero.md) | 454 | `result-track:c64ff57ff5ad95b83b96370f85baf61c5d8293bff6f253379b374c62008c4e67` |
| 37 | `theorem` | [iteratedDifference_zero_right](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/iterateddifference-zero-right.md) | 479 | `result-track:f6fd8051e61876b19ff9c5e9aa5ef3c99a336139ca12bab0cad6c004826aeb37` |
| 38 | `theorem` | [differenceSamplingKernel_hasDerivAt](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/differencesamplingkernel-hasderivat.md) | 490 | `result-track:cd23741f67e62c495174553e3adf3985b9a16b5acc5fed1ab8a9b01823fbfc9f` |
| 39 | `theorem` | [iteratedDifference_sampling_zero](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/iterateddifference-sampling-zero.md) | 510 | `result-track:b95019811e96beb488ff49c2907332e962861a7aebeecce5c6e973b11eb0bc7a` |
| 40 | `theorem` | [iteratedDifference_sampling_sum_abs_le](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/iterateddifference-sampling-sum-abs-le.md) | 518 | `result-track:3aca8f83fca9689f52ea7962f573a1a649d928b52ca3ec482a8803cb961e8075` |
| 41 | `theorem` | [differenceSamplingKernel_derivative_abs_le](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/differencesamplingkernel-derivative-abs-le.md) | 562 | `result-track:b9940efe9a27dfc7e72fb8b3765f7045cf807cccee8d28d9d4f1274acc7b157e` |
| 42 | `theorem` | [inverse_root_majorant_eq](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/inverse-root-majorant-eq.md) | 576 | `result-track:c4fc6482dc00fd751fecc809c4b8e9d4d30d762b9cde8200f55470bbacd879aa` |
| 43 | `theorem` | [inverse_root_majorant_integrable](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/inverse-root-majorant-integrable.md) | 585 | `result-track:26e158cc9755f224804d87f01d67910cb9762792b2dc29098909bb240f0f275e` |
| 44 | `theorem` | [inverse_root_majorant_integral](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/inverse-root-majorant-integral.md) | 594 | `result-track:b43eb231fef3e628e6dbe7621254b483a07f0e8ff18a2abe4b0c9e6624d3bc1d` |
| 45 | `theorem` | [scaledDifference_hasDerivAt](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/scaleddifference-hasderivat.md) | 606 | `result-track:c8895032d4a4b5f19f3b7710d1e2456815ea8de2ea44a7986803794a7b51fdf4` |
| 46 | `theorem` | [scaledDifference_derivative_integrable](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/scaleddifference-derivative-integrable.md) | 613 | `result-track:d1584a1e28d506ea63179966876b0a8fba51aa3f22ccdb5f20c42f07acc6436f` |
| 47 | `theorem` | [scaledDifference_variation_le](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/scaleddifference-variation-le.md) | 625 | `result-track:74476410d3bcaa7b4ad84ee9f5a94e947c18d52f2b59c5626b43725718917907` |
| 48 | `theorem` | [differenceSamplingKernel_zero_of_exp_le](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/differencesamplingkernel-zero-of-exp-le.md) | 643 | `result-track:38fbdb5ce886173f0b4e99e11a2282e39583d6187d0ffc584b3ed8fde9aec092` |
| 49 | `theorem` | [realThetaDifferenceKernel_eq_padded_sum](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/realthetadifferencekernel-eq-padded-sum.md) | 653 | `result-track:93eb210fc38a98ddd3846cee2a3f033a20e94904dda52aefad9d2310ea2014d1` |
| 50 | `theorem` | [realThetaDifferenceKernel_sub_integral_abs_le](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/realthetadifferencekernel-sub-integral-abs-le.md) | 673 | `result-track:6ad3320f207c5cf446ce73858cf44d671c5d55a0222884ac4edcaef89cfa3e59` |
| 51 | `theorem` | [realThetaDifferenceKernel_add_rankOne_abs_le](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/realthetadifferencekernel-add-rankone-abs-le.md) | 696 | `result-track:db1e747e31da92caf1add9db9b071da03ca5d51c8476533119e5e988ca1f217f` |
| 52 | `theorem` | [realThetaRemainder_derivative_abs_le](../../../../MeasureAndIntegration/RealThetaDerivativeNormAudit.lean/declarations/realthetaremainder-derivative-abs-le.md) | 716 | `result-track:36ca7a60a0e5fa3db33154e07d867c004ab6e1b15453e4a88972f48bdee36308` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f90674bdd5291a6e171b50230a77e8512570a617fe1dc6e021112c4fee2608ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormAudit/Variant7f123b3c6cecf4a46f5ced293a7bb85cb4f25800986e7d88245c1987beb8d616.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/RealThetaDerivativeNormAudit/Variant7f123b3c6cecf4a46f5ced293a7bb85cb4f25800986e7d88245c1987beb8d616.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
