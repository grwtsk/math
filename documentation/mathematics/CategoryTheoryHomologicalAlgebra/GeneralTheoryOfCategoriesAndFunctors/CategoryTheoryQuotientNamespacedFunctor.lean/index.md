# Category Theory Quotient Namespaced Functor

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `67f783c12bc18f3f801725f8ba52250dfcadead1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryQuotientNamespacedFunctor.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [HomRel](declarations/homrel.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Functor.homRel](declarations/functor-homrel.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [Functor.homRel_iff](declarations/functor-homrel-iff.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `class` | [Congruence](declarations/congruence.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [Functor.congruence_homRel](declarations/functor-congruence-homrel.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [Quotient](declarations/quotient.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `inductive` | [CompClosure](declarations/compclosure.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [CompClosure.of](declarations/compclosure-of.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [comp_left](declarations/comp-left.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [comp_right](declarations/comp-right.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [Hom](declarations/hom.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [comp](declarations/comp.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [comp_mk](declarations/comp-mk.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [category](declarations/category.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [functor](declarations/functor.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [full_functor](declarations/full-functor.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [essSurj_functor](declarations/esssurj-functor.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [induction](declarations/induction.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [sound](declarations/sound.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [compClosure_iff_self](declarations/compclosure-iff-self.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [compClosure_eq_self](declarations/compclosure-eq-self.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [functor_map_eq_iff](declarations/functor-map-eq-iff.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [functor_homRel_eq_compClosure_eqvGen](declarations/functor-homrel-eq-compclosure-eqvgen.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [compClosure.congruence](declarations/compclosure-congruence.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [lift](declarations/lift.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [lift_spec](declarations/lift-spec.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [lift_unique](declarations/lift-unique-source-edition-2.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [lift_unique'](declarations/lift-unique.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [lift.isLift](declarations/lift-islift.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [lift.isLift_hom](declarations/lift-islift-hom.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [lift.isLift_inv](declarations/lift-islift-inv.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [lift_obj_functor_obj](declarations/lift-obj-functor-obj.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [lift_map_functor_map](declarations/lift-map-functor-map.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [natTrans_ext](declarations/nattrans-ext.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [natTransLift](declarations/nattranslift.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [natTransLift_app](declarations/nattranslift-app.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [comp_natTransLift](declarations/comp-nattranslift.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [natTransLift_id](declarations/nattranslift-id.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [natIsoLift](declarations/natisolift.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [full_whiskeringLeft_functor](declarations/full-whiskeringleft-functor.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [faithful_whiskeringLeft_functor](declarations/faithful-whiskeringleft-functor.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2bd96b4bfac214b202b8e3ba001d6e4bb475b888c68f70d1f653ecde7adf6f78 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant224bcc0cc73965c77060d118873ad13786cb54b3b2886e532d3466d76cac20f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
