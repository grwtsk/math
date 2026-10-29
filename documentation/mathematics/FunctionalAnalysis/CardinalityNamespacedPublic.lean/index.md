# Cardinality Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d0c75800e6ddb04d36684a319fe7ba27432d7012`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/CardinalityNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [cantorFunctionAux](declarations/cantorfunctionaux.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [cantorFunctionAux_true](declarations/cantorfunctionaux-true.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [cantorFunctionAux_false](declarations/cantorfunctionaux-false.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [cantorFunctionAux_nonneg](declarations/cantorfunctionaux-nonneg.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [cantorFunctionAux_eq](declarations/cantorfunctionaux-eq.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [cantorFunctionAux_zero](declarations/cantorfunctionaux-zero.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [cantorFunctionAux_succ](declarations/cantorfunctionaux-succ.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [summable_cantor_function](declarations/summable-cantor-function.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [cantorFunction](declarations/cantorfunction.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [cantorFunction_le](declarations/cantorfunction-le.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [cantorFunction_succ](declarations/cantorfunction-succ.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [increasing_cantorFunction](declarations/increasing-cantorfunction.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [cantorFunction_injective](declarations/cantorfunction-injective.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mk_real](declarations/mk-real.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mk_univ_real](declarations/mk-univ-real.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [not_countable_real](declarations/not-countable-real.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mk_Ioi_real](declarations/mk-ioi-real.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mk_Ici_real](declarations/mk-ici-real.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mk_Iio_real](declarations/mk-iio-real.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mk_Iic_real](declarations/mk-iic-real.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mk_Ioo_real](declarations/mk-ioo-real.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mk_Ico_real](declarations/mk-ico-real.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mk_Icc_real](declarations/mk-icc-real.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mk_Ioc_real](declarations/mk-ioc-real.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mk_unitInterval](declarations/mk-unitinterval.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [Real.Ioo_countable_iff](declarations/real-ioo-countable-iff.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [Real.Ico_countable_iff](declarations/real-ico-countable-iff.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [Real.Ioc_countable_iff](declarations/real-ioc-countable-iff.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [Real.Icc_countable_iff](declarations/real-icc-countable-iff.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fb8d568efc06ab85b05f009949f66d2ce566dda04a645b8eedf1f64f4326a932 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Cardinality/Variant06efc32d8d83080d3be68b4650d493c17ec734e445d01df51c1a2bd9e3669ea1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
