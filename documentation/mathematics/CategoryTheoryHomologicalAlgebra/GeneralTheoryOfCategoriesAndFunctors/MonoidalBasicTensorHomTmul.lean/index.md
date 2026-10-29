# Monoidal Basic Tensor Hom Tmul

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40740f20335983f6847eea8199134084315e32ed`.

**Verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalBasicTensorHomTmul.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [tensorObj](declarations/tensorobj.md) | 51 | `BLOCKED_SOURCE_DEPENDENCY` |
| 2 | `def` | [tensorHom](declarations/tensorhom.md) | 55 | `BLOCKED_SOURCE_DEPENDENCY` |
| 3 | `def` | [whiskerLeft](declarations/whiskerleft.md) | 60 | `BLOCKED_SOURCE_DEPENDENCY` |
| 4 | `def` | [whiskerRight](declarations/whiskerright.md) | 65 | `BLOCKED_SOURCE_DEPENDENCY` |
| 5 | `theorem` | [tensor_id](declarations/tensor-id.md) | 69 | `BLOCKED_SOURCE_DEPENDENCY` |
| 6 | `theorem` | [tensor_comp](declarations/tensor-comp.md) | 75 | `BLOCKED_SOURCE_DEPENDENCY` |
| 7 | `def` | [associator](declarations/associator.md) | 83 | `BLOCKED_SOURCE_DEPENDENCY` |
| 8 | `def` | [leftUnitor](declarations/leftunitor.md) | 88 | `BLOCKED_SOURCE_DEPENDENCY` |
| 9 | `def` | [rightUnitor](declarations/rightunitor.md) | 92 | `BLOCKED_SOURCE_DEPENDENCY` |
| 10 | `instance` | [instMonoidalCategoryStruct](declarations/instmonoidalcategorystruct.md) | 96 | `BLOCKED_SOURCE_DEPENDENCY` |
| 11 | `theorem` | [associator_naturality](declarations/associator-naturality.md) | 106 | `BLOCKED_SOURCE_DEPENDENCY` |
| 12 | `theorem` | [pentagon](declarations/pentagon.md) | 115 | `BLOCKED_SOURCE_DEPENDENCY` |
| 13 | `theorem` | [leftUnitor_naturality](declarations/leftunitor-naturality.md) | 124 | `BLOCKED_SOURCE_DEPENDENCY` |
| 14 | `theorem` | [rightUnitor_naturality](declarations/rightunitor-naturality.md) | 135 | `BLOCKED_SOURCE_DEPENDENCY` |
| 15 | `theorem` | [triangle](declarations/triangle.md) | 146 | `BLOCKED_SOURCE_DEPENDENCY` |
| 16 | `instance` | [monoidalCategory](declarations/monoidalcategory.md) | 161 | `BLOCKED_SOURCE_DEPENDENCY` |
| 17 | `instance` | [(anonymous)](declarations/instance.md) | 171 | `BLOCKED_SOURCE_DEPENDENCY` |
| 18 | `theorem` | [tensorHom_tmul](declarations/tensorhom-tmul.md) | 177 | `BLOCKED_SOURCE_DEPENDENCY` |
| 19 | `theorem` | [whiskerLeft_apply](declarations/whiskerleft-apply.md) | 182 | `BLOCKED_SOURCE_DEPENDENCY` |
| 20 | `theorem` | [whiskerRight_apply](declarations/whiskerright-apply.md) | 188 | `BLOCKED_SOURCE_DEPENDENCY` |
| 21 | `theorem` | [leftUnitor_hom_apply](declarations/leftunitor-hom-apply.md) | 194 | `BLOCKED_SOURCE_DEPENDENCY` |
| 22 | `theorem` | [leftUnitor_inv_apply](declarations/leftunitor-inv-apply.md) | 199 | `BLOCKED_SOURCE_DEPENDENCY` |
| 23 | `theorem` | [rightUnitor_hom_apply](declarations/rightunitor-hom-apply.md) | 204 | `BLOCKED_SOURCE_DEPENDENCY` |
| 24 | `theorem` | [rightUnitor_inv_apply](declarations/rightunitor-inv-apply.md) | 209 | `BLOCKED_SOURCE_DEPENDENCY` |
| 25 | `theorem` | [associator_hom_apply](declarations/associator-hom-apply.md) | 214 | `BLOCKED_SOURCE_DEPENDENCY` |
| 26 | `theorem` | [associator_inv_apply](declarations/associator-inv-apply.md) | 219 | `BLOCKED_SOURCE_DEPENDENCY` |
| 27 | `def` | [tensorLift](declarations/tensorlift.md) | 233 | `BLOCKED_SOURCE_DEPENDENCY` |
| 28 | `lemma` | [tensorLift_tmul](declarations/tensorlift-tmul.md) | 237 | `BLOCKED_SOURCE_DEPENDENCY` |
| 29 | `lemma` | [tensor_ext](declarations/tensor-ext-source-edition-3.md) | 242 | `BLOCKED_SOURCE_DEPENDENCY` |
| 30 | `lemma` | [tensor_ext₃'](declarations/tensor-ext.md) | 247 | `BLOCKED_SOURCE_DEPENDENCY` |
| 31 | `lemma` | [tensor_ext₃](declarations/tensor-ext-source-edition-2.md) | 253 | `BLOCKED_SOURCE_DEPENDENCY` |
| 32 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 263 | `BLOCKED_SOURCE_DEPENDENCY` |
| 33 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 296 | `BLOCKED_SOURCE_DEPENDENCY` |
| 34 | `lemma` | [ofHom₂_compr₂](declarations/ofhom-compr.md) | 313 | `BLOCKED_SOURCE_DEPENDENCY` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=33165bea2d62e6ddb5f4e87aa2cb24af40093eb2cf0e8f0a33fc7e68f48e24be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variantf04cac4d89c203682d5301dea8a2b066ec002e506846883dcec187a0d3819896.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
