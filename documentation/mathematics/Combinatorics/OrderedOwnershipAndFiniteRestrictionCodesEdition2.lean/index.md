# Ordered Ownership And Finite Restriction Codes Edition2

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05d033511e3537d8b65fb25566a544b57250ff7c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [ownedPiece](declarations/ownedpiece.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mem_ownedPiece](declarations/mem-ownedpiece.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [ownedPiece_subset](declarations/ownedpiece-subset.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [ownedPiece_empty](declarations/ownedpiece-empty.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [empty_index_cover_iff](declarations/empty-index-cover-iff.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [ownedPiece_eq_sdiff](declarations/ownedpiece-eq-sdiff.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [ownedPiece_disjoint](declarations/ownedpiece-disjoint.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [exists_unique_owner](declarations/exists-unique-owner.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ownedPiece_first](declarations/ownedpiece-first.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ownedPieces_reconstruct](declarations/ownedpieces-reconstruct.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [sum_ownedPieces](declarations/sum-ownedpieces.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [sum_ownedPieces_order_invariant](declarations/sum-ownedpieces-order-invariant.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [image_ownedPiece](declarations/image-ownedpiece.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [equiv_ownedPiece_card](declarations/equiv-ownedpiece-card.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [equiv_ownedPiece_readout](declarations/equiv-ownedpiece-readout.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `abbrev` | [BlockMask](declarations/blockmask.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [decodeMask](declarations/decodemask.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [decodeMask_subset](declarations/decodemask-subset.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [encodeMask](declarations/encodemask.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [decode_encodeMask](declarations/decode-encodemask.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [decode_ownedPiece_mask](declarations/decode-ownedpiece-mask.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [blockMask_dimension](declarations/blockmask-dimension.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [decodeMask_card_le](declarations/decodemask-card-le.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `abbrev` | [ReconstructionMasks](declarations/reconstructionmasks.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `abbrev` | [MaskSlot](declarations/maskslot.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [maskSlotPayloadEquiv](declarations/maskslotpayloadequiv.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [maskStorageSlots](declarations/maskstorageslots.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [maskStorageSlots_eq](declarations/maskstorageslots-eq.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [card_reconstructionMasks](declarations/card-reconstructionmasks.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [decodeReconstructionMasks](declarations/decodereconstructionmasks.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [encodeOwnedMasks](declarations/encodeownedmasks.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [decode_encodeOwnedMasks](declarations/decode-encodeownedmasks.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [maskEntryVisits](declarations/maskentryvisits.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [maskEntryVisits_eq](declarations/maskentryvisits-eq.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [maskEntryVisits_le](declarations/maskentryvisits-le.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [maskStorageSlots_le](declarations/maskstorageslots-le.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [fragmentCatalogue](declarations/fragmentcatalogue.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [card_fragmentCatalogue_le](declarations/card-fragmentcatalogue-le.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [card_fragmentCatalogue_le_uniform](declarations/card-fragmentcatalogue-le-uniform.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=89f515c36af8666a389c95cc3dee45d58f84ce0ce9630c9904ab35c555aa5660 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Ownership/Variantcbdd61525a91e012ad7f5003535cb3a7052e411291933daf58abb0f9510996fd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
