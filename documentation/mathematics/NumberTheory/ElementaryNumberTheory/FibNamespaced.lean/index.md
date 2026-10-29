# Fib Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 30 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `099621b045170bebfb04131694d98b9832b9e6cf`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/FibNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [fib](declarations/fib.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [fib_zero](declarations/fib-zero.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [fib_one](declarations/fib-one.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [fib_two](declarations/fib-two.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [fib_add_two](declarations/fib-add-two.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [fib_le_fib_succ](declarations/fib-le-fib-succ.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [fib_mono](declarations/fib-mono.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [fib_pos](declarations/fib-pos.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [fib_add_two_sub_fib_add_one](declarations/fib-add-two-sub-fib-add-one.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [fib_lt_fib_succ](declarations/fib-lt-fib-succ.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [fib_add_two_strictMono](declarations/fib-add-two-strictmono.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [le_fib_self](declarations/le-fib-self.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [fib_coprime_fib_succ](declarations/fib-coprime-fib-succ.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [fib_add](declarations/fib-add.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [fib_two_mul](declarations/fib-two-mul.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [fib_two_mul_add_one](declarations/fib-two-mul-add-one.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [fib_two_mul_add_two](declarations/fib-two-mul-add-two.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [fib_bit0](declarations/fib-bit0.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [fib_bit1](declarations/fib-bit1.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [fib_bit0_succ](declarations/fib-bit0-succ.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [fib_bit1_succ](declarations/fib-bit1-succ.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [fastFibAux](declarations/fastfibaux.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [fastFib](declarations/fastfib.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [fast_fib_aux_bit_ff](declarations/fast-fib-aux-bit-ff.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [fast_fib_aux_bit_tt](declarations/fast-fib-aux-bit-tt.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [fast_fib_aux_eq](declarations/fast-fib-aux-eq.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [fast_fib_eq](declarations/fast-fib-eq.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [gcd_fib_add_self](declarations/gcd-fib-add-self.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [gcd_fib_add_mul_self](declarations/gcd-fib-add-mul-self.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [fib_gcd](declarations/fib-gcd.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [fib_dvd](declarations/fib-dvd.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [fib_succ_eq_sum_choose](declarations/fib-succ-eq-sum-choose.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [fib_succ_eq_succ_sum](declarations/fib-succ-eq-succ-sum.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8e8e83a4fb76e5c1f92e73927adce19706377e0a75fe766845c7f5d16e41bfc1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/Fib/Variantbcf7ef6a385e9c973376ac262777ba60f64e85f9cd43a02153194162fed23188.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
