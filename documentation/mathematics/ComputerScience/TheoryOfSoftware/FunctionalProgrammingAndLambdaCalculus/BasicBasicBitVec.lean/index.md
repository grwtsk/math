# Basic Basic Bit Vec

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**96 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant61bcfdd6d3ef458896cb7e176db4456f08125520adfc907a3c4aa48a168223e3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ffc7245d2da1ac61081b932916613e91a82efaec`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicBitVec.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BitVec](declarations/bitvec.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [cast](declarations/cast.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [ofNat](declarations/ofnat.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [toNat](declarations/tonat.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [isLt](declarations/islt.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [getLsb](declarations/getlsb.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [getMsb](declarations/getmsb.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [msb](declarations/msb.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [ofInt](declarations/ofint.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [toInt](declarations/toint.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [zero](declarations/zero.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance-source-edition-15.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-21.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `macro_rules` | [(anonymous)](declarations/macro-rules.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [unexpandBitVecOfNat](declarations/unexpandbitvecofnat.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [toHex](declarations/tohex.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-18.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [ofNat_eq_ofNat](declarations/ofnat-eq-ofnat.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [add](declarations/add.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [sub](declarations/sub.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [(anonymous)](declarations/instance-source-edition-16.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [neg](declarations/neg.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [allOnes](declarations/allones.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [abs](declarations/abs.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [mul](declarations/mul.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [udiv](declarations/udiv.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [umod](declarations/umod.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [smtUDiv](declarations/smtudiv.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [sdiv](declarations/sdiv.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [smtSDiv](declarations/smtsdiv.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [srem](declarations/srem.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [smod](declarations/smod.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [ult](declarations/ult.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [ule](declarations/ule.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance-source-edition-17.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [slt](declarations/slt.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [sle](declarations/sle.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [and](declarations/and.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [(anonymous)](declarations/instance-source-edition-19.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [or](declarations/or.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [xor](declarations/xor.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [not](declarations/not.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [shiftLeft](declarations/shiftleft.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [(anonymous)](declarations/instance.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [ushiftRight](declarations/ushiftright.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [sshiftRight](declarations/sshiftright.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [(anonymous)](declarations/instance-source-edition-20.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [(anonymous)](declarations/instance-source-edition-22.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [rotateLeft](declarations/rotateleft.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [rotateRight](declarations/rotateright.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [zeroExtend'](declarations/zeroextend-source-edition-2.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [shiftLeftZeroExtend](declarations/shiftleftzeroextend.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [append](declarations/append.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [extractLsb'](declarations/extractlsb-source-edition-2.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [extractLsb](declarations/extractlsb.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [replicate](declarations/replicate.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [fill](declarations/fill.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [zeroExtend](declarations/zeroextend.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [signExtend](declarations/signextend.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [append_eq](declarations/append-eq.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [shiftLeft_eq](declarations/shiftleft-eq.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [ushiftRight_eq](declarations/ushiftright-eq.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [not_eq](declarations/not-eq.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [and_eq](declarations/and-eq.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [or_eq](declarations/or-eq.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [xor_eq](declarations/xor-eq.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [neg_eq](declarations/neg-eq.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [add_eq](declarations/add-eq.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [sub_eq](declarations/sub-eq.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [mul_eq](declarations/mul-eq.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [zero_eq](declarations/zero-eq.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [cast_ofNat](declarations/cast-ofnat.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [cast_cast](declarations/cast-cast.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [cast_eq](declarations/cast-eq.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [ofBool](declarations/ofbool.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [ofBool_false](declarations/ofbool-false.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [ofBool_true](declarations/ofbool-true.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `abbrev` | [nil](declarations/nil.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [concat](declarations/concat.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [cons](declarations/cons.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [eq_nil](declarations/eq-nil.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [append_ofBool](declarations/append-ofbool.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [ofBool_append](declarations/ofbool-append.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a561d24f3bdef3468d984d9702c33455b7b8928dcd1d660b39442a6b6953b6a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant61bcfdd6d3ef458896cb7e176db4456f08125520adfc907a3c4aa48a168223e3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
