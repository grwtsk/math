# Real Realization Of Every Infinite Positive Partial Quotient Stream

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 33 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f6a74dd8c263025232fa84edb01076723628332`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/RealRealizationOfEveryInfinitePositivePartialQuotientStream.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [finiteTail](declarations/finitetail.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [finiteTail_bounds](declarations/finitetail-bounds.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [tailBox](declarations/tailbox.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [prefixSet](declarations/prefixset.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [tailBox_compact](declarations/tailbox-compact.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [tailBox_closed](declarations/tailbox-closed.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [prefixSet_closed](declarations/prefixset-closed.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [prefixSet_succ_subset](declarations/prefixset-succ-subset.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [finiteWitness](declarations/finitewitness.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [finiteWitness_mem_box](declarations/finitewitness-mem-box.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [finiteWitness_recurrence](declarations/finitewitness-recurrence.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [prefixSet_nonempty](declarations/prefixset-nonempty.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [prefixSet_zero](declarations/prefixset-zero.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [exists_complete_quotients](declarations/exists-complete-quotients.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [complete_quotient_recurrence](declarations/complete-quotient-recurrence.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [complete_quotient_bounds](declarations/complete-quotient-bounds.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [complete_quotient_floor](declarations/complete-quotient-floor.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [complete_quotient_fract](declarations/complete-quotient-fract.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [complete_quotient_pair](declarations/complete-quotient-pair.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [complete_quotient_stream](declarations/complete-quotient-stream.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [reciprocal_frequency_bounds](declarations/reciprocal-frequency-bounds.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [reciprocal_frequency_realization](declarations/reciprocal-frequency-realization.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [exists_frequency_realization](declarations/exists-frequency-realization.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [frequency_realization_unique](declarations/frequency-realization-unique.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [realizedFrequency](declarations/realizedfrequency.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [realizedFrequency_bounds](declarations/realizedfrequency-bounds.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [realizedFrequency_realization](declarations/realizedfrequency-realization.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [realizedFrequency_irrational](declarations/realizedfrequency-irrational.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [realizedFrequency_eq](declarations/realizedfrequency-eq.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [realizedFrequency_convergence](declarations/realizedfrequency-convergence.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [frequencyExponent](declarations/frequencyexponent.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [native_denominator_readback](declarations/native-denominator-readback.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [frequencyExponent_eq](declarations/frequencyexponent-eq.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [source_frequency_exists](declarations/source-frequency-exists.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [allOnes_frequency_exists](declarations/allones-frequency-exists.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [spike_frequency_exists](declarations/spike-frequency-exists.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [selected_spike_frequency_exists](declarations/selected-spike-frequency-exists.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [prescribed_finite_exponent_exists](declarations/prescribed-finite-exponent-exists.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [infinite_exponent_exists](declarations/infinite-exponent-exists.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4a493162327d4b784c2effdd079774d50ae9d9415fee6c4af9ed40e7273c06cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/BranchFrequencyExistence/Variant68b4cd02120ba121f162802f805fd2cd7133ac43b0dd5210e081f8d410971919.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
