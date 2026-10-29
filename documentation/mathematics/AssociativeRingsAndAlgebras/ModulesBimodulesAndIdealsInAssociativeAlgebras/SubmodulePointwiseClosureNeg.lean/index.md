# Submodule Pointwise Closure Neg

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38cf02d68666fb807e76e22850d9703064e8e3f7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/SubmodulePointwiseClosureNeg.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [pointwiseNeg](declarations/pointwiseneg.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [coe_set_neg](declarations/coe-set-neg.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [neg_toAddSubmonoid](declarations/neg-toaddsubmonoid.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mem_neg](declarations/mem-neg.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [involutivePointwiseNeg](declarations/involutivepointwiseneg.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [neg_le_neg](declarations/neg-le-neg.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [neg_le](declarations/neg-le.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [negOrderIso](declarations/negorderiso.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [closure_neg](declarations/closure-neg.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [neg_inf](declarations/neg-inf.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [neg_sup](declarations/neg-sup.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [neg_bot](declarations/neg-bot.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [neg_top](declarations/neg-top.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [neg_iInf](declarations/neg-iinf.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [neg_iSup](declarations/neg-isup.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [neg_eq_self](declarations/neg-eq-self.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [pointwiseAddCommMonoid](declarations/pointwiseaddcommmonoid.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [add_eq_sup](declarations/add-eq-sup.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [zero_eq_bot](declarations/zero-eq-bot.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [pointwiseDistribMulAction](declarations/pointwisedistribmulaction.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coe_pointwise_smul](declarations/coe-pointwise-smul.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [pointwise_smul_toAddSubmonoid](declarations/pointwise-smul-toaddsubmonoid.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [pointwise_smul_toAddSubgroup](declarations/pointwise-smul-toaddsubgroup.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [smul_mem_pointwise_smul](declarations/smul-mem-pointwise-smul.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [smul_bot'](declarations/smul-bot.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [smul_sup'](declarations/smul-sup.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [smul_span](declarations/smul-span.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [span_smul](declarations/span-smul.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [pointwiseCentralScalar](declarations/pointwisecentralscalar.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [smul_le_self_of_tower](declarations/smul-le-self-of-tower.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [pointwiseMulActionWithZero](declarations/pointwisemulactionwithzero.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a93d096b6e5551f2f73787dd17fd57355dba9839e3d86d102a5b2ff220a2f9a1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Pointwise/Variant841509225b7234061fa3072e62b2087d3f530ddca9d09475d0957035263ee375.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
