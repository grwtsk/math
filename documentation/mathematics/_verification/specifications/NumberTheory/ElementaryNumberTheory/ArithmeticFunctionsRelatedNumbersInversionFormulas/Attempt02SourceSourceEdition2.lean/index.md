# Verification target: Attempt02 Source Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe3f05cc6aa9b3cd58643a86c4b18ee364f0e9f2",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Attempt02Source/Variantf7ae82093851a9ed4d1ec6a6d142e6627b1f8071c66234fca03171cd4c114867.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt02SourceSourceEdition2.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt02SourceSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe3f05cc6aa9b3cd58643a86c4b18ee364f0e9f2`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/Attempt02Source/Variantf7ae82093851a9ed4d1ec6a6d142e6627b1f8071c66234fca03171cd4c114867.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/Attempt02Source/Variantf7ae82093851a9ed4d1ec6a6d142e6627b1f8071c66234fca03171cd4c114867.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceExactRestrictedStrip` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exactStripCost](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt02SourceSourceEdition2.lean/declarations/exactstripcost.md) | 27 | `declaration-track:438af0a66e49583f52ea434395dd7c763658a5186f1a16b2f9c285a7b2e6c8a2` |
| 2 | `def` | [exactOverlapResidualBudget](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt02SourceSourceEdition2.lean/declarations/exactoverlapresidualbudget.md) | 31 | `declaration-track:1baaf22ba30e365d7df529fe76c8fbf58e803d7c622e1b45f44786d4fe09c09f` |
| 3 | `theorem` | [exactStripCost_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt02SourceSourceEdition2.lean/declarations/exactstripcost-nonneg.md) | 34 | `result-track:d7040d6acd9cdf303f235c01a29722e6e2148d7f8b5fb97cfd28d313e8adda40` |
| 4 | `theorem` | [exactOverlapResidualBudget_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt02SourceSourceEdition2.lean/declarations/exactoverlapresidualbudget-nonneg.md) | 40 | `result-track:0e90790cd94d183729db8eb5224f820a8f35bee8b0bd428a5f2f759b5c03b48d` |
| 5 | `theorem` | [residual_upper_of_overlap_with_ledger](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt02SourceSourceEdition2.lean/declarations/residual-upper-of-overlap-with-ledger.md) | 44 | `result-track:f67f3623ecb29e4151f31150b8b916574158ceb216a9643f4f6cfa45ed5e7e3e` |
| 6 | `theorem` | [residual_tail_of_overlap_with_exact_strip](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt02SourceSourceEdition2.lean/declarations/residual-tail-of-overlap-with-exact-strip.md) | 62 | `result-track:4d5e3e49c45a2e09d3b8b415761d9c3b4bd84ca749905c2760d77da9e4d9cba0` |
| 7 | `theorem` | [quadratic_lower_of_residual_upper](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt02SourceSourceEdition2.lean/declarations/quadratic-lower-of-residual-upper.md) | 70 | `result-track:69a90eaa2b25499bca550904488fbd0cd2a55ee2d5e99ac713f13a30e0c0c678` |
| 8 | `theorem` | [all_real_lower_of_overlap_with_ledger](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt02SourceSourceEdition2.lean/declarations/all-real-lower-of-overlap-with-ledger.md) | 82 | `result-track:7391e3f0e1b008346e31bb6672ed474cba64c7f57b5ddd92b8c7ca5c8f8edcf6` |
| 9 | `theorem` | [all_real_lower_of_overlap_with_exact_strip](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt02SourceSourceEdition2.lean/declarations/all-real-lower-of-overlap-with-exact-strip.md) | 102 | `result-track:477a6036ac2b6ee68091c18a3977e4ba44644c1af4e26ffcf38d816350f6d5f1` |
| 10 | `theorem` | [estimate_of_overlap_with_exact_strip](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/Attempt02SourceSourceEdition2.lean/declarations/estimate-of-overlap-with-exact-strip.md) | 113 | `result-track:8e47c0403d9f3c836a50ba1579079c4990b2acb68136bf150b6383d764eb6018` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e50eb476d27b3a00c9ef3096aa455600b486191b2491fe868325dd8c66efd618 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/Attempt02Source/Variantf7ae82093851a9ed4d1ec6a6d142e6627b1f8071c66234fca03171cd4c114867.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/Attempt02Source/Variantf7ae82093851a9ed4d1ec6a6d142e6627b1f8071c66234fca03171cd4c114867.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
