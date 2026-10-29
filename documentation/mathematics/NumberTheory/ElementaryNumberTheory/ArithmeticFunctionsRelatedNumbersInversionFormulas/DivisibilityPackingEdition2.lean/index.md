# Divisibility Packing Edition2

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**43 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b89210c715e559734dba1925ff08544d82b78544`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DivisibilityPackingEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [primeSupport](declarations/primesupport.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mem_primeSupport](declarations/mem-primesupport.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Modulus](declarations/modulus.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [modulus_pos](declarations/modulus-pos.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [modulus_neZero](declarations/modulus-nezero.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [prime_neZero](declarations/prime-nezero.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [forbiddenResidues](declarations/forbiddenresidues.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [localForbiddenCount](declarations/localforbiddencount.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [localForbiddenCount_le](declarations/localforbiddencount-le.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [localReduction](declarations/localreduction.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [RawAdmissible](declarations/rawadmissible.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [RawPacking](declarations/rawpacking.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [rawPackingFintype](declarations/rawpackingfintype.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [primeSupport_pairwise](declarations/primesupport-pairwise.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [residueEquiv](declarations/residueequiv.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [residueEquiv_apply](declarations/residueequiv-apply.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [rawPackingEquiv](declarations/rawpackingequiv.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [rawPacking_card](declarations/rawpacking-card.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [rawDensity](declarations/rawdensity.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [rawPacking_density](declarations/rawpacking-density.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [IntegerSurvivor](declarations/integersurvivor.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [integerSurvivor_mono](declarations/integersurvivor-mono.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [integerSurvivor_iff_rawAdmissible](declarations/integersurvivor-iff-rawadmissible.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [integerSurvivor_iff_product](declarations/integersurvivor-iff-product.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [primeSupport_mono](declarations/primesupport-mono.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [modulus_dvd_of_le](declarations/modulus-dvd-of-le.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [reduction](declarations/reduction.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [localReduction_reduction](declarations/localreduction-reduction.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [rawAdmissible_reduce_iff](declarations/rawadmissible-reduce-iff.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [rawAdmissible_of_finer](declarations/rawadmissible-of-finer.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [singleton_forbidden_count](declarations/singleton-forbidden-count.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [singleton_density](declarations/singleton-density.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [totient_prime_product](declarations/totient-prime-product.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [singleton_card_totient](declarations/singleton-card-totient.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [singleton_density_totient](declarations/singleton-density-totient.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [twin_forbidden_two](declarations/twin-forbidden-two.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [twin_forbidden_large](declarations/twin-forbidden-large.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [twin_density](declarations/twin-density.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [composite_raw_survivor](declarations/composite-raw-survivor.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [visible_prime_raw_excluded](declarations/visible-prime-raw-excluded.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [translated_prime_raw_excluded](declarations/translated-prime-raw-excluded.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [empty_support_card](declarations/empty-support-card.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [twin_five_card](declarations/twin-five-card.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=707d2a8c22df57ba8142175788b810a69c69bd90900808d1b83500874511fa86 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DivisibilityPacking/Variantc68835148f54fee84a2dd3d4d47d678c6fb0bfdfcab09070594ffb8a967e2e8e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
