# Subslice Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `193e7ec99fd129e78330fdd44940d901cc48dac2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/SubslicePublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Subslice](declarations/subslice-source-edition-2.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [toSlice](declarations/toslice.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [str_toSlice](declarations/str-toslice.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [startInclusive_toSlice](declarations/startinclusive-toslice.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [endExclusive_toSlice](declarations/endexclusive-toslice.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [isEmpty_toSlice_iff](declarations/isempty-toslice-iff.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [copy](declarations/copy.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [toString](declarations/tostring.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [copy_eq](declarations/copy-eq.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [toString_eq](declarations/tostring-eq.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toStringToString_eq](declarations/tostringtostring-eq.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [subslice](declarations/subslice-source-edition-3.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [toSlice_subslice](declarations/toslice-subslice.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [startInclusive_subslice](declarations/startinclusive-subslice.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [endExclusive_subslice](declarations/endexclusive-subslice.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [subslice!](declarations/subslice.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [subslice!_eq_subslice](declarations/subslice-eq-subslice.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [subsliceFrom](declarations/subslicefrom.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [startInclusive_subsliceFrom](declarations/startinclusive-subslicefrom.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [endExclusive_subsliceFrom](declarations/endexclusive-subslicefrom.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [subslice_endPos](declarations/subslice-endpos.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toSlice_subsliceFrom](declarations/toslice-subslicefrom.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [toSubslice](declarations/tosubslice.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [startInclusive_toSubslice](declarations/startinclusive-tosubslice.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [endExclusive_toSubslice](declarations/endexclusive-tosubslice.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [ofSliceFrom](declarations/ofslicefrom.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [startInclusive_ofSliceFrom](declarations/startinclusive-ofslicefrom.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [endExclusive_ofSliceFrom](declarations/endexclusive-ofslicefrom.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [extendLeft](declarations/extendleft.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [startInclusive_extendLeft](declarations/startinclusive-extendleft.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [endExclusive_extendLeft](declarations/endexclusive-extendleft.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [extendLeft_extendLeft](declarations/extendleft-extendleft.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [extendLeft_self](declarations/extendleft-self.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [cast](declarations/cast.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [startInclusive_cast](declarations/startinclusive-cast.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [endExclusive_cast](declarations/endexclusive-cast.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [cast_rfl](declarations/cast-rfl.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7207f9535cc386f67d34f78a0c621e75c071e3daf443ef150ed4c106ddadd04d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variantb4dedbb92cfca7c41e01c532711447579937aec38aac9140836bd11fd72d461f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
