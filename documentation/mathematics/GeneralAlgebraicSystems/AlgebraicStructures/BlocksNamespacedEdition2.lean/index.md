# Blocks Namespaced Edition2

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/UniversalAlgebra/Blocks/Variante3afb526265eda1580b86b58642fd6c9af7892944b58033f42dbdb60f1e7bf9d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ae10cc237a7795dee4e544d313e52871204f8e88`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/BlocksNamespacedEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BitString](declarations/bitstring.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [BitString.ext](declarations/bitstring-ext.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [BitString.empty](declarations/bitstring-empty.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [BitString.ofBits](declarations/bitstring-ofbits.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [ByteBitCodec](declarations/bytebitcodec.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [rowsFor](declarations/rowsfor.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [payloadBits_le_rowsFor_mul](declarations/payloadbits-le-rowsfor-mul.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [rowsFor_minimal](declarations/rowsfor-minimal.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [RawBitPacket](declarations/rawbitpacket.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [RawBitPacket.ext](declarations/rawbitpacket-ext.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [RawBitPacket.Canonical](declarations/rawbitpacket-canonical.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [BitPacket](declarations/bitpacket.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [rows](declarations/rows.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [matrix](declarations/matrix.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [payloadBits](declarations/payloadbits.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [rows_mk](declarations/rows-mk.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [matrix_mk](declarations/matrix-mk.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [payloadBits_mk](declarations/payloadbits-mk.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [capacity](declarations/capacity.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [rows_eq](declarations/rows-eq.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [padding](declarations/padding.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [block](declarations/block.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [unblock](declarations/unblock.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [block_rows](declarations/block-rows.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [block_payloadBits](declarations/block-payloadbits.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [unblock_bitLength](declarations/unblock-bitlength.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [unblock_block](declarations/unblock-block.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [block_unblock](declarations/block-unblock.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [blockEquiv](declarations/blockequiv.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `abbrev` | [VariableMatrix](declarations/variablematrix.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [BitPacket.toVariableMatrix](declarations/bitpacket-tovariablematrix.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [zeroPayloadOne](declarations/zeropayloadone.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [zeroPayloadTwo](declarations/zeropayloadtwo.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [variableMatrix_forgets_payload_length](declarations/variablematrix-forgets-payload-length.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3a75de00254672f289ef2ece62dc439b4282e24af0c75ddb5698cd1d45c36ff0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Blocks/Variante3afb526265eda1580b86b58642fd6c9af7892944b58033f42dbdb60f1e7bf9d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
