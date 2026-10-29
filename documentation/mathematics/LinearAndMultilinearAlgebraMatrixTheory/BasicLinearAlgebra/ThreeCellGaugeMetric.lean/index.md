# Three Cell Gauge Metric

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 33 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/LinearAlgebra/ThreeCellGaugeMetric.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `450657419f5f489b567d1dd63a31bfcc3c56cf41`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThreeCellGaugeMetric.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [reduction](declarations/reduction.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [GaugeQuotient](declarations/gaugequotient.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [classOf](declarations/classof.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [quotientEquiv](declarations/quotientequiv.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [quotientEquiv_classOf](declarations/quotientequiv-classof.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [classOf_eq_iff_reduced](declarations/classof-eq-iff-reduced.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [classOf_eq_iff_gauge](declarations/classof-eq-iff-gauge.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [minimumRep](declarations/minimumrep.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [reduced_minimumRep](declarations/reduced-minimumrep.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [normalForm](declarations/normalform.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [reduced_normalForm](declarations/reduced-normalform.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [normalForm_idempotent](declarations/normalform-idempotent.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [gaugeRemainder](declarations/gaugeremainder.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [gaugeRemainder_mean](declarations/gaugeremainder-mean.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [normal_decomposition](declarations/normal-decomposition.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [representative](declarations/representative.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [classOf_representative](declarations/classof-representative.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [representative_classOf](declarations/representative-classof.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [quotientRelax](declarations/quotientrelax.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [quotientRelax_classOf_hodge](declarations/quotientrelax-classof-hodge.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [quotientRelax_classOf_tree](declarations/quotientrelax-classof-tree.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [normalForm_hodge](declarations/normalform-hodge.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [normalForm_tree](declarations/normalform-tree.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [reduced_map](declarations/reduced-map.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [normalForm_clear12](declarations/normalform-clear12.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [normalForm_map](declarations/normalform-map.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [reducedEnergy](declarations/reducedenergy.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [quotientEnergy](declarations/quotientenergy.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [dot3_self_nonneg](declarations/dot3-self-nonneg.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [dot3_self_zero_iff](declarations/dot3-self-zero-iff.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [pythagorean](declarations/pythagorean.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [minimumRep_energy](declarations/minimumrep-energy.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [minimumRep_unique](declarations/minimumrep-unique.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [minimumRep_le](declarations/minimumrep-le.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [reducedEnergy_nonneg](declarations/reducedenergy-nonneg.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [reducedEnergy_zero_iff](declarations/reducedenergy-zero-iff.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [quotientEnergy_zero_iff](declarations/quotientenergy-zero-iff.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [reducedEnergy_bounds](declarations/reducedenergy-bounds.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [quotientEnergy_minimum](declarations/quotientenergy-minimum.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [reducedEnergy_attenuation](declarations/reducedenergy-attenuation.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [quotientEnergy_contraction](declarations/quotientenergy-contraction.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [unit_vertex_normalForm](declarations/unit-vertex-normalform.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [nonzero_gauge_zero_class](declarations/nonzero-gauge-zero-class.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [sharp_reduced_weights](declarations/sharp-reduced-weights.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=03dc53ca74856c71aaf426d1b57deaa671d76481da4143e65b6ebb794d46bd06 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean","GRWTSK/Analysis/LinearAlgebra/ThreeCellGaugeMetric.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
