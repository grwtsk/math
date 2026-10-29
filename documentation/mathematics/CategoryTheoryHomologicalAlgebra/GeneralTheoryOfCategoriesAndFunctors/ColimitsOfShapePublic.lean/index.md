# Colimits Of Shape Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**54 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOfShape/Variant8d75438f83b2d337b5c29e077bfa52d70a2ddc99f126d813a288a74eea510333.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dfd48ec496a635b2d1b1bf25dbcfd0dd358aa84f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ColimitsOfShapePublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [strictColimitsOfShape](declarations/strictcolimitsofshape.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [strictColimitsOfShape_monotone](declarations/strictcolimitsofshape-monotone.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [strictColimitsOfShape_bot](declarations/strictcolimitsofshape-bot.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [ColimitOfShape](declarations/colimitofshape.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [colimit](declarations/colimit.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [ofIso](declarations/ofiso.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [ofLE](declarations/ofle.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [reindex](declarations/reindex.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [toCostructuredArrow](declarations/tocostructuredarrow.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [colimitsOfShape](declarations/colimitsofshape.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [ColimitOfShape.colimitsOfShape](declarations/colimitofshape-colimitsofshape.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [strictColimitsOfShape_le_colimitsOfShape](declarations/strictcolimitsofshape-le-colimitsofshape.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [colimitsOfShape_bot](declarations/colimitsofshape-bot.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [isoClosure_strictColimitsOfShape](declarations/isoclosure-strictcolimitsofshape.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [colimitsOfShape_monotone](declarations/colimitsofshape-monotone.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [colimitsOfShape_isoClosure](declarations/colimitsofshape-isoclosure.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `class` | [IsClosedUnderColimitsOfShape](declarations/isclosedundercolimitsofshape.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [IsClosedUnderColimitsOfShape.mk'](declarations/isclosedundercolimitsofshape-mk.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [ColimitOfShape.prop](declarations/colimitofshape-prop.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [prop_of_isColimit](declarations/prop-of-iscolimit.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [prop_colimit](declarations/prop-colimit.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [colimitsOfShape_le_of_final](declarations/colimitsofshape-le-of-final.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [colimitsOfShape_congr](declarations/colimitsofshape-congr.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [isClosedUnderColimitsOfShape_iff_of_equivalence](declarations/isclosedundercolimitsofshape-iff-of-equivalence.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [IsClosedUnderColimitsOfShape.of_equivalence](declarations/isclosedundercolimitsofshape-of-equivalence.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [IsClosedUnderColimitsOfShape.inverseImage](declarations/isclosedundercolimitsofshape-inverseimage.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [isClosedUnderColimitsOfShape_inverseImage_iff](declarations/isclosedundercolimitsofshape-inverseimage-iff.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [colimitsOfShape_eq_unop_limitsOfShape](declarations/colimitsofshape-eq-unop-limitsofshape.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [limitsOfShape_eq_unop_colimitsOfShape](declarations/limitsofshape-eq-unop-colimitsofshape.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [limitsOfShape_op](declarations/limitsofshape-op.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [colimitsOfShape_op](declarations/colimitsofshape-op.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [isClosedUnderColimitsOfShape_iff_op](declarations/isclosedundercolimitsofshape-iff-op.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [isClosedUnderLimitsOfShape_iff_op](declarations/isclosedunderlimitsofshape-iff-op.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [isClosedUnderColimitsOfShape_op_iff_op](declarations/isclosedundercolimitsofshape-op-iff-op.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [isClosedUnderLimitsOfShape_op_iff_op](declarations/isclosedunderlimitsofshape-op-iff-op.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [isClosedUnderColimitsOfShape_iff_unop](declarations/isclosedundercolimitsofshape-iff-unop.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [isClosedUnderLimitsOfShape_iff_unop](declarations/isclosedunderlimitsofshape-iff-unop.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [isClosedUnderColimitsOfShape_op_iff_unop](declarations/isclosedundercolimitsofshape-op-iff-unop.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [isClosedUnderLimitsOfShape_op_iff_unop](declarations/isclosedunderlimitsofshape-op-iff-unop.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [limitsOfShape_isEmpty_iff](declarations/limitsofshape-isempty-iff.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [colimitsOfShape_isEmpty_iff](declarations/colimitsofshape-isempty-iff.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=13bed52c87cc718497c6e125dfb1f7a0a11fcae0e37d839deadadfc40fb09fb1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitsOfShape/Variant8d75438f83b2d337b5c29e077bfa52d70a2ddc99f126d813a288a74eea510333.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
