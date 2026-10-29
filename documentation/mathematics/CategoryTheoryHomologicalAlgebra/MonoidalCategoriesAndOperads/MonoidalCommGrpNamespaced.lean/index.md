# Monoidal Comm Grp Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f621fd493017d0c531f6d8a179036531cd74929`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalCommGrpNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [CommGrp_](declarations/commgrp.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [trivial](declarations/trivial.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [id_hom](declarations/id-hom.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [comp_hom](declarations/comp-hom.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [hom_ext](declarations/hom-ext.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [id'](declarations/id.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [comp'](declarations/comp.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [forget₂Grp_](declarations/forget-grp.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [fullyFaithfulForget₂Grp_](declarations/fullyfaithfulforget-grp.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [forget₂Grp_obj_one](declarations/forget-grp-obj-one.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [forget₂Grp_obj_mul](declarations/forget-grp-obj-mul.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [forget₂Grp_map_hom](declarations/forget-grp-map-hom.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [forget₂CommMon_](declarations/forget-commmon.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [fullyFaithfulForget₂CommMon_](declarations/fullyfaithfulforget-commmon.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [forget₂CommMon_obj_one](declarations/forget-commmon-obj-one.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [forget₂CommMon_obj_mul](declarations/forget-commmon-obj-mul.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [forget₂CommMon_map_hom](declarations/forget-commmon-map-hom.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [forget](declarations/forget.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [forget₂Grp_comp_forget](declarations/forget-grp-comp-forget.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [forget₂CommMon_comp_forget](declarations/forget-commmon-comp-forget.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [mkIso](declarations/mkiso.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [mkIso_hom_hom](declarations/mkiso-hom-hom.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [mkIso_inv_hom](declarations/mkiso-inv-hom.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [uniqueHomFromTrivial](declarations/uniquehomfromtrivial.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [mapCommGrp](declarations/mapcommgrp.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [mapCommGrpIdIso](declarations/mapcommgrpidiso.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [mapCommGrpCompIso](declarations/mapcommgrpcompiso.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [mapCommGrpNatTrans](declarations/mapcommgrpnattrans.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [mapCommGrpNatIso](declarations/mapcommgrpnatiso.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [mapCommGrpFunctor](declarations/mapcommgrpfunctor.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [mapCommGrp](declarations/mapcommgrp-source-edition-2.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [mapCommGrp](declarations/mapcommgrp-source-edition-3.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=00b54ca8d40851e099ed66c27dcbbafc66d92c0d67acd9e8e0ff15d5c8cb4cf3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant036cabf1e62f30dd8cfc98b58128d7ddd6ee39c311e38015cd2868a9e7550e40.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
