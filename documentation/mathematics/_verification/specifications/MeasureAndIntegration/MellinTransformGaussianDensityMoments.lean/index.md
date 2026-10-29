# Verification target: GRWTSK.Analysis.MellinTransform.GaussianDensityMoments

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f9219b806dc7d681d0ceceff3f6f7f2aea06d4f",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MellinTransform/GaussianDensityMoments.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/MellinTransformGaussianDensityMoments.lean/index.md) · [Full source](../../../../MeasureAndIntegration/MellinTransformGaussianDensityMoments.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f9219b806dc7d681d0ceceff3f6f7f2aea06d4f`.

Source path: `GRWTSK/Analysis/MellinTransform/GaussianDensityMoments.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MellinTransform/GaussianDensityMoments.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.MellinTransform.GaussianLogWindow`](../../../../MeasureAndIntegration/MellinTransformGaussianLogWindow.lean/index.md) — import line 18; pinned internal source present.
- [`GRWTSK.Analysis.Series.DyadicKernel`](../../../../RealFunctions/SeriesDyadicKernel.lean/index.md) — import line 19; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gaussianJointMoment](../../../../MeasureAndIntegration/MellinTransformGaussianDensityMoments.lean/declarations/gaussianjointmoment.md) | 30 | `declaration-track:364dc1b16761a4aa0692eb61d2892e5fbc4bb59154aa82d0484d34e9129dc128` |
| 2 | `lemma` | [gaussianJointMoment_nonneg](../../../../MeasureAndIntegration/MellinTransformGaussianDensityMoments.lean/declarations/gaussianjointmoment-nonneg.md) | 34 | `result-track:a918be60d9fa39599939ece30ab17b03aaf93f12bbf13e5e27e41c72dd518386` |
| 3 | `lemma` | [gaussianJointMoment_integrable](../../../../MeasureAndIntegration/MellinTransformGaussianDensityMoments.lean/declarations/gaussianjointmoment-integrable.md) | 40 | `result-track:68b6b0f524abe484d6eb3318cbc10a6b667c72e65dc8f4117aacc4555228ffe0` |
| 4 | `lemma` | [gaussianJointMoment_power_bound](../../../../MeasureAndIntegration/MellinTransformGaussianDensityMoments.lean/declarations/gaussianjointmoment-power-bound.md) | 44 | `result-track:11876238fd66ace032045f7eef82ed2a916af1190567c0996534492d3733c751` |
| 5 | `lemma` | [gaussianJointMoment_polynomial_decay](../../../../MeasureAndIntegration/MellinTransformGaussianDensityMoments.lean/declarations/gaussianjointmoment-polynomial-decay.md) | 50 | `result-track:adaafd41febf505652251f0f8484d7f22e4b7892fd9d6e491d8f8ce5fcd0a712` |
| 6 | `theorem` | [gaussianJointMoment_summed](../../../../MeasureAndIntegration/MellinTransformGaussianDensityMoments.lean/declarations/gaussianjointmoment-summed.md) | 78 | `result-track:7d76fcb14c3348aa234dd06653a1cce2b1bf52ee8984761f47f90bdfc4391c7b` |
| 7 | `def` | [gaussianWeightedMoment](../../../../MeasureAndIntegration/MellinTransformGaussianDensityMoments.lean/declarations/gaussianweightedmoment.md) | 104 | `declaration-track:085aa6c5b5b75d122824e3dae320a406aa13efbb19311d54da0a4b448768f2b3` |
| 8 | `lemma` | [gaussianWeightedMoment_nonneg](../../../../MeasureAndIntegration/MellinTransformGaussianDensityMoments.lean/declarations/gaussianweightedmoment-nonneg.md) | 107 | `result-track:c31d47579993de57de722217258f6524f76f4604ec1e8376d464b782ceea6992` |
| 9 | `lemma` | [gaussianWeightedMoment_power_bound](../../../../MeasureAndIntegration/MellinTransformGaussianDensityMoments.lean/declarations/gaussianweightedmoment-power-bound.md) | 112 | `result-track:e9ec6217e2779e83fc8aa45ed8c8ee50ac1dad073e1ef1ed7211b19daa1dff10` |
| 10 | `lemma` | [gaussianWeightedMoment_polynomial_decay](../../../../MeasureAndIntegration/MellinTransformGaussianDensityMoments.lean/declarations/gaussianweightedmoment-polynomial-decay.md) | 127 | `result-track:c8a8401d7e7b801fac4b3fa7a808b768fc5d3a5228254a021939ab4deb255688` |
| 11 | `theorem` | [gaussianWeightedMoment_summed](../../../../MeasureAndIntegration/MellinTransformGaussianDensityMoments.lean/declarations/gaussianweightedmoment-summed.md) | 155 | `result-track:9055277a460292f0e0c18aee7f986edb8cdc6a099d34249dd60d0a5bcb8b09bc` |
| 12 | `def` | [gaussianRemoteMoment](../../../../MeasureAndIntegration/MellinTransformGaussianDensityMoments.lean/declarations/gaussianremotemoment.md) | 181 | `declaration-track:50b1058a85a0685d0eeb10ac31b7f568a782217abfdd2a93af94f2668ec9e35c` |
| 13 | `theorem` | [gaussianRemoteMoment_summed](../../../../MeasureAndIntegration/MellinTransformGaussianDensityMoments.lean/declarations/gaussianremotemoment-summed.md) | 187 | `result-track:01b86198d82eb0b60e5d780c22ab12b2c145264fbbd366347608e0408599008f` |
| 14 | `lemma` | [gaussianFlow_ne_zero](../../../../MeasureAndIntegration/MellinTransformGaussianDensityMoments.lean/declarations/gaussianflow-ne-zero.md) | 254 | `result-track:fe5e04ba693034aed97d9b48a8914512ebd7f8d8dcf4a77b6a237780b1cc6bbc` |
| 15 | `lemma` | [gaussianLogWindow_ne_zero](../../../../MeasureAndIntegration/MellinTransformGaussianDensityMoments.lean/declarations/gaussianlogwindow-ne-zero.md) | 264 | `result-track:70a5dc62274a6cf9a116f998d2047b1a11df9594ea570bb14b84f7f58d8fbe14` |
| 16 | `lemma` | [gaussianJointDensity_ne_zero](../../../../MeasureAndIntegration/MellinTransformGaussianDensityMoments.lean/declarations/gaussianjointdensity-ne-zero.md) | 274 | `result-track:1bfc8433b992dc2866ef50da2dc9ac8c83ff32916e8aac6bf82030decb64df63` |
| 17 | `theorem` | [gaussianJointMoment_zero_pos](../../../../MeasureAndIntegration/MellinTransformGaussianDensityMoments.lean/declarations/gaussianjointmoment-zero-pos.md) | 282 | `result-track:9e19cb9e00e773e847787edc6e306dfcd35fc0854f6f388687b566f9d2cfa88e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3998c8dacd8e0db2d847f4ee17acf1e5707405c843d41b1f128d1291f1146bd6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MellinTransform/GaussianDensityMoments.lean","GRWTSK/_verification/specifications/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianDensityMoments.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
