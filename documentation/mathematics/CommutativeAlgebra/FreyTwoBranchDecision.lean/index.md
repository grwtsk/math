# Frey Two Branch Decision

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `99857f53e9a4104f4462ad5e2f0c21048b94df5d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/FreyTwoBranchDecision.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [c6Shape](declarations/c6shape.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [raw_c6](declarations/raw-c6.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [modEight](declarations/modeight.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [modEight_int](declarations/modeight-int.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [scale_one_unit](declarations/scale-one-unit.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [scale_one_c4_unit](declarations/scale-one-c4-unit.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [scale_one_obstruction](declarations/scale-one-obstruction.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Descends](declarations/descends.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [descends_chambers](declarations/descends-chambers.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [toEight](declarations/toeight.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [toFour](declarations/tofour.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [toTwo](declarations/totwo.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [residue_table](declarations/residue-table.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [nat_mod_four](declarations/nat-mod-four.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [int_mod_four](declarations/int-mod-four.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [obstruction_iff_descends](declarations/obstruction-iff-descends.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [correction_twelve_iff](declarations/correction-twelve-iff.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [correction_zero_iff](declarations/correction-zero-iff.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [correction_formula](declarations/correction-formula.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [minimum_formula](declarations/minimum-formula.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [raw_minimal_iff](declarations/raw-minimal-iff.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [raw_additive_iff](declarations/raw-additive-iff.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [selectedChange](declarations/selectedchange.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [selectedCurve](declarations/selectedcurve.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [selected_minimal](declarations/selected-minimal.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [selected_exponent](declarations/selected-exponent.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [selected_j](declarations/selected-j.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [selected_scale](declarations/selected-scale.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [selected_c4_value](declarations/selected-c4-value.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [selected_additive_iff](declarations/selected-additive-iff.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [selected_good_iff](declarations/selected-good-iff.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [selected_multiplicative_iff](declarations/selected-multiplicative-iff.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be5726c3789b36905bc2838fb2d9282ee07f0b6dd7001b9ec54e3d6b466d345d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoBranchDecision.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
