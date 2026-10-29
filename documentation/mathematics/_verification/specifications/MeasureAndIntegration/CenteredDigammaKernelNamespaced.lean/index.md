# Verification target: Centered Digamma Kernel Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c41288a3e75bca56cbcb58d317c52f4c27a3d48b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CenteredDigammaKernel/Variant0353fd3f97078754866f8ea1d427ea361ec2055ea98c916983fcbffaf6b7cede.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CenteredDigammaKernelNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CenteredDigammaKernelNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c41288a3e75bca56cbcb58d317c52f4c27a3d48b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CenteredDigammaKernel/Variant0353fd3f97078754866f8ea1d427ea361ec2055ea98c916983fcbffaf6b7cede.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CenteredDigammaKernel/Variant0353fd3f97078754866f8ea1d427ea361ec2055ea98c916983fcbffaf6b7cede.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CompensatedLaplaceCosine` — import line 6; external provider; requires a separately pinned dependency.
- `ArchimedeanKernel` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [term](../../../../MeasureAndIntegration/CenteredDigammaKernelNamespaced.lean/declarations/term.md) | 26 | `declaration-track:d97d37bbad893031a4fc284ba6d01a2cbe7b3819e3ec413747aa71e8a9657f42` |
| 2 | `def` | [compensatedKernel](../../../../MeasureAndIntegration/CenteredDigammaKernelNamespaced.lean/declarations/compensatedkernel.md) | 29 | `declaration-track:e6a5575ac811087843f6960499d0fbf655d820ef7d2306c2015b0683d608325b` |
| 3 | `theorem` | [cosine_deficit](../../../../MeasureAndIntegration/CenteredDigammaKernelNamespaced.lean/declarations/cosine-deficit.md) | 32 | `result-track:400b5267c5294f573877d7797f622b2c3af4f430ccb0687741289bc00b43bb10` |
| 4 | `theorem` | [compensatedKernel_integrable](../../../../MeasureAndIntegration/CenteredDigammaKernelNamespaced.lean/declarations/compensatedkernel-integrable.md) | 39 | `result-track:4d45da1882658f1ca850e0ad17ff0ed60e182f06885d59cac50ee48bd4240cfd` |
| 5 | `theorem` | [term_integrable](../../../../MeasureAndIntegration/CenteredDigammaKernelNamespaced.lean/declarations/term-integrable.md) | 52 | `result-track:f0225f5cd430c89329df8d31402e8fd15da7646b6697b0d4df4094d599ae1420` |
| 6 | `theorem` | [term_nonneg](../../../../MeasureAndIntegration/CenteredDigammaKernelNamespaced.lean/declarations/term-nonneg.md) | 55 | `result-track:d48b72535a07d46a57a95120561cb8fe47f3857adf8b8c3420576e8cc9991c58` |
| 7 | `theorem` | [hasSum_terms](../../../../MeasureAndIntegration/CenteredDigammaKernelNamespaced.lean/declarations/hassum-terms.md) | 58 | `result-track:9f040d93fd619dcbafe928ca36145a3bd2d3cd3942120c2f6ca0a73d211ebb6b` |
| 8 | `theorem` | [norm_integrals_summable](../../../../MeasureAndIntegration/CenteredDigammaKernelNamespaced.lean/declarations/norm-integrals-summable.md) | 76 | `result-track:0d92e5de34128acd6c32b9745d3c969645ce4915546de827cdeab2ae57999ba7` |
| 9 | `theorem` | [actual_multiplier_integral](../../../../MeasureAndIntegration/CenteredDigammaKernelNamespaced.lean/declarations/actual-multiplier-integral.md) | 85 | `result-track:cda5d3199481ba5b7fe114c8a71ba21fd2b0ed220bcf54d9c6157a4f5406eb04` |
| 10 | `theorem` | [actual_multiplier_integral_explicit](../../../../MeasureAndIntegration/CenteredDigammaKernelNamespaced.lean/declarations/actual-multiplier-integral-explicit.md) | 100 | `result-track:eda48d0e71b402f296589c1b1825a8b126d93fc07ac56117653b3fde0f62a33a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=27a160b9e69f0ecc9b772a65ff287cffb1c8b5b8fbbbd423878d002bd694ce0a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/CenteredDigammaKernel/Variant0353fd3f97078754866f8ea1d427ea361ec2055ea98c916983fcbffaf6b7cede.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/CenteredDigammaKernel/Variant0353fd3f97078754866f8ea1d427ea361ec2055ea98c916983fcbffaf6b7cede.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
