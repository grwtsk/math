# Mobius Euler Product

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Variante94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d7a51724aa6e28e1cd249456d4f0a61772563171`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/MobiusEulerProduct.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimeWindow](declarations/primewindow.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [SquarefreeSupport](declarations/squarefreesupport.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [FiniteMobiusCoefficient](declarations/finitemobiuscoefficient.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [coefficientFromFactorCount](declarations/coefficientfromfactorcount.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [finiteMobiusCoefficientFromSupport](declarations/finitemobiuscoefficientfromsupport.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [finiteSubproductsWithFactorCount](declarations/finitesubproductswithfactorcount.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [findSubproductFactorCount](declarations/findsubproductfactorcount.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [finiteMobiusCoefficient](declarations/finitemobiuscoefficient-source-edition-2.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `inductive` | [EulerProductBridgeResidue](declarations/eulerproductbridgeresidue.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [MobiusEulerProductSurface](declarations/mobiuseulerproductsurface.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [defaultPrimeWindow](declarations/defaultprimewindow.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [defaultEulerProductBridgeResidues](declarations/defaulteulerproductbridgeresidues.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [defaultMobiusEulerProductSurface](declarations/defaultmobiuseulerproductsurface.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [finite_squarefree_even_factor_count_coeff_plus](declarations/finite-squarefree-even-factor-count-coeff-plus.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [finite_squarefree_odd_factor_count_coeff_minus](declarations/finite-squarefree-odd-factor-count-coeff-minus.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [finite_nonsquarefree_coeff_zero](declarations/finite-nonsquarefree-coeff-zero.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [support_squarefree_even_factor_count_coeff_plus](declarations/support-squarefree-even-factor-count-coeff-plus.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [support_squarefree_odd_factor_count_coeff_minus](declarations/support-squarefree-odd-factor-count-coeff-minus.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [support_nonsquarefree_coeff_zero](declarations/support-nonsquarefree-coeff-zero.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [support_out_of_window_coeff_zero](declarations/support-out-of-window-coeff-zero.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [default_surface_has_finite_coefficient_law](declarations/default-surface-has-finite-coefficient-law.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [default_surface_denies_infinite_euler_product_claim](declarations/default-surface-denies-infinite-euler-product-claim.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [default_surface_denies_pnt_claim](declarations/default-surface-denies-pnt-claim.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [default_surface_denies_rh_claim](declarations/default-surface-denies-rh-claim.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [default_surface_retains_analytic_residue](declarations/default-surface-retains-analytic-residue.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [finite_mobius_surface_does_not_clear_rh_boundary](declarations/finite-mobius-surface-does-not-clear-rh-boundary.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [finite_mobius_surface_does_not_clear_pnt_bridge](declarations/finite-mobius-surface-does-not-clear-pnt-bridge.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=20d08c086b5618ac7c55801f96679596737c0ef8e9f087d9dae97882e5d9bc86 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MobiusEulerProduct/Variante94b754ac5596da8be194eb63145b005eccf6e2a4eb77f7255d17764bce5b19e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
