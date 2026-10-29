# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ExponentialRecurrence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d8134f07d213526eca3c65ae63d44a362d10b5d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ExponentialRecurrence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/ExponentialRecurrenceHistoricalSourceEdition2.lean/index.md) · [Full source](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/ExponentialRecurrenceHistoricalSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d8134f07d213526eca3c65ae63d44a362d10b5d`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ExponentialRecurrence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ExponentialRecurrence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prefixSum](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/ExponentialRecurrenceHistoricalSourceEdition2.lean/declarations/prefixsum.md) | 12 | `declaration-track:e7699e523d077c520911f3d3a05b786b78dc22f0b19731b59501c145b3fd6766` |
| 2 | `theorem` | [prefixSum_zero](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/ExponentialRecurrenceHistoricalSourceEdition2.lean/declarations/prefixsum-zero.md) | 15 | `result-track:b223cf59a3a4c99dd012b40b5ed9b3244a35e0d533ae670eb2a9954a0e163034` |
| 3 | `theorem` | [prefixSum_succ](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/ExponentialRecurrenceHistoricalSourceEdition2.lean/declarations/prefixsum-succ.md) | 16 | `result-track:8aa45fb1f61d38239357f71fe7583b5ca85e8f249703ca0991d898564460bf54` |
| 4 | `theorem` | [prefixSum_nonneg](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/ExponentialRecurrenceHistoricalSourceEdition2.lean/declarations/prefixsum-nonneg.md) | 18 | `result-track:0d6ce217b2bdb6d17407ab043094db4d5ddad732e87ec8d20a71921ea3fa3c3c` |
| 5 | `theorem` | [generalized_iteration](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/ExponentialRecurrenceHistoricalSourceEdition2.lean/declarations/generalized-iteration.md) | 25 | `result-track:cf8576dbaafeab2054c02a7fb3d78fe8c851f4702c9877cec3251d359fc4608e` |
| 6 | `def` | [blockCost](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/ExponentialRecurrenceHistoricalSourceEdition2.lean/declarations/blockcost.md) | 54 | `declaration-track:76cfd89334bfef83f5752db6cdbec66ce8d51d2985074cf15ac4ef9d5da91411` |
| 7 | `def` | [massCostConstant](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/ExponentialRecurrenceHistoricalSourceEdition2.lean/declarations/masscostconstant.md) | 55 | `declaration-track:10f407381d5b05c322047354e9cab6427535354b25ef2aadb1c94cd8c216b37c` |
| 8 | `theorem` | [blockCost_nonneg](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/ExponentialRecurrenceHistoricalSourceEdition2.lean/declarations/blockcost-nonneg.md) | 57 | `result-track:10601e3b987ff5c84a141f0d175f4ebddd187a484056979b7f4fae150d3c2097` |
| 9 | `theorem` | [sqrt_mass_bound](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/ExponentialRecurrenceHistoricalSourceEdition2.lean/declarations/sqrt-mass-bound.md) | 62 | `result-track:72b9c2fb44841e5a1be5892c51ce610d0abe9c4c2f6a5b723a113a97adbf878f` |
| 10 | `theorem` | [blockCost_le_mass](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/ExponentialRecurrenceHistoricalSourceEdition2.lean/declarations/blockcost-le-mass.md) | 72 | `result-track:b49159b165f7c58799e5c5b43e9f8e200c55c4767cdf2b940d0dc1c8cd7a8538` |
| 11 | `theorem` | [remainder_cost](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/ExponentialRecurrenceHistoricalSourceEdition2.lean/declarations/remainder-cost.md) | 82 | `result-track:5996b2c8dac0871c2d78e1a1b2ad7f2f3feead2ed414f08985770825e2234be6` |
| 12 | `theorem` | [sum_cost_with_remainder](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/ExponentialRecurrenceHistoricalSourceEdition2.lean/declarations/sum-cost-with-remainder.md) | 89 | `result-track:3760c764bf0dd61fc495c0f8d592c84aa0710aeb46c9e829f98b59af2cbda406` |
| 13 | `theorem` | [exp_cost_polynomial](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/ExponentialRecurrenceHistoricalSourceEdition2.lean/declarations/exp-cost-polynomial.md) | 119 | `result-track:e38d28aa5f114322a0a1ad08bc6777eff2e623df1fcf016cd954c0037b3ccaa4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=31388ee79213445de541aaffb4791f77bf8dd4d945f62b3bbcd1b27c8f46c745 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/ExponentialRecurrence.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/ExponentialRecurrence__SourceOccurrence87b55907d2ba6a854b10e417.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
