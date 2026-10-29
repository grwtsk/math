# Verification target: Source Actual Xi Whole Head Bounds Attempt02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28eb0f1117ee38e69f67478e77e07b1c44203455",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualXiWholeHeadBoundsAttempt02/Variantde81777d5238497f10cf15fc55b1d62bec9fc9704fb9b91a5e594bf7867b611d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceActualXiWholeHeadBoundsAttempt02.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceActualXiWholeHeadBoundsAttempt02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28eb0f1117ee38e69f67478e77e07b1c44203455`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualXiWholeHeadBoundsAttempt02/Variantde81777d5238497f10cf15fc55b1d62bec9fc9704fb9b91a5e594bf7867b611d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/SourceActualXiWholeHeadBoundsAttempt02/Variantde81777d5238497f10cf15fc55b1d62bec9fc9704fb9b91a5e594bf7867b611d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceCompleteXiTailConsumer` — import line 1; external provider; requires a separately pinned dependency.
- `SourceActualXiFixedFront` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [wholeHeadHeight](../../../../MeasureAndIntegration/SourceActualXiWholeHeadBoundsAttempt02.lean/declarations/wholeheadheight.md) | 23 | `declaration-track:347af477d231334cd1686c2f2e56971e0ebe77876e73ba15ffc4803a8e97f992` |
| 2 | `def` | [wholeHeadBudget](../../../../MeasureAndIntegration/SourceActualXiWholeHeadBoundsAttempt02.lean/declarations/wholeheadbudget.md) | 27 | `declaration-track:d52df4dce088499607ce43880ed9b9953e30dc7355ef6db9631f5852a54addbc` |
| 3 | `def` | [actualWholeXiHead](../../../../MeasureAndIntegration/SourceActualXiWholeHeadBoundsAttempt02.lean/declarations/actualwholexihead.md) | 30 | `declaration-track:4cd0e4048f9adf69ce743a1c97e5249dfc7e3f026815bcf7c10816a7b65a172c` |
| 4 | `def` | [gammaTraceBudget](../../../../MeasureAndIntegration/SourceActualXiWholeHeadBoundsAttempt02.lean/declarations/gammatracebudget.md) | 34 | `declaration-track:3f271444e77e595c7f35974211a9e8a9620db4c02d620af379dc488d0bbf9669` |
| 5 | `theorem` | [wholeHeadHeight_nonneg](../../../../MeasureAndIntegration/SourceActualXiWholeHeadBoundsAttempt02.lean/declarations/wholeheadheight-nonneg.md) | 37 | `result-track:cd9e3bb64f54e4481dcdf2fee80e5ed644f564120e812246f0d2a306019b3ac1` |
| 6 | `theorem` | [wholeHeadBudget_nonneg](../../../../MeasureAndIntegration/SourceActualXiWholeHeadBoundsAttempt02.lean/declarations/wholeheadbudget-nonneg.md) | 42 | `result-track:93a9d2caccdbc02e1ddb4797d5c8e82a40c807bcd59d6ff5d599af4bf0bc3f94` |
| 7 | `theorem` | [gammaTraceBudget_nonneg](../../../../MeasureAndIntegration/SourceActualXiWholeHeadBoundsAttempt02.lean/declarations/gammatracebudget-nonneg.md) | 45 | `result-track:c612bd3f791b6c36fd3e54abb33f74db364690f45e6be5e6de15337d9cca6596` |
| 8 | `theorem` | [shiftedActualChebyshev_abs_le_wholeHeadHeight](../../../../MeasureAndIntegration/SourceActualXiWholeHeadBoundsAttempt02.lean/declarations/shiftedactualchebyshev-abs-le-wholeheadheight.md) | 49 | `result-track:36631fc6cc708445a0f133b1bc5de182ba06a0d1c150c3dde869b9e8ef4416a1` |
| 9 | `theorem` | [actual_whole_head_density_abs_le](../../../../MeasureAndIntegration/SourceActualXiWholeHeadBoundsAttempt02.lean/declarations/actual-whole-head-density-abs-le.md) | 68 | `result-track:61f5aa702fc83b9dbd1fd0b6ffd16e3f3676463ea5b56c72d97688604d81a129` |
| 10 | `theorem` | [actual_whole_head_intervalIntegrable](../../../../MeasureAndIntegration/SourceActualXiWholeHeadBoundsAttempt02.lean/declarations/actual-whole-head-intervalintegrable.md) | 85 | `result-track:b03d07a847464190839bce5e65f8999a096629776a16ea6fc904aedacc0a8c39` |
| 11 | `theorem` | [actualWholeXiHead_abs_le](../../../../MeasureAndIntegration/SourceActualXiWholeHeadBoundsAttempt02.lean/declarations/actualwholexihead-abs-le.md) | 98 | `result-track:f5de8040eb3c07e8f5c9545d08adf4857e82b3a88d5d5f3cd01df33fb9b98ebc` |
| 12 | `theorem` | [actualWholeXiHead_upper](../../../../MeasureAndIntegration/SourceActualXiWholeHeadBoundsAttempt02.lean/declarations/actualwholexihead-upper.md) | 119 | `result-track:007aa49820205d207c8a2781f756110b111bd4fd470f88ece33305a9ba03f070` |
| 13 | `theorem` | [actual_gamma_trace_abs_le](../../../../MeasureAndIntegration/SourceActualXiWholeHeadBoundsAttempt02.lean/declarations/actual-gamma-trace-abs-le.md) | 124 | `result-track:891c06bd3f300a06c752a6374d6d3f6d93e3ae36271b1ec09848dcf09a7c2ae2` |
| 14 | `theorem` | [actual_gamma_trace_upper](../../../../MeasureAndIntegration/SourceActualXiWholeHeadBoundsAttempt02.lean/declarations/actual-gamma-trace-upper.md) | 137 | `result-track:86105cd999ccc3274979f18bd5007db357e7fc71d179aa52f3f2091938e1e0b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d7f02038e6023b54bfd2e829ed7d65da269208487620c84e13fe61e266afac21 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualXiWholeHeadBoundsAttempt02/Variantde81777d5238497f10cf15fc55b1d62bec9fc9704fb9b91a5e594bf7867b611d.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/SourceActualXiWholeHeadBoundsAttempt02/Variantde81777d5238497f10cf15fc55b1d62bec9fc9704fb9b91a5e594bf7867b611d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
