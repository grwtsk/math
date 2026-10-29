# Star Module Namespaced Star Nat Cast Smul

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d28ddb9f5b98fb1c3ce10d92fda4822def44b96e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralAlgebraicSystems/AlgebraicStructures/StarModuleNamespacedStarNatCastSmul.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [star_natCast_smul](declarations/star-natcast-smul.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [star_intCast_smul](declarations/star-intcast-smul.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [star_inv_natCast_smul](declarations/star-inv-natcast-smul.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [star_inv_intCast_smul](declarations/star-inv-intcast-smul.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [star_ratCast_smul](declarations/star-ratcast-smul.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [star_nnrat_smul](declarations/star-nnrat-smul.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [star_rat_smul](declarations/star-rat-smul.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [StarAddMonoid.toStarModuleNNRat](declarations/staraddmonoid-tostarmodulennrat.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [StarAddMonoid.toStarModuleRat](declarations/staraddmonoid-tostarmodulerat.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [starLinearEquiv](declarations/starlinearequiv.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [selfAdjoint.submodule](declarations/selfadjoint-submodule.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [skewAdjoint.submodule](declarations/skewadjoint-submodule.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [selfAdjointPart](declarations/selfadjointpart.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [skewAdjointPart](declarations/skewadjointpart.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [StarModule.selfAdjointPart_add_skewAdjointPart](declarations/starmodule-selfadjointpart-add-skewadjointpart.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [IsSelfAdjoint.coe_selfAdjointPart_apply](declarations/isselfadjoint-coe-selfadjointpart-apply.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [IsSelfAdjoint.selfAdjointPart_apply](declarations/isselfadjoint-selfadjointpart-apply.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [selfAdjointPart_comp_subtype_selfAdjoint](declarations/selfadjointpart-comp-subtype-selfadjoint.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [IsSelfAdjoint.skewAdjointPart_apply](declarations/isselfadjoint-skewadjointpart-apply.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [skewAdjointPart_comp_subtype_selfAdjoint](declarations/skewadjointpart-comp-subtype-selfadjoint.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [selfAdjointPart_comp_subtype_skewAdjoint](declarations/selfadjointpart-comp-subtype-skewadjoint.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [skewAdjointPart_comp_subtype_skewAdjoint](declarations/skewadjointpart-comp-subtype-skewadjoint.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [StarModule.decomposeProdAdjoint](declarations/starmodule-decomposeprodadjoint.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [algebraMap_star_comm](declarations/algebramap-star-comm.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [IsSelfAdjoint.algebraMap](declarations/isselfadjoint-algebramap.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [isSelfAdjoint_algebraMap_iff](declarations/isselfadjoint-algebramap-iff.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6fc47787fff86f0faa009b077ad99168609974614032f58db3846438a896ab99 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Module/Variantb8fe7be404f4680a911d75f0c0cae4e50bb47aa3f10f418ca1ecf8eb6dbf4f72.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
