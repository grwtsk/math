# Basic Basic Namespaced Public Partial Order

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**152 observed declarations and anonymous commands**, 81 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantbe6957430864815ac8ad3fd4c4ac809fcf56223958a4268af81525d3b61938e7.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a51ada2ab1a368f9427eff16bcb59d49d69a6584`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/BasicBasicNamespacedPublicPartialOrder.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [PartialOrder](declarations/partialorder.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [PartialOrder.rel_of_eq](declarations/partialorder-rel-of-eq.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [chain](declarations/chain.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [is_sup](declarations/is-sup.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [is_sup_unique](declarations/is-sup-unique.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `class` | [CCPO](declarations/ccpo.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [CCPO.csup](declarations/ccpo-csup.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [CCPO.csup_spec](declarations/ccpo-csup-spec.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [csup_le](declarations/csup-le.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [le_csup](declarations/le-csup.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [empty_chain](declarations/empty-chain.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [chain_empty](declarations/chain-empty.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [bot](declarations/bot.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [bot_le](declarations/bot-le.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `class` | [CompleteLattice](declarations/completelattice.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [CompleteLattice.sup](declarations/completelattice-sup.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [CompleteLattice.sup_spec](declarations/completelattice-sup-spec.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [sup_le](declarations/sup-le.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [le_sup](declarations/le-sup.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [inf](declarations/inf.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [inf_spec](declarations/inf-spec.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [le_inf](declarations/le-inf.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [inf_le](declarations/inf-le.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [monotone](declarations/monotone.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [monotone_const](declarations/monotone-const.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [monotone_id](declarations/monotone-id.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [monotone_compose](declarations/monotone-compose.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [admissible](declarations/admissible.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [admissible_const_true](declarations/admissible-const-true.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [admissible_and](declarations/admissible-and.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [chain_conj](declarations/chain-conj.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [csup_conj](declarations/csup-conj.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [admissible_or](declarations/admissible-or.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [admissible_pi](declarations/admissible-pi.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [lfp](declarations/lfp.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [lfp_monotone](declarations/lfp-monotone.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [lfp_prefixed](declarations/lfp-prefixed.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [lfp_postfixed](declarations/lfp-postfixed.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [lfp_fix](declarations/lfp-fix.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [lfp_monotone_fix](declarations/lfp-monotone-fix.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [lfp_le_of_le](declarations/lfp-le-of-le.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [lfp_le_of_le_monotone](declarations/lfp-le-of-le-monotone.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `inductive` | [iterates](declarations/iterates.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [chain_iterates](declarations/chain-iterates.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [rel_f_of_iterates](declarations/rel-f-of-iterates.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [fix](declarations/fix.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [fix_eq](declarations/fix-eq.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [fix_induct](declarations/fix-induct.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [instOrderPi](declarations/instorderpi.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [monotone_of_monotone_apply](declarations/monotone-of-monotone-apply.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [monotone_apply](declarations/monotone-apply.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [chain_apply](declarations/chain-apply.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [fun_csup](declarations/fun-csup.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [fun_csup_is_sup](declarations/fun-csup-is-sup.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [instCCPOPi](declarations/instccpopi.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [fun_csup_eq](declarations/fun-csup-eq.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [fun_sup](declarations/fun-sup.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [fun_sup_is_sup](declarations/fun-sup-is-sup.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [instCompleteLatticePi](declarations/instcompletelatticepi.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [fun_sup_eq](declarations/fun-sup-eq.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [admissible_apply](declarations/admissible-apply.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [admissible_pi_apply](declarations/admissible-pi-apply.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [monotone_ite](declarations/monotone-ite.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [monotone_dite](declarations/monotone-dite.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [PProd.monotone_mk](declarations/pprod-monotone-mk.md) | 641 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [PProd.monotone_fst](declarations/pprod-monotone-fst.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [PProd.monotone_snd](declarations/pprod-monotone-snd.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [PProd.chain.fst](declarations/pprod-chain-fst.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [PProd.chain.snd](declarations/pprod-chain-snd.md) | 657 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [PProd.fst](declarations/pprod-fst.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [PProd.snd](declarations/pprod-snd.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [PProd.chain.chain_fst](declarations/pprod-chain-chain-fst.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [PProd.chain.chain_snd](declarations/pprod-chain-chain-snd.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [prod_csup](declarations/prod-csup.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [prod_csup_is_sup](declarations/prod-csup-is-sup.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `instance` | [instCCPOPProd](declarations/instccpopprod.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [prod_csup_eq](declarations/prod-csup-eq.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [prod_sup](declarations/prod-sup.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [prod_sup_is_sup](declarations/prod-sup-is-sup.md) | 714 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [instCompleteLatticePProd](declarations/instcompletelatticepprod.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [admissible_pprod_fst](declarations/admissible-pprod-fst.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [admissible_pprod_snd](declarations/admissible-pprod-snd.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [FlatOrder](declarations/flatorder.md) | 778 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [FlatOrder.mk](declarations/flatorder-mk.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [FlatOrder.inner](declarations/flatorder-inner.md) | 782 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [FlatOrder.mk_inner](declarations/flatorder-mk-inner.md) | 784 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [FlatOrder.inner_mk](declarations/flatorder-inner-mk.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [FlatOrder.mk_inj](declarations/flatorder-mk-inj.md) | 793 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `inductive` | [FlatOrder.rel](declarations/flatorder-rel.md) | 804 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `instance` | [FlatOrder.instOrder](declarations/flatorder-instorder.md) | 808 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [Classical.some_spec₂](declarations/classical-some-spec.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [flat_csup](declarations/flat-csup.md) | 820 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [flat_csup_is_sup](declarations/flat-csup-is-sup.md) | 825 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `instance` | [FlatOrder.instCCPO](declarations/flatorder-instccpo.md) | 859 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [flat_csup_eq](declarations/flat-csup-eq.md) | 862 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [admissible_flatOrder](declarations/admissible-flatorder.md) | 868 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `class` | [MonoBind](declarations/monobind.md) | 887 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [monotone_bind](declarations/monotone-bind.md) | 892 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 905 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `instance` | [(anonymous)](declarations/instance-source-edition-23.md) | 906 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 907 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [Option.admissible_eq_some](declarations/option-admissible-eq-some.md) | 917 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 922 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `instance` | [(anonymous)](declarations/instance-source-edition-21.md) | 923 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `instance` | [(anonymous)](declarations/instance-source-edition-20.md) | 924 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [monotone_exceptTRun](declarations/monotone-excepttrun.md) | 936 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 942 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 943 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 944 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [monotone_optionTRun](declarations/monotone-optiontrun.md) | 956 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 962 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 963 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `instance` | [(anonymous)](declarations/instance-source-edition-17.md) | 964 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [monotone_readerTRun](declarations/monotone-readertrun.md) | 976 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `instance` | [(anonymous)](declarations/instance-source-edition-18.md) | 982 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `instance` | [(anonymous)](declarations/instance-source-edition-16.md) | 983 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `instance` | [(anonymous)](declarations/instance-source-edition-19.md) | 984 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [monotone_stateRefT'Run](declarations/monotone-statereft-run.md) | 988 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `instance` | [(anonymous)](declarations/instance-source-edition-24.md) | 999 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `instance` | [(anonymous)](declarations/instance-source-edition-15.md) | 1000 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `instance` | [(anonymous)](declarations/instance.md) | 1001 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [monotone_stateTRun](declarations/monotone-statetrun.md) | 1013 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [EST.bot](declarations/est-bot.md) | 1019 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 1027 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `instance` | [(anonymous)](declarations/instance-source-edition-25.md) | 1034 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 1052 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `instance` | [(anonymous)](declarations/instance-source-edition-22.md) | 1055 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 1058 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 1061 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `def` | [ImplicationOrder](declarations/implicationorder.md) | 1068 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `instance` | [ImplicationOrder.instOrder](declarations/implicationorder-instorder.md) | 1070 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `instance` | [ImplicationOrder.instCompleteLattice](declarations/implicationorder-instcompletelattice.md) | 1077 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [implication_order_monotone_exists](declarations/implication-order-monotone-exists.md) | 1096 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `theorem` | [implication_order_monotone_forall](declarations/implication-order-monotone-forall.md) | 1102 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `theorem` | [implication_order_monotone_and](declarations/implication-order-monotone-and.md) | 1108 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `theorem` | [implication_order_monotone_or](declarations/implication-order-monotone-or.md) | 1115 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `def` | [ReverseImplicationOrder](declarations/reverseimplicationorder.md) | 1129 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `instance` | [ReverseImplicationOrder.instOrder](declarations/reverseimplicationorder-instorder.md) | 1132 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `instance` | [ReverseImplicationOrder.instCompleteLattice](declarations/reverseimplicationorder-instcompletelattice.md) | 1139 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `theorem` | [coind_monotone_exists](declarations/coind-monotone-exists.md) | 1156 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [coind_monotone_forall](declarations/coind-monotone-forall.md) | 1162 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `theorem` | [coind_monotone_and](declarations/coind-monotone-and.md) | 1168 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `theorem` | [coind_monotone_or](declarations/coind-monotone-or.md) | 1175 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [coind_not](declarations/coind-not.md) | 1187 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `theorem` | [ind_not](declarations/ind-not.md) | 1194 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `theorem` | [ind_impl](declarations/ind-impl.md) | 1201 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `theorem` | [coind_impl](declarations/coind-impl.md) | 1213 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `def` | [findF](declarations/findf.md) | 1228 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `def` | [find](declarations/find.md) | 1234 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `theorem` | [find_eq](declarations/find-eq.md) | 1243 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [find_spec](declarations/find-spec.md) | 1245 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9a7ffb4885f86117a5c926f9477a7293e25b71cd61207dfbacd6995ab5be112f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantbe6957430864815ac8ad3fd4c4ac809fcf56223958a4268af81525d3b61938e7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
