# Projective Spectrum Structure Sheaf

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e5cc4c679f3cd3fa275ed3e4681cf0a74ce6013`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumStructureSheaf.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsFraction](declarations/isfraction.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [isFractionPrelocal](declarations/isfractionprelocal.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [isLocallyFraction](declarations/islocallyfraction.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [zero_mem'](declarations/zero-mem.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [one_mem'](declarations/one-mem.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [add_mem'](declarations/add-mem.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [neg_mem'](declarations/neg-mem.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mul_mem'](declarations/mul-mem.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [sectionsSubring](declarations/sectionssubring.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [structureSheafInType](declarations/structuresheafintype.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [commRingStructureSheafInTypeObj](declarations/commringstructuresheafintypeobj.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [structurePresheafInCommRing](declarations/structurepresheafincommring.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [structurePresheafCompForget](declarations/structurepresheafcompforget.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [Proj.structureSheaf](declarations/proj-structuresheaf.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Proj.res_apply](declarations/proj-res-apply.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Proj.ext](declarations/proj-ext.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Proj.add_apply](declarations/proj-add-apply.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Proj.mul_apply](declarations/proj-mul-apply.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Proj.sub_apply](declarations/proj-sub-apply.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Proj.pow_apply](declarations/proj-pow-apply.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Proj.zero_apply](declarations/proj-zero-apply.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Proj.one_apply](declarations/proj-one-apply.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [Proj.toSheafedSpace](declarations/proj-tosheafedspace.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [openToLocalization](declarations/opentolocalization.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [stalkToFiberRingHom](declarations/stalktofiberringhom.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [germ_comp_stalkToFiberRingHom](declarations/germ-comp-stalktofiberringhom.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [stalkToFiberRingHom_germ](declarations/stalktofiberringhom-germ.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mem_basicOpen_den](declarations/mem-basicopen-den.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [sectionInBasicOpen](declarations/sectioninbasicopen.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [homogeneousLocalizationToStalk](declarations/homogeneouslocalizationtostalk.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [homogeneousLocalizationToStalk_stalkToFiberRingHom](declarations/homogeneouslocalizationtostalk-stalktofiberringhom.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [stalkToFiberRingHom_homogeneousLocalizationToStalk](declarations/stalktofiberringhom-homogeneouslocalizationtostalk.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [Proj.stalkIso'](declarations/proj-stalkiso.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [Proj.stalkIso'_germ](declarations/proj-stalkiso-germ.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [Proj.stalkIso'_symm_mk](declarations/proj-stalkiso-symm-mk.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [Proj.toLocallyRingedSpace](declarations/proj-tolocallyringedspace.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=09591d6c1b338b7bceda45508c6d46fa98c3e7660b04aeb07fd69afcf7be29ea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/StructureSheaf/Variant81e093cf25deec5a56ef652b299805dc955efaf510b611d03256a18886222a07.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
