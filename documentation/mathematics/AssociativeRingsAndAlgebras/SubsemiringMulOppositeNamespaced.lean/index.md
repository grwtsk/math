# Subsemiring Mul Opposite Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 34 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bdb7ccc5797f3a0b2c21d25a040f4dcd7fb32556`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/AssociativeRingsAndAlgebras/SubsemiringMulOppositeNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [op](declarations/op.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mem_op](declarations/mem-op.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [unop](declarations/unop.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mem_unop](declarations/mem-unop.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [unop_op](declarations/unop-op.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [op_unop](declarations/op-unop.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [op_le_iff](declarations/op-le-iff.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [le_op_iff](declarations/le-op-iff.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [op_le_op_iff](declarations/op-le-op-iff.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [unop_le_unop_iff](declarations/unop-le-unop-iff.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [opEquiv](declarations/opequiv.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [op_injective](declarations/op-injective.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [unop_injective](declarations/unop-injective.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [op_inj](declarations/op-inj.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [unop_inj](declarations/unop-inj.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [op_bot](declarations/op-bot.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [op_eq_bot](declarations/op-eq-bot.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [unop_bot](declarations/unop-bot.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [unop_eq_bot](declarations/unop-eq-bot.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [op_top](declarations/op-top.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [op_eq_top](declarations/op-eq-top.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [unop_top](declarations/unop-top.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [unop_eq_top](declarations/unop-eq-top.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [op_sup](declarations/op-sup.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [unop_sup](declarations/unop-sup.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [op_inf](declarations/op-inf.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [unop_inf](declarations/unop-inf.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [op_sSup](declarations/op-ssup.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [unop_sSup](declarations/unop-ssup.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [op_sInf](declarations/op-sinf.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [unop_sInf](declarations/unop-sinf.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [op_iSup](declarations/op-isup.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [unop_iSup](declarations/unop-isup.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [op_iInf](declarations/op-iinf.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [unop_iInf](declarations/unop-iinf.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [op_closure](declarations/op-closure.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [unop_closure](declarations/unop-closure.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [addEquivOp](declarations/addequivop.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [ringEquivOpMop](declarations/ringequivopmop.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [mopRingEquivOp](declarations/mopringequivop.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b285d3b74b3a0d12876d5bc2ba2e782f544e5427312eabd0f8fc6583a075b452 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/MulOpposite/Variant8c31060b3784137ad817b29b316988f84c604ce55eb18f1fd8549d2635afc05c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
