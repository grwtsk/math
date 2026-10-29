# Frey Two Even Summand Chamber

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `854d11ec51383abb3f3e4ca03c207e40bca2964c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/DiophantineEquations/FreyTwoEvenSummandChamber.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](declarations/instance.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Chamber](declarations/chamber.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [chamber_iff](declarations/chamber-iff.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Chamber.m_pos](declarations/chamber-m-pos.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Chamber.product_cast](declarations/chamber-product-cast.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [Chamber.c_odd](declarations/chamber-c-odd.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [disjoint_previous](declarations/disjoint-previous.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [of_even_a](declarations/of-even-a.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [of_even_b](declarations/of-even-b.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [integralModel](declarations/integralmodel.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [changedCurve](declarations/changedcurve.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [integralModel_baseChange](declarations/integralmodel-basechange.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [changedCurve_j](declarations/changedcurve-j.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [c4_scaling](declarations/c4-scaling.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [delta_as_square](declarations/delta-as-square.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [delta_scaling](declarations/delta-scaling.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [localModel](declarations/localmodel.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [localModel_baseChange](declarations/localmodel-basechange.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [local_c4_unit](declarations/local-c4-unit.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [local_delta_unit_iff](declarations/local-delta-unit-iff.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [minimal_at_two](declarations/minimal-at-two.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [good_at_two](declarations/good-at-two.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [multiplicative_at_two](declarations/multiplicative-at-two.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [good_iff](declarations/good-iff.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [multiplicative_iff](declarations/multiplicative-iff.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [multiplicative_iff_32_dvd](declarations/multiplicative-iff-32-dvd.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [good_iff_not_32_dvd](declarations/good-iff-not-32-dvd.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [not_additive_at_two](declarations/not-additive-at-two.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [depth_two_zero](declarations/depth-two-zero.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [delta_natAbs](declarations/delta-natabs.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [minimal_delta_depth](declarations/minimal-delta-depth.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [source_product_depth](declarations/source-product-depth.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [minimal_depth_balance](declarations/minimal-depth-balance.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [marked_j_agrees](declarations/marked-j-agrees.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [evenASource](declarations/evenasource.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [evenAChamber](declarations/evenachamber.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [first_family_delta](declarations/first-family-delta.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [second_family_delta](declarations/second-family-delta.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f585ed4040a629a6a6e54c4e8efa11da5a04e97c8bc524a58dc78b2ae3de3b09 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoEvenSummandChamber.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
