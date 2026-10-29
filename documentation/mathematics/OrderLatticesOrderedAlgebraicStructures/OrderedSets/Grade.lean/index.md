# Grade

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**53 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Grade/Variantb07ad76cce249bf9858e1877f82841ac941f03751771cd368c7ce7b3e7b117ec.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b721376242959672085c7c185b4483a0a638b75`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/Grade.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [GradeOrder](declarations/gradeorder.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [GradeMinOrder](declarations/grademinorder.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [GradeMaxOrder](declarations/grademaxorder.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [GradeBoundedOrder](declarations/gradeboundedorder.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [grade](declarations/grade.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [CovBy.grade](declarations/covby-grade.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [grade_strictMono](declarations/grade-strictmono.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [covBy_iff_lt_covBy_grade](declarations/covby-iff-lt-covby-grade.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [IsMin.grade](declarations/ismin-grade.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [isMin_grade_iff](declarations/ismin-grade-iff.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [IsMax.grade](declarations/ismax-grade.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [isMax_grade_iff](declarations/ismax-grade-iff.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [grade_mono](declarations/grade-mono.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [grade_injective](declarations/grade-injective.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [grade_le_grade_iff](declarations/grade-le-grade-iff.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [grade_lt_grade_iff](declarations/grade-lt-grade-iff.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [grade_eq_grade_iff](declarations/grade-eq-grade-iff.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [grade_ne_grade_iff](declarations/grade-ne-grade-iff.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [grade_covBy_grade_iff](declarations/grade-covby-grade-iff.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [grade_bot](declarations/grade-bot.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [grade_top](declarations/grade-top.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [Preorder.toGradeBoundedOrder](declarations/preorder-togradeboundedorder.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [grade_self](declarations/grade-self.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [OrderDual.gradeOrder](declarations/orderdual-gradeorder.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [OrderDual.gradeMinOrder](declarations/orderdual-grademinorder.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [OrderDual.gradeMaxOrder](declarations/orderdual-grademaxorder.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [grade_toDual](declarations/grade-todual.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [grade_ofDual](declarations/grade-ofdual.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `abbrev` | [GradeOrder.liftLeft](declarations/gradeorder-liftleft.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `abbrev` | [GradeMinOrder.liftLeft](declarations/grademinorder-liftleft.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `abbrev` | [GradeMaxOrder.liftLeft](declarations/grademaxorder-liftleft.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `abbrev` | [GradeBoundedOrder.liftLeft](declarations/gradeboundedorder-liftleft.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `abbrev` | [GradeOrder.liftRight](declarations/gradeorder-liftright.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `abbrev` | [GradeMinOrder.liftRight](declarations/grademinorder-liftright.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `abbrev` | [GradeMaxOrder.liftRight](declarations/grademaxorder-liftright.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `abbrev` | [GradeBoundedOrder.liftRight](declarations/gradeboundedorder-liftright.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `abbrev` | [GradeOrder.finToNat](declarations/gradeorder-fintonat.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `abbrev` | [GradeMinOrder.finToNat](declarations/grademinorder-fintonat.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [GradeOrder.natToInt](declarations/gradeorder-nattoint.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [GradeOrder.wellFoundedLT](declarations/gradeorder-wellfoundedlt.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [GradeOrder.wellFoundedGT](declarations/gradeorder-wellfoundedgt.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [coe_wcovBy_coe](declarations/coe-wcovby-coe.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [coe_covBy_coe](declarations/coe-covby-coe.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [isMax_coe](declarations/ismax-coe.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [isMin_coe](declarations/ismin-coe.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [(anonymous)](declarations/instance.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [grade_coe](declarations/grade-coe.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ef7b201613d7c7f7b3527119291ac7e505fdf86aab122cb0b000f211b9666632 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Grade/Variantb07ad76cce249bf9858e1877f82841ac941f03751771cd368c7ce7b3e7b117ec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
