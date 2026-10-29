# Verification target: Actual Numeric Correction Attempt01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64943cf4737f314484b4e53fba77d0345c0c702d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualNumericCorrectionAttempt01/Variant8ffe71f17d18c5c46276ff4fd05a2df3df5850caf04b7c1c7808ac535e1fd9f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualNumericCorrectionAttempt01.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualNumericCorrectionAttempt01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64943cf4737f314484b4e53fba77d0345c0c702d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualNumericCorrectionAttempt01/Variant8ffe71f17d18c5c46276ff4fd05a2df3df5850caf04b7c1c7808ac535e1fd9f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualNumericCorrectionAttempt01/Variant8ffe71f17d18c5c46276ff4fd05a2df3df5850caf04b7c1c7808ac535e1fd9f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `HigherPowerNumeric` — import line 1; external provider; requires a separately pinned dependency.
- `ActualPrimeError` — import line 2; external provider; requires a separately pinned dependency.
- `ActualNumericMeanTransfer` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actual_negative_mean_gt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualNumericCorrectionAttempt01.lean/declarations/actual-negative-mean-gt.md) | 15 | `result-track:c64df18c8247f935e43482168813b19f2210ed5f5bae4935c10490518ab312b3` |
| 2 | `theorem` | [actual_square_remainder_gt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualNumericCorrectionAttempt01.lean/declarations/actual-square-remainder-gt.md) | 20 | `result-track:7ea749a58522f5d879f0530d93ddb28063aaf245632b0e8c112b93b5084f1357` |
| 3 | `theorem` | [actual_square_remainder_paper_budget](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualNumericCorrectionAttempt01.lean/declarations/actual-square-remainder-paper-budget.md) | 29 | `result-track:b4c465d21db51134004767f019310b14c8a8cc9e3d167cb1d04e57c884700b3f` |
| 4 | `theorem` | [actual_mean_offset_gt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualNumericCorrectionAttempt01.lean/declarations/actual-mean-offset-gt.md) | 33 | `result-track:cdb973bc5d53433fcc0fea142e5c1ef418b11c3a4308e2fd8cf007ec3a538b67` |
| 5 | `theorem` | [actual_mean_gt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualNumericCorrectionAttempt01.lean/declarations/actual-mean-gt.md) | 40 | `result-track:6a94a904667790b96959ef035c44b68d71a422d9d03e2b2d2789d1ddead5d5d5` |
| 6 | `theorem` | [actual_mean_gt_of_zero_budget](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualNumericCorrectionAttempt01.lean/declarations/actual-mean-gt-of-zero-budget.md) | 45 | `result-track:d829d85cdaaa4704e707ca790527be455b5e0c1e12a0df3763a4c9d94bdc9b4e` |
| 7 | `theorem` | [actual_mean_gt_neg_eighteen](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualNumericCorrectionAttempt01.lean/declarations/actual-mean-gt-neg-eighteen.md) | 51 | `result-track:370bd483dc800d9491de08f4a2bd3573ce9e6c1eb99beec8e94967180215f774` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a895bbd858fb429b248a793b102b8ad0187fa471b25130e6392e8066baddb5a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualNumericCorrectionAttempt01/Variant8ffe71f17d18c5c46276ff4fd05a2df3df5850caf04b7c1c7808ac535e1fd9f8.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualNumericCorrectionAttempt01/Variant8ffe71f17d18c5c46276ff4fd05a2df3df5850caf04b7c1c7808ac535e1fd9f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
