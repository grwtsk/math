# Verification target: Source Actual Xi Error Convolution Kernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "507212284ba942b7f7880b121da7d8785f69caa7",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiErrorConvolutionKernel/Variant21a19631a7eb32c7043231ce15c6bb3753bc9e36acd6cc5e734e6d39f0b4b4d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceActualXiErrorConvolutionKernel.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceActualXiErrorConvolutionKernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `507212284ba942b7f7880b121da7d8785f69caa7`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiErrorConvolutionKernel/Variant21a19631a7eb32c7043231ce15c6bb3753bc9e36acd6cc5e734e6d39f0b4b4d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiErrorConvolutionKernel/Variant21a19631a7eb32c7043231ce15c6bb3753bc9e36acd6cc5e734e6d39f0b4b4d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualXiErrorConvolution` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualMangoldtErrorDifferenceKernel](../../../../MeasureAndIntegration/SourceActualXiErrorConvolutionKernel.lean/declarations/actualmangoldterrordifferencekernel.md) | 21 | `declaration-track:8336c0a4f2014c34ae6b36b6f79fcad3af6ef139b1caf2e1c768e97dd14bdfee` |
| 2 | `theorem` | [actualMangoldtErrorDifferenceKernel_nonneg](../../../../MeasureAndIntegration/SourceActualXiErrorConvolutionKernel.lean/declarations/actualmangoldterrordifferencekernel-nonneg.md) | 25 | `result-track:06246047410fd7aba882fb8173a02f87b2e99eed23dd9b688879ab172ad76c13` |
| 3 | `theorem` | [actualMangoldtErrorDifferenceKernel_intervalIntegrable](../../../../MeasureAndIntegration/SourceActualXiErrorConvolutionKernel.lean/declarations/actualmangoldterrordifferencekernel-intervalintegrable.md) | 31 | `result-track:59f39921646524d3239aff7a91be5a36f0de728245d9066707c17b348fb0f00f` |
| 4 | `theorem` | [actualMangoldtErrorDifferenceKernel_mass](../../../../MeasureAndIntegration/SourceActualXiErrorConvolutionKernel.lean/declarations/actualmangoldterrordifferencekernel-mass.md) | 37 | `result-track:565c2fe4f3dd18c4e3c7a43081fdc452ccb6993969ce258dc7872d4743d24126` |
| 5 | `theorem` | [actualMangoldtErrorConvolution_difference_eq_kernel](../../../../MeasureAndIntegration/SourceActualXiErrorConvolutionKernel.lean/declarations/actualmangoldterrorconvolution-difference-eq-kernel.md) | 56 | `result-track:8273386645f27196f55fdfba327a7fae3019f50dfb44ca1d1168a00f036bb437` |
| 6 | `theorem` | [actualCenteredMangoldtLogError_abs_le](../../../../MeasureAndIntegration/SourceActualXiErrorConvolutionKernel.lean/declarations/actualcenteredmangoldtlogerror-abs-le.md) | 72 | `result-track:fbe0940b2fb6fd28847ae9c8729ee312154c4446d13a09a37db86759317e7e67` |
| 7 | `theorem` | [actualMangoldtErrorConvolution_difference_abs_le](../../../../MeasureAndIntegration/SourceActualXiErrorConvolutionKernel.lean/declarations/actualmangoldterrorconvolution-difference-abs-le.md) | 81 | `result-track:e2124d8dd87e4ec6f44ad556853e60bf807b3c7be86eff4a829812d8e10af39e` |
| 8 | `theorem` | [actualDampedXiFinitePrimitive_centered_abs_le](../../../../MeasureAndIntegration/SourceActualXiErrorConvolutionKernel.lean/declarations/actualdampedxifiniteprimitive-centered-abs-le.md) | 111 | `result-track:be5d26ac43edc4117efc9ce54411bbd1c654dff08946af2a50e94fe4d4161495` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba6f6b7a69c892158089d2f76d1d99e01bfe2a69a0f2a307431b50a6422193a5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiErrorConvolutionKernel/Variant21a19631a7eb32c7043231ce15c6bb3753bc9e36acd6cc5e734e6d39f0b4b4d4.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiErrorConvolutionKernel/Variant21a19631a7eb32c7043231ce15c6bb3753bc9e36acd6cc5e734e6d39f0b4b4d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
