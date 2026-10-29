# Positive Rooted Trace Revision

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `01540fb01d6e59c3165384d39809624684daa84d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/PositiveRootedTraceRevision.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [loopVertexDecidableEq](declarations/loopvertexdecidableeq.md) | 15 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [loopTagDecidableEq](declarations/looptagdecidableeq.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [falseTag](declarations/falsetag.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [trueTag](declarations/truetag.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [tags_distinct](declarations/tags-distinct.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [falseOccurrence](declarations/falseoccurrence.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [trueOccurrence](declarations/trueoccurrence.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [oldRows](declarations/oldrows.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [appendedRows](declarations/appendedrows.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [repeatedRows](declarations/repeatedrows.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [old_inventory](declarations/old-inventory.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [appended_inventory](declarations/appended-inventory.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [repeated_inventory](declarations/repeated-inventory.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [old_references](declarations/old-references.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [stale_lookup_changed](declarations/stale-lookup-changed.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [stale_references_in_bounds](declarations/stale-references-in-bounds.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [stale_not_agreement](declarations/stale-not-agreement.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ranks_root_and_bounds_insufficient](declarations/ranks-root-and-bounds-insufficient.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [falseCertificate](declarations/falsecertificate.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `example` | [(anonymous)](declarations/example.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [stale_actual_unpack](declarations/stale-actual-unpack.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [stale_predicate_rejected](declarations/stale-predicate-rejected.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [stale_actual_revision](declarations/stale-actual-revision.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [repeated_agreement](declarations/repeated-agreement.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [repeated_certified_revision](declarations/repeated-certified-revision.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `example` | [(anonymous)](declarations/example-source-edition-3.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `example` | [(anonymous)](declarations/example-source-edition-2.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [boolQuiver](declarations/boolquiver.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [boolTagDecidableEq](declarations/booltagdecidableeq.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [emptyBefore](declarations/emptybefore.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [emptyAfter](declarations/emptyafter.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [empty_raw_context_equal](declarations/empty-raw-context-equal.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [empty_root_context_lost](declarations/empty-root-context-lost.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [empty_rooted_output_equal](declarations/empty-rooted-output-equal.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [empty_roots_still_required](declarations/empty-roots-still-required.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=90ccb0718d1aab6561d1e04d9e74b36d4a635a915dab63e3f62bd2bd37d61bbb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision.lean","GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/Checks/Positive/RootedTraceRevision__SourceOccurrence7eda0eef929bc3bfd4eaba45.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
