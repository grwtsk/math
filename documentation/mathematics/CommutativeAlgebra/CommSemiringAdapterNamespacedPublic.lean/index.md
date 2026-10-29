# Comm Semiring Adapter Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**50 observed declarations and anonymous commands**, 41 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ee8a0434998c1908f6d6af2f41c9607ebec91a06`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/CommSemiringAdapterNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Expr.denoteS](declarations/expr-denotes.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Expr.denoteSAsRing](declarations/expr-denotesasring.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [Expr.denoteAsRing_eq](declarations/expr-denoteasring-eq.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Expr.toPolyS](declarations/expr-topolys.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Expr.toPolyS_nc](declarations/expr-topolys-nc.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `inductive` | [Poly.NonnegCoeffs](declarations/poly-nonnegcoeffs.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [denoteSInt](declarations/denotesint.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [denoteSInt_eq](declarations/denotesint-eq.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Poly.denoteS](declarations/poly-denotes.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Poly.denoteS_ofMon](declarations/poly-denotes-ofmon.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Poly.denoteS_ofVar](declarations/poly-denotes-ofvar.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Poly.denoteS_addConst](declarations/poly-denotes-addconst.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Poly.denoteS_insert](declarations/poly-denotes-insert.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Poly.denoteS_concat](declarations/poly-denotes-concat.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Poly.denoteS_mulConst](declarations/poly-denotes-mulconst.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Poly.denoteS_combine](declarations/poly-denotes-combine.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Poly.denoteS_mulMon](declarations/poly-denotes-mulmon.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Poly.addConst_NonnegCoeffs](declarations/poly-addconst-nonnegcoeffs.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Poly.insert_Nonneg](declarations/poly-insert-nonneg.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Poly.denoteS_mulMon_nc_go](declarations/poly-denotes-mulmon-nc-go.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Poly.num_zero_NonnegCoeffs](declarations/poly-num-zero-nonnegcoeffs.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Poly.denoteS_mulMon_nc](declarations/poly-denotes-mulmon-nc.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Poly.mulConst_NonnegCoeffs](declarations/poly-mulconst-nonnegcoeffs.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Poly.mulMon_NonnegCoeffs](declarations/poly-mulmon-nonnegcoeffs.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Poly.mulMon_nc_go_NonnegCoeffs](declarations/poly-mulmon-nc-go-nonnegcoeffs.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Poly.mulMon_nc_NonnegCoeffs](declarations/poly-mulmon-nc-nonnegcoeffs.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Poly.concat_NonnegCoeffs](declarations/poly-concat-nonnegcoeffs.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Poly.combine_NonnegCoeffs](declarations/poly-combine-nonnegcoeffs.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Poly.mul_go_NonnegCoeffs](declarations/poly-mul-go-nonnegcoeffs.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Poly.mul_NonnegCoeffs](declarations/poly-mul-nonnegcoeffs.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Poly.mul_nc_go_NonnegCoeffs](declarations/poly-mul-nc-go-nonnegcoeffs.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Poly.mul_nc_NonnegCoeffs](declarations/poly-mul-nc-nonnegcoeffs.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Poly.pow_NonnegCoeffs](declarations/poly-pow-nonnegcoeffs.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [Poly.pow_nc_NonnegCoeffs](declarations/poly-pow-nc-nonnegcoeffs.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Poly.denoteS_mul_go](declarations/poly-denotes-mul-go.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Poly.denoteS_mul](declarations/poly-denotes-mul.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Poly.denoteS_mul_nc_go](declarations/poly-denotes-mul-nc-go.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Poly.denoteS_mul_nc](declarations/poly-denotes-mul-nc.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Poly.denoteS_pow](declarations/poly-denotes-pow.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Poly.denoteS_pow_nc](declarations/poly-denotes-pow-nc.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Expr.toPolyS_NonnegCoeffs](declarations/expr-topolys-nonnegcoeffs.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Expr.toPolyS_nc_NonnegCoeffs](declarations/expr-topolys-nc-nonnegcoeffs.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Expr.denoteS_toPolyS](declarations/expr-denotes-topolys.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Expr.denoteS_toPolyS_nc](declarations/expr-denotes-topolys-nc.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [eq_normS_cert](declarations/eq-norms-cert.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [eq_normS](declarations/eq-norms.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [eq_normS_nc_cert](declarations/eq-norms-nc-cert.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [eq_normS_nc](declarations/eq-norms-nc.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [of_eq](declarations/of-eq.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [of_diseq](declarations/of-diseq.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6534cfc3e8eb038a72bcb22e67b7d5032fdb7ec9b45154c85f1f1344ccba4ed3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
