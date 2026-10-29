# Tactic Compute Degree Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/ComputeDegree/Variant3dc4652ae1ef3a5e4595688ba42cd7396e5b11bca0201443d0905cc1c4d4239a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `22f5c723b7c4823e8d7123b3af865ae9d6cb9caf`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegreeNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [natDegree_C_le](declarations/natdegree-c-le.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [natDegree_natCast_le](declarations/natdegree-natcast-le.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [natDegree_zero_le](declarations/natdegree-zero-le.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [natDegree_one_le](declarations/natdegree-one-le.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coeff_add_of_eq](declarations/coeff-add-of-eq.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [coeff_mul_add_of_le_natDegree_of_eq_ite](declarations/coeff-mul-add-of-le-natdegree-of-eq-ite.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [coeff_pow_of_natDegree_le_of_eq_ite'](declarations/coeff-pow-of-natdegree-le-of-eq-ite.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [natDegree_smul_le_of_le](declarations/natdegree-smul-le-of-le.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [degree_smul_le_of_le](declarations/degree-smul-le-of-le.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coeff_smul](declarations/coeff-smul.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [natDegree_eq_of_le_of_coeff_ne_zero'](declarations/natdegree-eq-of-le-of-coeff-ne-zero.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [degree_eq_of_le_of_coeff_ne_zero'](declarations/degree-eq-of-le-of-coeff-ne-zero.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coeff_congr_lhs](declarations/coeff-congr-lhs.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [coeff_congr](declarations/coeff-congr.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [natDegree_intCast_le](declarations/natdegree-intcast-le.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [coeff_sub_of_eq](declarations/coeff-sub-of-eq.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coeff_intCast_ite](declarations/coeff-intcast-ite.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [twoHeadsArgs](declarations/twoheadsargs.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [getCongrLemma](declarations/getcongrlemma.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [dispatchLemma](declarations/dispatchlemma.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [tryRfl](declarations/tryrfl.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [splitApply](declarations/splitapply.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [miscomputedDegree?](declarations/miscomputeddegree.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `syntax` | [(anonymous)](declarations/syntax.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `initialize` | [(anonymous)](declarations/initialize.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `macro` | [(anonymous)](declarations/macro-source-edition-3.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `elab_rules` | [(anonymous)](declarations/elab-rules.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `macro` | [(anonymous)](declarations/macro-source-edition-2.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `macro` | [(anonymous)](declarations/macro.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c1d2f866409275796625393b7c61adf29ecbfe7f6eb59523eaabf31d6c061547 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/ComputeDegree/Variant3dc4652ae1ef3a5e4595688ba42cd7396e5b11bca0201443d0905cc1c4d4239a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
