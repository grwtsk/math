# Algebraic Geometry Gluing From Glued Is Open Embedding

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**46 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9c850b241d16e999d73f27bb40969a58f223081`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingFromGluedIsOpenEmbedding.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [GlueData](declarations/gluedata.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [toLocallyRingedSpaceGlueData](declarations/tolocallyringedspacegluedata.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [gluedScheme](declarations/gluedscheme.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `abbrev` | [glued](declarations/glued.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `abbrev` | [ι](declarations/anonymous.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `abbrev` | [isoLocallyRingedSpace](declarations/isolocallyringedspace.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [ι_isoLocallyRingedSpace_inv](declarations/isolocallyringedspace-inv.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [ι_isOpenImmersion](declarations/isopenimmersion.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [ι_jointly_surjective](declarations/jointly-surjective.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [glue_condition](declarations/glue-condition.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [vPullbackCone](declarations/vpullbackcone.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [vPullbackConeIsLimit](declarations/vpullbackconeislimit.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [isoCarrier](declarations/isocarrier.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ι_isoCarrier_inv](declarations/isocarrier-inv.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [Rel](declarations/rel.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [ι_eq_iff](declarations/eq-iff.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [isOpen_iff](declarations/isopen-iff.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [openCover](declarations/opencover.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [gluedCoverT'](declarations/gluedcovert.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [gluedCoverT'_fst_fst](declarations/gluedcovert-fst-fst.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [gluedCoverT'_fst_snd](declarations/gluedcovert-fst-snd.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [gluedCoverT'_snd_fst](declarations/gluedcovert-snd-fst.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [gluedCoverT'_snd_snd](declarations/gluedcovert-snd-snd.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [glued_cover_cocycle_fst](declarations/glued-cover-cocycle-fst.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [glued_cover_cocycle_snd](declarations/glued-cover-cocycle-snd.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [glued_cover_cocycle](declarations/glued-cover-cocycle.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [gluedCover](declarations/gluedcover.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [fromGlued](declarations/fromglued.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [ι_fromGlued](declarations/fromglued-source-edition-2.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [fromGlued_injective](declarations/fromglued-injective.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [fromGlued_stalk_iso](declarations/fromglued-stalk-iso.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [fromGlued_open_map](declarations/fromglued-open-map.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [fromGlued_isOpenEmbedding](declarations/fromglued-isopenembedding.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [fromGlued_open_immersion](declarations/fromglued-open-immersion.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [glueMorphisms](declarations/gluemorphisms-source-edition-2.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [ι_glueMorphisms](declarations/gluemorphisms.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [hom_ext](declarations/hom-ext.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=636e1578988f16b12febeb483b84de7d343af1cba5388177b8eb897b43499aca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
