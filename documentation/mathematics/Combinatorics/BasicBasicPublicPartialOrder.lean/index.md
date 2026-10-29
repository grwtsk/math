# Basic Basic Public Partial Order

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**152 observed declarations and anonymous commands**, 81 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant83bec6efd56c3bd0b433948b62416e94a36b8b47cea99ffad685384dc9258622.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f7c06d86dd7e22926b1e6c87191b90941fe5424`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/BasicBasicPublicPartialOrder.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [PartialOrder](declarations/partialorder.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [PartialOrder.rel_of_eq](declarations/partialorder-rel-of-eq.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [chain](declarations/chain.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [is_sup](declarations/is-sup.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [is_sup_unique](declarations/is-sup-unique.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `class` | [CCPO](declarations/ccpo.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [CCPO.csup](declarations/ccpo-csup.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [CCPO.csup_spec](declarations/ccpo-csup-spec.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [csup_le](declarations/csup-le.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [le_csup](declarations/le-csup.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [empty_chain](declarations/empty-chain.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [chain_empty](declarations/chain-empty.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [bot](declarations/bot.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [bot_le](declarations/bot-le.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `class` | [CompleteLattice](declarations/completelattice.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [CompleteLattice.sup](declarations/completelattice-sup.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [CompleteLattice.sup_spec](declarations/completelattice-sup-spec.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [sup_le](declarations/sup-le.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [le_sup](declarations/le-sup.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [inf](declarations/inf.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [inf_spec](declarations/inf-spec.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [le_inf](declarations/le-inf.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [inf_le](declarations/inf-le.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [monotone](declarations/monotone.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [monotone_const](declarations/monotone-const.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [monotone_id](declarations/monotone-id.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [monotone_compose](declarations/monotone-compose.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [admissible](declarations/admissible.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [admissible_const_true](declarations/admissible-const-true.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [admissible_and](declarations/admissible-and.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [chain_conj](declarations/chain-conj.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [csup_conj](declarations/csup-conj.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [admissible_or](declarations/admissible-or.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [admissible_pi](declarations/admissible-pi.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [lfp](declarations/lfp.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [lfp_monotone](declarations/lfp-monotone.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [lfp_prefixed](declarations/lfp-prefixed.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [lfp_postfixed](declarations/lfp-postfixed.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [lfp_fix](declarations/lfp-fix.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [lfp_monotone_fix](declarations/lfp-monotone-fix.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [lfp_le_of_le](declarations/lfp-le-of-le.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [lfp_le_of_le_monotone](declarations/lfp-le-of-le-monotone.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `inductive` | [iterates](declarations/iterates.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [chain_iterates](declarations/chain-iterates.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [rel_f_of_iterates](declarations/rel-f-of-iterates.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [fix](declarations/fix.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [fix_eq](declarations/fix-eq.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [fix_induct](declarations/fix-induct.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [instOrderPi](declarations/instorderpi.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [monotone_of_monotone_apply](declarations/monotone-of-monotone-apply.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [monotone_apply](declarations/monotone-apply.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [chain_apply](declarations/chain-apply.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [fun_csup](declarations/fun-csup.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [fun_csup_is_sup](declarations/fun-csup-is-sup.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [instCCPOPi](declarations/instccpopi.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [fun_csup_eq](declarations/fun-csup-eq.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [fun_sup](declarations/fun-sup.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [fun_sup_is_sup](declarations/fun-sup-is-sup.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [instCompleteLatticePi](declarations/instcompletelatticepi.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [fun_sup_eq](declarations/fun-sup-eq.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [admissible_apply](declarations/admissible-apply.md) | 573 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [admissible_pi_apply](declarations/admissible-pi-apply.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [monotone_ite](declarations/monotone-ite.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [monotone_dite](declarations/monotone-dite.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [(anonymous)](declarations/instance-source-edition-22.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [PProd.monotone_mk](declarations/pprod-monotone-mk.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [PProd.monotone_fst](declarations/pprod-monotone-fst.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [PProd.monotone_snd](declarations/pprod-monotone-snd.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [PProd.chain.fst](declarations/pprod-chain-fst.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [PProd.chain.snd](declarations/pprod-chain-snd.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [PProd.fst](declarations/pprod-fst.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [PProd.snd](declarations/pprod-snd.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [PProd.chain.chain_fst](declarations/pprod-chain-chain-fst.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [PProd.chain.chain_snd](declarations/pprod-chain-chain-snd.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [prod_csup](declarations/prod-csup.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [prod_csup_is_sup](declarations/prod-csup-is-sup.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `instance` | [instCCPOPProd](declarations/instccpopprod.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [prod_csup_eq](declarations/prod-csup-eq.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [prod_sup](declarations/prod-sup.md) | 703 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [prod_sup_is_sup](declarations/prod-sup-is-sup.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [instCompleteLatticePProd](declarations/instcompletelatticepprod.md) | 739 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [admissible_pprod_fst](declarations/admissible-pprod-fst.md) | 742 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [admissible_pprod_snd](declarations/admissible-pprod-snd.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [FlatOrder](declarations/flatorder.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [FlatOrder.mk](declarations/flatorder-mk.md) | 772 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [FlatOrder.inner](declarations/flatorder-inner.md) | 774 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [FlatOrder.mk_inner](declarations/flatorder-mk-inner.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [FlatOrder.inner_mk](declarations/flatorder-inner-mk.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [FlatOrder.mk_inj](declarations/flatorder-mk-inj.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `inductive` | [FlatOrder.rel](declarations/flatorder-rel.md) | 796 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `instance` | [FlatOrder.instOrder](declarations/flatorder-instorder.md) | 800 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [Classical.some_spec₂](declarations/classical-some-spec.md) | 809 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [flat_csup](declarations/flat-csup.md) | 812 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [flat_csup_is_sup](declarations/flat-csup-is-sup.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `instance` | [FlatOrder.instCCPO](declarations/flatorder-instccpo.md) | 851 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [flat_csup_eq](declarations/flat-csup-eq.md) | 854 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [admissible_flatOrder](declarations/admissible-flatorder.md) | 860 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `class` | [MonoBind](declarations/monobind.md) | 879 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [monotone_bind](declarations/monotone-bind.md) | 884 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 897 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 898 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 899 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [Option.admissible_eq_some](declarations/option-admissible-eq-some.md) | 909 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `instance` | [(anonymous)](declarations/instance-source-edition-17.md) | 914 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 915 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `instance` | [(anonymous)](declarations/instance.md) | 916 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [monotone_exceptTRun](declarations/monotone-excepttrun.md) | 928 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 934 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 935 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 936 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [monotone_optionTRun](declarations/monotone-optiontrun.md) | 948 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `instance` | [(anonymous)](declarations/instance-source-edition-23.md) | 954 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `instance` | [(anonymous)](declarations/instance-source-edition-19.md) | 955 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 956 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [monotone_readerTRun](declarations/monotone-readertrun.md) | 968 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `instance` | [(anonymous)](declarations/instance-source-edition-24.md) | 974 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `instance` | [(anonymous)](declarations/instance-source-edition-20.md) | 975 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 976 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [monotone_stateRefT'Run](declarations/monotone-statereft-run.md) | 980 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `instance` | [(anonymous)](declarations/instance-source-edition-18.md) | 991 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 992 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `instance` | [(anonymous)](declarations/instance-source-edition-16.md) | 993 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [monotone_stateTRun](declarations/monotone-statetrun.md) | 1005 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [EST.bot](declarations/est-bot.md) | 1011 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `instance` | [(anonymous)](declarations/instance-source-edition-25.md) | 1019 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 1026 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 1044 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `instance` | [(anonymous)](declarations/instance-source-edition-15.md) | 1047 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 1050 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `instance` | [(anonymous)](declarations/instance-source-edition-21.md) | 1053 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `def` | [ImplicationOrder](declarations/implicationorder.md) | 1060 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `instance` | [ImplicationOrder.instOrder](declarations/implicationorder-instorder.md) | 1062 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `instance` | [ImplicationOrder.instCompleteLattice](declarations/implicationorder-instcompletelattice.md) | 1069 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [implication_order_monotone_exists](declarations/implication-order-monotone-exists.md) | 1088 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [implication_order_monotone_forall](declarations/implication-order-monotone-forall.md) | 1094 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [implication_order_monotone_and](declarations/implication-order-monotone-and.md) | 1100 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [implication_order_monotone_or](declarations/implication-order-monotone-or.md) | 1107 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `def` | [ReverseImplicationOrder](declarations/reverseimplicationorder.md) | 1121 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `instance` | [ReverseImplicationOrder.instOrder](declarations/reverseimplicationorder-instorder.md) | 1124 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `instance` | [ReverseImplicationOrder.instCompleteLattice](declarations/reverseimplicationorder-instcompletelattice.md) | 1131 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [coind_monotone_exists](declarations/coind-monotone-exists.md) | 1148 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [coind_monotone_forall](declarations/coind-monotone-forall.md) | 1154 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [coind_monotone_and](declarations/coind-monotone-and.md) | 1160 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [coind_monotone_or](declarations/coind-monotone-or.md) | 1167 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [coind_not](declarations/coind-not.md) | 1179 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [ind_not](declarations/ind-not.md) | 1186 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [ind_impl](declarations/ind-impl.md) | 1193 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [coind_impl](declarations/coind-impl.md) | 1205 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `def` | [findF](declarations/findf.md) | 1220 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `def` | [find](declarations/find.md) | 1226 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [find_eq](declarations/find-eq.md) | 1235 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [find_spec](declarations/find-spec.md) | 1237 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0404c6bae763457aa5b683ad927d6818ea400d46f5d63c389aea13a839794cc9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant83bec6efd56c3bd0b433948b62416e94a36b8b47cea99ffad685384dc9258622.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
