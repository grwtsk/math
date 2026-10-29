# Bound Verify Namespaced

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 13 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `063041f9a13dbbb802987ada3c7e9e9a13976777`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BoundVerifyNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BoundVerifyConfig](declarations/boundverifyconfig.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [BoundVerifyConfig.toGlobalOptConfig](declarations/boundverifyconfig-toglobaloptconfig.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [WitnessPoint](declarations/witnesspoint.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [BoundVerifyResult](declarations/boundverifyresult.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [Box.midpoint](declarations/box-midpoint.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Box.maxWidthQ](declarations/box-maxwidthq.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [evalAtPoint](declarations/evalatpoint.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [verifyUpperBound](declarations/verifyupperbound.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [verifyLowerBound](declarations/verifylowerbound.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [verifyUpperBoundStrict](declarations/verifyupperboundstrict.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [verifyLowerBoundStrict](declarations/verifylowerboundstrict.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [findMaxWithWitness](declarations/findmaxwithwitness.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [findMinWithWitness](declarations/findminwithwitness.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [verifyUpperBoundWithWitness](declarations/verifyupperboundwithwitness.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [verifyLowerBoundWithWitness](declarations/verifylowerboundwithwitness.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [intervalToBox](declarations/intervaltobox.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [verifyUpperBound1](declarations/verifyupperbound1.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [verifyLowerBound1](declarations/verifylowerbound1.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [verifyUpperBound1Strict](declarations/verifyupperbound1strict.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [verifyLowerBound1Strict](declarations/verifylowerbound1strict.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [findMax1WithWitness](declarations/findmax1withwitness.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [findMin1WithWitness](declarations/findmin1withwitness.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [verifyUpperBound1WithWitness](declarations/verifyupperbound1withwitness.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [verifyLowerBound1WithWitness](declarations/verifylowerbound1withwitness.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [intervalToBox_envMem](declarations/intervaltobox-envmem.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [intervalToBox_zero](declarations/intervaltobox-zero.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [verifyUpperBound_correct](declarations/verifyupperbound-correct.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [verifyLowerBound_correct](declarations/verifylowerbound-correct.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [Expr.usesOnlyVar0](declarations/expr-usesonlyvar0.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [Expr.eval_usesOnlyVar0](declarations/expr-eval-usesonlyvar0.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [adaptive_upper_bound](declarations/adaptive-upper-bound.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [adaptive_lower_bound](declarations/adaptive-lower-bound.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [adaptive_upper_bound_strict](declarations/adaptive-upper-bound-strict.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [adaptive_lower_bound_strict](declarations/adaptive-lower-bound-strict.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [adaptive_upper_bound_Icc](declarations/adaptive-upper-bound-icc.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [adaptive_lower_bound_Icc](declarations/adaptive-lower-bound-icc.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [adaptive_upper_bound_Icc_strict](declarations/adaptive-upper-bound-icc-strict.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [adaptive_lower_bound_Icc_strict](declarations/adaptive-lower-bound-icc-strict.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=46315b214f316c14c8903decdb4e055218df8d617caf98424c32126bf607fe3b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
