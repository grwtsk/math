# Verification target: Shared Binary Matrix Stream Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3f4738912b9c9c70a08bf8a98c15103c7dfa728",
  "lexical_observation_count": 117,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SharedBinaryMatrixStream/Variante65a058a849f09a87a0d48f554c00f07237d88b58cccb614294e2490f773466f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3f4738912b9c9c70a08bf8a98c15103c7dfa728`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SharedBinaryMatrixStream/Variante65a058a849f09a87a0d48f554c00f07237d88b58cccb614294e2490f773466f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SharedBinaryMatrixStream/Variante65a058a849f09a87a0d48f554c00f07237d88b58cccb614294e2490f773466f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cacheLineBytes](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/cachelinebytes.md) | 29 | `declaration-track:38a6c1ee82619c6993ead23d8b548f55d281bb7d51af0fb6d0393c1255eb3298` |
| 2 | `def` | [streamHeaderBytes](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/streamheaderbytes.md) | 30 | `declaration-track:e93ab78583421df93ba3d1cd3b55965572b6f69c5b35a2f819b7234052f74cac` |
| 3 | `def` | [channelStrideBytes](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/channelstridebytes.md) | 31 | `declaration-track:e5e98d889b9ef09c71e9364ae611409e77434a2aef52d46fcd37bd49d3eecaa7` |
| 4 | `def` | [eventWordCount](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/eventwordcount.md) | 32 | `declaration-track:b352415d8621eef81d64fb824dfd502cd1aad65c5a4992733d1c3d7a5dad1919` |
| 5 | `def` | [eventAbiVersion](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/eventabiversion.md) | 33 | `declaration-track:6433d1c0180d83ce868e243303344fa23e047011d4e9cbfe72f9e845e4768726` |
| 6 | `structure` | [ByteRange](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/byterange.md) | 37 | `declaration-track:71524c0ed2c1ac18924ac002d9aab0ada3b58545c15b1190c953ad63827e8f02` |
| 7 | `def` | [ByteRange.endOffset](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/byterange-endoffset.md) | 42 | `declaration-track:67ca82d55727504602ad3cc7a296213e0306719a5436bd78b1119ebea5838370` |
| 8 | `def` | [ByteRange.Aligned](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/byterange-aligned.md) | 45 | `declaration-track:3e42b01a7e1d1f73a38913d17ddbcf72420c67d014b8cf21efa961c6bf101894` |
| 9 | `def` | [ByteRange.InBounds](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/byterange-inbounds.md) | 50 | `declaration-track:be8c51fb63739448065f5cb34cac52e71dc35b994cec610b190d6cf586fa68ed` |
| 10 | `def` | [ByteRange.Disjoint](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/byterange-disjoint.md) | 53 | `declaration-track:79375217584fefcdf2a7b5698c008ec8d7007f8389ea200a052b7f6149b10e48` |
| 11 | `def` | [channelRange](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/channelrange.md) | 58 | `declaration-track:b1cd2cf21877fe58f0299747eb66c4b10d4b8cf9dd778016f814a51a75fe2ecb` |
| 12 | `def` | [streamBufferBytes](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/streambufferbytes.md) | 63 | `declaration-track:e24f52b6cc518b6db132d541c7fbb98c8e99696a7b09d54670232d294a738bdc` |
| 13 | `theorem` | [channelRange_aligned](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/channelrange-aligned.md) | 67 | `result-track:d72e724cd48b07b2781ea5ad98e14e0757657b9ca9a44521e1982416c1fa7917` |
| 14 | `theorem` | [channelRange_inBounds](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/channelrange-inbounds.md) | 75 | `result-track:cefd83e1e31a813505967217c475096a73b036948201d79476e416010ea844b2` |
| 15 | `theorem` | [channelRange_pairwiseDisjoint](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/channelrange-pairwisedisjoint.md) | 82 | `result-track:0334e08b41dbbb5dc47962c3266b4c2c68460edfd4d1d3ef9c79c6315fb837d1` |
| 16 | `structure` | [LayoutDescriptor](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/layoutdescriptor.md) | 94 | `declaration-track:fd1769ee1701c931bb857f909848fbd9c87e2e367b6154ac05a3026b8a67db16` |
| 17 | `def` | [LayoutDescriptor.Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/layoutdescriptor-valid.md) | 98 | `declaration-track:323fa9fbf0e45f2b29d2172ffcd57a60a62bba0e5ec0a0fe8b0a04b53897d84f` |
| 18 | `def` | [predictiveLayoutGenerator](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/predictivelayoutgenerator.md) | 108 | `declaration-track:4a6f74763dd0a78f7025a63dc67861eda45dfbad26013b22984e43916e0e77b6` |
| 19 | `theorem` | [predictiveLayoutGenerator_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/predictivelayoutgenerator-sound.md) | 114 | `result-track:197b369b43ca20e1d17419b16d64051a8fd7fbf05cfe837073b82bc20dea2c9c` |
| 20 | `structure` | [BinaryMatrixFrame](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/binarymatrixframe.md) | 125 | `declaration-track:6ba3d09423101a15c85b90c2e8f99c2ca0d69c67dbc20cd926d03ed04fae651b` |
| 21 | `def` | [predictedBit](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/predictedbit.md) | 130 | `declaration-track:662234f8fc258760ccea7e7e5f04457c8f18d68f5f3d7e9ff3ff4ca3a838fd00` |
| 22 | `def` | [BinaryMatrixFrame.PredictedBy](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/binarymatrixframe-predictedby.md) | 133 | `declaration-track:75eadcc3878a4db26048d167e73aead43d23316ef55a8257f49c24b9b2e33d31` |
| 23 | `def` | [predictiveFrameGenerator](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/predictiveframegenerator.md) | 140 | `declaration-track:9a17c7b397a1e5cc48afd10eaefdd68bcdc2933d0e7d1d28bb04a4f164b04775` |
| 24 | `theorem` | [predictiveFrameGenerator_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/predictiveframegenerator-sound.md) | 146 | `result-track:abcb359303e8df14785d10d3f8aef22f1e47bd4a1f37aaf2fc4af84eac6f9c11` |
| 25 | `structure` | [MatrixCellEdit](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/matrixcelledit.md) | 157 | `declaration-track:0ab5531a65e37de7b7b8c9495a5ad99180273915d15e6f707d8d9d54fda87203` |
| 26 | `def` | [MatrixCellEdit.ValidFor](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/matrixcelledit-validfor.md) | 165 | `declaration-track:319e990eba6be2f8cf48a7dbd1bb5ed228fc25d6d97e3b2828fe9fd84cdbed36` |
| 27 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/instance.md) | 169 | `declaration-track:17d52ffdacd43521169fb505c7c4c087bb85ce2f9cf074c2458746438a35cd60` |
| 28 | `def` | [verifyCellEdit](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/verifycelledit.md) | 176 | `declaration-track:c4e8b33ecc667a7b0c0b9c991d99a1fc74b1cf9b836139da1199157591b9abdd` |
| 29 | `theorem` | [verifyCellEdit_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/verifycelledit-sound.md) | 181 | `result-track:c56b5ef970805078b345bd31ab203ee0bbe3b24741e7f5e34aadc8f645d71acc` |
| 30 | `def` | [BinaryMatrixFrame.applyCellEdit](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/binarymatrixframe-applycelledit.md) | 187 | `declaration-track:3310433e030b49651a6deed84d7c748dcaf18a764065e079ce92f3b9db5efd1c` |
| 31 | `theorem` | [BinaryMatrixFrame.applyCellEdit_predictedBy](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/binarymatrixframe-applycelledit-predictedby.md) | 199 | `result-track:7ecfb9d2ec401755fce71553fc74b75386a0e303aa70b5f97fda8c9c18211fa7` |
| 32 | `structure` | [RevisionedPublication](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/revisionedpublication.md) | 218 | `declaration-track:aec2927d121a565a25505e6790077bbd3e5ea91dc6a4a6088453ff14c5cbbcc1` |
| 33 | `def` | [RevisionedPublication.current](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/revisionedpublication-current.md) | 224 | `declaration-track:123619b561377bd89c40edff73755d4173f37bdaff5cca0aa641645eeb02ab59` |
| 34 | `theorem` | [RevisionedPublication.current_revision](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/revisionedpublication-current-revision.md) | 230 | `result-track:bd719c8d23941ab4182bb421a6c2949830756b820210f71aa97cf7ec2179366e` |
| 35 | `structure` | [UserEvent](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/userevent.md) | 239 | `declaration-track:73a692b4abc082c8bc20ca07b7730468076dde7fe32477d92281c6aa3a56947f` |
| 36 | `abbrev` | [EventWords](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/eventwords.md) | 249 | `declaration-track:ea7c60e95a5dbfa99a7fa1ee56aa85ff3964fde9f229d1eecac19c2b180f1af2` |
| 37 | `def` | [SignedInt32](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/signedint32.md) | 252 | `declaration-track:2a0f9286235acc2d495f821b47c4c5aff237ff63d713ea0105b5f44d062c139a` |
| 38 | `def` | [EventWords.Signed32](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/eventwords-signed32.md) | 257 | `declaration-track:215bf0e476f6e404a59a07eabe1b0e7e9c358cc6286b5a36555babf6368157dc` |
| 39 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/instance-source-edition-4.md) | 260 | `declaration-track:63a445a0723a20e4744950729b2372d775362b7d5ab97b1d40f61bbc5c583d91` |
| 40 | `def` | [encodeEvent](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/encodeevent.md) | 264 | `declaration-track:fd4eaf3b5dac807f2cf41e9147a7863d87d3ba6c95a252fe217cfbcd672ae77e` |
| 41 | `def` | [decodeEvent](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/decodeevent.md) | 268 | `declaration-track:5ff600715e4fac1e865459c1d17698392629097408deb3ad68aee135e4e68c68` |
| 42 | `theorem` | [decodeEvent_encodeEvent](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/decodeevent-encodeevent.md) | 283 | `result-track:dba12a8b5b60a116f689af3dacc8310bc1853cd07ba66a6dcdd26d28ac549bc2` |
| 43 | `def` | [UserEvent.Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/userevent-valid.md) | 289 | `declaration-track:353eefd62a2f4f00057102db1bb898a7033abcd5d1c48b3ef8b33a1608b6d1d4` |
| 44 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/instance-source-edition-3.md) | 295 | `declaration-track:5a63fbed99c9e0bc77d1ac32f9a959934bfa4fac464629dc1c2ba8fad1e1b3b2` |
| 45 | `def` | [verifyEvent](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/verifyevent.md) | 299 | `declaration-track:601448d0b5f5901f7b312983eb25f5d266c958b514f93ae98edb20f28a8d063d` |
| 46 | `theorem` | [verifyEvent_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/verifyevent-sound.md) | 303 | `result-track:0b5634a2b8d54a71afea7a6c79c7ee203d2683132d2831e6d939c119a3b8d906` |
| 47 | `def` | [fiberTensionColorContourSchema](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/fibertensioncolorcontourschema.md) | 317 | `declaration-track:f6646c141e32767c5875839fb5d19419093a899ab7f906bd3a31f6b16c41b15a` |
| 48 | `def` | [maxFiberTension](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/maxfibertension.md) | 321 | `declaration-track:05fea3204c1947f905b2a7d1bb813e912b5ee0bdf9089b544d94af2d6387e1cd` |
| 49 | `structure` | [HostFiber](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/hostfiber.md) | 327 | `declaration-track:efce73234d2b5990efb25bb2b53631991ffa5840395f0081fe7c3b010fab4ab1` |
| 50 | `def` | [HostFiber.Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/hostfiber-valid.md) | 333 | `declaration-track:7ffb8453343ac8a30cab28a6dc689a0ec1966692c8097391d0eec687aabf800c` |
| 51 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/instance-source-edition-8.md) | 337 | `declaration-track:f91f95ad8333bf87e741214a76e9f75ae73691411d0a1ef316b4ef96031f10a1` |
| 52 | `structure` | [HostFiberNetwork](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/hostfibernetwork.md) | 346 | `declaration-track:39691de8521e42c4e7d80106032e1f6101c2a1786de7745f2179d5b511e34c5d` |
| 53 | `def` | [HostFiberNetwork.Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/hostfibernetwork-valid.md) | 349 | `declaration-track:3fb768d4b87675ba9613d9779dba53ae62b131c88da7eb518dff62c36201bb8e` |
| 54 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/instance-source-edition-6.md) | 353 | `declaration-track:99a64fefb2de1f13c965e0b9e78c675a3d0bc1bc3e40469508fe6acd9f6e973a` |
| 55 | `abbrev` | [FiberRank](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/fiberrank.md) | 367 | `declaration-track:2e860d8b1c59b583bdca47569393b3d2a2489eff671bd943c474d761c85ba103` |
| 56 | `def` | [HostFiberNetwork.fiberRank](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/hostfibernetwork-fiberrank.md) | 369 | `declaration-track:1ca9584670a1182c8152c587bd78c52fc4ed79d63ea03be8a0eaa4aadc25b86d` |
| 57 | `theorem` | [HostFiberNetwork.fiberRank_lt_of_tension_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/hostfibernetwork-fiberrank-lt-of-tension-lt.md) | 377 | `result-track:b8234088ce75498475ecc493f276b82452bb8dd2687675bd2838cd160debc13a` |
| 58 | `theorem` | [HostFiberNetwork.fiberRank_lt_of_target_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/hostfibernetwork-fiberrank-lt-of-target-lt.md) | 387 | `result-track:5cf17c9139fb1158ae4e14a34bc183ccedd2b2a4e33d4646c6a0f0e1e21cb86a` |
| 59 | `theorem` | [HostFiberNetwork.fiberRank_lt_of_slot_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/hostfibernetwork-fiberrank-lt-of-slot-lt.md) | 400 | `result-track:e14003b5903c59bac1c0170990aaa2868d031e24c5eea29b812adce2f115d9b6` |
| 60 | `def` | [HostFiberNetwork.outgoingSlots](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/hostfibernetwork-outgoingslots.md) | 414 | `declaration-track:cae178193699a0028ae16659567713084add27e7f0c26ed2359c489c9f4b7710` |
| 61 | `def` | [HostFiberNetwork.selectOutgoingSlot](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/hostfibernetwork-selectoutgoingslot.md) | 422 | `declaration-track:0042a7c6c524f7c2f607d2babe312b0b2a2a171c188b2064510b6c10bc3b65a5` |
| 62 | `theorem` | [HostFiberNetwork.selectOutgoingSlot_enabled](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/hostfibernetwork-selectoutgoingslot-enabled.md) | 428 | `result-track:b3639aab1eca09dd98f62fab35f23ed30a20e83bc37cb96e0e7caa46644290ae` |
| 63 | `theorem` | [HostFiberNetwork.candidate_rank_le_selected](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/hostfibernetwork-candidate-rank-le-selected.md) | 444 | `result-track:3104e2fc8b334a82d8d74d6dd1c23e99ab400f271635692d993b9f7df348a43e` |
| 64 | `theorem` | [HostFiberNetwork.candidate_tension_le_selected](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/hostfibernetwork-candidate-tension-le-selected.md) | 459 | `result-track:c2c73dc25e34a19961c10fa27d1276974299e00da8c87218b6b8c653a29d9b03` |
| 65 | `theorem` | [HostFiberNetwork.selected_target_le_candidate_of_tension_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/hostfibernetwork-selected-target-le-candidate-of-tension-eq.md) | 474 | `result-track:da8e1e140692a0d8842e9be994ec80cb713d503cefcf880aabdecdf29e57a64f` |
| 66 | `theorem` | [HostFiberNetwork.selected_slot_le_candidate_of_ties](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/hostfibernetwork-selected-slot-le-candidate-of-ties.md) | 492 | `result-track:fddb4a6f4203251e464dbac3cc876c33ab73f42dc69a424830cb1227363940a7` |
| 67 | `theorem` | [HostFiberNetwork.selectOutgoingSlot_none_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/hostfibernetwork-selectoutgoingslot-none-iff.md) | 511 | `result-track:169800f86629c628cdf487474a4448a90377dfbbee09042bf58f89dd750812d2` |
| 68 | `def` | [cieXyzScale](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/ciexyzscale.md) | 529 | `declaration-track:8e7533b166dbd3ae6d29cb65c65a1c4b1efb2fd289c34476683e869798bdae60` |
| 69 | `def` | [cieXyzChannelMax](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/ciexyzchannelmax.md) | 530 | `declaration-track:3ace4f0554cefa41cbaafeb62c133300806cd8537033c52c572c88a592e13135` |
| 70 | `structure` | [CieXyzFixed](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/ciexyzfixed.md) | 534 | `declaration-track:a08bcf7d664cf4e7f0bc1ad12e22a0270e5c28b21c17e9f4d4f589969b35be39` |
| 71 | `def` | [CieXyzFixed.Bounded](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/ciexyzfixed-bounded.md) | 540 | `declaration-track:d73b8e6dd9efa734a5699d4a69a5223b330fa7ca10a878f0707366c4974c5c7c` |
| 72 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/instance-source-edition-7.md) | 545 | `declaration-track:ec859bc8b3b2eaa37fccd018580c1d8bae6a63e6abf27986dec5420e6ade8e14` |
| 73 | `def` | [CieXyzFixed.toRational](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/ciexyzfixed-torational.md) | 550 | `declaration-track:2adcc8643575c47c4b2b0dc49727df847ccf83c7169e82828192c676e3ddba88` |
| 74 | `theorem` | [CieXyzFixed.toRational_nonnegative](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/ciexyzfixed-torational-nonnegative.md) | 556 | `result-track:5f6ea9c3ab94a0087b200a31ef852f4a6c7376e701fdb727726005884b18c6e7` |
| 75 | `theorem` | [CieXyzFixed.toRational_le_channelCap](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/ciexyzfixed-torational-le-channelcap.md) | 564 | `result-track:638c94a16f18067e8095da6856271448203321bc333aabe0b75fbd6bfe3440d7` |
| 76 | `inductive` | [CieXyzChannel](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/ciexyzchannel.md) | 582 | `declaration-track:a496e8882838e883373200cf94a91924ed7c2cabfda871695078eb861c91e397` |
| 77 | `def` | [CieXyzFixed.channelValue](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/ciexyzfixed-channelvalue.md) | 588 | `declaration-track:d960fceb8f9828172cfedb2d8c12ac815ba0a315cae40545dc95c8ffef7e03aa` |
| 78 | `def` | [CieXyzFixed.replaceChannel](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/ciexyzfixed-replacechannel.md) | 594 | `declaration-track:43eb389eee39d00d5cb0429cf76ad4ff3b662f3f027979f5dc347cf413a57ab2` |
| 79 | `structure` | [CieXyzState](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/ciexyzstate.md) | 604 | `declaration-track:f4684ec99db9c87e2cea6b2e4899937db39abebb661c2671ed2724797932d3fb` |
| 80 | `structure` | [CieXyzProposal](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/ciexyzproposal.md) | 612 | `declaration-track:459e72b6206dac8d6e7c41ca073c1f6416166d982169c1783f5e5627cb29b92e` |
| 81 | `def` | [CieXyzProposal.ValidFor](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/ciexyzproposal-validfor.md) | 617 | `declaration-track:f0fd2d564859fc091d127a1983d3c7bb5e835ae94b1fcbd2c63a352edc2f2e16` |
| 82 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/instance-source-edition-2.md) | 621 | `declaration-track:455c72278c6aa396d682a19d2158cddf223286cce0d337263d8edfdce41e60cd` |
| 83 | `def` | [verifyCieXyzProposal](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/verifyciexyzproposal.md) | 626 | `declaration-track:1f9a99e3b802f8f61eb1c28826783d5bce29ab1e19f77605bdf478ba72ec0e68` |
| 84 | `theorem` | [verifyCieXyzProposal_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/verifyciexyzproposal-sound.md) | 631 | `result-track:49f003e6374192e0d74c0d686e937056e65df4c43a8041e997e012669dddb9a2` |
| 85 | `def` | [CieXyzState.applyProposal](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/ciexyzstate-applyproposal.md) | 637 | `declaration-track:3a345ac44d74cb71b7c2a2c7c415ddfec0af27aef7e12a6928849cfe8610a91f` |
| 86 | `theorem` | [CieXyzState.applyProposal_revision](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/ciexyzstate-applyproposal-revision.md) | 643 | `result-track:d56233af191fc3b96b4a02302521a483080893d9e1c7c86922993a04a4f74790` |
| 87 | `theorem` | [CieXyzState.applyProposal_color](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/ciexyzstate-applyproposal-color.md) | 649 | `result-track:aec4da6bf65fc74318cb01811e0cce00302063a4b1cd5bf4f419162621d65d1b` |
| 88 | `theorem` | [CieXyzState.applyProposal_bounded](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/ciexyzstate-applyproposal-bounded.md) | 655 | `result-track:e28cfc6c5a942633ac2754dfb71426defe90a3cf1f19e9835d95f528ee7c2f7f` |
| 89 | `structure` | [CieXyzEdit](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/ciexyzedit.md) | 664 | `declaration-track:7240bd2c8f57b41a6ab19217f394c6d0cc2f5dcd77510ef41d7b74235afb1d25` |
| 90 | `def` | [CieXyzEdit.ValidFor](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/ciexyzedit-validfor.md) | 671 | `declaration-track:fafada930b0f869a1f5936f61ed77e4fa63e2f4fe08b096854cf0e198d0957c1` |
| 91 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/instance-source-edition-5.md) | 678 | `declaration-track:9032d5a60d465ecb230d05f7478ff3b970fef38b6ff80d3d3f49ef99b2de1850` |
| 92 | `def` | [verifyCieXyzEdit](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/verifyciexyzedit.md) | 684 | `declaration-track:782f98f31e4ac869503da95f0542293744bb204032ccebc8c4cb904aed685de8` |
| 93 | `theorem` | [verifyCieXyzEdit_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/verifyciexyzedit-sound.md) | 689 | `result-track:1711d30883ff3a065b73feadfdcaac22a941fb2ce692d1ab567e84cbd9d3e1f3` |
| 94 | `def` | [CieXyzState.applyEdit](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/ciexyzstate-applyedit.md) | 696 | `declaration-track:59c0a29d4979f97f4d6c079bdf82222e7522924530872154ed60bfd2219bb7e6` |
| 95 | `theorem` | [CieXyzState.applyEdit_revision](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/ciexyzstate-applyedit-revision.md) | 702 | `result-track:2049edc9664895f791d7b7da9e27ccacfbce22bb1e4655ff6502a08b71d782ce` |
| 96 | `theorem` | [CieXyzState.applyEdit_selectedChannel](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/ciexyzstate-applyedit-selectedchannel.md) | 708 | `result-track:010e03ca5f1a24a3acf824eb0bd1b27d05d08bac5e6d05a733f5a0b79eada2bf` |
| 97 | `theorem` | [CieXyzState.applyEdit_otherChannel](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/ciexyzstate-applyedit-otherchannel.md) | 715 | `result-track:21cb76ade6fbcfc5b0cc3c29882ce1612916262ace85b9c19cd5b107c067fe51` |
| 98 | `theorem` | [CieXyzState.applyEdit_bounded](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/ciexyzstate-applyedit-bounded.md) | 727 | `result-track:d574297d15168d0b30989b2d41ebbedce146bb041aca6015f8a8c2d093f0ca34` |
| 99 | `structure` | [CieXyzDiscrepancy](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/ciexyzdiscrepancy.md) | 749 | `declaration-track:ba139f8cd63c65ee9b95caeaf813860dc51237d9c0a465425a3c8901091937a1` |
| 100 | `def` | [cieXyzSignedDelta](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/ciexyzsigneddelta.md) | 755 | `declaration-track:4a41ed94a781a8901a83c43a9876186e6b7634480a40fb247a462db352cad578` |
| 101 | `def` | [CieXyzDiscrepancy.between](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/ciexyzdiscrepancy-between.md) | 758 | `declaration-track:1627ccaec892f45ee74f4cc950aad87c9b3fe9a0db6960f899df19ba6b8081f0` |
| 102 | `def` | [discrepancyChannelSupport](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/discrepancychannelsupport.md) | 764 | `declaration-track:b2e72e8042a51cc97c7b5f705456ef4509045d71b6860f00a53e6253f2053b2c` |
| 103 | `def` | [CieXyzDiscrepancy.supportCount](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/ciexyzdiscrepancy-supportcount.md) | 767 | `declaration-track:ea34960705f6f750d348497d5ce2944ecbdcb7730f1738105532aad8e145076a` |
| 104 | `def` | [CieXyzDiscrepancy.l1Mass](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/ciexyzdiscrepancy-l1mass.md) | 773 | `declaration-track:b9b8a7134b3b470eafc4abd39d664610697ccad0b05998fb8275c94cc042630d` |
| 105 | `def` | [CieXyzDiscrepancy.linfMass](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/ciexyzdiscrepancy-linfmass.md) | 779 | `declaration-track:18adedc557dd28d9eb851ddd34db5c3a9d9c78ddb709bb218a901f67b13aa6b5` |
| 106 | `theorem` | [CieXyzDiscrepancy.supportCount_le_three](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/ciexyzdiscrepancy-supportcount-le-three.md) | 785 | `result-track:59578a60b2a8eb178744872d7b32613c9d99e1e1ed8ee9b79f31d334a13e22f5` |
| 107 | `theorem` | [CieXyzDiscrepancy.linfMass_le_l1Mass](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/ciexyzdiscrepancy-linfmass-le-l1mass.md) | 792 | `result-track:a5fb1c858063d00a28d3e546b684f66744881901ce716fd971c11a6f315631fe` |
| 108 | `theorem` | [CieXyzDiscrepancy.l1Mass_eq_zero_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/ciexyzdiscrepancy-l1mass-eq-zero-iff.md) | 799 | `result-track:18135ece350a893fdb67c46f631f221e9459cd02d97fab06225fb9ef3ddc8937` |
| 109 | `structure` | [CieXyzStageMeasure](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/ciexyzstagemeasure.md) | 824 | `declaration-track:1f8162bf4faf165bd07c30c8465ea99472e3afba48640aabfc48c8abfa773a21` |
| 110 | `def` | [measureCieXyzStage](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/measureciexyzstage.md) | 829 | `declaration-track:9a5ce6af58329f49edaccd8c46c121188b16e0a1dd9b70d7a6d20163910898e2` |
| 111 | `theorem` | [measureCieXyzStage_missingStageCount_le_one](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/measureciexyzstage-missingstagecount-le-one.md) | 839 | `result-track:ecc458b8f7af702a18028b4ae2e673341f93eabc5fe9935db9ba5addb8411d8d` |
| 112 | `theorem` | [measureCieXyzStage_none](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/measureciexyzstage-none.md) | 845 | `result-track:9535c6e00d724178457f141e44410111c82a724eb7a24384064e26f704a48ba7` |
| 113 | `theorem` | [measureCieXyzStage_some](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/measureciexyzstage-some.md) | 852 | `result-track:79c547a8583ec569675338caf6ee62456acdce77b672516bc4694ef4a313f218` |
| 114 | `structure` | [FiberTensionColorContourContract](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/fibertensioncolorcontourcontract.md) | 862 | `declaration-track:d23d1faad10101b1fda8d6996c8de4f6b6943146f58d1b577419f69152ef4107` |
| 115 | `structure` | [Contract](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/contract.md) | 874 | `declaration-track:f346e89f9671a88b62c025fca36045f5beaf79e71bf567191c75df3aa7238daa` |
| 116 | `def` | [ProvesAnalyticContraction](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/provesanalyticcontraction.md) | 885 | `declaration-track:fc943253ab450b6ccb7650e643221f19ce55573e24a54cb5d1f1af6f1e6ba9fa` |
| 117 | `theorem` | [does_not_prove_analyticContraction](../../../../../ComputerScience/AlgorithmsInComputerScience/SharedBinaryMatrixStreamPublic.lean/declarations/does-not-prove-analyticcontraction.md) | 892 | `result-track:53b3a1fc1e5338fe47f294da37ce22034889eaf6c4334268a57d8a2af37d8cee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c12b5567d5ef1b29fa884ad7e4cc864d1ff2fedf6b0254aa0f7dadfdb2864f94 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SharedBinaryMatrixStream/Variante65a058a849f09a87a0d48f554c00f07237d88b58cccb614294e2490f773466f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SharedBinaryMatrixStream/Variante65a058a849f09a87a0d48f554c00f07237d88b58cccb614294e2490f773466f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
