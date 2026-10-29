# Field Theory Perfect Closure Perfect Closure Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**48 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/PerfectClosure/Variant12232e57a0c3b04ba1737b5f94edbd5286b571a3a55faa3130194005597f3ad3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e2c3a45e4a6356d1feb76bc8bfb787e7690b655`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FieldTheoryAndPolynomials/FieldTheoryPerfectClosurePerfectClosureNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [PerfectClosure.R](declarations/perfectclosure-r.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [PerfectClosure](declarations/perfectclosure.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [mk](declarations/mk.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mk_surjective](declarations/mk-surjective.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mk_succ_pow](declarations/mk-succ-pow.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [quot_mk_eq_mk](declarations/quot-mk-eq-mk.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [liftOn](declarations/lifton.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [liftOn_mk](declarations/lifton-mk.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [induction_on](declarations/induction-on.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mul_aux_left](declarations/mul-aux-left.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mul_aux_right](declarations/mul-aux-right.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [instMul](declarations/instmul.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mk_mul_mk](declarations/mk-mul-mk.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [instCommMonoid](declarations/instcommmonoid.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [one_def](declarations/one-def.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [instInhabited](declarations/instinhabited.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [add_aux_left](declarations/add-aux-left.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [add_aux_right](declarations/add-aux-right.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [instAdd](declarations/instadd.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mk_add_mk](declarations/mk-add-mk.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [instNeg](declarations/instneg.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [neg_mk](declarations/neg-mk.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [instZero](declarations/instzero.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [zero_def](declarations/zero-def.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mk_zero](declarations/mk-zero.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mk_zero_right](declarations/mk-zero-right.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [R.sound](declarations/r-sound.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [instAddCommGroup](declarations/instaddcommgroup.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [instCommRing](declarations/instcommring.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mk_eq_iff](declarations/mk-eq-iff.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mk_pow](declarations/mk-pow.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [natCast](declarations/natcast.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [intCast](declarations/intcast.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [natCast_eq_iff](declarations/natcast-eq-iff.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [instCharP](declarations/instcharp.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [frobenius_mk](declarations/frobenius-mk.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [of](declarations/of.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [of_apply](declarations/of-apply.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [instReduced](declarations/instreduced.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [instPerfectRing](declarations/instperfectring.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [iterate_frobenius_mk](declarations/iterate-frobenius-mk.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [lift](declarations/lift.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [eq_iff](declarations/eq-iff.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [instInv](declarations/instinv.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [mk_inv](declarations/mk-inv.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [instDivisionRing](declarations/instdivisionring.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [instField](declarations/instfield.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [instPerfectField](declarations/instperfectfield.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a57e52f2548cd957da0ac0da5ebe895aa9f6ea977e2f92afac3800ce1a8a544b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/PerfectClosure/Variant12232e57a0c3b04ba1737b5f94edbd5286b571a3a55faa3130194005597f3ad3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
