# Verification target: Boundary Cochain Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "589968fbdeb690cf18e0db9156cbddd328d08f12",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BoundaryCochain/Variantc64dd349b6880b001d86a4ec9e6752cd7d2402f6c1a3fb124f39d3dfe059bc34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/BoundaryCochainNamespaced.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/BoundaryCochainNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `589968fbdeb690cf18e0db9156cbddd328d08f12`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BoundaryCochain/Variantc64dd349b6880b001d86a4ec9e6752cd7d2402f6c1a3fb124f39d3dfe059bc34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BoundaryCochain/Variantc64dd349b6880b001d86a4ec9e6752cd7d2402f6c1a3fb124f39d3dfe059bc34.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.PositiveCapacity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [insertList](../../../../ProbabilityTheoryAndStochasticProcesses/BoundaryCochainNamespaced.lean/declarations/insertlist.md) | 23 | `declaration-track:9591eed6fac61caaf530d2b1d1f7160d361db83e3c95a9c828216cff413dd439` |
| 2 | `def` | [boundaryPathSum](../../../../ProbabilityTheoryAndStochasticProcesses/BoundaryCochainNamespaced.lean/declarations/boundarypathsum.md) | 31 | `declaration-track:4235fc8467842e97ef7ca41e3bcb6aef0b7c3628ab2155e794f55a24b66ab895` |
| 3 | `theorem` | [increment_square_closed](../../../../ProbabilityTheoryAndStochasticProcesses/BoundaryCochainNamespaced.lean/declarations/increment-square-closed.md) | 44 | `result-track:b098e9ee582c537d0afd6ab29a8c87c56324952537688a999934b5e632cdd3ba` |
| 4 | `def` | [boundaryCurvature](../../../../ProbabilityTheoryAndStochasticProcesses/BoundaryCochainNamespaced.lean/declarations/boundarycurvature.md) | 60 | `declaration-track:a9773a9cf713ef075b8cb2039c9f33825fa253a456b9835fc29168e1f54d960d` |
| 5 | `theorem` | [boundaryCurvature_eq_zero](../../../../ProbabilityTheoryAndStochasticProcesses/BoundaryCochainNamespaced.lean/declarations/boundarycurvature-eq-zero.md) | 74 | `result-track:b3c942300c87fc169dca0267b66cd0133d30d8ceeb541d9b8540dfb33730e7c6` |
| 6 | `theorem` | [boundaryPathSum_telescope](../../../../ProbabilityTheoryAndStochasticProcesses/BoundaryCochainNamespaced.lean/declarations/boundarypathsum-telescope.md) | 89 | `result-track:fef32b2a1887dc0a614d5ddd6efe4ce996789058fd35caf990d61b55d2920281` |
| 7 | `theorem` | [boundaryPathSum_independent](../../../../ProbabilityTheoryAndStochasticProcesses/BoundaryCochainNamespaced.lean/declarations/boundarypathsum-independent.md) | 109 | `result-track:4f7cfe1b30986628373c66521cb0c351fcf8293b707aa99d33041c1db7d55f4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3a959bf32729480893b76b1985794a9a0f17c31617bef72f618d71f997cc3b2a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BoundaryCochain/Variantc64dd349b6880b001d86a4ec9e6752cd7d2402f6c1a3fb124f39d3dfe059bc34.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/BoundaryCochain/Variantc64dd349b6880b001d86a4ec9e6752cd7d2402f6c1a3fb124f39d3dfe059bc34.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
