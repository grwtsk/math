# List Dedup Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 30 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dcefd49dde0a3369956e75398cd25404b6619a6d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/ListDedupPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [dedup_nil](declarations/dedup-nil.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [dedup_cons_of_mem'](declarations/dedup-cons-of-mem-source-edition-2.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [dedup_cons_of_notMem'](declarations/dedup-cons-of-notmem.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [dedup_cons'](declarations/dedup-cons.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mem_dedup](declarations/mem-dedup.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [dedup_cons_of_mem](declarations/dedup-cons-of-mem.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [dedup_cons_of_notMem](declarations/dedup-cons-of-notmem-source-edition-2.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [dedup_cons](declarations/dedup-cons-source-edition-2.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [dedup_sublist](declarations/dedup-sublist.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [dedup_subset](declarations/dedup-subset.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [subset_dedup](declarations/subset-dedup.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [nodup_dedup](declarations/nodup-dedup-source-edition-2.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [headI_dedup](declarations/headi-dedup.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [tail_dedup](declarations/tail-dedup.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [dedup_eq_self](declarations/dedup-eq-self.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [nodup_iff_sublist_dedup](declarations/nodup-iff-sublist-dedup.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [nodup_iff_length_dedup_eq](declarations/nodup-iff-length-dedup-eq.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [nodup_iff_le_length_dedup](declarations/nodup-iff-le-length-dedup.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [dedup_eq_cons](declarations/dedup-eq-cons.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [dedup_eq_nil](declarations/dedup-eq-nil.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Nodup.dedup](declarations/nodup-dedup.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [dedup_idem](declarations/dedup-idem.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [dedup_append](declarations/dedup-append.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [dedup_map_of_injective](declarations/dedup-map-of-injective.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Subset.dedup_append_right](declarations/subset-dedup-append-right.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Disjoint.union_eq](declarations/disjoint-union-eq.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Disjoint.dedup_append](declarations/disjoint-dedup-append.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [replicate_dedup](declarations/replicate-dedup.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [count_dedup](declarations/count-dedup.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Perm.dedup](declarations/perm-dedup.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=762e6b014ac266ebec9f0ae7585aec65361c4871b4d0ce1ab40f4b982785d3b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dedup/Variant29100fe0b2284ee17522ad3a500afc6f98189cf7f01f80ff17fb25158926bed7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
