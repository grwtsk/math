# Constructions

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**86 observed declarations and anonymous commands**, 48 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Constructions/Variantfd81b51faee458da7d1a5dd12f597676352f4d66563a6ca674aec744c1b62030.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94561ea7b7fbd6469d301cdac58e367101023dad`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/Constructions.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [normedAddCommGroup](declarations/normedaddcommgroup.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [norm_eq_zero](declarations/norm-eq-zero.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [norm](declarations/norm.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [norm_def](declarations/norm-def.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [norm_up](declarations/norm-up.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [norm_down](declarations/norm-down.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [nnnorm](declarations/nnnorm.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [nnnorm_def](declarations/nnnorm-def.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [nnnorm_up](declarations/nnnorm-up.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [nnnorm_down](declarations/nnnorm-down.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [seminormedGroup](declarations/seminormedgroup.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [seminormedCommGroup](declarations/seminormedcommgroup-source-edition-2.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [normedGroup](declarations/normedgroup.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [normedCommGroup](declarations/normedcommgroup.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [Additive.toNorm](declarations/additive-tonorm.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [Multiplicative.toNorm](declarations/multiplicative-tonorm.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [norm_toMul](declarations/norm-tomul.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [norm_ofMul](declarations/norm-ofmul.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [norm_toAdd](declarations/norm-toadd.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [norm_ofAdd](declarations/norm-ofadd.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [Additive.toNNNorm](declarations/additive-tonnnorm.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [Multiplicative.toNNNorm](declarations/multiplicative-tonnnorm.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [nnnorm_toMul](declarations/nnnorm-tomul.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [nnnorm_ofMul](declarations/nnnorm-ofmul.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [nnnorm_toAdd](declarations/nnnorm-toadd.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [nnnorm_ofAdd](declarations/nnnorm-ofadd.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [Additive.seminormedAddGroup](declarations/additive-seminormedaddgroup.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [Multiplicative.seminormedGroup](declarations/multiplicative-seminormedgroup.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [Additive.seminormedCommGroup](declarations/additive-seminormedcommgroup.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [Multiplicative.seminormedAddCommGroup](declarations/multiplicative-seminormedaddcommgroup.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [Additive.normedAddGroup](declarations/additive-normedaddgroup.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [Multiplicative.normedGroup](declarations/multiplicative-normedgroup.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [Additive.normedAddCommGroup](declarations/additive-normedaddcommgroup.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [Multiplicative.normedCommGroup](declarations/multiplicative-normedcommgroup.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [OrderDual.toNorm](declarations/orderdual-tonorm.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [norm_toDual](declarations/norm-todual.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [norm_ofDual](declarations/norm-ofdual.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [OrderDual.toNNNorm](declarations/orderdual-tonnnorm.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [nnnorm_toDual](declarations/nnnorm-todual.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [nnnorm_ofDual](declarations/nnnorm-ofdual.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [(anonymous)](declarations/instance.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [Prod.toNorm](declarations/prod-tonorm.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [Prod.norm_def](declarations/prod-norm-def.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [Prod.norm_mk](declarations/prod-norm-mk.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [norm_fst_le](declarations/norm-fst-le.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [norm_snd_le](declarations/norm-snd-le.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [norm_prod_le_iff](declarations/norm-prod-le-iff.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [Prod.seminormedGroup](declarations/prod-seminormedgroup.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [Prod.nnnorm_def'](declarations/prod-nnnorm-def.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [Prod.nnnorm_mk'](declarations/prod-nnnorm-mk.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [seminormedCommGroup](declarations/seminormedcommgroup.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [normedGroup](declarations/normedgroup-source-edition-2.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [normedCommGroup](declarations/normedcommgroup-source-edition-2.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [Pi.seminormedGroup](declarations/pi-seminormedgroup.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [Pi.norm_def'](declarations/pi-norm-def.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [Pi.nnnorm_def'](declarations/pi-nnnorm-def.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [pi_norm_le_iff_of_nonneg'](declarations/pi-norm-le-iff-of-nonneg.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [pi_nnnorm_le_iff'](declarations/pi-nnnorm-le-iff.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [pi_norm_le_iff_of_nonempty'](declarations/pi-norm-le-iff-of-nonempty.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [pi_norm_lt_iff'](declarations/pi-norm-lt-iff.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [pi_nnnorm_lt_iff'](declarations/pi-nnnorm-lt-iff.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [norm_le_pi_norm'](declarations/norm-le-pi-norm.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [nnnorm_le_pi_nnnorm'](declarations/nnnorm-le-pi-nnnorm.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `lemma` | [pi_norm_const_le'](declarations/pi-norm-const-le.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [pi_nnnorm_const_le'](declarations/pi-nnnorm-const-le.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [pi_norm_const'](declarations/pi-norm-const.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [pi_nnnorm_const'](declarations/pi-nnnorm-const.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [Pi.sum_norm_apply_le_norm'](declarations/pi-sum-norm-apply-le-norm.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [Pi.sum_nnnorm_apply_le_nnnorm'](declarations/pi-sum-nnnorm-apply-le-nnnorm.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [Pi.seminormedCommGroup](declarations/pi-seminormedcommgroup.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [Pi.normedGroup](declarations/pi-normedgroup.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [Pi.normedCommGroup](declarations/pi-normedcommgroup.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [Pi.nnnorm_single](declarations/pi-nnnorm-single.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `lemma` | [Pi.enorm_single](declarations/pi-enorm-single.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [Pi.norm_single](declarations/pi-norm-single.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `instance` | [instSeminormedAddGroup](declarations/instseminormedaddgroup.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `lemma` | [norm_op](declarations/norm-op.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `lemma` | [norm_unop](declarations/norm-unop.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `lemma` | [nnnorm_op](declarations/nnnorm-op.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `lemma` | [nnnorm_unop](declarations/nnnorm-unop.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `instance` | [instNormedAddGroup](declarations/instnormedaddgroup.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `instance` | [instSeminormedAddCommGroup](declarations/instseminormedaddcommgroup.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `instance` | [instNormedAddCommGroup](declarations/instnormedaddcommgroup.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=526274b18588f22f013da4488747b6c6ff08cf9304d349e5ad35ebebafe80920 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Constructions/Variantfd81b51faee458da7d1a5dd12f597676352f4d66563a6ca674aec744c1b62030.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
