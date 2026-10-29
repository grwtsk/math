# Verification target: Substring Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f2d9a9dfa756452888fa648e91b6c5c8b54c82f",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Substring/Variant6b9dc9e76926d0a89be53929c80d92aa8e8805ea6138954d35f374ce1200bc9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f2d9a9dfa756452888fa648e91b6c5c8b54c82f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Substring/Variant6b9dc9e76926d0a89be53929c80d92aa8e8805ea6138954d35f374ce1200bc9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Substring/Variant6b9dc9e76926d0a89be53929c80d92aa8e8805ea6138954d35f374ce1200bc9d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Option.BasicAux` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/ofslice.md) | 27 | `declaration-track:510562fb4060ff78d39d3adb4e9e80e5dc8458e50f3a94527d5b21a65bccc7e8` |
| 2 | `def` | [toSlice?](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/toslice.md) | 36 | `declaration-track:21d37d1cbce4d00fffb16501ba17fe84b0082b10d882b957911617423e3de38f` |
| 3 | `def` | [isEmpty](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/isempty.md) | 48 | `declaration-track:953e9aee674a8f5071c9cbe5b5605fac91e148c36464c5e58a5daa8a6be4cd80` |
| 4 | `def` | [Internal.isEmptyImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/internal-isemptyimpl.md) | 52 | `declaration-track:18f78cdb012b0c1dc60654a08ac4824010323fde31a8e5fc1ccbf80d86128085` |
| 5 | `def` | [toString](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/tostring.md) | 58 | `declaration-track:2be2c88e006c0899eeb8ced36e8e386d35abcbf4a19edf04c33f94f6c668f520` |
| 6 | `def` | [Internal.toStringImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/internal-tostringimpl.md) | 62 | `declaration-track:6525b5925640bc39493a06c87fdf18e634621c9b95f0cf60ed824a1866f5ebeb` |
| 7 | `def` | [get](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/get.md) | 73 | `declaration-track:8bbbae52ebd71be5f71310a1eedb8504df1fef32fd996fca4c39dd7e81376e6e` |
| 8 | `def` | [Internal.getImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/internal-getimpl.md) | 77 | `declaration-track:855fddcc8bac21b4f2f11df897a76db5a5c12f613c786a52f9480b2a05c15c3d` |
| 9 | `def` | [next](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/next.md) | 87 | `declaration-track:78cfa6d4e5020a6c04657936ffc567f90369be5ff001a70ecb8ab75ee7e94314` |
| 10 | `theorem` | [lt_next](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/lt-next.md) | 92 | `result-track:8aa115abae4f501fa659ca4db36de6a88b6ceff767ad2c49b0c3332dfefb07fa` |
| 11 | `def` | [prev](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/prev.md) | 108 | `declaration-track:7f3811f1b0f67bf6eaa94a6b651d7609875206acb1d820a6594d6276c80d50c6` |
| 12 | `def` | [Internal.prevImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/internal-previmpl.md) | 114 | `declaration-track:c5d5618e0b4c38be07b918297c0b6c77efb2525d79b4c2813ce19928482e2a03` |
| 13 | `def` | [nextn](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/nextn.md) | 124 | `declaration-track:77397267b721263991544e5378f2a41c4d595a4ae5a7b781c45d9a801dd92768` |
| 14 | `def` | [prevn](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/prevn.md) | 135 | `declaration-track:4c877ec7933a72de85c0524c2872dc90dde9f746129e08d8690774b05fd868e0` |
| 15 | `def` | [front](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/front.md) | 147 | `declaration-track:513b79ddd3da9248839a016ab0568c5e510a51cc3b0a68475ac781bcacb97181` |
| 16 | `def` | [Internal.frontImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/internal-frontimpl.md) | 151 | `declaration-track:473db5ccc7bfa4356dcb3e3e0d79f0cc1fb5f1981b89e4cb5ee0cad012244a91` |
| 17 | `def` | [posOf](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/posof.md) | 158 | `declaration-track:86e10a9c97a7d8c3d2d44b50fb1d3864bcdd8d9d3de0601dd373561276f15c7b` |
| 18 | `def` | [drop](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/drop.md) | 167 | `declaration-track:b8e337884409d6588c22226ebe3b77088776bfdf13d6ac0e5d979c31a189e9d0` |
| 19 | `def` | [Internal.dropImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/internal-dropimpl.md) | 171 | `declaration-track:53c1d1010e1a0e7f704e7705e1273af7fd7d2b81adb9f2e37fca6681e26355a1` |
| 20 | `def` | [dropRight](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/dropright.md) | 180 | `declaration-track:51ae86177336a2aabe45cf689a940dd1f5df0a18f1c5f4c56080a9da59c15c37` |
| 21 | `def` | [take](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/take.md) | 189 | `declaration-track:cc08e6aa71239446ef36d91909f949d7039d9d4729518114afdd3ef58f354f5d` |
| 22 | `def` | [takeRight](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/takeright.md) | 198 | `declaration-track:8438b847b6addee851904abc95dd271486f74cb9c1a55b59ca8338cd9a04a5c4` |
| 23 | `def` | [atEnd](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/atend.md) | 207 | `declaration-track:2f556c201c59f084bfd763a65a143d528f3c2c6ce991ec332887de235d183e15` |
| 24 | `def` | [extract](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/extract.md) | 219 | `declaration-track:0877dc4e7834891b8e82de7dbee58a91824ae56fb1d99dafcca124b9526d83ad` |
| 25 | `def` | [Internal.extractImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/internal-extractimpl.md) | 223 | `declaration-track:a70fc1170067cec745c3f2888eaa47f4c4873bc5da0986c073d69ac867e9e4d8` |
| 26 | `def` | [splitOn](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/spliton.md) | 234 | `declaration-track:4d6d0c49291d4654fe38b45f3ceee59df893c638b7e3db93b121140f2c88652e` |
| 27 | `def` | [foldl](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/foldl.md) | 263 | `declaration-track:3f2f21b2faf96d81f75071b7ee1191f0092d96fbcbf56c32f682e2f791e3d4bd` |
| 28 | `def` | [foldr](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/foldr.md) | 270 | `declaration-track:722bcacf1c17f5aca2ab0a4e04a235d43a5b4c91fa04517e2250aa1c2ac2d204` |
| 29 | `def` | [any](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/any.md) | 278 | `declaration-track:34b0aa6e131ec150865e4cbf34704b0a15586ffa4a5ecf9c9dd5d004d458abaa` |
| 30 | `def` | [all](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/all.md) | 286 | `declaration-track:1b1f467c488961e6e01bfb516ef87caa566415c962fcf906cc7b01c625f92aef` |
| 31 | `def` | [Internal.allImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/internal-allimpl.md) | 290 | `declaration-track:8646a3ed6919a18f6424259249194cebbcb6599e9176dcf6f498094b66556a19` |
| 32 | `def` | [contains](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/contains.md) | 296 | `declaration-track:d76539ac1cc73cac285028b1ea96525f7da5dd6441727afa6ed22b9f9c15c446` |
| 33 | `def` | [takeWhileAux](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/takewhileaux.md) | 299 | `declaration-track:9820a2c55b011e5d76968d0e35b23f4a15a87f41ff35f435e121cfa34eabbc3c` |
| 34 | `def` | [takeWhile](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/takewhile.md) | 312 | `declaration-track:26812b4ecc07032cf58c17de806b2a0af2a892284e5d4bf62bfa6cd1c4922b9a` |
| 35 | `def` | [Internal.takeWhileImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/internal-takewhileimpl.md) | 318 | `declaration-track:d0e90dffc565854a0e46f799813eba7670e3be09160d036e85ffe5390c403a15` |
| 36 | `def` | [dropWhile](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/dropwhile.md) | 327 | `declaration-track:c6592483a7e079f8c749483c6877851c54dc42762b3485048bbfaa42fac4e9ff` |
| 37 | `def` | [takeRightWhileAux](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/takerightwhileaux.md) | 332 | `declaration-track:742b080095fdfa1e70223e5ed737b837e47586bac6ff377a733a7bfd5bb76611` |
| 38 | `def` | [takeRightWhile](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/takerightwhile.md) | 347 | `declaration-track:026e3bf2d0e61f2f5c5a80eb184c465e4b82e1975ee2a36d0604ccf77f83201a` |
| 39 | `def` | [dropRightWhile](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/droprightwhile.md) | 358 | `declaration-track:15f74b2fae667ab1e4fb3ed6f4a5b02926d5b4ea41ce7618e95e09525b67c5c8` |
| 40 | `def` | [trimLeft](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/trimleft.md) | 369 | `declaration-track:b7cc1e08f1e691e9e07e09e4e4d24c04bb1816555cb6b898929ad163e22e88f9` |
| 41 | `def` | [trimRight](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/trimright.md) | 378 | `declaration-track:d80a4566999fddf1f9f9e0c5bd59439d49800bb982dc802461911f8e55acf271` |
| 42 | `def` | [trim](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/trim.md) | 397 | `declaration-track:6b1b3e20abd83b6509d0d75ce653d0a13e2e781c8b4124a11e23255cc8ae1e42` |
| 43 | `def` | [isNat](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/isnat.md) | 412 | `declaration-track:ef3b85e4d6b0baaed6ae26a0cd39f3cacdb2b403498a1243e024d87969c77e3c` |
| 44 | `def` | [toNat?](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/tonat.md) | 437 | `declaration-track:d321a86e8ae4b8698dbda9a0a80fe9f347bb0e89fef8aee995abafcd396cd709` |
| 45 | `def` | [repair](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/repair.md) | 448 | `declaration-track:56fa9e07e950a96163bb85c28fa97bb3143a9e618b84a33bd674be78087b7fab` |
| 46 | `def` | [beq](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/beq.md) | 457 | `declaration-track:a82446f02fb2a5ac2c9f18ba1d8610bac4d1c67e3c6b1ca49d9b3068ee1474c6` |
| 47 | `def` | [Internal.beqImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/internal-beqimpl.md) | 463 | `declaration-track:09c357033c7403b6b421586d0d46319290ed8b31b9ecec8e7684c42cd0545d3a` |
| 48 | `instance` | [hasBeq](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/hasbeq.md) | 466 | `declaration-track:3b6acfa5ba457c135a987dc44d61765cb393fa388b46258affc078954256cb08` |
| 49 | `def` | [sameAs](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/sameas.md) | 473 | `declaration-track:07b3cace5cc7723ed217e6ac25038983f6d1c07fb2069eea26e4a53795882abe` |
| 50 | `def` | [commonPrefix](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/commonprefix.md) | 481 | `declaration-track:367770989ec8d7368065dd47e6c8979f13a0d1b7f512eeee0f3e565db6fa732c` |
| 51 | `def` | [commonSuffix](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/commonsuffix.md) | 501 | `declaration-track:169bfe0bbbb32179a9347132703f964c787e1e733973c6d764a9ca5a0bdae712` |
| 52 | `def` | [dropPrefix?](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/dropprefix.md) | 525 | `declaration-track:4c6f09801e86f42fc0b16a26abf86459929c64231d3e87fefe277bcc70adbe6f` |
| 53 | `def` | [dropSuffix?](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/dropsuffix.md) | 539 | `declaration-track:2ca690fb96f7e1d5daecc3028bd1546bcde67d7d0144be705523dc12f6a4e44a` |
| 54 | `theorem` | [prev_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/prev-zero.md) | 546 | `result-track:c77574aa2b55181b3db821e35ca569bda48bc2045152173452cbae82e9c0b2db` |
| 55 | `theorem` | [prevn_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/prevn-zero.md) | 548 | `result-track:d5d79817b6132a72ca897652919fa54ca36dcb3b5c7b44cdab67eaf36051b7ce` |
| 56 | `abbrev` | [Substring](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/substring.md) | 557 | `declaration-track:124b6640ce5c3210f4fe98af8cbed97264c4d58a976934f2110f9dfd262e0898` |
| 57 | `abbrev` | [Substring.bsize](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/substring-bsize.md) | 560 | `declaration-track:01692bd57b51ed0cacc66c5b9919bcc64fd84dfacec3f69c1ec7a37c9028c70e` |
| 58 | `abbrev` | [Substring.toString](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/substring-tostring.md) | 563 | `declaration-track:64e1b94d04480a63debe7efe4545e7bbfd19cc9109218062b0ee2b71536d0f75` |
| 59 | `abbrev` | [Substring.isEmpty](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/substring-isempty.md) | 566 | `declaration-track:5a8a38590cb4979bb954e00a4eea5e2bef1c5e7826e461ca26430eacdc897650` |
| 60 | `abbrev` | [Substring.next](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/substring-next.md) | 569 | `declaration-track:5cb4d0d7f8a72f85f6faca380c6a2834d692f78291278d7e1600edb4ab21eda7` |
| 61 | `abbrev` | [Substring.prev](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/substring-prev.md) | 572 | `declaration-track:07cfd124d1ab2d428aef3dafecdf7038f756cab37041cd0a3d7f4b5578b78278` |
| 62 | `abbrev` | [Substring.atEnd](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/substring-atend.md) | 575 | `declaration-track:e739491426d375c59291e77a797117d3d50ec8a2b5bb76045dc77cf9bf37fbdc` |
| 63 | `abbrev` | [Substring.beq](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringPublic.lean/declarations/substring-beq.md) | 578 | `declaration-track:4c7b8a54231f8627c6ed8d61944ab80e2be09902d44b44242337b9bde2bc9e37` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=64e522023a57badb073a462e80a2bbf4b90da17575926557c9f1a6395e127472 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Substring/Variant6b9dc9e76926d0a89be53929c80d92aa8e8805ea6138954d35f374ce1200bc9d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Substring/Variant6b9dc9e76926d0a89be53929c80d92aa8e8805ea6138954d35f374ce1200bc9d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
