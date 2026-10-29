# Ring Basic CSLift

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**137 observed declarations and anonymous commands**, 69 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1add6dac4afd3d5b1395bb8da86d5bf074e69e5a13f909194999c0989dabe967.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `961976da577530921d5f6220ce4ed143b8e30aee`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingBasicCSLift.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [instCommSemiringNat](declarations/instcommsemiringnat.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [sℕ](declarations/s.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [ExBase](declarations/exbase.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `inductive` | [ExProd](declarations/exprod.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `inductive` | [ExSum](declarations/exsum.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [ExBase.eq](declarations/exbase-eq.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [ExProd.eq](declarations/exprod-eq.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [ExSum.eq](declarations/exsum-eq.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [ExBase.cmp](declarations/exbase-cmp.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [ExProd.cmp](declarations/exprod-cmp.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [ExSum.cmp](declarations/exsum-cmp.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [ExBase.cast](declarations/exbase-cast.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [ExProd.cast](declarations/exprod-cast.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [ExSum.cast](declarations/exsum-cast.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [Result](declarations/result.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [ExProd.mkNat](declarations/exprod-mknat.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [ExProd.mkNegNat](declarations/exprod-mknegnat.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [ExProd.mkRat](declarations/exprod-mkrat.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [ExBase.toProd](declarations/exbase-toprod.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [ExProd.toSum](declarations/exprod-tosum.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [ExProd.coeff](declarations/exprod-coeff.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `inductive` | [Overlap](declarations/overlap.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [add_overlap_pf](declarations/add-overlap-pf.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [add_overlap_pf_zero](declarations/add-overlap-pf-zero.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [evalAddOverlap](declarations/evaladdoverlap.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [add_pf_zero_add](declarations/add-pf-zero-add.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [add_pf_add_zero](declarations/add-pf-add-zero.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [add_pf_add_overlap](declarations/add-pf-add-overlap.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [add_pf_add_overlap_zero](declarations/add-pf-add-overlap-zero.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [add_pf_add_lt](declarations/add-pf-add-lt.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [add_pf_add_gt](declarations/add-pf-add-gt.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [evalAdd](declarations/evaladd.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [one_mul](declarations/one-mul.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [mul_one](declarations/mul-one.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [mul_pf_left](declarations/mul-pf-left.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [mul_pf_right](declarations/mul-pf-right.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [mul_pp_pf_overlap](declarations/mul-pp-pf-overlap.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [evalMulProd](declarations/evalmulprod.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [mul_zero](declarations/mul-zero.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [mul_add](declarations/mul-add.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [evalMul₁](declarations/evalmul.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [zero_mul](declarations/zero-mul.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [add_mul](declarations/add-mul.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [evalMul](declarations/evalmul-source-edition-2.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [natCast_nat](declarations/natcast-nat.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [natCast_mul](declarations/natcast-mul.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [natCast_zero](declarations/natcast-zero.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [natCast_add](declarations/natcast-add.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [ExBase.evalNatCast](declarations/exbase-evalnatcast.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [ExProd.evalNatCast](declarations/exprod-evalnatcast.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [ExSum.evalNatCast](declarations/exsum-evalnatcast.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [smul_nat](declarations/smul-nat.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [smul_eq_cast](declarations/smul-eq-cast.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [evalNSMul](declarations/evalnsmul.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [neg_one_mul](declarations/neg-one-mul.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [neg_mul](declarations/neg-mul.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [evalNegProd](declarations/evalnegprod.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [neg_zero](declarations/neg-zero.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [neg_add](declarations/neg-add.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [evalNeg](declarations/evalneg.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [sub_pf](declarations/sub-pf.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [evalSub](declarations/evalsub.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [pow_prod_atom](declarations/pow-prod-atom.md) | 638 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [evalPowProdAtom](declarations/evalpowprodatom.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [pow_atom](declarations/pow-atom.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [evalPowAtom](declarations/evalpowatom.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [const_pos](declarations/const-pos.md) | 663 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [mul_exp_pos](declarations/mul-exp-pos.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [add_pos_left](declarations/add-pos-left.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [add_pos_right](declarations/add-pos-right.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [ExBase.evalPos](declarations/exbase-evalpos.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [ExProd.evalPos](declarations/exprod-evalpos.md) | 691 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [ExSum.evalPos](declarations/exsum-evalpos.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [pow_one](declarations/pow-one.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [pow_bit0](declarations/pow-bit0.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [pow_bit1](declarations/pow-bit1.md) | 725 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [evalPowNat](declarations/evalpownat.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [one_pow](declarations/one-pow.md) | 756 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [mul_pow](declarations/mul-pow.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [evalPowProd](declarations/evalpowprod.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `structure` | [ExtractCoeff](declarations/extractcoeff.md) | 797 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [coeff_one](declarations/coeff-one.md) | 807 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [coeff_mul](declarations/coeff-mul.md) | 809 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [extractCoeff](declarations/extractcoeff-source-edition-2.md) | 819 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [pow_one_cast](declarations/pow-one-cast.md) | 828 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [zero_pow](declarations/zero-pow.md) | 830 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [single_pow](declarations/single-pow.md) | 832 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [pow_nat](declarations/pow-nat.md) | 835 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [evalPow₁](declarations/evalpow.md) | 848 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [pow_zero](declarations/pow-zero.md) | 869 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [pow_add](declarations/pow-add.md) | 871 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [evalPow](declarations/evalpow-source-edition-2.md) | 880 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `structure` | [Cache](declarations/cache.md) | 891 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [mkCache](declarations/mkcache.md) | 900 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [cast_pos](declarations/cast-pos.md) | 906 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [cast_zero](declarations/cast-zero.md) | 909 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [cast_neg](declarations/cast-neg.md) | 912 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [cast_rat](declarations/cast-rat.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [evalCast](declarations/evalcast.md) | 927 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [toProd_pf](declarations/toprod-pf.md) | 941 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [atom_pf](declarations/atom-pf-source-edition-2.md) | 943 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [atom_pf'](declarations/atom-pf.md) | 944 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `def` | [evalAtom](declarations/evalatom.md) | 952 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [inv_mul](declarations/inv-mul.md) | 961 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [inv_zero](declarations/inv-zero.md) | 966 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [inv_single](declarations/inv-single.md) | 968 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [inv_add](declarations/inv-add.md) | 970 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `def` | [evalInvAtom](declarations/evalinvatom.md) | 979 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `def` | [ExProd.evalInv](declarations/exprod-evalinv.md) | 988 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `def` | [ExSum.evalInv](declarations/exsum-evalinv.md) | 1014 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [div_pf](declarations/div-pf.md) | 1027 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `def` | [evalDiv](declarations/evaldiv.md) | 1034 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [add_congr](declarations/add-congr.md) | 1040 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [mul_congr](declarations/mul-congr.md) | 1043 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [nsmul_congr](declarations/nsmul-congr.md) | 1046 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [pow_congr](declarations/pow-congr.md) | 1050 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [neg_congr](declarations/neg-congr.md) | 1053 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [sub_congr](declarations/sub-congr.md) | 1056 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [inv_congr](declarations/inv-congr.md) | 1059 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [div_congr](declarations/div-congr.md) | 1062 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `def` | [Cache.nat](declarations/cache-nat.md) | 1066 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `def` | [isAtomOrDerivable](declarations/isatomorderivable.md) | 1080 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `def` | [eval](declarations/eval.md) | 1101 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `class` | [CSLift](declarations/cslift.md) | 1169 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `class` | [CSLiftVal](declarations/csliftval.md) | 1177 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `instance` | [(anonymous)](declarations/instance.md) | 1183 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [of_lift](declarations/of-lift.md) | 1185 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [of_eq](declarations/of-eq.md) | 1191 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `initialize` | [(anonymous)](declarations/initialize.md) | 1198 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `def` | [proveEq](declarations/proveeq.md) | 1201 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `elab` | [(anonymous)](declarations/elab.md) | 1249 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `macro` | [(anonymous)](declarations/macro.md) | 1252 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=133aedd702bf9ee787f94c0e4559df74555364675452b600398d2f4e1a7f2300 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant1add6dac4afd3d5b1395bb8da86d5bf074e69e5a13f909194999c0989dabe967.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
