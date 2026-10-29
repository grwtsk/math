# Bounds

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 36 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/InformationTheory/Huffman/Bounds.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cb9bf59c507e727aef8d34827adf353c3f1ab108`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/InformationAndCommunicationTheoryCircuits/CommunicationInformation/PrefixLengthVariableCommaFreeCodes/Bounds.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [maxFileBytes](declarations/maxfilebytes.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [maxCorpusBytes](declarations/maxcorpusbytes.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [maxCodeBits](declarations/maxcodebits.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [maxFileBits](declarations/maxfilebits.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [maxFileCompressedBytes](declarations/maxfilecompressedbytes.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [maxFileBytes_value](declarations/maxfilebytes-value.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [maxCorpusBytes_value](declarations/maxcorpusbytes-value.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [maxFileBits_value](declarations/maxfilebits-value.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [maxU64_value](declarations/maxu64-value.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [compressedByteLen](declarations/compressedbytelen.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [compressedByteLen_eq_ceil](declarations/compressedbytelen-eq-ceil.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [compressedByteLen_monotone](declarations/compressedbytelen-monotone.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [compressedByteLen_le_self](declarations/compressedbytelen-le-self.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [compressedByteLen_u64_bound](declarations/compressedbytelen-u64-bound.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [compressed_len_add_checked](declarations/compressed-len-add-checked.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [compressed_len_max](declarations/compressed-len-max.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [naive_ceil_add_overflows](declarations/naive-ceil-add-overflows.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [checkedUsize](declarations/checkedusize.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [checkedUsize_eq_some_iff](declarations/checkedusize-eq-some-iff.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [checkedUsize_eq_none_iff](declarations/checkedusize-eq-none-iff.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [compressed_len_64](declarations/compressed-len-64.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [weightSum](declarations/weightsum.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [products_le_weightSum_mul](declarations/products-le-weightsum-mul.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [inventory_products_bound](declarations/inventory-products-bound.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [maxFileBits_le_u64](declarations/maxfilebits-le-u64.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [inventory_dot_checked](declarations/inventory-dot-checked.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [merge_checked_of_mass](declarations/merge-checked-of-mass.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [inventory_compressed_bound](declarations/inventory-compressed-bound.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [inventory_compressed_32](declarations/inventory-compressed-32.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [code_length_u64_cast](declarations/code-length-u64-cast.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [code_length_u64_checked](declarations/code-length-u64-checked.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [symbol_index_bound](declarations/symbol-index-bound.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [inventory_position_64](declarations/inventory-position-64.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [inventory_position_bound_exceeds_32](declarations/inventory-position-bound-exceeds-32.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [position_limit_32_refuses_max_bound](declarations/position-limit-32-refuses-max-bound.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [inventory_position_platform](declarations/inventory-position-platform.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [position_successor_fits](declarations/position-successor-fits.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [packed_index_bound](declarations/packed-index-bound.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [packed_shift_bound](declarations/packed-shift-bound.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [padding_shift_bound](declarations/padding-shift-bound.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [packed_index_usize](declarations/packed-index-usize.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [increment_before_end](declarations/increment-before-end.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [inventory_output_64](declarations/inventory-output-64.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [inventory_total_add_32](declarations/inventory-total-add-32.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=af5f5126ce274d0a0f54e1de979b03226f40d0f2ba80b4024fb147294b5f2968 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/InformationTheory/Huffman/Bounds.lean","GRWTSK/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
