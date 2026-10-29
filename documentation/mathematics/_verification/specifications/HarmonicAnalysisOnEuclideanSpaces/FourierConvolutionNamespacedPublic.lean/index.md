# Verification target: Fourier Convolution Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "709b9f4654406ded9c96187d706c4a34883585c6",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Convolution/Variant14a7f0eba5ff77c9662c8e47c87c8798645e1707fec70262e41187b508040df1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierConvolutionNamespacedPublic.lean/index.md) · [Full source](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierConvolutionNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `709b9f4654406ded9c96187d706c4a34883585c6`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Convolution/Variant14a7f0eba5ff77c9662c8e47c87c8798645e1707fec70262e41187b508040df1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Convolution/Variant14a7f0eba5ff77c9662c8e47c87c8798645e1707fec70262e41187b508040df1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integrable_prod_sub](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierConvolutionNamespacedPublic.lean/declarations/integrable-prod-sub.md) | 55 | `result-track:86d561aed71a06b1f620cb997163445311c9aa83c83cb79ac2ba1b5ba26ab4c7` |
| 2 | `theorem` | [fourier_bilin_convolution_eq_integral](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierConvolutionNamespacedPublic.lean/declarations/fourier-bilin-convolution-eq-integral.md) | 65 | `result-track:924d9e3a5215f16b5a0dc818c4203d1b6f1258e275e8d47eaae81d729b1a8884` |
| 3 | `theorem` | [fourier_bilin_convolution_eq](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierConvolutionNamespacedPublic.lean/declarations/fourier-bilin-convolution-eq.md) | 97 | `result-track:bd5e5bfe696189791f251d5efcbab749b828c44952050e1ffc439b7187332113` |
| 4 | `theorem` | [fourier_smul_convolution_eq](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierConvolutionNamespacedPublic.lean/declarations/fourier-smul-convolution-eq.md) | 117 | `result-track:1daffe8e0f15ade342d9c79bd678cc49ba8dd53f54dd915da332e6d86dc1f6b5` |
| 5 | `theorem` | [fourier_mul_convolution_eq](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierConvolutionNamespacedPublic.lean/declarations/fourier-mul-convolution-eq.md) | 129 | `result-track:ace0fc53b945642f6ed78dc5cfb6b068edffe9b28b4c61d7dfdc507cd0510179` |
| 6 | `def` | [convolution](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierConvolutionNamespacedPublic.lean/declarations/convolution.md) | 153 | `declaration-track:3f3ea8980c1c0ff9c3f8c476a547b81daa2b9d2323adbb93284b9f644a2209c8` |
| 7 | `theorem` | [convolution_flip](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierConvolutionNamespacedPublic.lean/declarations/convolution-flip.md) | 159 | `result-track:5484491758cc76969f4db417e44483b96589bcc282cd91bfef142e7a44fa16ac` |
| 8 | `theorem` | [convolution_continuous_left](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierConvolutionNamespacedPublic.lean/declarations/convolution-continuous-left.md) | 167 | `result-track:4d6cd571b15cd04a1bbee6ebfadc8f82f0e358f305f1e51b09c8f676cc2ee745` |
| 9 | `theorem` | [fourier_convolution](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierConvolutionNamespacedPublic.lean/declarations/fourier-convolution.md) | 172 | `result-track:0e6fc901d3dc962c4dcfde47a9f7eb6c05d2da783609e16c7f4f31047fc99aed` |
| 10 | `theorem` | [fourier_convolution_apply](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierConvolutionNamespacedPublic.lean/declarations/fourier-convolution-apply.md) | 179 | `result-track:989d58e4a8640ac7750f4eb40495c13f1fa3309b6c9a791b0c6b095e58236b54` |
| 11 | `theorem` | [convolution_apply](../../../../HarmonicAnalysisOnEuclideanSpaces/FourierConvolutionNamespacedPublic.lean/declarations/convolution-apply.md) | 185 | `result-track:3d9fbdda0acc79efbd86d354274dff1bd12c0cf0682108f23843d24847ae788e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a48b4a498b1e38b1910c4007cf7e89e3da9c9a6883c6fb027bf61401cac59f99 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Convolution/Variant14a7f0eba5ff77c9662c8e47c87c8798645e1707fec70262e41187b508040df1.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Convolution/Variant14a7f0eba5ff77c9662c8e47c87c8798645e1707fec70262e41187b508040df1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
