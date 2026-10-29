# Tactic Compute Degree Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/ComputeDegree/Variantd43f519b7895d696b6c6aab2ad2f45f5193be79ff5c15c3814bc70bb1676e6eb.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1df57ee8aca3403ebe07cdd32bea7113830bb7b1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegreePublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [natDegree_C_le](declarations/natdegree-c-le.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [natDegree_natCast_le](declarations/natdegree-natcast-le.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [natDegree_zero_le](declarations/natdegree-zero-le.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [natDegree_one_le](declarations/natdegree-one-le.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coeff_add_of_eq](declarations/coeff-add-of-eq.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [coeff_mul_add_of_le_natDegree_of_eq_ite](declarations/coeff-mul-add-of-le-natdegree-of-eq-ite.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [coeff_pow_of_natDegree_le_of_eq_ite'](declarations/coeff-pow-of-natdegree-le-of-eq-ite.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [natDegree_smul_le_of_le](declarations/natdegree-smul-le-of-le.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [degree_smul_le_of_le](declarations/degree-smul-le-of-le.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coeff_smul](declarations/coeff-smul.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [natDegree_eq_of_le_of_coeff_ne_zero'](declarations/natdegree-eq-of-le-of-coeff-ne-zero.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [degree_eq_of_le_of_coeff_ne_zero'](declarations/degree-eq-of-le-of-coeff-ne-zero.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coeff_congr_lhs](declarations/coeff-congr-lhs.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [coeff_congr](declarations/coeff-congr.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [natDegree_intCast_le](declarations/natdegree-intcast-le.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [coeff_sub_of_eq](declarations/coeff-sub-of-eq.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coeff_intCast_ite](declarations/coeff-intcast-ite.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [twoHeadsArgs](declarations/twoheadsargs.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [getCongrLemma](declarations/getcongrlemma.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [dispatchLemma](declarations/dispatchlemma.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [tryRfl](declarations/tryrfl.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [splitApply](declarations/splitapply.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [miscomputedDegree?](declarations/miscomputeddegree.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `syntax` | [(anonymous)](declarations/syntax.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `initialize` | [(anonymous)](declarations/initialize.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `macro` | [(anonymous)](declarations/macro-source-edition-2.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `elab_rules` | [(anonymous)](declarations/elab-rules.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `macro` | [(anonymous)](declarations/macro-source-edition-3.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `macro` | [(anonymous)](declarations/macro.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ab38c9f39ed4fe56baa0760995da6998be2aeac608f270b0469b89631d223450 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/ComputeDegree/Variantd43f519b7895d696b6c6aab2ad2f45f5193be79ff5c15c3814bc70bb1676e6eb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
