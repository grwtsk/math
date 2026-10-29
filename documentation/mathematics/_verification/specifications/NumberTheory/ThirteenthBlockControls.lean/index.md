# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.ThirteenthBlockControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a72f7124d352e40e672d258f433181a6adeda38",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/ThirteenthBlockControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/ThirteenthBlockControls.lean/index.md) · [Full source](../../../../NumberTheory/ThirteenthBlockControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a72f7124d352e40e672d258f433181a6adeda38`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/ThirteenthBlockControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/ThirteenthBlockControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonThirteenBlocksAndTerminal`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonThirteenBlocksAndTerminal.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [base_boundaries](../../../../NumberTheory/ThirteenthBlockControls.lean/declarations/base-boundaries.md) | 13 | `result-track:693cb90b2e5302ad39a0a04c469ce31a4d382c512679b0663e159bb106585088` |
| 2 | `theorem` | [prefix_boundaries](../../../../NumberTheory/ThirteenthBlockControls.lean/declarations/prefix-boundaries.md) | 17 | `result-track:ab6d6f77bc8cbf2a6bff5e74a9fc18903ba6893ca50568fae944df91c93ae82d` |
| 3 | `theorem` | [thirteenth_block_endpoints](../../../../NumberTheory/ThirteenthBlockControls.lean/declarations/thirteenth-block-endpoints.md) | 21 | `result-track:969d279262371801c404227223b3e16f629171d7cb0f9dd212ddc427459300cc` |
| 4 | `theorem` | [adjacent_positions_excluded](../../../../NumberTheory/ThirteenthBlockControls.lean/declarations/adjacent-positions-excluded.md) | 26 | `result-track:525bdceb0675c82b88e3b240b18cb79e4d8b6be3d07219762555dfe468b7c603` |
| 5 | `theorem` | [logarithm_reduction_uniform](../../../../NumberTheory/ThirteenthBlockControls.lean/declarations/logarithm-reduction-uniform.md) | 31 | `result-track:c9dd86e7819a5e2a84dc0dcc7153a62f1ff937e8cbca68308de8571f78322848` |
| 6 | `theorem` | [terminal_not_thirteenth_block](../../../../NumberTheory/ThirteenthBlockControls.lean/declarations/terminal-not-thirteenth-block.md) | 35 | `result-track:01faba195d17adbf0c5e41f2d458a2dd2835ad78009276864a1d0e0e923fd107` |
| 7 | `theorem` | [first_unfilled_preserved](../../../../NumberTheory/ThirteenthBlockControls.lean/declarations/first-unfilled-preserved.md) | 40 | `result-track:8a9ed34948bc79bb2b57222c196b1fa4972d4360f9fbfc13706e7b945d69e044` |
| 8 | `theorem` | [terminal_is_copied_exactly](../../../../NumberTheory/ThirteenthBlockControls.lean/declarations/terminal-is-copied-exactly.md) | 45 | `result-track:69068a14da015982cf293563b7b4ca8008832b38d5b3b65a68f47cace9ee13a4` |
| 9 | `theorem` | [remaining_label_boundaries](../../../../NumberTheory/ThirteenthBlockControls.lean/declarations/remaining-label-boundaries.md) | 49 | `result-track:e56d28051e08549ba4c2ab10ffe4c50b0e796077e79034f966830a8cc9baefdd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9dd1aa872ef677f5757dba1c962eec942f7f00b11020fdf25d5bc213929fdb9a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Chebyshev/Checks/ThirteenthBlockControls.lean","GRWTSK/_verification/specifications/NumberTheory/Chebyshev/Checks/ThirteenthBlockControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
