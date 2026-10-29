# Operator NNNorm Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 33 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ee0b403cdc18734daf3436da63205a20f3e03e93`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorNNNormPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [nnnorm_def](declarations/nnnorm-def.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [opNNNorm_subsingleton](declarations/opnnnorm-subsingleton.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [opNNNorm_le_bound](declarations/opnnnorm-le-bound-source-edition-2.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [opNNNorm_le_bound'](declarations/opnnnorm-le-bound.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [opNNNorm_le_of_unit_nnnorm](declarations/opnnnorm-le-of-unit-nnnorm.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [opNNNorm_le_of_lipschitz](declarations/opnnnorm-le-of-lipschitz.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [opNNNorm_eq_of_bounds](declarations/opnnnorm-eq-of-bounds.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [opNNNorm_le_iff](declarations/opnnnorm-le-iff.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [isLeast_opNNNorm](declarations/isleast-opnnnorm.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [opNNNorm_comp_le](declarations/opnnnorm-comp-le.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [opENorm_comp_le](declarations/openorm-comp-le.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [le_opNNNorm](declarations/le-opnnnorm.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [le_opENorm](declarations/le-openorm.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [opENorm_le_bound](declarations/openorm-le-bound.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [le_of_opENorm_le_of_le](declarations/le-of-openorm-le-of-le.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [le_opENorm_of_le](declarations/le-openorm-of-le.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [le_of_opENorm_le](declarations/le-of-openorm-le.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [opENorm_le_iff](declarations/openorm-le-iff.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [nndist_le_opNNNorm](declarations/nndist-le-opnnnorm.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [lipschitzWith](declarations/lipschitzwith-source-edition-2.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [lipschitzWith_apply](declarations/lipschitzwith-apply.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [exists_mul_lt_apply_of_lt_opNNNorm](declarations/exists-mul-lt-apply-of-lt-opnnnorm.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [exists_mul_lt_of_lt_opNorm](declarations/exists-mul-lt-of-lt-opnorm.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [lipschitzWith](declarations/lipschitzwith.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [exists_lt_apply_of_lt_opNNNorm](declarations/exists-lt-apply-of-lt-opnnnorm.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [exists_lt_apply_of_lt_opNorm](declarations/exists-lt-apply-of-lt-opnorm.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [sSup_unit_ball_eq_nnnorm](declarations/ssup-unit-ball-eq-nnnorm.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [sSup_unit_ball_eq_norm](declarations/ssup-unit-ball-eq-norm.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [sSup_unitClosedBall_eq_nnnorm](declarations/ssup-unitclosedball-eq-nnnorm.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [sSup_unitClosedBall_eq_norm](declarations/ssup-unitclosedball-eq-norm.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [exists_nnnorm_eq_one_lt_apply_of_lt_opNNNorm](declarations/exists-nnnorm-eq-one-lt-apply-of-lt-opnnnorm.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [sSup_sphere_eq_nnnorm](declarations/ssup-sphere-eq-nnnorm.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [sSup_sphere_eq_norm](declarations/ssup-sphere-eq-norm.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0cd2f5c2a5464ccdce2c372aabc1ca973d9fbe452a131246869a4c1e0c5453a7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/NNNorm/Variant13b67fa401970e78edbf0d37f59e2db54bb905855293bd849743ec3c96857b24.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
