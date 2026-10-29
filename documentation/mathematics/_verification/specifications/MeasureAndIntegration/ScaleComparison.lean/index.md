# Verification target: Scale Comparison

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "265ac85d58c925c8a4202ea06de1c7f5e5dab49d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ScaleComparison/Variantaa2892a9c9c2c4181e44c864767d6c667ea313a820041923dfad2f472c675199.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ScaleComparison.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ScaleComparison.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `265ac85d58c925c8a4202ea06de1c7f5e5dab49d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ScaleComparison/Variantaa2892a9c9c2c4181e44c864767d6c667ea313a820041923dfad2f472c675199.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ScaleComparison/Variantaa2892a9c9c2c4181e44c864767d6c667ea313a820041923dfad2f472c675199.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.HomogeneityDefect` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [scaleComparisonCoefficient](../../../../MeasureAndIntegration/ScaleComparison.lean/declarations/scalecomparisoncoefficient.md) | 14 | `declaration-track:66df1075154ae15afbaf137a682776b2b834b8aee965e410cef66c646bc5d9e5` |
| 2 | `theorem` | [scaleComparisonCoefficient_nonneg](../../../../MeasureAndIntegration/ScaleComparison.lean/declarations/scalecomparisoncoefficient-nonneg.md) | 18 | `result-track:2685728d830ba3c2e92b8063f4f764352c543fc691cbd7018e1077693f7275fa` |
| 3 | `def` | [sqrtWeightedRemainder](../../../../MeasureAndIntegration/ScaleComparison.lean/declarations/sqrtweightedremainder.md) | 25 | `declaration-track:7bd0236bb6b75c168d624dfaf6633555782a98e6be208aecdb9590aa6621157a` |
| 4 | `theorem` | [sqrtWeightedRemainder_hasDerivAt](../../../../MeasureAndIntegration/ScaleComparison.lean/declarations/sqrtweightedremainder-hasderivat.md) | 29 | `result-track:32f5e9706f17c53880142c7008bf8e7f0d4e02e4d2d103d402ad0b236e1251e0` |
| 5 | `theorem` | [sqrtWeightedRemainder_derivative_abs_le](../../../../MeasureAndIntegration/ScaleComparison.lean/declarations/sqrtweightedremainder-derivative-abs-le.md) | 43 | `result-track:07976e5fe587b7d51fe34ca676e8cff5a3684e614305d16e28c62a0e6b3aba49` |
| 6 | `theorem` | [sqrtWeightedRemainder_derivative_intervalIntegrable](../../../../MeasureAndIntegration/ScaleComparison.lean/declarations/sqrtweightedremainder-derivative-intervalintegrable.md) | 55 | `result-track:fb382211846fcfe1aae6988b8c082d6f4f9ee84d2524f64374254cf950637515` |
| 7 | `theorem` | [sqrtWeightedRemainder_integral_derivative](../../../../MeasureAndIntegration/ScaleComparison.lean/declarations/sqrtweightedremainder-integral-derivative.md) | 71 | `result-track:90388d4898c59f05fb58b66297fa4c2f222465ab66d1739b830f0500f468349e` |
| 8 | `theorem` | [sqrtWeightedRemainder_abs_sub_le_log_ratio](../../../../MeasureAndIntegration/ScaleComparison.lean/declarations/sqrtweightedremainder-abs-sub-le-log-ratio.md) | 82 | `result-track:d4e22b448739f6f2a7e9215a2fb4bd3dede6cee2eb898ee4bfd3d15ad1cafcc9` |
| 9 | `theorem` | [real_remainder_scale_comparison](../../../../MeasureAndIntegration/ScaleComparison.lean/declarations/real-remainder-scale-comparison.md) | 109 | `result-track:6171468f23d5f8e6c9577497f052b18744db9988b50cce7940ebe46a1da52a12` |
| 10 | `theorem` | [theta_remainder_scale_comparison](../../../../MeasureAndIntegration/ScaleComparison.lean/declarations/theta-remainder-scale-comparison.md) | 128 | `result-track:92fd5223cc7558e41320102776b1fa01b551c07e1e569d6e7ea6da6a9df3d37a` |
| 11 | `theorem` | [theta_remainder_two_difference_abs_le](../../../../MeasureAndIntegration/ScaleComparison.lean/declarations/theta-remainder-two-difference-abs-le.md) | 141 | `result-track:903480f5df20804f4a858cb04075f43593459c531566b8d65e56f5176be59b24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7cba0766eda0bd064861dfbcbbb9bb618ef4ad35ddca43b7b196f361bd5178ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ScaleComparison/Variantaa2892a9c9c2c4181e44c864767d6c667ea313a820041923dfad2f472c675199.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ScaleComparison/Variantaa2892a9c9c2c4181e44c864767d6c667ea313a820041923dfad2f472c675199.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
