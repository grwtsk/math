# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ScrewQuarticPathControl

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff188e872ee3fd2417f791bd39dccbbbf1e1ad5b",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ScrewQuarticPathControl.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScrewQuarticPathControl.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScrewQuarticPathControl.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff188e872ee3fd2417f791bd39dccbbbf1e1ad5b`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ScrewQuarticPathControl.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ScrewQuarticPathControl.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.Polynomial.ConjugateQuartic`](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PolynomialConjugateQuartic.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Combinatorics.GraphTheory.CertifiedPathOptimization`](../../../../../Combinatorics/GraphTheory/CertifiedPathOptimization.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ScrewKernelRefinement`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScrewKernelRefinement.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Tactic.Linarith` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quarticPenalty](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScrewQuarticPathControl.lean/declarations/quarticpenalty.md) | 37 | `declaration-track:612da4ecc89614f3bc72fddf82073a048a31ea30db6237df1d4d21854ecb8990` |
| 2 | `theorem` | [quarticPenalty_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScrewQuarticPathControl.lean/declarations/quarticpenalty-eq.md) | 40 | `result-track:78e7e0d2d4061370f7ec8e3e5bda1f52c98f118d1b5941da990980a999a2ba12` |
| 3 | `theorem` | [quarticPenalty_nonnegative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScrewQuarticPathControl.lean/declarations/quarticpenalty-nonnegative.md) | 47 | `result-track:3dd445bc2a35b4cfa2a6f8a24b8d357c53bfb7f354a6da2e95348ad277de985e` |
| 4 | `theorem` | [quarticPenalty_positive](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScrewQuarticPathControl.lean/declarations/quarticpenalty-positive.md) | 52 | `result-track:4ed7f5f01f188fce4c9d639e8b0be30317b51a4fa70d99af46e24d667e35319f` |
| 5 | `theorem` | [quarticPenalty_eq_zero_iff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScrewQuarticPathControl.lean/declarations/quarticpenalty-eq-zero-iff.md) | 57 | `result-track:07e7b823c0448883c8d7d987f18ba7c912f00af11bf49a49c7c1abf67cbaa111` |
| 6 | `structure` | [ScrewQuarticObjective](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScrewQuarticPathControl.lean/declarations/screwquarticobjective.md) | 70 | `declaration-track:0bd8bd90d79003a44f20dc10d9c97686971fd45b1b0c7c4da8762c3c5dab1e9f` |
| 7 | `def` | [ScrewQuarticObjective.cost](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScrewQuarticPathControl.lean/declarations/screwquarticobjective-cost.md) | 77 | `declaration-track:4cc2ebce35f8c56e8103b93540dab10bdc0c1759329428e44fc700f415f390e7` |
| 8 | `def` | [ScrewQuarticObjective.toObjective](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScrewQuarticPathControl.lean/declarations/screwquarticobjective-toobjective.md) | 83 | `declaration-track:eabbc0628f831a9ff8dd55d64f44b780b7e67019a761d2d3ab32da7c00bdb996` |
| 9 | `theorem` | [ScrewQuarticObjective.cost_nonnegative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScrewQuarticPathControl.lean/declarations/screwquarticobjective-cost-nonnegative.md) | 87 | `result-track:4681c6f604fe1b4e00d74d753813e84a481c4eb597edc5d636a862df286b7d53` |
| 10 | `structure` | [ReedSolomonScrewNode](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScrewQuarticPathControl.lean/declarations/reedsolomonscrewnode.md) | 96 | `declaration-track:526abd75086040c94493c2e6009f9568f7835fcf8ef5887d643b82cd089ea8c7` |
| 11 | `def` | [reedSolomonNodeObjective](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScrewQuarticPathControl.lean/declarations/reedsolomonnodeobjective.md) | 104 | `declaration-track:a506c7d31c774b5294a62aeb4838de4e777aa6c64a99028149cf2fee4d1c2aef` |
| 12 | `def` | [positiveRiemannSiegelAspect](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScrewQuarticPathControl.lean/declarations/positiveriemannsiegelaspect.md) | 114 | `declaration-track:8a206931a3e1036db3a855d9bcc8265bfcb764b1f95284348ac68de9d2b65db8` |
| 13 | `theorem` | [positiveRiemannSiegelAspect_accepts](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScrewQuarticPathControl.lean/declarations/positiveriemannsiegelaspect-accepts.md) | 119 | `result-track:04263d1f48a536b8b672bdd2712c5b508fc7be9430eb8bae3c3435366c45ca39` |
| 14 | `theorem` | [optimize_preserves_aspects_and_improves](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScrewQuarticPathControl.lean/declarations/optimize-preserves-aspects-and-improves.md) | 127 | `result-track:d36e2dd61acdd3807646fbdcaad83107682c8253513128b08c10e78676b3e0bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c2ba804c482d61e8e64c53f5c6d86e9c42393854bd4a5ded6271e553513fee37 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/ScrewQuarticPathControl.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/ScrewQuarticPathControl.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
