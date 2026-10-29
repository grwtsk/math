# Is Alg Closed Algebraic Closure Namespaced Monic Irreducible

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**51 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc7b96bb8d7b6be77ae4e9e5d9d82af70e1e6736`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureNamespacedMonicIrreducible.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [MonicIrreducible](declarations/monicirreducible.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [evalXSelf](declarations/evalxself.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [spanEval](declarations/spaneval.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [toSplittingField](declarations/tosplittingfield.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [toSplittingField_evalXSelf](declarations/tosplittingfield-evalxself.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [spanEval_ne_top](declarations/spaneval-ne-top.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [maxIdeal](declarations/maxideal.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [maxIdeal.isMaximal](declarations/maxideal-ismaximal.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [le_maxIdeal](declarations/le-maxideal.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [AdjoinMonic](declarations/adjoinmonic.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [AdjoinMonic.field](declarations/adjoinmonic-field.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [AdjoinMonic.inhabited](declarations/adjoinmonic-inhabited.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [toAdjoinMonic](declarations/toadjoinmonic.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [AdjoinMonic.algebra](declarations/adjoinmonic-algebra.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [AdjoinMonic.algebraMap](declarations/adjoinmonic-algebramap.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [AdjoinMonic.isIntegral](declarations/adjoinmonic-isintegral.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [AdjoinMonic.exists_root](declarations/adjoinmonic-exists-root.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [stepAux](declarations/stepaux.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [Step](declarations/step.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Step.zero](declarations/step-zero.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [Step.field](declarations/step-field.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Step.succ](declarations/step-succ.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [Step.inhabited](declarations/step-inhabited.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [toStepZero](declarations/tostepzero.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [toStepSucc](declarations/tostepsucc.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [Step.algebraSucc](declarations/step-algebrasucc.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [toStepSucc.exists_root](declarations/tostepsucc-exists-root.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [toStepOfLE'](declarations/tostepofle.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toStepOfLE'.succ](declarations/tostepofle-succ.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [toStepOfLE](declarations/tostepofle-source-edition-2.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [coe_toStepOfLE](declarations/coe-tostepofle.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [Step.algebra](declarations/step-algebra.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [Step.scalar_tower](declarations/step-scalar-tower.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [toStepOfLE.succ](declarations/tostepofle-succ-source-edition-2.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Step.isIntegral](declarations/step-isintegral.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [toStepOfLE.directedSystem](declarations/tostepofle-directedsystem.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [AlgebraicClosure](declarations/algebraicclosure.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [ofStep](declarations/ofstep.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [algebraOfStep](declarations/algebraofstep.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [ofStep_succ](declarations/ofstep-succ.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [exists_ofStep](declarations/exists-ofstep.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [exists_root](declarations/exists-root.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [instIsAlgClosed](declarations/instisalgclosed.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [instAlgebra](declarations/instalgebra.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [algebraMap_def](declarations/algebramap-def.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [ofStepHom](declarations/ofstephom.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [isAlgebraic](declarations/isalgebraic.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [(anonymous)](declarations/instance.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c13145e07ec6236af85b383f21f2a03c4b8c27537938b03666c95d2546a8590b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/AlgebraicClosure/Variantb50c24e5815678e06e9be62e0f289b550ee56ffb697ccb8cf031c6747e60d610.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
