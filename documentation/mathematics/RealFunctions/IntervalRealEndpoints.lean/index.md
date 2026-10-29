# Interval Real Endpoints

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `28b572b0cc4a3448c2243660b9aca79c59b34ff8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/IntervalRealEndpoints.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [IntervalReal](declarations/intervalreal.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [toSet](declarations/toset.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mem_def](declarations/mem-def.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mem_toSet_iff](declarations/mem-toset-iff.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [singleton](declarations/singleton.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mem_singleton](declarations/mem-singleton.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [ofRat](declarations/ofrat.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mem_ofRat](declarations/mem-ofrat.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [add](declarations/add.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mem_add](declarations/mem-add.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [neg](declarations/neg.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mem_neg](declarations/mem-neg.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [min4](declarations/min4.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [max4](declarations/max4.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [mul](declarations/mul.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [expInterval](declarations/expinterval.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mem_expInterval](declarations/mem-expinterval.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [IntervalRealPos](declarations/intervalrealpos.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [logInterval](declarations/loginterval.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mem_logInterval](declarations/mem-loginterval.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [sinInterval](declarations/sininterval.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mem_sinInterval](declarations/mem-sininterval.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [cosInterval](declarations/cosinterval.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mem_cosInterval](declarations/mem-cosinterval.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [atanInterval](declarations/ataninterval.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mem_atanInterval](declarations/mem-ataninterval.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [arsinh_deriv_abs_le_one](declarations/arsinh-deriv-abs-le-one.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [abs_arsinh_le_abs](declarations/abs-arsinh-le-abs.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [arsinhInterval](declarations/arsinhinterval.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mem_arsinhInterval](declarations/mem-arsinhinterval.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [sinhInterval](declarations/sinhinterval.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mem_sinhInterval](declarations/mem-sinhinterval.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [coshInterval](declarations/coshinterval.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [mem_coshInterval](declarations/mem-coshinterval.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [sqrtInterval](declarations/sqrtinterval.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [sqrt_le_max_one](declarations/sqrt-le-max-one.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [mem_sqrtInterval](declarations/mem-sqrtinterval.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=efb83131d24a3353a5a213a3c96670507c4a80d4680f0ac2b2c8b32f11ece7de -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant59023618cd1996de2938dd6c8236f9fca053bb36afa3b07ad6e436ab4edd0dd5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
