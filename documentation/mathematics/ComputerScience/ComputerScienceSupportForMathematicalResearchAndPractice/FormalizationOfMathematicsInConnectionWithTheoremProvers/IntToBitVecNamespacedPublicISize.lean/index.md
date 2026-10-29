# Int To Bit Vec Namespaced Public ISize

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**68 observed declarations and anonymous commands**, 68 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntToBitVec/Variantf36f30038812216a23502a63443912a5f39b2dd50b278c4eec25076292a14b1e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f0f46f4cb4174d8f57b2b4d326d64a40a692cf26`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntToBitVecNamespacedPublicISize.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [ISize.toBitVec32_eq_toBitVec](declarations/isize-tobitvec32-eq-tobitvec.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [ISize.toBitVec64_eq_toBitVec](declarations/isize-tobitvec64-eq-tobitvec.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [ISize.le_iff_toBitVec32_sle](declarations/isize-le-iff-tobitvec32-sle.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [ISize.lt_iff_toBitVec32_slt](declarations/isize-lt-iff-tobitvec32-slt.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [ISize.eq_iff_toBitVec32_eq](declarations/isize-eq-iff-tobitvec32-eq.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [ISize.ne_iff_toBitVec32_ne](declarations/isize-ne-iff-tobitvec32-ne.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [ISize.toBitVec32_ofNat](declarations/isize-tobitvec32-ofnat.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [ISize.toBitVec32_ofInt](declarations/isize-tobitvec32-ofint.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ISize.toBitVec32_add](declarations/isize-tobitvec32-add.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ISize.toBitVec32_sub](declarations/isize-tobitvec32-sub.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [ISize.toBitVec32_mul](declarations/isize-tobitvec32-mul.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [ISize.toBitVec32_div](declarations/isize-tobitvec32-div.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [ISize.toBitVec32_mod](declarations/isize-tobitvec32-mod.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [ISize.toBitVec32_neg](declarations/isize-tobitvec32-neg.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [ISize.toBitVec32_not](declarations/isize-tobitvec32-not.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [ISize.toBitVec32_and](declarations/isize-tobitvec32-and.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [ISize.toBitVec32_or](declarations/isize-tobitvec32-or.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ISize.toBitVec32_xor](declarations/isize-tobitvec32-xor.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [ISize.toBitVec32_shiftLeft](declarations/isize-tobitvec32-shiftleft.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ISize.toBitVec32_shiftRight](declarations/isize-tobitvec32-shiftright.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ISize.toBitVec32_abs](declarations/isize-tobitvec32-abs.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [ISize.toBitVec32_toInt8](declarations/isize-tobitvec32-toint8.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [ISize.toBitVec32_toInt16](declarations/isize-tobitvec32-toint16.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [ISize.toBitVec32_toInt32](declarations/isize-tobitvec32-toint32.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [ISize.toBitVec32_toInt64](declarations/isize-tobitvec32-toint64.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [ISize.toBitVec32_toUSize](declarations/isize-tobitvec32-tousize.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [USize.toBitVec32_toISize](declarations/usize-tobitvec32-toisize.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Int8.toBitVec32_toISize](declarations/int8-tobitvec32-toisize.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Int16.toBitVec32_toISize](declarations/int16-tobitvec32-toisize.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Int32.toBitVec32_toISize](declarations/int32-tobitvec32-toisize.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Int64.toBitVec32_toISize](declarations/int64-tobitvec32-toisize.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [ISize.toBitVec32_ofBitVec](declarations/isize-tobitvec32-ofbitvec.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [ISize.toBitVec32_minValue](declarations/isize-tobitvec32-minvalue.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [ISize.toBitVec32_maxValue](declarations/isize-tobitvec32-maxvalue.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Bool.toBitVec32_toISize](declarations/bool-tobitvec32-toisize.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [ISize.le_iff_toBitVec64_sle](declarations/isize-le-iff-tobitvec64-sle.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [ISize.lt_iff_toBitVec64_slt](declarations/isize-lt-iff-tobitvec64-slt.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [ISize.eq_iff_toBitVec64_eq](declarations/isize-eq-iff-tobitvec64-eq.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [ISize.ne_iff_toBitVec64_ne](declarations/isize-ne-iff-tobitvec64-ne.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [ISize.toBitVec64_ofNat](declarations/isize-tobitvec64-ofnat.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [ISize.toBitVec64_ofInt](declarations/isize-tobitvec64-ofint.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [ISize.toBitVec64_add](declarations/isize-tobitvec64-add.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [ISize.toBitVec64_sub](declarations/isize-tobitvec64-sub.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [ISize.toBitVec64_mul](declarations/isize-tobitvec64-mul.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [ISize.toBitVec64_div](declarations/isize-tobitvec64-div.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [ISize.toBitVec64_mod](declarations/isize-tobitvec64-mod.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [ISize.toBitVec64_neg](declarations/isize-tobitvec64-neg.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [ISize.toBitVec64_not](declarations/isize-tobitvec64-not.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [ISize.toBitVec64_and](declarations/isize-tobitvec64-and.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [ISize.toBitVec64_or](declarations/isize-tobitvec64-or.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [ISize.toBitVec64_xor](declarations/isize-tobitvec64-xor.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [ISize.toBitVec64_shiftLeft](declarations/isize-tobitvec64-shiftleft.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [ISize.toBitVec64_shiftRight](declarations/isize-tobitvec64-shiftright.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [ISize.toBitVec64_abs](declarations/isize-tobitvec64-abs.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [ISize.toBitVec64_toInt8](declarations/isize-tobitvec64-toint8.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [ISize.toBitVec64_toInt16](declarations/isize-tobitvec64-toint16.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [ISize.toBitVec64_toInt32](declarations/isize-tobitvec64-toint32.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [ISize.toBitVec64_toInt64](declarations/isize-tobitvec64-toint64.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [ISize.toBitVec64_toUSize](declarations/isize-tobitvec64-tousize.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [USize.toBitVec64_toISize](declarations/usize-tobitvec64-toisize.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [Int8.toBitVec64_toISize](declarations/int8-tobitvec64-toisize.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [Int16.toBitVec64_toISize](declarations/int16-tobitvec64-toisize.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [Int32.toBitVec64_toISize](declarations/int32-tobitvec64-toisize.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [Int64.toBitVec64_toISize](declarations/int64-tobitvec64-toisize.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [ISize.toBitVec64_ofBitVec](declarations/isize-tobitvec64-ofbitvec.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [ISize.toBitVec64_minValue](declarations/isize-tobitvec64-minvalue.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [ISize.toBitVec64_maxValue](declarations/isize-tobitvec64-maxvalue.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [Bool.toBitVec64_toISize](declarations/bool-tobitvec64-toisize.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8fcf5ffbf7b5d2388667e678b50207b8dfba8de41d1cd1018f6b12b5b890f312 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntToBitVec/Variantf36f30038812216a23502a63443912a5f39b2dd50b278c4eec25076292a14b1e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
