# Measurable Space Basic

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**58 observed declarations and anonymous commands**, 55 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `45ee37111aa5e834a18dc2e07d67763f84871e4a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/MeasurableSpaceBasic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [map](declarations/map.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [map_def](declarations/map-def.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [map_id](declarations/map-id.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [map_comp](declarations/map-comp.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [comap](declarations/comap.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [measurableSet_comap](declarations/measurableset-comap.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [comap_eq_generateFrom](declarations/comap-eq-generatefrom.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [comap_id](declarations/comap-id.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [comap_comp](declarations/comap-comp.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [comap_le_iff_le_map](declarations/comap-le-iff-le-map.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [gc_comap_map](declarations/gc-comap-map.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [map_mono](declarations/map-mono.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [monotone_map](declarations/monotone-map.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [comap_mono](declarations/comap-mono.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [monotone_comap](declarations/monotone-comap.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [comap_bot](declarations/comap-bot.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [comap_sup](declarations/comap-sup.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [comap_iSup](declarations/comap-isup.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [map_top](declarations/map-top.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [map_inf](declarations/map-inf.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [map_iInf](declarations/map-iinf.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [comap_map_le](declarations/comap-map-le.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [le_map_comap](declarations/le-map-comap.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [map_const](declarations/map-const.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [comap_const](declarations/comap-const.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [comap_generateFrom](declarations/comap-generatefrom.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [measurable_iff_le_map](declarations/measurable-iff-le-map.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [measurable_iff_comap_le](declarations/measurable-iff-comap-le.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [comap_measurable](declarations/comap-measurable.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Measurable.mono](declarations/measurable-mono.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [Measurable.iSup'](declarations/measurable-isup.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [Measurable.sup_of_left](declarations/measurable-sup-of-left.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [Measurable.sup_of_right](declarations/measurable-sup-of-right.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [measurable_id''](declarations/measurable-id.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [measurable_from_top](declarations/measurable-from-top.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [measurable_generateFrom](declarations/measurable-generatefrom.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [Subsingleton.measurable](declarations/subsingleton-measurable.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [measurable_of_subsingleton_codomain](declarations/measurable-of-subsingleton-codomain.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [measurable_one](declarations/measurable-one.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [measurable_of_empty](declarations/measurable-of-empty.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [measurable_of_empty_codomain](declarations/measurable-of-empty-codomain.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [measurable_const'](declarations/measurable-const.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [measurable_natCast](declarations/measurable-natcast.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [measurable_intCast](declarations/measurable-intcast.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [measurable_of_countable](declarations/measurable-of-countable.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [measurable_of_finite](declarations/measurable-of-finite.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [Measurable.iterate](declarations/measurable-iterate.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [measurableSet_preimage](declarations/measurableset-preimage.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [MeasurableSet.preimage](declarations/measurableset-preimage-source-edition-2.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [Measurable.piecewise](declarations/measurable-piecewise.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [Measurable.ite](declarations/measurable-ite.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [Measurable.indicator](declarations/measurable-indicator.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [measurable_indicator_const_iff](declarations/measurable-indicator-const-iff.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [measurableSet_mulSupport](declarations/measurableset-mulsupport.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [Measurable.measurable_of_countable_ne](declarations/measurable-measurable-of-countable-ne.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [IsCountablySpanning](declarations/iscountablyspanning.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [isCountablySpanning_measurableSet](declarations/iscountablyspanning-measurableset.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [IsCountablySpanning.prod](declarations/iscountablyspanning-prod.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=62e31274802fd06c3c7aac364cf385096a5bfd1447e39af72caccd5808224c38 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
