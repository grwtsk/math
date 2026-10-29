# Fib

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 30 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `50020ebe49c8b2974a683c454465694414732da5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/Fib.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [fib](declarations/fib.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [fib_zero](declarations/fib-zero.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [fib_one](declarations/fib-one.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [fib_two](declarations/fib-two.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [fib_add_two](declarations/fib-add-two.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [fib_le_fib_succ](declarations/fib-le-fib-succ.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [fib_mono](declarations/fib-mono.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [fib_pos](declarations/fib-pos.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [fib_add_two_sub_fib_add_one](declarations/fib-add-two-sub-fib-add-one.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [fib_lt_fib_succ](declarations/fib-lt-fib-succ.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [fib_add_two_strictMono](declarations/fib-add-two-strictmono.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [le_fib_self](declarations/le-fib-self.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [fib_coprime_fib_succ](declarations/fib-coprime-fib-succ.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [fib_add](declarations/fib-add.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [fib_two_mul](declarations/fib-two-mul.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [fib_two_mul_add_one](declarations/fib-two-mul-add-one.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [fib_two_mul_add_two](declarations/fib-two-mul-add-two.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [fib_bit0](declarations/fib-bit0.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [fib_bit1](declarations/fib-bit1.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [fib_bit0_succ](declarations/fib-bit0-succ.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [fib_bit1_succ](declarations/fib-bit1-succ.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [fastFibAux](declarations/fastfibaux.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [fastFib](declarations/fastfib.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [fast_fib_aux_bit_ff](declarations/fast-fib-aux-bit-ff.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [fast_fib_aux_bit_tt](declarations/fast-fib-aux-bit-tt.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [fast_fib_aux_eq](declarations/fast-fib-aux-eq.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [fast_fib_eq](declarations/fast-fib-eq.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [gcd_fib_add_self](declarations/gcd-fib-add-self.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [gcd_fib_add_mul_self](declarations/gcd-fib-add-mul-self.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [fib_gcd](declarations/fib-gcd.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [fib_dvd](declarations/fib-dvd.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [fib_succ_eq_sum_choose](declarations/fib-succ-eq-sum-choose.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [fib_succ_eq_succ_sum](declarations/fib-succ-eq-succ-sum.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e78faf3f1e85c06ff2f4f0eb168adaead9cd9d7109ae0829e48bf47a46d34e77 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/Fib/Variantf34c7a2efded95c9a0f33b35884c095dd636fae3e0d7cef9448dbaa91ec68840.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
