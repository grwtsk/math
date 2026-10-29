# Ring Basic

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**132 observed declarations and anonymous commands**, 68 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant30d6ff178904066e38e8b2b30d7d08c90566b14a5750e9df1e8f0aa6d6bd506e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0556d34bf7c0e9bdaf9836960c6b93fc2c23d35`.

**Verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [instCommSemiringNat](declarations/instcommsemiringnat.md) | 88 | `BLOCKED_SOURCE_DEPENDENCY` |
| 2 | `def` | [sℕ](declarations/s.md) | 94 | `BLOCKED_SOURCE_DEPENDENCY` |
| 3 | `inductive` | [ExBase](declarations/exbase.md) | 102 | `BLOCKED_SOURCE_DEPENDENCY` |
| 4 | `inductive` | [ExProd](declarations/exprod.md) | 123 | `BLOCKED_SOURCE_DEPENDENCY` |
| 5 | `inductive` | [ExSum](declarations/exsum.md) | 134 | `BLOCKED_SOURCE_DEPENDENCY` |
| 6 | `def` | [ExBase.eq](declarations/exbase-eq.md) | 145 | `BLOCKED_SOURCE_DEPENDENCY` |
| 7 | `def` | [ExProd.eq](declarations/exprod-eq.md) | 151 | `BLOCKED_SOURCE_DEPENDENCY` |
| 8 | `def` | [ExSum.eq](declarations/exsum-eq.md) | 157 | `BLOCKED_SOURCE_DEPENDENCY` |
| 9 | `def` | [ExBase.cmp](declarations/exbase-cmp.md) | 168 | `BLOCKED_SOURCE_DEPENDENCY` |
| 10 | `def` | [ExProd.cmp](declarations/exprod-cmp.md) | 175 | `BLOCKED_SOURCE_DEPENDENCY` |
| 11 | `def` | [ExSum.cmp](declarations/exsum-cmp.md) | 182 | `BLOCKED_SOURCE_DEPENDENCY` |
| 12 | `instance` | [(anonymous)](declarations/instance.md) | 189 | `BLOCKED_SOURCE_DEPENDENCY` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 190 | `BLOCKED_SOURCE_DEPENDENCY` |
| 14 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 191 | `BLOCKED_SOURCE_DEPENDENCY` |
| 15 | `def` | [ExBase.cast](declarations/exbase-cast.md) | 196 | `BLOCKED_SOURCE_DEPENDENCY` |
| 16 | `def` | [ExProd.cast](declarations/exprod-cast.md) | 201 | `BLOCKED_SOURCE_DEPENDENCY` |
| 17 | `def` | [ExSum.cast](declarations/exsum-cast.md) | 206 | `BLOCKED_SOURCE_DEPENDENCY` |
| 18 | `structure` | [Result](declarations/result.md) | 217 | `BLOCKED_SOURCE_DEPENDENCY` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 225 | `BLOCKED_SOURCE_DEPENDENCY` |
| 20 | `def` | [ExProd.mkNat](declarations/exprod-mknat.md) | 234 | `BLOCKED_SOURCE_DEPENDENCY` |
| 21 | `def` | [ExProd.mkNegNat](declarations/exprod-mknegnat.md) | 242 | `BLOCKED_SOURCE_DEPENDENCY` |
| 22 | `def` | [ExProd.mkRat](declarations/exprod-mkrat.md) | 250 | `BLOCKED_SOURCE_DEPENDENCY` |
| 23 | `def` | [ExBase.toProd](declarations/exbase-toprod.md) | 258 | `BLOCKED_SOURCE_DEPENDENCY` |
| 24 | `def` | [ExProd.toSum](declarations/exprod-tosum.md) | 262 | `BLOCKED_SOURCE_DEPENDENCY` |
| 25 | `def` | [ExProd.coeff](declarations/exprod-coeff.md) | 265 | `BLOCKED_SOURCE_DEPENDENCY` |
| 26 | `inductive` | [Overlap](declarations/overlap.md) | 275 | `BLOCKED_SOURCE_DEPENDENCY` |
| 27 | `theorem` | [add_overlap_pf](declarations/add-overlap-pf.md) | 282 | `BLOCKED_SOURCE_DEPENDENCY` |
| 28 | `theorem` | [add_overlap_pf_zero](declarations/add-overlap-pf-zero.md) | 285 | `BLOCKED_SOURCE_DEPENDENCY` |
| 29 | `def` | [evalAddOverlap](declarations/evaladdoverlap.md) | 295 | `BLOCKED_SOURCE_DEPENDENCY` |
| 30 | `theorem` | [add_pf_zero_add](declarations/add-pf-zero-add.md) | 314 | `BLOCKED_SOURCE_DEPENDENCY` |
| 31 | `theorem` | [add_pf_add_zero](declarations/add-pf-add-zero.md) | 316 | `BLOCKED_SOURCE_DEPENDENCY` |
| 32 | `theorem` | [add_pf_add_overlap](declarations/add-pf-add-overlap.md) | 318 | `BLOCKED_SOURCE_DEPENDENCY` |
| 33 | `theorem` | [add_pf_add_overlap_zero](declarations/add-pf-add-overlap-zero.md) | 322 | `BLOCKED_SOURCE_DEPENDENCY` |
| 34 | `theorem` | [add_pf_add_lt](declarations/add-pf-add-lt.md) | 326 | `BLOCKED_SOURCE_DEPENDENCY` |
| 35 | `theorem` | [add_pf_add_gt](declarations/add-pf-add-gt.md) | 328 | `BLOCKED_SOURCE_DEPENDENCY` |
| 36 | `def` | [evalAdd](declarations/evaladd.md) | 339 | `BLOCKED_SOURCE_DEPENDENCY` |
| 37 | `theorem` | [one_mul](declarations/one-mul.md) | 359 | `BLOCKED_SOURCE_DEPENDENCY` |
| 38 | `theorem` | [mul_one](declarations/mul-one.md) | 361 | `BLOCKED_SOURCE_DEPENDENCY` |
| 39 | `theorem` | [mul_pf_left](declarations/mul-pf-left.md) | 363 | `BLOCKED_SOURCE_DEPENDENCY` |
| 40 | `theorem` | [mul_pf_right](declarations/mul-pf-right.md) | 366 | `BLOCKED_SOURCE_DEPENDENCY` |
| 41 | `theorem` | [mul_pp_pf_overlap](declarations/mul-pp-pf-overlap.md) | 369 | `BLOCKED_SOURCE_DEPENDENCY` |
| 42 | `def` | [evalMulProd](declarations/evalmulprod.md) | 383 | `BLOCKED_SOURCE_DEPENDENCY` |
| 43 | `theorem` | [mul_zero](declarations/mul-zero.md) | 415 | `BLOCKED_SOURCE_DEPENDENCY` |
| 44 | `theorem` | [mul_add](declarations/mul-add.md) | 417 | `BLOCKED_SOURCE_DEPENDENCY` |
| 45 | `def` | [evalMul₁](declarations/evalmul.md) | 425 | `BLOCKED_SOURCE_DEPENDENCY` |
| 46 | `theorem` | [zero_mul](declarations/zero-mul.md) | 434 | `BLOCKED_SOURCE_DEPENDENCY` |
| 47 | `theorem` | [add_mul](declarations/add-mul.md) | 436 | `BLOCKED_SOURCE_DEPENDENCY` |
| 48 | `def` | [evalMul](declarations/evalmul-source-edition-2.md) | 444 | `BLOCKED_SOURCE_DEPENDENCY` |
| 49 | `theorem` | [natCast_nat](declarations/natcast-nat.md) | 453 | `BLOCKED_SOURCE_DEPENDENCY` |
| 50 | `theorem` | [natCast_mul](declarations/natcast-mul.md) | 455 | `BLOCKED_SOURCE_DEPENDENCY` |
| 51 | `theorem` | [natCast_zero](declarations/natcast-zero.md) | 458 | `BLOCKED_SOURCE_DEPENDENCY` |
| 52 | `theorem` | [natCast_add](declarations/natcast-add.md) | 460 | `BLOCKED_SOURCE_DEPENDENCY` |
| 53 | `def` | [ExBase.evalNatCast](declarations/exbase-evalnatcast.md) | 470 | `BLOCKED_SOURCE_DEPENDENCY` |
| 54 | `def` | [ExProd.evalNatCast](declarations/exprod-evalnatcast.md) | 485 | `BLOCKED_SOURCE_DEPENDENCY` |
| 55 | `def` | [ExSum.evalNatCast](declarations/exsum-evalnatcast.md) | 500 | `BLOCKED_SOURCE_DEPENDENCY` |
| 56 | `theorem` | [smul_nat](declarations/smul-nat.md) | 510 | `BLOCKED_SOURCE_DEPENDENCY` |
| 57 | `theorem` | [smul_eq_cast](declarations/smul-eq-cast.md) | 512 | `BLOCKED_SOURCE_DEPENDENCY` |
| 58 | `def` | [evalNSMul](declarations/evalnsmul.md) | 520 | `BLOCKED_SOURCE_DEPENDENCY` |
| 59 | `theorem` | [neg_one_mul](declarations/neg-one-mul.md) | 531 | `BLOCKED_SOURCE_DEPENDENCY` |
| 60 | `theorem` | [neg_mul](declarations/neg-mul.md) | 534 | `BLOCKED_SOURCE_DEPENDENCY` |
| 61 | `def` | [evalNegProd](declarations/evalnegprod.md) | 542 | `BLOCKED_SOURCE_DEPENDENCY` |
| 62 | `theorem` | [neg_zero](declarations/neg-zero.md) | 558 | `BLOCKED_SOURCE_DEPENDENCY` |
| 63 | `theorem` | [neg_add](declarations/neg-add.md) | 560 | `BLOCKED_SOURCE_DEPENDENCY` |
| 64 | `def` | [evalNeg](declarations/evalneg.md) | 568 | `BLOCKED_SOURCE_DEPENDENCY` |
| 65 | `theorem` | [sub_pf](declarations/sub-pf.md) | 576 | `BLOCKED_SOURCE_DEPENDENCY` |
| 66 | `def` | [evalSub](declarations/evalsub.md) | 583 | `BLOCKED_SOURCE_DEPENDENCY` |
| 67 | `theorem` | [pow_prod_atom](declarations/pow-prod-atom.md) | 588 | `BLOCKED_SOURCE_DEPENDENCY` |
| 68 | `def` | [evalPowProdAtom](declarations/evalpowprodatom.md) | 597 | `BLOCKED_SOURCE_DEPENDENCY` |
| 69 | `theorem` | [pow_atom](declarations/pow-atom.md) | 600 | `BLOCKED_SOURCE_DEPENDENCY` |
| 70 | `def` | [evalPowAtom](declarations/evalpowatom.md) | 608 | `BLOCKED_SOURCE_DEPENDENCY` |
| 71 | `theorem` | [const_pos](declarations/const-pos.md) | 611 | `BLOCKED_SOURCE_DEPENDENCY` |
| 72 | `theorem` | [mul_exp_pos](declarations/mul-exp-pos.md) | 613 | `BLOCKED_SOURCE_DEPENDENCY` |
| 73 | `theorem` | [add_pos_left](declarations/add-pos-left.md) | 616 | `BLOCKED_SOURCE_DEPENDENCY` |
| 74 | `theorem` | [add_pos_right](declarations/add-pos-right.md) | 618 | `BLOCKED_SOURCE_DEPENDENCY` |
| 75 | `def` | [ExBase.evalPos](declarations/exbase-evalpos.md) | 627 | `BLOCKED_SOURCE_DEPENDENCY` |
| 76 | `def` | [ExProd.evalPos](declarations/exprod-evalpos.md) | 637 | `BLOCKED_SOURCE_DEPENDENCY` |
| 77 | `def` | [ExSum.evalPos](declarations/exsum-evalpos.md) | 655 | `BLOCKED_SOURCE_DEPENDENCY` |
| 78 | `theorem` | [pow_one](declarations/pow-one.md) | 665 | `BLOCKED_SOURCE_DEPENDENCY` |
| 79 | `theorem` | [pow_bit0](declarations/pow-bit0.md) | 667 | `BLOCKED_SOURCE_DEPENDENCY` |
| 80 | `theorem` | [pow_bit1](declarations/pow-bit1.md) | 670 | `BLOCKED_SOURCE_DEPENDENCY` |
| 81 | `def` | [evalPowNat](declarations/evalpownat.md) | 683 | `BLOCKED_SOURCE_DEPENDENCY` |
| 82 | `theorem` | [one_pow](declarations/one-pow.md) | 700 | `BLOCKED_SOURCE_DEPENDENCY` |
| 83 | `theorem` | [mul_pow](declarations/mul-pow.md) | 702 | `BLOCKED_SOURCE_DEPENDENCY` |
| 84 | `def` | [evalPowProd](declarations/evalpowprod.md) | 713 | `BLOCKED_SOURCE_DEPENDENCY` |
| 85 | `structure` | [ExtractCoeff](declarations/extractcoeff.md) | 738 | `BLOCKED_SOURCE_DEPENDENCY` |
| 86 | `theorem` | [coeff_one](declarations/coeff-one.md) | 748 | `BLOCKED_SOURCE_DEPENDENCY` |
| 87 | `theorem` | [coeff_mul](declarations/coeff-mul.md) | 750 | `BLOCKED_SOURCE_DEPENDENCY` |
| 88 | `def` | [extractCoeff](declarations/extractcoeff-source-edition-2.md) | 759 | `BLOCKED_SOURCE_DEPENDENCY` |
| 89 | `theorem` | [pow_one_cast](declarations/pow-one-cast.md) | 768 | `BLOCKED_SOURCE_DEPENDENCY` |
| 90 | `theorem` | [zero_pow](declarations/zero-pow.md) | 770 | `BLOCKED_SOURCE_DEPENDENCY` |
| 91 | `theorem` | [single_pow](declarations/single-pow.md) | 772 | `BLOCKED_SOURCE_DEPENDENCY` |
| 92 | `theorem` | [pow_nat](declarations/pow-nat.md) | 774 | `BLOCKED_SOURCE_DEPENDENCY` |
| 93 | `def` | [evalPow₁](declarations/evalpow.md) | 786 | `BLOCKED_SOURCE_DEPENDENCY` |
| 94 | `theorem` | [pow_zero](declarations/pow-zero.md) | 805 | `BLOCKED_SOURCE_DEPENDENCY` |
| 95 | `theorem` | [pow_add](declarations/pow-add.md) | 807 | `BLOCKED_SOURCE_DEPENDENCY` |
| 96 | `def` | [evalPow](declarations/evalpow-source-edition-2.md) | 815 | `BLOCKED_SOURCE_DEPENDENCY` |
| 97 | `structure` | [Cache](declarations/cache.md) | 825 | `BLOCKED_SOURCE_DEPENDENCY` |
| 98 | `def` | [mkCache](declarations/mkcache.md) | 834 | `BLOCKED_SOURCE_DEPENDENCY` |
| 99 | `theorem` | [cast_pos](declarations/cast-pos.md) | 840 | `BLOCKED_SOURCE_DEPENDENCY` |
| 100 | `theorem` | [cast_zero](declarations/cast-zero.md) | 843 | `BLOCKED_SOURCE_DEPENDENCY` |
| 101 | `theorem` | [cast_neg](declarations/cast-neg.md) | 846 | `BLOCKED_SOURCE_DEPENDENCY` |
| 102 | `theorem` | [cast_rat](declarations/cast-rat.md) | 849 | `BLOCKED_SOURCE_DEPENDENCY` |
| 103 | `def` | [evalCast](declarations/evalcast.md) | 859 | `BLOCKED_SOURCE_DEPENDENCY` |
| 104 | `theorem` | [toProd_pf](declarations/toprod-pf.md) | 872 | `BLOCKED_SOURCE_DEPENDENCY` |
| 105 | `theorem` | [atom_pf](declarations/atom-pf.md) | 874 | `BLOCKED_SOURCE_DEPENDENCY` |
| 106 | `theorem` | [atom_pf'](declarations/atom-pf-source-edition-2.md) | 875 | `BLOCKED_SOURCE_DEPENDENCY` |
| 107 | `def` | [evalAtom](declarations/evalatom.md) | 883 | `BLOCKED_SOURCE_DEPENDENCY` |
| 108 | `theorem` | [inv_mul](declarations/inv-mul.md) | 892 | `BLOCKED_SOURCE_DEPENDENCY` |
| 109 | `theorem` | [inv_zero](declarations/inv-zero.md) | 897 | `BLOCKED_SOURCE_DEPENDENCY` |
| 110 | `theorem` | [inv_single](declarations/inv-single.md) | 899 | `BLOCKED_SOURCE_DEPENDENCY` |
| 111 | `theorem` | [inv_add](declarations/inv-add.md) | 902 | `BLOCKED_SOURCE_DEPENDENCY` |
| 112 | `def` | [evalInvAtom](declarations/evalinvatom.md) | 909 | `BLOCKED_SOURCE_DEPENDENCY` |
| 113 | `def` | [ExProd.evalInv](declarations/exprod-evalinv.md) | 919 | `BLOCKED_SOURCE_DEPENDENCY` |
| 114 | `def` | [ExSum.evalInv](declarations/exsum-evalinv.md) | 944 | `BLOCKED_SOURCE_DEPENDENCY` |
| 115 | `theorem` | [div_pf](declarations/div-pf.md) | 957 | `BLOCKED_SOURCE_DEPENDENCY` |
| 116 | `def` | [evalDiv](declarations/evaldiv.md) | 964 | `BLOCKED_SOURCE_DEPENDENCY` |
| 117 | `theorem` | [add_congr](declarations/add-congr.md) | 970 | `BLOCKED_SOURCE_DEPENDENCY` |
| 118 | `theorem` | [mul_congr](declarations/mul-congr.md) | 973 | `BLOCKED_SOURCE_DEPENDENCY` |
| 119 | `theorem` | [nsmul_congr](declarations/nsmul-congr.md) | 976 | `BLOCKED_SOURCE_DEPENDENCY` |
| 120 | `theorem` | [pow_congr](declarations/pow-congr.md) | 979 | `BLOCKED_SOURCE_DEPENDENCY` |
| 121 | `theorem` | [neg_congr](declarations/neg-congr.md) | 982 | `BLOCKED_SOURCE_DEPENDENCY` |
| 122 | `theorem` | [sub_congr](declarations/sub-congr.md) | 985 | `BLOCKED_SOURCE_DEPENDENCY` |
| 123 | `theorem` | [inv_congr](declarations/inv-congr.md) | 988 | `BLOCKED_SOURCE_DEPENDENCY` |
| 124 | `theorem` | [div_congr](declarations/div-congr.md) | 991 | `BLOCKED_SOURCE_DEPENDENCY` |
| 125 | `def` | [Cache.nat](declarations/cache-nat.md) | 995 | `BLOCKED_SOURCE_DEPENDENCY` |
| 126 | `def` | [isAtomOrDerivable](declarations/isatomorderivable.md) | 1009 | `BLOCKED_SOURCE_DEPENDENCY` |
| 127 | `def` | [eval](declarations/eval.md) | 1030 | `BLOCKED_SOURCE_DEPENDENCY` |
| 128 | `theorem` | [of_eq](declarations/of-eq.md) | 1093 | `BLOCKED_SOURCE_DEPENDENCY` |
| 129 | `initialize` | [(anonymous)](declarations/initialize.md) | 1100 | `BLOCKED_SOURCE_DEPENDENCY` |
| 130 | `def` | [proveEq](declarations/proveeq.md) | 1103 | `BLOCKED_SOURCE_DEPENDENCY` |
| 131 | `elab` | [(anonymous)](declarations/elab.md) | 1129 | `BLOCKED_SOURCE_DEPENDENCY` |
| 132 | `macro` | [(anonymous)](declarations/macro.md) | 1132 | `BLOCKED_SOURCE_DEPENDENCY` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=970eb80f6cc2bd2f085f5ec4ed0c05593bdc060c47aa2b82704a38e00533baf1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant30d6ff178904066e38e8b2b30d7d08c90566b14a5750e9df1e8f0aa6d6bd506e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
