# Ring Basic Namespaced

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**132 observed declarations and anonymous commands**, 68 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdf89789586e62363083d8e5d932c628f750af2c22353e921ff5cbca36a43993c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bcfd61f1f8dda3cfa20a73d9fc468d73c06e288d`.

**Verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingBasicNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [instCommSemiringNat](declarations/instcommsemiringnat.md) | 96 | `BLOCKED_SOURCE_DEPENDENCY` |
| 2 | `def` | [sℕ](declarations/s.md) | 102 | `BLOCKED_SOURCE_DEPENDENCY` |
| 3 | `inductive` | [ExBase](declarations/exbase.md) | 110 | `BLOCKED_SOURCE_DEPENDENCY` |
| 4 | `inductive` | [ExProd](declarations/exprod.md) | 131 | `BLOCKED_SOURCE_DEPENDENCY` |
| 5 | `inductive` | [ExSum](declarations/exsum.md) | 142 | `BLOCKED_SOURCE_DEPENDENCY` |
| 6 | `def` | [ExBase.eq](declarations/exbase-eq.md) | 153 | `BLOCKED_SOURCE_DEPENDENCY` |
| 7 | `def` | [ExProd.eq](declarations/exprod-eq.md) | 159 | `BLOCKED_SOURCE_DEPENDENCY` |
| 8 | `def` | [ExSum.eq](declarations/exsum-eq.md) | 165 | `BLOCKED_SOURCE_DEPENDENCY` |
| 9 | `def` | [ExBase.cmp](declarations/exbase-cmp.md) | 176 | `BLOCKED_SOURCE_DEPENDENCY` |
| 10 | `def` | [ExProd.cmp](declarations/exprod-cmp.md) | 183 | `BLOCKED_SOURCE_DEPENDENCY` |
| 11 | `def` | [ExSum.cmp](declarations/exsum-cmp.md) | 190 | `BLOCKED_SOURCE_DEPENDENCY` |
| 12 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 197 | `BLOCKED_SOURCE_DEPENDENCY` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 198 | `BLOCKED_SOURCE_DEPENDENCY` |
| 14 | `instance` | [(anonymous)](declarations/instance.md) | 199 | `BLOCKED_SOURCE_DEPENDENCY` |
| 15 | `def` | [ExBase.cast](declarations/exbase-cast.md) | 204 | `BLOCKED_SOURCE_DEPENDENCY` |
| 16 | `def` | [ExProd.cast](declarations/exprod-cast.md) | 209 | `BLOCKED_SOURCE_DEPENDENCY` |
| 17 | `def` | [ExSum.cast](declarations/exsum-cast.md) | 214 | `BLOCKED_SOURCE_DEPENDENCY` |
| 18 | `structure` | [Result](declarations/result.md) | 225 | `BLOCKED_SOURCE_DEPENDENCY` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 233 | `BLOCKED_SOURCE_DEPENDENCY` |
| 20 | `def` | [ExProd.mkNat](declarations/exprod-mknat.md) | 242 | `BLOCKED_SOURCE_DEPENDENCY` |
| 21 | `def` | [ExProd.mkNegNat](declarations/exprod-mknegnat.md) | 250 | `BLOCKED_SOURCE_DEPENDENCY` |
| 22 | `def` | [ExProd.mkRat](declarations/exprod-mkrat.md) | 258 | `BLOCKED_SOURCE_DEPENDENCY` |
| 23 | `def` | [ExBase.toProd](declarations/exbase-toprod.md) | 266 | `BLOCKED_SOURCE_DEPENDENCY` |
| 24 | `def` | [ExProd.toSum](declarations/exprod-tosum.md) | 270 | `BLOCKED_SOURCE_DEPENDENCY` |
| 25 | `def` | [ExProd.coeff](declarations/exprod-coeff.md) | 273 | `BLOCKED_SOURCE_DEPENDENCY` |
| 26 | `inductive` | [Overlap](declarations/overlap.md) | 283 | `BLOCKED_SOURCE_DEPENDENCY` |
| 27 | `theorem` | [add_overlap_pf](declarations/add-overlap-pf.md) | 290 | `BLOCKED_SOURCE_DEPENDENCY` |
| 28 | `theorem` | [add_overlap_pf_zero](declarations/add-overlap-pf-zero.md) | 293 | `BLOCKED_SOURCE_DEPENDENCY` |
| 29 | `def` | [evalAddOverlap](declarations/evaladdoverlap.md) | 303 | `BLOCKED_SOURCE_DEPENDENCY` |
| 30 | `theorem` | [add_pf_zero_add](declarations/add-pf-zero-add.md) | 322 | `BLOCKED_SOURCE_DEPENDENCY` |
| 31 | `theorem` | [add_pf_add_zero](declarations/add-pf-add-zero.md) | 324 | `BLOCKED_SOURCE_DEPENDENCY` |
| 32 | `theorem` | [add_pf_add_overlap](declarations/add-pf-add-overlap.md) | 326 | `BLOCKED_SOURCE_DEPENDENCY` |
| 33 | `theorem` | [add_pf_add_overlap_zero](declarations/add-pf-add-overlap-zero.md) | 330 | `BLOCKED_SOURCE_DEPENDENCY` |
| 34 | `theorem` | [add_pf_add_lt](declarations/add-pf-add-lt.md) | 334 | `BLOCKED_SOURCE_DEPENDENCY` |
| 35 | `theorem` | [add_pf_add_gt](declarations/add-pf-add-gt.md) | 336 | `BLOCKED_SOURCE_DEPENDENCY` |
| 36 | `def` | [evalAdd](declarations/evaladd.md) | 347 | `BLOCKED_SOURCE_DEPENDENCY` |
| 37 | `theorem` | [one_mul](declarations/one-mul.md) | 367 | `BLOCKED_SOURCE_DEPENDENCY` |
| 38 | `theorem` | [mul_one](declarations/mul-one.md) | 369 | `BLOCKED_SOURCE_DEPENDENCY` |
| 39 | `theorem` | [mul_pf_left](declarations/mul-pf-left.md) | 371 | `BLOCKED_SOURCE_DEPENDENCY` |
| 40 | `theorem` | [mul_pf_right](declarations/mul-pf-right.md) | 374 | `BLOCKED_SOURCE_DEPENDENCY` |
| 41 | `theorem` | [mul_pp_pf_overlap](declarations/mul-pp-pf-overlap.md) | 377 | `BLOCKED_SOURCE_DEPENDENCY` |
| 42 | `def` | [evalMulProd](declarations/evalmulprod.md) | 391 | `BLOCKED_SOURCE_DEPENDENCY` |
| 43 | `theorem` | [mul_zero](declarations/mul-zero.md) | 423 | `BLOCKED_SOURCE_DEPENDENCY` |
| 44 | `theorem` | [mul_add](declarations/mul-add.md) | 425 | `BLOCKED_SOURCE_DEPENDENCY` |
| 45 | `def` | [evalMul₁](declarations/evalmul-source-edition-2.md) | 433 | `BLOCKED_SOURCE_DEPENDENCY` |
| 46 | `theorem` | [zero_mul](declarations/zero-mul.md) | 442 | `BLOCKED_SOURCE_DEPENDENCY` |
| 47 | `theorem` | [add_mul](declarations/add-mul.md) | 444 | `BLOCKED_SOURCE_DEPENDENCY` |
| 48 | `def` | [evalMul](declarations/evalmul.md) | 452 | `BLOCKED_SOURCE_DEPENDENCY` |
| 49 | `theorem` | [natCast_nat](declarations/natcast-nat.md) | 461 | `BLOCKED_SOURCE_DEPENDENCY` |
| 50 | `theorem` | [natCast_mul](declarations/natcast-mul.md) | 463 | `BLOCKED_SOURCE_DEPENDENCY` |
| 51 | `theorem` | [natCast_zero](declarations/natcast-zero.md) | 466 | `BLOCKED_SOURCE_DEPENDENCY` |
| 52 | `theorem` | [natCast_add](declarations/natcast-add.md) | 468 | `BLOCKED_SOURCE_DEPENDENCY` |
| 53 | `def` | [ExBase.evalNatCast](declarations/exbase-evalnatcast.md) | 478 | `BLOCKED_SOURCE_DEPENDENCY` |
| 54 | `def` | [ExProd.evalNatCast](declarations/exprod-evalnatcast.md) | 493 | `BLOCKED_SOURCE_DEPENDENCY` |
| 55 | `def` | [ExSum.evalNatCast](declarations/exsum-evalnatcast.md) | 508 | `BLOCKED_SOURCE_DEPENDENCY` |
| 56 | `theorem` | [smul_nat](declarations/smul-nat.md) | 518 | `BLOCKED_SOURCE_DEPENDENCY` |
| 57 | `theorem` | [smul_eq_cast](declarations/smul-eq-cast.md) | 520 | `BLOCKED_SOURCE_DEPENDENCY` |
| 58 | `def` | [evalNSMul](declarations/evalnsmul.md) | 528 | `BLOCKED_SOURCE_DEPENDENCY` |
| 59 | `theorem` | [neg_one_mul](declarations/neg-one-mul.md) | 539 | `BLOCKED_SOURCE_DEPENDENCY` |
| 60 | `theorem` | [neg_mul](declarations/neg-mul.md) | 542 | `BLOCKED_SOURCE_DEPENDENCY` |
| 61 | `def` | [evalNegProd](declarations/evalnegprod.md) | 550 | `BLOCKED_SOURCE_DEPENDENCY` |
| 62 | `theorem` | [neg_zero](declarations/neg-zero.md) | 566 | `BLOCKED_SOURCE_DEPENDENCY` |
| 63 | `theorem` | [neg_add](declarations/neg-add.md) | 568 | `BLOCKED_SOURCE_DEPENDENCY` |
| 64 | `def` | [evalNeg](declarations/evalneg.md) | 576 | `BLOCKED_SOURCE_DEPENDENCY` |
| 65 | `theorem` | [sub_pf](declarations/sub-pf.md) | 584 | `BLOCKED_SOURCE_DEPENDENCY` |
| 66 | `def` | [evalSub](declarations/evalsub.md) | 591 | `BLOCKED_SOURCE_DEPENDENCY` |
| 67 | `theorem` | [pow_prod_atom](declarations/pow-prod-atom.md) | 596 | `BLOCKED_SOURCE_DEPENDENCY` |
| 68 | `def` | [evalPowProdAtom](declarations/evalpowprodatom.md) | 605 | `BLOCKED_SOURCE_DEPENDENCY` |
| 69 | `theorem` | [pow_atom](declarations/pow-atom.md) | 608 | `BLOCKED_SOURCE_DEPENDENCY` |
| 70 | `def` | [evalPowAtom](declarations/evalpowatom.md) | 616 | `BLOCKED_SOURCE_DEPENDENCY` |
| 71 | `theorem` | [const_pos](declarations/const-pos.md) | 619 | `BLOCKED_SOURCE_DEPENDENCY` |
| 72 | `theorem` | [mul_exp_pos](declarations/mul-exp-pos.md) | 621 | `BLOCKED_SOURCE_DEPENDENCY` |
| 73 | `theorem` | [add_pos_left](declarations/add-pos-left.md) | 624 | `BLOCKED_SOURCE_DEPENDENCY` |
| 74 | `theorem` | [add_pos_right](declarations/add-pos-right.md) | 626 | `BLOCKED_SOURCE_DEPENDENCY` |
| 75 | `def` | [ExBase.evalPos](declarations/exbase-evalpos.md) | 635 | `BLOCKED_SOURCE_DEPENDENCY` |
| 76 | `def` | [ExProd.evalPos](declarations/exprod-evalpos.md) | 645 | `BLOCKED_SOURCE_DEPENDENCY` |
| 77 | `def` | [ExSum.evalPos](declarations/exsum-evalpos.md) | 663 | `BLOCKED_SOURCE_DEPENDENCY` |
| 78 | `theorem` | [pow_one](declarations/pow-one.md) | 673 | `BLOCKED_SOURCE_DEPENDENCY` |
| 79 | `theorem` | [pow_bit0](declarations/pow-bit0.md) | 675 | `BLOCKED_SOURCE_DEPENDENCY` |
| 80 | `theorem` | [pow_bit1](declarations/pow-bit1.md) | 678 | `BLOCKED_SOURCE_DEPENDENCY` |
| 81 | `def` | [evalPowNat](declarations/evalpownat.md) | 691 | `BLOCKED_SOURCE_DEPENDENCY` |
| 82 | `theorem` | [one_pow](declarations/one-pow.md) | 708 | `BLOCKED_SOURCE_DEPENDENCY` |
| 83 | `theorem` | [mul_pow](declarations/mul-pow.md) | 710 | `BLOCKED_SOURCE_DEPENDENCY` |
| 84 | `def` | [evalPowProd](declarations/evalpowprod.md) | 721 | `BLOCKED_SOURCE_DEPENDENCY` |
| 85 | `structure` | [ExtractCoeff](declarations/extractcoeff-source-edition-2.md) | 746 | `BLOCKED_SOURCE_DEPENDENCY` |
| 86 | `theorem` | [coeff_one](declarations/coeff-one.md) | 756 | `BLOCKED_SOURCE_DEPENDENCY` |
| 87 | `theorem` | [coeff_mul](declarations/coeff-mul.md) | 758 | `BLOCKED_SOURCE_DEPENDENCY` |
| 88 | `def` | [extractCoeff](declarations/extractcoeff.md) | 767 | `BLOCKED_SOURCE_DEPENDENCY` |
| 89 | `theorem` | [pow_one_cast](declarations/pow-one-cast.md) | 776 | `BLOCKED_SOURCE_DEPENDENCY` |
| 90 | `theorem` | [zero_pow](declarations/zero-pow.md) | 778 | `BLOCKED_SOURCE_DEPENDENCY` |
| 91 | `theorem` | [single_pow](declarations/single-pow.md) | 780 | `BLOCKED_SOURCE_DEPENDENCY` |
| 92 | `theorem` | [pow_nat](declarations/pow-nat.md) | 782 | `BLOCKED_SOURCE_DEPENDENCY` |
| 93 | `def` | [evalPow₁](declarations/evalpow.md) | 794 | `BLOCKED_SOURCE_DEPENDENCY` |
| 94 | `theorem` | [pow_zero](declarations/pow-zero.md) | 813 | `BLOCKED_SOURCE_DEPENDENCY` |
| 95 | `theorem` | [pow_add](declarations/pow-add.md) | 815 | `BLOCKED_SOURCE_DEPENDENCY` |
| 96 | `def` | [evalPow](declarations/evalpow-source-edition-2.md) | 823 | `BLOCKED_SOURCE_DEPENDENCY` |
| 97 | `structure` | [Cache](declarations/cache.md) | 833 | `BLOCKED_SOURCE_DEPENDENCY` |
| 98 | `def` | [mkCache](declarations/mkcache.md) | 842 | `BLOCKED_SOURCE_DEPENDENCY` |
| 99 | `theorem` | [cast_pos](declarations/cast-pos.md) | 848 | `BLOCKED_SOURCE_DEPENDENCY` |
| 100 | `theorem` | [cast_zero](declarations/cast-zero.md) | 851 | `BLOCKED_SOURCE_DEPENDENCY` |
| 101 | `theorem` | [cast_neg](declarations/cast-neg.md) | 854 | `BLOCKED_SOURCE_DEPENDENCY` |
| 102 | `theorem` | [cast_rat](declarations/cast-rat.md) | 857 | `BLOCKED_SOURCE_DEPENDENCY` |
| 103 | `def` | [evalCast](declarations/evalcast.md) | 867 | `BLOCKED_SOURCE_DEPENDENCY` |
| 104 | `theorem` | [toProd_pf](declarations/toprod-pf.md) | 880 | `BLOCKED_SOURCE_DEPENDENCY` |
| 105 | `theorem` | [atom_pf](declarations/atom-pf-source-edition-2.md) | 882 | `BLOCKED_SOURCE_DEPENDENCY` |
| 106 | `theorem` | [atom_pf'](declarations/atom-pf.md) | 883 | `BLOCKED_SOURCE_DEPENDENCY` |
| 107 | `def` | [evalAtom](declarations/evalatom.md) | 891 | `BLOCKED_SOURCE_DEPENDENCY` |
| 108 | `theorem` | [inv_mul](declarations/inv-mul.md) | 900 | `BLOCKED_SOURCE_DEPENDENCY` |
| 109 | `theorem` | [inv_zero](declarations/inv-zero.md) | 905 | `BLOCKED_SOURCE_DEPENDENCY` |
| 110 | `theorem` | [inv_single](declarations/inv-single.md) | 907 | `BLOCKED_SOURCE_DEPENDENCY` |
| 111 | `theorem` | [inv_add](declarations/inv-add.md) | 910 | `BLOCKED_SOURCE_DEPENDENCY` |
| 112 | `def` | [evalInvAtom](declarations/evalinvatom.md) | 917 | `BLOCKED_SOURCE_DEPENDENCY` |
| 113 | `def` | [ExProd.evalInv](declarations/exprod-evalinv.md) | 927 | `BLOCKED_SOURCE_DEPENDENCY` |
| 114 | `def` | [ExSum.evalInv](declarations/exsum-evalinv.md) | 952 | `BLOCKED_SOURCE_DEPENDENCY` |
| 115 | `theorem` | [div_pf](declarations/div-pf.md) | 965 | `BLOCKED_SOURCE_DEPENDENCY` |
| 116 | `def` | [evalDiv](declarations/evaldiv.md) | 972 | `BLOCKED_SOURCE_DEPENDENCY` |
| 117 | `theorem` | [add_congr](declarations/add-congr.md) | 978 | `BLOCKED_SOURCE_DEPENDENCY` |
| 118 | `theorem` | [mul_congr](declarations/mul-congr.md) | 981 | `BLOCKED_SOURCE_DEPENDENCY` |
| 119 | `theorem` | [nsmul_congr](declarations/nsmul-congr.md) | 984 | `BLOCKED_SOURCE_DEPENDENCY` |
| 120 | `theorem` | [pow_congr](declarations/pow-congr.md) | 987 | `BLOCKED_SOURCE_DEPENDENCY` |
| 121 | `theorem` | [neg_congr](declarations/neg-congr.md) | 990 | `BLOCKED_SOURCE_DEPENDENCY` |
| 122 | `theorem` | [sub_congr](declarations/sub-congr.md) | 993 | `BLOCKED_SOURCE_DEPENDENCY` |
| 123 | `theorem` | [inv_congr](declarations/inv-congr.md) | 996 | `BLOCKED_SOURCE_DEPENDENCY` |
| 124 | `theorem` | [div_congr](declarations/div-congr.md) | 999 | `BLOCKED_SOURCE_DEPENDENCY` |
| 125 | `def` | [Cache.nat](declarations/cache-nat.md) | 1003 | `BLOCKED_SOURCE_DEPENDENCY` |
| 126 | `def` | [isAtomOrDerivable](declarations/isatomorderivable.md) | 1017 | `BLOCKED_SOURCE_DEPENDENCY` |
| 127 | `def` | [eval](declarations/eval.md) | 1038 | `BLOCKED_SOURCE_DEPENDENCY` |
| 128 | `theorem` | [of_eq](declarations/of-eq.md) | 1101 | `BLOCKED_SOURCE_DEPENDENCY` |
| 129 | `initialize` | [(anonymous)](declarations/initialize.md) | 1108 | `BLOCKED_SOURCE_DEPENDENCY` |
| 130 | `def` | [proveEq](declarations/proveeq.md) | 1111 | `BLOCKED_SOURCE_DEPENDENCY` |
| 131 | `elab` | [(anonymous)](declarations/elab.md) | 1137 | `BLOCKED_SOURCE_DEPENDENCY` |
| 132 | `macro` | [(anonymous)](declarations/macro.md) | 1140 | `BLOCKED_SOURCE_DEPENDENCY` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cdc829a6374fd70c3aeb809ab025a81bb82583d4e372e453e4ca4ca7a3689cc1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdf89789586e62363083d8e5d932c628f750af2c22353e921ff5cbca36a43993c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
