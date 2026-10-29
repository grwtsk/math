# Encoding Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**77 observed declarations and anonymous commands**, 13 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Encoding/Variantc3229878cb2d9bdc5fe8f0c300a05dd34fe076e7321fc27de4c8bf828dbd86b8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f447d5a01f929152d8ec9d0ae965e12c1aefa78f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [isEncodedChar](declarations/isencodedchar.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [isEncodedQueryChar](declarations/isencodedquerychar.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [IsAllowedEncodedChars](declarations/isallowedencodedchars.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [IsAllowedEncodedQueryChars](declarations/isallowedencodedquerychars.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [isValidPercentEncoding](declarations/isvalidpercentencoding.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [hexDigit](declarations/hexdigit.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [hexDigitToUInt8?](declarations/hexdigittouint8.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [IsAllowedEncodedChars.push](declarations/isallowedencodedchars-push.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [IsAllowedEncodedQueryChars.push](declarations/isallowedencodedquerychars-push.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [isEncodedChar_isAscii](declarations/isencodedchar-isascii.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [isEncodedQueryChar_isAscii](declarations/isencodedquerychar-isascii.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [hexDigit_isHexDigit](declarations/hexdigit-ishexdigit.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [isHexDigit_isAscii](declarations/ishexdigit-isascii.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [isHexDigit_isEncodedChar](declarations/ishexdigit-isencodedchar.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [isHexDigit_isEncodedQueryChar](declarations/ishexdigit-isencodedquerychar.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [all_of_all_of_imp](declarations/all-of-all-of-imp.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [autf8EncodeChar_flatMap_ascii](declarations/autf8encodechar-flatmap-ascii.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [List.toByteArray_loop_eq](declarations/list-tobytearray-loop-eq.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ByteArray.toList_toByteArray](declarations/bytearray-tolist-tobytearray.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [isValidUTF8_of_isAsciiByte](declarations/isvalidutf8-of-isasciibyte.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [EncodedString](declarations/encodedstring.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [empty](declarations/empty-source-edition-2.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [push](declarations/push-source-edition-2.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [byteToHex](declarations/bytetohex-source-edition-2.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [encode](declarations/encode.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [ofByteArray?](declarations/ofbytearray-source-edition-11.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [ofByteArray!](declarations/ofbytearray-source-edition-3.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [ofString?](declarations/ofstring-source-edition-4.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [ofString!](declarations/ofstring-source-edition-3.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [new](declarations/new.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [decode](declarations/decode-source-edition-2.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `structure` | [EncodedQueryString](declarations/encodedquerystring.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [empty](declarations/empty.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [push](declarations/push.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [ofByteArray?](declarations/ofbytearray-source-edition-4.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [ofByteArray!](declarations/ofbytearray-source-edition-2.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [ofString?](declarations/ofstring-source-edition-2.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [ofString!](declarations/ofstring.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [new](declarations/new-source-edition-2.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [byteToHex](declarations/bytetohex.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [encode](declarations/encode-source-edition-5.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [toString](declarations/tostring.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [decode](declarations/decode-source-edition-5.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [(anonymous)](declarations/instance.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `abbrev` | [EncodedSegment](declarations/encodedsegment.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [encode](declarations/encode-source-edition-4.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [ofByteArray?](declarations/ofbytearray-source-edition-5.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [ofByteArray!](declarations/ofbytearray-source-edition-12.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [decode](declarations/decode-source-edition-4.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `abbrev` | [EncodedFragment](declarations/encodedfragment.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [encode](declarations/encode-source-edition-3.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [ofByteArray?](declarations/ofbytearray-source-edition-7.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [ofByteArray!](declarations/ofbytearray-source-edition-10.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [decode](declarations/decode.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `abbrev` | [EncodedUserInfo](declarations/encodeduserinfo.md) | 627 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [encode](declarations/encode-source-edition-2.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [ofByteArray?](declarations/ofbytearray-source-edition-9.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [ofByteArray!](declarations/ofbytearray-source-edition-8.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [decode](declarations/decode-source-edition-6.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `abbrev` | [EncodedQueryParam](declarations/encodedqueryparam.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [encode](declarations/encode-source-edition-6.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [ofByteArray?](declarations/ofbytearray.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [ofByteArray!](declarations/ofbytearray-source-edition-6.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [fromString?](declarations/fromstring.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [decode](declarations/decode-source-edition-3.md) | 691 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e7db48a972bab17a8d78d588637117c79c101c225d8a4f53eaf76fcf4ea6501 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Encoding/Variantc3229878cb2d9bdc5fe8f0c300a05dd34fe076e7321fc27de4c8bf828dbd86b8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
