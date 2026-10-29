# Verification target: Landau Positivity Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fdf91b24f980e077f93f0ccb3c85bf3e4aa89bd",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LandauPositivity/Variant60e00d3323a283affc0b7702c33b026a5fa9b053c2667de29706549d66daad1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/LandauPositivityNamespaced.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/LandauPositivityNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fdf91b24f980e077f93f0ccb3c85bf3e4aa89bd`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LandauPositivity/Variant60e00d3323a283affc0b7702c33b026a5fa9b053c2667de29706549d66daad1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LandauPositivity/Variant60e00d3323a283affc0b7702c33b026a5fa9b053c2667de29706549d66daad1b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Moments.MGFAnalytic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.TaylorSeries` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exponentialTerm](../../../../ProbabilityTheoryAndStochasticProcesses/LandauPositivityNamespaced.lean/declarations/exponentialterm.md) | 22 | `declaration-track:62650857f3746647604161d947047d78b50d21c15158672b3ff0795b3f53f6ad` |
| 2 | `lemma` | [exponentialTerm_hasSum](../../../../ProbabilityTheoryAndStochasticProcesses/LandauPositivityNamespaced.lean/declarations/exponentialterm-hassum.md) | 26 | `result-track:5791138389255e19330d4149823ce33cd3421f7a18f6e5e2b584a266447144b8` |
| 3 | `theorem` | [integrable_exp_add_of_summable_moments](../../../../ProbabilityTheoryAndStochasticProcesses/LandauPositivityNamespaced.lean/declarations/integrable-exp-add-of-summable-moments.md) | 42 | `result-track:3478cb01da5100ea38b11d67b4cbcac12bff61faca1449d62259f74d94947f51` |
| 4 | `theorem` | [integrable_exp_add_of_summable_mgf_moments](../../../../ProbabilityTheoryAndStochasticProcesses/LandauPositivityNamespaced.lean/declarations/integrable-exp-add-of-summable-mgf-moments.md) | 81 | `result-track:08c261a8d69f923b6affdd385e8b64c50820b8dfe434f8966743eebccdee53d2` |
| 5 | `lemma` | [iteratedDeriv_complexMGF_real](../../../../ProbabilityTheoryAndStochasticProcesses/LandauPositivityNamespaced.lean/declarations/iteratedderiv-complexmgf-real.md) | 90 | `result-track:a503cf2142324b95b5ce1422c6c617846e1ac0c4fe39f12389b2e1f8a866a63a` |
| 6 | `theorem` | [integrable_exp_add_of_holomorphic_extension](../../../../ProbabilityTheoryAndStochasticProcesses/LandauPositivityNamespaced.lean/declarations/integrable-exp-add-of-holomorphic-extension.md) | 100 | `result-track:15205896fcf970f23f85a38924c56f08c83e7ac6897e244682015c7478eee38a` |
| 7 | `theorem` | [not_analyticAt_of_finite_convergence_boundary](../../../../ProbabilityTheoryAndStochasticProcesses/LandauPositivityNamespaced.lean/declarations/not-analyticat-of-finite-convergence-boundary.md) | 131 | `result-track:80367a84cdc8283dd2b13f35bfd8ce41057ebf3153d11c8deebc4530921a3ce1` |
| 8 | `theorem` | [not_analyticAt_laplace_of_finite_abscissa](../../../../ProbabilityTheoryAndStochasticProcesses/LandauPositivityNamespaced.lean/declarations/not-analyticat-laplace-of-finite-abscissa.md) | 180 | `result-track:2f18d24f4c20caf1e902c6f400585faa21566f16b76a9b6dacf448ebdcf7a8b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3f7da38d2c8d877606ae372fa6ea9529484dafae2f677f11493761aba5daa981 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/LandauPositivity/Variant60e00d3323a283affc0b7702c33b026a5fa9b053c2667de29706549d66daad1b.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/LandauPositivity/Variant60e00d3323a283affc0b7702c33b026a5fa9b053c2667de29706549d66daad1b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
