# Encodable Basic Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**103 observed declarations and anonymous commands**, 52 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6012b3d8e91dc74fc8a15c03036fb12fba12ede1374768fd87765ebb050358ee.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb88d8fb5bc6ad6e7bd27a5e74c71718c55e7e2c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/EncodableBasicPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [Encodable](declarations/encodable.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [encode_injective](declarations/encode-injective.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [encode_inj](declarations/encode-inj.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [surjective_decode_getD](declarations/surjective-decode-getd.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [decidableEqOfEncodable](declarations/decidableeqofencodable.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [ofLeftInjection](declarations/ofleftinjection.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [ofLeftInverse](declarations/ofleftinverse.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [ofEquiv](declarations/ofequiv.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [encode_ofEquiv](declarations/encode-ofequiv.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [decode_ofEquiv](declarations/decode-ofequiv.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [_root_.Nat.encodable](declarations/root-nat-encodable.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [encode_nat](declarations/encode-nat.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [decode_nat](declarations/decode-nat.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [_root_.PUnit.encodable](declarations/root-punit-encodable.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [encode_star](declarations/encode-star.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [decode_unit_zero](declarations/decode-unit-zero.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [decode_unit_succ](declarations/decode-unit-succ.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [_root_.Option.encodable](declarations/root-option-encodable.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [encode_none](declarations/encode-none.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [encode_some](declarations/encode-some.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [decode_option_zero](declarations/decode-option-zero.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [decode_option_succ](declarations/decode-option-succ.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [decode₂](declarations/decode.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mem_decode₂'](declarations/mem-decode.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mem_decode₂](declarations/mem-decode-source-edition-2.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [decode₂_eq_some](declarations/decode-eq-some.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [decode₂_encode](declarations/decode-encode.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [decode₂_ne_none_iff](declarations/decode-ne-none-iff.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [decode₂_isPartialInv](declarations/decode-ispartialinv.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [decode₂_inj](declarations/decode-inj.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [encodek₂](declarations/encodek.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [decidableRangeEncode](declarations/decidablerangeencode.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [equivRangeEncode](declarations/equivrangeencode.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [_root_.Unique.encodable](declarations/root-unique-encodable.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [encodeSum](declarations/encodesum.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [decodeSum](declarations/decodesum.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [_root_.Sum.encodable](declarations/root-sum-encodable.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [encode_inl](declarations/encode-inl.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [encode_inr](declarations/encode-inr.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [decode_sum_val](declarations/decode-sum-val.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [_root_.Bool.encodable](declarations/root-bool-encodable.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [encode_true](declarations/encode-true.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [encode_false](declarations/encode-false.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [decode_zero](declarations/decode-zero.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [decode_one](declarations/decode-one.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [decode_ge_two](declarations/decode-ge-two.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [_root_.Prop.encodable](declarations/root-prop-encodable.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [encodeSigma](declarations/encodesigma.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [decodeSigma](declarations/decodesigma.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [_root_.Sigma.encodable](declarations/root-sigma-encodable.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [decode_sigma_val](declarations/decode-sigma-val.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [encode_sigma_val](declarations/encode-sigma-val.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [Prod.encodable](declarations/prod-encodable.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [decode_prod_val](declarations/decode-prod-val.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [encode_prod_val](declarations/encode-prod-val.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [encodeSubtype](declarations/encodesubtype.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [decodeSubtype](declarations/decodesubtype.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [_root_.Subtype.encodable](declarations/root-subtype-encodable.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [Subtype.encode_eq](declarations/subtype-encode-eq.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [_root_.Fin.encodable](declarations/root-fin-encodable.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [_root_.Int.encodable](declarations/root-int-encodable.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `instance` | [_root_.PNat.encodable](declarations/root-pnat-encodable.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [_root_.ULift.encodable](declarations/root-ulift-encodable.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [_root_.PLift.encodable](declarations/root-plift-encodable.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [ofInj](declarations/ofinj.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [ofCountable](declarations/ofcountable.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [nonempty_encodable](declarations/nonempty-encodable-source-edition-2.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [nonempty_encodable](declarations/nonempty-encodable.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [ULower](declarations/ulower.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [equiv](declarations/equiv.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [down](declarations/down.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [up](declarations/up.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [down_up](declarations/down-up.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [up_down](declarations/up-down.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [up_eq_up](declarations/up-eq-up.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [down_eq_down](declarations/down-eq-down.md) | 459 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [ext](declarations/ext.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [good](declarations/good.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `instance` | [decidable_good](declarations/decidable-good.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [chooseX](declarations/choosex.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [choose](declarations/choose.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [choose_spec](declarations/choose-spec.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [axiom_of_choice](declarations/axiom-of-choice.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [skolem](declarations/skolem.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [encode'](declarations/encode.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [sequence](declarations/sequence.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `theorem` | [sequence_mono_nat](declarations/sequence-mono-nat.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [rel_sequence](declarations/rel-sequence.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [sequence_mono](declarations/sequence-mono.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [le_sequence](declarations/le-sequence.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [sequence_anti](declarations/sequence-anti.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `theorem` | [sequence_le](declarations/sequence-le.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [Quotient.rep](declarations/quotient-rep.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [Quotient.rep_spec](declarations/quotient-rep-spec.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [encodableQuotient](declarations/encodablequotient.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=49ead8ecdba99742c282bbacb61ebc6323ab10e515cd6dda3e9e484be236f8c6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant6012b3d8e91dc74fc8a15c03036fb12fba12ede1374768fd87765ebb050358ee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
