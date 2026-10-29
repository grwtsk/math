# Dirichlet Character Basic Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**65 observed declarations and anonymous commands**, 51 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variant88d48811e65bf90b3ca9c5033807c4d3f139d6f92c68c9c8aad346e16d11391c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e69d8e2ecf3d44b09a13530ed6281a60abe644ad`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/NumberTheory/DirichletCharacterBasicNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [DirichletCharacter](declarations/dirichletcharacter.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [toUnitHom_eq_char'](declarations/tounithom-eq-char.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [toUnitHom_inj](declarations/tounithom-inj.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [eval_modulus_sub](declarations/eval-modulus-sub.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [changeLevel](declarations/changelevel.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [changeLevel_def](declarations/changelevel-def.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [changeLevel_toUnitHom](declarations/changelevel-tounithom.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [changeLevel_injective](declarations/changelevel-injective.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [changeLevel_eq_one_iff](declarations/changelevel-eq-one-iff.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [changeLevel_self](declarations/changelevel-self.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [changeLevel_self_toUnitHom](declarations/changelevel-self-tounithom.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [changeLevel_trans](declarations/changelevel-trans.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [changeLevel_eq_cast_of_dvd](declarations/changelevel-eq-cast-of-dvd.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [FactorsThrough](declarations/factorsthrough.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [changeLevel_factorsThrough](declarations/changelevel-factorsthrough.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [dvd](declarations/dvd.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [χ₀](declarations/anonymous.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [eq_changeLevel](declarations/eq-changelevel.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [existsUnique](declarations/existsunique.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [same_level](declarations/same-level.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [factorsThrough_iff_ker_unitsMap](declarations/factorsthrough-iff-ker-unitsmap.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [level_one](declarations/level-one-source-edition-2.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [level_one'](declarations/level-one.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [map_zero'](declarations/map-zero.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [changeLevel_one](declarations/changelevel-one.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [factorsThrough_one_iff](declarations/factorsthrough-one-iff.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [conductorSet](declarations/conductorset.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [mem_conductorSet_iff](declarations/mem-conductorset-iff.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [level_mem_conductorSet](declarations/level-mem-conductorset.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [mem_conductorSet_dvd](declarations/mem-conductorset-dvd.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [conductor](declarations/conductor.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [conductor_mem_conductorSet](declarations/conductor-mem-conductorset.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [conductor_dvd_level](declarations/conductor-dvd-level.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [factorsThrough_conductor](declarations/factorsthrough-conductor.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [conductor_ne_zero](declarations/conductor-ne-zero.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [conductor_one](declarations/conductor-one.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [eq_one_iff_conductor_eq_one](declarations/eq-one-iff-conductor-eq-one.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [conductor_eq_zero_iff_level_eq_zero](declarations/conductor-eq-zero-iff-level-eq-zero.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [conductor_le_conductor_mem_conductorSet](declarations/conductor-le-conductor-mem-conductorset.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [IsPrimitive](declarations/isprimitive.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [isPrimitive_def](declarations/isprimitive-def.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [isPrimitive_one_level_one](declarations/isprimitive-one-level-one.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [isPritive_one_level_zero](declarations/ispritive-one-level-zero.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [conductor_one_dvd](declarations/conductor-one-dvd.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [primitiveCharacter](declarations/primitivecharacter.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [primitiveCharacter_isPrimitive](declarations/primitivecharacter-isprimitive.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [primitiveCharacter_one](declarations/primitivecharacter-one.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [mul](declarations/mul.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [primitive_mul](declarations/primitive-mul.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [mul_def](declarations/mul-def.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [primitive_mul_isPrimitive](declarations/primitive-mul-isprimitive.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [Odd](declarations/odd.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [Even](declarations/even.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [even_or_odd](declarations/even-or-odd.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [not_even_and_odd](declarations/not-even-and-odd.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [Even.not_odd](declarations/even-not-odd.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [Odd.not_even](declarations/odd-not-even.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [Odd.toUnitHom_eval_neg_one](declarations/odd-tounithom-eval-neg-one.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [Even.toUnitHom_eval_neg_one](declarations/even-tounithom-eval-neg-one.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [Odd.eval_neg](declarations/odd-eval-neg.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [Even.eval_neg](declarations/even-eval-neg.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [Even.to_fun](declarations/even-to-fun.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [Odd.to_fun](declarations/odd-to-fun.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e8b22e09fa600f2c7a5a9e3926c45a37cd9f79dd02ecdb99c7ce56953e91470 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Basic/Variant88d48811e65bf90b3ca9c5033807c4d3f139d6f92c68c9c8aad346e16d11391c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
