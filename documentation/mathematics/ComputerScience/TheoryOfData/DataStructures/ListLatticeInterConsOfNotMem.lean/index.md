# List Lattice Inter Cons Of Not Mem

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 30 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5902bcaca37ad61aaa4910b78487b54b79e340e9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/ListLatticeInterConsOfNotMem.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [Disjoint.symm](declarations/disjoint-symm.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mem_union_left](declarations/mem-union-left.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mem_union_right](declarations/mem-union-right.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [sublist_suffix_of_union](declarations/sublist-suffix-of-union.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [suffix_union_right](declarations/suffix-union-right.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [union_sublist_append](declarations/union-sublist-append.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [forall_mem_union](declarations/forall-mem-union.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [forall_mem_of_forall_mem_union_left](declarations/forall-mem-of-forall-mem-union-left.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [forall_mem_of_forall_mem_union_right](declarations/forall-mem-of-forall-mem-union-right.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [inter_nil](declarations/inter-nil.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [inter_cons_of_mem](declarations/inter-cons-of-mem.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [inter_cons_of_not_mem](declarations/inter-cons-of-not-mem.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mem_of_mem_inter_left](declarations/mem-of-mem-inter-left.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mem_of_mem_inter_right](declarations/mem-of-mem-inter-right.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_inter_of_mem_of_mem](declarations/mem-inter-of-mem-of-mem.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [inter_subset_left](declarations/inter-subset-left.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [inter_subset_right](declarations/inter-subset-right.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [subset_inter](declarations/subset-inter.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [inter_eq_nil_iff_disjoint](declarations/inter-eq-nil-iff-disjoint.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [forall_mem_inter_of_forall_left](declarations/forall-mem-inter-of-forall-left.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [forall_mem_inter_of_forall_right](declarations/forall-mem-inter-of-forall-right.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [inter_reverse](declarations/inter-reverse.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [nil_bagInter](declarations/nil-baginter.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [bagInter_nil](declarations/baginter-nil.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [cons_bagInter_of_pos](declarations/cons-baginter-of-pos.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [cons_bagInter_of_neg](declarations/cons-baginter-of-neg.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mem_bagInter](declarations/mem-baginter.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [count_bagInter](declarations/count-baginter.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [bagInter_sublist_left](declarations/baginter-sublist-left.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [bagInter_nil_iff_inter_nil](declarations/baginter-nil-iff-inter-nil.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5e210d1e7277c1ba7da9cca1b807c0d01401d4766e5c8d972eea1dc161107be4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variant5b2a8ab6943e5bada1fbc1edd42f48460d5346965b11fba265244a8cbcbfd87c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
