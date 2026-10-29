# Prime Shell Decomposition

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 30 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeShellDecomposition/Variant5b5968f926e6e43aa51cdeb45bdca75eed07d0f371d31f9554f6c7bccc189716.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `41efb9b91729ef198825a01dacccfc03fad0a2b7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeShellDecomposition.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [horizonShell](declarations/horizonshell.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [matureState](declarations/maturestate.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [matureWave](declarations/maturewave.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [signedShell](declarations/signedshell.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mem_primeInventory](declarations/mem-primeinventory.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [mem_horizonShell](declarations/mem-horizonshell.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [primeInventory_monotone](declarations/primeinventory-monotone.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [inventory_split](declarations/inventory-split.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [shell_old_disjoint](declarations/shell-old-disjoint.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [primeProduct_at_least_two](declarations/primeproduct-at-least-two.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [primeState_before_first_prime](declarations/primestate-before-first-prime.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [late_prime_insert](declarations/late-prime-insert.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [late_block_exact](declarations/late-block-exact.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [shell_prime_late](declarations/shell-prime-late.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [shell_composite_above](declarations/shell-composite-above.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [shell_composite_atom_zero](declarations/shell-composite-atom-zero.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [pickup_split](declarations/pickup-split.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [shell_zero_before](declarations/shell-zero-before.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [matureWave_equals_previous_pickup](declarations/maturewave-equals-previous-pickup.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `abbrev` | [horizonWave](declarations/horizonwave.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [horizonWave_eq_sum](declarations/horizonwave-eq-sum.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [maturityEcho](declarations/maturityecho.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mature_source_eq_old_pickup_add_echo](declarations/mature-source-eq-old-pickup-add-echo.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [maturityEcho_zero_before](declarations/maturityecho-zero-before.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [matureWave_eq_old_pickup_add_echo](declarations/maturewave-eq-old-pickup-add-echo.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [matureState_eq_old_pickup_add_echo](declarations/maturestate-eq-old-pickup-add-echo.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mature_equals_previous_pickup](declarations/mature-equals-previous-pickup.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [matureState_continuous](declarations/maturestate-continuous.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [old_endpoint](declarations/old-endpoint.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [prime_entry_zero](declarations/prime-entry-zero.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [pickup_split_restriction](declarations/pickup-split-restriction.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [matureWave_memLp_two](declarations/maturewave-memlp-two.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [matureWave_square_integrable](declarations/maturewave-square-integrable.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [shellSource_continuous](declarations/shellsource-continuous.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [horizonWave_square_integrable](declarations/horizonwave-square-integrable.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [horizonWave_memLp_two](declarations/horizonwave-memlp-two.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fc7ee77a1a7a8d77f1bbf742e10445a2e082f115beb45c6d225e5d6c39a06e2b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeShellDecomposition/Variant5b5968f926e6e43aa51cdeb45bdca75eed07d0f371d31f9554f6c7bccc189716.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
