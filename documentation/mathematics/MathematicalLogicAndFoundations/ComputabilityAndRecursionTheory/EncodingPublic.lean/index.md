# Encoding Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 12 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `02b6f9f3d7a5b946b855d127ab46b607a1a46f26`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/EncodingPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Encoding](declarations/encoding-source-edition-2.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [Encoding.encode_injective](declarations/encoding-encode-injective.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [Γ'](declarations/anonymous.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [inhabitedΓ'](declarations/inhabited.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [inclusionBoolΓ'](declarations/inclusionbool.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [sectionΓ'Bool](declarations/section-bool.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [sectionΓ'Bool_inclusionBoolΓ'](declarations/section-bool-inclusionbool.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [inclusionBoolΓ'_injective](declarations/inclusionbool-injective.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [encodePosNum](declarations/encodeposnum.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [encodeNum](declarations/encodenum.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [encodeNat](declarations/encodenat.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [decodePosNum](declarations/decodeposnum.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [decodeNum](declarations/decodenum.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [decodeNat](declarations/decodenat.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [encodePosNum_nonempty](declarations/encodeposnum-nonempty.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [decode_encodePosNum](declarations/decode-encodeposnum.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [decode_encodeNum](declarations/decode-encodenum.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [decode_encodeNat](declarations/decode-encodenat.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [encodingNatBool](declarations/encodingnatbool.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [encodingNatΓ'](declarations/encodingnat.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [unaryEncodeNat](declarations/unaryencodenat.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [unaryDecodeNat](declarations/unarydecodenat.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [unary_decode_encode_nat](declarations/unary-decode-encode-nat.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [unaryEncodingNat](declarations/unaryencodingnat.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [encodeBool](declarations/encodebool.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [decodeBool](declarations/decodebool.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [decode_encodeBool](declarations/decode-encodebool.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [encodingBoolBool](declarations/encodingboolbool.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [inhabitedEncoding](declarations/inhabitedencoding.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Encoding.card_le_card_list](declarations/encoding-card-le-card-list.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Encoding.card_le_aleph0](declarations/encoding-card-le-aleph0.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [encodingList](declarations/encodinglist.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [encodingProd](declarations/encodingprod.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [FinEncoding](declarations/finencoding.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [Encoding.Γ](declarations/encoding.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [FinEncoding.ΓFin](declarations/finencoding-fin.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [FinEncoding.toEncoding](declarations/finencoding-toencoding.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `abbrev` | [finEncodingNatBool](declarations/finencodingnatbool.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `abbrev` | [finEncodingNatΓ'](declarations/finencodingnat.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `abbrev` | [unaryFinEncodingNat](declarations/unaryfinencodingnat.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `abbrev` | [finEncodingBoolBool](declarations/finencodingboolbool.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [finEncodingList](declarations/finencodinglist.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [finEncodingPair](declarations/finencodingpair.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [FinEncoding.card_le_aleph0](declarations/finencoding-card-le-aleph0.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=949720552eb2f6a8dbe6d69583a54283f8de4a7b71a2609166ae7c30ad63111b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantb5c50c1c0afffe90834a651b97dc4a6e2afecb85ec20b11a849b46b8eb59ade7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
