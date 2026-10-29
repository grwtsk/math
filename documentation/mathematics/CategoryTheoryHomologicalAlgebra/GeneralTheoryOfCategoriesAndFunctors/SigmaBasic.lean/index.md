# Sigma Basic

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 13 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantabf63b892ee0cece67bd09089a154d18420e6dd7b372e0580d5be4d968064fcd.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `22116197c9977ddbc6a2ec8e1ffa519428f792ca`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [SigmaHom](declarations/sigmahom.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [id](declarations/id.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [comp](declarations/comp.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [comp_def](declarations/comp-def.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [assoc](declarations/assoc.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [id_comp](declarations/id-comp.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [comp_id](declarations/comp-id.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [sigma](declarations/sigma.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [incl](declarations/incl.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [incl_obj](declarations/incl-obj.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [natTrans](declarations/nattrans.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [natTrans_app](declarations/nattrans-app.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [descMap](declarations/descmap.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [desc](declarations/desc.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [desc_map_mk](declarations/desc-map-mk.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [inclDesc](declarations/incldesc.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [inclDesc_hom_app](declarations/incldesc-hom-app.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [inclDesc_inv_app](declarations/incldesc-inv-app.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [descUniq](declarations/descuniq.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [descUniq_hom_app](declarations/descuniq-hom-app.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [descUniq_inv_app](declarations/descuniq-inv-app.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [natIso](declarations/natiso.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [map](declarations/map.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [map_obj](declarations/map-obj.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [map_map](declarations/map-map.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [inclCompMap](declarations/inclcompmap.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [mapId](declarations/mapid.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [mapComp](declarations/mapcomp.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [sigma](declarations/sigma-source-edition-2.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [sigma](declarations/sigma-source-edition-3.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=78adae8303919811e937b7b4a2a5b6ee083431e7adfd0c3f06fbdcb6efbfe983 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantabf63b892ee0cece67bd09089a154d18420e6dd7b372e0580d5be4d968064fcd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
