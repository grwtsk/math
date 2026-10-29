# Order Galois Connection

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**130 observed declarations and anonymous commands**, 102 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Varianta42c36a082b9cce095be9290cfa26666aa6ec05e85b3f1ffd9e5eb67899f25d4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c96d8bb0c1822585ec31a13a9bdc4fa21a255254`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderGaloisConnection.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [GaloisConnection](declarations/galoisconnection.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [OrderIso.to_galoisConnection](declarations/orderiso-to-galoisconnection.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [monotone_intro](declarations/monotone-intro.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [dual](declarations/dual.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [le_iff_le](declarations/le-iff-le.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [l_le](declarations/l-le.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [le_u](declarations/le-u.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [le_u_l](declarations/le-u-l.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [l_u_le](declarations/l-u-le.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [monotone_u](declarations/monotone-u.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [monotone_l](declarations/monotone-l.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [upperBounds_l_image](declarations/upperbounds-l-image.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [lowerBounds_u_image](declarations/lowerbounds-u-image.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [bddAbove_l_image](declarations/bddabove-l-image.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [bddBelow_u_image](declarations/bddbelow-u-image.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [isLUB_l_image](declarations/islub-l-image.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [isGLB_u_image](declarations/isglb-u-image.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isLeast_l](declarations/isleast-l.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [isGreatest_u](declarations/isgreatest-u.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [isGLB_l](declarations/isglb-l.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [isLUB_u](declarations/islub-u.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [le_u_l_trans](declarations/le-u-l-trans.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [l_u_le_trans](declarations/l-u-le-trans.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [u_l_u_eq_u](declarations/u-l-u-eq-u-source-edition-2.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [u_l_u_eq_u'](declarations/u-l-u-eq-u.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [u_unique](declarations/u-unique.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [exists_eq_u](declarations/exists-eq-u.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [u_eq](declarations/u-eq.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [l_u_l_eq_l](declarations/l-u-l-eq-l.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [l_u_l_eq_l'](declarations/l-u-l-eq-l-source-edition-2.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [l_unique](declarations/l-unique.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [exists_eq_l](declarations/exists-eq-l.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [l_eq](declarations/l-eq.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [u_eq_top](declarations/u-eq-top.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [u_top](declarations/u-top.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [l_eq_bot](declarations/l-eq-bot.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [l_bot](declarations/l-bot.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [l_sup](declarations/l-sup.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [u_inf](declarations/u-inf.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [l_iSup](declarations/l-isup.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [l_iSup₂](declarations/l-isup-source-edition-2.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [u_iInf](declarations/u-iinf.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [u_iInf₂](declarations/u-iinf-source-edition-2.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [l_sSup](declarations/l-ssup.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [u_sInf](declarations/u-sinf.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [lt_iff_lt](declarations/lt-iff-lt.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [id](declarations/id.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [compose](declarations/compose.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [dfun](declarations/dfun.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [compl](declarations/compl.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [l_comm_of_u_comm](declarations/l-comm-of-u-comm.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [u_comm_of_l_comm](declarations/u-comm-of-l-comm.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [l_comm_iff_u_comm](declarations/l-comm-iff-u-comm.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [sSup_image2_eq_sSup_sSup](declarations/ssup-image2-eq-ssup-ssup.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [sSup_image2_eq_sSup_sInf](declarations/ssup-image2-eq-ssup-sinf.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [sSup_image2_eq_sInf_sSup](declarations/ssup-image2-eq-sinf-ssup.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [sSup_image2_eq_sInf_sInf](declarations/ssup-image2-eq-sinf-sinf.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [sInf_image2_eq_sInf_sInf](declarations/sinf-image2-eq-sinf-sinf.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [sInf_image2_eq_sInf_sSup](declarations/sinf-image2-eq-sinf-ssup.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [sInf_image2_eq_sSup_sInf](declarations/sinf-image2-eq-ssup-sinf.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [sInf_image2_eq_sSup_sSup](declarations/sinf-image2-eq-ssup-ssup.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [bddAbove_image](declarations/bddabove-image.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [bddBelow_image](declarations/bddbelow-image.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [bddAbove_preimage](declarations/bddabove-preimage.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [bddBelow_preimage](declarations/bddbelow-preimage.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [galoisConnection_mul_div](declarations/galoisconnection-mul-div.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `structure` | [GaloisInsertion](declarations/galoisinsertion.md) | 469 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [GaloisInsertion.monotoneIntro](declarations/galoisinsertion-monotoneintro.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [OrderIso.toGaloisInsertion](declarations/orderiso-togaloisinsertion.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [GaloisConnection.toGaloisInsertion](declarations/galoisconnection-togaloisinsertion.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [GaloisConnection.liftOrderBot](declarations/galoisconnection-liftorderbot.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [l_u_eq](declarations/l-u-eq.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [leftInverse_l_u](declarations/leftinverse-l-u.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [l_top](declarations/l-top.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [l_surjective](declarations/l-surjective.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [u_injective](declarations/u-injective.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [l_sup_u](declarations/l-sup-u.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [l_iSup_u](declarations/l-isup-u.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [l_biSup_u](declarations/l-bisup-u.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [l_sSup_u_image](declarations/l-ssup-u-image.md) | 560 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [l_inf_u](declarations/l-inf-u.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [l_iInf_u](declarations/l-iinf-u.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [l_biInf_u](declarations/l-biinf-u.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [l_sInf_u_image](declarations/l-sinf-u-image.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [l_iInf_of_ul_eq_self](declarations/l-iinf-of-ul-eq-self.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [l_biInf_of_ul_eq_self](declarations/l-biinf-of-ul-eq-self.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [u_le_u_iff](declarations/u-le-u-iff.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [strictMono_u](declarations/strictmono-u.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [isLUB_of_u_image](declarations/islub-of-u-image.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [isGLB_of_u_image](declarations/isglb-of-u-image.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [liftSemilatticeSup](declarations/liftsemilatticesup.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [liftSemilatticeInf](declarations/liftsemilatticeinf.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [liftLattice](declarations/liftlattice.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [liftOrderTop](declarations/liftordertop.md) | 665 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [liftBoundedOrder](declarations/liftboundedorder.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [liftCompleteLattice](declarations/liftcompletelattice-source-edition-2.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `structure` | [GaloisCoinsertion](declarations/galoiscoinsertion.md) | 703 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [GaloisCoinsertion.dual](declarations/galoiscoinsertion-dual.md) | 716 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `def` | [GaloisInsertion.dual](declarations/galoisinsertion-dual.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [GaloisCoinsertion.ofDual](declarations/galoiscoinsertion-ofdual.md) | 730 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [GaloisInsertion.ofDual](declarations/galoisinsertion-ofdual.md) | 737 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [OrderIso.toGaloisCoinsertion](declarations/orderiso-togaloiscoinsertion.md) | 743 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [GaloisCoinsertion.monotoneIntro](declarations/galoiscoinsertion-monotoneintro.md) | 752 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [GaloisConnection.toGaloisCoinsertion](declarations/galoisconnection-togaloiscoinsertion.md) | 759 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [GaloisConnection.liftOrderTop](declarations/galoisconnection-liftordertop.md) | 768 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [u_l_eq](declarations/u-l-eq.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [u_l_leftInverse](declarations/u-l-leftinverse.md) | 783 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [u_bot](declarations/u-bot.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [u_surjective](declarations/u-surjective.md) | 792 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [l_injective](declarations/l-injective.md) | 796 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [u_inf_l](declarations/u-inf-l.md) | 800 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [u_iInf_l](declarations/u-iinf-l.md) | 805 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [u_sInf_l_image](declarations/u-sinf-l-image.md) | 810 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `theorem` | [u_sup_l](declarations/u-sup-l.md) | 815 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [u_iSup_l](declarations/u-isup-l.md) | 820 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `theorem` | [u_biSup_l](declarations/u-bisup-l.md) | 825 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [u_sSup_l_image](declarations/u-ssup-l-image.md) | 830 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [u_iSup_of_lu_eq_self](declarations/u-isup-of-lu-eq-self.md) | 835 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [u_biSup_of_lu_eq_self](declarations/u-bisup-of-lu-eq-self.md) | 840 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [l_le_l_iff](declarations/l-le-l-iff.md) | 846 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [strictMono_l](declarations/strictmono-l.md) | 851 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [isGLB_of_l_image](declarations/isglb-of-l-image.md) | 855 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [isLUB_of_l_image](declarations/islub-of-l-image.md) | 860 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [liftSemilatticeInf](declarations/liftsemilatticeinf-source-edition-2.md) | 878 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `def` | [liftSemilatticeSup](declarations/liftsemilatticesup-source-edition-2.md) | 892 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `def` | [liftLattice](declarations/liftlattice-source-edition-2.md) | 909 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `def` | [liftOrderBot](declarations/liftorderbot.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `def` | [liftBoundedOrder](declarations/liftboundedorder-source-edition-2.md) | 923 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `def` | [liftCompleteLattice](declarations/liftcompletelattice.md) | 930 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `def` | [WithBot.giUnbot'Bot](declarations/withbot-giunbot-bot.md) | 942 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f31fbf8397257a61d2ba99703e97961a4b7bca0c749a66744b52a83a6550f0bb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/GaloisConnection/Varianta42c36a082b9cce095be9290cfa26666aa6ec05e85b3f1ffd9e5eb67899f25d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
