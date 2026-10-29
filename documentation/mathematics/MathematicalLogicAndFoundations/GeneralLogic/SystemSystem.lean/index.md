# System System

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `75cb8e640e0c4dcd17cc11fc5d3d28b0e451e573`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/SystemSystem.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [System](declarations/system.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [run](declarations/run.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [run_nil](declarations/run-nil.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [run_cons](declarations/run-cons.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [run_append](declarations/run-append.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [run_singleton](declarations/run-singleton.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [Hom](declarations/hom.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [id](declarations/id.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [comp](declarations/comp.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ext](declarations/ext.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [id_mapInput](declarations/id-mapinput.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [id_mapState](declarations/id-mapstate.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [id_pullResolution](declarations/id-pullresolution.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [comp_mapInput](declarations/comp-mapinput.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [comp_mapState](declarations/comp-mapstate.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [comp_pullResolution](declarations/comp-pullresolution.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [map_run](declarations/map-run.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [id_comp](declarations/id-comp.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [comp_id](declarations/comp-id.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [comp_assoc](declarations/comp-assoc.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [Factor](declarations/factor.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [toHom_mapInput](declarations/tohom-mapinput.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [toHom_mapState](declarations/tohom-mapstate.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [StateFactor](declarations/statefactor.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [state_surjective](declarations/state-surjective.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [Iso](declarations/iso.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [refl](declarations/refl.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [symm](declarations/symm.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [trans](declarations/trans.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [hom_inv_state](declarations/hom-inv-state.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [inv_hom_state](declarations/inv-hom-state.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [hom_inv_input](declarations/hom-inv-input.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [inv_hom_input](declarations/inv-hom-input.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [hom_inv_resolution](declarations/hom-inv-resolution.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [inv_hom_resolution](declarations/inv-hom-resolution.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [hom_state_bijective](declarations/hom-state-bijective.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [hom_input_bijective](declarations/hom-input-bijective.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b886092d0ca289c123ff13e72fd905132f95676ae0ebe0607ded09b470d3194e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variant22c8aa19f730e9959902e993a0d89cfdb5095537c33404d76f3d3d3f9e1ba54c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
