# Encoding Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 13 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba8f6f5ce099a8624b7bc223fb429627a65dc74f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/EncodingNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Encoding](declarations/encoding.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [Encoding.encode_injective](declarations/encoding-encode-injective.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [FinEncoding](declarations/finencoding.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [Γ.fintype](declarations/fintype.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `inductive` | [Γ'](declarations/anonymous.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [inhabitedΓ'](declarations/inhabited.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [inclusionBoolΓ'](declarations/inclusionbool.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [sectionΓ'Bool](declarations/section-bool.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [sectionΓ'Bool_inclusionBoolΓ'](declarations/section-bool-inclusionbool.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [leftInverse_section_inclusion](declarations/leftinverse-section-inclusion.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [inclusionBoolΓ'_injective](declarations/inclusionbool-injective.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [encodePosNum](declarations/encodeposnum.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [encodeNum](declarations/encodenum.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [encodeNat](declarations/encodenat.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [decodePosNum](declarations/decodeposnum.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [decodeNum](declarations/decodenum.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [decodeNat](declarations/decodenat.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [encodePosNum_nonempty](declarations/encodeposnum-nonempty.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [decode_encodePosNum](declarations/decode-encodeposnum.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [decode_encodeNum](declarations/decode-encodenum.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [decode_encodeNat](declarations/decode-encodenat.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [encodingNatBool](declarations/encodingnatbool.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [finEncodingNatBool](declarations/finencodingnatbool.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [encodingNatΓ'](declarations/encodingnat.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [finEncodingNatΓ'](declarations/finencodingnat.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [unaryEncodeNat](declarations/unaryencodenat.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [unaryDecodeNat](declarations/unarydecodenat.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [unary_decode_encode_nat](declarations/unary-decode-encode-nat.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [unaryFinEncodingNat](declarations/unaryfinencodingnat.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [encodeBool](declarations/encodebool.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [decodeBool](declarations/decodebool.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [decode_encodeBool](declarations/decode-encodebool.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [finEncodingBoolBool](declarations/finencodingboolbool.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [inhabitedFinEncoding](declarations/inhabitedfinencoding.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [inhabitedEncoding](declarations/inhabitedencoding.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Encoding.card_le_card_list](declarations/encoding-card-le-card-list.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Encoding.card_le_aleph0](declarations/encoding-card-le-aleph0.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [FinEncoding.card_le_aleph0](declarations/finencoding-card-le-aleph0.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4654b7b82c5bd36a3f32b4fb98e8929f43d31f9f9bf02fdcc099533a3a1e853f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantd2cadd0e56bdcb26bec8f9cfd0b639a2505ab9df884612096d0662c32f2aca7b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
