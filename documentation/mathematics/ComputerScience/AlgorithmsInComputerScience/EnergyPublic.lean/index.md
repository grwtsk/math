# Energy Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Energy/Variant1949a02dc5d57f99ea3e9123be00c0058398cc8cea02c232784e704bf3174741.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a3c7352210ae1a5ee1b522f4947c198c0bf37251`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/EnergyPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [openingCount](declarations/openingcount.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [closingCount](declarations/closingcount.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [openingCount_append](declarations/openingcount-append.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [closingCount_append](declarations/closingcount-append.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [count_close_replicate_open](declarations/count-close-replicate-open.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [count_open_replicate_open](declarations/count-open-replicate-open.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [count_open_replicate_close](declarations/count-open-replicate-close.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [count_close_replicate_close](declarations/count-close-replicate-close.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [PrefixSafeWith](declarations/prefixsafewith.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [prefixAllowance_exists](declarations/prefixallowance-exists.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [prefixDeficit](declarations/prefixdeficit.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [prefixDeficit_is_prefixSafe](declarations/prefixdeficit-is-prefixsafe.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [prefixDeficit_is_minimal](declarations/prefixdeficit-is-minimal.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [minimumPrefix](declarations/minimumprefix.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [prefixDeficit_eq_max_zero_neg_minimumPrefix](declarations/prefixdeficit-eq-max-zero-neg-minimumprefix.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [terminalSurplus](declarations/terminalsurplus.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [terminalSurplus_eq_finalBalance_add_prefixDeficit](declarations/terminalsurplus-eq-finalbalance-add-prefixdeficit.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [canonicalEndpointCompletion](declarations/canonicalendpointcompletion.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [prepended_prefix_safe](declarations/prepended-prefix-safe.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [append_closes_preserves_prefix_safe](declarations/append-closes-preserves-prefix-safe.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [completed_counts_equal](declarations/completed-counts-equal.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [canonicalEndpointCompletion_is_balanced](declarations/canonicalendpointcompletion-is-balanced.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [StructuralEnergy](declarations/structuralenergy.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [StructuralEnergy.hardVector](declarations/structuralenergy-hardvector.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [StructuralEnergy.vector](declarations/structuralenergy-vector.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [StructuralEnergy.HardAdmissible](declarations/structuralenergy-hardadmissible.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [StructuralEnergy.Less](declarations/structuralenergy-less.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `inductive` | [AnnealDecision](declarations/annealdecision.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [AnnealStep](declarations/annealstep.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [AnnealStep.measureBefore](declarations/annealstep-measurebefore.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [AnnealStep.measureAfter](declarations/annealstep-measureafter.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [AnnealStep.Valid](declarations/annealstep-valid.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [acceptedAnnealStep_decreases_measure](declarations/acceptedannealstep-decreases-measure.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [annealTrace](declarations/annealtrace.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [annealTrace_length_le_fuel](declarations/annealtrace-length-le-fuel.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [annealTrace_terminates](declarations/annealtrace-terminates.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `structure` | [EnumeratedAnnealMinimum](declarations/enumeratedannealminimum.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [exhaustiveAnnealResult](declarations/exhaustiveannealresult.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [exhaustiveAnnealResult_minimal_on_enumerated_candidates](declarations/exhaustiveannealresult-minimal-on-enumerated-candidates.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b7396b3fb1a15a3ca0ee9169a774db1f4cfa3b1600ca004be61bd4687a5af070 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Energy/Variant1949a02dc5d57f99ea3e9123be00c0058398cc8cea02c232784e704bf3174741.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
