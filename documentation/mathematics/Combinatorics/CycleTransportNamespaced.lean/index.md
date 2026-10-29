# Cycle Transport Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/CycleTransport/Variant8b59730a3459d26eb5b16043af60ba3a68235d0f94daaacc9b9c8ad99d6634a7.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a4e32e796f5cfd63530f1204f61d94bba90d5a38`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/CycleTransportNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [edgePermAt](declarations/edgepermat.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [forwardTransport](declarations/forwardtransport.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [reverseTransport](declarations/reversetransport.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [forwardSegment](declarations/forwardsegment.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [forwardPrefix](declarations/forwardprefix.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [reversePrefix](declarations/reverseprefix.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [orderedTransport](declarations/orderedtransport.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [orderedTransport_zero](declarations/orderedtransport-zero.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [forwardTransport_zero](declarations/forwardtransport-zero.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [reverseTransport_zero](declarations/reversetransport-zero.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [forwardTransport_succ](declarations/forwardtransport-succ.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [reverseTransport_succ](declarations/reversetransport-succ.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [forwardSegment_zero](declarations/forwardsegment-zero.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [forwardSegment_succ](declarations/forwardsegment-succ.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [forwardTransport_add](declarations/forwardtransport-add.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [forwardTransport_succ_apply](declarations/forwardtransport-succ-apply.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [reverseTransport_succ_apply](declarations/reversetransport-succ-apply.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [edgePermAt_symm](declarations/edgepermat-symm.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [reverseTransport_eq_symm_forward](declarations/reversetransport-eq-symm-forward.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [reverseTransport_forwardTransport](declarations/reversetransport-forwardtransport.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [forwardTransport_reverseTransport](declarations/forwardtransport-reversetransport.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [reversePrefix_eq_symm_forwardPrefix](declarations/reverseprefix-eq-symm-forwardprefix.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [orderedTransport_forward](declarations/orderedtransport-forward.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [orderedTransport_reverse](declarations/orderedtransport-reverse.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [transport_forward_apply](declarations/transport-forward-apply.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [CyclicReindexing](declarations/cyclicreindexing.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [cycle](declarations/cycle.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [cycle_orbit](declarations/cycle-orbit.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [cycle_edge](declarations/cycle-edge.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [cycle_direction](declarations/cycle-direction.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [CompleteCycleOrderWitness](declarations/completecycleorderwitness.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [completeCycleTransport_not_involutive](declarations/completecycletransport-not-involutive.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=624cdb681ec37bc508eac37280a7232eea535967de6daffc627460618ca39ef9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/CycleTransport/Variant8b59730a3459d26eb5b16043af60ba3a68235d0f94daaacc9b9c8ad99d6634a7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
