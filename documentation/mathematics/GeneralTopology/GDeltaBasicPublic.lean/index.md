# GDelta Basic Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**48 observed declarations and anonymous commands**, 43 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `feae671419368d0d284d9ed57c536b6b54afba33`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/GDeltaBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsGδ](declarations/isg.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [IsOpen.isGδ](declarations/isopen-isg.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [IsGδ.empty](declarations/isg-empty.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [IsGδ.univ](declarations/isg-univ.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [IsGδ.biInter_of_isOpen](declarations/isg-biinter-of-isopen.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [IsGδ.iInter_of_isOpen](declarations/isg-iinter-of-isopen.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [isGδ_iff_eq_iInter_nat](declarations/isg-iff-eq-iinter-nat.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [IsGδ.iInter](declarations/isg-iinter.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [IsGδ.biInter](declarations/isg-biinter.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [IsGδ.sInter](declarations/isg-sinter.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [IsGδ.inter](declarations/isg-inter.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [IsGδ.union](declarations/isg-union.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [IsGδ.sUnion](declarations/isg-sunion.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [IsGδ.biUnion](declarations/isg-biunion.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [IsGδ.iUnion](declarations/isg-iunion.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [IsGδ.preimage](declarations/isg-preimage.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [residual](declarations/residual.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [countableInterFilter_residual](declarations/countableinterfilter-residual.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [residual_of_dense_open](declarations/residual-of-dense-open.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [residual_of_dense_Gδ](declarations/residual-of-dense-g.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mem_residual_iff](declarations/mem-residual-iff.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [IsNowhereDense](declarations/isnowheredense.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [isNowhereDense_empty](declarations/isnowheredense-empty.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [IsNowhereDense.mono](declarations/isnowheredense-mono.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [IsNowhereDense.union](declarations/isnowheredense-union.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [IsNowhereDense.biUnion](declarations/isnowheredense-biunion.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [IsNowhereDense.iUnion](declarations/isnowheredense-iunion.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [IsClosed.isNowhereDense_iff](declarations/isclosed-isnowheredense-iff.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [IsNowhereDense.closure](declarations/isnowheredense-closure.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [IsNowhereDense.subset_of_closed_isNowhereDense](declarations/isnowheredense-subset-of-closed-isnowheredense.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [isClosed_isNowhereDense_iff_compl](declarations/isclosed-isnowheredense-iff-compl.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [isNowhereDense_iff_disjoint](declarations/isnowheredense-iff-disjoint.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [isNowhereDense_iff_forall_notMem_nhds](declarations/isnowheredense-iff-forall-notmem-nhds.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [Topology.IsInducing.isNowhereDense_image](declarations/topology-isinducing-isnowheredense-image.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [IsNowhereDense.image_val](declarations/isnowheredense-image-val.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [IsMeagre](declarations/ismeagre.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [IsMeagre.empty](declarations/ismeagre-empty.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [IsMeagre.mono](declarations/ismeagre-mono.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [IsMeagre.inter](declarations/ismeagre-inter.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [IsMeagre.union](declarations/ismeagre-union.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [isMeagre_iUnion](declarations/ismeagre-iunion.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [isMeagre_biUnion](declarations/ismeagre-biunion.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [isMeagre_iff_countable_union_isNowhereDense](declarations/ismeagre-iff-countable-union-isnowheredense.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [nonempty_of_not_isMeagre](declarations/nonempty-of-not-ismeagre.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [IsNowhereDense.isMeagre](declarations/isnowheredense-ismeagre.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [exists_of_not_isMeagre_biUnion](declarations/exists-of-not-ismeagre-biunion.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [Topology.IsInducing.isMeagre_image](declarations/topology-isinducing-ismeagre-image.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [IsMeagre.image_val](declarations/ismeagre-image-val.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=14d8ff98af7ff6d0f468d185f4e2eae92f14262a986ba6a09239a6266c6bb2dc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant839130eb18758aa2bfcbe3ef40c98fcf9e0827458293fbdb5d04a5ec43b2d08a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
