# Frey Integral Jet Charts

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**22 observed declarations and anonymous commands**, 13 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d0921d583705c3b381c4a4ee70bd5655a2c4c3ae`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/FreyIntegralJetCharts.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [PrimitiveAdditiveTriple.freyPortRootInt](declarations/primitiveadditivetriple-freyportrootint.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [PrimitiveAdditiveTriple.freyPortRootInt_cast](declarations/primitiveadditivetriple-freyportrootint-cast.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [PrimitiveAdditiveTriple.freyJacobian_partition_one](declarations/primitiveadditivetriple-freyjacobian-partition-one.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [PrimitiveAdditiveTriple.freyJacobian_span_eq_top](declarations/primitiveadditivetriple-freyjacobian-span-eq-top.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [PrimitiveAdditiveTriple.freyJacobian_avoids_proper_ideal](declarations/primitiveadditivetriple-freyjacobian-avoids-proper-ideal.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [FreyJetChart](declarations/freyjetchart.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [PrimitiveAdditiveTriple.freyChartInverse](declarations/primitiveadditivetriple-freychartinverse.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [PrimitiveAdditiveTriple.freyChart_mul_inverse](declarations/primitiveadditivetriple-freychart-mul-inverse.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [PrimitiveAdditiveTriple.freyChartMap](declarations/primitiveadditivetriple-freychartmap.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [PrimitiveAdditiveTriple.freyChartMap_integer](declarations/primitiveadditivetriple-freychartmap-integer.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [PrimitiveAdditiveTriple.freyChartMap_comp](declarations/primitiveadditivetriple-freychartmap-comp.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [PrimitiveAdditiveTriple.freyChartMap_inverse](declarations/primitiveadditivetriple-freychartmap-inverse.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [PrimitiveAdditiveTriple.freyChartApproximant](declarations/primitiveadditivetriple-freychartapproximant.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [PrimitiveAdditiveTriple.freyChartApproximant_map](declarations/primitiveadditivetriple-freychartapproximant-map.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [PrimitiveAdditiveTriple.freyChartApproximant_toRat](declarations/primitiveadditivetriple-freychartapproximant-torat.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [PrimitiveAdditiveTriple.freyPort_shifted_cubic](declarations/primitiveadditivetriple-freyport-shifted-cubic.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [PrimitiveAdditiveTriple.freyCurveNeighborhood](declarations/primitiveadditivetriple-freycurveneighborhood.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [PrimitiveAdditiveTriple.freyIntegralEquation_iff](declarations/primitiveadditivetriple-freyintegralequation-iff.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [PrimitiveAdditiveTriple.freyCurveNeighborhood_equation](declarations/primitiveadditivetriple-freycurveneighborhood-equation.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [PrimitiveAdditiveTriple.freyCurveNeighborhood_shift](declarations/primitiveadditivetriple-freycurveneighborhood-shift.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [PrimitiveAdditiveTriple.freyCurveNeighborhood_equiv](declarations/primitiveadditivetriple-freycurveneighborhood-equiv.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [PrimitiveAdditiveTriple.freyIntegralNeighborhood_equiv](declarations/primitiveadditivetriple-freyintegralneighborhood-equiv.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=69281c5f432e18e1a7ad4652ba4921d105346506ac2edb12485d2c23b95a470f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyIntegralJetCharts.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
