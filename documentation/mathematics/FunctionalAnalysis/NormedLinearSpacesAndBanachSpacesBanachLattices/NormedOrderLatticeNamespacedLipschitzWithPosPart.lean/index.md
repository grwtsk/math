# Normed Order Lattice Namespaced Lipschitz With Pos Part

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Lattice/Variante179c09c6147b72e65f3e3f6fd126b92f09406125c82b8e9ca6db72b73ce97d2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b29fa86d839a12a887566724651dae49830f26a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/NormedOrderLatticeNamespacedLipschitzWithPosPart.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [HasSolidNorm](declarations/hassolidnorm.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [norm_le_norm_of_abs_le_abs](declarations/norm-le-norm-of-abs-le-abs.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [LatticeOrderedAddCommGroup.isSolid_ball](declarations/latticeorderedaddcommgroup-issolid-ball.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [NormedLatticeAddCommGroup](declarations/normedlatticeaddcommgroup.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [Int.hasSolidNorm](declarations/int-hassolidnorm.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [Rat.hasSolidNorm](declarations/rat-hassolidnorm.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [dual_solid](declarations/dual-solid.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [norm_abs_eq_norm](declarations/norm-abs-eq-norm.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [norm_inf_sub_inf_le_add_norm](declarations/norm-inf-sub-inf-le-add-norm.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [norm_sup_sub_sup_le_add_norm](declarations/norm-sup-sub-sup-le-add-norm.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [norm_inf_le_add](declarations/norm-inf-le-add.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [norm_sup_le_add](declarations/norm-sup-le-add.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [norm_abs_sub_abs](declarations/norm-abs-sub-abs.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [norm_sup_sub_sup_le_norm](declarations/norm-sup-sub-sup-le-norm.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [norm_inf_sub_inf_le_norm](declarations/norm-inf-sub-inf-le-norm.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [lipschitzWith_sup_right](declarations/lipschitzwith-sup-right.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [lipschitzWith_posPart](declarations/lipschitzwith-pospart.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [lipschitzWith_negPart](declarations/lipschitzwith-negpart.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [continuous_posPart](declarations/continuous-pospart.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [continuous_negPart](declarations/continuous-negpart.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [isClosed_nonneg](declarations/isclosed-nonneg.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [isClosed_le_of_isClosed_nonneg](declarations/isclosed-le-of-isclosed-nonneg.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed009f34cdc577ff4409131a8b754de8fe3466077a1387d84f0ae5806f16ae0b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Lattice/Variante179c09c6147b72e65f3e3f6fd126b92f09406125c82b8e9ca6db72b73ce97d2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
