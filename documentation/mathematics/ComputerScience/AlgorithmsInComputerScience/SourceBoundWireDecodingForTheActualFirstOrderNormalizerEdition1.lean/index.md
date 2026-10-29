# Source Bound Wire Decoding For The Actual First Order Normalizer Edition1

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 13 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantd7ce4d540a653e0c692bc8f5e7ab41be9c8c7b3c9d7353b895efb439bbe42a04.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `02e316e9d179ade80dd8ef9311f8f1c46e70f94c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/SourceBoundWireDecodingForTheActualFirstOrderNormalizerEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [WireTerm](declarations/wireterm.md) | 19 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [WireTerm.decode](declarations/wireterm-decode.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [WireTerm.encode](declarations/wireterm-encode.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [decode_encode](declarations/decode-encode.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [encode_decode](declarations/encode-decode.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [WireTerm.nodeCost](declarations/wireterm-nodecost.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [nodeCost_eq_size](declarations/nodecost-eq-size.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [Packet](declarations/packet.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [PacketValid](declarations/packetvalid.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [checkPacket](declarations/checkpacket.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [checkPacket_correct](declarations/checkpacket-correct.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [CheckedPacket](declarations/checkedpacket.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [admitPacket](declarations/admitpacket.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [admitPacket_sound](declarations/admitpacket-sound.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [normalizePacket](declarations/normalizepacket.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [normalizePacket_valid](declarations/normalizepacket-valid.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [normalizePacket_semantics](declarations/normalizepacket-semantics.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [normalizePacket_readout](declarations/normalizepacket-readout.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [fixture](declarations/fixture.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [fixture_admitted](declarations/fixture-admitted.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [checkedFixture](declarations/checkedfixture.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [fixture_normalized](declarations/fixture-normalized.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [wrong_context_rejected](declarations/wrong-context-rejected.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [undeclared_constructor_rejected](declarations/undeclared-constructor-rejected.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [changed_source_rejected](declarations/changed-source-rejected.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12451c1544928579ca37d1aab3e193b4def9b474047b2455edc7931da0b1a9ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WireNormalization/Variantd7ce4d540a653e0c692bc8f5e7ab41be9c8c7b3c9d7353b895efb439bbe42a04.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
