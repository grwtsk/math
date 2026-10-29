# Lemmas Lemmas Namespaced Forall Sum

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**60 observed declarations and anonymous commands**, 60 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant52c887e19168565ceeb840e0c34294519cae79493a1156ec0e52275c25f40530.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `550eb8793bc8129b79fb574819419d6f4059ac8f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasNamespacedForallSum.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [«forall»](declarations/forall.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [«exists»](declarations/exists.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [forall_sum](declarations/forall-sum.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [inl_getLeft](declarations/inl-getleft.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [inr_getRight](declarations/inr-getright.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [getLeft?_eq_none_iff](declarations/getleft-eq-none-iff.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [getRight?_eq_none_iff](declarations/getright-eq-none-iff.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [eq_left_getLeft_of_isLeft](declarations/eq-left-getleft-of-isleft.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [getLeft_eq_iff](declarations/getleft-eq-iff.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [eq_right_getRight_of_isRight](declarations/eq-right-getright-of-isright.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [getRight_eq_iff](declarations/getright-eq-iff.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [getLeft?_eq_some_iff](declarations/getleft-eq-some-iff.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [getRight?_eq_some_iff](declarations/getright-eq-some-iff.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [bnot_isLeft](declarations/bnot-isleft.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [isLeft_eq_false](declarations/isleft-eq-false.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [not_isLeft](declarations/not-isleft.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [bnot_isRight](declarations/bnot-isright.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isRight_eq_false](declarations/isright-eq-false.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [not_isRight](declarations/not-isright.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [isLeft_iff](declarations/isleft-iff.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [isRight_iff](declarations/isright-iff.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [inl.inj_iff](declarations/inl-inj-iff.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [inr.inj_iff](declarations/inr-inj-iff.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [inl_ne_inr](declarations/inl-ne-inr.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [inr_ne_inl](declarations/inr-ne-inl.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [elim_comp_inl](declarations/elim-comp-inl.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [elim_comp_inr](declarations/elim-comp-inr.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [elim_inl_inr](declarations/elim-inl-inr.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [comp_elim](declarations/comp-elim.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [elim_comp_inl_inr](declarations/elim-comp-inl-inr.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [map_map](declarations/map-map.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [map_comp_map](declarations/map-comp-map.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [map_id_id](declarations/map-id-id.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [elim_map](declarations/elim-map.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [elim_comp_map](declarations/elim-comp-map.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [isLeft_map](declarations/isleft-map.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [isRight_map](declarations/isright-map.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [getLeft?_map](declarations/getleft-map.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [getRight?_map](declarations/getright-map.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [swap_swap](declarations/swap-swap.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [swap_swap_eq](declarations/swap-swap-eq.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [isLeft_swap](declarations/isleft-swap.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [isRight_swap](declarations/isright-swap.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [getLeft?_swap](declarations/getleft-swap.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [getRight?_swap](declarations/getright-swap.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [LiftRel.mono](declarations/liftrel-mono.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [LiftRel.mono_left](declarations/liftrel-mono-left.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [LiftRel.mono_right](declarations/liftrel-mono-right.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [LiftRel.swap](declarations/liftrel-swap.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [liftRel_swap_iff](declarations/liftrel-swap-iff.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [LiftRel.lex](declarations/liftrel-lex.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [liftRel_subrelation_lex](declarations/liftrel-subrelation-lex.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [Lex.mono](declarations/lex-mono.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [Lex.mono_left](declarations/lex-mono-left.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [Lex.mono_right](declarations/lex-mono-right.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [lex_acc_inl](declarations/lex-acc-inl.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [lex_acc_inr](declarations/lex-acc-inr.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [lex_wf](declarations/lex-wf.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [elim_const_const](declarations/elim-const-const.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [elim_lam_const_lam_const](declarations/elim-lam-const-lam-const.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=149c47a7f75c9685d5736b65bf4965dfdd60e6404c5a47c318ecc72250b69056 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant52c887e19168565ceeb840e0c34294519cae79493a1156ec0e52275c25f40530.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
