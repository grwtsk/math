# Liouville Antipodal Pair Count

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**46 observed declarations and anonymous commands**, 40 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f8a3e4dc67c47ba68cc588cb5d61ab5e41c6c6c3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/LiouvilleAntipodalPairCount.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsAntipodalPair](declarations/isantipodalpair.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [antipodalPairCount](declarations/antipodalpaircount.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [antipodalPairCount_empty](declarations/antipodalpaircount-empty.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [antipodal_factor](declarations/antipodal-factor.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [antipodal_character_product](declarations/antipodal-character-product.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [antipodal_character_product_rat](declarations/antipodal-character-product-rat.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [antipodal_character_powerset](declarations/antipodal-character-powerset.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [antipodal_product_pair_sum](declarations/antipodal-product-pair-sum.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [sum_powerset_product_commute](declarations/sum-powerset-product-commute.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [sum_powerset_empty_and_nonempty](declarations/sum-powerset-empty-and-nonempty.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [sum_root_pair_factor](declarations/sum-root-pair-factor.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [normalized_root_pair_factor](declarations/normalized-root-pair-factor.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [antipodal_subset_product_factor](declarations/antipodal-subset-product-factor.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [antipodal_subset_normalized_factor](declarations/antipodal-subset-normalized-factor.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [shiftSubtypeEquiv](declarations/shiftsubtypeequiv.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [shiftSubsetValues](declarations/shiftsubsetvalues.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [shiftSubsetValues_subset](declarations/shiftsubsetvalues-subset.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [shiftSubsetValues_mem_iff](declarations/shiftsubsetvalues-mem-iff.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [shiftSubsetValues_card](declarations/shiftsubsetvalues-card.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [shiftSubsetOfValues](declarations/shiftsubsetofvalues.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [shiftSubsetOfValues_values](declarations/shiftsubsetofvalues-values.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [shiftSubsetValues_ofValues](declarations/shiftsubsetvalues-ofvalues.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [shiftPowersetEquiv](declarations/shiftpowersetequiv.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [shiftSubsetValues_prod](declarations/shiftsubsetvalues-prod.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [sum_powerset_eq_subtype_sum](declarations/sum-powerset-eq-subtype-sum.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [antipodalPairCount_le_square](declarations/antipodalpaircount-le-square.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [antipodalPairCount_zero](declarations/antipodalpaircount-zero.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [antipodalPairFrequency_bounds](declarations/antipodalpairfrequency-bounds.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [subtype_character_sum_empty_split](declarations/subtype-character-sum-empty-split.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [empty_character_root_pair_normalization](declarations/empty-character-root-pair-normalization.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [normalized_antipodal_product_eq_frequency](declarations/normalized-antipodal-product-eq-frequency.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [normalized_powerset_pair_sum_commute](declarations/normalized-powerset-pair-sum-commute.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [normalized_antipodal_character_term](declarations/normalized-antipodal-character-term.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [normalized_powerset_character_sum](declarations/normalized-powerset-character-sum.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [shiftSubsetValues_sourceMean](declarations/shiftsubsetvalues-sourcemean.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [shiftSubsetValues_residualMean](declarations/shiftsubsetvalues-residualmean.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [normalized_subtype_character_term](declarations/normalized-subtype-character-term.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [normalized_nonempty_subtype_characters_eq_mixed](declarations/normalized-nonempty-subtype-characters-eq-mixed.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [normalized_full_subtype_characters_eq_one_add_mixed](declarations/normalized-full-subtype-characters-eq-one-add-mixed.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [normalized_full_powerset_eq_subtype_characters](declarations/normalized-full-powerset-eq-subtype-characters.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [dyadicSignedMixedEnergy_eq_antipodal_count](declarations/dyadicsignedmixedenergy-eq-antipodal-count.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [canonicalOddLiftEnergy_eq_antipodal_count](declarations/canonicaloddliftenergy-eq-antipodal-count.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [canonicalOddLiftEnergy_antipodal_lower_bound](declarations/canonicaloddliftenergy-antipodal-lower-bound.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [canonicalOddLiftEnergy_le_iff_antipodal_budget](declarations/canonicaloddliftenergy-le-iff-antipodal-budget.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [canonicalOddLiftEnergy_le_of_antipodal_margin](declarations/canonicaloddliftenergy-le-of-antipodal-margin.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [canonicalOddLiftCyclicTV_le_of_antipodal_margin](declarations/canonicaloddliftcyclictv-le-of-antipodal-margin.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ec6225c74a77d0c4a2c243e7b839920070bcbf9be165fd33ce90fe60c29a62c1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean","GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleAntipodalPairCount.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
