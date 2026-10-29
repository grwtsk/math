# Vertex Cover Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e5b51edc202cd735d0adaa545740bea28cd75dba`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/VertexCoverPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsVertexCover](declarations/isvertexcover.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [isVertexCover_empty](declarations/isvertexcover-empty.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [isVertexCover_univ](declarations/isvertexcover-univ.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [isVertexCover_bot](declarations/isvertexcover-bot.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [IsVertexCover.subset](declarations/isvertexcover-subset.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [IsVertexCover.mono](declarations/isvertexcover-mono.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [isIndepSet_compl_iff_isVertexCover](declarations/isindepset-compl-iff-isvertexcover.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [isVertexCover_compl](declarations/isvertexcover-compl.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [IsVertexCover.preimage](declarations/isvertexcover-preimage.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isVertexCover_preimage_iso](declarations/isvertexcover-preimage-iso.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [isVertexCover_image_iso](declarations/isvertexcover-image-iso.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [vertexCoverNum](declarations/vertexcovernum.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [vertexCoverNum_le_iff](declarations/vertexcovernum-le-iff.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [IsVertexCover.vertexCoverNum_le](declarations/isvertexcover-vertexcovernum-le.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [vertexCoverNum_exists](declarations/vertexcovernum-exists.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [exists_of_le_vertexCoverNum](declarations/exists-of-le-vertexcovernum.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [vertexCoverNum_bot](declarations/vertexcovernum-bot.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [vertexCoverNum_of_subsingleton](declarations/vertexcovernum-of-subsingleton.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [vertexCoverNum_eq_zero](declarations/vertexcovernum-eq-zero.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [vertexCoverNum_le_card_sub_one](declarations/vertexcovernum-le-card-sub-one.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [vertexCoverNum_ne_top_of_finite](declarations/vertexcovernum-ne-top-of-finite.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [vertexCoverNum_lt_card](declarations/vertexcovernum-lt-card.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [vertexCoverNum_le_encard_edgeSet](declarations/vertexcovernum-le-encard-edgeset.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [vertexCoverNum_ne_top_of_finite_edgeSet](declarations/vertexcovernum-ne-top-of-finite-edgeset.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [vertexCoverNum_top](declarations/vertexcovernum-top.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [IsContained.vertexCoverNum_le_vertexCoverNum](declarations/iscontained-vertexcovernum-le-vertexcovernum.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [vertexCoverNum_mono](declarations/vertexcovernum-mono.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [vertexCoverNum_congr](declarations/vertexcovernum-congr.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d88f078acad3a8736c1551e9ddc8ce2e7a6198be7272b8b378dc5fe9bb584049 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/VertexCover/Variantf991ca3842c0ab7e5f7e6e585e980ddb97333d32580d846b5788af6431788cda.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
