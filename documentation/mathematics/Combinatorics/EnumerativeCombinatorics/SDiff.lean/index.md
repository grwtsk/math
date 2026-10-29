# SDiff

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**56 observed declarations and anonymous commands**, 54 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `afa8f2e68198b3f9e6f3eb1114bdfe0f83b2172c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/EnumerativeCombinatorics/SDiff.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [instSDiff](declarations/instsdiff.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [sdiff_val](declarations/sdiff-val.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mem_sdiff](declarations/mem-sdiff.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [inter_sdiff_self](declarations/inter-sdiff-self.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [notMem_sdiff_of_mem_right](declarations/notmem-sdiff-of-mem-right.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [notMem_sdiff_of_notMem_left](declarations/notmem-sdiff-of-notmem-left.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [union_sdiff_of_subset](declarations/union-sdiff-of-subset.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [sdiff_union_of_subset](declarations/sdiff-union-of-subset.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [inter_sdiff_assoc](declarations/inter-sdiff-assoc.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [sdiff_inter_right_comm](declarations/sdiff-inter-right-comm.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [inter_sdiff_left_comm](declarations/inter-sdiff-left-comm.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [sdiff_inter_self](declarations/sdiff-inter-self.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [sdiff_self](declarations/sdiff-self.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sdiff_inter_distrib_right](declarations/sdiff-inter-distrib-right.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [sdiff_inter_self_left](declarations/sdiff-inter-self-left.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [sdiff_inter_self_right](declarations/sdiff-inter-self-right.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [sdiff_empty](declarations/sdiff-empty.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [sdiff_subset_sdiff](declarations/sdiff-subset-sdiff.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [sdiff_subset_sdiff_iff_subset](declarations/sdiff-subset-sdiff-iff-subset.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [coe_sdiff](declarations/coe-sdiff.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [union_sdiff_self_eq_union](declarations/union-sdiff-self-eq-union.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [sdiff_union_self_eq_union](declarations/sdiff-union-self-eq-union.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [union_sdiff_left](declarations/union-sdiff-left.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [union_sdiff_right](declarations/union-sdiff-right.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [union_sdiff_cancel_left](declarations/union-sdiff-cancel-left.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [union_sdiff_cancel_right](declarations/union-sdiff-cancel-right.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [union_sdiff_symm](declarations/union-sdiff-symm.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [sdiff_union_inter](declarations/sdiff-union-inter.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [sdiff_idem](declarations/sdiff-idem.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [subset_sdiff](declarations/subset-sdiff.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [sdiff_eq_empty_iff_subset](declarations/sdiff-eq-empty-iff-subset.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [sdiff_nonempty](declarations/sdiff-nonempty.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [empty_sdiff](declarations/empty-sdiff.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [insert_sdiff_of_notMem](declarations/insert-sdiff-of-notmem.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [insert_sdiff_of_mem](declarations/insert-sdiff-of-mem.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [insert_sdiff_cancel](declarations/insert-sdiff-cancel.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [insert_sdiff_insert](declarations/insert-sdiff-insert-source-edition-2.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [insert_sdiff_insert'](declarations/insert-sdiff-insert.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [cons_sdiff_cons](declarations/cons-sdiff-cons.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [sdiff_insert_of_notMem](declarations/sdiff-insert-of-notmem.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [sdiff_subset](declarations/sdiff-subset.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [sdiff_ssubset](declarations/sdiff-ssubset.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [union_sdiff_distrib](declarations/union-sdiff-distrib.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [sdiff_union_distrib](declarations/sdiff-union-distrib.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [union_sdiff_self](declarations/union-sdiff-self.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [Nontrivial.sdiff_singleton_nonempty](declarations/nontrivial-sdiff-singleton-nonempty.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [sdiff_sdiff_left'](declarations/sdiff-sdiff-left.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [sdiff_union_sdiff_cancel](declarations/sdiff-union-sdiff-cancel.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [sdiff_sdiff_eq_sdiff_union](declarations/sdiff-sdiff-eq-sdiff-union.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [sdiff_sdiff_self_left](declarations/sdiff-sdiff-self-left.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [sdiff_sdiff_eq_self](declarations/sdiff-sdiff-eq-self.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [sdiff_eq_sdiff_iff_inter_eq_inter](declarations/sdiff-eq-sdiff-iff-inter-eq-inter.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [union_eq_sdiff_union_sdiff_union_inter](declarations/union-eq-sdiff-union-sdiff-union-inter.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [sdiff_eq_self_iff_disjoint](declarations/sdiff-eq-self-iff-disjoint.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [sdiff_eq_self_of_disjoint](declarations/sdiff-eq-self-of-disjoint.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f17035367c1cb4ab598857c5bce72ea36a9072e29f31cc9f03fb4f8efa1318f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/SDiff/Variant778924afcba856ea65fc0cbb5673e65ba12a747db718756b34610a2f22549ab6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
