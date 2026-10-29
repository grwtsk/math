# Group Action Group

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**47 observed declarations and anonymous commands**, 33 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33528194679fa6b43084b07def63e50147bca10b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GroupTheoryAndGeneralizations/PermutationGroups/GroupActionGroup.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [RightCancelMonoid.faithfulSMul](declarations/rightcancelmonoid-faithfulsmul.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [inv_smul_smul](declarations/inv-smul-smul-source-edition-2.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [smul_inv_smul](declarations/smul-inv-smul.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [MulAction.toPerm](declarations/mulaction-toperm.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [MulAction.toPerm_injective](declarations/mulaction-toperm-injective.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [MulAction.toPermHom](declarations/mulaction-topermhom.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [AddAction.toPermHom](declarations/addaction-topermhom.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [Equiv.Perm.applyMulAction](declarations/equiv-perm-applymulaction.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [Equiv.Perm.smul_def](declarations/equiv-perm-smul-def.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [Equiv.Perm.applyFaithfulSMul](declarations/equiv-perm-applyfaithfulsmul.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [inv_smul_eq_iff](declarations/inv-smul-eq-iff-source-edition-2.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [eq_inv_smul_iff](declarations/eq-inv-smul-iff.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [smul_inv](declarations/smul-inv.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [smul_zpow](declarations/smul-zpow.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Commute.smul_right_iff](declarations/commute-smul-right-iff-source-edition-2.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [Commute.smul_left_iff](declarations/commute-smul-left-iff-source-edition-2.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [MulAction.bijective](declarations/mulaction-bijective.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [MulAction.injective](declarations/mulaction-injective.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [MulAction.surjective](declarations/mulaction-surjective.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [smul_left_cancel](declarations/smul-left-cancel.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [smul_left_cancel_iff](declarations/smul-left-cancel-iff.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [smul_eq_iff_eq_inv_smul](declarations/smul-eq-iff-eq-inv-smul.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [CancelMonoidWithZero.faithfulSMul](declarations/cancelmonoidwithzero-faithfulsmul.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [inv_smul_smul₀](declarations/inv-smul-smul.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [smul_inv_smul₀](declarations/smul-inv-smul-source-edition-2.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [inv_smul_eq_iff₀](declarations/inv-smul-eq-iff.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [eq_inv_smul_iff₀](declarations/eq-inv-smul-iff-source-edition-2.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Commute.smul_right_iff₀](declarations/commute-smul-right-iff.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Commute.smul_left_iff₀](declarations/commute-smul-left-iff.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [MulAction.bijective₀](declarations/mulaction-bijective-source-edition-2.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [MulAction.injective₀](declarations/mulaction-injective-source-edition-2.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [MulAction.surjective₀](declarations/mulaction-surjective-source-edition-2.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [DistribMulAction.toAddEquiv](declarations/distribmulaction-toaddequiv.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [DistribMulAction.toAddAut](declarations/distribmulaction-toaddaut.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [smul_eq_zero_iff_eq](declarations/smul-eq-zero-iff-eq-source-edition-2.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [smul_ne_zero_iff_ne](declarations/smul-ne-zero-iff-ne.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [smul_eq_zero_iff_eq'](declarations/smul-eq-zero-iff-eq.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [smul_ne_zero_iff_ne'](declarations/smul-ne-zero-iff-ne-source-edition-2.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [MulDistribMulAction.toMulEquiv](declarations/muldistribmulaction-tomulequiv.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [MulDistribMulAction.toMulAut](declarations/muldistribmulaction-tomulaut.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [arrowAction](declarations/arrowaction.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [arrowMulDistribMulAction](declarations/arrowmuldistribmulaction.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [mulAutArrow](declarations/mulautarrow.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [smul_left_cancel](declarations/smul-left-cancel-source-edition-2.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [smul_eq_zero](declarations/smul-eq-zero.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [isUnit_smul_iff](declarations/isunit-smul-iff.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [IsUnit.smul_sub_iff_sub_inv_smul](declarations/isunit-smul-sub-iff-sub-inv-smul.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=612a6d426d8952104b5bdbf20715ab0bccd73f3ecb92e5cc761e50b57cd6c7b2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Group/Variant074fe97ab6717b7951d2154f85d7a4cface934afbe8d02e6d00e18a73ba1dbf5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
