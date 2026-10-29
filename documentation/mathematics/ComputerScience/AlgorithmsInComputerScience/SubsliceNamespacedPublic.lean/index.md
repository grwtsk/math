# Subslice Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variant5be053d16c6a8fc85cacce8d81c0bdb2f062ab9db93262e8175801077c108e57.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `649c9a7df2be15285a818fcd51d4bccd978709d7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/SubsliceNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Subslice](declarations/subslice-source-edition-2.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [toSlice](declarations/toslice.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [str_toSlice](declarations/str-toslice.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [startInclusive_toSlice](declarations/startinclusive-toslice.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [endExclusive_toSlice](declarations/endexclusive-toslice.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [isEmpty_toSlice_iff](declarations/isempty-toslice-iff.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [copy](declarations/copy.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [toString](declarations/tostring.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [copy_eq](declarations/copy-eq.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [toString_eq](declarations/tostring-eq.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toStringToString_eq](declarations/tostringtostring-eq.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [subslice](declarations/subslice-source-edition-3.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [toSlice_subslice](declarations/toslice-subslice.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [startInclusive_subslice](declarations/startinclusive-subslice.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [endExclusive_subslice](declarations/endexclusive-subslice.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [subslice!](declarations/subslice.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [subslice!_eq_subslice](declarations/subslice-eq-subslice.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [subsliceFrom](declarations/subslicefrom.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [startInclusive_subsliceFrom](declarations/startinclusive-subslicefrom.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [endExclusive_subsliceFrom](declarations/endexclusive-subslicefrom.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [subslice_endPos](declarations/subslice-endpos.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [toSlice_subsliceFrom](declarations/toslice-subslicefrom.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [toSubslice](declarations/tosubslice.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [startInclusive_toSubslice](declarations/startinclusive-tosubslice.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [endExclusive_toSubslice](declarations/endexclusive-tosubslice.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [ofSliceFrom](declarations/ofslicefrom.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [startInclusive_ofSliceFrom](declarations/startinclusive-ofslicefrom.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [endExclusive_ofSliceFrom](declarations/endexclusive-ofslicefrom.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [extendLeft](declarations/extendleft.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [startInclusive_extendLeft](declarations/startinclusive-extendleft.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [endExclusive_extendLeft](declarations/endexclusive-extendleft.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [extendLeft_extendLeft](declarations/extendleft-extendleft.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [extendLeft_self](declarations/extendleft-self.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [cast](declarations/cast.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [startInclusive_cast](declarations/startinclusive-cast.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [endExclusive_cast](declarations/endexclusive-cast.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [cast_rfl](declarations/cast-rfl.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eb6f73ee4492fd2037c8051f343fea94e506a83d6a44c24d197d02836846c0c0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Subslice/Variant5be053d16c6a8fc85cacce8d81c0bdb2f062ab9db93262e8175801077c108e57.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
