# Slash Invariant Forms

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variant187516bb32c93f4a497d79a54918577e2928ace5e196e19f1a85eb2e6f211158.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9968e1720228de8129e8a29a4b1f7719e39960c1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/NumberTheory/SlashInvariantForms.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [SlashInvariantForm](declarations/slashinvariantform.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [SlashInvariantFormClass](declarations/slashinvariantformclass.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/anonymous-instance-source-line-53-occurrence-2.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/anonymous-instance-source-line-62-occurrence-2.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [SlashInvariantForm.toFun_eq_coe](declarations/tofun-eq-coe.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [SlashInvariantForm.coe_mk](declarations/coe-mk.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [SlashInvariantForm.ext](declarations/ext.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [SlashInvariantForm.copy](declarations/copy.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/anonymous-instance-source-line-94-occurrence-2.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [slash_action_eqn](declarations/slash-action-eqn.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [slash_action_eqn'](declarations/slash-action-eqn-source-line-104-occurrence-2.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/anonymous-instance-source-line-109-occurrence-2.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [SlashInvariantFormClass.coe_coe](declarations/coe-coe.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [instAdd](declarations/instadd.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [coe_add](declarations/coe-add.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [add_apply](declarations/add-apply.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [instZero](declarations/instzero.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coe_zero](declarations/coe-zero.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [instSMul](declarations/instsmul.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [coe_smul](declarations/coe-smul.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [smul_apply](declarations/smul-apply.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [instNeg](declarations/instneg.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coe_neg](declarations/coe-neg.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [neg_apply](declarations/neg-apply.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [instSub](declarations/instsub.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [coe_sub](declarations/coe-sub.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [sub_apply](declarations/sub-apply.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/anonymous-instance-source-line-199-occurrence-2.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [coeHom](declarations/coehom.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [coeHom_injective](declarations/coehom-injective.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [(anonymous)](declarations/anonymous-instance-source-line-213-occurrence-2.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/anonymous-instance.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [one_coe_eq_one](declarations/one-coe-eq-one.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [(anonymous)](declarations/anonymous-instance-source-line-225-occurrence-2.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [mul](declarations/mul.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [coe_mul](declarations/coe-mul.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dc2abd784429438bd59638a569684bdd52704b936ee338baba356e76cbc88f8c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variant187516bb32c93f4a497d79a54918577e2928ace5e196e19f1a85eb2e6f211158.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
