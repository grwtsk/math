# Linear Algebra DFinsupp Basis

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**45 observed declarations and anonymous commands**, 34 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1a33de20aca76f9b2e73f5acd5d6ea89e52095cf`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraDFinsuppBasis.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [lmk](declarations/lmk.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [lsingle](declarations/lsingle.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [lhom_ext](declarations/lhom-ext-source-edition-2.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [lhom_ext'](declarations/lhom-ext.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [lapply](declarations/lapply.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [lmk_apply](declarations/lmk-apply.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [lsingle_apply](declarations/lsingle-apply.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [lapply_apply](declarations/lapply-apply.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [addCommMonoidOfLinearMap](declarations/addcommmonoidoflinearmap.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [moduleOfLinearMap](declarations/moduleoflinearmap.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [lsum](declarations/lsum.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [lsum_single](declarations/lsum-single.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mapRange_smul](declarations/maprange-smul.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [mapRange.linearMap](declarations/maprange-linearmap.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mapRange.linearMap_id](declarations/maprange-linearmap-id.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mapRange.linearMap_comp](declarations/maprange-linearmap-comp.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [sum_mapRange_index.linearMap](declarations/sum-maprange-index-linearmap.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [mapRange.linearEquiv](declarations/maprange-linearequiv.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mapRange.linearEquiv_refl](declarations/maprange-linearequiv-refl.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mapRange.linearEquiv_trans](declarations/maprange-linearequiv-trans.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mapRange.linearEquiv_symm](declarations/maprange-linearequiv-symm.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [coprodMap](declarations/coprodmap.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [coprodMap_apply](declarations/coprodmap-apply.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [coprodMap_apply_single](declarations/coprodmap-apply-single.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [basis](declarations/basis.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [dfinsupp_sum_mem](declarations/dfinsupp-sum-mem.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [dfinsupp_sumAddHom_mem](declarations/dfinsupp-sumaddhom-mem.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [iSup_eq_range_dfinsupp_lsum](declarations/isup-eq-range-dfinsupp-lsum.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [biSup_eq_range_dfinsupp_lsum](declarations/bisup-eq-range-dfinsupp-lsum.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mem_iSup_iff_exists_dfinsupp](declarations/mem-isup-iff-exists-dfinsupp-source-edition-2.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mem_iSup_iff_exists_dfinsupp'](declarations/mem-isup-iff-exists-dfinsupp.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mem_biSup_iff_exists_dfinsupp](declarations/mem-bisup-iff-exists-dfinsupp.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [mem_iSup_finset_iff_exists_sum](declarations/mem-isup-finset-iff-exists-sum.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [independent_iff_forall_dfinsupp](declarations/independent-iff-forall-dfinsupp.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [independent_of_dfinsupp_lsum_injective](declarations/independent-of-dfinsupp-lsum-injective.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [independent_of_dfinsupp_sumAddHom_injective](declarations/independent-of-dfinsupp-sumaddhom-injective-source-edition-2.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [lsum_comp_mapRange_toSpanSingleton](declarations/lsum-comp-maprange-tospansingleton.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [independent_of_dfinsupp_sumAddHom_injective'](declarations/independent-of-dfinsupp-sumaddhom-injective.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Independent.dfinsupp_lsum_injective](declarations/independent-dfinsupp-lsum-injective.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Independent.dfinsupp_sumAddHom_injective](declarations/independent-dfinsupp-sumaddhom-injective.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [independent_iff_dfinsupp_lsum_injective](declarations/independent-iff-dfinsupp-lsum-injective.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [independent_iff_dfinsupp_sumAddHom_injective](declarations/independent-iff-dfinsupp-sumaddhom-injective.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Independent.linearIndependent](declarations/independent-linearindependent.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [independent_iff_linearIndependent_of_ne_zero](declarations/independent-iff-linearindependent-of-ne-zero.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b046ef1679388a420139dfb6f6530631ae7d564a33174056616b0d9e27cc1a3d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant494aa484c009d803a0f37e7bb67c998c6c4eb4873acce9b32d112d3f79cf3800.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
