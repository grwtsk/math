# Native Syntactic Topos

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**271 observed declarations and anonymous commands**, 68 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variantc0717c9e4c35258bbba31734684668657bfdcb9930e8b37cc0551af8c3cef0c5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b1ba50ffb78e7492c58eec2fea7836045fb759b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NativeSyntacticTopos.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


Declaration pages: [1](index.md) · [2](declarations-2.md)

| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [SmallCategory](declarations/smallcategory.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [op](declarations/op.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [TypeCat](declarations/typecat.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [Functor](declarations/functor.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [id](declarations/id-source-edition-3.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [comp](declarations/comp.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [NatTrans](declarations/nattrans.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [id](declarations/id-source-edition-4.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [vcomp](declarations/vcomp.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ext](declarations/ext-source-edition-3.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [NativeEquiv](declarations/nativeequiv.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [Sieve](declarations/sieve.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [top](declarations/top-source-edition-2.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [pullback](declarations/pullback.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [GrothendieckTopology](declarations/grothendiecktopology.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [Site](declarations/site.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `abbrev` | [Presheaf](declarations/presheaf.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [res](declarations/res.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [MatchingFamily](declarations/matchingfamily.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [Amalgamates](declarations/amalgamates.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [HasAmalgamation](declarations/hasamalgamation.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [IsSeparated](declarations/isseparated.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [IsSheaf](declarations/issheaf.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [Sheaf](declarations/sheaf.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `abbrev` | [SheafHom](declarations/sheafhom.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [SheafCategory](declarations/sheafcategory.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [CertifiedSheaf](declarations/certifiedsheaf.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [toSheaf](declarations/tosheaf.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [isSheaf_hasAmalgamation](declarations/issheaf-hasamalgamation.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [isSheaf_isSeparated](declarations/issheaf-isseparated.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [isSheaf_iff_separated_and_hasAmalgamation](declarations/issheaf-iff-separated-and-hasamalgamation.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [terminalPresheaf](declarations/terminalpresheaf.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [terminalPresheaf_isSheaf](declarations/terminalpresheaf-issheaf.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [terminalSheaf](declarations/terminalsheaf.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [productPresheaf](declarations/productpresheaf.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [productPresheaf_isSheaf](declarations/productpresheaf-issheaf.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [productSheaf](declarations/productsheaf.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [equalizerPresheaf](declarations/equalizerpresheaf.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [equalizerPresheaf_isSheaf](declarations/equalizerpresheaf-issheaf.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [equalizerSheaf](declarations/equalizersheaf.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `structure` | [SheafCategoryFiniteLimitData](declarations/sheafcategoryfinitelimitdata.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [sheafCategoryFiniteLimitData](declarations/sheafcategoryfinitelimitdata-source-edition-2.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [SheafCategory_hasFiniteLimits](declarations/sheafcategory-hasfinitelimits.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `structure` | [GeometricSignature](declarations/geometricsignature.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `abbrev` | [Ctx](declarations/ctx.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `inductive` | [Var](declarations/var.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [weaken](declarations/weaken-source-edition-2.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [appendLeft](declarations/appendleft.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [appendRight](declarations/appendright.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `inductive` | [Term](declarations/term.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `inductive` | [TermList](declarations/termlist.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `abbrev` | [Subst](declarations/subst.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [weaken](declarations/weaken.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [TermList.weaken](declarations/termlist-weaken.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [subst](declarations/subst-source-edition-3.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [TermList.subst](declarations/termlist-subst.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [subst_id](declarations/subst-id.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [TermList.subst_id](declarations/termlist-subst-id.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [id](declarations/id-source-edition-2.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [comp](declarations/comp-source-edition-2.md) | 681 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [lift](declarations/lift.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [subst_comp](declarations/subst-comp.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [TermList.subst_comp](declarations/termlist-subst-comp.md) | 718 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `inductive` | [Formula](declarations/formula.md) | 739 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [alphaEq](declarations/alphaeq.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [alphaEq_refl](declarations/alphaeq-refl.md) | 766 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [alphaEq_symm](declarations/alphaeq-symm.md) | 771 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [alphaEq_trans](declarations/alphaeq-trans.md) | 777 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [subst](declarations/subst-source-edition-2.md) | 783 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [weaken](declarations/weaken-source-edition-3.md) | 798 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `structure` | [GeometricSequent](declarations/geometricsequent.md) | 807 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `structure` | [NativeGeometricTheory](declarations/nativegeometrictheory.md) | 813 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `inductive` | [Provable](declarations/provable.md) | 822 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [hyp_head](declarations/hyp-head.md) | 883 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [alpha_rw](declarations/alpha-rw.md) | 890 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `structure` | [SynObject](declarations/synobject.md) | 902 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `structure` | [NativeSynHom](declarations/nativesynhom.md) | 907 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `structure` | [NativeSynHom0](declarations/nativesynhom0.md) | 913 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [id](declarations/id.md) | 918 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [comp](declarations/comp-source-edition-3.md) | 921 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [ext](declarations/ext-source-edition-2.md) | 925 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [SyntacticCategory](declarations/syntacticcategory.md) | 948 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [terminalObject](declarations/terminalobject.md) | 970 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [productCtx](declarations/productctx.md) | 976 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [fstSubst](declarations/fstsubst.md) | 980 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [sndSubst](declarations/sndsubst.md) | 985 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [productObject](declarations/productobject.md) | 990 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [eqSubstFormula](declarations/eqsubstformula.md) | 998 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [equalizerObject](declarations/equalizerobject.md) | 1012 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `structure` | [SyntacticFiniteLimitData](declarations/syntacticfinitelimitdata-source-edition-2.md) | 1020 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [syntacticFiniteLimitData](declarations/syntacticfinitelimitdata.md) | 1027 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `structure` | [BasicCover](declarations/basiccover.md) | 1037 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `inductive` | [GeneratedCover](declarations/generatedcover.md) | 1043 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [generatedGrothendieckTopology](declarations/generatedgrothendiecktopology.md) | 1060 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `structure` | [SyntacticCoverBasis](declarations/syntacticcoverbasis.md) | 1072 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [syntacticTopology](declarations/syntactictopology.md) | 1077 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `structure` | [SyntacticSite](declarations/syntacticsite.md) | 1082 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [mkSyntacticSite](declarations/mksyntacticsite.md) | 1092 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [syntacticTopology_top_cover](declarations/syntactictopology-top-cover.md) | 1112 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [syntacticTopology_pullback_cover](declarations/syntactictopology-pullback-cover.md) | 1119 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [syntactic_has_formula_terminal](declarations/syntactic-has-formula-terminal.md) | 1128 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [syntactic_product_projection_left](declarations/syntactic-product-projection-left.md) | 1134 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [syntactic_product_projection_right](declarations/syntactic-product-projection-right.md) | 1140 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [syntactic_equalizer_reflexive](declarations/syntactic-equalizer-reflexive.md) | 1146 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `inductive` | [BLMSort](declarations/blmsort.md) | 1161 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `inductive` | [BLMFunc](declarations/blmfunc.md) | 1195 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `inductive` | [BLMRel](declarations/blmrel.md) | 1206 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `def` | [BLMSignature](declarations/blmsignature.md) | 1218 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `def` | [T_BLM_Native](declarations/t-blm-native.md) | 1251 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `def` | [T_BLM_emptyCoverBasis](declarations/t-blm-emptycoverbasis.md) | 1264 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `def` | [SyntacticSite_T_BLM](declarations/syntacticsite-t-blm.md) | 1271 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [ext](declarations/ext.md) | 1285 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [pullback_id](declarations/pullback-id.md) | 1310 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [pullback_pullback](declarations/pullback-pullback.md) | 1318 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `def` | [empty](declarations/empty.md) | 1331 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [pullback_empty](declarations/pullback-empty.md) | 1337 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `def` | [IsJClosed](declarations/isjclosed.md) | 1352 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `structure` | [JClosedSieve](declarations/jclosedsieve.md) | 1358 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [ext](declarations/ext-source-edition-4.md) | 1365 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `def` | [pullback](declarations/pullback-source-edition-2.md) | 1385 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `def` | [topJClosedSieve](declarations/topjclosedsieve.md) | 1400 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `def` | [OmegaPredicate](declarations/omegapredicate.md) | 1408 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `def` | [OmegaPredicatePresheaf](declarations/omegapredicatepresheaf.md) | 1412 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [GeneratedClosureMembership](declarations/generatedclosuremembership.md) | 1428 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `def` | [IsGeneratedJClosed](declarations/isgeneratedjclosed.md) | 1434 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `def` | [OmegaGenerated](declarations/omegagenerated.md) | 1441 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [isGeneratedJClosed_iff_isJClosed_generated](declarations/isgeneratedjclosed-iff-isjclosed-generated.md) | 1446 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `def` | [OmegaGeneratedEquivPredicate](declarations/omegageneratedequivpredicate.md) | 1455 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [generatedJClosed_forces_membership](declarations/generatedjclosed-forces-membership.md) | 1481 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `structure` | [ArrowPredicate](declarations/arrowpredicate.md) | 1492 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `def` | [toSieve](declarations/tosieve.md) | 1501 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `def` | [ofSieve](declarations/ofsieve.md) | 1506 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [toSieve_ofSieve](declarations/tosieve-ofsieve.md) | 1511 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [ofSieve_toSieve](declarations/ofsieve-tosieve.md) | 1516 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `def` | [IsJClosedPredicate](declarations/isjclosedpredicate.md) | 1524 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `def` | [OmegaCharacteristicPredicate](declarations/omegacharacteristicpredicate.md) | 1529 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `def` | [OmegaCharacteristicPredicate.toOmegaPredicate](declarations/omegacharacteristicpredicate-toomegapredicate.md) | 1533 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `def` | [OmegaPredicate.toCharacteristicPredicate](declarations/omegapredicate-tocharacteristicpredicate.md) | 1541 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `def` | [OmegaPredicateEquivCharacteristicPredicate](declarations/omegapredicateequivcharacteristicpredicate.md) | 1551 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `def` | [truthArrow](declarations/trutharrow.md) | 1570 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `structure` | [Subpresheaf](declarations/subpresheaf.md) | 1585 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `def` | [characteristicSieve](declarations/characteristicsieve.md) | 1592 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `structure` | [LocalSubpresheaf](declarations/localsubpresheaf.md) | 1606 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [characteristicSieve_isJClosed](declarations/characteristicsieve-isjclosed.md) | 1616 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `def` | [characteristicMap](declarations/characteristicmap.md) | 1637 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [characteristicPredicate_fromGeneratedCover](declarations/characteristicpredicate-fromgeneratedcover.md) | 1666 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `structure` | [OmegaJFragment](declarations/omegajfragment-source-edition-2.md) | 1679 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `def` | [omegaJFragment](declarations/omegajfragment.md) | 1687 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [pullback_top_of_mem](declarations/pullback-top-of-mem.md) | 1709 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `theorem` | [mem_of_pullback_eq_and_mem](declarations/mem-of-pullback-eq-and-mem.md) | 1722 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `def` | [LocallyEqualOnCover](declarations/locallyequaloncover.md) | 1740 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [jclosed_sieve_separation](declarations/jclosed-sieve-separation.md) | 1750 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `theorem` | [matching_pullback_sieve](declarations/matching-pullback-sieve.md) | 1861 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `theorem` | [matching_id_mem_iff](declarations/matching-id-mem-iff.md) | 1876 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `def` | [omegaGlueSieve](declarations/omegagluesieve.md) | 1915 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `theorem` | [omegaGlue_restrict_eq](declarations/omegaglue-restrict-eq.md) | 1936 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `theorem` | [omegaGlueSieve_isJClosed](declarations/omegagluesieve-isjclosed.md) | 1989 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `def` | [omegaGlueClosed](declarations/omegaglueclosed.md) | 2070 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `theorem` | [omegaGlue_amalgamates](declarations/omegaglue-amalgamates.md) | 2080 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `theorem` | [omegaGlue_unique](declarations/omegaglue-unique.md) | 2094 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `theorem` | [OmegaPredicate_isSheaf](declarations/omegapredicate-issheaf.md) | 2141 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `def` | [OmegaJCertifiedSheaf](declarations/omegajcertifiedsheaf.md) | 2150 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `def` | [OmegaJSheaf](declarations/omegajsheaf.md) | 2170 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `def` | [emptyMatchingFamily](declarations/emptymatchingfamily.md) | 2179 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [empty_cover_unique_amalgamation](declarations/empty-cover-unique-amalgamation.md) | 2191 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `theorem` | [empty_cover_policy_is_generic](declarations/empty-cover-policy-is-generic.md) | 2203 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `structure` | [SliceObj](declarations/sliceobj.md) | 2214 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `structure` | [SliceHom](declarations/slicehom.md) | 2220 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `theorem` | [ext](declarations/ext-source-edition-5.md) | 2229 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `def` | [SliceCategory](declarations/slicecategory.md) | 2245 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `def` | [SliceSieveUnderlying](declarations/slicesieveunderlying.md) | 2281 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `structure` | [SliceTopologyCertificate](declarations/slicetopologycertificate-source-edition-2.md) | 2307 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `theorem` | [SliceTopologyCertificate.covers_reflect_underlying](declarations/slicetopologycertificate-covers-reflect-underlying.md) | 2318 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [SliceTopologyCertificate.covers_generated_by_underlying](declarations/slicetopologycertificate-covers-generated-by-underlying.md) | 2329 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `theorem` | [slice_empty_cover_iff](declarations/slice-empty-cover-iff.md) | 2340 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `def` | [SliceSite](declarations/slicesite.md) | 2356 | `BLOCKED_NATIVE_ADMISSION` |
| 177 | `def` | [restrictPresheafToSlice](declarations/restrictpresheaftoslice.md) | 2364 | `BLOCKED_NATIVE_ADMISSION` |
| 178 | `structure` | [RestrictedSheaf](declarations/restrictedsheaf.md) | 2381 | `BLOCKED_NATIVE_ADMISSION` |
| 179 | `structure` | [RestrictSheafToSliceCertificate](declarations/restrictsheaftoslicecertificate.md) | 2390 | `BLOCKED_NATIVE_ADMISSION` |
| 180 | `def` | [pullbackSliceFunctor](declarations/pullbackslicefunctor.md) | 2398 | `BLOCKED_NATIVE_ADMISSION` |
| 181 | `structure` | [PullbackLocalSheafHomCertificate](declarations/pullbacklocalsheafhomcertificate.md) | 2427 | `BLOCKED_NATIVE_ADMISSION` |
| 182 | `def` | [SheafProduct](declarations/sheafproduct.md) | 2463 | `BLOCKED_NATIVE_ADMISSION` |
| 183 | `structure` | [LocalMorphismExponentialPresheaf](declarations/localmorphismexponentialpresheaf.md) | 2469 | `BLOCKED_NATIVE_ADMISSION` |
| 184 | `structure` | [ExponentialSheafCertificate](declarations/exponentialsheafcertificate-source-edition-2.md) | 2480 | `BLOCKED_NATIVE_ADMISSION` |
| 185 | `structure` | [CertifiedExponentialSheaf](declarations/certifiedexponentialsheaf.md) | 2512 | `BLOCKED_NATIVE_ADMISSION` |
| 186 | `def` | [ExponentialSheafCertificate.toCertified](declarations/exponentialsheafcertificate-tocertified.md) | 2539 | `BLOCKED_NATIVE_ADMISSION` |
| 187 | `structure` | [SheafCategoryExponentialsCertificate](declarations/sheafcategoryexponentialscertificate.md) | 2558 | `BLOCKED_NATIVE_ADMISSION` |
| 188 | `abbrev` | [SliceTopologyCertificate](declarations/slicetopologycertificate.md) | 2571 | `BLOCKED_NATIVE_ADMISSION` |
| 189 | `structure` | [SheafProductData](declarations/sheafproductdata.md) | 2576 | `BLOCKED_NATIVE_ADMISSION` |
| 190 | `abbrev` | [defaultSheafProductData](declarations/defaultsheafproductdata.md) | 2584 | `BLOCKED_NATIVE_ADMISSION` |
| 191 | `abbrev` | [ExponentialSheafCertificate](declarations/exponentialsheafcertificate.md) | 2593 | `BLOCKED_NATIVE_ADMISSION` |
| 192 | `structure` | [InternalBoundary](declarations/internalboundary.md) | 2604 | `BLOCKED_NATIVE_ADMISSION` |
| 193 | `def` | [checkedConstructive](declarations/checkedconstructive.md) | 2616 | `BLOCKED_NATIVE_ADMISSION` |
| 194 | `def` | [certificateRequired](declarations/certificaterequired.md) | 2626 | `BLOCKED_NATIVE_ADMISSION` |
| 195 | `def` | [fromDeclaration](declarations/fromdeclaration.md) | 2639 | `BLOCKED_NATIVE_ADMISSION` |
| 196 | `abbrev` | [Omega](declarations/omega.md) | 2657 | `BLOCKED_NATIVE_ADMISSION` |
| 197 | `def` | [TerminalPresheafOmega](declarations/terminalpresheafomega.md) | 2662 | `BLOCKED_NATIVE_ADMISSION` |
| 198 | `def` | [truthArrowOmega](declarations/trutharrowomega.md) | 2678 | `BLOCKED_NATIVE_ADMISSION` |
| 199 | `abbrev` | [InternalContext](declarations/internalcontext.md) | 2691 | `BLOCKED_NATIVE_ADMISSION` |
| 200 | `structure` | [InternalProp](declarations/internalprop.md) | 2696 | `BLOCKED_NATIVE_ADMISSION` |
| 201 | `def` | [top](declarations/top.md) | 2703 | `BLOCKED_NATIVE_ADMISSION` |
| 202 | `def` | [ForcesAt](declarations/forcesat-source-edition-2.md) | 2713 | `BLOCKED_NATIVE_ADMISSION` |
| 203 | `def` | [Forces](declarations/forces.md) | 2719 | `BLOCKED_NATIVE_ADMISSION` |
| 204 | `theorem` | [top_forces](declarations/top-forces-source-edition-2.md) | 2724 | `BLOCKED_NATIVE_ADMISSION` |
| 205 | `structure` | [InternalFormula](declarations/internalformula.md) | 2732 | `BLOCKED_NATIVE_ADMISSION` |
| 206 | `def` | [top](declarations/top-source-edition-3.md) | 2740 | `BLOCKED_NATIVE_ADMISSION` |
| 207 | `def` | [ForcesSection](declarations/forcessection-source-edition-2.md) | 2762 | `BLOCKED_NATIVE_ADMISSION` |
| 208 | `def` | [ForcesAt](declarations/forcesat.md) | 2770 | `BLOCKED_NATIVE_ADMISSION` |
| 209 | `def` | [Forces](declarations/forces-source-edition-3.md) | 2777 | `BLOCKED_NATIVE_ADMISSION` |
| 210 | `theorem` | [top_forces](declarations/top-forces.md) | 2783 | `BLOCKED_NATIVE_ADMISSION` |
| 211 | `structure` | [ExtensionCertificate](declarations/extensioncertificate.md) | 2790 | `BLOCKED_NATIVE_ADMISSION` |
| 212 | `def` | [ofLocalSubpresheaf](declarations/oflocalsubpresheaf.md) | 2800 | `BLOCKED_NATIVE_ADMISSION` |
| 213 | `structure` | [ClassifiesLocalSubpresheaf](declarations/classifieslocalsubpresheaf-source-edition-2.md) | 2809 | `BLOCKED_NATIVE_ADMISSION` |
| 214 | `def` | [Forces](declarations/forces-source-edition-2.md) | 2823 | `BLOCKED_NATIVE_ADMISSION` |
| 215 | `def` | [ForcesSection](declarations/forcessection.md) | 2830 | `BLOCKED_NATIVE_ADMISSION` |
| 216 | `structure` | [InternalType](declarations/internaltype.md) | 2838 | `BLOCKED_NATIVE_ADMISSION` |
| 217 | `structure` | [InternalTerm](declarations/internalterm.md) | 2843 | `BLOCKED_NATIVE_ADMISSION` |
| 218 | `structure` | [ProductTypeCertificate](declarations/producttypecertificate.md) | 2850 | `BLOCKED_NATIVE_ADMISSION` |
| 219 | `structure` | [FunctionTypeCertificate](declarations/functiontypecertificate.md) | 2870 | `BLOCKED_NATIVE_ADMISSION` |
| 220 | `structure` | [OmegaTypeCertificate](declarations/omegatypecertificate.md) | 2900 | `BLOCKED_NATIVE_ADMISSION` |
| 221 | `structure` | [PowerObjectCertificate](declarations/powerobjectcertificate.md) | 2913 | `BLOCKED_NATIVE_ADMISSION` |
| 222 | `structure` | [HeytingFormulaOps](declarations/heytingformulaops.md) | 2930 | `BLOCKED_NATIVE_ADMISSION` |
| 223 | `structure` | [InternalizationCertificate](declarations/internalizationcertificate.md) | 2966 | `BLOCKED_NATIVE_ADMISSION` |
| 224 | `theorem` | [internalize_sound](declarations/internalize-sound.md) | 2978 | `BLOCKED_NATIVE_ADMISSION` |
| 225 | `structure` | [InternalDeclaration](declarations/internaldeclaration.md) | 2987 | `BLOCKED_NATIVE_ADMISSION` |
| 226 | `structure` | [RicciCoverageClaim](declarations/riccicoverageclaim.md) | 2996 | `BLOCKED_NATIVE_ADMISSION` |
| 227 | `def` | [RicciCoverageExternalProp](declarations/riccicoverageexternalprop.md) | 3000 | `BLOCKED_NATIVE_ADMISSION` |
| 228 | `structure` | [RicciCoverageInternalization](declarations/riccicoverageinternalization.md) | 3006 | `BLOCKED_NATIVE_ADMISSION` |
| 229 | `theorem` | [ricciCoverage_internal_forces](declarations/riccicoverage-internal-forces.md) | 3024 | `BLOCKED_NATIVE_ADMISSION` |
| 230 | `structure` | [RicciCoverageInternalRule](declarations/riccicoverageinternalrule.md) | 3035 | `BLOCKED_NATIVE_ADMISSION` |
| 231 | `theorem` | [ricciCoverage_apply_internal_rule](declarations/riccicoverage-apply-internal-rule.md) | 3046 | `BLOCKED_NATIVE_ADMISSION` |
| 232 | `structure` | [ChoiceCoverageClaim](declarations/choicecoverageclaim.md) | 3054 | `BLOCKED_NATIVE_ADMISSION` |
| 233 | `def` | [ChoiceCoverageExternalProp](declarations/choicecoverageexternalprop.md) | 3058 | `BLOCKED_NATIVE_ADMISSION` |
| 234 | `structure` | [ChoiceCoverageInternalization](declarations/choicecoverageinternalization.md) | 3064 | `BLOCKED_NATIVE_ADMISSION` |
| 235 | `theorem` | [choiceCoverage_internal_forces](declarations/choicecoverage-internal-forces.md) | 3082 | `BLOCKED_NATIVE_ADMISSION` |
| 236 | `structure` | [ChoiceCoverageInternalRule](declarations/choicecoverageinternalrule.md) | 3093 | `BLOCKED_NATIVE_ADMISSION` |
| 237 | `theorem` | [choiceCoverage_apply_internal_rule](declarations/choicecoverage-apply-internal-rule.md) | 3104 | `BLOCKED_NATIVE_ADMISSION` |
| 238 | `class` | [InternallyCovers](declarations/internallycovers.md) | 3112 | `BLOCKED_NATIVE_ADMISSION` |
| 239 | `class` | [RicciInternalCoverageRules](declarations/ricciinternalcoveragerules.md) | 3123 | `BLOCKED_NATIVE_ADMISSION` |
| 240 | `instance` | [ricciInternallyCovers](declarations/ricciinternallycovers.md) | 3127 | `BLOCKED_NATIVE_ADMISSION` |
| 241 | `class` | [ChoiceInternalCoverageRules](declarations/choiceinternalcoveragerules.md) | 3144 | `BLOCKED_NATIVE_ADMISSION` |
| 242 | `instance` | [choiceInternallyCovers](declarations/choiceinternallycovers.md) | 3148 | `BLOCKED_NATIVE_ADMISSION` |
| 243 | `theorem` | [internally_cover](declarations/internally-cover.md) | 3165 | `BLOCKED_NATIVE_ADMISSION` |
| 244 | `structure` | [InternalJudgment](declarations/internaljudgment.md) | 3174 | `BLOCKED_NATIVE_ADMISSION` |
| 245 | `structure` | [GlobalInternalJudgment](declarations/globalinternaljudgment.md) | 3181 | `BLOCKED_NATIVE_ADMISSION` |
| 246 | `def` | [GlobalInternalJudgment.ofInternalization](declarations/globalinternaljudgment-ofinternalization.md) | 3187 | `BLOCKED_NATIVE_ADMISSION` |
| 247 | `structure` | [InternalAutomationRequest](declarations/internalautomationrequest.md) | 3198 | `BLOCKED_NATIVE_ADMISSION` |
| 248 | `structure` | [InternalAutomationResult](declarations/internalautomationresult.md) | 3207 | `BLOCKED_NATIVE_ADMISSION` |
| 249 | `def` | [PullbackTruth](declarations/pullbacktruth.md) | 3220 | `BLOCKED_NATIVE_ADMISSION` |
| 250 | `theorem` | [forcesSection_iff_pullbackTruth](declarations/forcessection-iff-pullbacktruth.md) | 3228 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d49f77f547f58d4c2c00f5fcd9d52315e671bb7697ed4d3452c94daf6eb230ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NativeSyntacticTopos/Variantc0717c9e4c35258bbba31734684668657bfdcb9930e8b37cc0551af8c3cef0c5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
