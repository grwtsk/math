# Eigenspace Basic Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**119 observed declarations and anonymous commands**, 101 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basic/Varianta62b802bd9b081a20e30716e1c25cbdacbfcc0cad0cad7db304e61d21c7211b5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de4180f04893b0a4f45fb821c47dc36e8ac22963`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [genEigenspace](declarations/geneigenspace.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [mem_genEigenspace](declarations/mem-geneigenspace.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [genEigenspace_directed](declarations/geneigenspace-directed.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [mem_genEigenspace_nat](declarations/mem-geneigenspace-nat.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [map_genEigenspace_le](declarations/map-geneigenspace-le.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [mapsTo_genEigenspace_of_comp](declarations/mapsto-geneigenspace-of-comp.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [mem_genEigenspace_top](declarations/mem-geneigenspace-top.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [genEigenspace_nat](declarations/geneigenspace-nat.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [genEigenspace_eq_iSup_genEigenspace_nat](declarations/geneigenspace-eq-isup-geneigenspace-nat.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [genEigenspace_top](declarations/geneigenspace-top.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [genEigenspace_one](declarations/geneigenspace-one.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [mem_genEigenspace_one](declarations/mem-geneigenspace-one.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [mem_genEigenspace_zero](declarations/mem-geneigenspace-zero.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [genEigenspace_zero](declarations/geneigenspace-zero.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [genEigenspace_zero_nat](declarations/geneigenspace-zero-nat.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [HasUnifEigenvector](declarations/hasunifeigenvector.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [HasUnifEigenvalue](declarations/hasunifeigenvalue.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [UnifEigenvalues](declarations/unifeigenvalues.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [UnifEigenvalues.val](declarations/unifeigenvalues-val.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [UnifEigenvalues.val_mk](declarations/unifeigenvalues-val-mk.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [UnifEigenvalues.mk_val](declarations/unifeigenvalues-mk-val.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [UnifEigenvalues.instCoeOut](declarations/unifeigenvalues-instcoeout.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [UnivEigenvalues.instDecidableEq](declarations/univeigenvalues-instdecidableeq.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [HasUnifEigenvector.hasUnifEigenvalue](declarations/hasunifeigenvector-hasunifeigenvalue.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [HasUnifEigenvector.apply_eq_smul](declarations/hasunifeigenvector-apply-eq-smul.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [HasUnifEigenvector.pow_apply](declarations/hasunifeigenvector-pow-apply.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [HasUnifEigenvalue.exists_hasUnifEigenvector](declarations/hasunifeigenvalue-exists-hasunifeigenvector.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [HasUnifEigenvalue.pow](declarations/hasunifeigenvalue-pow.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [HasUnifEigenvalue.isNilpotent_of_isNilpotent](declarations/hasunifeigenvalue-isnilpotent-of-isnilpotent.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [HasUnifEigenvalue.mem_spectrum](declarations/hasunifeigenvalue-mem-spectrum.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [hasUnifEigenvalue_iff_mem_spectrum](declarations/hasunifeigenvalue-iff-mem-spectrum.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [genEigenspace_div](declarations/geneigenspace-div.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [genEigenrange](declarations/geneigenrange.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [genEigenrange_nat](declarations/geneigenrange-nat.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [HasUnifEigenvalue.exp_ne_zero](declarations/hasunifeigenvalue-exp-ne-zero.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [maxUnifEigenspaceIndex](declarations/maxunifeigenspaceindex.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [genEigenspace_top_eq_maxUnifEigenspaceIndex](declarations/geneigenspace-top-eq-maxunifeigenspaceindex.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [genEigenspace_le_genEigenspace_maxUnifEigenspaceIndex](declarations/geneigenspace-le-geneigenspace-maxunifeigenspaceindex.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [genEigenspace_eq_genEigenspace_maxUnifEigenspaceIndex_of_le](declarations/geneigenspace-eq-geneigenspace-maxunifeigenspaceindex-of-le.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [HasUnifEigenvalue.le](declarations/hasunifeigenvalue-le.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [HasUnifEigenvalue.lt](declarations/hasunifeigenvalue-lt.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [hasUnifEigenvalue_iff_hasUnifEigenvalue_one](declarations/hasunifeigenvalue-iff-hasunifeigenvalue-one.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [maxUnifEigenspaceIndex_le_finrank](declarations/maxunifeigenspaceindex-le-finrank.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [genEigenspace_le_genEigenspace_finrank](declarations/geneigenspace-le-geneigenspace-finrank.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [genEigenspace_eq_genEigenspace_finrank_of_le](declarations/geneigenspace-eq-geneigenspace-finrank-of-le.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [mapsTo_genEigenspace_of_comm](declarations/mapsto-geneigenspace-of-comm.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [isNilpotent_restrict_genEigenspace_nat](declarations/isnilpotent-restrict-geneigenspace-nat.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [isNilpotent_restrict_genEigenspace_top](declarations/isnilpotent-restrict-geneigenspace-top.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `abbrev` | [eigenspace](declarations/eigenspace.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [eigenspace_def](declarations/eigenspace-def.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [eigenspace_zero](declarations/eigenspace-zero.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `abbrev` | [HasEigenvector](declarations/haseigenvector.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [hasEigenvector_iff](declarations/haseigenvector-iff.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `abbrev` | [HasEigenvalue](declarations/haseigenvalue.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [hasEigenvalue_iff](declarations/haseigenvalue-iff.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `abbrev` | [Eigenvalues](declarations/eigenvalues.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `abbrev` | [Eigenvalues.val](declarations/eigenvalues-val.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [Eigenvalues.val_mk](declarations/eigenvalues-val-mk.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [Eigenvalues.mk_val](declarations/eigenvalues-mk-val.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [hasEigenvalue_of_hasEigenvector](declarations/haseigenvalue-of-haseigenvector.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [mem_eigenspace_iff](declarations/mem-eigenspace-iff.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [HasEigenvector.apply_eq_smul](declarations/haseigenvector-apply-eq-smul.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [HasEigenvector.pow_apply](declarations/haseigenvector-pow-apply.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [HasEigenvalue.exists_hasEigenvector](declarations/haseigenvalue-exists-haseigenvector.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [HasEigenvalue.pow](declarations/haseigenvalue-pow.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [genEigenspace_mem_invtSubmodule](declarations/geneigenspace-mem-invtsubmodule.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [eigenspace_mem_invtSubmodule](declarations/eigenspace-mem-invtsubmodule.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [restrict_eigenspace](declarations/restrict-eigenspace.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [HasEigenvalue.isNilpotent_of_isNilpotent](declarations/haseigenvalue-isnilpotent-of-isnilpotent.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [HasEigenvalue.mem_spectrum](declarations/haseigenvalue-mem-spectrum.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [hasEigenvalue_iff_mem_spectrum](declarations/haseigenvalue-iff-mem-spectrum.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [eigenspace_div](declarations/eigenspace-div.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `abbrev` | [HasGenEigenvector](declarations/hasgeneigenvector.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `lemma` | [hasGenEigenvector_iff](declarations/hasgeneigenvector-iff.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `abbrev` | [HasGenEigenvalue](declarations/hasgeneigenvalue.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `lemma` | [hasGenEigenvalue_iff](declarations/hasgeneigenvalue-iff.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [exp_ne_zero_of_hasGenEigenvalue](declarations/exp-ne-zero-of-hasgeneigenvalue.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `abbrev` | [maxGenEigenspace](declarations/maxgeneigenspace.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `lemma` | [iSup_genEigenspace_eq](declarations/isup-geneigenspace-eq.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [genEigenspace_le_maximal](declarations/geneigenspace-le-maximal.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [mem_maxGenEigenspace](declarations/mem-maxgeneigenspace.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `abbrev` | [maxGenEigenspaceIndex](declarations/maxgeneigenspaceindex.md) | 577 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [maxGenEigenspace_eq](declarations/maxgeneigenspace-eq.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [maxGenEigenspace_eq_maxGenEigenspace_zero](declarations/maxgeneigenspace-eq-maxgeneigenspace-zero.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [hasGenEigenvalue_of_hasGenEigenvalue_of_le](declarations/hasgeneigenvalue-of-hasgeneigenvalue-of-le.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [eigenspace_le_genEigenspace](declarations/eigenspace-le-geneigenspace.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [eigenspace_le_maxGenEigenspace](declarations/eigenspace-le-maxgeneigenspace.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [hasGenEigenvalue_of_hasEigenvalue](declarations/hasgeneigenvalue-of-haseigenvalue.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [hasEigenvalue_of_hasGenEigenvalue](declarations/haseigenvalue-of-hasgeneigenvalue.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [hasGenEigenvalue_iff_hasEigenvalue](declarations/hasgeneigenvalue-iff-haseigenvalue.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [maxGenEigenspace_eq_genEigenspace_finrank](declarations/maxgeneigenspace-eq-geneigenspace-finrank.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `lemma` | [mapsTo_maxGenEigenspace_of_comm](declarations/mapsto-maxgeneigenspace-of-comm.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `lemma` | [isNilpotent_restrict_sub_algebraMap](declarations/isnilpotent-restrict-sub-algebramap.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `lemma` | [isNilpotent_restrict_maxGenEigenspace_sub_algebraMap](declarations/isnilpotent-restrict-maxgeneigenspace-sub-algebramap.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `lemma` | [disjoint_genEigenspace](declarations/disjoint-geneigenspace.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `lemma` | [injOn_genEigenspace](declarations/injon-geneigenspace.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `lemma` | [injOn_maxGenEigenspace](declarations/injon-maxgeneigenspace.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [independent_genEigenspace](declarations/independent-geneigenspace.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [independent_maxGenEigenspace](declarations/independent-maxgeneigenspace.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [eigenspaces_iSupIndep](declarations/eigenspaces-isupindep.md) | 739 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [eigenvectors_linearIndependent'](declarations/eigenvectors-linearindependent.md) | 745 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [eigenvectors_linearIndependent](declarations/eigenvectors-linearindependent-source-edition-2.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [genEigenspace_restrict](declarations/geneigenspace-restrict.md) | 765 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `lemma` | [_root_.Submodule.inf_genEigenspace](declarations/root-submodule-inf-geneigenspace.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `lemma` | [mapsTo_restrict_maxGenEigenspace_restrict_of_mapsTo](declarations/mapsto-restrict-maxgeneigenspace-restrict-of-mapsto.md) | 787 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [eigenspace_restrict_le_eigenspace](declarations/eigenspace-restrict-le-eigenspace.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [generalized_eigenvec_disjoint_range_ker](declarations/generalized-eigenvec-disjoint-range-ker.md) | 808 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [eigenspace_restrict_eq_bot](declarations/eigenspace-restrict-eq-bot.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [pos_finrank_genEigenspace_of_hasEigenvalue](declarations/pos-finrank-geneigenspace-of-haseigenvalue.md) | 835 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [map_genEigenrange_le](declarations/map-geneigenrange-le.md) | 845 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `lemma` | [genEigenspace_le_smul](declarations/geneigenspace-le-smul.md) | 856 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `lemma` | [genEigenspace_inf_le_add](declarations/geneigenspace-inf-le-add.md) | 863 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `lemma` | [map_smul_of_iInf_genEigenspace_ne_bot](declarations/map-smul-of-iinf-geneigenspace-ne-bot.md) | 887 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `lemma` | [map_add_of_iInf_genEigenspace_ne_bot_of_commute](declarations/map-add-of-iinf-geneigenspace-ne-bot-of-commute.md) | 900 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `lemma` | [hasEigenvalue_neg_iff](declarations/haseigenvalue-neg-iff.md) | 918 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `lemma` | [hasEigenvalue_add_iff](declarations/haseigenvalue-add-iff-source-edition-2.md) | 924 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `lemma` | [hasEigenvalue_add'_iff](declarations/haseigenvalue-add-iff.md) | 929 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `lemma` | [hasEigenvalue_sub_iff](declarations/haseigenvalue-sub-iff.md) | 934 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `lemma` | [hasEigenvalue_sub'_iff](declarations/haseigenvalue-sub-iff-source-edition-2.md) | 938 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=478589e2fb2f56ddde6677b735602e33ffe408e5e74961ff9ae161eb92d70ae9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Varianta62b802bd9b081a20e30716e1c25cbdacbfcc0cad0cad7db304e61d21c7211b5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
