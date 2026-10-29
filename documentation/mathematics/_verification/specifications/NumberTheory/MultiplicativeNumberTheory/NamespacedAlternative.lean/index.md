# Verification target: Namespaced Alternative

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbbe0236fbd01a4f6eb5133a2506a5f9a7a94194",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant28f3fd53a2e6f71a4836ea5275d9fa8fb801a42a3ce549609390f08394b36870.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/MultiplicativeNumberTheory/NamespacedAlternative.lean/index.md) · [Full source](../../../../../NumberTheory/MultiplicativeNumberTheory/NamespacedAlternative.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbbe0236fbd01a4f6eb5133a2506a5f9a7a94194`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant28f3fd53a2e6f71a4836ea5275d9fa8fb801a42a3ce549609390f08394b36870.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant28f3fd53a2e6f71a4836ea5275d9fa8fb801a42a3ce549609390f08394b36870.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTypeTwoLogBlocks` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cellSlack](../../../../../NumberTheory/MultiplicativeNumberTheory/NamespacedAlternative.lean/declarations/cellslack.md) | 32 | `declaration-track:049a9ccb3d30049ad339192c261022d4042dec83ae5a8481afb4632f7b0f071e` |
| 2 | `def` | [edgeBlockBudget](../../../../../NumberTheory/MultiplicativeNumberTheory/NamespacedAlternative.lean/declarations/edgeblockbudget.md) | 35 | `declaration-track:c28ef47cc780aeed6681a50a4d5cebd54d5ee0c9048fcd323f520b1b65abd744` |
| 3 | `def` | [densityBlockBudget](../../../../../NumberTheory/MultiplicativeNumberTheory/NamespacedAlternative.lean/declarations/densityblockbudget.md) | 39 | `declaration-track:238f47a0c95fe0e88d0d97bddd3819c60de34baefc1a44fa2eb9f237c8be174c` |
| 4 | `def` | [SquareRootLogBlockEstimate](../../../../../NumberTheory/MultiplicativeNumberTheory/NamespacedAlternative.lean/declarations/squarerootlogblockestimate.md) | 43 | `declaration-track:59e6f290d9dbc60dbfaf849413cf09354e0ed02a7593971758e56757185fc015` |
| 5 | `theorem` | [cellSlack_bounds](../../../../../NumberTheory/MultiplicativeNumberTheory/NamespacedAlternative.lean/declarations/cellslack-bounds.md) | 49 | `result-track:d88c73bee5845410cbc6603e2ebbe5d5233a1919f72fe3cf28ed4dfff197efb1` |
| 6 | `theorem` | [edgePolynomial_mono](../../../../../NumberTheory/MultiplicativeNumberTheory/NamespacedAlternative.lean/declarations/edgepolynomial-mono.md) | 61 | `result-track:2b520cf7b5a951c0c1fecdff5bd9bb58fbdeec6982a51bfaf1ff8063e0274021` |
| 7 | `theorem` | [pairSlack_le_cellSlack](../../../../../NumberTheory/MultiplicativeNumberTheory/NamespacedAlternative.lean/declarations/pairslack-le-cellslack.md) | 68 | `result-track:57e15144f2841fafc3dfc24e1e3395eaf7485cf7e45153313b4ff51e753a6700` |
| 8 | `theorem` | [pair_correlation_abs_le_cell](../../../../../NumberTheory/MultiplicativeNumberTheory/NamespacedAlternative.lean/declarations/pair-correlation-abs-le-cell.md) | 93 | `result-track:4f2977e265c564e14b072b454fe75845c8fba337c3475a4fc17ac52b994a2faf` |
| 9 | `theorem` | [densityBlockBudget_le](../../../../../NumberTheory/MultiplicativeNumberTheory/NamespacedAlternative.lean/declarations/densityblockbudget-le.md) | 109 | `result-track:ee8d65bd44422a0602dbf8a66dea5dc142eebd3539c2f4099c3e689447534886` |
| 10 | `theorem` | [edgePolynomial_two_mul_le](../../../../../NumberTheory/MultiplicativeNumberTheory/NamespacedAlternative.lean/declarations/edgepolynomial-two-mul-le.md) | 124 | `result-track:dbc284dab4e01ccea036f09e36496715398359640a4b5d3dcf4384a93883fa72` |
| 11 | `theorem` | [logCells_card_le](../../../../../NumberTheory/MultiplicativeNumberTheory/NamespacedAlternative.lean/declarations/logcells-card-le.md) | 134 | `result-track:09cb18b5fd9007a3151b5a0f148fffd962880a3521b0dded0f3a715c3575cc99` |
| 12 | `theorem` | [edgeBlockBudget_le](../../../../../NumberTheory/MultiplicativeNumberTheory/NamespacedAlternative.lean/declarations/edgeblockbudget-le.md) | 152 | `result-track:ca3298b1e34145007a41a61e503e0df071a3baed0a7dc3c215b1349237515a1f` |
| 13 | `theorem` | [edgeBlockBudget_ge](../../../../../NumberTheory/MultiplicativeNumberTheory/NamespacedAlternative.lean/declarations/edgeblockbudget-ge.md) | 166 | `result-track:aaa013dbdb019eed7cb073df1ffeeef59d0e1f63140e973492cacf5b9416f58d` |
| 14 | `theorem` | [typeTwoOffDiagonal_le_of_blocks](../../../../../NumberTheory/MultiplicativeNumberTheory/NamespacedAlternative.lean/declarations/typetwooffdiagonal-le-of-blocks.md) | 217 | `result-track:2b8d316e081d48b8b02e5b62086927a3e41abbc66af837d18f569e96c9df461c` |
| 15 | `theorem` | [mertensResidual_le_of_blocks](../../../../../NumberTheory/MultiplicativeNumberTheory/NamespacedAlternative.lean/declarations/mertensresidual-le-of-blocks.md) | 227 | `result-track:fd708b64387fab75617293a4f667a7e6ed342cf52ebcf5b3636aa4d4f3979053` |
| 16 | `theorem` | [mertensResidual_le_coarse_block_budget](../../../../../NumberTheory/MultiplicativeNumberTheory/NamespacedAlternative.lean/declarations/mertensresidual-le-coarse-block-budget.md) | 236 | `result-track:78dd8d603214d5ef7acbf1e501fe682f1b7a90f7a56693c8230c3aa83356bbe2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e01cbefed16a1e0229aa4f485deebd979f6f04459f34324caf77dae87e46ecdd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant28f3fd53a2e6f71a4836ea5275d9fa8fb801a42a3ce549609390f08394b36870.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant28f3fd53a2e6f71a4836ea5275d9fa8fb801a42a3ce549609390f08394b36870.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
