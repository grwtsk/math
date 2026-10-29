# Ringed Space Presheafed Space

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**45 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3514ef5438f8828077f2f7ad120dec714c84954c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Geometry/RingedSpacePresheafedSpace.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [PresheafedSpace](declarations/presheafedspace.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [coeCarrier](declarations/coecarrier.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [const](declarations/const.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [Hom](declarations/hom.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Hom.ext](declarations/hom-ext.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [hext](declarations/hext.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [id](declarations/id.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [homInhabited](declarations/hominhabited.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [comp](declarations/comp.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [comp_c](declarations/comp-c.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [categoryOfPresheafedSpaces](declarations/categoryofpresheafedspaces.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `abbrev` | [Hom.toPshHom](declarations/hom-topshhom.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [ext](declarations/ext.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [id_base](declarations/id-base.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [id_c](declarations/id-c.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [id_c_app](declarations/id-c-app.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [comp_base](declarations/comp-base.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [comp_c_app](declarations/comp-c-app.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [congr_app](declarations/congr-app.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [forget](declarations/forget.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [isoOfComponents](declarations/isoofcomponents.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [sheafIsoOfIso](declarations/sheafisoofiso.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [base_isIso_of_iso](declarations/base-isiso-of-iso.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [c_isIso_of_iso](declarations/c-isiso-of-iso.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [isIso_of_components](declarations/isiso-of-components.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [restrict](declarations/restrict.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [ofRestrict](declarations/ofrestrict.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [ofRestrict_mono](declarations/ofrestrict-mono.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [restrict_top_presheaf](declarations/restrict-top-presheaf.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [ofRestrict_top_c](declarations/ofrestrict-top-c.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [toRestrictTop](declarations/torestricttop.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [restrictTopIso](declarations/restricttopiso.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [Γ](declarations/anonymous.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Γ_obj_op](declarations/obj-op.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Γ_map_op](declarations/map-op.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [mapPresheaf](declarations/mappresheaf.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [mapPresheaf_obj_X](declarations/mappresheaf-obj-x.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [mapPresheaf_obj_presheaf](declarations/mappresheaf-obj-presheaf.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [mapPresheaf_map_f](declarations/mappresheaf-map-f.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [mapPresheaf_map_c](declarations/mappresheaf-map-c.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [onPresheaf](declarations/onpresheaf.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6706fcedbafc4f5bbf8e41a3da27826688249fec5710370b38f9f643fb48ccd7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variantf12780dcb93a66ebe42f7a3a98af25d2d2f25cd13eef9a8e8cfe50a0a8ddc782.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
