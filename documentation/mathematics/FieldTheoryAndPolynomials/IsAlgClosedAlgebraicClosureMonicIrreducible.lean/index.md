# Is Alg Closed Algebraic Closure Monic Irreducible

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**51 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d837f136c007b2ef9824adf04814fc056e174aac`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FieldTheoryAndPolynomials/IsAlgClosedAlgebraicClosureMonicIrreducible.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [MonicIrreducible](declarations/monicirreducible.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [evalXSelf](declarations/evalxself.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [spanEval](declarations/spaneval.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [toSplittingField](declarations/tosplittingfield.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [toSplittingField_evalXSelf](declarations/tosplittingfield-evalxself.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [spanEval_ne_top](declarations/spaneval-ne-top.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [maxIdeal](declarations/maxideal.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [maxIdeal.isMaximal](declarations/maxideal-ismaximal.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [le_maxIdeal](declarations/le-maxideal.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [AdjoinMonic](declarations/adjoinmonic.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [AdjoinMonic.field](declarations/adjoinmonic-field.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [AdjoinMonic.inhabited](declarations/adjoinmonic-inhabited.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [toAdjoinMonic](declarations/toadjoinmonic.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [AdjoinMonic.algebra](declarations/adjoinmonic-algebra.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [AdjoinMonic.algebraMap](declarations/adjoinmonic-algebramap.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [AdjoinMonic.isIntegral](declarations/adjoinmonic-isintegral.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [AdjoinMonic.exists_root](declarations/adjoinmonic-exists-root.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [stepAux](declarations/stepaux.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [Step](declarations/step.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Step.zero](declarations/step-zero.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [Step.field](declarations/step-field.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Step.succ](declarations/step-succ.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [Step.inhabited](declarations/step-inhabited.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [toStepZero](declarations/tostepzero.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [toStepSucc](declarations/tostepsucc.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [Step.algebraSucc](declarations/step-algebrasucc.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [toStepSucc.exists_root](declarations/tostepsucc-exists-root.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [toStepOfLE'](declarations/tostepofle.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toStepOfLE'.succ](declarations/tostepofle-succ-source-edition-2.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [toStepOfLE](declarations/tostepofle-source-edition-2.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [coe_toStepOfLE](declarations/coe-tostepofle.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [Step.algebra](declarations/step-algebra.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [Step.scalar_tower](declarations/step-scalar-tower.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [toStepOfLE.succ](declarations/tostepofle-succ.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Step.isIntegral](declarations/step-isintegral.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [toStepOfLE.directedSystem](declarations/tostepofle-directedsystem.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [AlgebraicClosure](declarations/algebraicclosure.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [ofStep](declarations/ofstep.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [algebraOfStep](declarations/algebraofstep.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [ofStep_succ](declarations/ofstep-succ.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [exists_ofStep](declarations/exists-ofstep.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [exists_root](declarations/exists-root.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [instIsAlgClosed](declarations/instisalgclosed.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [instAlgebra](declarations/instalgebra.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [algebraMap_def](declarations/algebramap-def.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [ofStepHom](declarations/ofstephom.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [isAlgebraic](declarations/isalgebraic.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2a3d8cdeb8816108f09c7e6f15d91c4aaff231286681f7a0f53f539b34b13fe8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/AlgebraicClosure/Variant471adc2749666fc3fc98f58ba03db8b875b687f28bb7eb88675c59682c7b1953.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
