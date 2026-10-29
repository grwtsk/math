# Verification target: Source Fractional Quadrature Namespaced Positive Samples Tsum Eq Sum

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e21b9173cf8b73758344bf3dfec97fdd19e4aea",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant566d4029f4d6c40aa382051b7ddbaf153c2bacd14db223fd69d5d15df611ce47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceFractionalQuadratureNamespacedPositiveSamplesTsumEqSum.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceFractionalQuadratureNamespacedPositiveSamplesTsumEqSum.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e21b9173cf8b73758344bf3dfec97fdd19e4aea`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant566d4029f4d6c40aa382051b7ddbaf153c2bacd14db223fd69d5d15df611ce47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant566d4029f4d6c40aa382051b7ddbaf153c2bacd14db223fd69d5d15df611ce47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTwoMomentSampling` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Support` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fract_eq_sub_of_unit_cell](../../../../MeasureAndIntegration/SourceFractionalQuadratureNamespacedPositiveSamplesTsumEqSum.lean/declarations/fract-eq-sub-of-unit-cell.md) | 34 | `result-track:af7c920741effa8ff5b6e86cdc774941c161587dd4b3dad595a743231fb56197` |
| 2 | `theorem` | [fract_deriv_intervalIntegrable](../../../../MeasureAndIntegration/SourceFractionalQuadratureNamespacedPositiveSamplesTsumEqSum.lean/declarations/fract-deriv-intervalintegrable.md) | 41 | `result-track:965df31e5ad8eb624ad97950d733040845fe8b3228b366adb93b54358ae76a5c` |
| 3 | `theorem` | [unit_right_sampling_identity](../../../../MeasureAndIntegration/SourceFractionalQuadratureNamespacedPositiveSamplesTsumEqSum.lean/declarations/unit-right-sampling-identity.md) | 55 | `result-track:6a470374694dfa6d0140156a5e067a6e6eb9494b618db199fb5bdf8c2731ad62` |
| 4 | `theorem` | [finite_quadrature](../../../../MeasureAndIntegration/SourceFractionalQuadratureNamespacedPositiveSamplesTsumEqSum.lean/declarations/finite-quadrature.md) | 77 | `result-track:cde094e4a961f88e1f26ab733c8cfd4036802dcc9c9ff8cc7edf75bd537dcb5b` |
| 5 | `theorem` | [finite_quadrature_of_endpoint_zero](../../../../MeasureAndIntegration/SourceFractionalQuadratureNamespacedPositiveSamplesTsumEqSum.lean/declarations/finite-quadrature-of-endpoint-zero.md) | 100 | `result-track:6fa1fe3eb11e1292f2badc69b33dd3f40977f771fc91e308a67b59030314d7c8` |
| 6 | `theorem` | [positive_axis_quadrature](../../../../MeasureAndIntegration/SourceFractionalQuadratureNamespacedPositiveSamplesTsumEqSum.lean/declarations/positive-axis-quadrature.md) | 107 | `result-track:e32922cfc38c0b27ae0318bc2af8e1217b7dbcbb85bbe868b70b4e23cfab935e` |
| 7 | `theorem` | [positive_samples_tsum_eq_sum](../../../../MeasureAndIntegration/SourceFractionalQuadratureNamespacedPositiveSamplesTsumEqSum.lean/declarations/positive-samples-tsum-eq-sum.md) | 143 | `result-track:c2920f7a7af59350029188bb05534d6f288fed6915ebd34969c133dcb53ea474` |
| 8 | `theorem` | [positive_axis_tsum_quadrature](../../../../MeasureAndIntegration/SourceFractionalQuadratureNamespacedPositiveSamplesTsumEqSum.lean/declarations/positive-axis-tsum-quadrature.md) | 161 | `result-track:c258e1dec773e84c089403882af0e48afbae339ff141d93ffb80054d338e16f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2703f1b54ada06db3743dd83b8f9a1679b5454639b8d7da78315e2a9c0601ed1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant566d4029f4d6c40aa382051b7ddbaf153c2bacd14db223fd69d5d15df611ce47.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant566d4029f4d6c40aa382051b7ddbaf153c2bacd14db223fd69d5d15df611ce47.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
