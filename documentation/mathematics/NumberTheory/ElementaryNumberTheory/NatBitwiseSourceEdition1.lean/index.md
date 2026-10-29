# Nat Bitwise Source Edition1

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**49 observed declarations and anonymous commands**, 48 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a86c953f4dbc19270c3527ee9e15033e7330734`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/NatBitwiseSourceEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [bitwise_zero_left](declarations/bitwise-zero-left.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [bitwise_zero_right](declarations/bitwise-zero-right.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [bitwise_zero](declarations/bitwise-zero.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [bitwise_of_ne_zero](declarations/bitwise-of-ne-zero.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [binaryRec_of_ne_zero](declarations/binaryrec-of-ne-zero.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [bitwise_bit](declarations/bitwise-bit-source-edition-2.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [bit_mod_two_eq_zero_iff](declarations/bit-mod-two-eq-zero-iff.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [bit_mod_two_eq_one_iff](declarations/bit-mod-two-eq-one-iff.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [lor_bit](declarations/lor-bit.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [land_bit](declarations/land-bit.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [ldiff_bit](declarations/ldiff-bit.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [xor_bit](declarations/xor-bit.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [testBit_lor](declarations/testbit-lor.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [testBit_land](declarations/testbit-land.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [testBit_ldiff](declarations/testbit-ldiff.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [bit_false](declarations/bit-false.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [bit_true](declarations/bit-true.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [bit_ne_zero_iff](declarations/bit-ne-zero-iff.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [bitwise_bit'](declarations/bitwise-bit.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [bitwise_eq_binaryRec](declarations/bitwise-eq-binaryrec.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [zero_of_testBit_eq_false](declarations/zero-of-testbit-eq-false.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [testBit_eq_false_of_lt](declarations/testbit-eq-false-of-lt.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [testBit_eq_inth](declarations/testbit-eq-inth.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [exists_most_significant_bit](declarations/exists-most-significant-bit.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [lt_of_testBit](declarations/lt-of-testbit.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [bitwise_swap](declarations/bitwise-swap.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [bitwise_comm](declarations/bitwise-comm.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [lor_comm](declarations/lor-comm.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [land_comm](declarations/land-comm.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [and_two_pow](declarations/and-two-pow.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [two_pow_and](declarations/two-pow-and.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `macro` | [(anonymous)](declarations/macro.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [land_assoc](declarations/land-assoc.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [lor_assoc](declarations/lor-assoc.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [xor_cancel_right](declarations/xor-cancel-right.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [xor_cancel_left](declarations/xor-cancel-left.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [xor_right_injective](declarations/xor-right-injective.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [xor_left_injective](declarations/xor-left-injective.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [xor_right_inj](declarations/xor-right-inj.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [xor_left_inj](declarations/xor-left-inj.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [xor_eq_zero](declarations/xor-eq-zero.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [xor_ne_zero](declarations/xor-ne-zero.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [xor_trichotomy](declarations/xor-trichotomy.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [lt_xor_cases](declarations/lt-xor-cases.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [xor_mod_two_eq](declarations/xor-mod-two-eq.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [even_xor](declarations/even-xor.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [bit_lt_two_pow_succ_iff](declarations/bit-lt-two-pow-succ-iff.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [shiftLeft_lt](declarations/shiftleft-lt.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [append_lt](declarations/append-lt.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1ca79423befa79b8f885c31bf5f682c960a9eadda082cda67111e01f130c0409 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variante987a9f57489a80d8e2de33b7ad8662516b85fe745d611c0fe9e6c965fb6f5b7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
