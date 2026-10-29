# Verification target: Results Alternative7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36f705aace68ab77e36f01845f8a95a783436e92",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta579864c309cbafd89fa027119520c604251ae130db8efa68ea4561b12513cb3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/MultiplicativeNumberTheory/ResultsAlternative7.lean/index.md) · [Full source](../../../../../NumberTheory/MultiplicativeNumberTheory/ResultsAlternative7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36f705aace68ab77e36f01845f8a95a783436e92`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta579864c309cbafd89fa027119520c604251ae130db8efa68ea4561b12513cb3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta579864c309cbafd89fa027119520c604251ae130db8efa68ea4561b12513cb3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTypeTwoLogBlocks` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cellSlack](../../../../../NumberTheory/MultiplicativeNumberTheory/ResultsAlternative7.lean/declarations/cellslack.md) | 24 | `declaration-track:262f5940af3dbf1776b2faa76b54f5ba38bcdfb5eb9b95141f6431fc76a2a076` |
| 2 | `def` | [edgeBlockBudget](../../../../../NumberTheory/MultiplicativeNumberTheory/ResultsAlternative7.lean/declarations/edgeblockbudget.md) | 27 | `declaration-track:f486f216a4196f64ce59889542e0ed2e98972def2c13865ca96b91d481eec73f` |
| 3 | `def` | [densityBlockBudget](../../../../../NumberTheory/MultiplicativeNumberTheory/ResultsAlternative7.lean/declarations/densityblockbudget.md) | 31 | `declaration-track:e9c12470fd4737e4d0646fa31b34f7065d2ea03a6a25f2ec84dcf3adb0b6cf1a` |
| 4 | `def` | [SquareRootLogBlockEstimate](../../../../../NumberTheory/MultiplicativeNumberTheory/ResultsAlternative7.lean/declarations/squarerootlogblockestimate.md) | 35 | `declaration-track:6e2cf915ea6a49d7a6892a34a76d37631ecdedfefd0b46a439e8ec8cc008467a` |
| 5 | `theorem` | [cellSlack_bounds](../../../../../NumberTheory/MultiplicativeNumberTheory/ResultsAlternative7.lean/declarations/cellslack-bounds.md) | 41 | `result-track:6af2ecaffb0bf018bb923ba8d2e7fa18b65f10e2e263cab847b326c3c250f7fe` |
| 6 | `theorem` | [edgePolynomial_mono](../../../../../NumberTheory/MultiplicativeNumberTheory/ResultsAlternative7.lean/declarations/edgepolynomial-mono.md) | 53 | `result-track:9ebb4dced671e77f1116332f887c539f44ac60550717e615a6664b1d1e4b80ab` |
| 7 | `theorem` | [pairSlack_le_cellSlack](../../../../../NumberTheory/MultiplicativeNumberTheory/ResultsAlternative7.lean/declarations/pairslack-le-cellslack.md) | 60 | `result-track:b5db57f697b6eb96bc9c5f850211efc6be0739d998625d641176878af5bdacd3` |
| 8 | `theorem` | [pair_correlation_abs_le_cell](../../../../../NumberTheory/MultiplicativeNumberTheory/ResultsAlternative7.lean/declarations/pair-correlation-abs-le-cell.md) | 85 | `result-track:57e5a4d4e3e4662791261f95946ac51d8460e36f155a5646b342d1e2179cdc2f` |
| 9 | `theorem` | [densityBlockBudget_le](../../../../../NumberTheory/MultiplicativeNumberTheory/ResultsAlternative7.lean/declarations/densityblockbudget-le.md) | 101 | `result-track:5194fd3da74658add472c41da185739b88b6e4e756a81e024cccf8596c01eb98` |
| 10 | `theorem` | [edgePolynomial_two_mul_le](../../../../../NumberTheory/MultiplicativeNumberTheory/ResultsAlternative7.lean/declarations/edgepolynomial-two-mul-le.md) | 116 | `result-track:16b822db82cfe69de5204c48770294583077c00174822598c64cb890bc8f32f4` |
| 11 | `theorem` | [logCells_card_le](../../../../../NumberTheory/MultiplicativeNumberTheory/ResultsAlternative7.lean/declarations/logcells-card-le.md) | 126 | `result-track:0b7cbee0f3095d2fd33711f9d3bdf4e9271d3f39dde9b03001f93681ed74822d` |
| 12 | `theorem` | [edgeBlockBudget_le](../../../../../NumberTheory/MultiplicativeNumberTheory/ResultsAlternative7.lean/declarations/edgeblockbudget-le.md) | 144 | `result-track:9124ad219a8247f57548f776de58b9e83f28906a0fda5104c729638c5928ce0e` |
| 13 | `theorem` | [edgeBlockBudget_ge](../../../../../NumberTheory/MultiplicativeNumberTheory/ResultsAlternative7.lean/declarations/edgeblockbudget-ge.md) | 158 | `result-track:232fc4541dab8f43a9423854aea52c7f60a0890d02861045d581a22c87e15512` |
| 14 | `theorem` | [typeTwoOffDiagonal_le_of_blocks](../../../../../NumberTheory/MultiplicativeNumberTheory/ResultsAlternative7.lean/declarations/typetwooffdiagonal-le-of-blocks.md) | 209 | `result-track:7c69e0bd5190d85a253fab4eb29727fd9d4701446a428d5390a5c5b373a64b40` |
| 15 | `theorem` | [mertensResidual_le_of_blocks](../../../../../NumberTheory/MultiplicativeNumberTheory/ResultsAlternative7.lean/declarations/mertensresidual-le-of-blocks.md) | 219 | `result-track:fc8d2f2bb726c92579f55ea0bbcfd1ae10c52102909f6c89a1610c9bdaa38caf` |
| 16 | `theorem` | [mertensResidual_le_coarse_block_budget](../../../../../NumberTheory/MultiplicativeNumberTheory/ResultsAlternative7.lean/declarations/mertensresidual-le-coarse-block-budget.md) | 228 | `result-track:fd94d0f019d625db940cb4a84ebc46158325454cae84d5c0b6aa768eb1325d32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eaaf7d6098e4b19541fe30c1b3b5e75ef1d91cd4e63797de658f7ef666ec4fea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta579864c309cbafd89fa027119520c604251ae130db8efa68ea4561b12513cb3.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta579864c309cbafd89fa027119520c604251ae130db8efa68ea4561b12513cb3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
