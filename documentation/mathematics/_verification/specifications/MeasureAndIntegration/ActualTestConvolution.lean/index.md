# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceSmoothing.ActualTestConvolution

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd4465c52a5d29306d07e5093821a1dd85bc5e58",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceSmoothing/ActualTestConvolution.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ActualTestConvolution.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ActualTestConvolution.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd4465c52a5d29306d07e5093821a1dd85bc5e58`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceSmoothing/ActualTestConvolution.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceSmoothing/ActualTestConvolution.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSideTargets` — import line 30; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.BumpFunction.Convolution` — import line 31; external provider; requires a separately pinned dependency.
- [`GRWTSK.Analysis.RealAnalysis.Integration.SourceSmoothing.NormalizedBumpKernel`](../../../../MeasureAndIntegration/NormalizedBumpKernel.lean/index.md) — import line 32; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [smoothedTest](../../../../MeasureAndIntegration/ActualTestConvolution.lean/declarations/smoothedtest.md) | 53 | `declaration-track:baf185495c7ad70674d32020def50e8d8490d2b5c371ee180b771ee088b19880` |
| 2 | `theorem` | [smoothedTest_eq_integral](../../../../MeasureAndIntegration/ActualTestConvolution.lean/declarations/smoothedtest-eq-integral.md) | 57 | `result-track:e77c7688f16fe71e8ff0d87401cbe7d1ba92f57301ce82239bd5e169a608db16` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d2f2ec0156479dac6ca7fed1689dd3a9d2916cb4a767b3ae56b10f8242178725 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceSmoothing/ActualTestConvolution.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SourceSmoothing/ActualTestConvolution.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
