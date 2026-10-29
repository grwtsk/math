# Hom Lift Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**43 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `08bba803143aa27ad75b3be31d3f546b0053d0e3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HomLiftNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [IsHomLiftAux](declarations/ishomliftaux.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [Functor.IsHomLift](declarations/functor-ishomlift.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `macro` | [(anonymous)](declarations/macro.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [id](declarations/id.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [domain_eq](declarations/domain-eq.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [codomain_eq](declarations/codomain-eq.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [fac](declarations/fac.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [fac'](declarations/fac-source-edition-2.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [commSq](declarations/commsq.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [eq_of_isHomLift](declarations/eq-of-ishomlift.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [of_fac](declarations/of-fac.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [of_fac'](declarations/of-fac-source-edition-2.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [of_commsq](declarations/of-commsq.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [of_commSq](declarations/of-commsq-source-edition-2.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [comp](declarations/comp.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [lift_id_comp](declarations/lift-id-comp.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [comp_lift_id_right](declarations/comp-lift-id-right-source-edition-2.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [comp_lift_id_right'](declarations/comp-lift-id-right.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [comp_lift_id_left](declarations/comp-lift-id-left-source-edition-2.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [comp_lift_id_left'](declarations/comp-lift-id-left.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [eqToHom_domain_lift_id](declarations/eqtohom-domain-lift-id.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [eqToHom_codomain_lift_id](declarations/eqtohom-codomain-lift-id.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [id_lift_eqToHom_domain](declarations/id-lift-eqtohom-domain.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [id_lift_eqToHom_codomain](declarations/id-lift-eqtohom-codomain.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [comp_eqToHom_lift](declarations/comp-eqtohom-lift.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [eqToHom_comp_lift](declarations/eqtohom-comp-lift.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [lift_eqToHom_comp](declarations/lift-eqtohom-comp.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [lift_comp_eqToHom](declarations/lift-comp-eqtohom.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [comp_eqToHom_lift_iff](declarations/comp-eqtohom-lift-iff.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [eqToHom_comp_lift_iff](declarations/eqtohom-comp-lift-iff.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [lift_eqToHom_comp_iff](declarations/lift-eqtohom-comp-iff.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [lift_comp_eqToHom_iff](declarations/lift-comp-eqtohom-iff.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [isoOfIsoLift](declarations/isoofisolift.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [isoOfIsoLift_inv_hom_id](declarations/isoofisolift-inv-hom-id.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [isoOfIsoLift_hom_inv_id](declarations/isoofisolift-hom-inv-id.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [isIso_of_lift_isIso](declarations/isiso-of-lift-isiso.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [inv_lift_inv](declarations/inv-lift-inv.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [inv_lift](declarations/inv-lift.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [inv](declarations/inv.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [lift_id_inv](declarations/lift-id-inv.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [lift_id_inv_isIso](declarations/lift-id-inv-isiso.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bddcb56b9afe50a483d40e624e2e884818d2556761b281c7ff9e10f803ef833a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomLift/Variant798a2f2ec31772cba6fe04abdb7f072bfbeb6685f513f6a5e26c3243e8af8af1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
