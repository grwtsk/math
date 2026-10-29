# Ring Constructions Is Pushout Tensor Product

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 9 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2ad2aca4fcc9102de150cf2d5034140b286feb63`.

**Verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RingConstructionsIsPushoutTensorProduct.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [pushoutCocone](declarations/pushoutcocone.md) | 41 | `BLOCKED_SOURCE_DEPENDENCY` |
| 2 | `theorem` | [pushoutCocone_inl](declarations/pushoutcocone-inl.md) | 53 | `BLOCKED_SOURCE_DEPENDENCY` |
| 3 | `theorem` | [pushoutCocone_inr](declarations/pushoutcocone-inr.md) | 58 | `BLOCKED_SOURCE_DEPENDENCY` |
| 4 | `theorem` | [pushoutCocone_pt](declarations/pushoutcocone-pt.md) | 63 | `BLOCKED_SOURCE_DEPENDENCY` |
| 5 | `def` | [pushoutCoconeIsColimit](declarations/pushoutcoconeiscolimit.md) | 68 | `BLOCKED_SOURCE_DEPENDENCY` |
| 6 | `lemma` | [isPushout_tensorProduct](declarations/ispushout-tensorproduct.md) | 109 | `BLOCKED_SOURCE_DEPENDENCY` |
| 7 | `lemma` | [isPushout_of_isPushout](declarations/ispushout-of-ispushout.md) | 119 | `BLOCKED_SOURCE_DEPENDENCY` |
| 8 | `def` | [coproductCocone](declarations/coproductcocone.md) | 136 | `BLOCKED_SOURCE_DEPENDENCY` |
| 9 | `theorem` | [coproductCocone_inl](declarations/coproductcocone-inl.md) | 142 | `BLOCKED_SOURCE_DEPENDENCY` |
| 10 | `theorem` | [coproductCocone_inr](declarations/coproductcocone-inr.md) | 146 | `BLOCKED_SOURCE_DEPENDENCY` |
| 11 | `def` | [coproductCoconeIsColimit](declarations/coproductcoconeiscolimit.md) | 151 | `BLOCKED_SOURCE_DEPENDENCY` |
| 12 | `def` | [coproductColimitCocone](declarations/coproductcolimitcocone.md) | 170 | `BLOCKED_SOURCE_DEPENDENCY` |
| 13 | `instance` | [(anonymous)](declarations/instance.md) | 178 | `BLOCKED_SOURCE_DEPENDENCY` |
| 14 | `def` | [punitIsTerminal](declarations/punitisterminal.md) | 182 | `BLOCKED_SOURCE_DEPENDENCY` |
| 15 | `instance` | [commRingCat_hasStrictTerminalObjects](declarations/commringcat-hasstrictterminalobjects.md) | 185 | `BLOCKED_SOURCE_DEPENDENCY` |
| 16 | `theorem` | [subsingleton_of_isTerminal](declarations/subsingleton-of-isterminal.md) | 197 | `BLOCKED_SOURCE_DEPENDENCY` |
| 17 | `def` | [zIsInitial](declarations/zisinitial.md) | 202 | `BLOCKED_SOURCE_DEPENDENCY` |
| 18 | `def` | [isInitial](declarations/isinitial.md) | 207 | `BLOCKED_SOURCE_DEPENDENCY` |
| 19 | `def` | [prodFan](declarations/prodfan.md) | 223 | `BLOCKED_SOURCE_DEPENDENCY` |
| 20 | `def` | [prodFanIsLimit](declarations/prodfanislimit.md) | 227 | `BLOCKED_SOURCE_DEPENDENCY` |
| 21 | `def` | [piFan](declarations/pifan.md) | 255 | `BLOCKED_SOURCE_DEPENDENCY` |
| 22 | `def` | [piFanIsLimit](declarations/pifanislimit.md) | 261 | `BLOCKED_SOURCE_DEPENDENCY` |
| 23 | `def` | [piIsoPi](declarations/piisopi.md) | 270 | `BLOCKED_SOURCE_DEPENDENCY` |
| 24 | `def` | [_root_.RingEquiv.piEquivPi](declarations/root-ringequiv-piequivpi.md) | 276 | `BLOCKED_SOURCE_DEPENDENCY` |
| 25 | `def` | [equalizerFork](declarations/equalizerfork.md) | 287 | `BLOCKED_SOURCE_DEPENDENCY` |
| 26 | `def` | [equalizerForkIsLimit](declarations/equalizerforkislimit.md) | 293 | `BLOCKED_SOURCE_DEPENDENCY` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 304 | `BLOCKED_SOURCE_DEPENDENCY` |
| 28 | `theorem` | [equalizer_ι_isLocalHom](declarations/equalizer-islocalhom.md) | 315 | `BLOCKED_SOURCE_DEPENDENCY` |
| 29 | `instance` | [equalizer_ι_isLocalHom'](declarations/equalizer-islocalhom-source-edition-2.md) | 332 | `BLOCKED_SOURCE_DEPENDENCY` |
| 30 | `def` | [pullbackCone](declarations/pullbackcone.md) | 350 | `BLOCKED_SOURCE_DEPENDENCY` |
| 31 | `def` | [pullbackConeIsLimit](declarations/pullbackconeislimit.md) | 363 | `BLOCKED_SOURCE_DEPENDENCY` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b5d1b01780bcc7b110868964f81af6d2d713e18d82c76c3038f46936727a4bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Constructions/Variantc91b5b296118da5009e02e79962814251afe1c45ab7f424bed2d6e1c0438c0da.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
