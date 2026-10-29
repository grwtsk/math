# Comm Semiring Adapter Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**50 observed declarations and anonymous commands**, 41 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommSemiringAdapter/Variant4aeb5392eff810b52929e6f5da526554f1b62cbf60a3f91597e0b8581312618c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bef07089fb88e27643bc64183b037fa15b9362ec`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/CommSemiringAdapterPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Expr.denoteS](declarations/expr-denotes.md) | 16 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Expr.denoteSAsRing](declarations/expr-denotesasring.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [Expr.denoteAsRing_eq](declarations/expr-denoteasring-eq.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Expr.toPolyS](declarations/expr-topolys.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [Expr.toPolyS_nc](declarations/expr-topolys-nc.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `inductive` | [Poly.NonnegCoeffs](declarations/poly-nonnegcoeffs.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [denoteSInt](declarations/denotesint.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [denoteSInt_eq](declarations/denotesint-eq.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Poly.denoteS](declarations/poly-denotes.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Poly.denoteS_ofMon](declarations/poly-denotes-ofmon.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [Poly.denoteS_ofVar](declarations/poly-denotes-ofvar.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Poly.denoteS_addConst](declarations/poly-denotes-addconst.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Poly.denoteS_insert](declarations/poly-denotes-insert.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Poly.denoteS_concat](declarations/poly-denotes-concat.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Poly.denoteS_mulConst](declarations/poly-denotes-mulconst.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Poly.denoteS_combine](declarations/poly-denotes-combine.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Poly.denoteS_mulMon](declarations/poly-denotes-mulmon.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Poly.addConst_NonnegCoeffs](declarations/poly-addconst-nonnegcoeffs.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Poly.insert_Nonneg](declarations/poly-insert-nonneg.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Poly.denoteS_mulMon_nc_go](declarations/poly-denotes-mulmon-nc-go.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Poly.num_zero_NonnegCoeffs](declarations/poly-num-zero-nonnegcoeffs.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Poly.denoteS_mulMon_nc](declarations/poly-denotes-mulmon-nc.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Poly.mulConst_NonnegCoeffs](declarations/poly-mulconst-nonnegcoeffs.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Poly.mulMon_NonnegCoeffs](declarations/poly-mulmon-nonnegcoeffs.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Poly.mulMon_nc_go_NonnegCoeffs](declarations/poly-mulmon-nc-go-nonnegcoeffs.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Poly.mulMon_nc_NonnegCoeffs](declarations/poly-mulmon-nc-nonnegcoeffs.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Poly.concat_NonnegCoeffs](declarations/poly-concat-nonnegcoeffs.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Poly.combine_NonnegCoeffs](declarations/poly-combine-nonnegcoeffs.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Poly.mul_go_NonnegCoeffs](declarations/poly-mul-go-nonnegcoeffs.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Poly.mul_NonnegCoeffs](declarations/poly-mul-nonnegcoeffs.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Poly.mul_nc_go_NonnegCoeffs](declarations/poly-mul-nc-go-nonnegcoeffs.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Poly.mul_nc_NonnegCoeffs](declarations/poly-mul-nc-nonnegcoeffs.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [Poly.pow_NonnegCoeffs](declarations/poly-pow-nonnegcoeffs.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [Poly.pow_nc_NonnegCoeffs](declarations/poly-pow-nc-nonnegcoeffs.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Poly.denoteS_mul_go](declarations/poly-denotes-mul-go.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Poly.denoteS_mul](declarations/poly-denotes-mul.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Poly.denoteS_mul_nc_go](declarations/poly-denotes-mul-nc-go.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Poly.denoteS_mul_nc](declarations/poly-denotes-mul-nc.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Poly.denoteS_pow](declarations/poly-denotes-pow.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Poly.denoteS_pow_nc](declarations/poly-denotes-pow-nc.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Expr.toPolyS_NonnegCoeffs](declarations/expr-topolys-nonnegcoeffs.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Expr.toPolyS_nc_NonnegCoeffs](declarations/expr-topolys-nc-nonnegcoeffs.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Expr.denoteS_toPolyS](declarations/expr-denotes-topolys.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Expr.denoteS_toPolyS_nc](declarations/expr-denotes-topolys-nc.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [eq_normS_cert](declarations/eq-norms-cert.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [eq_normS](declarations/eq-norms.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [eq_normS_nc_cert](declarations/eq-norms-nc-cert.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [eq_normS_nc](declarations/eq-norms-nc.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [of_eq](declarations/of-eq.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [of_diseq](declarations/of-diseq.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2f55ecfcfcc3d00d5e2baa3a711e9910307e9e49640d089d03c8cf1787fae08b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/CommSemiringAdapter/Variant4aeb5392eff810b52929e6f5da526554f1b62cbf60a3f91597e0b8581312618c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
