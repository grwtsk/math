# Verification target: Convolution V1 Prebytes Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7296d85e5408fd20e564174d77c383d19ee5dd6f",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV1Prebytes/Variantb202c8e4fe8a29d7c54bb3043df818e42d778fe9210d14674d57e398fc5f1053.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ConvolutionV1PrebytesNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ConvolutionV1PrebytesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7296d85e5408fd20e564174d77c383d19ee5dd6f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV1Prebytes/Variantb202c8e4fe8a29d7c54bb3043df818e42d778fe9210d14674d57e398fc5f1053.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV1Prebytes/Variantb202c8e4fe8a29d7c54bb3043df818e42d778fe9210d14674d57e398fc5f1053.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceHankelReflection` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [greenKernel](../../../../MeasureAndIntegration/ConvolutionV1PrebytesNamespaced.lean/declarations/greenkernel.md) | 35 | `declaration-track:ff969fe90af61e9b33bb6bcb3b60138d214a8e93b09b6e4e0946146e24f431ce` |
| 2 | `def` | [sourceGreenPairing](../../../../MeasureAndIntegration/ConvolutionV1PrebytesNamespaced.lean/declarations/sourcegreenpairing.md) | 38 | `declaration-track:48eb42a23dd6efdca571cd6224184764832dbd954c65b1a47fd9953886050718` |
| 3 | `def` | [sourceGreenConvolution](../../../../MeasureAndIntegration/ConvolutionV1PrebytesNamespaced.lean/declarations/sourcegreenconvolution.md) | 42 | `declaration-track:ba342ae63b4c690fc7a659cb237df108077b26261595ddeaf95e1db4e9f8a5ee` |
| 4 | `theorem` | [greenKernel_continuous](../../../../MeasureAndIntegration/ConvolutionV1PrebytesNamespaced.lean/declarations/greenkernel-continuous.md) | 46 | `result-track:2a2a53448d3f3a66891a9632f9576231534ce27ddaea4246c659f1b1841ab42b` |
| 5 | `theorem` | [greenKernel_even](../../../../MeasureAndIntegration/ConvolutionV1PrebytesNamespaced.lean/declarations/greenkernel-even.md) | 50 | `result-track:061b5e804c3a9b278a71de1c226e58a55565361e7a5c7784bf13980ebe229561` |
| 6 | `theorem` | [sourceGreenPairing_integrable](../../../../MeasureAndIntegration/ConvolutionV1PrebytesNamespaced.lean/declarations/sourcegreenpairing-integrable.md) | 54 | `result-track:dc03b73bebd235f0a364ffc208d158c4a595427a2ac46f39c05b7ce8217306b0` |
| 7 | `theorem` | [sourceGreenConvolution_integrable](../../../../MeasureAndIntegration/ConvolutionV1PrebytesNamespaced.lean/declarations/sourcegreenconvolution-integrable.md) | 59 | `result-track:8e7faa67b18cdd14f8ed034f6d0b77dfb6d0dd9793a04e524b06d9f8a381f5b4` |
| 8 | `theorem` | [sourceGreenPairing_eq_twice_negativeSmoothMoment](../../../../MeasureAndIntegration/ConvolutionV1PrebytesNamespaced.lean/declarations/sourcegreenpairing-eq-twice-negativesmoothmoment.md) | 66 | `result-track:78da3826832a492921f12b0f931007266a30b90625319e0dfdd2174c7b663ee3` |
| 9 | `theorem` | [sourceGreenPairing_eq_causal_energy](../../../../MeasureAndIntegration/ConvolutionV1PrebytesNamespaced.lean/declarations/sourcegreenpairing-eq-causal-energy.md) | 104 | `result-track:434ce81d5bb72983a3ddeefdfb5db6e6bbc0d592393d02d2d86badbf6b59bbaa` |
| 10 | `theorem` | [criticalContinuousMoment_eq_neg_half_green](../../../../MeasureAndIntegration/ConvolutionV1PrebytesNamespaced.lean/declarations/criticalcontinuousmoment-eq-neg-half-green.md) | 111 | `result-track:413f07d292b50f865ac2d04727cae68e3d2eaca46cd812b2d690523e22a3a369` |
| 11 | `theorem` | [normalizedPrimitiveBump_even](../../../../MeasureAndIntegration/ConvolutionV1PrebytesNamespaced.lean/declarations/normalizedprimitivebump-even.md) | 117 | `result-track:6c5c3ea50e8137b636a4c39646d5acf7038b568d432d90607968838d13bbf39a` |
| 12 | `theorem` | [normalizedPrimitiveBump_deriv_odd](../../../../MeasureAndIntegration/ConvolutionV1PrebytesNamespaced.lean/declarations/normalizedprimitivebump-deriv-odd.md) | 130 | `result-track:f3da20702417001a357b43b84342d9b17b8b7506273b62d95ae56bc6de03d75a` |
| 13 | `theorem` | [causalSourceTail_add_reflection](../../../../MeasureAndIntegration/ConvolutionV1PrebytesNamespaced.lean/declarations/causalsourcetail-add-reflection.md) | 143 | `result-track:c7bc33ac640331493430bf74acdd2851a5d7ad961defb298a6b86ae22f4ed92a` |
| 14 | `theorem` | [sourceGreenConvolution_upper_half](../../../../MeasureAndIntegration/ConvolutionV1PrebytesNamespaced.lean/declarations/sourcegreenconvolution-upper-half.md) | 150 | `result-track:5d36c59fe0a5ca6ea7a3ead0025c7811aa475eb95e9509a2ca41deed5a4a886a` |
| 15 | `theorem` | [sourceGreenConvolution_lower_half](../../../../MeasureAndIntegration/ConvolutionV1PrebytesNamespaced.lean/declarations/sourcegreenconvolution-lower-half.md) | 163 | `result-track:24d8efc1e8651efc75ecfd67ec7855cd2b2ba7d5b4098235557cb8fc3bbffc08` |
| 16 | `theorem` | [sourceGreenConvolution_eq_tails](../../../../MeasureAndIntegration/ConvolutionV1PrebytesNamespaced.lean/declarations/sourcegreenconvolution-eq-tails.md) | 176 | `result-track:15279965bcc748cad09b8bc58c21bc0a21d1997dbbf787a727c83fe1491d3f1e` |
| 17 | `theorem` | [sourceGreenConvolution_eq_neg_bump](../../../../MeasureAndIntegration/ConvolutionV1PrebytesNamespaced.lean/declarations/sourcegreenconvolution-eq-neg-bump.md) | 185 | `result-track:51270c7ab55cdbeda46dda9b5aab043bc77f2d66cc6fe0585a1566dc8b2b9924` |
| 18 | `theorem` | [sourceGreenConvolution_continuous](../../../../MeasureAndIntegration/ConvolutionV1PrebytesNamespaced.lean/declarations/sourcegreenconvolution-continuous.md) | 191 | `result-track:84de7aa85b4a945be2fd25d4fd990c61f20d12aba6a333ab8fd56834943e9215` |
| 19 | `theorem` | [sourceGreenConvolution_hasCompactSupport](../../../../MeasureAndIntegration/ConvolutionV1PrebytesNamespaced.lean/declarations/sourcegreenconvolution-hascompactsupport.md) | 199 | `result-track:205316676c5c148c5dd825f18884c5d76ee8d854a37061dbd257eeaf3e2bf31b` |
| 20 | `theorem` | [sourceGreenConvolution_zero_of_not_mem](../../../../MeasureAndIntegration/ConvolutionV1PrebytesNamespaced.lean/declarations/sourcegreenconvolution-zero-of-not-mem.md) | 207 | `result-track:593d8846f95a83160bf78208b0a3177e39163430e4bd2dd9e695c3dc2bf0e666` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ffa5267331f37e44906a674c1ee92798b4dd06a227e2655742a73d986aa38fa4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV1Prebytes/Variantb202c8e4fe8a29d7c54bb3043df818e42d778fe9210d14674d57e398fc5f1053.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV1Prebytes/Variantb202c8e4fe8a29d7c54bb3043df818e42d778fe9210d14674d57e398fc5f1053.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
