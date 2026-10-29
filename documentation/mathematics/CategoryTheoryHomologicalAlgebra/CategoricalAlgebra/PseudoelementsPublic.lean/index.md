# Pseudoelements Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**41 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Varianta937890b849529416c7704273296561475f0c8eee324e53504a225d33e72c60e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `248660bd549f7491dab92069584e009c15a14d54`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/PseudoelementsPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [app](declarations/app.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [app_hom](declarations/app-hom.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [PseudoEqual](declarations/pseudoequal.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [pseudoEqual_refl](declarations/pseudoequal-refl.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [pseudoEqual_symm](declarations/pseudoequal-symm.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [pseudoEqual_trans](declarations/pseudoequal-trans.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Pseudoelement.setoid](declarations/pseudoelement-setoid.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Pseudoelement](declarations/pseudoelement.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [objectToSort](declarations/objecttosort.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [overToSort](declarations/overtosort.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [over_coe_def](declarations/over-coe-def.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [pseudoApply_aux](declarations/pseudoapply-aux.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [pseudoApply](declarations/pseudoapply.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [homToFun](declarations/homtofun.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [pseudoApply_mk'](declarations/pseudoapply-mk.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [comp_apply](declarations/comp-apply.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [comp_comp](declarations/comp-comp.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [pseudoZero_aux](declarations/pseudozero-aux.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [zero_eq_zero'](declarations/zero-eq-zero-source-edition-2.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [pseudoZero](declarations/pseudozero.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [hasZero](declarations/haszero.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [pseudoZero_def](declarations/pseudozero-def.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [zero_eq_zero](declarations/zero-eq-zero.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [pseudoZero_iff](declarations/pseudozero-iff.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [apply_zero](declarations/apply-zero.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [zero_apply](declarations/zero-apply.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [zero_morphism_ext](declarations/zero-morphism-ext-source-edition-2.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [zero_morphism_ext'](declarations/zero-morphism-ext.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [eq_zero_iff](declarations/eq-zero-iff.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [pseudo_injective_of_mono](declarations/pseudo-injective-of-mono.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [zero_of_map_zero](declarations/zero-of-map-zero.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mono_of_zero_of_map_zero](declarations/mono-of-zero-of-map-zero.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [pseudo_surjective_of_epi](declarations/pseudo-surjective-of-epi.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [epi_of_pseudo_surjective](declarations/epi-of-pseudo-surjective.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [pseudo_exact_of_exact](declarations/pseudo-exact-of-exact.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [apply_eq_zero_of_comp_eq_zero](declarations/apply-eq-zero-of-comp-eq-zero.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [exact_of_pseudo_exact](declarations/exact-of-pseudo-exact.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [sub_of_eq_image](declarations/sub-of-eq-image.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [pseudo_pullback](declarations/pseudo-pullback.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [ModuleCat.eq_range_of_pseudoequal](declarations/modulecat-eq-range-of-pseudoequal.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6de2b907f230f807b2e7a0a1974b53f4a86a4903c72bebd05f666cbfee1da267 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelements/Varianta937890b849529416c7704273296561475f0c8eee324e53504a225d33e72c60e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
