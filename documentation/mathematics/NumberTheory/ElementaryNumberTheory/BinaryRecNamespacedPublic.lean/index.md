# Binary Rec Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `581f7beeaba2db079ce5820f0fc729a43b96c2f7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/BinaryRecNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [bit](declarations/bit.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [shiftRight_one](declarations/shiftright-one.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [bit_decide_mod_two_eq_one_shiftRight_one](declarations/bit-decide-mod-two-eq-one-shiftright-one.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [bit_testBit_zero_shiftRight_one](declarations/bit-testbit-zero-shiftright-one.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [bit_false](declarations/bit-false.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [bit_true](declarations/bit-true.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [bit_false_apply](declarations/bit-false-apply.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [bit_true_apply](declarations/bit-true-apply.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [bit_eq_zero_iff](declarations/bit-eq-zero-iff.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [bit_ne_zero_iff](declarations/bit-ne-zero-iff.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [bitCasesOn](declarations/bitcaseson.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [bit_lt_two_pow_succ_iff](declarations/bit-lt-two-pow-succ-iff.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [log2_eq_succ_log2_shiftRight](declarations/log2-eq-succ-log2-shiftright.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [binaryRec](declarations/binaryrec.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [binaryRec'](declarations/binaryrec-source-edition-2.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [binaryRecFromOne](declarations/binaryrecfromone.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [bit_val](declarations/bit-val.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [bit_div_two](declarations/bit-div-two.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [bit_mod_two](declarations/bit-mod-two.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [bit_shiftRight_one](declarations/bit-shiftright-one.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [testBit_bit_zero](declarations/testbit-bit-zero.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [bitCasesOn_bit](declarations/bitcaseson-bit.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [binaryRec_zero](declarations/binaryrec-zero-source-edition-2.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [binaryRec_one](declarations/binaryrec-one.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [binaryRec_eq](declarations/binaryrec-eq-source-edition-2.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [binaryRec'_zero](declarations/binaryrec-zero.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [binaryRec'_one](declarations/binaryrec-one-source-edition-2.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [binaryRec'_eq](declarations/binaryrec-eq.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [binaryRecFromOne_zero](declarations/binaryrecfromone-zero.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [binaryRecFromOne_one](declarations/binaryrecfromone-one.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [binaryRecFromOne_eq](declarations/binaryrecfromone-eq.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7f8c7de0d991fde752ef682c6f64077468cfdaa1fecba57d5205431d38a5f707 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/BinaryRec/Variant03b978334e3ebbd62048613e07923ae00b23ddcd8e2fca6b3dce4ea5efdf19c3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
