# Walk Decomp Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `702cf54255d4b8cba12c1806d8f4e0269761e8d4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/WalkDecompNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [takeUntil](declarations/takeuntil.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [takeUntil_nil](declarations/takeuntil-nil.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [takeUntil_cons](declarations/takeuntil-cons.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [takeUntil_first](declarations/takeuntil-first.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [nil_takeUntil](declarations/nil-takeuntil.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [dropUntil](declarations/dropuntil.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [take_spec](declarations/take-spec.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mem_support_iff_exists_append](declarations/mem-support-iff-exists-append.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [count_support_takeUntil_eq_one](declarations/count-support-takeuntil-eq-one.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [count_edges_takeUntil_le_one](declarations/count-edges-takeuntil-le-one.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [takeUntil_copy](declarations/takeuntil-copy.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [dropUntil_copy](declarations/dropuntil-copy.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [support_takeUntil_subset](declarations/support-takeuntil-subset.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [support_dropUntil_subset](declarations/support-dropuntil-subset.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [darts_takeUntil_subset](declarations/darts-takeuntil-subset.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [darts_dropUntil_subset](declarations/darts-dropuntil-subset.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [edges_takeUntil_subset](declarations/edges-takeuntil-subset.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [edges_dropUntil_subset](declarations/edges-dropuntil-subset.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [length_takeUntil_le](declarations/length-takeuntil-le.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [length_dropUntil_le](declarations/length-dropuntil-le.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [getVert_takeUntil](declarations/getvert-takeuntil.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [snd_takeUntil](declarations/snd-takeuntil.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [length_takeUntil_lt](declarations/length-takeuntil-lt.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [takeUntil_takeUntil](declarations/takeuntil-takeuntil.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [notMem_support_takeUntil_support_takeUntil_subset](declarations/notmem-support-takeuntil-support-takeuntil-subset.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [rotate](declarations/rotate.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [support_rotate](declarations/support-rotate.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [rotate_darts](declarations/rotate-darts.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [rotate_edges](declarations/rotate-edges.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mem_support_iff_exists_getVert](declarations/mem-support-iff-exists-getvert.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7d5548727d435cea998f1cfb4aa1be87812b674f6cd2135af904157f3148884b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/WalkDecomp/Variant0e21a36e67802c5137b620c18ff8e0e36325aea513dfb332e0b87ecfc24cd6f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
