# Fin Enum Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**73 observed declarations and anonymous commands**, 32 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variante9c3c7687adaaedac32f2aca61d7bc7288952b79bf4fcad5f927e0b8f55c10e0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `df6ac367ee03198aed115ea85df63dabd6be621b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [FinEnum](declarations/finenum.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [ofEquiv](declarations/ofequiv.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [ofNodupList](declarations/ofnoduplist.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [ofList](declarations/oflist.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [card_ofList](declarations/card-oflist.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [toList](declarations/tolist.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mem_toList](declarations/mem-tolist.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [nodup_toList](declarations/nodup-tolist.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [ofSurjective](declarations/ofsurjective.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [ofInjective](declarations/ofinjective.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [Fin Enum Namespaced Public](declarations/instfinenum.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [card_ulift](declarations/card-ulift.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [equiv_up](declarations/equiv-up.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [equiv_down](declarations/equiv-down.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [up_equiv_symm](declarations/up-equiv-symm.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [down_equiv_symm](declarations/down-equiv-symm.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [pempty](declarations/pempty.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [card_pempty](declarations/card-pempty.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [empty](declarations/empty.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [card_empty](declarations/card-empty.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [punit](declarations/punit.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [card_punit](declarations/card-punit.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [prod](declarations/prod.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [sum](declarations/sum.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [fin](declarations/fin.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [card_fin](declarations/card-fin.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [Quotient.enum](declarations/quotient-enum.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [Finset.enum](declarations/finset-enum.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Finset.mem_enum](declarations/finset-mem-enum.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [Finset.finEnum](declarations/finset-finenum.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [Subtype.finEnum](declarations/subtype-finenum.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [PSigma.finEnum](declarations/psigma-finenum.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [PSigma.finEnumPropLeft](declarations/psigma-finenumpropleft.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [PSigma.finEnumPropRight](declarations/psigma-finenumpropright.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [PSigma.finEnumPropProp](declarations/psigma-finenumpropprop.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [card_eq_fintypeCard](declarations/card-eq-fintypecard.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [card_unique](declarations/card-unique.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [card_eq_zero_iff](declarations/card-eq-zero-iff.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [card_eq_zero](declarations/card-eq-zero.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [card_pos_iff](declarations/card-pos-iff.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [card_pos](declarations/card-pos.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [card_ne_zero](declarations/card-ne-zero.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [card_eq_one](declarations/card-eq-one.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [ofIsEmpty](declarations/ofisempty.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [ofUnique](declarations/ofunique.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [(anonymous)](declarations/instance.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [card_UInt8](declarations/card-uint8.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [card_UInt16](declarations/card-uint16.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [card_UInt32](declarations/card-uint32.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [card_UInt64](declarations/card-uint64.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [card_Int8](declarations/card-int8.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [card_Int16](declarations/card-int16.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [card_Int32](declarations/card-int32.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `lemma` | [card_Int64](declarations/card-int64.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [card_bitVec](declarations/card-bitvec.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [mem_pi_toList](declarations/mem-pi-tolist.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [Pi.enum](declarations/pi-enum.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [Pi.mem_enum](declarations/pi-mem-enum.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [Pi.finEnum](declarations/pi-finenum.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [pfunFinEnum](declarations/pfunfinenum.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4a19a5787e9e47ec13a85807da2db0cbac6bcb76d44d4357b017ba7b8457ddac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variante9c3c7687adaaedac32f2aca61d7bc7288952b79bf4fcad5f927e0b8f55c10e0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
