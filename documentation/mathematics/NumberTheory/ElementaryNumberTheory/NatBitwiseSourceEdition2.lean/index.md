# Nat Bitwise Source Edition2

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 36 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4883bdbf3c6ad75ad0bc3373a00b481e3ecdac3e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/NatBitwiseSourceEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [bit_false](declarations/bit-false.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [bit_true](declarations/bit-true.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [bit_eq_zero](declarations/bit-eq-zero.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [zero_of_testBit_eq_false](declarations/zero-of-testbit-eq-false.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [zero_testBit](declarations/zero-testbit.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [testBit_eq_inth](declarations/testbit-eq-inth.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [eq_of_testBit_eq](declarations/eq-of-testbit-eq.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [exists_most_significant_bit](declarations/exists-most-significant-bit.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [lt_of_testBit](declarations/lt-of-testbit.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [testBit_two_pow_self](declarations/testbit-two-pow-self.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [testBit_two_pow_of_ne](declarations/testbit-two-pow-of-ne.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [testBit_two_pow](declarations/testbit-two-pow.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [bitwise'_comm](declarations/bitwise-comm.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [lor'_comm](declarations/lor-comm.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [land'_comm](declarations/land-comm.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [lxor'_comm](declarations/lxor-comm.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [zero_lxor'](declarations/zero-lxor.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [lxor'_zero](declarations/lxor-zero.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [zero_land'](declarations/zero-land.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [land'_zero](declarations/land-zero.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [zero_lor'](declarations/zero-lor.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [lor'_zero](declarations/lor-zero.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `macro` | [(anonymous)](declarations/macro.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [lxor'_assoc](declarations/lxor-assoc.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [land'_assoc](declarations/land-assoc.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [lor'_assoc](declarations/lor-assoc.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [lxor'_self](declarations/lxor-self.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [lxor_cancel_right](declarations/lxor-cancel-right.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [lxor'_cancel_left](declarations/lxor-cancel-left.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [lxor'_right_injective](declarations/lxor-right-injective.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [lxor'_left_injective](declarations/lxor-left-injective.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [lxor'_right_inj](declarations/lxor-right-inj.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [lxor'_left_inj](declarations/lxor-left-inj.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [lxor'_eq_zero](declarations/lxor-eq-zero.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [lxor'_ne_zero](declarations/lxor-ne-zero.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [lxor'_trichotomy](declarations/lxor-trichotomy.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [lt_lxor'_cases](declarations/lt-lxor-cases.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3a41844008b7af2f4fc0b93bfde2d0994b8d1180703fb90ed7ee984154344d78 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
