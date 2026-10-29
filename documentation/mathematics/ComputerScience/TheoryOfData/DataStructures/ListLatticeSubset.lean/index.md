# List Lattice Subset

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 33 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variantc6c2084c4da84f364939ce051036942e9031f3c5a32230957ac62b44b6674c07.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e830ee07fc6c9ad360ad374b1388a7ddddf2e9ec`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/ListLatticeSubset.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [Disjoint.symm](declarations/disjoint-symm.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mem_union_left](declarations/mem-union-left.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mem_union_right](declarations/mem-union-right.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [sublist_suffix_of_union](declarations/sublist-suffix-of-union.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [suffix_union_right](declarations/suffix-union-right.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [union_sublist_append](declarations/union-sublist-append.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [forall_mem_union](declarations/forall-mem-union.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [forall_mem_of_forall_mem_union_left](declarations/forall-mem-of-forall-mem-union-left.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [forall_mem_of_forall_mem_union_right](declarations/forall-mem-of-forall-mem-union-right.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Subset.union_eq_right](declarations/subset-union-eq-right.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [inter_nil](declarations/inter-nil-source-edition-2.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [inter_cons_of_mem](declarations/inter-cons-of-mem.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [inter_cons_of_notMem](declarations/inter-cons-of-notmem.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [inter_nil'](declarations/inter-nil.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mem_of_mem_inter_left](declarations/mem-of-mem-inter-left.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mem_of_mem_inter_right](declarations/mem-of-mem-inter-right.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mem_inter_of_mem_of_mem](declarations/mem-inter-of-mem-of-mem.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [inter_subset_left](declarations/inter-subset-left.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [inter_subset_right](declarations/inter-subset-right.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [subset_inter](declarations/subset-inter.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [inter_eq_nil_iff_disjoint](declarations/inter-eq-nil-iff-disjoint.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [forall_mem_inter_of_forall_left](declarations/forall-mem-inter-of-forall-left.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [forall_mem_inter_of_forall_right](declarations/forall-mem-inter-of-forall-right.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [inter_reverse](declarations/inter-reverse.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Subset.inter_eq_left](declarations/subset-inter-eq-left.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [nil_bagInter](declarations/nil-baginter.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [bagInter_nil](declarations/baginter-nil.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [cons_bagInter_of_pos](declarations/cons-baginter-of-pos.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [cons_bagInter_of_neg](declarations/cons-baginter-of-neg.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mem_bagInter](declarations/mem-baginter.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [count_bagInter](declarations/count-baginter.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [bagInter_sublist_left](declarations/baginter-sublist-left.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [bagInter_nil_iff_inter_nil](declarations/baginter-nil-iff-inter-nil.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a4bc277fe1af3e22d69eb8f2d11379402fde2d7de0e10b797f828f4b1adbaa99 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lattice/Variantc6c2084c4da84f364939ce051036942e9031f3c5a32230957ac62b44b6674c07.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
