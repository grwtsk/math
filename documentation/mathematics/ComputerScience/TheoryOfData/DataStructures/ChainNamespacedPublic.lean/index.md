# Chain Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**83 observed declarations and anonymous commands**, 80 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chain/Variant1777b9a4e11b60c9cb0d792a449a8d66916a7256bd584cb9f5b070c12335a4f6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c23e7fa7242e8185f792c69469a411c8b0999b1e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/ChainNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [isChain_nil](declarations/ischain-nil.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [isChain_singleton](declarations/ischain-singleton.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [isChain_cons_iff](declarations/ischain-cons-iff.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [IsChain.imp_of_mem_tail_imp](declarations/ischain-imp-of-mem-tail-imp.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [IsChain.imp_of_mem_imp](declarations/ischain-imp-of-mem-imp.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [IsChain.iff](declarations/ischain-iff.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [IsChain.iff_of_mem_imp](declarations/ischain-iff-of-mem-imp.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [IsChain.iff_of_mem_tail_imp](declarations/ischain-iff-of-mem-tail-imp.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [IsChain.iff_mem](declarations/ischain-iff-mem.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [IsChain.iff_mem_mem_tail](declarations/ischain-iff-mem-mem-tail.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [isChain_pair](declarations/ischain-pair.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [isChain_isInfix](declarations/ischain-isinfix.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [isChain_split](declarations/ischain-split.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [isChain_cons_split](declarations/ischain-cons-split.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [isChain_append_cons_cons](declarations/ischain-append-cons-cons.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [isChain_cons_append_cons_cons](declarations/ischain-cons-append-cons-cons.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [isChain_iff_forall_rel_of_append_cons_cons](declarations/ischain-iff-forall-rel-of-append-cons-cons.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isChain_iff_forall₂](declarations/ischain-iff-forall.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [isChain_cons_iff_forall₂](declarations/ischain-cons-iff-forall.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [isChain_cons_append_singleton_iff_forall₂](declarations/ischain-cons-append-singleton-iff-forall.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [isChain_map](declarations/ischain-map.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [isChain_of_isChain_map](declarations/ischain-of-ischain-map.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [isChain_map_of_isChain](declarations/ischain-map-of-ischain.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [isChain_cons_map](declarations/ischain-cons-map.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [isChain_cons_of_isChain_cons_map](declarations/ischain-cons-of-ischain-cons-map.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [isChain_cons_map_of_isChain_cons](declarations/ischain-cons-map-of-ischain-cons.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [isChain_pmap](declarations/ischain-pmap.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [isChain_pmap_of_isChain](declarations/ischain-pmap-of-ischain.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [isChain_of_isChain_pmap](declarations/ischain-of-ischain-pmap.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [isChain_cons_pmap](declarations/ischain-cons-pmap.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [isChain_cons_pmap_of_isChain_cons](declarations/ischain-cons-pmap-of-ischain-cons.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [isChain_cons_of_isChain_cons_pmap](declarations/ischain-cons-of-ischain-cons-pmap.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [IsChain.sublist](declarations/ischain-sublist.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [IsChain.rel_cons](declarations/ischain-rel-cons.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [IsChain.tail](declarations/ischain-tail.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [IsChain.rel_head?](declarations/ischain-rel-head.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [IsChain.rel_getLast_dropLast](declarations/ischain-rel-getlast-droplast.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [IsChain.cons](declarations/ischain-cons.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [IsChain.cons_of_ne_nil](declarations/ischain-cons-of-ne-nil.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [isChain_cons](declarations/ischain-cons-source-edition-2.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [isChain_append](declarations/ischain-append.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [IsChain.append](declarations/ischain-append-source-edition-2.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [IsChain.left_of_append](declarations/ischain-left-of-append.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [IsChain.right_of_append](declarations/ischain-right-of-append.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [IsChain.rel_getLast_head_of_append](declarations/ischain-rel-getlast-head-of-append.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [IsChain.infix](declarations/ischain-infix.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [IsChain.suffix](declarations/ischain-suffix.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [IsChain.prefix](declarations/ischain-prefix.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [IsChain.drop](declarations/ischain-drop.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [IsChain.dropLast](declarations/ischain-droplast.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [IsChain.take](declarations/ischain-take.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [IsChain.imp_head](declarations/ischain-imp-head.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [exists_not_getElem_of_not_isChain](declarations/exists-not-getelem-of-not-ischain.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [isChain_reverse](declarations/ischain-reverse.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [IsChain.append_overlap](declarations/ischain-append-overlap.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [isChain_flatten](declarations/ischain-flatten.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [isChain_attachWith](declarations/ischain-attachwith.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [isChain_attach](declarations/ischain-attach.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [exists_isChain_cons_of_relationReflTransGen](declarations/exists-ischain-cons-of-relationrefltransgen.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [exists_isChain_ne_nil_of_relationReflTransGen](declarations/exists-ischain-ne-nil-of-relationrefltransgen.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [IsChain.induction](declarations/ischain-induction.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [IsChain.cons_induction](declarations/ischain-cons-induction.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [IsChain.concat_induction](declarations/ischain-concat-induction.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [IsChain.concat_induction_head](declarations/ischain-concat-induction-head.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [IsChain.backwards_induction](declarations/ischain-backwards-induction.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [IsChain.backwards_concat_induction](declarations/ischain-backwards-concat-induction.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [IsChain.backwards_cons_induction](declarations/ischain-backwards-cons-induction.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [IsChain.backwards_cons_induction_head](declarations/ischain-backwards-cons-induction-head.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [relationReflTransGen_of_exists_isChain](declarations/relationrefltransgen-of-exists-ischain.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [relationReflTransGen_of_exists_isChain_cons](declarations/relationrefltransgen-of-exists-ischain-cons.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [IsChain.cons_of_le](declarations/ischain-cons-of-le.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [IsChain.isChain_cons](declarations/ischain-ischain-cons.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `lemma` | [IsChain.iterate_eq_of_apply_eq](declarations/ischain-iterate-eq-of-apply-eq.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [isChain_replicate_of_rel](declarations/ischain-replicate-of-rel.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [isChain_eq_iff_eq_replicate](declarations/ischain-eq-iff-eq-replicate.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [isChain_cons_eq_iff_eq_replicate](declarations/ischain-cons-eq-iff-eq-replicate.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [WellFoundedRelation.asymmetricₙ](declarations/wellfoundedrelation-asymmetric.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [WellFounded.asymmetricₙ](declarations/wellfounded-asymmetric.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [WellFounded.listPairwise_reverse_compl](declarations/wellfounded-listpairwise-reverse-compl.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `abbrev` | [List.chains](declarations/list-chains.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `abbrev` | [List.lex_chains](declarations/list-lex-chains.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [Acc.list_chain'](declarations/acc-list-chain.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `instance` | [WellFounded.list_chain'](declarations/wellfounded-list-chain.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=07304872c019bb8e163cbec6e578c1ec2e3f1614a49e897641f6fcf7101841f5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Chain/Variant1777b9a4e11b60c9cb0d792a449a8d66916a7256bd584cb9f5b070c12335a4f6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
