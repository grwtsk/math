# Verification target: Cochain Reconstruction Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f2e1928c15398fc8a531bcc90667c31999b112d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/CochainReconstruction/Variantb71c4466f7afb827e8987eef02c0c0463ce9bc7e12151a33766cfd51d86debad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/CochainReconstructionNamespaced.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/CochainReconstructionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f2e1928c15398fc8a531bcc90667c31999b112d`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/CochainReconstruction/Variantb71c4466f7afb827e8987eef02c0c0463ce9bc7e12151a33766cfd51d86debad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/CochainReconstruction/Variantb71c4466f7afb827e8987eef02c0c0463ce9bc7e12151a33766cfd51d86debad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.BoundaryCochain` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [insertPath](../../../../ProbabilityTheoryAndStochasticProcesses/CochainReconstructionNamespaced.lean/declarations/insertpath.md) | 21 | `declaration-track:59bf292f9392f2ead3ac70aa1cf7d04c70eb22ef50e2e2dbc5c6422093a18f58` |
| 2 | `def` | [capacityPathSum](../../../../ProbabilityTheoryAndStochasticProcesses/CochainReconstructionNamespaced.lean/declarations/capacitypathsum.md) | 29 | `declaration-track:373370020bc23f1bf3a0818c33084cda1e541b4826ab589abe6b789e9747207b` |
| 3 | `theorem` | [capacityPathSum_eq_terminal_sub_initial](../../../../ProbabilityTheoryAndStochasticProcesses/CochainReconstructionNamespaced.lean/declarations/capacitypathsum-eq-terminal-sub-initial.md) | 40 | `result-track:0218295e4c65a7c83bb8e6eaf4dfa47f12c14fc7c88d3f1cf088fd90fdb2047e` |
| 4 | `theorem` | [capacity_path_sum_independent](../../../../ProbabilityTheoryAndStochasticProcesses/CochainReconstructionNamespaced.lean/declarations/capacity-path-sum-independent.md) | 68 | `result-track:4da4dfe70438308a8e9eae36a873aa013e2c7d1af15ef5c161072436e7ef1bfe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1e33e95ea46e8e81195e1a7ea766f76f630615ca5dd0d0366da7e109ff4a0bb7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/CochainReconstruction/Variantb71c4466f7afb827e8987eef02c0c0463ce9bc7e12151a33766cfd51d86debad.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/CochainReconstruction/Variantb71c4466f7afb827e8987eef02c0c0463ce9bc7e12151a33766cfd51d86debad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
