# Holder Norm

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/MetricTopology/HolderNorm/Varianta613732e5c32b2ad0b3f61a15aac81bf72557a315270495b3d390abf8cbeee2d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6326d85a126fd595424f796ebb2116eb4871747c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/HolderNorm.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [eHolderNorm](declarations/eholdernorm.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [nnHolderNorm](declarations/nnholdernorm.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [MemHolder](declarations/memholder.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [HolderWith.memHolder](declarations/holderwith-memholder.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [eHolderNorm_lt_top](declarations/eholdernorm-lt-top.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [eHolderNorm_ne_top](declarations/eholdernorm-ne-top.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [eHolderNorm_eq_top](declarations/eholdernorm-eq-top.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [coe_nnHolderNorm_le_eHolderNorm](declarations/coe-nnholdernorm-le-eholdernorm.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [eHolderNorm_const](declarations/eholdernorm-const.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [eHolderNorm_zero](declarations/eholdernorm-zero.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [nnHolderNorm_const](declarations/nnholdernorm-const.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [nnHolderNorm_zero](declarations/nnholdernorm-zero.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [eHolderNorm_of_isEmpty](declarations/eholdernorm-of-isempty.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [HolderWith.eHolderNorm_le](declarations/holderwith-eholdernorm-le.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [memHolder_const](declarations/memholder-const.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [memHolder_const'](declarations/memholder-const-source-edition-2.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [memHolder_zero](declarations/memholder-zero.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [eHolderNorm_eq_zero](declarations/eholdernorm-eq-zero.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [MemHolder.holderWith](declarations/memholder-holderwith.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [memHolder_iff_holderWith](declarations/memholder-iff-holderwith.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [MemHolder.coe_nnHolderNorm_eq_eHolderNorm](declarations/memholder-coe-nnholdernorm-eq-eholdernorm.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [HolderWith.nnholderNorm_le](declarations/holderwith-nnholdernorm-le.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [MemHolder.comp](declarations/memholder-comp.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [MemHolder.nnHolderNorm_eq_zero](declarations/memholder-nnholdernorm-eq-zero.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [MemHolder.add](declarations/memholder-add.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [MemHolder.smul](declarations/memholder-smul.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [MemHolder.smul_iff](declarations/memholder-smul-iff.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [MemHolder.nsmul](declarations/memholder-nsmul.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [MemHolder.nnHolderNorm_add_le](declarations/memholder-nnholdernorm-add-le.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [eHolderNorm_add_le](declarations/eholdernorm-add-le.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [eHolderNorm_smul](declarations/eholdernorm-smul.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [MemHolder.nnHolderNorm_smul](declarations/memholder-nnholdernorm-smul.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [eHolderNorm_nsmul](declarations/eholdernorm-nsmul.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [MemHolder.nnHolderNorm_nsmul](declarations/memholder-nnholdernorm-nsmul.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=382c3df9a5b01e412060ad8c1e7ce32279b078abf277086092352fddb09ffbab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/HolderNorm/Varianta613732e5c32b2ad0b3f61a15aac81bf72557a315270495b3d390abf8cbeee2d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
