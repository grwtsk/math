# Data Matroid Sum

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c2f8c90275251f9b5bdbfa261aee2efef0d9c91`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/DataMatroidSum.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [sigma](declarations/sigma.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [sigma_indep_iff](declarations/sigma-indep-iff.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [sigma_isBase_iff](declarations/sigma-isbase-iff.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [sigma_ground_eq](declarations/sigma-ground-eq.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [sigma_isBasis_iff](declarations/sigma-isbasis-iff.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [Finitary.sigma](declarations/finitary-sigma.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [sum'](declarations/sum-source-edition-2.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [sum'_indep_iff](declarations/sum-indep-iff-source-edition-2.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [sum'_ground_eq](declarations/sum-ground-eq.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [sum'_isBase_iff](declarations/sum-isbase-iff-source-edition-2.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [sum'_isBasis_iff](declarations/sum-isbasis-iff.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [Finitary.sum'](declarations/finitary-sum.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [disjointSigma](declarations/disjointsigma.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [disjointSigma_ground_eq](declarations/disjointsigma-ground-eq.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [disjointSigma_indep_iff](declarations/disjointsigma-indep-iff.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [disjointSigma_isBase_iff](declarations/disjointsigma-isbase-iff.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [disjointSigma_isBasis_iff](declarations/disjointsigma-isbasis-iff.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [sum](declarations/sum.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [sum_ground](declarations/sum-ground.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [sum_indep_iff](declarations/sum-indep-iff.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [sum_isBase_iff](declarations/sum-isbase-iff.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [sum_isBasis_iff](declarations/sum-isbasis-iff-source-edition-2.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [disjointSum](declarations/disjointsum.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [disjointSum_ground_eq](declarations/disjointsum-ground-eq.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [disjointSum_indep_iff](declarations/disjointsum-indep-iff.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [disjointSum_isBase_iff](declarations/disjointsum-isbase-iff.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [disjointSum_isBasis_iff](declarations/disjointsum-isbasis-iff.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [disjointSum_comm](declarations/disjointsum-comm.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [Indep.eq_union_image_of_disjointSum](declarations/indep-eq-union-image-of-disjointsum.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [IsBase.eq_union_image_of_disjointSum](declarations/isbase-eq-union-image-of-disjointsum.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ee80b00e84ebde9ffe03a0edcf9c94b55bfd0dd423ebf64d40ecc1de5c777e0f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variant1a92585428196a2cca92b1c0014b47be07bcecadd4d41a1a74e74b9c995509c5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
