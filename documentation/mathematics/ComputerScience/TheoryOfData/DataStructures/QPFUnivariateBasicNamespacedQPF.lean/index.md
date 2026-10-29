# QPFUnivariate Basic Namespaced QPF

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**57 observed declarations and anonymous commands**, 35 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f820dbadfdc2c9c6e78b829d9a6f870b52e3e51`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicNamespacedQPF.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [QPF](declarations/qpf.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [id_map](declarations/id-map.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [comp_map](declarations/comp-map.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [lawfulFunctor](declarations/lawfulfunctor.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [liftp_iff](declarations/liftp-iff.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [liftp_iff'](declarations/liftp-iff-source-edition-2.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [liftr_iff](declarations/liftr-iff.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [recF](declarations/recf.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [recF_eq](declarations/recf-eq.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [recF_eq'](declarations/recf-eq-source-edition-2.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `inductive` | [Wequiv](declarations/wequiv.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [recF_eq_of_Wequiv](declarations/recf-eq-of-wequiv.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Wequiv.abs'](declarations/wequiv-abs.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Wequiv.refl](declarations/wequiv-refl.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Wequiv.symm](declarations/wequiv-symm.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [Wrepr](declarations/wrepr.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Wrepr_equiv](declarations/wrepr-equiv.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [Wsetoid](declarations/wsetoid.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [Fix](declarations/fix.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [Fix.rec](declarations/fix-rec.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [fixToW](declarations/fixtow.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [Fix.mk](declarations/fix-mk.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [Fix.dest](declarations/fix-dest.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Fix.rec_eq](declarations/fix-rec-eq.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Fix.ind_aux](declarations/fix-ind-aux.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Fix.ind_rec](declarations/fix-ind-rec.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Fix.rec_unique](declarations/fix-rec-unique.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Fix.mk_dest](declarations/fix-mk-dest.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Fix.dest_mk](declarations/fix-dest-mk.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Fix.ind](declarations/fix-ind.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [corecF](declarations/corecf.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [corecF_eq](declarations/corecf-eq.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [IsPrecongr](declarations/isprecongr.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [Mcongr](declarations/mcongr.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [Cofix](declarations/cofix.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [Cofix.corec](declarations/cofix-corec.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [Cofix.dest](declarations/cofix-dest.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Cofix.dest_corec](declarations/cofix-dest-corec.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Cofix.bisim_aux](declarations/cofix-bisim-aux.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Cofix.bisim_rel](declarations/cofix-bisim-rel.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Cofix.bisim](declarations/cofix-bisim.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Cofix.bisim'](declarations/cofix-bisim-source-edition-2.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [comp](declarations/comp.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [quotientQPF](declarations/quotientqpf.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [mem_supp](declarations/mem-supp.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [supp_eq](declarations/supp-eq.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [has_good_supp_iff](declarations/has-good-supp-iff.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [IsUniform](declarations/isuniform.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [LiftpPreservation](declarations/liftppreservation.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [SuppPreservation](declarations/supppreservation.md) | 593 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [supp_eq_of_isUniform](declarations/supp-eq-of-isuniform.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [liftp_iff_of_isUniform](declarations/liftp-iff-of-isuniform.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [supp_map](declarations/supp-map.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [suppPreservation_iff_uniform](declarations/supppreservation-iff-uniform.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [suppPreservation_iff_liftpPreservation](declarations/supppreservation-iff-liftppreservation.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [liftpPreservation_iff_uniform](declarations/liftppreservation-iff-uniform.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d1bb36adb951b797feb34713f2eee9c9bae71fac9a66939da1a4012dca07c5b2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4276976c38e643472c5a91fd055cfb1221b600994cd9504322e868370d0c0551.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
