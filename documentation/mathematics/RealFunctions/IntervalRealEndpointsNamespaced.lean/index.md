# Interval Real Endpoints Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a8bfe74749149205173be5f0435832353e0c6d91`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/RealFunctions/IntervalRealEndpointsNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [IntervalReal](declarations/intervalreal.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [toSet](declarations/toset.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mem_def](declarations/mem-def.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mem_toSet_iff](declarations/mem-toset-iff.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [singleton](declarations/singleton.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mem_singleton](declarations/mem-singleton.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [ofRat](declarations/ofrat.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [mem_ofRat](declarations/mem-ofrat.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [add](declarations/add.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mem_add](declarations/mem-add.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [neg](declarations/neg.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mem_neg](declarations/mem-neg.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [min4](declarations/min4.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [max4](declarations/max4.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [mul](declarations/mul.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [expInterval](declarations/expinterval.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mem_expInterval](declarations/mem-expinterval.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [IntervalRealPos](declarations/intervalrealpos.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [logInterval](declarations/loginterval.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mem_logInterval](declarations/mem-loginterval.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [sinInterval](declarations/sininterval.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mem_sinInterval](declarations/mem-sininterval.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [cosInterval](declarations/cosinterval.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mem_cosInterval](declarations/mem-cosinterval.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [atanInterval](declarations/ataninterval.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mem_atanInterval](declarations/mem-ataninterval.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [arsinh_deriv_abs_le_one](declarations/arsinh-deriv-abs-le-one.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [abs_arsinh_le_abs](declarations/abs-arsinh-le-abs.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [arsinhInterval](declarations/arsinhinterval.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mem_arsinhInterval](declarations/mem-arsinhinterval.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [sinhInterval](declarations/sinhinterval.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mem_sinhInterval](declarations/mem-sinhinterval.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [coshInterval](declarations/coshinterval.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [mem_coshInterval](declarations/mem-coshinterval.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [sqrtInterval](declarations/sqrtinterval.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [sqrt_le_max_one](declarations/sqrt-le-max-one.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [mem_sqrtInterval](declarations/mem-sqrtinterval.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b8f6de813684e57361be3e27924796d4c66cdec8464301e96b251c184e2d25f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IntervalRealEndpoints/Variant4085775e585c6a962737cd4505a558f5a997094d82b989b0cc941cccc2208d94.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
