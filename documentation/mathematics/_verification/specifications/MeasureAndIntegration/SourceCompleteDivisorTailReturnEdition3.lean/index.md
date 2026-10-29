# Verification target: Source Complete Divisor Tail Return Edition3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "acb48c089609c2d35f436e12c8485d15fb928f86",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variantec44a4330a7ceb25abe992b22c0b58bad1dfe1c2e7e8d3053de9dae4f152d365.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceCompleteDivisorTailReturnEdition3.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceCompleteDivisorTailReturnEdition3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `acb48c089609c2d35f436e12c8485d15fb928f86`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variantec44a4330a7ceb25abe992b22c0b58bad1dfe1c2e7e8d3053de9dae4f152d365.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variantec44a4330a7ceb25abe992b22c0b58bad1dfe1c2e7e8d3053de9dae4f152d365.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceCompleteXiTailConsumer` — import line 1; external provider; requires a separately pinned dependency.
- `SourceCompleteDivisorCancellation` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [completeXiHead](../../../../MeasureAndIntegration/SourceCompleteDivisorTailReturnEdition3.lean/declarations/completexihead.md) | 29 | `declaration-track:eb88aa90262f9c56cade57d2c1297a7dce8ff8f894b9c1e9d1dc4f31b5a433fa` |
| 2 | `theorem` | [remaining_work_eq_gamma_head_tail](../../../../MeasureAndIntegration/SourceCompleteDivisorTailReturnEdition3.lean/declarations/remaining-work-eq-gamma-head-tail.md) | 31 | `result-track:a7c884521d0e17193651398fe8223b0c4fa3d07be8e7f4f508aaa0ed9c497a6c` |
| 3 | `theorem` | [complete_tail_eq_residual_corrections](../../../../MeasureAndIntegration/SourceCompleteDivisorTailReturnEdition3.lean/declarations/complete-tail-eq-residual-corrections.md) | 59 | `result-track:7687c21ee598e61217dcc7a6ce6fe88b0d2e122ca2e4a02a863c8b85af47ca5f` |
| 4 | `theorem` | [residual_upper_implies_complete_tail_lower](../../../../MeasureAndIntegration/SourceCompleteDivisorTailReturnEdition3.lean/declarations/residual-upper-implies-complete-tail-lower.md) | 70 | `result-track:60366bf1dfd35bca0a1264dcb6297f1643654bc2bd23e9d05e8f5962bda1d8f7` |
| 5 | `def` | [finiteLedgerCorrection](../../../../MeasureAndIntegration/SourceCompleteDivisorTailReturnEdition3.lean/declarations/finiteledgercorrection.md) | 80 | `declaration-track:465336cc2e4a7cf88ab6770c078789b5bd94fa86b639d5fd76b4b03154a6f0fa` |
| 6 | `def` | [completeBlockTailBudget](../../../../MeasureAndIntegration/SourceCompleteDivisorTailReturnEdition3.lean/declarations/completeblocktailbudget.md) | 83 | `declaration-track:ec470e16540d78a33e47e602d87ebc00448ea215811ece061c4e88ff95fc5d9c` |
| 7 | `theorem` | [residual_eq_complete_block_corrections](../../../../MeasureAndIntegration/SourceCompleteDivisorTailReturnEdition3.lean/declarations/residual-eq-complete-block-corrections.md) | 86 | `result-track:9798c0206d9b2d3aaee023730d212fd91a92bc850fb8f318fb67960789b947db` |
| 8 | `theorem` | [complete_block_upper_implies_residual_upper](../../../../MeasureAndIntegration/SourceCompleteDivisorTailReturnEdition3.lean/declarations/complete-block-upper-implies-residual-upper.md) | 94 | `result-track:127d860c9fecef875b4aed81e4483924dcaa769fdaaf229b1c7d14bcdde7ac42` |
| 9 | `theorem` | [complete_block_upper_implies_tail_lower](../../../../MeasureAndIntegration/SourceCompleteDivisorTailReturnEdition3.lean/declarations/complete-block-upper-implies-tail-lower.md) | 103 | `result-track:9a61362b3bdc08b3e3dc05f3542e9389dfac5a1f6392cabce2d7cb29665e8ae8` |
| 10 | `theorem` | [fixed_corrections_and_tail_of_complete_block](../../../../MeasureAndIntegration/SourceCompleteDivisorTailReturnEdition3.lean/declarations/fixed-corrections-and-tail-of-complete-block.md) | 112 | `result-track:7ab618672c7bbd01c9e4cc08837753c094657f0af0b14f03465a19b3b1947264` |
| 11 | `theorem` | [all_real_lower_of_complete_block_inputs](../../../../MeasureAndIntegration/SourceCompleteDivisorTailReturnEdition3.lean/declarations/all-real-lower-of-complete-block-inputs.md) | 133 | `result-track:f0f91b6b6f083bd632a0313afa243ba8fc6fa2b9aee8c0f6298a6882d60817b2` |
| 12 | `theorem` | [estimate_of_complete_block](../../../../MeasureAndIntegration/SourceCompleteDivisorTailReturnEdition3.lean/declarations/estimate-of-complete-block.md) | 158 | `result-track:7c61bc2a32453729adce39d14d6d9f99da3a02dbcd47419db699d77ad0f068a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0127141a169f9cf4e2b1d4b6476d5900f503c46975777530cb5ce5fb33e4ab51 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variantec44a4330a7ceb25abe992b22c0b58bad1dfe1c2e7e8d3053de9dae4f152d365.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variantec44a4330a7ceb25abe992b22c0b58bad1dfe1c2e7e8d3053de9dae4f152d365.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
