# Prime Tail Return

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/VonMangoldt/PrimeTailReturn.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bcb85000e7df8de54282661104b760a60b626e73`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/PrimeTailReturn.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [removedCoefficient](declarations/removedcoefficient.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [primeCoefficient](declarations/primecoefficient.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [tailSource](declarations/tailsource.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [tailEnergy](declarations/tailenergy.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [removedMass](declarations/removedmass.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [removedTail](declarations/removedtail.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [removedEnergy](declarations/removedenergy.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [primeMass0](declarations/primemass0.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [primeTail](declarations/primetail.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [primeEnergy](declarations/primeenergy.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [coefficient_partition](declarations/coefficient-partition.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [removedCoefficient_nonneg](declarations/removedcoefficient-nonneg.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [tailSource_eq_literal](declarations/tailsource-eq-literal.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [integral_tailSource](declarations/integral-tailsource.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [tailSource_integrable](declarations/tailsource-integrable.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [tailSource_square_integrable](declarations/tailsource-square-integrable.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [augmented_eq_tailEnergy](declarations/augmented-eq-tailenergy.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [removedTail_integrable](declarations/removedtail-integrable.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [removedTail_square_integrable](declarations/removedtail-square-integrable.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [primeTail_integrable](declarations/primetail-integrable.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [primeTail_square_integrable](declarations/primetail-square-integrable.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [removedMass_nonneg](declarations/removedmass-nonneg.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [source_mass_partition](declarations/source-mass-partition.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [source_tail_partition](declarations/source-tail-partition.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [primeTail_eq_literal](declarations/primetail-eq-literal.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [primeMass0_eq_literal](declarations/primemass0-eq-literal.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [removedEnergy_nonneg](declarations/removedenergy-nonneg.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [removedEnergy_le_mass](declarations/removedenergy-le-mass.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [all_energy_le_prime_and_removed](declarations/all-energy-le-prime-and-removed.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [prime_energy_le_all_and_removed](declarations/prime-energy-le-all-and-removed.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [all_energy_le_prime_and_mass](declarations/all-energy-le-prime-and-mass.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [prime_energy_le_all_and_mass](declarations/prime-energy-le-all-and-mass.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2af9b25f9ad07500b3c24f471ef02a8ebcee890384d753b1354ee01867a45000 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/PrimeTailReturn.lean","GRWTSK/NumberTheory/VonMangoldt/PrimeTailReturn.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
