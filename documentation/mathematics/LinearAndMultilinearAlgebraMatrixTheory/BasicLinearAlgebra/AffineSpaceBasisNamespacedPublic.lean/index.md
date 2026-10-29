# Affine Space Basis Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**51 observed declarations and anonymous commands**, 36 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b969dd0309b4342deea43a50dabc5d93b9c81fe`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [fintypeAffineCoords](declarations/fintypeaffinecoords.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [mem_fintypeAffineCoords_iff_sum](declarations/mem-fintypeaffinecoords-iff-sum.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [AffineIndependent.injOn_affineCombination_fintypeAffineCoords](declarations/affineindependent-injon-affinecombination-fintypeaffinecoords.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [finsuppAffineCoords](declarations/finsuppaffinecoords.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [mem_finsuppAffineCoords_iff_linearCombination](declarations/mem-finsuppaffinecoords-iff-linearcombination.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [AffineBasis](declarations/affinebasis.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [instFunLike](declarations/instfunlike.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ext](declarations/ext.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ind](declarations/ind.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [tot](declarations/tot.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [nonempty](declarations/nonempty.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [reindex](declarations/reindex.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [coe_reindex](declarations/coe-reindex.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [reindex_apply](declarations/reindex-apply.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [reindex_refl](declarations/reindex-refl.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [basisOf](declarations/basisof.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [basisOf_apply](declarations/basisof-apply.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [basisOf_reindex](declarations/basisof-reindex.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [coord](declarations/coord.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [linear_eq_sumCoords](declarations/linear-eq-sumcoords.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coord_reindex](declarations/coord-reindex.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coord_apply_eq](declarations/coord-apply-eq.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [coord_apply_ne](declarations/coord-apply-ne.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [coord_apply](declarations/coord-apply.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [coord_apply_combination_of_mem](declarations/coord-apply-combination-of-mem.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coord_apply_combination_of_notMem](declarations/coord-apply-combination-of-notmem.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [sum_coord_apply_eq_one](declarations/sum-coord-apply-eq-one.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [affineCombination_coord_eq_self](declarations/affinecombination-coord-eq-self.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [linear_combination_coord_eq_self](declarations/linear-combination-coord-eq-self.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [ext_elem](declarations/ext-elem.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [coe_coord_of_subsingleton_eq_one](declarations/coe-coord-of-subsingleton-eq-one.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [surjective_coord](declarations/surjective-coord.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [coords](declarations/coords.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [coords_apply](declarations/coords-apply.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [instVAdd](declarations/instvadd.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [coe_vadd](declarations/coe-vadd.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [basisOf_vadd](declarations/basisof-vadd.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [instAddAction](declarations/instaddaction.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [coord_vadd](declarations/coord-vadd.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [instSMul](declarations/instsmul.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [coe_smul](declarations/coe-smul.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [basisOf_smul](declarations/basisof-smul.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [reindex_smul](declarations/reindex-smul.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [coord_smul](declarations/coord-smul.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [instMulAction](declarations/instmulaction.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [coord_apply_centroid](declarations/coord-apply-centroid.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [exists_affine_subbasis](declarations/exists-affine-subbasis.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [exists_affineBasis](declarations/exists-affinebasis.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c4ac06d880b6c08db583d180579c8367a633af123854c7bfbb5578cdc1dd2368 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basis/Variant47c58902fcf71876836a105b02f0dc082192a727850eee2f979ca733c39aa0c9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
