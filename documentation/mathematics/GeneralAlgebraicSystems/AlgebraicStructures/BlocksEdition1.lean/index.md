# Blocks Edition1

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b06a466f0bede49d2cf036e9498fb595ab66e82a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/BlocksEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BitString](declarations/bitstring.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [BitString.ext](declarations/bitstring-ext.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [BitString.empty](declarations/bitstring-empty.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [BitString.ofBits](declarations/bitstring-ofbits.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [ByteBitCodec](declarations/bytebitcodec.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [rowsFor](declarations/rowsfor.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [payloadBits_le_rowsFor_mul](declarations/payloadbits-le-rowsfor-mul.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [rowsFor_minimal](declarations/rowsfor-minimal.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [RawBitPacket](declarations/rawbitpacket.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [RawBitPacket.ext](declarations/rawbitpacket-ext.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [RawBitPacket.Canonical](declarations/rawbitpacket-canonical.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [BitPacket](declarations/bitpacket.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [rows](declarations/rows.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [matrix](declarations/matrix.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [payloadBits](declarations/payloadbits.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [rows_mk](declarations/rows-mk.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [matrix_mk](declarations/matrix-mk.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [payloadBits_mk](declarations/payloadbits-mk.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [capacity](declarations/capacity.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [rows_eq](declarations/rows-eq.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [padding](declarations/padding.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [block](declarations/block.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [unblock](declarations/unblock.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [block_rows](declarations/block-rows.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [block_payloadBits](declarations/block-payloadbits.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [unblock_bitLength](declarations/unblock-bitlength.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [unblock_block](declarations/unblock-block.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [block_unblock](declarations/block-unblock.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [blockEquiv](declarations/blockequiv.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `abbrev` | [VariableMatrix](declarations/variablematrix.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [BitPacket.toVariableMatrix](declarations/bitpacket-tovariablematrix.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [zeroPayloadOne](declarations/zeropayloadone.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [zeroPayloadTwo](declarations/zeropayloadtwo.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [variableMatrix_forgets_payload_length](declarations/variablematrix-forgets-payload-length.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=19879081f326f0deec4ba495b30f9cd599bf3da874d85e0fffac02d8501e40ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Blocks/Variant35b9b787181b1a8bb4771d1ef37c200c7801351ffda3a21a747b85dc81b5e5ce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
