# Group Action Opposite Namespaced Op Smul Eq Mul

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**21 observed declarations and anonymous commands**, 4 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Opposite/Variantadec7a963d5fb45b31f888983db7a188c9272c5070ecccee2583b17bfc0c973b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5f10c9ecda947c5d49d89ef263865ddce4a59e40`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GroupTheoryAndGeneralizations/PermutationGroups/GroupActionOppositeNamespacedOpSmulEqMul.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [mulAction](declarations/mulaction.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [distribMulAction](declarations/distribmulaction.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [mulDistribMulAction](declarations/muldistribmulaction.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [isScalarTower](declarations/isscalartower.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [smulCommClass](declarations/smulcommclass.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [isCentralScalar](declarations/iscentralscalar.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [op_smul_eq_op_smul_op](declarations/op-smul-eq-op-smul-op.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [unop_smul_eq_unop_smul_unop](declarations/unop-smul-eq-unop-smul-unop.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [Mul.toHasOppositeSMul](declarations/mul-tohasoppositesmul.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [op_smul_eq_mul](declarations/op-smul-eq-mul.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [MulOpposite.smul_eq_mul_unop](declarations/mulopposite-smul-eq-mul-unop.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [MulAction.OppositeRegular.isPretransitive](declarations/mulaction-oppositeregular-ispretransitive.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [Semigroup.opposite_smulCommClass](declarations/semigroup-opposite-smulcommclass-source-edition-2.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [Semigroup.opposite_smulCommClass'](declarations/semigroup-opposite-smulcommclass.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [CommSemigroup.isCentralScalar](declarations/commsemigroup-iscentralscalar.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [Monoid.toOppositeMulAction](declarations/monoid-tooppositemulaction.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [IsScalarTower.opposite_mid](declarations/isscalartower-opposite-mid.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [SMulCommClass.opposite_mid](declarations/smulcommclass-opposite-mid.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `example` | [(anonymous)](declarations/example.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [LeftCancelMonoid.toFaithfulSMul_opposite](declarations/leftcancelmonoid-tofaithfulsmul-opposite.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [CancelMonoidWithZero.toFaithfulSMul_opposite](declarations/cancelmonoidwithzero-tofaithfulsmul-opposite.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b93ac02a87441c44b03abf1a04e768d32cb6b0ade0e3f4d0b47331a923491f3d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Opposite/Variantadec7a963d5fb45b31f888983db7a188c9272c5070ecccee2583b17bfc0c973b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
