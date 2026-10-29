# Encoding Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**77 observed declarations and anonymous commands**, 13 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Encoding/Variant129af86cf0095e7e118b11877a96ec1f908ebd951d30a9bab34c95ba915774b2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d25e3b6ae2845f9fce78a3c3e4d1d858400786f8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [isEncodedChar](declarations/isencodedchar.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [isEncodedQueryChar](declarations/isencodedquerychar.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [IsAllowedEncodedChars](declarations/isallowedencodedchars.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [IsAllowedEncodedQueryChars](declarations/isallowedencodedquerychars.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [isValidPercentEncoding](declarations/isvalidpercentencoding.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [hexDigit](declarations/hexdigit.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [hexDigitToUInt8?](declarations/hexdigittouint8.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [IsAllowedEncodedChars.push](declarations/isallowedencodedchars-push.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [IsAllowedEncodedQueryChars.push](declarations/isallowedencodedquerychars-push.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [isEncodedChar_isAscii](declarations/isencodedchar-isascii.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [isEncodedQueryChar_isAscii](declarations/isencodedquerychar-isascii.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [hexDigit_isHexDigit](declarations/hexdigit-ishexdigit.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [isHexDigit_isAscii](declarations/ishexdigit-isascii.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [isHexDigit_isEncodedChar](declarations/ishexdigit-isencodedchar.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [isHexDigit_isEncodedQueryChar](declarations/ishexdigit-isencodedquerychar.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [all_of_all_of_imp](declarations/all-of-all-of-imp.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [autf8EncodeChar_flatMap_ascii](declarations/autf8encodechar-flatmap-ascii.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [List.toByteArray_loop_eq](declarations/list-tobytearray-loop-eq.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ByteArray.toList_toByteArray](declarations/bytearray-tolist-tobytearray.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [isValidUTF8_of_isAsciiByte](declarations/isvalidutf8-of-isasciibyte.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [EncodedString](declarations/encodedstring.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [empty](declarations/empty.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [push](declarations/push.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [byteToHex](declarations/bytetohex.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [encode](declarations/encode.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [ofByteArray?](declarations/ofbytearray-source-edition-3.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [ofByteArray!](declarations/ofbytearray-source-edition-4.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [ofString?](declarations/ofstring-source-edition-2.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [ofString!](declarations/ofstring-source-edition-4.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [new](declarations/new-source-edition-2.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [(anonymous)](declarations/instance.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [decode](declarations/decode-source-edition-2.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `structure` | [EncodedQueryString](declarations/encodedquerystring.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [empty](declarations/empty-source-edition-2.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [push](declarations/push-source-edition-2.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [ofByteArray?](declarations/ofbytearray-source-edition-12.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [ofByteArray!](declarations/ofbytearray-source-edition-9.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [ofString?](declarations/ofstring-source-edition-3.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [ofString!](declarations/ofstring.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [new](declarations/new.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [byteToHex](declarations/bytetohex-source-edition-2.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [encode](declarations/encode-source-edition-6.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [toString](declarations/tostring.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [decode](declarations/decode-source-edition-4.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `abbrev` | [EncodedSegment](declarations/encodedsegment.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [encode](declarations/encode-source-edition-2.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [ofByteArray?](declarations/ofbytearray-source-edition-2.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [ofByteArray!](declarations/ofbytearray-source-edition-8.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [decode](declarations/decode-source-edition-6.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `abbrev` | [EncodedFragment](declarations/encodedfragment.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [encode](declarations/encode-source-edition-4.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [ofByteArray?](declarations/ofbytearray-source-edition-10.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [ofByteArray!](declarations/ofbytearray-source-edition-5.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [decode](declarations/decode-source-edition-3.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `abbrev` | [EncodedUserInfo](declarations/encodeduserinfo.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [encode](declarations/encode-source-edition-3.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [ofByteArray?](declarations/ofbytearray.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [ofByteArray!](declarations/ofbytearray-source-edition-11.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [decode](declarations/decode-source-edition-5.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `abbrev` | [EncodedQueryParam](declarations/encodedqueryparam.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [encode](declarations/encode-source-edition-5.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [ofByteArray?](declarations/ofbytearray-source-edition-7.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [ofByteArray!](declarations/ofbytearray-source-edition-6.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [fromString?](declarations/fromstring.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [decode](declarations/decode.md) | 683 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4f3eca23d9b25262037e44ae2c3e4a40f177877f620d816610de1554d84a1bfb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Encoding/Variant129af86cf0095e7e118b11877a96ec1f908ebd951d30a9bab34c95ba915774b2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
