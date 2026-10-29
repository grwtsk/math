# QPFUnivariate Basic Qpf Source

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**57 observed declarations and anonymous commands**, 35 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `065a04c4fa94da2b259b9d65e453a60767f38bd9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/QPFUnivariateBasicQpfSource.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [Qpf](declarations/qpf.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [id_map](declarations/id-map.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [comp_map](declarations/comp-map.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [lawfulFunctor](declarations/lawfulfunctor.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [liftp_iff](declarations/liftp-iff-source-edition-2.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [liftp_iff'](declarations/liftp-iff.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [liftr_iff](declarations/liftr-iff.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [recF](declarations/recf.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [recF_eq](declarations/recf-eq.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [recF_eq'](declarations/recf-eq-source-edition-2.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `inductive` | [Wequiv](declarations/wequiv.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [recF_eq_of_Wequiv](declarations/recf-eq-of-wequiv.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Wequiv.abs'](declarations/wequiv-abs.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Wequiv.refl](declarations/wequiv-refl.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Wequiv.symm](declarations/wequiv-symm.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [Wrepr](declarations/wrepr.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Wrepr_equiv](declarations/wrepr-equiv.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [Wsetoid](declarations/wsetoid.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [Fix](declarations/fix.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [Fix.rec](declarations/fix-rec.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [fixToW](declarations/fixtow.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [Fix.mk](declarations/fix-mk.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [Fix.dest](declarations/fix-dest.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Fix.rec_eq](declarations/fix-rec-eq.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Fix.ind_aux](declarations/fix-ind-aux.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Fix.ind_rec](declarations/fix-ind-rec.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Fix.rec_unique](declarations/fix-rec-unique.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Fix.mk_dest](declarations/fix-mk-dest.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Fix.dest_mk](declarations/fix-dest-mk.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Fix.ind](declarations/fix-ind.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [corecF](declarations/corecf.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [corecF_eq](declarations/corecf-eq.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [IsPrecongr](declarations/isprecongr.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [Mcongr](declarations/mcongr.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [Cofix](declarations/cofix.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [Cofix.corec](declarations/cofix-corec.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [Cofix.dest](declarations/cofix-dest.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Cofix.dest_corec](declarations/cofix-dest-corec.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Cofix.bisim_aux](declarations/cofix-bisim-aux.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Cofix.bisim_rel](declarations/cofix-bisim-rel.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Cofix.bisim](declarations/cofix-bisim-source-edition-2.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Cofix.bisim'](declarations/cofix-bisim.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [comp](declarations/comp.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [quotientQpf](declarations/quotientqpf.md) | 586 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [mem_supp](declarations/mem-supp.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [supp_eq](declarations/supp-eq.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [has_good_supp_iff](declarations/has-good-supp-iff.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [IsUniform](declarations/isuniform.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [LiftpPreservation](declarations/liftppreservation.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [SuppPreservation](declarations/supppreservation.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [supp_eq_of_isUniform](declarations/supp-eq-of-isuniform.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [liftp_iff_of_isUniform](declarations/liftp-iff-of-isuniform.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [supp_map](declarations/supp-map.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [suppPreservation_iff_uniform](declarations/supppreservation-iff-uniform.md) | 701 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [suppPreservation_iff_liftpPreservation](declarations/supppreservation-iff-liftppreservation.md) | 709 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [liftpPreservation_iff_uniform](declarations/liftppreservation-iff-uniform.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0982fb2c647c7ddb804343ba924d6bf330500ae7d52151de545eaa4e307c11d5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8183fc8dc2c9d0be5bf7161c6ee63f6f65178daff4e2377776db03454545ff33.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
