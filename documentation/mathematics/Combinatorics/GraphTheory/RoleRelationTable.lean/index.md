# Role Relation Table

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Combinatorics/DirectedGraph/RoleRelationTable.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a008799c845b3c2f5683eba2740b2e1819f25bd4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/RoleRelationTable.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Table](declarations/table.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Vertex](declarations/vertex.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [RoleId](declarations/roleid.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [tableQuiver](declarations/tablequiver.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [vertexEquiv](declarations/vertexequiv.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [edgeId](declarations/edgeid.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [fullEdge](declarations/fulledge.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [fullEdge_source](declarations/fulledge-source.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [fullEdge_target](declarations/fulledge-target.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [fullEdge_edgeId](declarations/fulledge-edgeid.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [edgeId_fullEdge](declarations/edgeid-fulledge.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [edgeEquiv](declarations/edgeequiv.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [expandIds](declarations/expandids.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [encodePath](declarations/encodepath.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [encode](declarations/encode.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [expand_encodePath](declarations/expand-encodepath.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [expand_encode](declarations/expand-encode.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ids_expand](declarations/ids-expand.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [encodePath_comp](declarations/encodepath-comp.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [encode_nil](declarations/encode-nil.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `abbrev` | [ValidFrom](declarations/validfrom.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [valid_encode](declarations/valid-encode.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [decode](declarations/decode.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [encode_decode](declarations/encode-decode.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [decode_encode](declarations/decode-encode.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [pathStarEquivIds](declarations/pathstarequivids.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [encode_injective](declarations/encode-injective.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [finish](declarations/finish.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [finish_nil](declarations/finish-nil.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [finish_cons](declarations/finish-cons.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [decode_endpoint](declarations/decode-endpoint.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [lookup](declarations/lookup.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [lookup_roleId](declarations/lookup-roleid.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [lookup_out_of_bounds](declarations/lookup-out-of-bounds.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [lookup_wrong_role](declarations/lookup-wrong-role.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [idRows](declarations/idrows.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [expand_idRows](declarations/expand-idrows.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [decodeState](declarations/decodestate.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [compact_preserves_ids](declarations/compact-preserves-ids.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=05f3c258b7ee3e3dc9a80985b34110049501e14489181b315a1c7de086d74b94 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Combinatorics/DirectedGraph/RoleRelationTable.lean","GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/RoleRelationTable.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
