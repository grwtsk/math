# Circuit

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**91 observed declarations and anonymous commands**, 87 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Circuit/Variant230747e69923404de76ce2fdf216cd8ae37a3b4ff4afd28598de465f5e81fbef.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c2fd3193f52863b78b94e2e5dba8c47beb4f325b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/Circuit.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsCircuit](declarations/iscircuit.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [isCircuit_def](declarations/iscircuit-def.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [IsCircuit.dep](declarations/iscircuit-dep.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [IsCircuit.not_indep](declarations/iscircuit-not-indep.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [IsCircuit.minimal](declarations/iscircuit-minimal.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [IsCircuit.subset_ground](declarations/iscircuit-subset-ground.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [IsCircuit.nonempty](declarations/iscircuit-nonempty.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [empty_not_isCircuit](declarations/empty-not-iscircuit.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [isCircuit_iff](declarations/iscircuit-iff.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [IsCircuit.ssubset_indep](declarations/iscircuit-ssubset-indep.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [IsCircuit.minimal_not_indep](declarations/iscircuit-minimal-not-indep.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [isCircuit_iff_minimal_not_indep](declarations/iscircuit-iff-minimal-not-indep.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [IsCircuit.diff_singleton_indep](declarations/iscircuit-diff-singleton-indep.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [isCircuit_iff_forall_ssubset](declarations/iscircuit-iff-forall-ssubset.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [isCircuit_antichain](declarations/iscircuit-antichain.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [IsCircuit.eq_of_not_indep_subset](declarations/iscircuit-eq-of-not-indep-subset.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [IsCircuit.eq_of_dep_subset](declarations/iscircuit-eq-of-dep-subset.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [IsCircuit.not_ssubset](declarations/iscircuit-not-ssubset.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [IsCircuit.eq_of_subset_isCircuit](declarations/iscircuit-eq-of-subset-iscircuit.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [IsCircuit.eq_of_superset_isCircuit](declarations/iscircuit-eq-of-superset-iscircuit.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [isCircuit_iff_dep_forall_diff_singleton_indep](declarations/iscircuit-iff-dep-forall-diff-singleton-indep.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [Indep.insert_isCircuit_of_forall](declarations/indep-insert-iscircuit-of-forall.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [Indep.insert_isCircuit_of_forall_of_nontrivial](declarations/indep-insert-iscircuit-of-forall-of-nontrivial.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [IsCircuit.diff_singleton_isBasis](declarations/iscircuit-diff-singleton-isbasis.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [IsCircuit.isBasis_iff_eq_diff_singleton](declarations/iscircuit-isbasis-iff-eq-diff-singleton.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [IsCircuit.isBasis_iff_insert_eq](declarations/iscircuit-isbasis-iff-insert-eq.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [IsCircuit.isCircuit_restrict_of_subset](declarations/iscircuit-iscircuit-restrict-of-subset.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [restrict_isCircuit_iff](declarations/restrict-iscircuit-iff.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [fundCircuit](declarations/fundcircuit.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [fundCircuit_eq_sInter](declarations/fundcircuit-eq-sinter.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [fundCircuit_subset_insert](declarations/fundcircuit-subset-insert.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [fundCircuit_subset_ground](declarations/fundcircuit-subset-ground.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [mem_fundCircuit](declarations/mem-fundcircuit.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [fundCircuit_diff_eq_inter](declarations/fundcircuit-diff-eq-inter.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [fundCircuit_eq_of_mem](declarations/fundcircuit-eq-of-mem.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [fundCircuit_eq_of_notMem_ground](declarations/fundcircuit-eq-of-notmem-ground.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [Indep.fundCircuit_isCircuit](declarations/indep-fundcircuit-iscircuit.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [Indep.mem_fundCircuit_iff](declarations/indep-mem-fundcircuit-iff.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [IsBase.fundCircuit_isCircuit](declarations/isbase-fundcircuit-iscircuit.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [IsCircuit.eq_fundCircuit_of_subset](declarations/iscircuit-eq-fundcircuit-of-subset.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [fundCircuit_restrict](declarations/fundcircuit-restrict.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [fundCircuit_restrict_univ](declarations/fundcircuit-restrict-univ.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [Dep.exists_isCircuit_subset](declarations/dep-exists-iscircuit-subset.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [dep_iff_superset_isCircuit](declarations/dep-iff-superset-iscircuit-source-edition-2.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [dep_iff_superset_isCircuit'](declarations/dep-iff-superset-iscircuit.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [indep_iff_forall_subset_not_isCircuit'](declarations/indep-iff-forall-subset-not-iscircuit-source-edition-2.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [indep_iff_forall_subset_not_isCircuit](declarations/indep-iff-forall-subset-not-iscircuit.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [IsCircuit.closure_diff_singleton_eq](declarations/iscircuit-closure-diff-singleton-eq.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [IsCircuit.subset_closure_diff_singleton](declarations/iscircuit-subset-closure-diff-singleton.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [IsCircuit.mem_closure_diff_singleton_of_mem](declarations/iscircuit-mem-closure-diff-singleton-of-mem.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [exists_isCircuit_of_mem_closure](declarations/exists-iscircuit-of-mem-closure.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [mem_closure_iff_exists_isCircuit](declarations/mem-closure-iff-exists-iscircuit.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [ext_isCircuit](declarations/ext-iscircuit.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [ext_isCircuit_not_indep](declarations/ext-iscircuit-not-indep.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [ext_iff_isCircuit](declarations/ext-iff-iscircuit.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [IsCircuit.strong_multi_elimination_insert](declarations/iscircuit-strong-multi-elimination-insert.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [IsCircuit.strong_multi_elimination](declarations/iscircuit-strong-multi-elimination.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [IsCircuit.strong_multi_elimination_set](declarations/iscircuit-strong-multi-elimination-set.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [IsCircuit.strong_elimination](declarations/iscircuit-strong-elimination.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [IsCircuit.elimination](declarations/iscircuit-elimination.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [IsCircuit.finite](declarations/iscircuit-finite.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [finitary_iff_forall_isCircuit_finite](declarations/finitary-iff-forall-iscircuit-finite.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [exists_mem_finite_closure_of_mem_closure](declarations/exists-mem-finite-closure-of-mem-closure.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [exists_subset_finite_closure_of_subset_closure](declarations/exists-subset-finite-closure-of-subset-closure.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `abbrev` | [IsCocircuit](declarations/iscocircuit.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [isCocircuit_def](declarations/iscocircuit-def.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `lemma` | [IsCocircuit.isCircuit](declarations/iscocircuit-iscircuit.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [IsCircuit.isCocircuit](declarations/iscircuit-iscocircuit.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [IsCocircuit.subset_ground](declarations/iscocircuit-subset-ground.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [dual_isCocircuit_iff](declarations/dual-iscocircuit-iff.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [coindep_iff_forall_subset_not_isCocircuit](declarations/coindep-iff-forall-subset-not-iscocircuit.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [isCocircuit_iff_minimal](declarations/iscocircuit-iff-minimal.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `lemma` | [isCocircuit_iff_minimal_compl_nonspanning](declarations/iscocircuit-iff-minimal-compl-nonspanning.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `lemma` | [IsBase.compl_closure_diff_singleton_isCocircuit](declarations/isbase-compl-closure-diff-singleton-iscocircuit.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `lemma` | [isCocircuit_iff_minimal_compl_nonspanning'](declarations/iscocircuit-iff-minimal-compl-nonspanning-source-edition-2.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `lemma` | [IsCircuit.inter_isCocircuit_ne_singleton](declarations/iscircuit-inter-iscocircuit-ne-singleton.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `lemma` | [IsCircuit.isCocircuit_inter_nontrivial](declarations/iscircuit-iscocircuit-inter-nontrivial.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `lemma` | [IsCircuit.isCocircuit_disjoint_or_nontrivial_inter](declarations/iscircuit-iscocircuit-disjoint-or-nontrivial-inter.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `lemma` | [dual_rankPos_iff_exists_isCircuit](declarations/dual-rankpos-iff-exists-iscircuit.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `lemma` | [IsCircuit.dual_rankPos](declarations/iscircuit-dual-rankpos.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `lemma` | [exists_isCircuit](declarations/exists-iscircuit.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `lemma` | [rankPos_iff_exists_isCocircuit](declarations/rankpos-iff-exists-iscocircuit.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [fundCocircuit](declarations/fundcocircuit.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `lemma` | [fundCocircuit_isCocircuit](declarations/fundcocircuit-iscocircuit.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `lemma` | [mem_fundCocircuit](declarations/mem-fundcocircuit.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `lemma` | [fundCocircuit_subset_insert_compl](declarations/fundcocircuit-subset-insert-compl.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `lemma` | [fundCocircuit_inter_eq](declarations/fundcocircuit-inter-eq.md) | 675 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `lemma` | [fundCocircuit_eq_of_notMem_ground](declarations/fundcocircuit-eq-of-notmem-ground.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `lemma` | [fundCocircuit_eq_of_notMem](declarations/fundcocircuit-eq-of-notmem.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `lemma` | [Indep.exists_isCocircuit_inter_eq_mem](declarations/indep-exists-iscocircuit-inter-eq-mem.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `lemma` | [IsBase.mem_fundCocircuit_iff_mem_fundCircuit](declarations/isbase-mem-fundcocircuit-iff-mem-fundcircuit.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=88714415c45f8f06d4a301fb11b71e4b3904dd81dd0cee2f3eaf58ae76152d39 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Circuit/Variant230747e69923404de76ce2fdf216cd8ae37a3b4ff4afd28598de465f5e81fbef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
