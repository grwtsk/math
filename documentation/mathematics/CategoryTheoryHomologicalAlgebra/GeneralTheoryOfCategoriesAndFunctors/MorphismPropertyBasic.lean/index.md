# Morphism Property Basic

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**88 observed declarations and anonymous commands**, 52 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5abcdbaec161c78ec09753b586cf32629e6a0cc18061caede94231a3168edf3c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e49349dfd8c9b6020a6d39057af1edeba2165a8b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MorphismPropertyBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [MorphismProperty](declarations/morphismproperty.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [MorphismProperty.le_def](declarations/morphismproperty-le-def.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [MorphismProperty.top_eq](declarations/morphismproperty-top-eq.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [ext](declarations/ext.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [top_apply](declarations/top-apply.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [of_eq_top](declarations/of-eq-top.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [sSup_iff](declarations/ssup-iff.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [iSup_iff](declarations/isup-iff.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [op](declarations/op.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [unop](declarations/unop.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [unop_op](declarations/unop-op.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [op_unop](declarations/op-unop.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [inverseImage](declarations/inverseimage.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [inverseImage_iff](declarations/inverseimage-iff.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [map](declarations/map.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [map_mem_map](declarations/map-mem-map.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [monotone_map](declarations/monotone-map.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [toSet](declarations/toset.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [homFamily](declarations/homfamily.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [homFamily_apply](declarations/homfamily-apply.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [homFamily_arrow_mk](declarations/homfamily-arrow-mk.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [arrow_mk_mem_toSet_iff](declarations/arrow-mk-mem-toset-iff.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [of_eq](declarations/of-eq.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `inductive` | [ofHoms](declarations/ofhoms.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [ofHoms_iff](declarations/ofhoms-iff.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [ofHoms_homFamily](declarations/ofhoms-homfamily.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `class` | [RespectsRight](declarations/respectsright.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `class` | [RespectsLeft](declarations/respectsleft.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `class` | [Respects](declarations/respects.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [RespectsLeft.inf](declarations/respectsleft-inf.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [RespectsRight.inf](declarations/respectsright-inf.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [isomorphisms](declarations/isomorphisms.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [monomorphisms](declarations/monomorphisms.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [epimorphisms](declarations/epimorphisms.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `abbrev` | [RespectsIso](declarations/respectsiso.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [RespectsIso.mk](declarations/respectsiso-mk.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [RespectsIso.precomp](declarations/respectsiso-precomp.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [RespectsIso.postcomp](declarations/respectsiso-postcomp.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [RespectsIso.op](declarations/respectsiso-op.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [RespectsIso.unop](declarations/respectsiso-unop.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [isoClosure](declarations/isoclosure.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [le_isoClosure](declarations/le-isoclosure.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [isoClosure_respectsIso](declarations/isoclosure-respectsiso.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [monotone_isoClosure](declarations/monotone-isoclosure.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [cancel_left_of_respectsIso](declarations/cancel-left-of-respectsiso.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [cancel_right_of_respectsIso](declarations/cancel-right-of-respectsiso.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [comma_iso_iff](declarations/comma-iso-iff.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [arrow_iso_iff](declarations/arrow-iso-iff.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [arrow_mk_iso_iff](declarations/arrow-mk-iso-iff.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [RespectsIso.of_respects_arrow_iso](declarations/respectsiso-of-respects-arrow-iso.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [isoClosure_eq_iff](declarations/isoclosure-eq-iff.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [isoClosure_eq_self](declarations/isoclosure-eq-self.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [isoClosure_isoClosure](declarations/isoclosure-isoclosure.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [isoClosure_le_iff](declarations/isoclosure-le-iff.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [map_respectsIso](declarations/map-respectsiso.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [map_le_iff](declarations/map-le-iff.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [map_isoClosure](declarations/map-isoclosure.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [map_id_eq_isoClosure](declarations/map-id-eq-isoclosure.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [map_id](declarations/map-id.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [map_map](declarations/map-map.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [RespectsIso.inverseImage](declarations/respectsiso-inverseimage.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [map_eq_of_iso](declarations/map-eq-of-iso.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [map_inverseImage_le](declarations/map-inverseimage-le.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [inverseImage_equivalence_inverse_eq_map_functor](declarations/inverseimage-equivalence-inverse-eq-map-functor.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [inverseImage_equivalence_functor_eq_map_inverse](declarations/inverseimage-equivalence-functor-eq-map-inverse.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [map_inverseImage_eq_of_isEquivalence](declarations/map-inverseimage-eq-of-isequivalence.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `lemma` | [inverseImage_map_eq_of_isEquivalence](declarations/inverseimage-map-eq-of-isequivalence.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [isomorphisms.iff](declarations/isomorphisms-iff.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [monomorphisms.iff](declarations/monomorphisms-iff.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [epimorphisms.iff](declarations/epimorphisms-iff.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [isomorphisms.infer_property](declarations/isomorphisms-infer-property.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [monomorphisms.infer_property](declarations/monomorphisms-infer-property.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [epimorphisms.infer_property](declarations/epimorphisms-infer-property.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `lemma` | [isomorphisms_op](declarations/isomorphisms-op.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [RespectsIso.monomorphisms](declarations/respectsiso-monomorphisms.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `instance` | [RespectsIso.epimorphisms](declarations/respectsiso-epimorphisms.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `instance` | [RespectsIso.isomorphisms](declarations/respectsiso-isomorphisms.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [prod](declarations/prod.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [pi](declarations/pi.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [functorCategory](declarations/functorcategory.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [arrow](declarations/arrow.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `lemma` | [isIso_app_iff_of_iso](declarations/isiso-app-iff-of-iso.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f58676f869d3ad1c227d77362b0608cd9972b29a2dbb222b7bb0b1fae30ec87b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5abcdbaec161c78ec09753b586cf32629e6a0cc18061caede94231a3168edf3c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
