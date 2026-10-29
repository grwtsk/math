# Legendre Symbol Add Character Add Character Source Edition2

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**46 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d807b175c16a3f14dd9271058900c8a2414e79b6`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/NumberTheory/LegendreSymbolAddCharacterAddCharacterSourceEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [AddChar](declarations/addchar.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [toMonoidHom](declarations/tomonoidhom.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [toFun](declarations/tofun.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [hasCoeToFun](declarations/hascoetofun.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [coe_to_fun_apply](declarations/coe-to-fun-apply.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [mul_apply](declarations/mul-apply.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [one_apply](declarations/one-apply.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [monoidHomClass](declarations/monoidhomclass.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [ext](declarations/ext.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [map_zero_one](declarations/map-zero-one.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [map_add_mul](declarations/map-add-mul.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [map_nsmul_pow](declarations/map-nsmul-pow.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [hasInv](declarations/hasinv.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [inv_apply](declarations/inv-apply.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [map_zsmul_zpow](declarations/map-zsmul-zpow.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [commGroup](declarations/commgroup.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [IsNontrivial](declarations/isnontrivial.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [isNontrivial_iff_ne_trivial](declarations/isnontrivial-iff-ne-trivial.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [mulShift](declarations/mulshift.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mulShift_apply](declarations/mulshift-apply.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [inv_mulShift](declarations/inv-mulshift.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mulShift_spec'](declarations/mulshift-spec.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [pow_mulShift](declarations/pow-mulshift.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mulShift_mul](declarations/mulshift-mul.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mulShift_zero](declarations/mulshift-zero.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [IsPrimitive](declarations/isprimitive.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [to_mulShift_inj_of_isPrimitive](declarations/to-mulshift-inj-of-isprimitive.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [IsNontrivial.isPrimitive](declarations/isnontrivial-isprimitive.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [PrimitiveAddChar](declarations/primitiveaddchar.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [PrimitiveAddChar.n](declarations/primitiveaddchar-n.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [PrimitiveAddChar.char](declarations/primitiveaddchar-char.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [PrimitiveAddChar.prim](declarations/primitiveaddchar-prim.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [zmodChar](declarations/zmodchar.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [zmodChar_apply](declarations/zmodchar-apply-source-edition-2.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [zmodChar_apply'](declarations/zmodchar-apply.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [zmod_char_isNontrivial_iff](declarations/zmod-char-isnontrivial-iff.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [IsPrimitive.zmod_char_eq_one_iff](declarations/isprimitive-zmod-char-eq-one-iff.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [zmod_char_primitive_of_eq_one_only_at_zero](declarations/zmod-char-primitive-of-eq-one-only-at-zero.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [zmodChar_primitive_of_primitive_root](declarations/zmodchar-primitive-of-primitive-root.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [primitiveZModChar](declarations/primitivezmodchar.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [primitiveCharFiniteField](declarations/primitivecharfinitefield.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [sum_eq_zero_of_isNontrivial](declarations/sum-eq-zero-of-isnontrivial.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [sum_eq_card_of_is_trivial](declarations/sum-eq-card-of-is-trivial.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [sum_mulShift](declarations/sum-mulshift.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1a06bf3afad1da68521929c61e523cc3a17269ce9fd326068dafa1675e38856e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AddCharacter/Variant94e2a33e1c5cd68221e175e1d9705a0f5be98f20f69a23d077515d1ef571f653.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
