# Encoding Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 12 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantc035399cc475838e75fc186a6e39583e17ebea422407a83f3b01f740bf0e881e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0b9e59e3e6a9011f012ea0a713e3e287006fa32c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/EncodingNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Encoding](declarations/encoding.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [Encoding.encode_injective](declarations/encoding-encode-injective.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [Γ'](declarations/anonymous.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [inhabitedΓ'](declarations/inhabited.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [inclusionBoolΓ'](declarations/inclusionbool.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [sectionΓ'Bool](declarations/section-bool.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [sectionΓ'Bool_inclusionBoolΓ'](declarations/section-bool-inclusionbool.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [inclusionBoolΓ'_injective](declarations/inclusionbool-injective.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [encodePosNum](declarations/encodeposnum.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [encodeNum](declarations/encodenum.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [encodeNat](declarations/encodenat.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [decodePosNum](declarations/decodeposnum.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [decodeNum](declarations/decodenum.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [decodeNat](declarations/decodenat.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [encodePosNum_nonempty](declarations/encodeposnum-nonempty.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [decode_encodePosNum](declarations/decode-encodeposnum.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [decode_encodeNum](declarations/decode-encodenum.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [decode_encodeNat](declarations/decode-encodenat.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [encodingNatBool](declarations/encodingnatbool.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [encodingNatΓ'](declarations/encodingnat.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [unaryEncodeNat](declarations/unaryencodenat.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [unaryDecodeNat](declarations/unarydecodenat.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [unary_decode_encode_nat](declarations/unary-decode-encode-nat.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [unaryEncodingNat](declarations/unaryencodingnat.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [encodeBool](declarations/encodebool.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [decodeBool](declarations/decodebool.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [decode_encodeBool](declarations/decode-encodebool.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [encodingBoolBool](declarations/encodingboolbool.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [inhabitedEncoding](declarations/inhabitedencoding.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Encoding.card_le_card_list](declarations/encoding-card-le-card-list.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Encoding.card_le_aleph0](declarations/encoding-card-le-aleph0.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [encodingList](declarations/encodinglist.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [encodingProd](declarations/encodingprod.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [FinEncoding](declarations/finencoding.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [Encoding.Γ](declarations/encoding-source-edition-2.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [FinEncoding.ΓFin](declarations/finencoding-fin.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [FinEncoding.toEncoding](declarations/finencoding-toencoding.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `abbrev` | [finEncodingNatBool](declarations/finencodingnatbool.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `abbrev` | [finEncodingNatΓ'](declarations/finencodingnat.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `abbrev` | [unaryFinEncodingNat](declarations/unaryfinencodingnat.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `abbrev` | [finEncodingBoolBool](declarations/finencodingboolbool.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [finEncodingList](declarations/finencodinglist.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [finEncodingPair](declarations/finencodingpair.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [FinEncoding.card_le_aleph0](declarations/finencoding-card-le-aleph0.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c6aeb21a8316f292e713bf13a8209bd557852ffa123f7376be9407b2f5cd4d67 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Encoding/Variantc035399cc475838e75fc186a6e39583e17ebea422407a83f3b01f740bf0e881e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
