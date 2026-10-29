# Tactic Compute Degree

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba2e8c8da198f8aee873714934135d9e06d6bb94`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegree.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [natDegree_C_le](declarations/natdegree-c-le.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [natDegree_natCast_le](declarations/natdegree-natcast-le.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [natDegree_zero_le](declarations/natdegree-zero-le.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [natDegree_one_le](declarations/natdegree-one-le.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coeff_add_of_eq](declarations/coeff-add-of-eq.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [coeff_mul_add_of_le_natDegree_of_eq_ite](declarations/coeff-mul-add-of-le-natdegree-of-eq-ite.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [coeff_pow_of_natDegree_le_of_eq_ite'](declarations/coeff-pow-of-natdegree-le-of-eq-ite.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [natDegree_smul_le_of_le](declarations/natdegree-smul-le-of-le.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [degree_smul_le_of_le](declarations/degree-smul-le-of-le.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coeff_smul](declarations/coeff-smul.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [natDegree_eq_of_le_of_coeff_ne_zero'](declarations/natdegree-eq-of-le-of-coeff-ne-zero.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [degree_eq_of_le_of_coeff_ne_zero'](declarations/degree-eq-of-le-of-coeff-ne-zero.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coeff_congr_lhs](declarations/coeff-congr-lhs.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [coeff_congr](declarations/coeff-congr.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [natDegree_intCast_le](declarations/natdegree-intcast-le.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [coeff_sub_of_eq](declarations/coeff-sub-of-eq.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coeff_intCast_ite](declarations/coeff-intcast-ite.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [twoHeadsArgs](declarations/twoheadsargs.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [getCongrLemma](declarations/getcongrlemma.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [dispatchLemma](declarations/dispatchlemma.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [try_rfl](declarations/try-rfl.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [splitApply](declarations/splitapply.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [miscomputedDegree?](declarations/miscomputeddegree.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `syntax` | [(anonymous)](declarations/syntax.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `initialize` | [(anonymous)](declarations/initialize.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `macro` | [(anonymous)](declarations/macro-source-edition-3.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `elab_rules` | [(anonymous)](declarations/elab-rules.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `macro` | [(anonymous)](declarations/macro-source-edition-2.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `macro` | [(anonymous)](declarations/macro.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=94b34f04b32c0d1da041185feaf4c89b598795d0b6fdf4185e27587e8f4e0041 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/ComputeDegree/Variantf4811a5a7a6fe9202f14886a6b39e9b9f24906ab6df260a2c4e34dcafa3585c7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
