# Sum Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**48 observed declarations and anonymous commands**, 33 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variant0657b9816f0186358952bd14303eed467723ff94eb3ed00602ccafaecbbc0350.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `75291901cd9c235beb2173e9688fb37d580d41e2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/SumPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [sum](declarations/sum.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [sum_adj_inl](declarations/sum-adj-inl.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [sum_adj_inr](declarations/sum-adj-inr.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [map_inl_sup_map_inr](declarations/map-inl-sup-map-inr.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [map_inl](declarations/map-inl.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [map_inr](declarations/map-inr.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Iso.sumComm](declarations/iso-sumcomm.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Iso.sumAssoc](declarations/iso-sumassoc.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Embedding.sumInl](declarations/embedding-suminl.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [Embedding.sumInr](declarations/embedding-suminr.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Hom.sum](declarations/hom-sum.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [Hom.sum_comp_sumComm](declarations/hom-sum-comp-sumcomm.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [Hom.sum_sum_comp_sumAssoc](declarations/hom-sum-sum-comp-sumassoc.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [Embedding.sum](declarations/embedding-sum.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [Embedding.toHom_sum](declarations/embedding-tohom-sum.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [Embedding.sum_comp_sumComm](declarations/embedding-sum-comp-sumcomm.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [Embedding.sum_sum_comp_sumAssoc](declarations/embedding-sum-sum-comp-sumassoc.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [Iso.sumCongr](declarations/iso-sumcongr.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [Iso.toHom_sumCongr](declarations/iso-tohom-sumcongr.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [Iso.toEmbedding_sumCongr](declarations/iso-toembedding-sumcongr.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [Iso.sumComm_comp_sumCongr](declarations/iso-sumcomm-comp-sumcongr.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [Iso.sumAssoc_comp_sumCongr](declarations/iso-sumassoc-comp-sumcongr.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [edgeSetSumEquiv](declarations/edgesetsumequiv.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [not_adj_sum_inl_inr](declarations/not-adj-sum-inl-inr.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [not_reachable_sum_inl_inr](declarations/not-reachable-sum-inl-inr.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [not_preconnected_sum](declarations/not-preconnected-sum.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [not_connected_sum](declarations/not-connected-sum.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [Reachable.sum_sup_edge](declarations/reachable-sum-sup-edge.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [Preconnected.sum_sup_edge](declarations/preconnected-sum-sup-edge.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [Connected.sum_sup_edge](declarations/connected-sum-sup-edge.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [Coloring.sum](declarations/coloring-sum.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [Coloring.sumLeft](declarations/coloring-sumleft.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [Coloring.sumRight](declarations/coloring-sumright.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [Coloring.sumLeft_sum](declarations/coloring-sumleft-sum.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Coloring.sumRight_sum](declarations/coloring-sumright-sum.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Coloring.sum_sumLeft_sumRight](declarations/coloring-sum-sumleft-sumright.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [Coloring.sumEquiv](declarations/coloring-sumequiv.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [Coloring.sumFin](declarations/coloring-sumfin.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Colorable.sum_max](declarations/colorable-sum-max.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Colorable.of_sum_left](declarations/colorable-of-sum-left.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Colorable.of_sum_right](declarations/colorable-of-sum-right.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [colorable_sum](declarations/colorable-sum.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [chromaticNumber_le_sum_left](declarations/chromaticnumber-le-sum-left.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [chromaticNumber_le_sum_right](declarations/chromaticnumber-le-sum-right.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [chromaticNumber_sum](declarations/chromaticnumber-sum.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [neighborSet_sum_inl](declarations/neighborset-sum-inl.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [neighborSet_sum_inr](declarations/neighborset-sum-inr.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [(anonymous)](declarations/instance.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe41c4f03a989fb5272fd6376bee6cc4638cc11f8effb50f76175f955a9af0f9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Sum/Variant0657b9816f0186358952bd14303eed467723ff94eb3ed00602ccafaecbbc0350.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
