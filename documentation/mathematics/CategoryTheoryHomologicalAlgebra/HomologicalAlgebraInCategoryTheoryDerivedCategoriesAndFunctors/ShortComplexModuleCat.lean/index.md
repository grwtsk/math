# Short Complex Module Cat

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4db2087884967af9bcc74cfe79ef9b731fce6fc4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexModuleCat.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](declarations/instance.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [moduleCatMk](declarations/modulecatmk.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [moduleCat_zero_apply](declarations/modulecat-zero-apply.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [moduleCat_exact_iff](declarations/modulecat-exact-iff.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [moduleCat_exact_iff_ker_sub_range](declarations/modulecat-exact-iff-ker-sub-range.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [moduleCat_exact_iff_range_eq_ker](declarations/modulecat-exact-iff-range-eq-ker.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [Exact.moduleCat_range_eq_ker](declarations/exact-modulecat-range-eq-ker.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [ShortExact.moduleCat_injective_f](declarations/shortexact-modulecat-injective-f.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [ShortExact.moduleCat_surjective_g](declarations/shortexact-modulecat-surjective-g.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [ShortExact.moduleCat_exact_iff_function_exact](declarations/shortexact-modulecat-exact-iff-function-exact.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [moduleCatMkOfKerLERange](declarations/modulecatmkofkerlerange.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [Exact.moduleCat_of_range_eq_ker](declarations/exact-modulecat-of-range-eq-ker.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [moduleCatToCycles](declarations/modulecattocycles.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [moduleCatLeftHomologyData](declarations/modulecatlefthomologydata.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `abbrev` | [moduleCatHomology](declarations/modulecathomology.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `abbrev` | [moduleCatHomologyπ](declarations/modulecathomology-source-edition-2.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [moduleCatLeftHomologyData_f'_hom](declarations/modulecatlefthomologydata-f-hom.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [moduleCatLeftHomologyData_descH_hom](declarations/modulecatlefthomologydata-desch-hom.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [moduleCatLeftHomologyData_liftK_hom](declarations/modulecatlefthomologydata-liftk-hom.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [moduleCatCyclesIso](declarations/modulecatcyclesiso.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [moduleCatCyclesIso_hom_i](declarations/modulecatcyclesiso-hom-i.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [moduleCatCyclesIso_inv_iCycles](declarations/modulecatcyclesiso-inv-icycles.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [toCycles_moduleCatCyclesIso_hom](declarations/tocycles-modulecatcyclesiso-hom.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [moduleCatHomologyIso](declarations/modulecathomologyiso.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [π_moduleCatCyclesIso_hom](declarations/modulecatcyclesiso-hom.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [moduleCatCyclesIso_inv_π](declarations/modulecatcyclesiso-inv.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [exact_iff_surjective_moduleCatToCycles](declarations/exact-iff-surjective-modulecattocycles.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba48e2a57320758e864a70c34065febffb238e2febad0e0fb64e8d307af5de6f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ModuleCat/Variant6843a08ebbe86df1d139828eb1d0085c5deab52b377a994dba90bc5ddf88cbf6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
