# Fin Enum Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**73 observed declarations and anonymous commands**, 32 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variant1f7be3abe2ec7989dee274226f86a36d6b17f78c4634658f7b593da060cbbcaa.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7dab44940c2e70ce1cf9577d58c627003798d598`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/FinEnumPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [FinEnum](declarations/finenum.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [ofEquiv](declarations/ofequiv.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [ofNodupList](declarations/ofnoduplist.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [ofList](declarations/oflist.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [card_ofList](declarations/card-oflist.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [toList](declarations/tolist.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mem_toList](declarations/mem-tolist.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [nodup_toList](declarations/nodup-tolist.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [ofSurjective](declarations/ofsurjective.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [ofInjective](declarations/ofinjective.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [_root_.ULift.instFinEnum](declarations/root-ulift-instfinenum.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [card_ulift](declarations/card-ulift.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [equiv_up](declarations/equiv-up.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [equiv_down](declarations/equiv-down.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [up_equiv_symm](declarations/up-equiv-symm.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [down_equiv_symm](declarations/down-equiv-symm.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [pempty](declarations/pempty.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [card_pempty](declarations/card-pempty.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [empty](declarations/empty.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [card_empty](declarations/card-empty.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [punit](declarations/punit.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [card_punit](declarations/card-punit.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [prod](declarations/prod.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [sum](declarations/sum.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [fin](declarations/fin.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [card_fin](declarations/card-fin.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [Quotient.enum](declarations/quotient-enum.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [Finset.enum](declarations/finset-enum.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Finset.mem_enum](declarations/finset-mem-enum.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [Finset.finEnum](declarations/finset-finenum.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [Subtype.finEnum](declarations/subtype-finenum.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [PSigma.finEnum](declarations/psigma-finenum.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [PSigma.finEnumPropLeft](declarations/psigma-finenumpropleft.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [PSigma.finEnumPropRight](declarations/psigma-finenumpropright.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [PSigma.finEnumPropProp](declarations/psigma-finenumpropprop.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [card_eq_fintypeCard](declarations/card-eq-fintypecard.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [card_unique](declarations/card-unique.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [card_eq_zero_iff](declarations/card-eq-zero-iff.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [card_eq_zero](declarations/card-eq-zero.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [card_pos_iff](declarations/card-pos-iff.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [card_pos](declarations/card-pos.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [card_ne_zero](declarations/card-ne-zero.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [card_eq_one](declarations/card-eq-one.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [ofIsEmpty](declarations/ofisempty.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [ofUnique](declarations/ofunique.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [card_UInt8](declarations/card-uint8.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [card_UInt16](declarations/card-uint16.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [card_UInt32](declarations/card-uint32.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [card_UInt64](declarations/card-uint64.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [card_Int8](declarations/card-int8.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [card_Int16](declarations/card-int16.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [card_Int32](declarations/card-int32.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `lemma` | [card_Int64](declarations/card-int64.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [card_bitVec](declarations/card-bitvec.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [mem_pi_toList](declarations/mem-pi-tolist.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [Pi.enum](declarations/pi-enum.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [Pi.mem_enum](declarations/pi-mem-enum.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [Pi.finEnum](declarations/pi-finenum.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [pfunFinEnum](declarations/pfunfinenum.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad7581085a5e9ca9d6447352d49022dba07e697c28f8c35a81f07c755f0f09e7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variant1f7be3abe2ec7989dee274226f86a36d6b17f78c4634658f7b593da060cbbcaa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
