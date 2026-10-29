# Subring Mul Opposite

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 34 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f51fd743c3738faecc687aace2fe261f608044a7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/AssociativeRingsAndAlgebras/SubringMulOpposite.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [op](declarations/op.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mem_op](declarations/mem-op.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [unop](declarations/unop.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mem_unop](declarations/mem-unop.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [unop_op](declarations/unop-op.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [op_unop](declarations/op-unop.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [op_le_iff](declarations/op-le-iff.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [le_op_iff](declarations/le-op-iff.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [op_le_op_iff](declarations/op-le-op-iff.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [unop_le_unop_iff](declarations/unop-le-unop-iff.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [opEquiv](declarations/opequiv.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [op_injective](declarations/op-injective.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [unop_injective](declarations/unop-injective.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [op_inj](declarations/op-inj.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [unop_inj](declarations/unop-inj.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [op_bot](declarations/op-bot.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [op_eq_bot](declarations/op-eq-bot.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [unop_bot](declarations/unop-bot.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [unop_eq_bot](declarations/unop-eq-bot.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [op_top](declarations/op-top.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [op_eq_top](declarations/op-eq-top.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [unop_top](declarations/unop-top.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [unop_eq_top](declarations/unop-eq-top.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [op_sup](declarations/op-sup.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [unop_sup](declarations/unop-sup.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [op_inf](declarations/op-inf.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [unop_inf](declarations/unop-inf.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [op_sSup](declarations/op-ssup.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [unop_sSup](declarations/unop-ssup.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [op_sInf](declarations/op-sinf.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [unop_sInf](declarations/unop-sinf.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [op_iSup](declarations/op-isup.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [unop_iSup](declarations/unop-isup.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [op_iInf](declarations/op-iinf.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [unop_iInf](declarations/unop-iinf.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [op_closure](declarations/op-closure.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [unop_closure](declarations/unop-closure.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [addEquivOp](declarations/addequivop.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [ringEquivOpMop](declarations/ringequivopmop.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [mopRingEquivOp](declarations/mopringequivop.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=89548c3387832d4ea175f815c8ba6ef42988a46c7b545cac8c088a66b46514fb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/MulOpposite/Variant26cd46463fb9c34d3c23dd8c1223e27b03963a0f6fd37509ce9b717ab0c7de71.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
