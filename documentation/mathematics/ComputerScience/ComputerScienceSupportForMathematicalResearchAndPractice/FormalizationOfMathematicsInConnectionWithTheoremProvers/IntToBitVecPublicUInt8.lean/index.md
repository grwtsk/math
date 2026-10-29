# Int To Bit Vec Public UInt8

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**62 observed declarations and anonymous commands**, 62 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntToBitVec/Variant5d2232051c60170ea4f1d05d88ef1abe90f0e3aa2a578321fc59a80b4a465684.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ec5d22fa8f4d45e572091243a975b5f7c468a7fd`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/IntToBitVecPublicUInt8.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [USize.toBitVec32_eq_toBitVec](declarations/usize-tobitvec32-eq-tobitvec.md) | 14 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [USize.toBitVec64_eq_toBitVec](declarations/usize-tobitvec64-eq-tobitvec.md) | 17 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [USize.le_iff_toBitVec32_le](declarations/usize-le-iff-tobitvec32-le.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [USize.lt_iff_toBitVec32_lt](declarations/usize-lt-iff-tobitvec32-lt.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [USize.eq_iff_toBitVec32_eq](declarations/usize-eq-iff-tobitvec32-eq.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [USize.ne_iff_toBitVec32_ne](declarations/usize-ne-iff-tobitvec32-ne.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [USize.toBitVec32_ofNat](declarations/usize-tobitvec32-ofnat.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [USize.toBitVec32_add](declarations/usize-tobitvec32-add.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [USize.toBitVec32_sub](declarations/usize-tobitvec32-sub.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [USize.toBitVec32_mul](declarations/usize-tobitvec32-mul.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [USize.toBitVec32_div](declarations/usize-tobitvec32-div.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [USize.toBitVec32_mod](declarations/usize-tobitvec32-mod.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [USize.toBitVec32_neg](declarations/usize-tobitvec32-neg.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [USize.toBitVec32_not](declarations/usize-tobitvec32-not.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [USize.toBitVec32_and](declarations/usize-tobitvec32-and.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [USize.toBitVec32_or](declarations/usize-tobitvec32-or.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [USize.toBitVec32_xor](declarations/usize-tobitvec32-xor.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [USize.toBitVec32_shiftLeft](declarations/usize-tobitvec32-shiftleft.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [USize.toBitVec32_shiftRight](declarations/usize-tobitvec32-shiftright.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [USize.toBitVec32_toUInt8](declarations/usize-tobitvec32-touint8.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [USize.toBitVec32_toUInt16](declarations/usize-tobitvec32-touint16.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [USize.toBitVec32_toUInt32](declarations/usize-tobitvec32-touint32.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [USize.toBitVec32_toUInt64](declarations/usize-tobitvec32-touint64.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [UInt8.toBitVec32_toUSize](declarations/uint8-tobitvec32-tousize.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [UInt16.toBitVec32_toUSize](declarations/uint16-tobitvec32-tousize.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [UInt32.toBitVec32_toUSize](declarations/uint32-tobitvec32-tousize.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [UInt64.toBitVec32_toUSize](declarations/uint64-tobitvec32-tousize.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [USize.toBitVec32_ofNatLT](declarations/usize-tobitvec32-ofnatlt.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [USize.toBitVec32_ofFin](declarations/usize-tobitvec32-offin.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [USize.toBitVec32_ofBitVec](declarations/usize-tobitvec32-ofbitvec.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [USize.toBitVec32_pow](declarations/usize-tobitvec32-pow.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [Bool.toBitVec32_toUSize](declarations/bool-tobitvec32-tousize.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [USize.le_iff_toBitVec64_le](declarations/usize-le-iff-tobitvec64-le.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [USize.lt_iff_toBitVec64_lt](declarations/usize-lt-iff-tobitvec64-lt.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [USize.eq_iff_toBitVec64_eq](declarations/usize-eq-iff-tobitvec64-eq.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [USize.ne_iff_toBitVec64_ne](declarations/usize-ne-iff-tobitvec64-ne.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [USize.toBitVec64_ofNat](declarations/usize-tobitvec64-ofnat.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [USize.toBitVec64_add](declarations/usize-tobitvec64-add.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [USize.toBitVec64_sub](declarations/usize-tobitvec64-sub.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [USize.toBitVec64_mul](declarations/usize-tobitvec64-mul.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [USize.toBitVec64_div](declarations/usize-tobitvec64-div.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [USize.toBitVec64_mod](declarations/usize-tobitvec64-mod.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [USize.toBitVec64_neg](declarations/usize-tobitvec64-neg.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [USize.toBitVec64_not](declarations/usize-tobitvec64-not.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [USize.toBitVec64_and](declarations/usize-tobitvec64-and.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [USize.toBitVec64_or](declarations/usize-tobitvec64-or.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [USize.toBitVec64_xor](declarations/usize-tobitvec64-xor.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [USize.toBitVec64_shiftLeft](declarations/usize-tobitvec64-shiftleft.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [USize.toBitVec64_shiftRight](declarations/usize-tobitvec64-shiftright.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [USize.toBitVec64_toUInt8](declarations/usize-tobitvec64-touint8.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [USize.toBitVec64_toUInt16](declarations/usize-tobitvec64-touint16.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [USize.toBitVec64_toUInt32](declarations/usize-tobitvec64-touint32.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [USize.toBitVec64_toUInt64](declarations/usize-tobitvec64-touint64.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [UInt8.toBitVec64_toUSize](declarations/uint8-tobitvec64-tousize.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [UInt16.toBitVec64_toUSize](declarations/uint16-tobitvec64-tousize.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [UInt32.toBitVec64_toUSize](declarations/uint32-tobitvec64-tousize.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [UInt64.toBitVec64_toUSize](declarations/uint64-tobitvec64-tousize.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [USize.toBitVec64_ofNatLT](declarations/usize-tobitvec64-ofnatlt.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [USize.toBitVec64_ofFin](declarations/usize-tobitvec64-offin.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [USize.toBitVec64_ofBitVec](declarations/usize-tobitvec64-ofbitvec.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [USize.toBitVec64_pow](declarations/usize-tobitvec64-pow.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [Bool.toBitVec64_toUSize](declarations/bool-tobitvec64-tousize.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fd8c17f9e7de030b6867c351dd36a2cc01cd692aae5910bc0ce92a9c99896236 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntToBitVec/Variant5d2232051c60170ea4f1d05d88ef1abe90f0e3aa2a578321fc59a80b4a465684.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
