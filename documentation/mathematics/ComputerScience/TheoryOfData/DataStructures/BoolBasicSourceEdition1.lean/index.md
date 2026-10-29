# Bool Basic Source Edition1

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**91 observed declarations and anonymous commands**, 84 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf65cd11b75ed18b4aa1ac8201c7fded2bb06c46857b21f6eb6ef5aba4a81400c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bdc292cd01bd84b66251c98cfc5806d119f6a7a0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/BoolBasicSourceEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [decide_True](declarations/decide-true.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [decide_False](declarations/decide-false.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [decide_coe](declarations/decide-coe.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [coe_decide](declarations/coe-decide.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [of_decide_iff](declarations/of-decide-iff.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [true_eq_decide_iff](declarations/true-eq-decide-iff.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [false_eq_decide_iff](declarations/false-eq-decide-iff.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [decide_not](declarations/decide-not.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [decide_and](declarations/decide-and.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [decide_or](declarations/decide-or.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [not_false'](declarations/not-false.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [eq_iff_eq_true_iff](declarations/eq-iff-eq-true-iff.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [beq_eq_decide_eq](declarations/beq-eq-decide-eq.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [beq_comm](declarations/beq-comm.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [default_bool](declarations/default-bool.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [dichotomy](declarations/dichotomy.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [forall_bool](declarations/forall-bool.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [exists_bool](declarations/exists-bool.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [decidableForallBool](declarations/decidableforallbool.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [decidableExistsBool](declarations/decidableexistsbool.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [cond_eq_ite](declarations/cond-eq-ite.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [cond_decide](declarations/cond-decide.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [cond_not](declarations/cond-not.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [not_ne_id](declarations/not-ne-id.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [coe_bool_iff](declarations/coe-bool-iff.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [eq_true_of_ne_false](declarations/eq-true-of-ne-false.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [eq_false_of_ne_true](declarations/eq-false-of-ne-true.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [or_comm](declarations/or-comm.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [or_left_comm](declarations/or-left-comm.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [or_inl](declarations/or-inl.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [or_inr](declarations/or-inr.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [and_comm](declarations/and-comm.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [and_left_comm](declarations/and-left-comm.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [and_elim_left](declarations/and-elim-left.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [and_intro](declarations/and-intro.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [and_elim_right](declarations/and-elim-right.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [and_or_distrib_left](declarations/and-or-distrib-left.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [and_or_distrib_right](declarations/and-or-distrib-right.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [or_and_distrib_left](declarations/or-and-distrib-left.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [or_and_distrib_right](declarations/or-and-distrib-right.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [eq_not_iff](declarations/eq-not-iff.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [not_eq_iff](declarations/not-eq-iff.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [not_eq_not](declarations/not-eq-not.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [not_not_eq](declarations/not-not-eq.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [ne_not](declarations/ne-not.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [not_ne](declarations/not-ne.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [not_ne_self](declarations/not-ne-self.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [self_ne_not](declarations/self-ne-not.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [eq_or_eq_not](declarations/eq-or-eq-not.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [not_iff_not](declarations/not-iff-not.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [eq_true_of_not_eq_false'](declarations/eq-true-of-not-eq-false.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [eq_false_of_not_eq_true'](declarations/eq-false-of-not-eq-true.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [and_not_self](declarations/and-not-self.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [not_and_self](declarations/not-and-self.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [or_not_self](declarations/or-not-self.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [not_or_self](declarations/not-or-self.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [xor_comm](declarations/xor-comm.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [xor_assoc](declarations/xor-assoc.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [xor_left_comm](declarations/xor-left-comm.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [xor_not_left](declarations/xor-not-left.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [xor_not_right](declarations/xor-not-right.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [xor_not_not](declarations/xor-not-not.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [xor_false_left](declarations/xor-false-left.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [xor_false_right](declarations/xor-false-right.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [and_xor_distrib_left](declarations/and-xor-distrib-left.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [and_xor_distrib_right](declarations/and-xor-distrib-right.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [xor_iff_ne](declarations/xor-iff-ne.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [not_and](declarations/not-and.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [not_or](declarations/not-or.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [not_inj](declarations/not-inj.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [linearOrder](declarations/linearorder.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [false_le](declarations/false-le.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [le_true](declarations/le-true.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [lt_iff](declarations/lt-iff.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [false_lt_true](declarations/false-lt-true.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [le_iff_imp](declarations/le-iff-imp.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [and_le_left](declarations/and-le-left.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [and_le_right](declarations/and-le-right.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [le_and](declarations/le-and.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [left_le_or](declarations/left-le-or.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [right_le_or](declarations/right-le-or.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [or_le](declarations/or-le.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [toNat](declarations/tonat.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [ofNat](declarations/ofnat.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [ofNat_le_ofNat](declarations/ofnat-le-ofnat.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [toNat_le_toNat](declarations/tonat-le-tonat.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [ofNat_toNat](declarations/ofnat-tonat.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [injective_iff](declarations/injective-iff.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [apply_apply_apply](declarations/apply-apply-apply.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [xor3](declarations/xor3.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [carry](declarations/carry.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ab3241a079a70eaed8f708b3ba076ab7c9dfdf810322df0fa219c7949ccf7ef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantf65cd11b75ed18b4aa1ac8201c7fded2bb06c46857b21f6eb6ef5aba4a81400c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
