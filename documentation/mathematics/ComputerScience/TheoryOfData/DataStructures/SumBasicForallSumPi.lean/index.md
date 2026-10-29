# Sum Basic Forall Sum Pi

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**113 observed declarations and anonymous commands**, 99 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd09c2f9f2aa8561ba05a9a0b9d6afa936379d064bbdc886c710b2c904f51baf1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `84a7e0092c8d8d2057c0d7181e052692ffde1542`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/SumBasicForallSumPi.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [«forall»](declarations/forall.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [«exists»](declarations/exists.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [forall_sum_pi](declarations/forall-sum-pi.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [exists_sum_pi](declarations/exists-sum-pi.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [inl_injective](declarations/inl-injective.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [inr_injective](declarations/inr-injective.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [getLeft?](declarations/getleft.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [getRight?](declarations/getright.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [isLeft](declarations/isleft.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [isRight](declarations/isright.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [getLeft?_inl](declarations/getleft-inl.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [getLeft?_inr](declarations/getleft-inr.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [getRight?_inl](declarations/getright-inl.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [getRight?_inr](declarations/getright-inr.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [isLeft_inl](declarations/isleft-inl.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [isLeft_inr](declarations/isleft-inr.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [isRight_inl](declarations/isright-inl.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isRight_inr](declarations/isright-inr.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [getLeft?_eq_none_iff](declarations/getleft-eq-none-iff.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [getRight?_eq_none_iff](declarations/getright-eq-none-iff.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [getLeft?_eq_some_iff](declarations/getleft-eq-some-iff.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [getRight?_eq_some_iff](declarations/getright-eq-some-iff.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [not_isLeft](declarations/not-isleft.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [isLeft_eq_false](declarations/isleft-eq-false.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Not_isLeft](declarations/not-isleft-source-edition-2.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [not_isRight](declarations/not-isright.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [isRight_eq_false](declarations/isright-eq-false.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Not_isRight](declarations/not-isright-source-edition-2.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [isLeft_iff](declarations/isleft-iff.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [isRight_iff](declarations/isright-iff.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [inl.inj_iff](declarations/inl-inj-iff.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [inr.inj_iff](declarations/inr-inj-iff.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [inl_ne_inr](declarations/inl-ne-inr.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [inr_ne_inl](declarations/inr-ne-inl.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [elim](declarations/elim.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [elim_inl](declarations/elim-inl.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [elim_inr](declarations/elim-inr.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [elim_comp_inl](declarations/elim-comp-inl.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [elim_comp_inr](declarations/elim-comp-inr.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [elim_inl_inr](declarations/elim-inl-inr.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [comp_elim](declarations/comp-elim.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [elim_comp_inl_inr](declarations/elim-comp-inl-inr.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [map](declarations/map.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [map_inl](declarations/map-inl.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [map_inr](declarations/map-inr.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [map_map](declarations/map-map.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [map_comp_map](declarations/map-comp-map.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [map_id_id](declarations/map-id-id.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [elim_map](declarations/elim-map.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [elim_comp_map](declarations/elim-comp-map.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [isLeft_map](declarations/isleft-map.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [isRight_map](declarations/isright-map.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [getLeft?_map](declarations/getleft-map.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [getRight?_map](declarations/getright-map.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [update_elim_inl](declarations/update-elim-inl.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [update_elim_inr](declarations/update-elim-inr.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [update_inl_comp_inl](declarations/update-inl-comp-inl.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [update_inl_apply_inl](declarations/update-inl-apply-inl.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [update_inl_comp_inr](declarations/update-inl-comp-inr.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [update_inl_apply_inr](declarations/update-inl-apply-inr.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [update_inr_comp_inl](declarations/update-inr-comp-inl.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [update_inr_apply_inl](declarations/update-inr-apply-inl.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [update_inr_comp_inr](declarations/update-inr-comp-inr.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [update_inr_apply_inr](declarations/update-inr-apply-inr.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [swap](declarations/swap.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [swap_inl](declarations/swap-inl.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [swap_inr](declarations/swap-inr.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [swap_swap](declarations/swap-swap.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [swap_swap_eq](declarations/swap-swap-eq.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [swap_leftInverse](declarations/swap-leftinverse.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [swap_rightInverse](declarations/swap-rightinverse.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [isLeft_swap](declarations/isleft-swap.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [isRight_swap](declarations/isright-swap.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [getLeft?_swap](declarations/getleft-swap.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [getRight?_swap](declarations/getright-swap.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `inductive` | [LiftRel](declarations/liftrel.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [liftRel_inl_inl](declarations/liftrel-inl-inl.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [not_liftRel_inl_inr](declarations/not-liftrel-inl-inr.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [not_liftRel_inr_inl](declarations/not-liftrel-inr-inl.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [liftRel_inr_inr](declarations/liftrel-inr-inr.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [(anonymous)](declarations/instance.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [LiftRel.mono](declarations/liftrel-mono.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [LiftRel.mono_left](declarations/liftrel-mono-left.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [LiftRel.mono_right](declarations/liftrel-mono-right.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [LiftRel.swap](declarations/liftrel-swap.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [liftRel_swap_iff](declarations/liftrel-swap-iff.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `inductive` | [Lex](declarations/lex.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [lex_inl_inl](declarations/lex-inl-inl.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [lex_inr_inr](declarations/lex-inr-inr.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [lex_inr_inl](declarations/lex-inr-inl.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `instance` | [instDecidableRelSumLex](declarations/instdecidablerelsumlex.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [LiftRel.lex](declarations/liftrel-lex.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [liftRel_subrelation_lex](declarations/liftrel-subrelation-lex.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `theorem` | [Lex.mono](declarations/lex-mono.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [Lex.mono_left](declarations/lex-mono-left.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [Lex.mono_right](declarations/lex-mono-right.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [lex_acc_inl](declarations/lex-acc-inl.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [lex_acc_inr](declarations/lex-acc-inr.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [lex_wf](declarations/lex-wf.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [Injective.sum_elim](declarations/injective-sum-elim.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `theorem` | [Injective.sum_map](declarations/injective-sum-map.md) | 576 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [Surjective.sum_map](declarations/surjective-sum-map.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `theorem` | [Bijective.sum_map](declarations/bijective-sum-map.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `theorem` | [map_injective](declarations/map-injective.md) | 604 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `theorem` | [map_surjective](declarations/map-surjective.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `theorem` | [map_bijective](declarations/map-bijective.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [elim_const_const](declarations/elim-const-const.md) | 633 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `theorem` | [elim_lam_const_lam_const](declarations/elim-lam-const-lam-const.md) | 640 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `theorem` | [elim_update_left](declarations/elim-update-left.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `theorem` | [elim_update_right](declarations/elim-update-right.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `def` | [in₀](declarations/in.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `def` | [in₁](declarations/in-source-edition-2.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `def` | [in₂](declarations/in-source-edition-3.md) | 691 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=84efbad1762dbe8d4b5b37c08b5e6993edaa9ccb459e0c6ecbd7409af2b590c1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd09c2f9f2aa8561ba05a9a0b9d6afa936379d064bbdc886c710b2c904f51baf1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
