# Verification target: Ordered Ownership And Finite Restriction Codes Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55fdef65b0085488cc8e652479bdc4660a5b8dda",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ownership/Variant0a7ebf8d54c957f5b243b2b31bdfefa91ab781d1c46232444c41d6e7028fc50e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/index.md) · [Full source](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55fdef65b0085488cc8e652479bdc4660a5b8dda`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Ownership/Variant0a7ebf8d54c957f5b243b2b31bdfefa91ab781d1c46232444c41d6e7028fc50e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Ownership/Variant0a7ebf8d54c957f5b243b2b31bdfefa91ab781d1c46232444c41d6e7028fc50e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.MathematicalTooling.Coverage.Reconstruction` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Powerset` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Max` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Card` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ownedPiece](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/ownedpiece.md) | 25 | `declaration-track:2fa9210978983ba9aca4bc3a6cc44d9c563fb448ec306987fd3d992e539101bb` |
| 2 | `theorem` | [mem_ownedPiece](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/mem-ownedpiece.md) | 29 | `result-track:b92f9892551e9e7313230c8ee181b9673d12281fd1d8ffbae39387eff94e5667` |
| 3 | `theorem` | [ownedPiece_subset](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/ownedpiece-subset.md) | 34 | `result-track:79999796cc2d6c4c4f0674a63b0eecac60d4cd7637613c8e42837bc678ce97b0` |
| 4 | `theorem` | [ownedPiece_empty](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/ownedpiece-empty.md) | 38 | `result-track:f74f6307e188932ea3b4855191f6409abae83412afb1c6935f719325b2d0b1bd` |
| 5 | `theorem` | [empty_index_cover_iff](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/empty-index-cover-iff.md) | 43 | `result-track:ed4e9acf393e5a848e32d244818fc4b4c19cd811715513ca599098226eaa4412` |
| 6 | `theorem` | [ownedPiece_eq_sdiff](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/ownedpiece-eq-sdiff.md) | 55 | `result-track:2a1b9a572a43af1095fbd78711f27de65730106d6553ad24057735a52b55e7d7` |
| 7 | `theorem` | [ownedPiece_disjoint](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/ownedpiece-disjoint.md) | 62 | `result-track:7511593139793f5cc3bf75a99ea5cbcae50a0aa79ecc5921cf9daf3a4e6f88d8` |
| 8 | `theorem` | [exists_unique_owner](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/exists-unique-owner.md) | 73 | `result-track:41fcf029bdc326cbeed1563c5dac6689002ee0ff8b05bb47414beed564a1812f` |
| 9 | `theorem` | [ownedPiece_first](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/ownedpiece-first.md) | 94 | `result-track:561dc73da734c91acb4e507bc0db589009dd1e8a81b3c4a9dc7c644dc6ca16cb` |
| 10 | `theorem` | [ownedPieces_reconstruct](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/ownedpieces-reconstruct.md) | 102 | `result-track:2cc6a7c3eea24dfc95d710966fda7fabfbef70f17ec24ba39298052bc41b5d01` |
| 11 | `theorem` | [sum_ownedPieces](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/sum-ownedpieces.md) | 115 | `result-track:d1083437b93eed24d2cfb347e4132999d473a054ad4e4d928c188b7369b3ff5e` |
| 12 | `theorem` | [sum_ownedPieces_order_invariant](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/sum-ownedpieces-order-invariant.md) | 127 | `result-track:341899a6a782336d8ff3aabb127d52f4c96dba38ac7e6d960f6ff0ba79b22965` |
| 13 | `theorem` | [image_ownedPiece](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/image-ownedpiece.md) | 135 | `result-track:b5332a3f6f9cbe7ad76faacc31ed5cdc00ffe59fa85bde29300d25a10868a520` |
| 14 | `theorem` | [equiv_ownedPiece_card](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/equiv-ownedpiece-card.md) | 142 | `result-track:c0bb246209f74b771f21b698f0feadc373ed5e97dd40dd0461f547e504008f51` |
| 15 | `theorem` | [equiv_ownedPiece_readout](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/equiv-ownedpiece-readout.md) | 149 | `result-track:eebe7836f99236f17e48eb21bd0cf7420e9dd9c9729706c50497cd262f0ca79c` |
| 16 | `abbrev` | [BlockMask](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/blockmask.md) | 158 | `declaration-track:18d654ba494059e04c968227880fcf16c80756ac6693ca5dd8b5434288de0171` |
| 17 | `def` | [decodeMask](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/decodemask.md) | 161 | `declaration-track:c3c1dd017e44c485cee11d63d6a28e984bdd42648715f88bb2488e69a8d5037f` |
| 18 | `theorem` | [decodeMask_subset](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/decodemask-subset.md) | 164 | `result-track:09c440742e731a89e30a043c4cc6770ec7494a46675158d105f94f5a7cdbea9d` |
| 19 | `def` | [encodeMask](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/encodemask.md) | 171 | `declaration-track:31cc67b78e5a5f4d0e5bb90e113fefe0aefa77e2d93cbf5b0412ee2f910c1136` |
| 20 | `theorem` | [decode_encodeMask](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/decode-encodemask.md) | 174 | `result-track:30536b1e6bc37b4929f24fe7f6f4f35c60d221a9c29a794fa10f6f1325297815` |
| 21 | `theorem` | [decode_ownedPiece_mask](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/decode-ownedpiece-mask.md) | 185 | `result-track:766d19cce605966a35e2643b2922fdb68b0737507f86073f2fe4e08aa70ab2ee` |
| 22 | `theorem` | [blockMask_dimension](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/blockmask-dimension.md) | 191 | `result-track:a19a90dccbb438f7efdd5ff84ef83f35dc918892bd4d8eef21b60ea3cb3e83ca` |
| 23 | `theorem` | [decodeMask_card_le](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/decodemask-card-le.md) | 194 | `result-track:e809b3e23a2749a2318785c0794c94d0e6124490dba1b5bbd2d0751322a3c978` |
| 24 | `abbrev` | [ReconstructionMasks](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/reconstructionmasks.md) | 201 | `declaration-track:1b553ed98bf1ad88f1cc97d3d78121ef38e0c116632125a16e585fe4ac7949b6` |
| 25 | `abbrev` | [MaskSlot](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/maskslot.md) | 205 | `declaration-track:15388e94c4a785bd5a50649587481c59a456bff40b8ebfdd5764aec1cef9daca` |
| 26 | `def` | [maskSlotPayloadEquiv](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/maskslotpayloadequiv.md) | 208 | `declaration-track:d8566a79df00415fd25700d5abaf0f5fd4c7e7dad830ab0081abe8d02ffe044c` |
| 27 | `def` | [maskStorageSlots](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/maskstorageslots.md) | 219 | `declaration-track:5a98635c340971470801ea287a9eab58854e9cb54061b42225f8ee1311aba221` |
| 28 | `theorem` | [maskStorageSlots_eq](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/maskstorageslots-eq.md) | 222 | `result-track:395bed185c20b58bb1018f2a16c95212720d793228fa9a116fbd52535bdfe511` |
| 29 | `theorem` | [card_reconstructionMasks](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/card-reconstructionmasks.md) | 230 | `result-track:0b92607dbaa315d2b28db5baf773d344bc2c0949040e754b527f27f017eda063` |
| 30 | `def` | [decodeReconstructionMasks](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/decodereconstructionmasks.md) | 237 | `declaration-track:2d05bf1cbb7a9dccd43d8716e39844f779812a3f18c25e5ec10ea40682200be5` |
| 31 | `def` | [encodeOwnedMasks](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/encodeownedmasks.md) | 241 | `declaration-track:12b6b21797a05003e8d8459215729ca9a9e84d0c6e26caa4c712902e02d589f9` |
| 32 | `theorem` | [decode_encodeOwnedMasks](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/decode-encodeownedmasks.md) | 245 | `result-track:3821dbe18d1f42ec443202a5862e442288c563ed4a77c1c61912dc0c7b444776` |
| 33 | `def` | [maskEntryVisits](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/maskentryvisits.md) | 254 | `declaration-track:504da1a408b68f9cb497f9aa0a531349a3716a50ac10d951eaa805208e41497e` |
| 34 | `theorem` | [maskEntryVisits_eq](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/maskentryvisits-eq.md) | 257 | `result-track:2ccf924b6cce9b9742145f03763122835779eebf50bad12e3e06969bc455ff30` |
| 35 | `theorem` | [maskEntryVisits_le](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/maskentryvisits-le.md) | 261 | `result-track:4250133943f323687405f54f6364f43a00f6cfdfddd0371b6039de7d7c522bf8` |
| 36 | `theorem` | [maskStorageSlots_le](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/maskstorageslots-le.md) | 271 | `result-track:23ae8faff68e2b8e93cc0c9615ee76fd2ef454ac22619d258a7df9ab78ad5893` |
| 37 | `def` | [fragmentCatalogue](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/fragmentcatalogue.md) | 276 | `declaration-track:5b03c4f5079f4a9cabb7fbd853c9b6991198fdb9f81b9f7b25611fb6df1c6002` |
| 38 | `theorem` | [card_fragmentCatalogue_le](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/card-fragmentcatalogue-le.md) | 279 | `result-track:3e08046bff50992860ec1ff6c76da96a74206bbaee7ff36218dfba061e896842` |
| 39 | `theorem` | [card_fragmentCatalogue_le_uniform](../../../../Combinatorics/OrderedOwnershipAndFiniteRestrictionCodesEdition1.lean/declarations/card-fragmentcatalogue-le-uniform.md) | 286 | `result-track:709073578117f4f507f1dbe89f007ac05a1107ab676fcfb3526be190d1b5d725` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5b178a4508f41da5a658be8ccc2cb44b0e1efd3d65d5c0bd807348ff5817c1f7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Ownership/Variant0a7ebf8d54c957f5b243b2b31bdfefa91ab781d1c46232444c41d6e7028fc50e.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Ownership/Variant0a7ebf8d54c957f5b243b2b31bdfefa91ab781d1c46232444c41d6e7028fc50e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
