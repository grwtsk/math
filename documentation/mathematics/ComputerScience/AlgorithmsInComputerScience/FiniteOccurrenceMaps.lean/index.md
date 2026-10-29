# Finite Occurrence Maps

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fdeec763fde584ab6349c5a3fa0d412cd9394fb2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/FiniteOccurrenceMaps.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Occurrence](declarations/occurrence.md) | 13 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Output](declarations/output.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [Reference](declarations/reference.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [Woven](declarations/woven.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [OutputsConsistent](declarations/outputsconsistent.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [OccurrencesConsistent](declarations/occurrencesconsistent.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [outputConsistencyCheck](declarations/outputconsistencycheck.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [occurrenceConsistencyCheck](declarations/occurrenceconsistencycheck.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [outputConsistencyCheck_eq_true_iff](declarations/outputconsistencycheck-eq-true-iff.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [occurrenceConsistencyCheck_eq_true_iff](declarations/occurrenceconsistencycheck-eq-true-iff.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [lookup](declarations/lookup.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [Covered](declarations/covered.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [coverageCheck](declarations/coveragecheck.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [coverageCheck_eq_true_iff](declarations/coveragecheck-eq-true-iff.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [covered_occurrences_consistent](declarations/covered-occurrences-consistent.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [references](declarations/references.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [decode](declarations/decode.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [reference_length_preserved](declarations/reference-length-preserved.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [decode_references_of_coverage](declarations/decode-references-of-coverage.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [PlanValid](declarations/planvalid.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [planCheck](declarations/plancheck.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [planCheck_eq_true_iff](declarations/plancheck-eq-true-iff.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [weave](declarations/weave.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [weave_success_iff](declarations/weave-success-iff.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [weave_preserves_every_occurrence](declarations/weave-preserves-every-occurrence.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [weave_respects_finite_bounds](declarations/weave-respects-finite-bounds.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [over_occurrence_bound_rejected](declarations/over-occurrence-bound-rejected.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [same_path_conflicting_payloads_rejected](declarations/same-path-conflicting-payloads-rejected.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [conflict_blocks_weave](declarations/conflict-blocks-weave.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [shared_output_preserves_two_occurrences](declarations/shared-output-preserves-two-occurrences.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [missing_slot_decode_failure](declarations/missing-slot-decode-failure.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [readsetCheck](declarations/readsetcheck.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [readsetCheck_eq_true_iff](declarations/readsetcheck-eq-true-iff.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [transition](declarations/transition.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [stale_readset_blocks_transition](declarations/stale-readset-blocks-transition.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [transition_success_iff](declarations/transition-success-iff.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `example` | [(anonymous)](declarations/example.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `example` | [(anonymous)](declarations/example-source-edition-3.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `example` | [(anonymous)](declarations/example-source-edition-2.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7e7bc252ca613b76299c4c7bbf83e374ae37c246023ae3aba9c1d437e1bbc6b5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
