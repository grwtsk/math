# Verification target: Attempt01 Namespaced Actual Mangoldt Error Difference Kernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d492109eaba79254a0e929c684ef73b056ac72dd",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant742dafac308b5b66bfd7efd0258e64325be46ff1f4ce0f25b2aa172002cc5e4c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Attempt01NamespacedActualMangoldtErrorDifferenceKernel.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Attempt01NamespacedActualMangoldtErrorDifferenceKernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d492109eaba79254a0e929c684ef73b056ac72dd`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant742dafac308b5b66bfd7efd0258e64325be46ff1f4ce0f25b2aa172002cc5e4c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant742dafac308b5b66bfd7efd0258e64325be46ff1f4ce0f25b2aa172002cc5e4c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualXiErrorConvolution` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualMangoldtErrorDifferenceKernel](../../../../MeasureAndIntegration/Attempt01NamespacedActualMangoldtErrorDifferenceKernel.lean/declarations/actualmangoldterrordifferencekernel.md) | 29 | `declaration-track:ae913daf4fbe6d0b5ceee77540f456f0fe061d221ecc35d4c655534670d4856d` |
| 2 | `theorem` | [actualMangoldtErrorDifferenceKernel_nonneg](../../../../MeasureAndIntegration/Attempt01NamespacedActualMangoldtErrorDifferenceKernel.lean/declarations/actualmangoldterrordifferencekernel-nonneg.md) | 33 | `result-track:52425ae91e7d73e383bbcec69bbbd744c2485b2848ef9dfef3cdaca54d3b8c95` |
| 3 | `theorem` | [actualMangoldtErrorDifferenceKernel_intervalIntegrable](../../../../MeasureAndIntegration/Attempt01NamespacedActualMangoldtErrorDifferenceKernel.lean/declarations/actualmangoldterrordifferencekernel-intervalintegrable.md) | 39 | `result-track:c68bfc90063b7fe86077560656f5aafde98b8ba914878ac299b888e3bb94458a` |
| 4 | `theorem` | [actualMangoldtErrorDifferenceKernel_mass](../../../../MeasureAndIntegration/Attempt01NamespacedActualMangoldtErrorDifferenceKernel.lean/declarations/actualmangoldterrordifferencekernel-mass.md) | 45 | `result-track:1a4d9d4e3356b5273a8a94c03a916bc58140ade6def3d5c896490ae82b9233c2` |
| 5 | `theorem` | [actualMangoldtErrorConvolution_difference_eq_kernel](../../../../MeasureAndIntegration/Attempt01NamespacedActualMangoldtErrorDifferenceKernel.lean/declarations/actualmangoldterrorconvolution-difference-eq-kernel.md) | 64 | `result-track:746b2e308d40cfd858b1ff106fa8d1480610aa817594c9ee4f2b3dc9736a02fa` |
| 6 | `theorem` | [actualCenteredMangoldtLogError_abs_le](../../../../MeasureAndIntegration/Attempt01NamespacedActualMangoldtErrorDifferenceKernel.lean/declarations/actualcenteredmangoldtlogerror-abs-le.md) | 78 | `result-track:4ccad07522362ca2c2fd377167b87fbbec90e2c2f4c606366a6d765a576f59f2` |
| 7 | `theorem` | [actualMangoldtErrorConvolution_difference_abs_le](../../../../MeasureAndIntegration/Attempt01NamespacedActualMangoldtErrorDifferenceKernel.lean/declarations/actualmangoldterrorconvolution-difference-abs-le.md) | 85 | `result-track:e57fcaf2dbb6b5afe9d4082a2be648358bffb4cfca1321cacdbb04b87c2e07b0` |
| 8 | `theorem` | [actualDampedXiFinitePrimitive_centered_abs_le](../../../../MeasureAndIntegration/Attempt01NamespacedActualMangoldtErrorDifferenceKernel.lean/declarations/actualdampedxifiniteprimitive-centered-abs-le.md) | 114 | `result-track:005150dff9d37f321867bb26539ae8617612b5e28d0409a050d29d1277583fc0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b506eab9e7197b508471f60c6c7bc2f501bf96ce7990451e48e102f0c273e542 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant742dafac308b5b66bfd7efd0258e64325be46ff1f4ce0f25b2aa172002cc5e4c.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant742dafac308b5b66bfd7efd0258e64325be46ff1f4ce0f25b2aa172002cc5e4c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
