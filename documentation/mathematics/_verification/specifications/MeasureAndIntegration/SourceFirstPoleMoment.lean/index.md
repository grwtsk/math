# Verification target: Source First Pole Moment

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20cd0fb6a9cbcb5385757995f36ef86f587e0095",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFirstPoleMoment/Variant195d1ee82d2c56acf83578fd7b79bb1948427eccf9b91a27fee9183c1d09c869.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceFirstPoleMoment.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceFirstPoleMoment.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20cd0fb6a9cbcb5385757995f36ef86f587e0095`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFirstPoleMoment/Variant195d1ee82d2c56acf83578fd7b79bb1948427eccf9b91a27fee9183c1d09c869.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceFirstPoleMoment/Variant195d1ee82d2c56acf83578fd7b79bb1948427eccf9b91a27fee9183c1d09c869.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [first_convolution_moment](../../../../MeasureAndIntegration/SourceFirstPoleMoment.lean/declarations/first-convolution-moment.md) | 22 | `result-track:3f4b4e9036fe3cdcbdf1ce0523e09791dadcbe84c8e0d6805fcf967f2f5bc864` |
| 2 | `theorem` | [actual_first_pole_moment_zero](../../../../MeasureAndIntegration/SourceFirstPoleMoment.lean/declarations/actual-first-pole-moment-zero.md) | 60 | `result-track:f9253fb2630df30a2f8ae56cdf4c2aa8f3dd06dc82814d5e54903d108bdefd96` |
| 3 | `theorem` | [actual_quadratic_derivative_background_zero](../../../../MeasureAndIntegration/SourceFirstPoleMoment.lean/declarations/actual-quadratic-derivative-background-zero.md) | 95 | `result-track:863a5ee0355237ce58d7da8c23b1be455d19b3582e8ff2bb243da2e4181b9bd5` |
| 4 | `def` | [boundaryWorkKernel](../../../../MeasureAndIntegration/SourceFirstPoleMoment.lean/declarations/boundaryworkkernel.md) | 143 | `declaration-track:3e48a62611491afa9e87dff06ee3a7df3eb2274b59b819624ddb262d1dda6709` |
| 5 | `def` | [boundaryCorrelation](../../../../MeasureAndIntegration/SourceFirstPoleMoment.lean/declarations/boundarycorrelation.md) | 146 | `declaration-track:737d5014e0e864de5635a97320ed5cd27d8695db59678e9f68a6b720e83af540` |
| 6 | `theorem` | [boundaryCorrelation_deriv](../../../../MeasureAndIntegration/SourceFirstPoleMoment.lean/declarations/boundarycorrelation-deriv.md) | 149 | `result-track:d4192b93ec24a3e8531387685e7b4b949f90d2c7cc17a21712b92922bd34606a` |
| 7 | `theorem` | [boundaryWorkKernel_eq_source](../../../../MeasureAndIntegration/SourceFirstPoleMoment.lean/declarations/boundaryworkkernel-eq-source.md) | 160 | `result-track:cefd8b97857c902c55c85a26a8c89790d311f04899a11ae7b27881d439e354be` |
| 8 | `theorem` | [boundaryWorkKernel_eq_correlation](../../../../MeasureAndIntegration/SourceFirstPoleMoment.lean/declarations/boundaryworkkernel-eq-correlation.md) | 176 | `result-track:3d03aa1e31dc804903eeea8b1efe28c5b0f8aac6cd309c34bcc6e29fab53c70a` |
| 9 | `theorem` | [boundary_quadratic_background_zero](../../../../MeasureAndIntegration/SourceFirstPoleMoment.lean/declarations/boundary-quadratic-background-zero.md) | 184 | `result-track:1e665f223201d1fcc1b4aee9d41252aa45f19fe925f40b673370a115e4214949` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf44a7c6494f97109d299592066366ab681351cc5d3a6386e78e72945c85e83c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFirstPoleMoment/Variant195d1ee82d2c56acf83578fd7b79bb1948427eccf9b91a27fee9183c1d09c869.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/SourceFirstPoleMoment/Variant195d1ee82d2c56acf83578fd7b79bb1948427eccf9b91a27fee9183c1d09c869.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
