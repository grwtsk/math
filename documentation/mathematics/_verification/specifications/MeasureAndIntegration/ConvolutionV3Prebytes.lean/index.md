# Verification target: Convolution V3 Prebytes

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aeeb62e04f313412ad6e784a207617e947aee71c",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV3Prebytes/Variantd218427c682b1c71b0296bc43e6987c800f8cfee896d39e99ef34d18a45b9e6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ConvolutionV3Prebytes.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ConvolutionV3Prebytes.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aeeb62e04f313412ad6e784a207617e947aee71c`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV3Prebytes/Variantd218427c682b1c71b0296bc43e6987c800f8cfee896d39e99ef34d18a45b9e6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV3Prebytes/Variantd218427c682b1c71b0296bc43e6987c800f8cfee896d39e99ef34d18a45b9e6f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceHankelReflection` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [greenKernel](../../../../MeasureAndIntegration/ConvolutionV3Prebytes.lean/declarations/greenkernel.md) | 27 | `declaration-track:bb3a5ce4d7c9436251861ad91f55a28e5ec2a0742c05f718d2f13fc78bd43b21` |
| 2 | `def` | [sourceGreenPairing](../../../../MeasureAndIntegration/ConvolutionV3Prebytes.lean/declarations/sourcegreenpairing.md) | 30 | `declaration-track:be873e070ab2ac09bfd612070ae562fbdfb23df0ac9c7c47f69f396b466d76d6` |
| 3 | `def` | [sourceGreenConvolution](../../../../MeasureAndIntegration/ConvolutionV3Prebytes.lean/declarations/sourcegreenconvolution.md) | 34 | `declaration-track:7bba814d51dacddea07695b569631dd3e867e5af86435216f6cf97a53bb0cc9d` |
| 4 | `theorem` | [greenKernel_continuous](../../../../MeasureAndIntegration/ConvolutionV3Prebytes.lean/declarations/greenkernel-continuous.md) | 38 | `result-track:5d9b5e87351eed9b25ef1bb5ce85de5169354aaa41dd535e7e374ecf8113be45` |
| 5 | `theorem` | [greenKernel_even](../../../../MeasureAndIntegration/ConvolutionV3Prebytes.lean/declarations/greenkernel-even.md) | 42 | `result-track:48b408e09c09dbbc41c38a516ea6399a75c1c40c3f948a1b0a11188d7b777f54` |
| 6 | `theorem` | [sourceGreenPairing_integrable](../../../../MeasureAndIntegration/ConvolutionV3Prebytes.lean/declarations/sourcegreenpairing-integrable.md) | 46 | `result-track:4a252904503f755b8ffbf745829a68dec77c5600ebf2a7d6c063797f32489266` |
| 7 | `theorem` | [sourceGreenConvolution_integrable](../../../../MeasureAndIntegration/ConvolutionV3Prebytes.lean/declarations/sourcegreenconvolution-integrable.md) | 51 | `result-track:300aa859cbab49b29dcae2faabba8091341ec8618891760fdebe0502375ae0fd` |
| 8 | `theorem` | [sourceGreenPairing_eq_twice_negativeSmoothMoment](../../../../MeasureAndIntegration/ConvolutionV3Prebytes.lean/declarations/sourcegreenpairing-eq-twice-negativesmoothmoment.md) | 58 | `result-track:5fed7de8d0ce93b0bf0e3849f87f341ff21c9c24b051b6a2fe971f01053e8d57` |
| 9 | `theorem` | [sourceGreenPairing_eq_causal_energy](../../../../MeasureAndIntegration/ConvolutionV3Prebytes.lean/declarations/sourcegreenpairing-eq-causal-energy.md) | 96 | `result-track:566c43924eb562de1b381828a50dcca7a2d3c9ac6cc71465ef1a72b1a96eb261` |
| 10 | `theorem` | [criticalContinuousMoment_eq_neg_half_green](../../../../MeasureAndIntegration/ConvolutionV3Prebytes.lean/declarations/criticalcontinuousmoment-eq-neg-half-green.md) | 103 | `result-track:065ae518d32face93bede54dda906970affa165ed4e86ad5ede4f81a803749e3` |
| 11 | `theorem` | [normalizedPrimitiveBump_even](../../../../MeasureAndIntegration/ConvolutionV3Prebytes.lean/declarations/normalizedprimitivebump-even.md) | 109 | `result-track:8ce8f5459d8ee3ecda264c6044b58cd280396b14feb0edd0af432ca0b2cff6f8` |
| 12 | `theorem` | [normalizedPrimitiveBump_deriv_odd](../../../../MeasureAndIntegration/ConvolutionV3Prebytes.lean/declarations/normalizedprimitivebump-deriv-odd.md) | 122 | `result-track:0686dca294797b86e958d8f21ed66d2321131efdfba5b383ee1dbdd6e6b31c57` |
| 13 | `theorem` | [causalSourceTail_add_reflection](../../../../MeasureAndIntegration/ConvolutionV3Prebytes.lean/declarations/causalsourcetail-add-reflection.md) | 135 | `result-track:c6402faaa1fe01ab2fc59eb41bbcaaac64acc03a949a4ebb3fd730d40df32e9a` |
| 14 | `theorem` | [sourceGreenConvolution_upper_half](../../../../MeasureAndIntegration/ConvolutionV3Prebytes.lean/declarations/sourcegreenconvolution-upper-half.md) | 142 | `result-track:d0f8edecfb50822f44eb142725dce1a1ded45de76ccd1cc3c5737325dbcf3772` |
| 15 | `theorem` | [sourceGreenConvolution_lower_half](../../../../MeasureAndIntegration/ConvolutionV3Prebytes.lean/declarations/sourcegreenconvolution-lower-half.md) | 155 | `result-track:789f5a186519cbc235f8b98967ee3db3415a202338bcbc63155943ab33eb209a` |
| 16 | `theorem` | [sourceGreenConvolution_eq_tails](../../../../MeasureAndIntegration/ConvolutionV3Prebytes.lean/declarations/sourcegreenconvolution-eq-tails.md) | 170 | `result-track:c06fc3a88ca970fbfc62bff75b02659343f8ce0507057662c34e5428606bc998` |
| 17 | `theorem` | [sourceGreenConvolution_eq_neg_bump](../../../../MeasureAndIntegration/ConvolutionV3Prebytes.lean/declarations/sourcegreenconvolution-eq-neg-bump.md) | 179 | `result-track:a582fccf105348370306e1c0183274a0b799e7aa7d677a62748728933ca328dc` |
| 18 | `theorem` | [sourceGreenConvolution_continuous](../../../../MeasureAndIntegration/ConvolutionV3Prebytes.lean/declarations/sourcegreenconvolution-continuous.md) | 185 | `result-track:8a726fdb9939877afc0672e49927f5f971f969302c90b60f2ffe9be084bd4e29` |
| 19 | `theorem` | [sourceGreenConvolution_hasCompactSupport](../../../../MeasureAndIntegration/ConvolutionV3Prebytes.lean/declarations/sourcegreenconvolution-hascompactsupport.md) | 193 | `result-track:6e395ffe3f0708416a4dcd9c48e19e0fbaca4c9ca964cadc73062d067026fd44` |
| 20 | `theorem` | [sourceGreenConvolution_zero_of_not_mem](../../../../MeasureAndIntegration/ConvolutionV3Prebytes.lean/declarations/sourcegreenconvolution-zero-of-not-mem.md) | 201 | `result-track:10f2b99d64466b6e12cfa4826b1da336eb3c956e1631085dc7781043b1f62cbd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7e1eb6c8210bf70b1857135dde3cd17304453ac2575fbdc9f682c9d1f1d7d4ac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV3Prebytes/Variantd218427c682b1c71b0296bc43e6987c800f8cfee896d39e99ef34d18a45b9e6f.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV3Prebytes/Variantd218427c682b1c71b0296bc43e6987c800f8cfee896d39e99ef34d18a45b9e6f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
