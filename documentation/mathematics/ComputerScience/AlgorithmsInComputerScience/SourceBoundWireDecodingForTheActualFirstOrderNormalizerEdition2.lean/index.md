# Source Bound Wire Decoding For The Actual First Order Normalizer Edition2

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 13 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `951ec54205177dc3d307fb2a19405ffaceeb7b9b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/SourceBoundWireDecodingForTheActualFirstOrderNormalizerEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [WireTerm](declarations/wireterm.md) | 19 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [WireTerm.decode](declarations/wireterm-decode.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [WireTerm.encode](declarations/wireterm-encode.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [decode_encode](declarations/decode-encode.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [encode_decode](declarations/encode-decode.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [WireTerm.nodeCost](declarations/wireterm-nodecost.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [nodeCost_eq_size](declarations/nodecost-eq-size.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [Packet](declarations/packet.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [PacketValid](declarations/packetvalid.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [checkPacket](declarations/checkpacket.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [checkPacket_correct](declarations/checkpacket-correct.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [CheckedPacket](declarations/checkedpacket.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [admitPacket](declarations/admitpacket.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [admitPacket_sound](declarations/admitpacket-sound.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [normalizePacket](declarations/normalizepacket.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [normalizePacket_valid](declarations/normalizepacket-valid.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [normalizePacket_semantics](declarations/normalizepacket-semantics.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [normalizePacket_readout](declarations/normalizepacket-readout.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [fixture](declarations/fixture.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [fixture_admitted](declarations/fixture-admitted.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [checkedFixture](declarations/checkedfixture.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [fixture_normalized](declarations/fixture-normalized.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [wrong_context_rejected](declarations/wrong-context-rejected.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [undeclared_constructor_rejected](declarations/undeclared-constructor-rejected.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [changed_source_rejected](declarations/changed-source-rejected.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=975bed07c326390ca41208c1a67f1be348e183fb782a0cdec8dbc94066780367 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantf04bf228dbc0632c0aa22afcdf69043a774ecc40c4d5d1aec32a8f4f46fe6cb1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
