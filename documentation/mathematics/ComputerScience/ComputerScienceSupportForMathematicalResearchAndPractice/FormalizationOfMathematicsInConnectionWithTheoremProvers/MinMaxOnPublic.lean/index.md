# Min Max On Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 30 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b816077f04ff6676d13c0cd4d3e94096e2ce9155`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/MinMaxOnPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [minOn](declarations/minon.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [maxOn](declarations/maxon.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [minOn_id](declarations/minon-id.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [maxOn_id](declarations/maxon-id.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [minOn_eq_or](declarations/minon-eq-or.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [minOn_self](declarations/minon-self.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [minOn_eq_left](declarations/minon-eq-left.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [minOn_eq_right](declarations/minon-eq-right.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [minOn_eq_right_of_lt](declarations/minon-eq-right-of-lt.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [apply_minOn_le_left](declarations/apply-minon-le-left.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [apply_minOn_le_right](declarations/apply-minon-le-right.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [le_apply_minOn_iff](declarations/le-apply-minon-iff.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [minOn_assoc](declarations/minon-assoc.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [min_apply](declarations/min-apply.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [minOn_eq_if](declarations/minon-eq-if.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [minOn_eq_min](declarations/minon-eq-min.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [min_apply_eq_min](declarations/min-apply-eq-min.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [maxOn_eq_minOn](declarations/maxon-eq-minon.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [maxOn_eq_or](declarations/maxon-eq-or.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [maxOn_self](declarations/maxon-self.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [maxOn_eq_left](declarations/maxon-eq-left.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [maxOn_eq_right](declarations/maxon-eq-right.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [maxOn_eq_right_of_lt](declarations/maxon-eq-right-of-lt.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [left_le_apply_maxOn](declarations/left-le-apply-maxon.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [right_le_apply_maxOn](declarations/right-le-apply-maxon.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [apply_maxOn_le_iff](declarations/apply-maxon-le-iff.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [maxOn_assoc](declarations/maxon-assoc.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [max_apply](declarations/max-apply.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [apply_maxOn](declarations/apply-maxon.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [maxOn_eq_if](declarations/maxon-eq-if.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [maxOn_eq_max](declarations/maxon-eq-max.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [max_apply_eq_max](declarations/max-apply-eq-max.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7887fed7fcfa096034157375e98ce26c84ec564850b08d5b8552fd180f4de972 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MinMaxOn/Variant5b5ac04cc20b1b53b920704d763459685fe1eb0e622f3717036eb845100f8a5d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
