# Intrinsic Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**53 observed declarations and anonymous commands**, 50 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/ConvexGeometry/Intrinsic/Variant3651c554bde0865ce8faba56e6019d6c3ac7e0bdc83f3851a3bf764db50f092b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ae0676343f5d915d5c15cec6b4a26d15f573a5f7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ConvexAndDiscreteGeometry/GeneralConvexity/IntrinsicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [intrinsicInterior](declarations/intrinsicinterior.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [intrinsicFrontier](declarations/intrinsicfrontier.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [intrinsicClosure](declarations/intrinsicclosure.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mem_intrinsicInterior](declarations/mem-intrinsicinterior.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mem_intrinsicFrontier](declarations/mem-intrinsicfrontier.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [mem_intrinsicClosure](declarations/mem-intrinsicclosure.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [intrinsicInterior_subset](declarations/intrinsicinterior-subset.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [intrinsicFrontier_subset](declarations/intrinsicfrontier-subset.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [intrinsicFrontier_subset_intrinsicClosure](declarations/intrinsicfrontier-subset-intrinsicclosure.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [subset_intrinsicClosure](declarations/subset-intrinsicclosure.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [intrinsicInterior_empty](declarations/intrinsicinterior-empty.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [intrinsicFrontier_empty](declarations/intrinsicfrontier-empty.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [intrinsicClosure_empty](declarations/intrinsicclosure-empty.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [intrinsicClosure_nonempty](declarations/intrinsicclosure-nonempty.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [intrinsicInterior_singleton](declarations/intrinsicinterior-singleton.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [intrinsicFrontier_singleton](declarations/intrinsicfrontier-singleton.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [intrinsicClosure_singleton](declarations/intrinsicclosure-singleton.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [intrinsicClosure_mono](declarations/intrinsicclosure-mono.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [interior_subset_intrinsicInterior](declarations/interior-subset-intrinsicinterior.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [intrinsicClosure_subset_closure](declarations/intrinsicclosure-subset-closure.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [intrinsicFrontier_subset_frontier](declarations/intrinsicfrontier-subset-frontier.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [intrinsicClosure_subset_affineSpan](declarations/intrinsicclosure-subset-affinespan.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [intrinsicClosure_sdiff_intrinsicFrontier](declarations/intrinsicclosure-sdiff-intrinsicfrontier.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [intrinsicClosure_sdiff_intrinsicInterior](declarations/intrinsicclosure-sdiff-intrinsicinterior.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [intrinsicInterior_union_intrinsicFrontier](declarations/intrinsicinterior-union-intrinsicfrontier.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [intrinsicFrontier_union_intrinsicInterior](declarations/intrinsicfrontier-union-intrinsicinterior.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [isClosed_intrinsicClosure](declarations/isclosed-intrinsicclosure-source-edition-2.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [isClosed_intrinsicFrontier](declarations/isclosed-intrinsicfrontier.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [affineSpan_intrinsicClosure](declarations/affinespan-intrinsicclosure.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [IsClosed.intrinsicClosure](declarations/isclosed-intrinsicclosure.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [intrinsicClosure_idem](declarations/intrinsicclosure-idem.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [intrinsicClosure_eq_closure_inter_affineSpan](declarations/intrinsicclosure-eq-closure-inter-affinespan.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [intrinsicInterior_prod_eq](declarations/intrinsicinterior-prod-eq.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [preimage_image_eq_of_homeomorph_affineSpan](declarations/preimage-image-eq-of-homeomorph-affinespan.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [intrinsicInterior_image_of_homeomorph_affineSpan](declarations/intrinsicinterior-image-of-homeomorph-affinespan.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [intrinsicFrontier_image_of_homeomorph_affineSpan](declarations/intrinsicfrontier-image-of-homeomorph-affinespan.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [intrinsicClosure_image_of_homeomorph_affineSpan](declarations/intrinsicclosure-image-of-homeomorph-affinespan.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [intrinsicInterior_image](declarations/intrinsicinterior-image-source-edition-3.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [intrinsicFrontier_image](declarations/intrinsicfrontier-image.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [intrinsicClosure_image](declarations/intrinsicclosure-image.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [intrinsicInterior_image](declarations/intrinsicinterior-image-source-edition-2.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [intrinsicFrontier_image](declarations/intrinsicfrontier-image-source-edition-2.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [intrinsicClosure_image](declarations/intrinsicclosure-image-source-edition-3.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [intrinsicInterior_image](declarations/intrinsicinterior-image.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [intrinsicFrontier_image](declarations/intrinsicfrontier-image-source-edition-3.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [intrinsicClosure_image](declarations/intrinsicclosure-image-source-edition-2.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [intrinsicClosure_eq_closure](declarations/intrinsicclosure-eq-closure.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [closure_sdiff_intrinsicInterior](declarations/closure-sdiff-intrinsicinterior.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [closure_sdiff_intrinsicFrontier](declarations/closure-sdiff-intrinsicfrontier.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [Convex.intrinsicClosure](declarations/convex-intrinsicclosure.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [aux](declarations/aux.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [Set.Nonempty.intrinsicInterior](declarations/set-nonempty-intrinsicinterior.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [intrinsicInterior_nonempty](declarations/intrinsicinterior-nonempty.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be223c415c30f2660ee379cc7d085c460162001ea7b04052d159dbe5dcbd5b42 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ConvexGeometry/Intrinsic/Variant3651c554bde0865ce8faba56e6019d6c3ac7e0bdc83f3851a3bf764db50f092b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
