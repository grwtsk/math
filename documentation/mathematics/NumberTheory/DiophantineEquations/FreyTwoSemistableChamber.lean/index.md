# Frey Two Semistable Chamber

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 30 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea647742e9dad74403d5bec536369d8f621bc282`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/DiophantineEquations/FreyTwoSemistableChamber.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](declarations/instance.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Chamber](declarations/chamber.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [chamber_iff](declarations/chamber-iff.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Chamber.n_pos](declarations/chamber-n-pos.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Chamber.a_odd](declarations/chamber-a-odd.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [Chamber.b_odd](declarations/chamber-b-odd.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [Chamber.a_cast](declarations/chamber-a-cast.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [Chamber.b_cast](declarations/chamber-b-cast.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [integralModel](declarations/integralmodel.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [changedCurve](declarations/changedcurve.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [integralModel_baseChange](declarations/integralmodel-basechange.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [changedCurve_j](declarations/changedcurve-j.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [c4_scaling](declarations/c4-scaling.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [delta_as_square](declarations/delta-as-square.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [delta_scaling](declarations/delta-scaling.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [localModel](declarations/localmodel.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [localModel_baseChange](declarations/localmodel-basechange.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [local_c4_unit](declarations/local-c4-unit.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [local_delta_unit_iff](declarations/local-delta-unit-iff.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [minimal_at_two](declarations/minimal-at-two.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [good_at_two](declarations/good-at-two.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [multiplicative_at_two](declarations/multiplicative-at-two.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [good_iff](declarations/good-iff.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [multiplicative_iff](declarations/multiplicative-iff.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [multiplicative_iff_32_dvd](declarations/multiplicative-iff-32-dvd.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [good_iff_not_32_dvd](declarations/good-iff-not-32-dvd.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [not_additive_at_two](declarations/not-additive-at-two.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [depth_two_zero](declarations/depth-two-zero.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [delta_natAbs](declarations/delta-natabs.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [minimal_delta_depth](declarations/minimal-delta-depth.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [source_c_depth](declarations/source-c-depth.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [minimal_depth_balance](declarations/minimal-depth-balance.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [marked_j_agrees](declarations/marked-j-agrees.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [unitChamber](declarations/unitchamber.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [first_family_delta](declarations/first-family-delta.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [second_family_delta](declarations/second-family-delta.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=13f473100f0a44a1ca14df9243a316f803bbcd8e1a076f49fe1f1cd81e24cb1d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
