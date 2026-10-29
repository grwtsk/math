# Affine Space Basis Coord Apply Combination Of Not Mem Aligned

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basis/Variant9796610afc606515225a517eeb7a584bf7ae45a02aa85ee09da4fd4b038f05b2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f0f93f765be1ad54a5df2e04ab81a44e97ccef5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisCoordApplyCombinationOfNotMemAligned.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [AffineBasis](declarations/affinebasis.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [funLike](declarations/funlike.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [ext](declarations/ext.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [ind](declarations/ind.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [tot](declarations/tot.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [nonempty](declarations/nonempty.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [reindex](declarations/reindex.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [coe_reindex](declarations/coe-reindex.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [reindex_apply](declarations/reindex-apply.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [reindex_refl](declarations/reindex-refl.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [basisOf](declarations/basisof.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [basisOf_apply](declarations/basisof-apply.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [basisOf_reindex](declarations/basisof-reindex.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [coord](declarations/coord.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [linear_eq_sumCoords](declarations/linear-eq-sumcoords.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coord_reindex](declarations/coord-reindex.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coord_apply_eq](declarations/coord-apply-eq.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [coord_apply_ne](declarations/coord-apply-ne.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coord_apply](declarations/coord-apply.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [coord_apply_combination_of_mem](declarations/coord-apply-combination-of-mem.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coord_apply_combination_of_not_mem](declarations/coord-apply-combination-of-not-mem.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [sum_coord_apply_eq_one](declarations/sum-coord-apply-eq-one.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [affineCombination_coord_eq_self](declarations/affinecombination-coord-eq-self.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [linear_combination_coord_eq_self](declarations/linear-combination-coord-eq-self.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [ext_elem](declarations/ext-elem.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coe_coord_of_subsingleton_eq_one](declarations/coe-coord-of-subsingleton-eq-one.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [surjective_coord](declarations/surjective-coord.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [coords](declarations/coords.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [coords_apply](declarations/coords-apply.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [coord_apply_centroid](declarations/coord-apply-centroid.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [exists_affine_subbasis](declarations/exists-affine-subbasis.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [exists_affineBasis](declarations/exists-affinebasis.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=33a75712be300200b04ad7ab0927d65f63622c303d37d2766a5af2282c98bd20 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basis/Variant9796610afc606515225a517eeb7a584bf7ae45a02aa85ee09da4fd4b038f05b2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
