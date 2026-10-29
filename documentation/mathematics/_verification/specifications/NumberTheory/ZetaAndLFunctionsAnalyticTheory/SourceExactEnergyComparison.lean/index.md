# Verification target: Source Exact Energy Comparison

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "518f3fa720721e298a65d805446889906ecc5a65",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceExactEnergyComparison/Variant8c5f4ae9ba36d8e7adcd442088c6da40f3dee48fe085dee9863d285e94f54425.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceExactEnergyComparison.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceExactEnergyComparison.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `518f3fa720721e298a65d805446889906ecc5a65`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceExactEnergyComparison/Variant8c5f4ae9ba36d8e7adcd442088c6da40f3dee48fe085dee9863d285e94f54425.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceExactEnergyComparison/Variant8c5f4ae9ba36d8e7adcd442088c6da40f3dee48fe085dee9863d285e94f54425.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceExactEnergyMeanConsumer` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exactMeanTailBudget_le_original](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceExactEnergyComparison.lean/declarations/exactmeantailbudget-le-original.md) | 20 | `result-track:e3026bdaf176b8cc7bcf1d61737e40d19555f0c068cccdddd2e281ec245d952a` |
| 2 | `theorem` | [exactMeanAtomBudget_le_original](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceExactEnergyComparison.lean/declarations/exactmeanatombudget-le-original.md) | 36 | `result-track:b26d46f12839013247dee66a2d72bf5f6b513f0335bf7a67b173a365247949b9` |
| 3 | `theorem` | [exactMeanResidualBudget_le_original](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceExactEnergyComparison.lean/declarations/exactmeanresidualbudget-le-original.md) | 42 | `result-track:a6bcf26d548c2ed550402fa0f232dca157f7e2eb36d45e5ab17361c69298530a` |
| 4 | `theorem` | [atom_budget_gain_when_active](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceExactEnergyComparison.lean/declarations/atom-budget-gain-when-active.md) | 48 | `result-track:4b1cdff78d9458e7799c4468bd57e339fd0056357a619347ba8a5714857508e5` |
| 5 | `theorem` | [original_lower_budget_le_exact](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceExactEnergyComparison.lean/declarations/original-lower-budget-le-exact.md) | 60 | `result-track:0366f8660d8edcbce53970ae9720cf15fc0340a6b0f6c3c74fd68d2fe2b97061` |
| 6 | `theorem` | [tail_lower_gain_when_active](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceExactEnergyComparison.lean/declarations/tail-lower-gain-when-active.md) | 68 | `result-track:67ec5d89e968e88ffe6196e2db9791c74bda36a51163dd8e4205fe64d23c90f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=97de1c9d58b7c858b178d3e16da67e91d2f2632bfcb8e21309ddacd3c03a9448 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceExactEnergyComparison/Variant8c5f4ae9ba36d8e7adcd442088c6da40f3dee48fe085dee9863d285e94f54425.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceExactEnergyComparison/Variant8c5f4ae9ba36d8e7adcd442088c6da40f3dee48fe085dee9863d285e94f54425.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
