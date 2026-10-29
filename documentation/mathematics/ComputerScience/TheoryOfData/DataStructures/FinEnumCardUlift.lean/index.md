# Fin Enum Card Ulift

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**51 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variant7ee68bae79b63b31b68727d0ebaf43f526c2955797c1fde21894757b6497add5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1421586941a7f039f746e22511dc3a46f9a12585`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/FinEnumCardUlift.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [FinEnum](declarations/finenum.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [ofEquiv](declarations/ofequiv.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [ofNodupList](declarations/ofnoduplist.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [ofList](declarations/oflist.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [toList](declarations/tolist.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [mem_toList](declarations/mem-tolist.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [nodup_toList](declarations/nodup-tolist.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [ofSurjective](declarations/ofsurjective.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [ofInjective](declarations/ofinjective.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [_root_.ULift.instFinEnum](declarations/root-ulift-instfinenum.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [card_ulift](declarations/card-ulift.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [equiv_up](declarations/equiv-up.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [equiv_down](declarations/equiv-down.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [up_equiv_symm](declarations/up-equiv-symm.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [down_equiv_symm](declarations/down-equiv-symm.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [pempty](declarations/pempty.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [empty](declarations/empty.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [punit](declarations/punit.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [prod](declarations/prod.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [sum](declarations/sum.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [fin](declarations/fin.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [card_fin](declarations/card-fin.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [Quotient.enum](declarations/quotient-enum.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [Finset.enum](declarations/finset-enum.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Finset.mem_enum](declarations/finset-mem-enum.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [Finset.finEnum](declarations/finset-finenum.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [Subtype.finEnum](declarations/subtype-finenum.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [PSigma.finEnum](declarations/psigma-finenum.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [PSigma.finEnumPropLeft](declarations/psigma-finenumpropleft.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [PSigma.finEnumPropRight](declarations/psigma-finenumpropright.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [PSigma.finEnumPropProp](declarations/psigma-finenumpropprop.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [card_eq_fintypeCard](declarations/card-eq-fintypecard.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [card_unique](declarations/card-unique.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [card_eq_zero_iff](declarations/card-eq-zero-iff.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [card_eq_zero](declarations/card-eq-zero.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [card_pos_iff](declarations/card-pos-iff.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [card_pos](declarations/card-pos.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [card_ne_zero](declarations/card-ne-zero.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [card_eq_one](declarations/card-eq-one.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [ofIsEmpty](declarations/ofisempty.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [ofUnique](declarations/ofunique.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [mem_pi_toList](declarations/mem-pi-tolist.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [Pi.enum](declarations/pi-enum.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [Pi.mem_enum](declarations/pi-mem-enum.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [Pi.finEnum](declarations/pi-finenum.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [pfunFinEnum](declarations/pfunfinenum.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=11d027b6b441c9363313fef3347b9db4934bf4c4aaf21f6ba04a37a018c978fc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variant7ee68bae79b63b31b68727d0ebaf43f526c2955797c1fde21894757b6497add5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
