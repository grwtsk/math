# ACNamespaced Public Var

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**134 observed declarations and anonymous commands**, 86 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantba97c1b64ba8a8898b4921cadb27e59d5e95aa10128970a316d81ec07c0d5a58.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `89ada7971cade077f59d5bb40b210897a5cad7e0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ACNamespacedPublicVar.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Var](declarations/var.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Context](declarations/context.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [Expr](declarations/expr.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [Var.denote](declarations/var-denote.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [Expr.denote](declarations/expr-denote.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [Expr.denote_var](declarations/expr-denote-var.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Expr.denote_op](declarations/expr-denote-op.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `inductive` | [Seq](declarations/seq.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Seq.beq'](declarations/seq-beq.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [Seq.beq'_eq](declarations/seq-beq-eq.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `abbrev` | [Seq.denote](declarations/seq-denote.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [Seq.denote_var](declarations/seq-denote-var.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Seq.denote_op](declarations/seq-denote-op.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [Expr.toSeq'](declarations/expr-toseq.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Expr.toSeq'_k](declarations/expr-toseq-k-source-edition-2.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Expr.toSeq'_k_eq_toSeq'](declarations/expr-toseq-k-eq-toseq-source-edition-2.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [Expr.toSeq](declarations/expr-toseq-source-edition-2.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [Expr.toSeq_k](declarations/expr-toseq-k.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Expr.toSeq_k_eq_toSeq](declarations/expr-toseq-k-eq-toseq.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Expr.denote_toSeq'](declarations/expr-denote-toseq-source-edition-2.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Expr.denote_toSeq](declarations/expr-denote-toseq.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [Seq.erase0](declarations/seq-erase0.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [Seq.erase0_k](declarations/seq-erase0-k.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Seq.erase0_k_var](declarations/seq-erase0-k-var.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Seq.erase0_k_cons](declarations/seq-erase0-k-cons.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Seq.erase0_k_eq_erase0](declarations/seq-erase0-k-eq-erase0.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Seq.denote_erase0](declarations/seq-denote-erase0.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [Seq.insert](declarations/seq-insert.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [Seq.insert_k](declarations/seq-insert-k.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Seq.insert_k_eq_insert](declarations/seq-insert-k-eq-insert.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Seq.denote_insert](declarations/seq-denote-insert.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [Seq.sort'](declarations/seq-sort-source-edition-2.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [Seq.sort'_k](declarations/seq-sort-k.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [Seq.sort'_k_eq_sort'](declarations/seq-sort-k-eq-sort-source-edition-2.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Seq.denote_sort'](declarations/seq-denote-sort-source-edition-2.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [Seq.sort](declarations/seq-sort.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [Seq.sort_k](declarations/seq-sort-k-source-edition-2.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Seq.sort_k_eq_sort](declarations/seq-sort-k-eq-sort.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Seq.denote_sort](declarations/seq-denote-sort.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [Seq.eraseDup](declarations/seq-erasedup.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [Seq.eraseDup_k](declarations/seq-erasedup-k.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [Seq.eraseDup_k_cons](declarations/seq-erasedup-k-cons.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [Seq.eraseDup_k_eq_eraseDup](declarations/seq-erasedup-k-eq-erasedup.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [Seq.denote_eraseDup](declarations/seq-denote-erasedup.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [Seq.concat](declarations/seq-concat.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [Seq.concat_k](declarations/seq-concat-k.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [Seq.concat_k_eq_concat](declarations/seq-concat-k-eq-concat.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [Seq.denote_concat](declarations/seq-denote-concat.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [eq_orient](declarations/eq-orient.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [eq_simp_lhs_exact](declarations/eq-simp-lhs-exact.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [eq_simp_rhs_exact](declarations/eq-simp-rhs-exact.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [diseq_simp_lhs_exact](declarations/diseq-simp-lhs-exact.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [diseq_simp_rhs_exact](declarations/diseq-simp-rhs-exact.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [simp_prefix_cert](declarations/simp-prefix-cert.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [eq_simp_lhs_prefix](declarations/eq-simp-lhs-prefix.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [eq_simp_rhs_prefix](declarations/eq-simp-rhs-prefix.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [diseq_simp_lhs_prefix](declarations/diseq-simp-lhs-prefix.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [diseq_simp_rhs_prefix](declarations/diseq-simp-rhs-prefix.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [simp_suffix_cert](declarations/simp-suffix-cert.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [eq_simp_lhs_suffix](declarations/eq-simp-lhs-suffix.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [eq_simp_rhs_suffix](declarations/eq-simp-rhs-suffix.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [diseq_simp_lhs_suffix](declarations/diseq-simp-lhs-suffix.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [diseq_simp_rhs_suffix](declarations/diseq-simp-rhs-suffix.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [simp_middle_cert](declarations/simp-middle-cert.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [eq_simp_lhs_middle](declarations/eq-simp-lhs-middle.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [eq_simp_rhs_middle](declarations/eq-simp-rhs-middle.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [diseq_simp_lhs_middle](declarations/diseq-simp-lhs-middle.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [diseq_simp_rhs_middle](declarations/diseq-simp-rhs-middle.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [superpose_cert](declarations/superpose-cert.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [superpose](declarations/superpose.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [Seq.unionFuel](declarations/seq-unionfuel.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [Seq.unionFuel_k](declarations/seq-unionfuel-k.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [Seq.unionFuel_k_eq_unionFuel](declarations/seq-unionfuel-k-eq-unionfuel.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [Seq.denote_unionFuel](declarations/seq-denote-unionfuel.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [hugeFuel](declarations/hugefuel.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [Seq.union](declarations/seq-union.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [Seq.union_k](declarations/seq-union-k.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [Seq.union_k_eq_union](declarations/seq-union-k-eq-union.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [Seq.denote_union](declarations/seq-denote-union.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [simp_ac_cert](declarations/simp-ac-cert.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [simp_ac](declarations/simp-ac.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [eq_simp_lhs_ac](declarations/eq-simp-lhs-ac.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [eq_simp_rhs_ac](declarations/eq-simp-rhs-ac.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [diseq_simp_lhs_ac](declarations/diseq-simp-lhs-ac.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [diseq_simp_rhs_ac](declarations/diseq-simp-rhs-ac.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [superpose_ac_cert](declarations/superpose-ac-cert.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [superpose_ac](declarations/superpose-ac.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [Seq.contains_k](declarations/seq-contains-k.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [Seq.contains_k_var](declarations/seq-contains-k-var.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [Seq.contains_k_cons](declarations/seq-contains-k-cons.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [Seq.denote_insert_of_contains](declarations/seq-denote-insert-of-contains.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [superpose_ac_idempotent_cert](declarations/superpose-ac-idempotent-cert.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [superpose_ac_idempotent](declarations/superpose-ac-idempotent.md) | 548 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [Seq.startsWithVar_k](declarations/seq-startswithvar-k.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [Seq.startsWithVar_k_var](declarations/seq-startswithvar-k-var.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [Seq.startsWithVar_k_cons](declarations/seq-startswithvar-k-cons.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [Seq.denote_concat_of_startsWithVar](declarations/seq-denote-concat-of-startswithvar.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [superpose_head_idempotent_cert](declarations/superpose-head-idempotent-cert.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [superpose_head_idempotent](declarations/superpose-head-idempotent.md) | 578 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [Seq.endsWithVar_k](declarations/seq-endswithvar-k.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [Seq.endsWithVar_k_var](declarations/seq-endswithvar-k-var.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [Seq.endsWithVar_k_cons](declarations/seq-endswithvar-k-cons.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [Seq.denote_concat_of_endsWithVar](declarations/seq-denote-concat-of-endswithvar.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [superpose_tail_idempotent_cert](declarations/superpose-tail-idempotent-cert.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [superpose_tail_idempotent](declarations/superpose-tail-idempotent.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [eq_norm_a_cert](declarations/eq-norm-a-cert.md) | 616 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [eq_norm_a](declarations/eq-norm-a.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `def` | [eq_norm_ac_cert](declarations/eq-norm-ac-cert.md) | 623 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [eq_norm_ac](declarations/eq-norm-ac.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `def` | [eq_norm_ai_cert](declarations/eq-norm-ai-cert.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `theorem` | [eq_norm_ai](declarations/eq-norm-ai.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `def` | [eq_norm_aci_cert](declarations/eq-norm-aci-cert.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `theorem` | [eq_norm_aci](declarations/eq-norm-aci.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `def` | [eq_erase_dup_cert](declarations/eq-erase-dup-cert.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `theorem` | [eq_erase_dup](declarations/eq-erase-dup.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `def` | [eq_erase0_cert](declarations/eq-erase0-cert.md) | 651 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `theorem` | [eq_erase0](declarations/eq-erase0.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `theorem` | [diseq_norm_a](declarations/diseq-norm-a.md) | 658 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `theorem` | [diseq_norm_ac](declarations/diseq-norm-ac.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `theorem` | [diseq_norm_ai](declarations/diseq-norm-ai.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `theorem` | [diseq_norm_aci](declarations/diseq-norm-aci.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `theorem` | [diseq_erase_dup](declarations/diseq-erase-dup.md) | 674 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `theorem` | [diseq_erase0](declarations/diseq-erase0.md) | 678 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `def` | [diseq_unsat_cert](declarations/diseq-unsat-cert.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `theorem` | [diseq_unsat](declarations/diseq-unsat.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `theorem` | [norm_a](declarations/norm-a.md) | 688 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `theorem` | [norm_ac](declarations/norm-ac.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `theorem` | [norm_ai](declarations/norm-ai.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `theorem` | [norm_aci](declarations/norm-aci.md) | 700 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [eq_erase0_rhs](declarations/eq-erase0-rhs.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `theorem` | [eq_erase_dup_rhs](declarations/eq-erase-dup-rhs.md) | 708 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `theorem` | [eq_expr_seq_seq](declarations/eq-expr-seq-seq.md) | 712 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [imp_eq](declarations/imp-eq.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `theorem` | [refl](declarations/refl.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=77b5583a92670cdf45ff527faa594d7433620a3eb782a84345ebd28334bf8f7f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variantba97c1b64ba8a8898b4921cadb27e59d5e95aa10128970a316d81ec07c0d5a58.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
