# Algebra Mv Polynomial Variables

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad822a86290b0bc126556ae4f9086270579aa598`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/AlgebraMvPolynomialVariables.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [vars](declarations/vars.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [vars_def](declarations/vars-def.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [vars_0](declarations/vars-0.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [vars_monomial](declarations/vars-monomial.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [vars_C](declarations/vars-c.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [vars_X](declarations/vars-x.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mem_vars](declarations/mem-vars.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mem_support_notMem_vars_zero](declarations/mem-support-notmem-vars-zero.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [vars_add_subset](declarations/vars-add-subset.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [vars_add_of_disjoint](declarations/vars-add-of-disjoint.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [vars_mul](declarations/vars-mul.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [vars_one](declarations/vars-one.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [vars_pow](declarations/vars-pow.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [vars_prod](declarations/vars-prod.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [vars_C_mul](declarations/vars-c-mul.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [vars_sum_subset](declarations/vars-sum-subset.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [vars_sum_of_disjoint](declarations/vars-sum-of-disjoint.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [vars_map](declarations/vars-map.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [vars_map_of_injective](declarations/vars-map-of-injective.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [vars_monomial_single](declarations/vars-monomial-single.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [vars_eq_support_biUnion_support](declarations/vars-eq-support-biunion-support.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [eval₂Hom_eq_constantCoeff_of_vars](declarations/eval-hom-eq-constantcoeff-of-vars.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [aeval_eq_constantCoeff_of_vars](declarations/aeval-eq-constantcoeff-of-vars.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [eval₂Hom_congr'](declarations/eval-hom-congr.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [hom_congr_vars](declarations/hom-congr-vars.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [exists_rename_eq_of_vars_subset_range](declarations/exists-rename-eq-of-vars-subset-range.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [vars_rename](declarations/vars-rename.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mem_vars_rename](declarations/mem-vars-rename.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [aeval_ite_mem_eq_self](declarations/aeval-ite-mem-eq-self.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [leadingCoeff_toLex](declarations/leadingcoeff-tolex.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [supDegree_toLex_C](declarations/supdegree-tolex-c.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [leadingCoeff_toLex_C](declarations/leadingcoeff-tolex-c.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=538673a619308504566dda01b344f2e24f2cb9323fb42d6ee32a5b7f37dd5f3a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Variables/Variant9bf0b202fbaf55aaec5bb0e7ea6bd0622437091609c2b453fcca57b420d5c576.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
