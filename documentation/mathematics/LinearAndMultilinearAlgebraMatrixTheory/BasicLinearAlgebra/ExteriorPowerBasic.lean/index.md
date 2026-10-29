# Exterior Power Basic

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c1c70f50e11fb2cfab85ab8fbb90dd020c20fae6`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorPowerBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [ιMulti](declarations/multi.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [ιMulti_apply_coe](declarations/multi-apply-coe.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [ιMulti_family](declarations/multi-family.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [ιMulti_family_apply_coe](declarations/multi-family-apply-coe.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [ιMulti_span_fixedDegree](declarations/multi-span-fixeddegree.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [ιMulti_span](declarations/multi-span.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [Rels](declarations/rels.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [relations](declarations/relations.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [relationsSolutionEquiv](declarations/relationssolutionequiv.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [isPresentationCore](declarations/ispresentationcore.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [presentation](declarations/presentation.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [linearMap_ext](declarations/linearmap-ext.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [alternatingMapLinearEquiv](declarations/alternatingmaplinearequiv.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [alternatingMapLinearEquiv_comp_ιMulti](declarations/alternatingmaplinearequiv-comp-multi.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [alternatingMapLinearEquiv_apply_ιMulti](declarations/alternatingmaplinearequiv-apply-multi.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [alternatingMapLinearEquiv_symm_apply](declarations/alternatingmaplinearequiv-symm-apply.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [alternatingMapLinearEquiv_ιMulti](declarations/alternatingmaplinearequiv-multi.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [alternatingMapLinearEquiv_comp](declarations/alternatingmaplinearequiv-comp.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [map](declarations/map.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [alternatingMapLinearEquiv_symm_map](declarations/alternatingmaplinearequiv-symm-map.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [map_comp_ιMulti](declarations/map-comp-multi.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [map_apply_ιMulti](declarations/map-apply-multi.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [map_comp_ιMulti_family](declarations/map-comp-multi-family.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [map_apply_ιMulti_family](declarations/map-apply-multi-family.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [map_id](declarations/map-id.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [map_comp](declarations/map-comp.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [zeroEquiv](declarations/zeroequiv.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [zeroEquiv_ιMulti](declarations/zeroequiv-multi.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [zeroEquiv_naturality](declarations/zeroequiv-naturality.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [oneEquiv](declarations/oneequiv.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [oneEquiv_ιMulti](declarations/oneequiv-multi.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [oneEquiv_naturality](declarations/oneequiv-naturality.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=06cc2476da2f374600aa49d6d8b32d73bc1ddaf62593c6ed026ebd5537d972c0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variante97ceeca1401a408bd92f972dabb831e8804e9a272c1a3a7dbf61f6d01ae52b8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
