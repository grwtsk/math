# Cycle Transport

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c729cc82a0c98452be7d925093abd06c68df8b0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/CycleTransport.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [edgePermAt](declarations/edgepermat.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [forwardTransport](declarations/forwardtransport.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [reverseTransport](declarations/reversetransport.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [forwardSegment](declarations/forwardsegment.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [forwardPrefix](declarations/forwardprefix.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [reversePrefix](declarations/reverseprefix.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [orderedTransport](declarations/orderedtransport.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [orderedTransport_zero](declarations/orderedtransport-zero.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [forwardTransport_zero](declarations/forwardtransport-zero.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [reverseTransport_zero](declarations/reversetransport-zero.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [forwardTransport_succ](declarations/forwardtransport-succ.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [reverseTransport_succ](declarations/reversetransport-succ.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [forwardSegment_zero](declarations/forwardsegment-zero.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [forwardSegment_succ](declarations/forwardsegment-succ.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [forwardTransport_add](declarations/forwardtransport-add.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [forwardTransport_succ_apply](declarations/forwardtransport-succ-apply.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [reverseTransport_succ_apply](declarations/reversetransport-succ-apply.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [edgePermAt_symm](declarations/edgepermat-symm.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [reverseTransport_eq_symm_forward](declarations/reversetransport-eq-symm-forward.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [reverseTransport_forwardTransport](declarations/reversetransport-forwardtransport.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [forwardTransport_reverseTransport](declarations/forwardtransport-reversetransport.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [reversePrefix_eq_symm_forwardPrefix](declarations/reverseprefix-eq-symm-forwardprefix.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [orderedTransport_forward](declarations/orderedtransport-forward.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [orderedTransport_reverse](declarations/orderedtransport-reverse.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [transport_forward_apply](declarations/transport-forward-apply.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [CyclicReindexing](declarations/cyclicreindexing.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [cycle](declarations/cycle.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [cycle_orbit](declarations/cycle-orbit.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [cycle_edge](declarations/cycle-edge.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [cycle_direction](declarations/cycle-direction.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [CompleteCycleOrderWitness](declarations/completecycleorderwitness.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [completeCycleTransport_not_involutive](declarations/completecycletransport-not-involutive.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b395f6d53a1d944561e115455b9c7a4f1946ee136d77322cdb2183ec057b99df -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/CycleTransport/Variantd9d1758f43acfbedab035512c87ddf3d46aa2da24458ddf509088942022e07fe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
