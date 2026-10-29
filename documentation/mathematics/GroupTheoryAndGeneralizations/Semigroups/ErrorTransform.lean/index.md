# Error Transform

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**42 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorTransform/Variant3811eba58a49d9c0e5e3e3dcd2d74efbfa9bb5929b4f76e044f4134552159688.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9929c1d75e2405e2d37e6283202913d3b78d7a1a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GroupTheoryAndGeneralizations/Semigroups/ErrorTransform.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ErrorFactor](declarations/errorfactor.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [toResidualBound](declarations/toresidualbound.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [advance](declarations/advance.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [propagateFrom](declarations/propagatefrom.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [propagateResiduals](declarations/propagateresiduals.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [downstreamGain](declarations/downstreamgain.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [weightedResidual](declarations/weightedresidual.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [advance_def](declarations/advance-def.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [propagateFrom_nil](declarations/propagatefrom-nil.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [propagateFrom_cons](declarations/propagatefrom-cons.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [propagateFrom_append](declarations/propagatefrom-append.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [propagateFrom_closedForm](declarations/propagatefrom-closedform.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [propagateResiduals_closedForm](declarations/propagateresiduals-closedform.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [ErrorTransform](declarations/errortransform.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [apply](declarations/apply.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [id](declarations/id.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [comp](declarations/comp.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [ofFactor](declarations/offactor.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [apply_def](declarations/apply-def.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [id_apply](declarations/id-apply.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [comp_apply](declarations/comp-apply.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [id_comp](declarations/id-comp.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [comp_id](declarations/comp-id.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [comp_assoc](declarations/comp-assoc.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [segment](declarations/segment.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [segment_nil](declarations/segment-nil.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [segment_cons](declarations/segment-cons.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [segment_apply](declarations/segment-apply.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [segment_gain](declarations/segment-gain.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [segment_offset](declarations/segment-offset.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [toErrorTransform](declarations/toerrortransform.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [toErrorFactor](declarations/toerrorfactor.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [errorTransformer](declarations/errortransformer.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [toErrorTransform_comp](declarations/toerrortransform-comp.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [toErrorTransform_toErrorFactor](declarations/toerrortransform-toerrorfactor.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [errorTransformer_comp](declarations/errortransformer-comp.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [input_error_bound](declarations/input-error-bound.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [comp_lipschitz_assoc](declarations/comp-lipschitz-assoc.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [comp_reference_assoc](declarations/comp-reference-assoc.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [comp_implementation_assoc](declarations/comp-implementation-assoc.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c7caa404c4e8700f73be7e8729b68105ee84b35339c0534b7486f76b2a7bd0af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ErrorTransform/Variant3811eba58a49d9c0e5e3e3dcd2d74efbfa9bb5929b4f76e044f4134552159688.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
