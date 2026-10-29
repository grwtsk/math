# Eigenspace Basic Gen Eigenspace

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**115 observed declarations and anonymous commands**, 97 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant27d88254a9ebdbb2c53cc60b812d95a9585d6e01b50c058e6cc613c66582649a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ecb7e87b5ec0cddfa2cef50c4f1f5e69c7e9eff1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigenspaceBasicGenEigenspace.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [genEigenspace](declarations/geneigenspace.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [mem_genEigenspace](declarations/mem-geneigenspace.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [genEigenspace_directed](declarations/geneigenspace-directed.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [mem_genEigenspace_nat](declarations/mem-geneigenspace-nat.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [mem_genEigenspace_top](declarations/mem-geneigenspace-top.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [genEigenspace_nat](declarations/geneigenspace-nat.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [genEigenspace_eq_iSup_genEigenspace_nat](declarations/geneigenspace-eq-isup-geneigenspace-nat.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [genEigenspace_top](declarations/geneigenspace-top.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [genEigenspace_one](declarations/geneigenspace-one.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [mem_genEigenspace_one](declarations/mem-geneigenspace-one.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [mem_genEigenspace_zero](declarations/mem-geneigenspace-zero.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [genEigenspace_zero](declarations/geneigenspace-zero.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [genEigenspace_zero_nat](declarations/geneigenspace-zero-nat.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [HasUnifEigenvector](declarations/hasunifeigenvector.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [HasUnifEigenvalue](declarations/hasunifeigenvalue.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [UnifEigenvalues](declarations/unifeigenvalues.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [UnifEigenvalues.val](declarations/unifeigenvalues-val.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [UnifEigenvalues.instCoeOut](declarations/unifeigenvalues-instcoeout.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [UnivEigenvalues.instDecidableEq](declarations/univeigenvalues-instdecidableeq.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [HasUnifEigenvector.hasUnifEigenvalue](declarations/hasunifeigenvector-hasunifeigenvalue.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [HasUnifEigenvector.apply_eq_smul](declarations/hasunifeigenvector-apply-eq-smul.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [HasUnifEigenvector.pow_apply](declarations/hasunifeigenvector-pow-apply.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [HasUnifEigenvalue.exists_hasUnifEigenvector](declarations/hasunifeigenvalue-exists-hasunifeigenvector.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [HasUnifEigenvalue.pow](declarations/hasunifeigenvalue-pow.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [HasUnifEigenvalue.isNilpotent_of_isNilpotent](declarations/hasunifeigenvalue-isnilpotent-of-isnilpotent.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [HasUnifEigenvalue.mem_spectrum](declarations/hasunifeigenvalue-mem-spectrum.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [hasUnifEigenvalue_iff_mem_spectrum](declarations/hasunifeigenvalue-iff-mem-spectrum.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [genEigenspace_div](declarations/geneigenspace-div.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [genEigenrange](declarations/geneigenrange.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [genEigenrange_nat](declarations/geneigenrange-nat.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [HasUnifEigenvalue.exp_ne_zero](declarations/hasunifeigenvalue-exp-ne-zero.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [maxUnifEigenspaceIndex](declarations/maxunifeigenspaceindex.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [genEigenspace_top_eq_maxUnifEigenspaceIndex](declarations/geneigenspace-top-eq-maxunifeigenspaceindex.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [genEigenspace_le_genEigenspace_maxUnifEigenspaceIndex](declarations/geneigenspace-le-geneigenspace-maxunifeigenspaceindex.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [genEigenspace_eq_genEigenspace_maxUnifEigenspaceIndex_of_le](declarations/geneigenspace-eq-geneigenspace-maxunifeigenspaceindex-of-le.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [HasUnifEigenvalue.le](declarations/hasunifeigenvalue-le.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [HasUnifEigenvalue.lt](declarations/hasunifeigenvalue-lt.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [hasUnifEigenvalue_iff_hasUnifEigenvalue_one](declarations/hasunifeigenvalue-iff-hasunifeigenvalue-one.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [maxUnifEigenspaceIndex_le_finrank](declarations/maxunifeigenspaceindex-le-finrank.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [genEigenspace_le_genEigenspace_finrank](declarations/geneigenspace-le-geneigenspace-finrank.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [genEigenspace_eq_genEigenspace_finrank_of_le](declarations/geneigenspace-eq-geneigenspace-finrank-of-le.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [mapsTo_genEigenspace_of_comm](declarations/mapsto-geneigenspace-of-comm.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [isNilpotent_restrict_genEigenspace_nat](declarations/isnilpotent-restrict-geneigenspace-nat.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [isNilpotent_restrict_genEigenspace_top](declarations/isnilpotent-restrict-geneigenspace-top.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `abbrev` | [eigenspace](declarations/eigenspace.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [eigenspace_def](declarations/eigenspace-def.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [eigenspace_zero](declarations/eigenspace-zero.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `abbrev` | [HasEigenvector](declarations/haseigenvector.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [hasEigenvector_iff](declarations/haseigenvector-iff.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `abbrev` | [HasEigenvalue](declarations/haseigenvalue.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [hasEigenvalue_iff](declarations/haseigenvalue-iff.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `abbrev` | [Eigenvalues](declarations/eigenvalues.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `abbrev` | [Eigenvalues.val](declarations/eigenvalues-val.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [hasEigenvalue_of_hasEigenvector](declarations/haseigenvalue-of-haseigenvector.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [mem_eigenspace_iff](declarations/mem-eigenspace-iff.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [HasEigenvector.apply_eq_smul](declarations/haseigenvector-apply-eq-smul.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [HasEigenvector.pow_apply](declarations/haseigenvector-pow-apply.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [HasEigenvalue.exists_hasEigenvector](declarations/haseigenvalue-exists-haseigenvector.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [HasEigenvalue.pow](declarations/haseigenvalue-pow.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [HasEigenvalue.isNilpotent_of_isNilpotent](declarations/haseigenvalue-isnilpotent-of-isnilpotent.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [HasEigenvalue.mem_spectrum](declarations/haseigenvalue-mem-spectrum.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [hasEigenvalue_iff_mem_spectrum](declarations/haseigenvalue-iff-mem-spectrum.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [eigenspace_div](declarations/eigenspace-div.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [genEigenspace_def](declarations/geneigenspace-def.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `abbrev` | [HasGenEigenvector](declarations/hasgeneigenvector.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [hasGenEigenvector_iff](declarations/hasgeneigenvector-iff.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `abbrev` | [HasGenEigenvalue](declarations/hasgeneigenvalue.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [hasGenEigenvalue_iff](declarations/hasgeneigenvalue-iff.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [genEigenrange_def](declarations/geneigenrange-def.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [exp_ne_zero_of_hasGenEigenvalue](declarations/exp-ne-zero-of-hasgeneigenvalue.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `abbrev` | [maxGenEigenspace](declarations/maxgeneigenspace.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [iSup_genEigenspace_eq](declarations/isup-geneigenspace-eq.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `lemma` | [maxGenEigenspace_def](declarations/maxgeneigenspace-def.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [genEigenspace_le_maximal](declarations/geneigenspace-le-maximal.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [mem_maxGenEigenspace](declarations/mem-maxgeneigenspace.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `abbrev` | [maxGenEigenspaceIndex](declarations/maxgeneigenspaceindex.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [maxGenEigenspace_eq](declarations/maxgeneigenspace-eq.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [hasGenEigenvalue_of_hasGenEigenvalue_of_le](declarations/hasgeneigenvalue-of-hasgeneigenvalue-of-le.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [eigenspace_le_genEigenspace](declarations/eigenspace-le-geneigenspace.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [hasGenEigenvalue_of_hasEigenvalue](declarations/hasgeneigenvalue-of-haseigenvalue.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [hasEigenvalue_of_hasGenEigenvalue](declarations/haseigenvalue-of-hasgeneigenvalue.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [hasGenEigenvalue_iff_hasEigenvalue](declarations/hasgeneigenvalue-iff-haseigenvalue.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [maxGenEigenspace_eq_genEigenspace_finrank](declarations/maxgeneigenspace-eq-geneigenspace-finrank.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `lemma` | [mapsTo_maxGenEigenspace_of_comm](declarations/mapsto-maxgeneigenspace-of-comm.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `lemma` | [mapsTo_iSup_genEigenspace_of_comm](declarations/mapsto-isup-geneigenspace-of-comm.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `lemma` | [isNilpotent_restrict_sub_algebraMap](declarations/isnilpotent-restrict-sub-algebramap.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `lemma` | [isNilpotent_restrict_maxGenEigenspace_sub_algebraMap](declarations/isnilpotent-restrict-maxgeneigenspace-sub-algebramap.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `lemma` | [isNilpotent_restrict_iSup_sub_algebraMap](declarations/isnilpotent-restrict-isup-sub-algebramap.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `lemma` | [disjoint_genEigenspace](declarations/disjoint-geneigenspace.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `lemma` | [injOn_genEigenspace](declarations/injon-geneigenspace.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `lemma` | [disjoint_iSup_genEigenspace](declarations/disjoint-isup-geneigenspace.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `lemma` | [injOn_maxGenEigenspace](declarations/injon-maxgeneigenspace.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `lemma` | [injOn_iSup_genEigenspace](declarations/injon-isup-geneigenspace.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [independent_genEigenspace](declarations/independent-geneigenspace.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [independent_maxGenEigenspace](declarations/independent-maxgeneigenspace.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [independent_iSup_genEigenspace](declarations/independent-isup-geneigenspace.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [eigenspaces_iSupIndep](declarations/eigenspaces-isupindep.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [eigenvectors_linearIndependent'](declarations/eigenvectors-linearindependent-source-edition-2.md) | 727 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [eigenvectors_linearIndependent](declarations/eigenvectors-linearindependent.md) | 739 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [genEigenspace_restrict](declarations/geneigenspace-restrict.md) | 746 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `lemma` | [_root_.Submodule.inf_genEigenspace](declarations/root-submodule-inf-geneigenspace.md) | 765 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `lemma` | [mapsTo_restrict_maxGenEigenspace_restrict_of_mapsTo](declarations/mapsto-restrict-maxgeneigenspace-restrict-of-mapsto.md) | 771 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [eigenspace_restrict_le_eigenspace](declarations/eigenspace-restrict-le-eigenspace.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [generalized_eigenvec_disjoint_range_ker](declarations/generalized-eigenvec-disjoint-range-ker.md) | 792 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [eigenspace_restrict_eq_bot](declarations/eigenspace-restrict-eq-bot.md) | 812 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [pos_finrank_genEigenspace_of_hasEigenvalue](declarations/pos-finrank-geneigenspace-of-haseigenvalue.md) | 819 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [map_genEigenrange_le](declarations/map-geneigenrange-le.md) | 829 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `lemma` | [genEigenspace_le_smul](declarations/geneigenspace-le-smul.md) | 840 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `lemma` | [iSup_genEigenspace_le_smul](declarations/isup-geneigenspace-le-smul.md) | 848 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `lemma` | [genEigenspace_inf_le_add](declarations/geneigenspace-inf-le-add.md) | 853 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `lemma` | [iSup_genEigenspace_inf_le_add](declarations/isup-geneigenspace-inf-le-add.md) | 879 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `lemma` | [map_smul_of_iInf_genEigenspace_ne_bot](declarations/map-smul-of-iinf-geneigenspace-ne-bot.md) | 887 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `lemma` | [map_smul_of_iInf_iSup_genEigenspace_ne_bot](declarations/map-smul-of-iinf-isup-geneigenspace-ne-bot.md) | 901 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `lemma` | [map_add_of_iInf_genEigenspace_ne_bot_of_commute](declarations/map-add-of-iinf-geneigenspace-ne-bot-of-commute.md) | 909 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `lemma` | [map_add_of_iInf_iSup_genEigenspace_ne_bot_of_commute](declarations/map-add-of-iinf-isup-geneigenspace-ne-bot-of-commute.md) | 924 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=01a6d060da8b85fae3091d21eeb2ddc3a58702b145929616c1112830ee30205f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant27d88254a9ebdbb2c53cc60b812d95a9585d6e01b50c058e6cc613c66582649a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
