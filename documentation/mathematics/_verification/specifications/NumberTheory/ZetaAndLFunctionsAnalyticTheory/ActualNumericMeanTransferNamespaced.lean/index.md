# Verification target: Actual Numeric Mean Transfer Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0360985e54f48126881a527aa1d3d2affb664aca",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualNumericMeanTransfer/Variantbe8623b0bfcaef196c971e4186015d76bdbce6bcab78ccdcdf2a92c8b2b14352.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualNumericMeanTransferNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualNumericMeanTransferNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0360985e54f48126881a527aa1d3d2affb664aca`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualNumericMeanTransfer/Variantbe8623b0bfcaef196c971e4186015d76bdbce6bcab78ccdcdf2a92c8b2b14352.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualNumericMeanTransfer/Variantbe8623b0bfcaef196c971e4186015d76bdbce6bcab78ccdcdf2a92c8b2b14352.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualCommonMeanNormalization` — import line 6; external provider; requires a separately pinned dependency.
- `NumericMeanBounds` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [commonMeanCenter_gt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualNumericMeanTransferNamespaced.lean/declarations/commonmeancenter-gt.md) | 22 | `result-track:9996f461f50df43496430fa4452ac72fc2907e17f4c38c87e392433ed5777b94` |
| 2 | `theorem` | [normalizationBudget_lt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualNumericMeanTransferNamespaced.lean/declarations/normalizationbudget-lt.md) | 26 | `result-track:9b888f4576ec17cb2e80100a78068be58879adf27af45d5d18f519fef44be814` |
| 3 | `theorem` | [normalizationError_lt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualNumericMeanTransferNamespaced.lean/declarations/normalizationerror-lt.md) | 30 | `result-track:2ee4bc1c422b66d5d43f81f5600a2e0ef2cfce709bf751943c0723055c3d0861` |
| 4 | `theorem` | [sourceMeanOffset_gt_paper_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualNumericMeanTransferNamespaced.lean/declarations/sourcemeanoffset-gt-paper-bound.md) | 36 | `result-track:eed35d713dfe77a5eb95a27750811fbe1f09c06bb376947c3ae92b1d0bab9c9d` |
| 5 | `theorem` | [sourceMean_gt_paper_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualNumericMeanTransferNamespaced.lean/declarations/sourcemean-gt-paper-bound.md) | 43 | `result-track:1e9cf9767a5f518e4cc8634ba1ce9fe9d8640d8e949b57c9e09612b131864521` |
| 6 | `theorem` | [sourceMean_gt_of_zero_budget](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualNumericMeanTransferNamespaced.lean/declarations/sourcemean-gt-of-zero-budget.md) | 50 | `result-track:3acd0333ba8c12d442ea3f77f39b870d04912097fcebcdf9f8966507bb8c7294` |
| 7 | `theorem` | [sourceMean_gt_neg_eighteen](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualNumericMeanTransferNamespaced.lean/declarations/sourcemean-gt-neg-eighteen.md) | 57 | `result-track:b2d5d042b66ef447885176a09207c76f5f9e7cdcf035ac5eab341141c472746b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3db9327ba9630e7b1072b4a457b2e2e1b8f8e368e2c3d67d81f90a865b22d406 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualNumericMeanTransfer/Variantbe8623b0bfcaef196c971e4186015d76bdbce6bcab78ccdcdf2a92c8b2b14352.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualNumericMeanTransfer/Variantbe8623b0bfcaef196c971e4186015d76bdbce6bcab78ccdcdf2a92c8b2b14352.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
