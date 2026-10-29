# Wire

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**12 observed declarations and anonymous commands**, 6 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/InformationTheory/Huffman/Wire.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ce93eb54d75e47938ee25c1f223326f14f68607`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/InformationAndCommunicationTheoryCircuits/CommunicationInformation/PrefixLengthVariableCommaFreeCodes/Wire.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [octet](declarations/octet.md) | 8 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [rustOctet](declarations/rustoctet.md) | 15 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [octet_eq_rustOctet](declarations/octet-eq-rustoctet.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [octetBits](declarations/octetbits.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [rustOctetBits](declarations/rustoctetbits.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [octetBits_eq_rustOctetBits](declarations/octetbits-eq-rustoctetbits.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [octet_roundTrip](declarations/octet-roundtrip.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [pack](declarations/pack.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [unpack](declarations/unpack.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [unpack_pack](declarations/unpack-pack.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [storedBits_padding](declarations/storedbits-padding.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [pack_length](declarations/pack-length.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=025d47fbee81509f194d835952533cbd9abccd2c9fadd22697d29297ae23f1d1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/InformationTheory/Huffman/Wire.lean","GRWTSK/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Wire.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
