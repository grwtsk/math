# Critical Strip Cubic Primitive

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**43 observed declarations and anonymous commands**, 32 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f8e9045130f5c155966f2e920d03f508ae13011`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/CriticalStripCubicPrimitive.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [cubic_unit_bound](declarations/cubic-unit-bound.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [realKernel](declarations/realkernel.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [kernel](declarations/kernel.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [kernel_norm_le](declarations/kernel-norm-le.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [kernel_measurable](declarations/kernel-measurable.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [kernel_zero_below](declarations/kernel-zero-below.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [kernel_nat](declarations/kernel-nat.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [kernel_locallyIntegrable](declarations/kernel-locallyintegrable.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [kernel_isBigO_top](declarations/kernel-isbigo-top.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [kernel_isBigO_zero](declarations/kernel-isbigo-zero.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [integrand](declarations/integrand.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [tail](declarations/tail.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [adjustedIntegrand](declarations/adjustedintegrand.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [adjustedTail](declarations/adjustedtail.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [integrand_integrable](declarations/integrand-integrable.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [correction_integrable](declarations/correction-integrable.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [adjusted_integrable](declarations/adjusted-integrable.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [adjusted_kernel_norm_le](declarations/adjusted-kernel-norm-le.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [tail_norm_le](declarations/tail-norm-le.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [adjustedTail_norm_le](declarations/adjustedtail-norm-le.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [adjustedTail_eq](declarations/adjustedtail-eq.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [cell](declarations/cell.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [cellDerivative](declarations/cellderivative.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [cell_left](declarations/cell-left.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [cell_right](declarations/cell-right.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [derivative_left](declarations/derivative-left.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [derivative_right](declarations/derivative-right.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [cell_hasDerivAt](declarations/cell-hasderivat.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [cellDerivative_hasDerivAt](declarations/cellderivative-hasderivat.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [kernel_eq_cell](declarations/kernel-eq-cell.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [cell_integral_identity](declarations/cell-integral-identity.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [finite_integral_identity](declarations/finite-integral-identity.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [adjusted_value_identity](declarations/adjusted-value-identity.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [adjusted_integer_tail_identity](declarations/adjusted-integer-tail-identity.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [integer_tail_identity](declarations/integer-tail-identity.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [value_identity](declarations/value-identity.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [reference](declarations/reference.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [multiplier](declarations/multiplier.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [source_identity](declarations/source-identity.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [finiteModel](declarations/finitemodel.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [finiteModel_residual](declarations/finitemodel-residual.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [finiteModel_error](declarations/finitemodel-error.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [finiteModel_majorant_tendsto_zero](declarations/finitemodel-majorant-tendsto-zero.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bfb409f4cee5690f8a5bb253dfec11577337d451f723d117d0549c4977886970 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
