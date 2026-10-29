# Submonoid Mul Opposite

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 34 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `470f5ad6b7acc46b48fad8222c28a3e60503fd36`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/SubmonoidMulOpposite.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [op](declarations/op.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mem_op](declarations/mem-op.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [unop](declarations/unop.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mem_unop](declarations/mem-unop.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [unop_op](declarations/unop-op.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [op_unop](declarations/op-unop.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [op_le_iff](declarations/op-le-iff.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [le_op_iff](declarations/le-op-iff.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [op_le_op_iff](declarations/op-le-op-iff.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [unop_le_unop_iff](declarations/unop-le-unop-iff.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [opEquiv](declarations/opequiv.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [op_injective](declarations/op-injective.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [unop_injective](declarations/unop-injective.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [op_inj](declarations/op-inj.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [unop_inj](declarations/unop-inj.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [op_bot](declarations/op-bot.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [op_eq_bot](declarations/op-eq-bot.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [unop_bot](declarations/unop-bot.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [unop_eq_bot](declarations/unop-eq-bot.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [op_top](declarations/op-top.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [op_eq_top](declarations/op-eq-top.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [unop_top](declarations/unop-top.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [unop_eq_top](declarations/unop-eq-top.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [op_sup](declarations/op-sup.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [unop_sup](declarations/unop-sup.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [op_inf](declarations/op-inf.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [unop_inf](declarations/unop-inf.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [op_sSup](declarations/op-ssup.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [unop_sSup](declarations/unop-ssup.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [op_sInf](declarations/op-sinf.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [unop_sInf](declarations/unop-sinf.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [op_iSup](declarations/op-isup.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [unop_iSup](declarations/unop-isup.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [op_iInf](declarations/op-iinf.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [unop_iInf](declarations/unop-iinf.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [op_closure](declarations/op-closure.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [unop_closure](declarations/unop-closure.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [equivOp](declarations/equivop.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a208b262767cb567a56c73194885d04905b0fee1b5f8e0a7a232fc80413b652f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
