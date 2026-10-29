# Three Cell Hodge Gauge

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**50 observed declarations and anonymous commands**, 33 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/LinearAlgebra/ThreeCellHodgeGauge.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dede9b689159b011b7845285c90222f7344de7aa`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/ThreeCellHodgeGauge.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Cell](declarations/cell.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [average](declarations/average.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [centered](declarations/centered.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [delta0Transpose](declarations/delta0transpose.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [delta1Transpose](declarations/delta1transpose.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [laplacian0](declarations/laplacian0.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [laplacian1](declarations/laplacian1.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [laplacian0_formula](declarations/laplacian0-formula.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [laplacian1_formula](declarations/laplacian1-formula.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [laplacian2_formula](declarations/laplacian2-formula.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [average_add](declarations/average-add.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [average_sub](declarations/average-sub.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [average_centered](declarations/average-centered.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [delta0_sub](declarations/delta0-sub.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [phaseRelax](declarations/phaserelax.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [hodgeRelax](declarations/hodgerelax.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [treeRelax](declarations/treerelax.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [gaugeShift](declarations/gaugeshift.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [comparisonGauge](declarations/comparisongauge.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [tree_hodge_gauge](declarations/tree-hodge-gauge.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [comparisonGauge_mean](declarations/comparisongauge-mean.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mismatch_gauge](declarations/mismatch-gauge.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [reduced](declarations/reduced.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [reduced_gauge](declarations/reduced-gauge.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [reduced_eq_iff_gauge](declarations/reduced-eq-iff-gauge.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [reduced_surjective](declarations/reduced-surjective.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [average_phaseRelax](declarations/average-phaserelax.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [reduced_hodge](declarations/reduced-hodge.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [reduced_tree_hodge](declarations/reduced-tree-hodge.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [hodgeRelax_one](declarations/hodgerelax-one.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [hodgeRelax_mul](declarations/hodgerelax-mul.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [hodge_fixed_iff](declarations/hodge-fixed-iff.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [tree_fixes_matching](declarations/tree-fixes-matching.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [comparisonGauge_map](declarations/comparisongauge-map.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [mapCell](declarations/mapcell.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [hodgeRelax_map](declarations/hodgerelax-map.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [scalar_phase_agrees](declarations/scalar-phase-agrees.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [scalar_laplacian0_agrees](declarations/scalar-laplacian0-agrees.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [hodge_vertex_derivative](declarations/hodge-vertex-derivative.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [hodge_edge_derivative](declarations/hodge-edge-derivative.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [dot3](declarations/dot3.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [delta0_adjoint](declarations/delta0-adjoint.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [delta1_adjoint](declarations/delta1-adjoint.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [rawEnergy](declarations/rawenergy.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [positiveEnergy](declarations/positiveenergy.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [positiveEnergy_nonneg](declarations/positiveenergy-nonneg.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [hodge_energy](declarations/hodge-energy.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [hodge_contraction](declarations/hodge-contraction.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [matched_flows_differ](declarations/matched-flows-differ.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [tree_half_expansion](declarations/tree-half-expansion.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e46697e4ce4656478b02b2186b334f7fa9fe4350afe1d1bbbbf86ce6e9e30701 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean","GRWTSK/Analysis/LinearAlgebra/ThreeCellHodgeGauge.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
