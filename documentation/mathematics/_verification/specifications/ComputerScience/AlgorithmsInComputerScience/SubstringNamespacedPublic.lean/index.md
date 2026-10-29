# Verification target: Substring Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9b6fc154a6f3a56b5df2c227aa6da7a4f74e1d9",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Substring/Variantc220d5695c08785370bf52d448bcd68087444c8df859dd49e1aa7bab2d536948.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9b6fc154a6f3a56b5df2c227aa6da7a4f74e1d9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Substring/Variantc220d5695c08785370bf52d448bcd68087444c8df859dd49e1aa7bab2d536948.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Substring/Variantc220d5695c08785370bf52d448bcd68087444c8df859dd49e1aa7bab2d536948.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Option.BasicAux` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/ofslice.md) | 35 | `declaration-track:2c65fd6eb3680d052c312f07d1c72bb9b01e4e72fc5c012cdb0ae6aba61fd15b` |
| 2 | `def` | [toSlice?](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/toslice.md) | 44 | `declaration-track:14c99dfd814afe5dc5ec09e7a48697416a8173ea0e40e206b559ebece4c70e4f` |
| 3 | `def` | [isEmpty](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/isempty.md) | 56 | `declaration-track:e1f01434bb6737a81559c3459a8ca33b2501c52d27445501747a429204e0a1ca` |
| 4 | `def` | [Internal.isEmptyImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/internal-isemptyimpl.md) | 60 | `declaration-track:4bd9154b47b2c7f316cc0d22f691a64086613b7483eecb5a4ac7a9821e6348ce` |
| 5 | `def` | [toString](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/tostring.md) | 66 | `declaration-track:ead16e7620f3905279f1dff9a293cd0f690785396c1dfca6c8b940f79671f4f5` |
| 6 | `def` | [Internal.toStringImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/internal-tostringimpl.md) | 70 | `declaration-track:99c5dcb1cc0572cbc899ac98a2c5335fceb8ec0024053391aee44fb359b16416` |
| 7 | `def` | [get](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/get.md) | 81 | `declaration-track:8b63964b840accd2595e0ea94a1ef0263991d9480dc2381e97c5a6493d404140` |
| 8 | `def` | [Internal.getImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/internal-getimpl.md) | 85 | `declaration-track:75791b3d19344e5a2e2992a99ba63ad037261aeb4c1fc656b70dcef9f53f3382` |
| 9 | `def` | [next](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/next.md) | 95 | `declaration-track:580d8b9cdbefa89f0d5c54bf802ab3a1f4239004e2fbb70fabf7b4d6eb6b8768` |
| 10 | `theorem` | [lt_next](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/lt-next.md) | 100 | `result-track:1b4348ad7220b11ab7c9ae1ea0e66754d573b589b14d36d6de8f20e3af260aca` |
| 11 | `def` | [prev](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/prev.md) | 116 | `declaration-track:b6480c2602a7ef2fb1f0265dd44f1e9e7673d5fe6f368336bce0757a1c9f1e77` |
| 12 | `def` | [Internal.prevImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/internal-previmpl.md) | 122 | `declaration-track:7ed894a1056c046d4e15732879049e453f3d2bb312325c264f627a186d688d7c` |
| 13 | `def` | [nextn](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/nextn.md) | 132 | `declaration-track:a1efee6984716b02e0818175ae748aa7043864d28df67691538f8d8b4e81e28c` |
| 14 | `def` | [prevn](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/prevn.md) | 143 | `declaration-track:fba0d71941cd66b84eb1f0f9d1f6e936f44d6f04c40fe1013a2cbf5a2a78bead` |
| 15 | `def` | [front](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/front.md) | 155 | `declaration-track:a637d73f2f97196568c328e440699d496a30c703a2e85dd3f35bf35bf3b665d5` |
| 16 | `def` | [Internal.frontImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/internal-frontimpl.md) | 159 | `declaration-track:570b9b92249c26d4331461169cdd7a5aca8e3b9226b747c957f90e7cfc499bd3` |
| 17 | `def` | [posOf](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/posof.md) | 166 | `declaration-track:7d442901ae227e569f96d962c9db324e370fc51672cb26739f801ad8761c3b23` |
| 18 | `def` | [drop](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/drop.md) | 175 | `declaration-track:012f829a3b5d1324b14743c4eb57f7bd81111225aa9c1da3444da6415083f272` |
| 19 | `def` | [Internal.dropImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/internal-dropimpl.md) | 179 | `declaration-track:8510120e086ae8db32c4bf4ed26092c731d4522f9c5c20f067cd45a29f45853a` |
| 20 | `def` | [dropRight](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/dropright.md) | 188 | `declaration-track:83630f1794c0c64b28fade4c900f505cbdfa035f4c7d504b3e35ad42365de4f2` |
| 21 | `def` | [take](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/take.md) | 197 | `declaration-track:87c56083edf761bc974ab3aa15272f3f79786a1535e99675d5dc980ba6f0ac64` |
| 22 | `def` | [takeRight](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/takeright.md) | 206 | `declaration-track:55edc856342a1ff0ee9ccbc77fb7dd884658fe41f6f1a579403935114bbf5718` |
| 23 | `def` | [atEnd](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/atend.md) | 215 | `declaration-track:66ad220d2764a8f3fec8d2274ad659b252fe091d7c1e33b76c7cb8da89e32ac1` |
| 24 | `def` | [extract](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/extract.md) | 227 | `declaration-track:0dfa197dfb85530e47a226bc5bc4a48f58f6fd86ddface98f38b8df0a49dd2bb` |
| 25 | `def` | [Internal.extractImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/internal-extractimpl.md) | 231 | `declaration-track:84a609bc688ee19a5e67fd039360098a5316647f96aed54b8185e12b18c6309b` |
| 26 | `def` | [splitOn](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/spliton.md) | 242 | `declaration-track:182cdfc0e4c3cc26f0dde4469ce897d576c1fff999465f0aba7bc3d84ce04df8` |
| 27 | `def` | [foldl](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/foldl.md) | 271 | `declaration-track:03041fcf12420e7850c48eaeaa3c3e723a87f59652717310df9af0aa953b76cd` |
| 28 | `def` | [foldr](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/foldr.md) | 278 | `declaration-track:485fcbf648ab1002226b3115385802c33aca988b2dfd7d481d7002d4f65cef3b` |
| 29 | `def` | [any](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/any.md) | 286 | `declaration-track:92aff1462831bd83d4d012e9717a5b8ddea0d32618870ff351746a52f3878330` |
| 30 | `def` | [all](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/all.md) | 294 | `declaration-track:0c6d42a9b64678aa3474c39469a8332825fdc4203842d4ff6ff0625d9cb747d3` |
| 31 | `def` | [Internal.allImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/internal-allimpl.md) | 298 | `declaration-track:5b69bc6d61869f7daf10b8428c06bfb2ac5652a7814cee5b91d98f4c16a81d22` |
| 32 | `def` | [contains](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/contains.md) | 304 | `declaration-track:aa62f386379a45d8dc1ef1728234bc849832bcd93d00dadd9dd419f8919ec64a` |
| 33 | `def` | [takeWhileAux](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/takewhileaux.md) | 307 | `declaration-track:d6d972881de633ebce8fd0690c432e1fb45f99577e1c403bee92f18e5706adf4` |
| 34 | `def` | [takeWhile](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/takewhile.md) | 320 | `declaration-track:7bd5fa254b5f7a78c8ebdbe488d333490267550b1b902022bdc1518ebadcde70` |
| 35 | `def` | [Internal.takeWhileImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/internal-takewhileimpl.md) | 326 | `declaration-track:5fa222c4cecd52eed74fd49f2392663decd596659b9f3ebc36896fb543a12a94` |
| 36 | `def` | [dropWhile](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/dropwhile.md) | 335 | `declaration-track:9be7a8a22bd84483f075c5256c67afcc0ed27dc6fa3437c705c6243583f4f2e9` |
| 37 | `def` | [takeRightWhileAux](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/takerightwhileaux.md) | 340 | `declaration-track:83075ef610502d130fe58796c0f7094718ee997aa2764bfa50d8e8666d06e48b` |
| 38 | `def` | [takeRightWhile](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/takerightwhile.md) | 355 | `declaration-track:dbd3ed9caf50ff1ab5cff01775e7aecbfa524855dacd1ae270fc507191c1456a` |
| 39 | `def` | [dropRightWhile](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/droprightwhile.md) | 366 | `declaration-track:78c17f40e7c1409a71b4b994a396593d469c0ced6eca4e8780c428e382fde7de` |
| 40 | `def` | [trimLeft](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/trimleft.md) | 377 | `declaration-track:92f856f40b1d354f163646a1d2bf30bba0aee92d50384cebf609e14346b7c24c` |
| 41 | `def` | [trimRight](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/trimright.md) | 386 | `declaration-track:efe24d3fed0d472a0d5139b8cf3015903e66ba99843358ce589e2405b42dce88` |
| 42 | `def` | [trim](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/trim.md) | 405 | `declaration-track:75a77a95bdea635c11c5204f782717578b9df9423f030e98e47cc3a597ad881e` |
| 43 | `def` | [isNat](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/isnat.md) | 420 | `declaration-track:2981eb6c0459098345dc4085cba7b19ff64ca8f9c48017854f5fbde29efdcb88` |
| 44 | `def` | [toNat?](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/tonat.md) | 445 | `declaration-track:c35de388660655146212d21e40cab83608286f75fe093b3d7c92d99436778bc5` |
| 45 | `def` | [repair](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/repair.md) | 456 | `declaration-track:b8aaf68c974320ef899a51ed23d2a7df0ce62b9cdb83cd8ce29ec66ade5bf83d` |
| 46 | `def` | [beq](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/beq.md) | 465 | `declaration-track:d39dc27e82150b8f5f90045200fa786e6b81f604695c01198badda906f15cf7d` |
| 47 | `def` | [Internal.beqImpl](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/internal-beqimpl.md) | 471 | `declaration-track:c39167e956133571833817a7bf800322bae4f5b1fa080847d6db78af13f1b61a` |
| 48 | `instance` | [hasBeq](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/hasbeq.md) | 474 | `declaration-track:216248443a2c98a4c0d76a23899bdbcbdaea993989d0bb7bdb1db451f9c9cd84` |
| 49 | `def` | [sameAs](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/sameas.md) | 481 | `declaration-track:67823b48267d540b03b4a440090d600e5084ecf636efbb6c3ceb01d762d34a8b` |
| 50 | `def` | [commonPrefix](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/commonprefix.md) | 489 | `declaration-track:de62714a293da5ae7f7b0e72d6eb0a861cea7ce11841b0428260fc41e50f2d07` |
| 51 | `def` | [commonSuffix](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/commonsuffix.md) | 509 | `declaration-track:6e6dae15b1439bb85f3ef29ed0319a55891a1ce59ccbf3b60d74eb4ab659d51c` |
| 52 | `def` | [dropPrefix?](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/dropprefix.md) | 533 | `declaration-track:e0b1adbec5dea11f28a3e5c1f043425f987ddc71790a4e90febf9f17f145072e` |
| 53 | `def` | [dropSuffix?](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/dropsuffix.md) | 547 | `declaration-track:604d9214bacbacd2270c8763c017a238851d90d92d42ad585fa54e4b6ab5a042` |
| 54 | `theorem` | [prev_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/prev-zero.md) | 554 | `result-track:d0a979fe70a6a2c0542b3b3ba6aff0a2363de9b905f17c4f9c8bf3c63ff1ccb3` |
| 55 | `theorem` | [prevn_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/prevn-zero.md) | 556 | `result-track:34796bcb51516f6ae19ca36ad13c152dbfb86915f946526e69ec1f5f544d9a5f` |
| 56 | `abbrev` | [Substring](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/substring.md) | 565 | `declaration-track:c71a9893b2434925d7141be5be6a3667bb218b26d129305d17ec64230effad5c` |
| 57 | `abbrev` | [Substring.bsize](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/substring-bsize.md) | 568 | `declaration-track:ddda8c983511e9c387a9d21bd883aee2e6449a9be5c9e63d0b58cc3d5e6df6d4` |
| 58 | `abbrev` | [Substring.toString](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/substring-tostring.md) | 571 | `declaration-track:7ee1f388c0aceb63d0e02a18ce67f32b23ce1623d644634dbeba86b8da43d6c4` |
| 59 | `abbrev` | [Substring.isEmpty](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/substring-isempty.md) | 574 | `declaration-track:26414370c19d4dab869e66773580e301040258a0a36c0eeec97367b70c3404c7` |
| 60 | `abbrev` | [Substring.next](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/substring-next.md) | 577 | `declaration-track:b16893971f9f7634f4d709ab39b96cb876be86460040042544a809fa27684382` |
| 61 | `abbrev` | [Substring.prev](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/substring-prev.md) | 580 | `declaration-track:86d88d3629ce3b6d8091bcbbd7e8de297edd1c0db9a9c4cf40c99f981fe2899d` |
| 62 | `abbrev` | [Substring.atEnd](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/substring-atend.md) | 583 | `declaration-track:10c19af916e04bc807b17d1841d115a2cd28ec6d227f7f5516e838e09f03c25e` |
| 63 | `abbrev` | [Substring.beq](../../../../../ComputerScience/AlgorithmsInComputerScience/SubstringNamespacedPublic.lean/declarations/substring-beq.md) | 586 | `declaration-track:f92aaa20d8bde63add2e927b9fa5f663a749f1d0b05e69b24d7aa7349b5aad5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=929d3234c49b4c56ae21a7bd25f963342b6911e09ab6a1bf575b2e5cdfbc88e0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Substring/Variantc220d5695c08785370bf52d448bcd68087444c8df859dd49e1aa7bab2d536948.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Substring/Variantc220d5695c08785370bf52d448bcd68087444c8df859dd49e1aa7bab2d536948.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
