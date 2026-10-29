# Nat Bitwise Public Edition2

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 39 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantc455654f657ce0100fe2f3ec152fd07ed58058790ef80a9f592a7c3b901172da.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0ffaf087eb538b152576013f30684bab36efc1b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/NatBitwisePublicEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [bitwise_zero_left](declarations/bitwise-zero-left.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [bitwise_zero_right](declarations/bitwise-zero-right.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [bitwise_zero](declarations/bitwise-zero.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [bitwise_of_ne_zero](declarations/bitwise-of-ne-zero.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [binaryRec_of_ne_zero](declarations/binaryrec-of-ne-zero.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [bitwise_bit](declarations/bitwise-bit.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [bit_mod_two_eq_zero_iff](declarations/bit-mod-two-eq-zero-iff.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [bit_mod_two_eq_one_iff](declarations/bit-mod-two-eq-one-iff.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [lor_bit](declarations/lor-bit.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [land_bit](declarations/land-bit.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [ldiff_bit](declarations/ldiff-bit.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [xor_bit](declarations/xor-bit.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [testBit_lor](declarations/testbit-lor.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [testBit_land](declarations/testbit-land.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [testBit_ldiff](declarations/testbit-ldiff.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [bitwise_bit'](declarations/bitwise-bit-source-edition-2.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [bitwise_eq_binaryRec](declarations/bitwise-eq-binaryrec.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [zero_of_testBit_eq_false](declarations/zero-of-testbit-eq-false.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [testBit_eq_false_of_lt](declarations/testbit-eq-false-of-lt.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [testBit_eq_inth](declarations/testbit-eq-inth.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [exists_most_significant_bit](declarations/exists-most-significant-bit.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [lt_of_testBit](declarations/lt-of-testbit.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [bitwise_swap](declarations/bitwise-swap.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [bitwise_comm](declarations/bitwise-comm.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [lor_comm](declarations/lor-comm.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [land_comm](declarations/land-comm.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [and_two_pow](declarations/and-two-pow.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [two_pow_and](declarations/two-pow-and.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `macro` | [(anonymous)](declarations/macro.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [land_assoc](declarations/land-assoc.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [lor_assoc](declarations/lor-assoc.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [xor_trichotomy](declarations/xor-trichotomy.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [lt_xor_cases](declarations/lt-xor-cases.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [xor_mod_two_eq](declarations/xor-mod-two-eq.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [even_xor](declarations/even-xor.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [xor_one_of_even](declarations/xor-one-of-even.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [xor_one_of_odd](declarations/xor-one-of-odd.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [xor_range](declarations/xor-range.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [shiftLeft_lt](declarations/shiftleft-lt.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [append_lt](declarations/append-lt.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed1302de9af970279324e6f7840220e4a858e5a03f4365da8b380fd2d4e8f048 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bitwise/Variantc455654f657ce0100fe2f3ec152fd07ed58058790ef80a9f592a7c3b901172da.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
