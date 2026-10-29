# Semidirect Product Namespaced Equiv Prod

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**57 observed declarations and anonymous commands**, 40 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6eee6b88295a2404cc78250bccb8979a79ca1821`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/SemidirectProductNamespacedEquivProd.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [SemidirectProduct](declarations/semidirectproduct.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [mul_def](declarations/mul-def.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mul_left](declarations/mul-left.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [mul_right](declarations/mul-right.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [one_left](declarations/one-left.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [one_right](declarations/one-right.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [inv_left](declarations/inv-left.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [inv_right](declarations/inv-right.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [inl](declarations/inl.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [left_inl](declarations/left-inl.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [right_inl](declarations/right-inl.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [inl_injective](declarations/inl-injective.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [inl_inj](declarations/inl-inj.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [inr](declarations/inr.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [left_inr](declarations/left-inr.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [right_inr](declarations/right-inr.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [inr_injective](declarations/inr-injective.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [inr_inj](declarations/inr-inj.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [inl_aut](declarations/inl-aut.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [inl_aut_inv](declarations/inl-aut-inv.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mk_eq_inl_mul_inr](declarations/mk-eq-inl-mul-inr.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [inl_left_mul_inr_right](declarations/inl-left-mul-inr-right.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [rightHom](declarations/righthom.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [rightHom_eq_right](declarations/righthom-eq-right.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [rightHom_comp_inl](declarations/righthom-comp-inl.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [rightHom_comp_inr](declarations/righthom-comp-inr.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [rightHom_inl](declarations/righthom-inl.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [rightHom_inr](declarations/righthom-inr.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [rightHom_surjective](declarations/righthom-surjective.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [range_inl_eq_ker_rightHom](declarations/range-inl-eq-ker-righthom.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [equivProd](declarations/equivprod.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [mulEquivProd](declarations/mulequivprod.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [lift](declarations/lift.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [lift_inl](declarations/lift-inl.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [lift_comp_inl](declarations/lift-comp-inl.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [lift_inr](declarations/lift-inr.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [lift_comp_inr](declarations/lift-comp-inr.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [lift_unique](declarations/lift-unique.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [hom_ext](declarations/hom-ext.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [monoidHomSubgroup](declarations/monoidhomsubgroup.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [mulEquivSubgroup](declarations/mulequivsubgroup.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [map](declarations/map.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [map_left](declarations/map-left.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [map_right](declarations/map-right.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [rightHom_comp_map](declarations/righthom-comp-map.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [map_inl](declarations/map-inl.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [map_comp_inl](declarations/map-comp-inl.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [map_inr](declarations/map-inr.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [map_comp_inr](declarations/map-comp-inr.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [congr](declarations/congr-source-edition-2.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [congr'](declarations/congr.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [card](declarations/card.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba15fe1f372febc9b30f69346fa890fee9f49bce8587e662f98bc9c18fac637b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/SemidirectProduct/Variantaeab4e96cd7d2531e0017f4faa94720ec7fac9e091b5729050d9f8c8eef988d3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
