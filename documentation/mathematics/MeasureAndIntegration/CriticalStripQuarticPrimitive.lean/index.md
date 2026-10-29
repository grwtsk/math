# Critical Strip Quartic Primitive

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**43 observed declarations and anonymous commands**, 32 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `45c3117e84bd805c0a0c72020247b6e1c76f56bf`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/CriticalStripQuarticPrimitive.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [quartic_unit_bounds](declarations/quartic-unit-bounds.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [quartic_unit_mean](declarations/quartic-unit-mean.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [realKernel](declarations/realkernel.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [kernel](declarations/kernel.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [realKernel_bounds](declarations/realkernel-bounds.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [kernel_norm_le](declarations/kernel-norm-le.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [kernel_measurable](declarations/kernel-measurable.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [kernel_zero_below](declarations/kernel-zero-below.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [kernel_nat](declarations/kernel-nat.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [kernel_locallyIntegrable](declarations/kernel-locallyintegrable.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [kernel_isBigO_top](declarations/kernel-isbigo-top.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [kernel_isBigO_zero](declarations/kernel-isbigo-zero.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [integrand](declarations/integrand.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [tail](declarations/tail.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [integrand_integrable](declarations/integrand-integrable.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [tail_norm_le](declarations/tail-norm-le.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [cell](declarations/cell.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [cell_left](declarations/cell-left.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [cell_right](declarations/cell-right.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [cell_hasDerivAt](declarations/cell-hasderivat.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [kernel_eq_cell](declarations/kernel-eq-cell.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [cell_integral_identity](declarations/cell-integral-identity.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [finite_integral_identity](declarations/finite-integral-identity.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [value_identity](declarations/value-identity.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [integer_tail_identity](declarations/integer-tail-identity.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [centeredKernel](declarations/centeredkernel.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [centeredIntegrand](declarations/centeredintegrand.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [centeredTail](declarations/centeredtail.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [centeredKernel_nat](declarations/centeredkernel-nat.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [centeredKernel_norm_le](declarations/centeredkernel-norm-le.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [power_integrable](declarations/power-integrable.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [centeredIntegrand_integrable](declarations/centeredintegrand-integrable.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [centeredTail_eq](declarations/centeredtail-eq.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [centeredTail_norm_le](declarations/centeredtail-norm-le.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [cubic_tail_identity](declarations/cubic-tail-identity.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [reference](declarations/reference.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [multiplier](declarations/multiplier.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [reference_correction](declarations/reference-correction.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [source_identity](declarations/source-identity.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [finiteModel](declarations/finitemodel.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [finiteModel_residual](declarations/finitemodel-residual.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [finiteModel_error](declarations/finitemodel-error.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [finiteModel_majorant_tendsto_zero](declarations/finitemodel-majorant-tendsto-zero.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=22a2b3f3fc9df16796abcad971288f378089b439cb74f7bf1ea70178d468b05a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripQuarticPrimitive.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
