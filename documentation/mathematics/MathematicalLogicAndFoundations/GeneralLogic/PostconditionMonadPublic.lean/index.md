# Postcondition Monad Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `93361a83e8c3cacad91d1e90687ef4732e90cf2f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/PostconditionMonadPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [PostconditionT](declarations/postconditiont.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [PostconditionT.lift](declarations/postconditiont-lift.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [PostconditionT.attachLift](declarations/postconditiont-attachlift.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [PostconditionT.pure](declarations/postconditiont-pure.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [PostconditionT.liftWithProperty](declarations/postconditiont-liftwithproperty.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [PostconditionT.map](declarations/postconditiont-map.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [PostconditionT.bind](declarations/postconditiont-bind.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [PostconditionT.pbind](declarations/postconditiont-pbind.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [PostconditionT.liftMap](declarations/postconditiont-liftmap.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [PostconditionT.run](declarations/postconditiont-run.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [PostconditionT.run_eq_map](declarations/postconditiont-run-eq-map.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [PostconditionT.pure_eq_pure](declarations/postconditiont-pure-eq-pure.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [PostconditionT.property_pure](declarations/postconditiont-property-pure.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [PostconditionT.operation_pure](declarations/postconditiont-operation-pure.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [PostconditionT.ext](declarations/postconditiont-ext.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [PostconditionT.ext_iff](declarations/postconditiont-ext-iff.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [PostconditionT.map_eq_pure_bind](declarations/postconditiont-map-eq-pure-bind.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [PostconditionT.pure_bind](declarations/postconditiont-pure-bind.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [PostconditionT.bind_pure](declarations/postconditiont-bind-pure.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [PostconditionT.bind_assoc](declarations/postconditiont-bind-assoc.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [PostconditionT.map_pure](declarations/postconditiont-map-pure.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [PostconditionT.property_map](declarations/postconditiont-property-map.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [PostconditionT.operation_map](declarations/postconditiont-operation-map.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [PostconditionT.operation_bind](declarations/postconditiont-operation-bind-source-edition-2.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [PostconditionT.operation_bind'](declarations/postconditiont-operation-bind.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [PostconditionT.operation_eq_map_mk_operation](declarations/postconditiont-operation-eq-map-mk-operation.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [PostconditionT.operation_bind_eq_operation_bind_mk](declarations/postconditiont-operation-bind-eq-operation-bind-mk.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [PostconditionT.run_bind](declarations/postconditiont-run-bind-source-edition-2.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [PostconditionT.run_bind'](declarations/postconditiont-run-bind.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [PostconditionT.run_pure](declarations/postconditiont-run-pure.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [PostconditionT.property_lift](declarations/postconditiont-property-lift.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [PostconditionT.operation_lift](declarations/postconditiont-operation-lift.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [PostconditionT.run_attachLift](declarations/postconditiont-run-attachlift.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [PostconditionT.operation_attachLift](declarations/postconditiont-operation-attachlift.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [PostconditionT.instLawfulMonadLift](declarations/postconditiont-instlawfulmonadlift.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73d429acd6a9ef283ec404d2e03619b44e66ab9900acd4d1a46975f4498765f8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostconditionMonad/Variant391100e26e49497ea7aff12360ef25a4be28829ad0c73dfec0d25908930360a5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
