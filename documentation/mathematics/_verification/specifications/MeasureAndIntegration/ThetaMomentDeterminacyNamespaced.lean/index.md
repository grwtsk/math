# Verification target: Theta Moment Determinacy Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e8ff1dd0dd4bf609f551a91ccd3bf2611000fda",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentDeterminacy/Variant53d3bfc306c8a6d7e4353c4cad4e98fdd33a4b6d08e0f3842ab97c114d09456d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ThetaMomentDeterminacyNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ThetaMomentDeterminacyNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e8ff1dd0dd4bf609f551a91ccd3bf2611000fda`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentDeterminacy/Variant53d3bfc306c8a6d7e4353c4cad4e98fdd33a4b6d08e0f3842ab97c114d09456d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ThetaMomentDeterminacy/Variant53d3bfc306c8a6d7e4353c4cad4e98fdd33a4b6d08e0f3842ab97c114d09456d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ThetaMomentMeasure` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Moments.MGFAnalytic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Series` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Uniqueness` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integrable_cosh_half_of_even_factorial_bound](../../../../MeasureAndIntegration/ThetaMomentDeterminacyNamespaced.lean/declarations/integrable-cosh-half-of-even-factorial-bound.md) | 35 | `result-track:2f60fb8bbbaf475514d9f03cc8027bf9e7fc18424b5f2f33d56f2504f937b4aa` |
| 2 | `theorem` | [integrable_exp_abs_half_of_even_factorial_bound](../../../../MeasureAndIntegration/ThetaMomentDeterminacyNamespaced.lean/declarations/integrable-exp-abs-half-of-even-factorial-bound.md) | 90 | `result-track:12aa8f4401ad2e41b3d0b16d8431edb754a58804b02b481fcb2f6630b563ee63` |
| 3 | `theorem` | [half_interval_subset_interior_integrableExpSet](../../../../MeasureAndIntegration/ThetaMomentDeterminacyNamespaced.lean/declarations/half-interval-subset-interior-integrableexpset.md) | 106 | `result-track:922fcfbdba542d97c55e0cf60f736804a42db43f41f3be2df6b1a9efe4999f78` |
| 4 | `theorem` | [measure_eq_of_moments_of_exp_abs_half](../../../../MeasureAndIntegration/ThetaMomentDeterminacyNamespaced.lean/declarations/measure-eq-of-moments-of-exp-abs-half.md) | 125 | `result-track:e99658c711ae47c72f428e4fa2a82c68eaf3982e87083f654f49545cefa12006` |
| 5 | `theorem` | [thetaMomentMeasure_determinate](../../../../MeasureAndIntegration/ThetaMomentDeterminacyNamespaced.lean/declarations/thetamomentmeasure-determinate.md) | 170 | `result-track:36c4c6de2d421433c24f8e546c094159ccf754ba4eca4ddc3cab69e7b0b7de20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c925b20faceb007558aeb023eff4a024401c814792673e7d434ed5d43d682ff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentDeterminacy/Variant53d3bfc306c8a6d7e4353c4cad4e98fdd33a4b6d08e0f3842ab97c114d09456d.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ThetaMomentDeterminacy/Variant53d3bfc306c8a6d7e4353c4cad4e98fdd33a4b6d08e0f3842ab97c114d09456d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
