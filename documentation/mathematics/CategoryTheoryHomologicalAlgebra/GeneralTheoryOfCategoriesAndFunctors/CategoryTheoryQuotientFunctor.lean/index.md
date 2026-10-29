# Category Theory Quotient Functor

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `76bdba27163cb09a656cd49a70f5b4ca75cb9e5f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientFunctor.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [HomRel](declarations/homrel.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Functor.homRel](declarations/functor-homrel.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [Functor.homRel_iff](declarations/functor-homrel-iff.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `class` | [Congruence](declarations/congruence.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [Functor.congruence_homRel](declarations/functor-congruence-homrel.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [Quotient](declarations/quotient.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `inductive` | [CompClosure](declarations/compclosure.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [CompClosure.of](declarations/compclosure-of.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [comp_left](declarations/comp-left.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [comp_right](declarations/comp-right.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [Hom](declarations/hom.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [comp](declarations/comp.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [comp_mk](declarations/comp-mk.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [category](declarations/category.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [functor](declarations/functor.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [full_functor](declarations/full-functor.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [essSurj_functor](declarations/esssurj-functor.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [induction](declarations/induction.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [sound](declarations/sound.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [compClosure_iff_self](declarations/compclosure-iff-self.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [compClosure_eq_self](declarations/compclosure-eq-self.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [functor_map_eq_iff](declarations/functor-map-eq-iff.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [functor_homRel_eq_compClosure_eqvGen](declarations/functor-homrel-eq-compclosure-eqvgen.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [compClosure.congruence](declarations/compclosure-congruence.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [lift](declarations/lift.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [lift_spec](declarations/lift-spec.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [lift_unique](declarations/lift-unique.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [lift_unique'](declarations/lift-unique-source-edition-2.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [lift.isLift](declarations/lift-islift.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [lift.isLift_hom](declarations/lift-islift-hom.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [lift.isLift_inv](declarations/lift-islift-inv.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [lift_obj_functor_obj](declarations/lift-obj-functor-obj.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [lift_map_functor_map](declarations/lift-map-functor-map.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [natTrans_ext](declarations/nattrans-ext.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [natTransLift](declarations/nattranslift.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [natTransLift_app](declarations/nattranslift-app.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [comp_natTransLift](declarations/comp-nattranslift.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [natTransLift_id](declarations/nattranslift-id.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [natIsoLift](declarations/natisolift.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [full_whiskeringLeft_functor](declarations/full-whiskeringleft-functor.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [faithful_whiskeringLeft_functor](declarations/faithful-whiskeringleft-functor.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=97be748a1dbc18766f50a52aa228fba60429fe29de6720373faa56cd9806311d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant04aa28d8fcd61ae98eb6599a3defc3084e817cdaa10daa960eba4926157e196e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
