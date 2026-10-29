# Linear Locally Finite Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb2ccd77b7e3cc42c822fda93b9d790da22b783a227d8fab8f23c33a7ac5d4e71.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be182f01e28e320f42e9e6d25ac8c489c339e5f6`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/LinearLocallyFiniteNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](declarations/instance.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [isSuccArchimedean_of_isPredArchimedean](declarations/issuccarchimedean-of-ispredarchimedean.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [isSuccArchimedean_iff_isPredArchimedean](declarations/issuccarchimedean-iff-ispredarchimedean.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [succFn](declarations/succfn.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [succFn_spec](declarations/succfn-spec.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [le_succFn](declarations/le-succfn.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [isGLB_Ioc_of_isGLB_Ioi](declarations/isglb-ioc-of-isglb-ioi.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [isMax_of_succFn_le](declarations/ismax-of-succfn-le.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [succFn_le_of_lt](declarations/succfn-le-of-lt.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [le_of_lt_succFn](declarations/le-of-lt-succfn.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [succOrder](declarations/succorder.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [predOrder](declarations/predorder.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [toZ](declarations/toz.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [toZ_of_ge](declarations/toz-of-ge.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [toZ_of_lt](declarations/toz-of-lt.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [toZ_of_eq](declarations/toz-of-eq.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [iterate_succ_toZ](declarations/iterate-succ-toz.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [iterate_pred_toZ](declarations/iterate-pred-toz.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [toZ_nonneg](declarations/toz-nonneg.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [toZ_neg](declarations/toz-neg.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [toZ_iterate_succ_le](declarations/toz-iterate-succ-le.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [toZ_iterate_pred_ge](declarations/toz-iterate-pred-ge.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toZ_iterate_succ_of_not_isMax](declarations/toz-iterate-succ-of-not-ismax.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [toZ_iterate_pred_of_not_isMin](declarations/toz-iterate-pred-of-not-ismin.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [toZ_strictMono](declarations/toz-strictmono.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [injective_toZ](declarations/injective-toz.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toZ_le_toZ](declarations/toz-le-toz.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toZ_lt_toZ](declarations/toz-lt-toz.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [toZ_inj](declarations/toz-inj.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [toZ_iterate_succ](declarations/toz-iterate-succ.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [toZ_iterate_pred](declarations/toz-iterate-pred.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [orderIsoRangeToZOfLinearSuccPredArch](declarations/orderisorangetozoflinearsuccpredarch.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [orderIsoIntOfLinearSuccPredArch](declarations/orderisointoflinearsuccpredarch.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [orderIsoNatOfLinearSuccPredArch](declarations/orderisonatoflinearsuccpredarch.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [orderIsoRangeOfLinearSuccPredArch](declarations/orderisorangeoflinearsuccpredarch.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eef7e9ed042c5a11a7c023b21c21826d24ae6366f6907b91836dfb9acd72b2d6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/LinearLocallyFinite/Variantb2ccd77b7e3cc42c822fda93b9d790da22b783a227d8fab8f23c33a7ac5d4e71.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
