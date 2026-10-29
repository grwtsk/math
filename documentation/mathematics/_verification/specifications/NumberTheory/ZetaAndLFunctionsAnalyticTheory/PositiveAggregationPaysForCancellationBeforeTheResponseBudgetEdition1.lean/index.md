# Verification target: Positive Aggregation Pays For Cancellation Before The Response Budget Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3caf0caa30eaecacb8e9a22fe1664a319c8ddf77",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteAggregation/Variant5faeb323a93f77b0438c4fb328fd90663ff18eeab9788d48bf543bfa652f1948.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PositiveAggregationPaysForCancellationBeforeTheResponseBudgetEdition1.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PositiveAggregationPaysForCancellationBeforeTheResponseBudgetEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3caf0caa30eaecacb8e9a22fe1664a319c8ddf77`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteAggregation/Variant5faeb323a93f77b0438c4fb328fd90663ff18eeab9788d48bf543bfa652f1948.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteAggregation/Variant5faeb323a93f77b0438c4fb328fd90663ff18eeab9788d48bf543bfa652f1948.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.WeightedVariance` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [variation](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PositiveAggregationPaysForCancellationBeforeTheResponseBudgetEdition1.lean/declarations/variation.md) | 23 | `declaration-track:175a228943961c41f265f180dd77ec0953f6d4b8c74d518bd768ac78be7495d4` |
| 2 | `def` | [aggregate](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PositiveAggregationPaysForCancellationBeforeTheResponseBudgetEdition1.lean/declarations/aggregate.md) | 24 | `declaration-track:142f3e25fdd5e1d52c8dceeb0509ff622e225160b4c6a6ced1bd5bc1eda35c5a` |
| 3 | `def` | [cancelledMass](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PositiveAggregationPaysForCancellationBeforeTheResponseBudgetEdition1.lean/declarations/cancelledmass.md) | 26 | `declaration-track:d990e96e2eaa3fe13f3f9e511e2047a04ba8225261874e98cd12fa494123aaaa` |
| 4 | `theorem` | [variation_contracts](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PositiveAggregationPaysForCancellationBeforeTheResponseBudgetEdition1.lean/declarations/variation-contracts.md) | 29 | `result-track:f4017322e880ec877c876b71d56805888f76ded0c1544be365f077380e45e7ef` |
| 5 | `theorem` | [cancelledMass_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PositiveAggregationPaysForCancellationBeforeTheResponseBudgetEdition1.lean/declarations/cancelledmass-nonneg.md) | 47 | `result-track:ce3cc2b0cb060e601d85eea651988868e31721ce5153c71865e868a56dd07712` |
| 6 | `theorem` | [exact_removed_mass](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PositiveAggregationPaysForCancellationBeforeTheResponseBudgetEdition1.lean/declarations/exact-removed-mass.md) | 53 | `result-track:a81de8c0b853546211e494b9f32f00837dacc25a9a16a487c4ca1f5af4011748` |
| 7 | `theorem` | [response_budget_tradeoff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PositiveAggregationPaysForCancellationBeforeTheResponseBudgetEdition1.lean/declarations/response-budget-tradeoff.md) | 60 | `result-track:22360b97a1b4ed656a5f19719a4e8248a145fd73047183f87c9d191315707a56` |
| 8 | `theorem` | [cancelled_fraction_lower](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PositiveAggregationPaysForCancellationBeforeTheResponseBudgetEdition1.lean/declarations/cancelled-fraction-lower.md) | 67 | `result-track:d5400b55f8da8e978ebe9e7200b2a17bcc64a07ebb296c46efd22c5b47faf8ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=02b893110aa4c71026ee716f5bf0414d2e4142c082093bd531a24da5bc5b7109 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteAggregation/Variant5faeb323a93f77b0438c4fb328fd90663ff18eeab9788d48bf543bfa652f1948.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteAggregation/Variant5faeb323a93f77b0438c4fb328fd90663ff18eeab9788d48bf543bfa652f1948.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
