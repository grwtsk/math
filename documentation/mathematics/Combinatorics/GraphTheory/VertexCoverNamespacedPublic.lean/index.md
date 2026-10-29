# Vertex Cover Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/VertexCover/Variant390af645ad6fe9957e63be1947dbb440ef465523042cb33c2df189669c57ab9e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3eb89d082e2da05fa13a3a3d3d45e1735feb066e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/VertexCoverNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsVertexCover](declarations/isvertexcover.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [isVertexCover_empty](declarations/isvertexcover-empty.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [isVertexCover_univ](declarations/isvertexcover-univ.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [isVertexCover_bot](declarations/isvertexcover-bot.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [IsVertexCover.subset](declarations/isvertexcover-subset.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [IsVertexCover.mono](declarations/isvertexcover-mono.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [isIndepSet_compl_iff_isVertexCover](declarations/isindepset-compl-iff-isvertexcover.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [isVertexCover_compl](declarations/isvertexcover-compl.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [IsVertexCover.preimage](declarations/isvertexcover-preimage.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isVertexCover_preimage_iso](declarations/isvertexcover-preimage-iso.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [isVertexCover_image_iso](declarations/isvertexcover-image-iso.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [vertexCoverNum](declarations/vertexcovernum.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [vertexCoverNum_le_iff](declarations/vertexcovernum-le-iff.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [IsVertexCover.vertexCoverNum_le](declarations/isvertexcover-vertexcovernum-le.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [vertexCoverNum_exists](declarations/vertexcovernum-exists.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [exists_of_le_vertexCoverNum](declarations/exists-of-le-vertexcovernum.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [vertexCoverNum_bot](declarations/vertexcovernum-bot.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [vertexCoverNum_of_subsingleton](declarations/vertexcovernum-of-subsingleton.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [vertexCoverNum_eq_zero](declarations/vertexcovernum-eq-zero.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [vertexCoverNum_le_card_sub_one](declarations/vertexcovernum-le-card-sub-one.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [vertexCoverNum_ne_top_of_finite](declarations/vertexcovernum-ne-top-of-finite.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [vertexCoverNum_lt_card](declarations/vertexcovernum-lt-card.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [vertexCoverNum_le_encard_edgeSet](declarations/vertexcovernum-le-encard-edgeset.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [vertexCoverNum_ne_top_of_finite_edgeSet](declarations/vertexcovernum-ne-top-of-finite-edgeset.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [vertexCoverNum_top](declarations/vertexcovernum-top.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [IsContained.vertexCoverNum_le_vertexCoverNum](declarations/iscontained-vertexcovernum-le-vertexcovernum.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [vertexCoverNum_mono](declarations/vertexcovernum-mono.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [vertexCoverNum_congr](declarations/vertexcovernum-congr.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=77dbe3db7b81cef8e56b4b1cd3e9985b61b04c837d6918b658493f8a77061f47 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/VertexCover/Variant390af645ad6fe9957e63be1947dbb440ef465523042cb33c2df189669c57ab9e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
