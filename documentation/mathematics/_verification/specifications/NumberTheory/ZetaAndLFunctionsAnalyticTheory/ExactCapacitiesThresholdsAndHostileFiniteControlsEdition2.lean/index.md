# Verification target: Exact Capacities Thresholds And Hostile Finite Controls Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf9b0d5be27877c042fe2b28c2d4e9c6e450cffb",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteObstructions/Variante32370a1b3ba4febe1353f740506bb561dc0f3bda986cf9630ed733ba8556adb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactCapacitiesThresholdsAndHostileFiniteControlsEdition2.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactCapacitiesThresholdsAndHostileFiniteControlsEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf9b0d5be27877c042fe2b28c2d4e9c6e450cffb`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteObstructions/Variante32370a1b3ba4febe1353f740506bb561dc0f3bda986cf9630ed733ba8556adb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteObstructions/Variante32370a1b3ba4febe1353f740506bb561dc0f3bda986cf9630ed733ba8556adb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.WeightedHodge` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [native_gram_determinant](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactCapacitiesThresholdsAndHostileFiniteControlsEdition2.lean/declarations/native-gram-determinant.md) | 23 | `result-track:591c31f980924e421ed87d0df0e82e170ef75dead25cfa2517512cf3133d0dab` |
| 2 | `theorem` | [native_gram_determinant_positive](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactCapacitiesThresholdsAndHostileFiniteControlsEdition2.lean/declarations/native-gram-determinant-positive.md) | 27 | `result-track:ac3f873f37a0c48f303f369b37afba6a861b3c4b52a6735ab9ce577345c4ab21` |
| 3 | `def` | [rowCapacity](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactCapacitiesThresholdsAndHostileFiniteControlsEdition2.lean/declarations/rowcapacity.md) | 36 | `declaration-track:55e5061617f290b2b291fd14fcd207dd70b566acfb066f61cb5af0c5db70b280` |
| 4 | `theorem` | [capacity_defect](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactCapacitiesThresholdsAndHostileFiniteControlsEdition2.lean/declarations/capacity-defect.md) | 39 | `result-track:2f336ce5a89d26ea5f46753402c5f3f615bb937a16a5067c5a016b4b35cc033e` |
| 5 | `theorem` | [capacity_upper](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactCapacitiesThresholdsAndHostileFiniteControlsEdition2.lean/declarations/capacity-upper.md) | 47 | `result-track:0f1e76ed6e5d42508926746fb89d598df131746abc0f2f729f9af9deed48b0ef` |
| 6 | `theorem` | [capacity_attained](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactCapacitiesThresholdsAndHostileFiniteControlsEdition2.lean/declarations/capacity-attained.md) | 57 | `result-track:3b868babb6113c0223d7ceb0bf7d6ce90db38ca4aac7a55e9143aaf4af61e962` |
| 7 | `theorem` | [small_gain_bottleneck](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactCapacitiesThresholdsAndHostileFiniteControlsEdition2.lean/declarations/small-gain-bottleneck.md) | 60 | `result-track:61785d2c9d5f48ada0b8fbf4b14d9385bfac25b350e48fbcbb9365befbb73ee6` |
| 8 | `theorem` | [exceptional_gain_bottleneck](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactCapacitiesThresholdsAndHostileFiniteControlsEdition2.lean/declarations/exceptional-gain-bottleneck.md) | 63 | `result-track:350ef651595e03152e85cf82c4e9c9b953d040feac339b14aac1d62a098236ea` |
| 9 | `theorem` | [high_gain_full_exception_removal](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactCapacitiesThresholdsAndHostileFiniteControlsEdition2.lean/declarations/high-gain-full-exception-removal.md) | 66 | `result-track:f5ba1aa9b324b51af8c5395912c1c5dd2cacd41ebaff84376845451ceec60727` |
| 10 | `theorem` | [positive_quadratic_negative_off_diagonal](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactCapacitiesThresholdsAndHostileFiniteControlsEdition2.lean/declarations/positive-quadratic-negative-off-diagonal.md) | 70 | `result-track:c88c1e285f4fbd63b00f8f09cd76ab9361ac2eaeef6dec7b5612863011b36d58` |
| 11 | `theorem` | [joined_zero_unbounded_separated](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactCapacitiesThresholdsAndHostileFiniteControlsEdition2.lean/declarations/joined-zero-unbounded-separated.md) | 77 | `result-track:3a10f7ed8805f240713ce5f34b4a671ab13696bdbbb535a17c38dce1f5adddda` |
| 12 | `theorem` | [sampling_variation_cost](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactCapacitiesThresholdsAndHostileFiniteControlsEdition2.lean/declarations/sampling-variation-cost.md) | 85 | `result-track:955e1984297f80bf92f746d0f8fe6bdc786efceb32a1567ad18f5e4391574564` |
| 13 | `theorem` | [strict_dense_divisor_endpoint_counterexample](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactCapacitiesThresholdsAndHostileFiniteControlsEdition2.lean/declarations/strict-dense-divisor-endpoint-counterexample.md) | 93 | `result-track:e539e3c307766263be262e7c5b565ec132df0184306b7fa29604ca93bb51d320` |
| 14 | `theorem` | [retained_sector_count](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactCapacitiesThresholdsAndHostileFiniteControlsEdition2.lean/declarations/retained-sector-count.md) | 99 | `result-track:550b2a44ee0100dd51a0c72a9d07901a44ffe849070f186b677aca0bb50164eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=96fd9a7b4e722b699d4ffca60f383736f5f02e88e69ebe12091e7320b39454ca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteObstructions/Variante32370a1b3ba4febe1353f740506bb561dc0f3bda986cf9630ed733ba8556adb.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteObstructions/Variante32370a1b3ba4febe1353f740506bb561dc0f3bda986cf9630ed733ba8556adb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
