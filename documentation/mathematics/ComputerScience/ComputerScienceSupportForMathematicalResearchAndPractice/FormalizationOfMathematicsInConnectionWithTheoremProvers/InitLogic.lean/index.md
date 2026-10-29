# Init Logic

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**98 observed declarations and anonymous commands**, 65 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Logic/Variantbe59a3a0047f0b5ea0b01bd0afa5f14f535a774c8e462c1bf045202443fcc608.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be070965eb3e04ecdffb915b2ac4a05be89a0199`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitLogic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Implies](declarations/implies.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [Implies.trans](declarations/implies-trans.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [NonContradictory](declarations/noncontradictory.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [trans_rel_left](declarations/trans-rel-left.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [trans_rel_right](declarations/trans-rel-right.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [not_of_eq_false](declarations/not-of-eq-false.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [cast_proof_irrel](declarations/cast-proof-irrel.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Ne.def](declarations/ne-def.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [heq_of_eq_rec_left](declarations/heq-of-eq-rec-left.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [heq_of_eq_rec_right](declarations/heq-of-eq-rec-right.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [of_heq_true](declarations/of-heq-true.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [eq_rec_compose](declarations/eq-rec-compose.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [Xor'](declarations/xor.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [and_comm'](declarations/and-comm.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [and_assoc'](declarations/and-assoc.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [and_true_iff](declarations/and-true-iff.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [true_and_iff](declarations/true-and-iff.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [and_false_iff](declarations/and-false-iff.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [false_and_iff](declarations/false-and-iff.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [and_self_iff](declarations/and-self-iff.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [or_comm'](declarations/or-comm.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [or_assoc'](declarations/or-assoc.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [true_or_iff](declarations/true-or-iff.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [or_true_iff](declarations/or-true-iff.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [false_or_iff](declarations/false-or-iff.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [or_false_iff](declarations/or-false-iff.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [or_self_iff](declarations/or-self-iff.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [not_or_of_not](declarations/not-or-of-not.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [iff_true_iff](declarations/iff-true-iff.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [true_iff_iff](declarations/true-iff-iff.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [iff_false_iff](declarations/iff-false-iff.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [false_iff_iff](declarations/false-iff-iff.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [iff_self_iff](declarations/iff-self-iff.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [ExistsUnique](declarations/existsunique.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `macro` | [(anonymous)](declarations/macro.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [unexpandExistsUnique](declarations/unexpandexistsunique.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [ExistsUnique.intro](declarations/existsunique-intro.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [ExistsUnique.elim](declarations/existsunique-elim.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [exists_unique_of_exists_of_unique](declarations/exists-unique-of-exists-of-unique.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [ExistsUnique.exists](declarations/existsunique-exists.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [ExistsUnique.unique](declarations/existsunique-unique.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [exists_unique_congr](declarations/exists-unique-congr.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [decide_True'](declarations/decide-true.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [decide_False'](declarations/decide-false.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [recOn_true](declarations/recon-true.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [recOn_false](declarations/recon-false.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [not_or_iff_and_not](declarations/not-or-iff-and-not.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [IsDecEq](declarations/isdeceq.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [IsDecRefl](declarations/isdecrefl.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [decidableEq_of_bool_pred](declarations/decidableeq-of-bool-pred.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [decidableEq_inl_refl](declarations/decidableeq-inl-refl.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [decidableEq_inr_neg](declarations/decidableeq-inr-neg.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [rec_subsingleton](declarations/rec-subsingleton.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [if_t_t](declarations/if-t-t.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [imp_of_if_pos](declarations/imp-of-if-pos.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [imp_of_if_neg](declarations/imp-of-if-neg.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [if_ctx_congr](declarations/if-ctx-congr.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [if_congr](declarations/if-congr.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [if_ctx_congr_prop](declarations/if-ctx-congr-prop.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [if_congr_prop](declarations/if-congr-prop.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [if_ctx_simp_congr_prop](declarations/if-ctx-simp-congr-prop.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [if_simp_congr_prop](declarations/if-simp-congr-prop.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [dif_ctx_congr](declarations/dif-ctx-congr.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [dif_ctx_simp_congr](declarations/dif-ctx-simp-congr.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [AsTrue](declarations/astrue.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [AsFalse](declarations/asfalse.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [AsTrue.get](declarations/astrue-get.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [let_value_eq](declarations/let-value-eq.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [let_value_heq](declarations/let-value-heq.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [let_body_eq](declarations/let-body-eq.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [let_eq](declarations/let-eq.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [Reflexive](declarations/reflexive.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [Symmetric](declarations/symmetric.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [Transitive](declarations/transitive.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `lemma` | [Equivalence.reflexive](declarations/equivalence-reflexive.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `lemma` | [Equivalence.symmetric](declarations/equivalence-symmetric.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `lemma` | [Equivalence.transitive](declarations/equivalence-transitive.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [Total](declarations/total.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [Irreflexive](declarations/irreflexive.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [AntiSymmetric](declarations/antisymmetric.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [EmptyRelation](declarations/emptyrelation.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [InvImage.trans](declarations/invimage-trans.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [InvImage.irreflexive](declarations/invimage-irreflexive.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [Commutative](declarations/commutative.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [Associative](declarations/associative.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [LeftIdentity](declarations/leftidentity.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [RightIdentity](declarations/rightidentity.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [RightInverse](declarations/rightinverse.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [LeftCancelative](declarations/leftcancelative.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [RightCancelative](declarations/rightcancelative.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [LeftDistributive](declarations/leftdistributive.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [RightDistributive](declarations/rightdistributive.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [RightCommutative](declarations/rightcommutative.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [LeftCommutative](declarations/leftcommutative.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [left_comm](declarations/left-comm.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [right_comm](declarations/right-comm.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db19945a8c2c975d1e928769049a96aa467aca568b85a1259df3bcb009c2f77f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Logic/Variantbe59a3a0047f0b5ea0b01bd0afa5f14f535a774c8e462c1bf045202443fcc608.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
