# Tactic Compute Degree Namespaced

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/ComputeDegree/Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ac33c63a04c52d7401c7302d9cf82b0aef7b4941`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegreeNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [natDegree_C_le](declarations/natdegree-c-le.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [natDegree_natCast_le](declarations/natdegree-natcast-le.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [natDegree_zero_le](declarations/natdegree-zero-le.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [natDegree_one_le](declarations/natdegree-one-le.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coeff_add_of_eq](declarations/coeff-add-of-eq.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [coeff_mul_add_of_le_natDegree_of_eq_ite](declarations/coeff-mul-add-of-le-natdegree-of-eq-ite.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [coeff_pow_of_natDegree_le_of_eq_ite'](declarations/coeff-pow-of-natdegree-le-of-eq-ite.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [natDegree_smul_le_of_le](declarations/natdegree-smul-le-of-le.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [degree_smul_le_of_le](declarations/degree-smul-le-of-le.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coeff_smul](declarations/coeff-smul.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [natDegree_eq_of_le_of_coeff_ne_zero'](declarations/natdegree-eq-of-le-of-coeff-ne-zero.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [degree_eq_of_le_of_coeff_ne_zero'](declarations/degree-eq-of-le-of-coeff-ne-zero.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coeff_congr_lhs](declarations/coeff-congr-lhs.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [coeff_congr](declarations/coeff-congr.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [natDegree_intCast_le](declarations/natdegree-intcast-le.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [coeff_sub_of_eq](declarations/coeff-sub-of-eq.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coeff_intCast_ite](declarations/coeff-intcast-ite.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [twoHeadsArgs](declarations/twoheadsargs.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [getCongrLemma](declarations/getcongrlemma.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [dispatchLemma](declarations/dispatchlemma.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [try_rfl](declarations/try-rfl.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [splitApply](declarations/splitapply.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [miscomputedDegree?](declarations/miscomputeddegree.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `syntax` | [(anonymous)](declarations/syntax.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `initialize` | [(anonymous)](declarations/initialize.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `macro` | [(anonymous)](declarations/macro.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `elab_rules` | [(anonymous)](declarations/elab-rules.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `macro` | [(anonymous)](declarations/macro-source-edition-2.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `macro` | [(anonymous)](declarations/macro-source-edition-3.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ef397f3df139499ea391e9cb16ae1c9d77882261c4bff0cf97594ef2a4eb642b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/ComputeDegree/Variantbc81f794468e6afa5a97657485af28f66d7bcdee8653cadb6d5e54d69aabf9d2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
