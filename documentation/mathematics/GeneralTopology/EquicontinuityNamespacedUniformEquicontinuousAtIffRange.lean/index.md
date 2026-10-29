# Equicontinuity Namespaced Uniform Equicontinuous At Iff Range

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**53 observed declarations and anonymous commands**, 47 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Varianta107eb9792baa13e9a156196cba4dcaa936b6a49284a0e9525f3d2b681549307.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f3918835fb618e49c2296de4d36990368218b98`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/EquicontinuityNamespacedUniformEquicontinuousAtIffRange.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [EquicontinuousAt](declarations/equicontinuousat.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [Set.EquicontinuousAt](declarations/set-equicontinuousat.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Equicontinuous](declarations/equicontinuous.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [Set.Equicontinuous](declarations/set-equicontinuous.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [UniformEquicontinuous](declarations/uniformequicontinuous.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [Set.UniformEquicontinuous](declarations/set-uniformequicontinuous.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [equicontinuousAt_empty](declarations/equicontinuousat-empty.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [equicontinuous_empty](declarations/equicontinuous-empty.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [uniformEquicontinuous_empty](declarations/uniformequicontinuous-empty.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [equicontinuousAt_iff_pair](declarations/equicontinuousat-iff-pair.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [UniformEquicontinuous.equicontinuous](declarations/uniformequicontinuous-equicontinuous.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [EquicontinuousAt.continuousAt](declarations/equicontinuousat-continuousat.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [Set.EquicontinuousAt.continuousAt_of_mem](declarations/set-equicontinuousat-continuousat-of-mem.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [Equicontinuous.continuous](declarations/equicontinuous-continuous.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Set.Equicontinuous.continuous_of_mem](declarations/set-equicontinuous-continuous-of-mem.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [UniformEquicontinuous.uniformContinuous](declarations/uniformequicontinuous-uniformcontinuous.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [Set.UniformEquicontinuous.uniformContinuous_of_mem](declarations/set-uniformequicontinuous-uniformcontinuous-of-mem.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [EquicontinuousAt.comp](declarations/equicontinuousat-comp.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Set.EquicontinuousAt.mono](declarations/set-equicontinuousat-mono.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Equicontinuous.comp](declarations/equicontinuous-comp.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Set.Equicontinuous.mono](declarations/set-equicontinuous-mono.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [UniformEquicontinuous.comp](declarations/uniformequicontinuous-comp.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Set.UniformEquicontinuous.mono](declarations/set-uniformequicontinuous-mono.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [equicontinuousAt_iff_range](declarations/equicontinuousat-iff-range.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [equicontinuous_iff_range](declarations/equicontinuous-iff-range.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [uniformEquicontinuous_at_iff_range](declarations/uniformequicontinuous-at-iff-range.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [equicontinuousAt_iff_continuousAt](declarations/equicontinuousat-iff-continuousat.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [equicontinuous_iff_continuous](declarations/equicontinuous-iff-continuous.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [uniformEquicontinuous_iff_uniformContinuous](declarations/uniformequicontinuous-iff-uniformcontinuous.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [equicontinuousAt_iInf_rng](declarations/equicontinuousat-iinf-rng.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [equicontinuous_iInf_rng](declarations/equicontinuous-iinf-rng.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [uniformEquicontinuous_iInf_rng](declarations/uniformequicontinuous-iinf-rng.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [equicontinuousAt_iInf_dom](declarations/equicontinuousat-iinf-dom.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [equicontinuous_iInf_dom](declarations/equicontinuous-iinf-dom.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [uniform_equicontinuous_infi_dom](declarations/uniform-equicontinuous-infi-dom.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [Filter.HasBasis.equicontinuousAt_iff_left](declarations/filter-hasbasis-equicontinuousat-iff-left.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Filter.HasBasis.equicontinuousAt_iff_right](declarations/filter-hasbasis-equicontinuousat-iff-right.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [Filter.HasBasis.equicontinuousAt_iff](declarations/filter-hasbasis-equicontinuousat-iff.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Filter.HasBasis.uniformEquicontinuous_iff_left](declarations/filter-hasbasis-uniformequicontinuous-iff-left.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [Filter.HasBasis.uniformEquicontinuous_iff_right](declarations/filter-hasbasis-uniformequicontinuous-iff-right.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [Filter.HasBasis.uniformEquicontinuous_iff](declarations/filter-hasbasis-uniformequicontinuous-iff.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [UniformInducing.equicontinuousAt_iff](declarations/uniforminducing-equicontinuousat-iff.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [UniformInducing.equicontinuous_iff](declarations/uniforminducing-equicontinuous-iff.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [UniformInducing.uniformEquicontinuous_iff](declarations/uniforminducing-uniformequicontinuous-iff.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [EquicontinuousAt.closure'](declarations/equicontinuousat-closure-source-edition-2.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [EquicontinuousAt.closure](declarations/equicontinuousat-closure.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [Filter.Tendsto.continuousAt_of_equicontinuousAt](declarations/filter-tendsto-continuousat-of-equicontinuousat.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [Equicontinuous.closure'](declarations/equicontinuous-closure-source-edition-2.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [Equicontinuous.closure](declarations/equicontinuous-closure.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [Filter.Tendsto.continuous_of_equicontinuous_at](declarations/filter-tendsto-continuous-of-equicontinuous-at.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [UniformEquicontinuous.closure'](declarations/uniformequicontinuous-closure-source-edition-2.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [UniformEquicontinuous.closure](declarations/uniformequicontinuous-closure.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [Filter.Tendsto.uniformContinuous_of_uniformEquicontinuous](declarations/filter-tendsto-uniformcontinuous-of-uniformequicontinuous.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73e34d17dbe4a37a4fd30009d9bd62051efde744be5e2327e51580d9e35cfe5b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Varianta107eb9792baa13e9a156196cba4dcaa936b6a49284a0e9525f3d2b681549307.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
