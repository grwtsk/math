# Walk Decomp

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8fbb005201509073aea8c64afb55ad984e028c18`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/WalkDecomp.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [takeUntil](declarations/takeuntil.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [takeUntil_nil](declarations/takeuntil-nil.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [takeUntil_cons](declarations/takeuntil-cons.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [takeUntil_first](declarations/takeuntil-first.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [nil_takeUntil](declarations/nil-takeuntil.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [dropUntil](declarations/dropuntil.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [take_spec](declarations/take-spec.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mem_support_iff_exists_append](declarations/mem-support-iff-exists-append.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [count_support_takeUntil_eq_one](declarations/count-support-takeuntil-eq-one.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [count_edges_takeUntil_le_one](declarations/count-edges-takeuntil-le-one.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [takeUntil_copy](declarations/takeuntil-copy.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [dropUntil_copy](declarations/dropuntil-copy.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [support_takeUntil_subset](declarations/support-takeuntil-subset.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [support_dropUntil_subset](declarations/support-dropuntil-subset.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [darts_takeUntil_subset](declarations/darts-takeuntil-subset.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [darts_dropUntil_subset](declarations/darts-dropuntil-subset.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [edges_takeUntil_subset](declarations/edges-takeuntil-subset.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [edges_dropUntil_subset](declarations/edges-dropuntil-subset.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [length_takeUntil_le](declarations/length-takeuntil-le.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [length_dropUntil_le](declarations/length-dropuntil-le.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [getVert_takeUntil](declarations/getvert-takeuntil.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [snd_takeUntil](declarations/snd-takeuntil.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [length_takeUntil_lt](declarations/length-takeuntil-lt.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [takeUntil_takeUntil](declarations/takeuntil-takeuntil.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [notMem_support_takeUntil_support_takeUntil_subset](declarations/notmem-support-takeuntil-support-takeuntil-subset.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [rotate](declarations/rotate.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [support_rotate](declarations/support-rotate.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [rotate_darts](declarations/rotate-darts.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [rotate_edges](declarations/rotate-edges.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mem_support_iff_exists_getVert](declarations/mem-support-iff-exists-getvert.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bffb9a37cdbe7e79d9a2c4a90fa3674bc34c40aa21a6803b9a078873e9826b16 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant8b3965bc0d34442133bec971f7f34798d0503bf472573f53917308ccf43ed52f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
