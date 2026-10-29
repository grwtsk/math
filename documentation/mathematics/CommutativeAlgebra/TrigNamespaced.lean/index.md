# Trig Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/Trig/Variantf190716d261dd2604b5494fa449571b91e7d1b938550ccfcf3e87a8cb53fb829.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4e85e53361afa174b39a1a749e9fa643b7cb6016`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/TrigNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [sinTaylorCoeffs](declarations/sintaylorcoeffs.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [sinTaylorPoly](declarations/sintaylorpoly.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [sinRemainderBound](declarations/sinremainderbound.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [sinRemainderBound_nonneg](declarations/sinremainderbound-nonneg.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [cosTaylorCoeffs](declarations/costaylorcoeffs.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [cosTaylorPoly](declarations/costaylorpoly.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [cosRemainderBound](declarations/cosremainderbound.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [cosRemainderBound_nonneg](declarations/cosremainderbound-nonneg.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [sincTaylorCoeffs](declarations/sinctaylorcoeffs.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [sincTaylorPoly](declarations/sinctaylorpoly.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [sincRemainderBound](declarations/sincremainderbound.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [sincRemainderBound_nonneg](declarations/sincremainderbound-nonneg.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [tmSin](declarations/tmsin.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [tmCos](declarations/tmcos.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [tmSinc](declarations/tmsinc.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [iteratedDeriv_sin_cos_zero](declarations/iteratedderiv-sin-cos-zero.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [iteratedDeriv_sin_zero](declarations/iteratedderiv-sin-zero.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [iteratedDeriv_cos_zero](declarations/iteratedderiv-cos-zero.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [iteratedDeriv_sin_zero_even](declarations/iteratedderiv-sin-zero-even.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [iteratedDeriv_sin_zero_odd](declarations/iteratedderiv-sin-zero-odd.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [sinTaylorCoeffs_eq_iteratedDeriv](declarations/sintaylorcoeffs-eq-iteratedderiv.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [iteratedDeriv_cos_zero_even](declarations/iteratedderiv-cos-zero-even.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [iteratedDeriv_cos_zero_odd](declarations/iteratedderiv-cos-zero-odd.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [cosTaylorCoeffs_eq_iteratedDeriv](declarations/costaylorcoeffs-eq-iteratedderiv.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [sinTaylorPoly_aeval_eq](declarations/sintaylorpoly-aeval-eq.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [cosTaylorPoly_aeval_eq](declarations/costaylorpoly-aeval-eq.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [abs_le_interval_radius](declarations/abs-le-interval-radius.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mem_Icc_of_mem_interval](declarations/mem-icc-of-mem-interval.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [tmSin_correct](declarations/tmsin-correct.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [tmCos_correct](declarations/tmcos-correct.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [contDiff_sinc](declarations/contdiff-sinc.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [iteratedDeriv_sinc_zero](declarations/iteratedderiv-sinc-zero.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [sincTaylorCoeffs_eq_iteratedDeriv](declarations/sinctaylorcoeffs-eq-iteratedderiv.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [sincTaylorPoly_aeval_eq](declarations/sinctaylorpoly-aeval-eq.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [tmSinc_correct](declarations/tmsinc-correct.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a50c0ca48613ae94c89be6c66448f466871e69fb46846e7d5d09fd8821e1f88 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Trig/Variantf190716d261dd2604b5494fa449571b91e7d1b938550ccfcf3e87a8cb53fb829.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
