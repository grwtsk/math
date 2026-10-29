# Factor State Edition1

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**66 observed declarations and anonymous commands**, 46 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/FactorState/Variant26bbf22e9252c6955d5711bef7e106d7b56c844af321e22747835bdde404df83.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `209bed08fc2a3433333b0f842db039b743c437c9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/FactorStateEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [composite_has_small_prime_divisor](declarations/composite-has-small-prime-divisor.md) | 13 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [prime_of_exhausted_horizon](declarations/prime-of-exhausted-horizon.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [prime_of_all_small_primes_excluded](declarations/prime-of-all-small-primes-excluded.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [exclusion_persists](declarations/exclusion-persists.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [horizon_contracts](declarations/horizon-contracts.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [PrimePowers](declarations/primepowers.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [primeProduct](declarations/primeproduct.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [PrimeMap](declarations/primemap.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [primeProduct_add](declarations/primeproduct-add.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [primeProduct_single](declarations/primeproduct-single.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [primeProduct_pos](declarations/primeproduct-pos.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [primeMap_add](declarations/primemap-add.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [primeMap_single](declarations/primemap-single.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [State](declarations/state.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [State.horizon](declarations/state-horizon.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [initial](declarations/initial.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [ExactExtraction](declarations/exactextraction.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ExactExtraction.valuation](declarations/exactextraction-valuation.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [ExactExtraction.after_dvd](declarations/exactextraction-after-dvd.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ExactExtraction.prime_dvd](declarations/exactextraction-prime-dvd.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ExactExtraction.shrinks](declarations/exactextraction-shrinks.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [ExactExtraction.horizon_contracts](declarations/exactextraction-horizon-contracts.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [extraction_scale_fresh](declarations/extraction-scale-fresh.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [extract](declarations/extract.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [exclude](declarations/exclude.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [State.extracted_exact](declarations/state-extracted-exact.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [CompleteFactorization](declarations/completefactorization.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [CompleteFactorization.exact](declarations/completefactorization-exact.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [ResidualOne](declarations/residualone.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `structure` | [PrimeResidual](declarations/primeresidual.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [primeResidual_of_coverage](declarations/primeresidual-of-coverage.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [closeOne](declarations/closeone.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [closePrime](declarations/closeprime.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [terminal_cases_disjoint](declarations/terminal-cases-disjoint.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [closePrime_last_depth](declarations/closeprime-last-depth.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `structure` | [Refinement](declarations/refinement.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Refinement.residual_dvd](declarations/refinement-residual-dvd.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Refinement.negative_persists](declarations/refinement-negative-persists.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Refinement.horizon_contracts](declarations/refinement-horizon-contracts.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [Refinement.trans](declarations/refinement-trans.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Refinement.preserves_conservation](declarations/refinement-preserves-conservation.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [extractionRefinement](declarations/extractionrefinement.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `structure` | [DivisorSplit](declarations/divisorsplit.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [DivisorSplit.composite](declarations/divisorsplit-composite.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [certifyDivisorSplit](declarations/certifydivisorsplit.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [DivisorSplit.preserves_conservation](declarations/divisorsplit-preserves-conservation.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [DivisorSplit.horizons_contract](declarations/divisorsplit-horizons-contract.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [fixture_two_terminal](declarations/fixture-two-terminal.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [fixture_three_terminal](declarations/fixture-three-terminal.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [fixture_four_extraction](declarations/fixture-four-extraction.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [fixture_four_terminal](declarations/fixture-four-terminal.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [fixture_four_not_prime_terminal](declarations/fixture-four-not-prime-terminal.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [fixture_four_complete](declarations/fixture-four-complete.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [fixture_twelve_extraction](declarations/fixture-twelve-extraction.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [twelveAfter](declarations/twelveafter.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [fixture_twelve_horizon](declarations/fixture-twelve-horizon.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [fixture_twelve_prime_terminal](declarations/fixture-twelve-prime-terminal.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [fixture_twelve_complete](declarations/fixture-twelve-complete.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [fixture_three_extraction](declarations/fixture-three-extraction.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [fixture_twelve_composition](declarations/fixture-twelve-composition.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [fixture_partial_extraction_rejected](declarations/fixture-partial-extraction-rejected.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [fixture_prime_equality_guard](declarations/fixture-prime-equality-guard.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [fixture_missing_horizon_coverage](declarations/fixture-missing-horizon-coverage.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [fixture_unrelated_residual_rejected](declarations/fixture-unrelated-residual-rejected.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [fixture_composite_divisor_collapse](declarations/fixture-composite-divisor-collapse.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [fixture_bad_divisor_rejected](declarations/fixture-bad-divisor-rejected.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4c7fff3cb6e5e2d1d78e6ddaf4f29f624e10e9090f1b6d3073fe3e1d545bba13 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/FactorState/Variant26bbf22e9252c6955d5711bef7e106d7b56c844af321e22747835bdde404df83.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
