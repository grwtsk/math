# Algebraic Geometry Gluing From Glued Open Embedding

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**46 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7111257d225ca68393d544fd7efd7619715b4793`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingFromGluedOpenEmbedding.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [GlueData](declarations/gluedata.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [toLocallyRingedSpaceGlueData](declarations/tolocallyringedspacegluedata.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [gluedScheme](declarations/gluedscheme.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `abbrev` | [glued](declarations/glued.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `abbrev` | [ι](declarations/anonymous.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `abbrev` | [isoLocallyRingedSpace](declarations/isolocallyringedspace.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [ι_isoLocallyRingedSpace_inv](declarations/isolocallyringedspace-inv.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [ι_isOpenImmersion](declarations/isopenimmersion.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [ι_jointly_surjective](declarations/jointly-surjective.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [glue_condition](declarations/glue-condition.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [vPullbackCone](declarations/vpullbackcone.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [vPullbackConeIsLimit](declarations/vpullbackconeislimit.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [isoCarrier](declarations/isocarrier.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ι_isoCarrier_inv](declarations/isocarrier-inv.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [Rel](declarations/rel.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [ι_eq_iff](declarations/eq-iff.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [isOpen_iff](declarations/isopen-iff.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [openCover](declarations/opencover.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [gluedCoverT'](declarations/gluedcovert.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [gluedCoverT'_fst_fst](declarations/gluedcovert-fst-fst.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [gluedCoverT'_fst_snd](declarations/gluedcovert-fst-snd.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [gluedCoverT'_snd_fst](declarations/gluedcovert-snd-fst.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [gluedCoverT'_snd_snd](declarations/gluedcovert-snd-snd.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [glued_cover_cocycle_fst](declarations/glued-cover-cocycle-fst.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [glued_cover_cocycle_snd](declarations/glued-cover-cocycle-snd.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [glued_cover_cocycle](declarations/glued-cover-cocycle.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [gluedCover](declarations/gluedcover.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [fromGlued](declarations/fromglued.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [ι_fromGlued](declarations/fromglued-source-edition-2.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [fromGlued_injective](declarations/fromglued-injective.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [fromGlued_stalk_iso](declarations/fromglued-stalk-iso.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [fromGlued_open_map](declarations/fromglued-open-map.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [fromGlued_openEmbedding](declarations/fromglued-openembedding.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [fromGlued_open_immersion](declarations/fromglued-open-immersion.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [glueMorphisms](declarations/gluemorphisms.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [ι_glueMorphisms](declarations/gluemorphisms-source-edition-2.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [hom_ext](declarations/hom-ext.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b81cdf15b004a94acbcefce480d1318f81d593d545cb5322c4d1adc430704897 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variant5e6bafd70d8ce341d6eaf5a72d0fbca8414279ddf5260a176a64506ae2660fa0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
