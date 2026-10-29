# Dilation Equiv

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `22caed0ef69cdaf34083cacbe354600513c090b3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/DilationEquiv.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [DilationEquivClass](declarations/dilationequivclass.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [DilationEquiv](declarations/dilationequiv.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [coe_toEquiv](declarations/coe-toequiv.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [ext](declarations/ext.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [symm](declarations/symm.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [symm_symm](declarations/symm-symm.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [apply_symm_apply](declarations/apply-symm-apply.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [symm_apply_apply](declarations/symm-apply-apply.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [Simps.symm_apply](declarations/simps-symm-apply.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [refl](declarations/refl.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [refl_symm](declarations/refl-symm.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [ratio_refl](declarations/ratio-refl.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [trans](declarations/trans.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [refl_trans](declarations/refl-trans.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [trans_refl](declarations/trans-refl.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [symm_trans_self](declarations/symm-trans-self.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [self_trans_symm](declarations/self-trans-symm.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [surjective](declarations/surjective.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [bijective](declarations/bijective.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [injective](declarations/injective.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [ratio_trans](declarations/ratio-trans.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [ratio_symm](declarations/ratio-symm.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mul_def](declarations/mul-def.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [one_def](declarations/one-def.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [inv_def](declarations/inv-def.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [coe_mul](declarations/coe-mul.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [coe_one](declarations/coe-one.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [coe_inv](declarations/coe-inv.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [ratioHom](declarations/ratiohom.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [ratio_inv](declarations/ratio-inv.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [ratio_pow](declarations/ratio-pow.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [ratio_zpow](declarations/ratio-zpow.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [toPerm](declarations/toperm.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [coe_pow](declarations/coe-pow.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2223fc5ca7c19de298e64c762dbdb47d8fa3fe5c098037097e9980bb6ccd7c74 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
