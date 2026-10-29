# Energy Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Energy/Variant69b00a065fc67a87f79bc1bba94bac5a6dc6c7a0dbedd76d5be8005c05819d56.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e19e4554c97d43de30c6df2feb39add0e648164`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/EnergyNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [openingCount](declarations/openingcount.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [closingCount](declarations/closingcount.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [openingCount_append](declarations/openingcount-append.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [closingCount_append](declarations/closingcount-append.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [count_close_replicate_open](declarations/count-close-replicate-open.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [count_open_replicate_open](declarations/count-open-replicate-open.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [count_open_replicate_close](declarations/count-open-replicate-close.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [count_close_replicate_close](declarations/count-close-replicate-close.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [PrefixSafeWith](declarations/prefixsafewith.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [prefixAllowance_exists](declarations/prefixallowance-exists.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [prefixDeficit](declarations/prefixdeficit.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [prefixDeficit_is_prefixSafe](declarations/prefixdeficit-is-prefixsafe.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [prefixDeficit_is_minimal](declarations/prefixdeficit-is-minimal.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [minimumPrefix](declarations/minimumprefix.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [prefixDeficit_eq_max_zero_neg_minimumPrefix](declarations/prefixdeficit-eq-max-zero-neg-minimumprefix.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [terminalSurplus](declarations/terminalsurplus.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [terminalSurplus_eq_finalBalance_add_prefixDeficit](declarations/terminalsurplus-eq-finalbalance-add-prefixdeficit.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [canonicalEndpointCompletion](declarations/canonicalendpointcompletion.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [prepended_prefix_safe](declarations/prepended-prefix-safe.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [append_closes_preserves_prefix_safe](declarations/append-closes-preserves-prefix-safe.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [completed_counts_equal](declarations/completed-counts-equal.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [canonicalEndpointCompletion_is_balanced](declarations/canonicalendpointcompletion-is-balanced.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [StructuralEnergy](declarations/structuralenergy.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [StructuralEnergy.hardVector](declarations/structuralenergy-hardvector.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [StructuralEnergy.vector](declarations/structuralenergy-vector.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [StructuralEnergy.HardAdmissible](declarations/structuralenergy-hardadmissible.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [StructuralEnergy.Less](declarations/structuralenergy-less.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `inductive` | [AnnealDecision](declarations/annealdecision.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [AnnealStep](declarations/annealstep.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [AnnealStep.measureBefore](declarations/annealstep-measurebefore.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [AnnealStep.measureAfter](declarations/annealstep-measureafter.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [AnnealStep.Valid](declarations/annealstep-valid.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [acceptedAnnealStep_decreases_measure](declarations/acceptedannealstep-decreases-measure.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [annealTrace](declarations/annealtrace.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [annealTrace_length_le_fuel](declarations/annealtrace-length-le-fuel.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [annealTrace_terminates](declarations/annealtrace-terminates.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `structure` | [EnumeratedAnnealMinimum](declarations/enumeratedannealminimum.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [exhaustiveAnnealResult](declarations/exhaustiveannealresult.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [exhaustiveAnnealResult_minimal_on_enumerated_candidates](declarations/exhaustiveannealresult-minimal-on-enumerated-candidates.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9ffdf535d2c5ee902eedc3732fa5d4008594b45389eabc21105eda2f4852e644 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Energy/Variant69b00a065fc67a87f79bc1bba94bac5a6dc6c7a0dbedd76d5be8005c05819d56.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
