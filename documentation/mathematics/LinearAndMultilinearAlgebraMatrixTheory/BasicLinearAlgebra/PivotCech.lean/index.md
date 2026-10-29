# Pivot Cech

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1f13fe7d0620709e27fa882da8e740d611cf7ba`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PivotCech.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuous_columnSubmatrix](declarations/continuous-columnsubmatrix.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [continuous_columnMinor](declarations/continuous-columnminor.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [framePivotDomain](declarations/framepivotdomain.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [isOpen_framePivotDomain](declarations/isopen-framepivotdomain.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [continuousAt_pivotNormalize](declarations/continuousat-pivotnormalize.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [continuousAt_pivotTransition](declarations/continuousat-pivottransition.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [NormalizedPivotFrame](declarations/normalizedpivotframe.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [normalizedPivotFrame_rank](declarations/normalizedpivotframe-rank.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [normalizedPivotPlane](declarations/normalizedpivotplane.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [intrinsicAtlasMap](declarations/intrinsicatlasmap.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [intrinsicAtlasTopology](declarations/intrinsicatlastopology.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [continuous_normalizedPivotPlane](declarations/continuous-normalizedpivotplane.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [intrinsicPivotDomain](declarations/intrinsicpivotdomain.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [representedPlane_mem_intrinsicPivotDomain_iff](declarations/representedplane-mem-intrinsicpivotdomain-iff.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [isOpen_intrinsicPivotDomain](declarations/isopen-intrinsicpivotdomain.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [intrinsicPivotDomain_cover](declarations/intrinsicpivotdomain-cover.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [intrinsicAtlasMap_surjective](declarations/intrinsicatlasmap-surjective.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `abbrev` | [NormalizedPivotOverlap](declarations/normalizedpivotoverlap.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [normalizedOverlapChange](declarations/normalizedoverlapchange.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [normalizedOverlapChange_inverse](declarations/normalizedoverlapchange-inverse.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [continuous_normalizedOverlapChange](declarations/continuous-normalizedoverlapchange.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [normalizedOverlapHomeomorph](declarations/normalizedoverlaphomeomorph.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `abbrev` | [OpenCoverCech](declarations/opencovercech.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [openCoverCechTopology](declarations/opencovercechtopology.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [cechReindex](declarations/cechreindex.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [cechReindex_id](declarations/cechreindex-id.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [cechReindex_comp](declarations/cechreindex-comp.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [continuous_cechReindex](declarations/continuous-cechreindex.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [cechAugment](declarations/cechaugment.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [continuous_cechAugment](declarations/continuous-cechaugment.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [cechAugment_surjective](declarations/cechaugment-surjective.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [cechOverlapFiberEquiv](declarations/cechoverlapfiberequiv.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `abbrev` | [IntrinsicPivotCech](declarations/intrinsicpivotcech.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [intrinsicPivotCech_augmentation_surjective](declarations/intrinsicpivotcech-augmentation-surjective.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fafe497f612f7ec806587fe55a008981ff3d2f750658b971dca5168d70e07fbc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/PivotCech/Variant58c4881f09fab94bdf5a21d2352c0e4f80f780c029b5e5024cffd21755b87f72.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
