# Affine Space Basis Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**51 observed declarations and anonymous commands**, 36 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basis/Variantfbc556d461db8148f7b258dfc35dadd77d8353512f1c7cb9ea1a808797469a85.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `55d351642c3e9abf8f02247a0cae1fdb777ff90b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AffineSpaceBasisPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [fintypeAffineCoords](declarations/fintypeaffinecoords.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [mem_fintypeAffineCoords_iff_sum](declarations/mem-fintypeaffinecoords-iff-sum.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [AffineIndependent.injOn_affineCombination_fintypeAffineCoords](declarations/affineindependent-injon-affinecombination-fintypeaffinecoords.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [finsuppAffineCoords](declarations/finsuppaffinecoords.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [mem_finsuppAffineCoords_iff_linearCombination](declarations/mem-finsuppaffinecoords-iff-linearcombination.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [AffineBasis](declarations/affinebasis.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [instFunLike](declarations/instfunlike.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ext](declarations/ext.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ind](declarations/ind.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [tot](declarations/tot.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [nonempty](declarations/nonempty.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [reindex](declarations/reindex.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [coe_reindex](declarations/coe-reindex.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [reindex_apply](declarations/reindex-apply.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [reindex_refl](declarations/reindex-refl.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [basisOf](declarations/basisof.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [basisOf_apply](declarations/basisof-apply.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [basisOf_reindex](declarations/basisof-reindex.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [coord](declarations/coord.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [linear_eq_sumCoords](declarations/linear-eq-sumcoords.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coord_reindex](declarations/coord-reindex.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coord_apply_eq](declarations/coord-apply-eq.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [coord_apply_ne](declarations/coord-apply-ne.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [coord_apply](declarations/coord-apply.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [coord_apply_combination_of_mem](declarations/coord-apply-combination-of-mem.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coord_apply_combination_of_notMem](declarations/coord-apply-combination-of-notmem.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [sum_coord_apply_eq_one](declarations/sum-coord-apply-eq-one.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [affineCombination_coord_eq_self](declarations/affinecombination-coord-eq-self.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [linear_combination_coord_eq_self](declarations/linear-combination-coord-eq-self.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [ext_elem](declarations/ext-elem.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [coe_coord_of_subsingleton_eq_one](declarations/coe-coord-of-subsingleton-eq-one.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [surjective_coord](declarations/surjective-coord.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [coords](declarations/coords.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [coords_apply](declarations/coords-apply.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [instVAdd](declarations/instvadd.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [coe_vadd](declarations/coe-vadd.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [basisOf_vadd](declarations/basisof-vadd.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [instAddAction](declarations/instaddaction.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [coord_vadd](declarations/coord-vadd.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [instSMul](declarations/instsmul.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [coe_smul](declarations/coe-smul.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [basisOf_smul](declarations/basisof-smul.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [reindex_smul](declarations/reindex-smul.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [coord_smul](declarations/coord-smul.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [instMulAction](declarations/instmulaction.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [coord_apply_centroid](declarations/coord-apply-centroid.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [exists_affine_subbasis](declarations/exists-affine-subbasis.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [exists_affineBasis](declarations/exists-affinebasis.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=794b2e9f2b74f1c9a49906850df7c7c605c5fae612f79cd7d6f0517972276b92 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basis/Variantfbc556d461db8148f7b258dfc35dadd77d8353512f1c7cb9ea1a808797469a85.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
