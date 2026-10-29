# Ring Constructions Namespaced Is Pushout Tensor Product

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 9 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `825b3284578f8b54947b7eab838850d2a4a9cc9a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsNamespacedIsPushoutTensorProduct.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [pushoutCocone](declarations/pushoutcocone.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [pushoutCocone_inl](declarations/pushoutcocone-inl.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [pushoutCocone_inr](declarations/pushoutcocone-inr.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [pushoutCocone_pt](declarations/pushoutcocone-pt.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [pushoutCoconeIsColimit](declarations/pushoutcoconeiscolimit.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [isPushout_tensorProduct](declarations/ispushout-tensorproduct.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [isPushout_of_isPushout](declarations/ispushout-of-ispushout.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [coproductCocone](declarations/coproductcocone.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [coproductCocone_inl](declarations/coproductcocone-inl.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coproductCocone_inr](declarations/coproductcocone-inr.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [coproductCoconeIsColimit](declarations/coproductcoconeiscolimit.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [coproductColimitCocone](declarations/coproductcolimitcocone.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [punitIsTerminal](declarations/punitisterminal.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [commRingCat_hasStrictTerminalObjects](declarations/commringcat-hasstrictterminalobjects.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [subsingleton_of_isTerminal](declarations/subsingleton-of-isterminal.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [zIsInitial](declarations/zisinitial.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [isInitial](declarations/isinitial.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [prodFan](declarations/prodfan.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [prodFanIsLimit](declarations/prodfanislimit.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [piFan](declarations/pifan.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [piFanIsLimit](declarations/pifanislimit.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [piIsoPi](declarations/piisopi.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [Ring Constructions Namespaced Is Pushout Tensor Product](declarations/piequivpi.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [equalizerFork](declarations/equalizerfork.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [equalizerForkIsLimit](declarations/equalizerforkislimit.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [equalizer_ι_isLocalHom](declarations/equalizer-islocalhom-source-edition-2.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [equalizer_ι_isLocalHom'](declarations/equalizer-islocalhom.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [pullbackCone](declarations/pullbackcone.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [pullbackConeIsLimit](declarations/pullbackconeislimit.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ac39cb4ad448832b6bee3b90a64b5d499994074c23ca3b9866ca2556894bb913 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Constructions/Variant79e82fc10545dec6691ccc2aaedbdf5f835bbed8aae1fc471d1ad6e75d57bb1e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
