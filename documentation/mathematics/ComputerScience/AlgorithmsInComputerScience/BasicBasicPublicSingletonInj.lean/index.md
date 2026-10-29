# Basic Basic Public Singleton Inj

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**74 observed declarations and anonymous commands**, 74 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd042c18a2124fc279fe6ca16c632111a578527ca135dcb2f3c6ea4619d87d7c3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf54efc77d4cc7075056d6fb6ede211f5c68054e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/BasicBasicPublicSingletonInj.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [singleton_inj](declarations/singleton-inj.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [singleton_append_inj](declarations/singleton-append-inj.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [push_inj](declarations/push-inj.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [append_eq_empty_iff](declarations/append-eq-empty-iff.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [append_eq_left_iff](declarations/append-eq-left-iff.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [append_eq_right_iff](declarations/append-eq-right-iff.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [empty_eq_iff](declarations/empty-eq-iff.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [push_ne_empty](declarations/push-ne-empty.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [singleton_ne_empty](declarations/singleton-ne-empty.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [empty_ne_singleton](declarations/empty-ne-singleton.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [ofList_cons](declarations/oflist-cons.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Slice.Pos.copy_inj](declarations/slice-pos-copy-inj.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Pos.startPos_le](declarations/pos-startpos-le.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Slice.Pos.startPos_le](declarations/slice-pos-startpos-le.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [getUTF8Byte_eq_getUTF8Byte_toSlice](declarations/getutf8byte-eq-getutf8byte-toslice.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [getUTF8Byte_toSlice](declarations/getutf8byte-toslice.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Pos.byte_toSlice](declarations/pos-byte-toslice.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Pos.byte_eq_byte_toSlice](declarations/pos-byte-eq-byte-toslice.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Slice.toByteArray_copy_slice](declarations/slice-tobytearray-copy-slice.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [toByteArray_copy_slice](declarations/tobytearray-copy-slice.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Slice.utf8ByteSize_eq_size_toByteArray_copy](declarations/slice-utf8bytesize-eq-size-tobytearray-copy.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Slice.ext](declarations/slice-ext.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Slice.sliceTo_sliceFrom](declarations/slice-sliceto-slicefrom.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Slice.sliceFrom_sliceTo](declarations/slice-slicefrom-sliceto.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Slice.sliceFrom_sliceFrom](declarations/slice-slicefrom-slicefrom.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Slice.sliceTo_sliceTo](declarations/slice-sliceto-sliceto.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Slice.sliceFrom_slice](declarations/slice-slicefrom-slice.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Slice.sliceTo_slice](declarations/slice-sliceto-slice.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [sliceTo_sliceFrom](declarations/sliceto-slicefrom.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [sliceFrom_sliceTo](declarations/slicefrom-sliceto.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [sliceFrom_sliceFrom](declarations/slicefrom-slicefrom.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [sliceTo_sliceTo](declarations/sliceto-sliceto.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [sliceFrom_slice](declarations/slicefrom-slice.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [sliceTo_slice](declarations/sliceto-slice.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Slice.sliceFrom_startPos](declarations/slice-slicefrom-startpos.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Slice.sliceFrom_eq_self_iff](declarations/slice-slicefrom-eq-self-iff.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Slice.sliceTo_endPos](declarations/slice-sliceto-endpos.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Slice.sliceTo_eq_self_iff](declarations/slice-sliceto-eq-self-iff.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Slice.slice_startPos](declarations/slice-slice-startpos.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Slice.slice_eq_self_iff](declarations/slice-slice-eq-self-iff.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Slice.slice_endPos](declarations/slice-slice-endpos.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [sliceFrom_startPos](declarations/slicefrom-startpos.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [sliceFrom_eq_toSlice_iff](declarations/slicefrom-eq-toslice-iff.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [sliceTo_endPos](declarations/sliceto-endpos.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [sliceTo_eq_toSlice_iff](declarations/sliceto-eq-toslice-iff.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [slice_startPos](declarations/slice-startpos.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [slice_endPos](declarations/slice-endpos.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [slice_eq_toSlice_iff](declarations/slice-eq-toslice-iff.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [Slice.copy_eq_copy_slice](declarations/slice-copy-eq-copy-slice.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [copy_toByteArray_sliceTo](declarations/copy-tobytearray-sliceto.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [Slice.pos!_eq_pos](declarations/slice-pos-eq-pos.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [pos!_eq_pos](declarations/pos-eq-pos.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [Slice.copy_pos](declarations/slice-copy-pos.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [Slice.cast_pos](declarations/slice-cast-pos.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [cast_pos](declarations/cast-pos.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [Pos.Raw.isValidForSlice_zero](declarations/pos-raw-isvalidforslice-zero.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [Pos.get_ofToSlice](declarations/pos-get-oftoslice.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [push_empty](declarations/push-empty.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [nextn_zero](declarations/nextn-zero-source-edition-2.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [nextn_add_one](declarations/nextn-add-one.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [nextn_endPos](declarations/nextn-endpos-source-edition-2.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [nextn_eq_nextn_toSlice](declarations/nextn-eq-nextn-toslice.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [nextn_zero](declarations/nextn-zero.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [nextn_add_one](declarations/nextn-add-one-source-edition-2.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [nextn_toSlice](declarations/nextn-toslice.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [toSlice_nextn](declarations/toslice-nextn.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [nextn_endPos](declarations/nextn-endpos.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [Slice.Pos.cast_toSlice_copy](declarations/slice-pos-cast-toslice-copy.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [Slice.Pos.sliceFrom_eq_startPos](declarations/slice-pos-slicefrom-eq-startpos.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [Slice.Pos.sliceFrom_endPos](declarations/slice-pos-slicefrom-endpos.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [Slice.Pos.sliceTo_startPos](declarations/slice-pos-sliceto-startpos.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [Slice.Pos.sliceTo_eq_endPos](declarations/slice-pos-sliceto-eq-endpos.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [Slice.Pos.slice_eq_startPos](declarations/slice-pos-slice-eq-startpos.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [Slice.Pos.slice_eq_endPos](declarations/slice-pos-slice-eq-endpos.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=30fd97bf75380f73cfa2a4925f4586f7e84b6a9ddf9617383bf33feeb69c8fcd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd042c18a2124fc279fe6ca16c632111a578527ca135dcb2f3c6ea4619d87d7c3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
