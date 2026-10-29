# Error Transform Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**42 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorTransform/Variantf7352cf1918afdd1e13e3ae123a4e27e2113d29831da5702fb6cd82f220ed9a1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b4f03457fc634d747ab0c19df315ad47aba748fe`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GroupTheoryAndGeneralizations/Semigroups/ErrorTransformNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ErrorFactor](declarations/errorfactor.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [toResidualBound](declarations/toresidualbound.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [advance](declarations/advance.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [propagateFrom](declarations/propagatefrom.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [propagateResiduals](declarations/propagateresiduals.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [downstreamGain](declarations/downstreamgain.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [weightedResidual](declarations/weightedresidual.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [advance_def](declarations/advance-def.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [propagateFrom_nil](declarations/propagatefrom-nil.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [propagateFrom_cons](declarations/propagatefrom-cons.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [propagateFrom_append](declarations/propagatefrom-append.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [propagateFrom_closedForm](declarations/propagatefrom-closedform.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [propagateResiduals_closedForm](declarations/propagateresiduals-closedform.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [ErrorTransform](declarations/errortransform.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [apply](declarations/apply.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [id](declarations/id.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [comp](declarations/comp.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [ofFactor](declarations/offactor.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [apply_def](declarations/apply-def.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [id_apply](declarations/id-apply.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [comp_apply](declarations/comp-apply.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [id_comp](declarations/id-comp.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [comp_id](declarations/comp-id.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [comp_assoc](declarations/comp-assoc.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [segment](declarations/segment.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [segment_nil](declarations/segment-nil.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [segment_cons](declarations/segment-cons.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [segment_apply](declarations/segment-apply.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [segment_gain](declarations/segment-gain.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [segment_offset](declarations/segment-offset.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [toErrorTransform](declarations/toerrortransform.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [toErrorFactor](declarations/toerrorfactor.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [errorTransformer](declarations/errortransformer.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [toErrorTransform_comp](declarations/toerrortransform-comp.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [toErrorTransform_toErrorFactor](declarations/toerrortransform-toerrorfactor.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [errorTransformer_comp](declarations/errortransformer-comp.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [input_error_bound](declarations/input-error-bound.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [comp_lipschitz_assoc](declarations/comp-lipschitz-assoc.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [comp_reference_assoc](declarations/comp-reference-assoc.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [comp_implementation_assoc](declarations/comp-implementation-assoc.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a66e3c912d4a33def3cab7e53367a2ec4eae1d1169e1d82428fc05ff32df8e5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorTransform/Variantf7352cf1918afdd1e13e3ae123a4e27e2113d29831da5702fb6cd82f220ed9a1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
