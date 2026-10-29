# System Namespaced System

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4904114c62de3f2091e69bca3dd61ce63d79b3a2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/SystemNamespacedSystem.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [System](declarations/system.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [run](declarations/run.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [run_nil](declarations/run-nil.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [run_cons](declarations/run-cons.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [run_append](declarations/run-append.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [run_singleton](declarations/run-singleton.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [Hom](declarations/hom.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [id](declarations/id.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [comp](declarations/comp.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ext](declarations/ext.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [id_mapInput](declarations/id-mapinput.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [id_mapState](declarations/id-mapstate.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [id_pullResolution](declarations/id-pullresolution.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [comp_mapInput](declarations/comp-mapinput.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [comp_mapState](declarations/comp-mapstate.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [comp_pullResolution](declarations/comp-pullresolution.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [map_run](declarations/map-run.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [id_comp](declarations/id-comp.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [comp_id](declarations/comp-id.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [comp_assoc](declarations/comp-assoc.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [Factor](declarations/factor.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [toHom_mapInput](declarations/tohom-mapinput.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [toHom_mapState](declarations/tohom-mapstate.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [StateFactor](declarations/statefactor.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [state_surjective](declarations/state-surjective.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [Iso](declarations/iso.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [refl](declarations/refl.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [symm](declarations/symm.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [trans](declarations/trans.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [hom_inv_state](declarations/hom-inv-state.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [inv_hom_state](declarations/inv-hom-state.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [hom_inv_input](declarations/hom-inv-input.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [inv_hom_input](declarations/inv-hom-input.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [hom_inv_resolution](declarations/hom-inv-resolution.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [inv_hom_resolution](declarations/inv-hom-resolution.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [hom_state_bijective](declarations/hom-state-bijective.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [hom_input_bijective](declarations/hom-input-bijective.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4628e6b5abc462ebbdf9b6d9ac7cb97a89863374a7ffdb04b422047cbb79e61d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/System/Variante1798162db36b1f0c8c222da19c76f9b04d71af633ebed9211e92f921e600f97.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
