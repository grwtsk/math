# Zeta Spin Flip Duality Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**23 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/ZetaSpinFlipDuality/Variantb013a04565a7aea24ecd581f54a94215a1f355cac5900e4a062530e3b5ec5a9c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c9ffc8c74e06c41e2ea14c37d9ba2dded554ecd7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZetaSpinFlipDualityNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [HarmonicFlipDualityPairing](declarations/harmonicflipdualitypairing.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [dualHarmonicBasis](declarations/dualharmonicbasis.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [dual_harmonic_basis_involutive](declarations/dual-harmonic-basis-involutive.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [identityHarmonicFlipDualityPairing](declarations/identityharmonicflipdualitypairing.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [ZetaSpinFlipDualityOperator](declarations/zetaspinflipdualityoperator.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [applyZetaSpinFlipDuality](declarations/applyzetaspinflipduality.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [zeta_spin_flip_duality_involutive](declarations/zeta-spin-flip-duality-involutive.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [identityZetaSpinFlipDualityOperator](declarations/identityzetaspinflipdualityoperator.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [zeta_spin_flip_duality_fixes_control_sector](declarations/zeta-spin-flip-duality-fixes-control-sector.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [zeta_spin_flip_duality_has_harmonic_pairing_surface](declarations/zeta-spin-flip-duality-has-harmonic-pairing-surface.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [zeta_spin_flip_duality_denies_external_function_field_equation_claim](declarations/zeta-spin-flip-duality-denies-external-function-field-equation-claim.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [zeta_spin_flip_duality_denies_external_riemann_zeta_functional_equation](declarations/zeta-spin-flip-duality-denies-external-riemann-zeta-functional-equation.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [zeta_spin_flip_duality_denies_analytic_continuation](declarations/zeta-spin-flip-duality-denies-analytic-continuation.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [zeta_spin_flip_duality_denies_rh](declarations/zeta-spin-flip-duality-denies-rh.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [zeta_spin_flip_duality_denies_theorem_promotion](declarations/zeta-spin-flip-duality-denies-theorem-promotion.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [ZetaSpinFlipFunctionalEquation](declarations/zetaspinflipfunctionalequation.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [zeta_spin_flip_functional_equation_law](declarations/zeta-spin-flip-functional-equation-law.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [zeta_spin_flip_functional_equation_is_finite_carrier_equation](declarations/zeta-spin-flip-functional-equation-is-finite-carrier-equation.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [zeta_spin_flip_functional_equation_denies_external_function_field_claim](declarations/zeta-spin-flip-functional-equation-denies-external-function-field-claim.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [zeta_spin_flip_functional_equation_denies_external_riemann_zeta_claim](declarations/zeta-spin-flip-functional-equation-denies-external-riemann-zeta-claim.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [zeta_spin_flip_functional_equation_denies_analytic_continuation](declarations/zeta-spin-flip-functional-equation-denies-analytic-continuation.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [zeta_spin_flip_functional_equation_denies_rh](declarations/zeta-spin-flip-functional-equation-denies-rh.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [zeta_spin_flip_functional_equation_denies_theorem_promotion](declarations/zeta-spin-flip-functional-equation-denies-theorem-promotion.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4767d64599f03457f24bc6104b1752101291a30bc5f6e4f786241fc2f1a39d6c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ZetaSpinFlipDuality/Variantb013a04565a7aea24ecd581f54a94215a1f355cac5900e4a062530e3b5ec5a9c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
