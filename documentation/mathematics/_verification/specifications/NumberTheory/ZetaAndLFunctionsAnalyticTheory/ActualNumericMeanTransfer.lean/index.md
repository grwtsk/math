# Verification target: Actual Numeric Mean Transfer

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e6925b9f20058bc352238fda9748cdd0c6d32f3",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualNumericMeanTransfer/Variant83166f6a40201c1ae74631acc9cb974cd863e89bb8b14251f725b7b4e6d9395a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualNumericMeanTransfer.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualNumericMeanTransfer.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e6925b9f20058bc352238fda9748cdd0c6d32f3`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualNumericMeanTransfer/Variant83166f6a40201c1ae74631acc9cb974cd863e89bb8b14251f725b7b4e6d9395a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualNumericMeanTransfer/Variant83166f6a40201c1ae74631acc9cb974cd863e89bb8b14251f725b7b4e6d9395a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualCommonMeanNormalization` — import line 1; external provider; requires a separately pinned dependency.
- `NumericMeanBounds` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [commonMeanCenter_gt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualNumericMeanTransfer.lean/declarations/commonmeancenter-gt.md) | 14 | `result-track:107386fe015f8cc84d7665df7eb8c2ded97106153454c0a420c14160670cc683` |
| 2 | `theorem` | [normalizationBudget_lt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualNumericMeanTransfer.lean/declarations/normalizationbudget-lt.md) | 18 | `result-track:c847564c649cf9c253df186c135f40d223884065b2b3062dcf498ff8c39b83a4` |
| 3 | `theorem` | [normalizationError_lt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualNumericMeanTransfer.lean/declarations/normalizationerror-lt.md) | 22 | `result-track:75fc86c69c30a53a9b27f0a0602b800e8877e7ad44111971f864b551753fcaf5` |
| 4 | `theorem` | [sourceMeanOffset_gt_paper_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualNumericMeanTransfer.lean/declarations/sourcemeanoffset-gt-paper-bound.md) | 28 | `result-track:fb88a39e2ee4521420df40576ae327b2dfc463d8b902e11a65a60d9543c88212` |
| 5 | `theorem` | [sourceMean_gt_paper_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualNumericMeanTransfer.lean/declarations/sourcemean-gt-paper-bound.md) | 35 | `result-track:e659a3674b7002fb5741021c02f273e2ddd1d88eb9582cf1da810842be7f3d84` |
| 6 | `theorem` | [sourceMean_gt_of_zero_budget](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualNumericMeanTransfer.lean/declarations/sourcemean-gt-of-zero-budget.md) | 42 | `result-track:9b11337aea9e375ce478d102ec62b943ee9e802ab7621ffe176a6a29cac7fd6e` |
| 7 | `theorem` | [sourceMean_gt_neg_eighteen](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualNumericMeanTransfer.lean/declarations/sourcemean-gt-neg-eighteen.md) | 49 | `result-track:244fdce8516bdadb7dd3bc14c80272a1db7928972e11a4c0d87c3d3e81602900` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=544e35773de7b8c83ea707d07e8280dacf9db3c67f856aaa0c6ce55cc589e251 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualNumericMeanTransfer/Variant83166f6a40201c1ae74631acc9cb974cd863e89bb8b14251f725b7b4e6d9395a.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualNumericMeanTransfer/Variant83166f6a40201c1ae74631acc9cb974cd863e89bb8b14251f725b7b4e6d9395a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
