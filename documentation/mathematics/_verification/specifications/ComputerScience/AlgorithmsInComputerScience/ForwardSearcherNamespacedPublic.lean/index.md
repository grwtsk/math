# Verification target: Forward Searcher Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89f4a354aa0abd34832b82c03875f86f703da6f8",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardSearcher/Variant35f4cb5a890506fd452bb569ec3779e3e20e60daac67540dee698aaaea806921.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89f4a354aa0abd34832b82c03875f86f703da6f8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardSearcher/Variant35f4cb5a890506fd452bb569ec3779e3e20e60daac67540dee698aaaea806921.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardSearcher/Variant35f4cb5a890506fd452bb569ec3779e3e20e60daac67540dee698aaaea806921.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Lemmas.IsEmpty` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.Vector.Lemmas` — import line 22; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Basic` — import line 23; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Collect` — import line 24; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Basic` — import line 25; external provider; requires a separately pinned dependency.
- `Init.Data.String.OrderInstances` — import line 26; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PartialMatch](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/partialmatch.md) | 46 | `declaration-track:675ae677fe526c3de51c7609fc92cdc3f4676ca2cd2d3399ad78ae91cab269ec` |
| 2 | `theorem` | [partialMatch_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/partialmatch-iff.md) | 52 | `result-track:235171f337a2dde755f3fef1aa749269a05083696c7c46ace9065f1c1c8761d7` |
| 3 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/instance.md) | 57 | `declaration-track:c58bbe524e5376c13daa7096017ff7c8c7a2f699319d141d2f5813a4920ec4d5` |
| 4 | `theorem` | [partialMatch_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/partialmatch-zero.md) | 61 | `result-track:0da0bc6fb62242c82bc5343a216c2c70136ebbfe3de9a6e36dcf7ec7b23f3b9c` |
| 5 | `theorem` | [partialMatch_add_one_add_one_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/partialmatch-add-one-add-one-iff.md) | 64 | `result-track:e22e8c269890c777a17e01f42859849deb9dcdc8ea874b1a09084f617c69e48c` |
| 6 | `theorem` | [PartialMatch.partialMatch_of_le](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/partialmatch-partialmatch-of-le.md) | 78 | `result-track:aa802a281d4a311cda643afe9dd71e023ce1eb8f239d307f7e3819c7fbc4b694` |
| 7 | `theorem` | [PartialMatch.partialMatch_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/partialmatch-partialmatch-iff.md) | 93 | `result-track:2825ffe3cb897798ac3fa413c748d5e371b85643ee0756ec0eb76f7b7f83f77d` |
| 8 | `theorem` | [matchesAt_iff_partialMatch](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/matchesat-iff-partialmatch.md) | 108 | `result-track:f0aa5373999c3b25534ecf6c4c19396bfe97a0c4c72cf922bbfd08d341d9f489` |
| 9 | `theorem` | [PartialMatch.isValidForSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/partialmatch-isvalidforslice.md) | 115 | `result-track:4919f4308bbc7b2b4f766d11c0204d66d75c564618847c50c46103bdac6fcb00` |
| 10 | `theorem` | [PartialMatch.isLongestMatchAt](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/partialmatch-islongestmatchat.md) | 130 | `result-track:51c9fad3efc9dc0db0cf487ebf43c2cfa2b1791fd30e6cf18773994fc734876b` |
| 11 | `def` | [prefixFunction](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/prefixfunction.md) | 154 | `declaration-track:c296e8ca48bb1c78f7595280f3c155e0909ab81f776da3fb90c033cd532060ee` |
| 12 | `theorem` | [prefixFunction.le_go_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/prefixfunction-le-go-iff.md) | 163 | `result-track:ad3850f8a98baee7c9e87eb1b55b7bfde33eafb6119d28bfcae38d4fe3ca3604` |
| 13 | `theorem` | [le_prefixFunction_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/le-prefixfunction-iff.md) | 175 | `result-track:fa688154ce8e3ceb23a6fec709622e3f65ae55e58a483d760ec6c48011b667bb` |
| 14 | `theorem` | [prefixFunction_le_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/prefixfunction-le-iff.md) | 180 | `result-track:b3034ae084c5709f2c6f6074c83be5850723ed20661aed9a2268c974f6e5fc82` |
| 15 | `theorem` | [prefixFunction_eq_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/prefixfunction-eq-iff.md) | 186 | `result-track:69f3220b7c6115134567a182192e9766b896928f20d968aa1cf551b014274fc9` |
| 16 | `theorem` | [PartialMatch.le_prefixFunction](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/partialmatch-le-prefixfunction.md) | 197 | `result-track:495edcc161f5b8e402ded45c3cad3968ff889b5a20da38ef8a53da0eaaec716c` |
| 17 | `theorem` | [partialMatch_prefixFunction](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/partialmatch-prefixfunction.md) | 204 | `result-track:af2ba715b1900d830f803cdeacb2e064e6eab7f4270698494eb441ee4c9e9113` |
| 18 | `theorem` | [partialMatch_prefixFunction_sub_one](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/partialmatch-prefixfunction-sub-one.md) | 208 | `result-track:7578df5d947af7859aba4b22eb0645921b74fc7b55198a9de9243d2369c032be` |
| 19 | `theorem` | [prefixFunction_le](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/prefixfunction-le.md) | 214 | `result-track:8f2295cf35e3e24d7a191a7ede0b94b43e444befa8b3582e81032a159e334de5` |
| 20 | `theorem` | [prefixFunction_sub_one_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/prefixfunction-sub-one-lt.md) | 218 | `result-track:47fb990f9f28af87d544f3e9767a964078256d66bf2f1345a58f9ab2272b4366` |
| 21 | `theorem` | [prefixFunction_le_prefixFunction_sub_one_add_one](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/prefixfunction-le-prefixfunction-sub-one-add-one.md) | 223 | `result-track:beccaab7ada15934f3408d581a1bb77ea333999f292dcc4d049dc37db9fb396f` |
| 22 | `def` | [prefixFunctionRecurrence](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/prefixfunctionrecurrence.md) | 236 | `declaration-track:81a877f371ec3b81b0753860925929a90bef20d1d29d7471ed52f50644c113f3` |
| 23 | `theorem` | [prefixFunction_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/prefixfunction-zero.md) | 249 | `result-track:b36de8670189a6623b376abd27bf1a0e053ac68f11f92adc19557ece03d08925` |
| 24 | `theorem` | [prefixFunctionRecurrence_eq_prefixFunction](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/prefixfunctionrecurrence-eq-prefixfunction.md) | 252 | `result-track:f4b61e677c274eb10d5df4ea16dfaec429488969b593423895fbbbdfa0a2ea46` |
| 25 | `structure` | [IsTable](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/istable.md) | 283 | `declaration-track:3a963f33c40568cf4587d24f9778dbfb691d83038fe08ed621c4dc65e160a23d` |
| 26 | `theorem` | [isTable_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/istable-empty.md) | 288 | `result-track:7a419e32511421bbd2e6e1be722197e8bec8b18b2285329c0e1b901973cbf073` |
| 27 | `theorem` | [isTable_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/istable-singleton.md) | 292 | `result-track:fbe9f25baa135117564a0a4f4dcb217dc53c473420f33f253a83cfcadb4d0dd4` |
| 28 | `theorem` | [IsTable.push](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/istable-push.md) | 296 | `result-track:39d1881d2d61c0ccd65a14298ecc7e87d6083696d1108c82364be7567caf9060` |
| 29 | `theorem` | [computeDistance_eq_prefixFunctionRecurrence](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/computedistance-eq-prefixfunctionrecurrence.md) | 310 | `result-track:6ef71aa4e8da14324eb726053b97b7c5743684c0c9dbf43460a8f7d806a072da` |
| 30 | `theorem` | [isTable_buildTableGo](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/istable-buildtablego.md) | 330 | `result-track:c21b81a78ccc88686b485484d013ea8722755b124ecce0bc68b1d9dc197d63a9` |
| 31 | `theorem` | [isTable_buildTable](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/istable-buildtable.md) | 345 | `result-track:0da082350c24f43efa884673a44a61b1af5582c4e81f65a3964bc0fbe3b92119` |
| 32 | `theorem` | [getElem_buildTable](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/getelem-buildtable.md) | 353 | `result-track:b423603f673e6cacf9f24605d52ac6330c8f924f4628ba50fde069bf1fd37dd1` |
| 33 | `structure` | [Invariants](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/invariants.md) | 361 | `declaration-track:ddbd3586d13cb723ccb50895aa31fe8f82ecf4c70e97e38f869abc1ba3901cb7` |
| 34 | `theorem` | [Invariants.inc](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/inc.md) | 367 | `result-track:b3ce505ecaee9cb90995e9afc1cc4232ee4681480a913c0d545f792718c5aecf` |
| 35 | `theorem` | [Invariants.isValidForSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/isvalidforslice.md) | 376 | `result-track:2100d2019d0546c5e32d627b9ad3f74f2f27d7a758020a33a3b5cb4effc99eaf` |
| 36 | `theorem` | [Invariants.offset](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/offset.md) | 395 | `result-track:fc5f4e6962e2ad502ede50ab7f67695a912b5197b6c8538cdd95c259c029a127` |
| 37 | `def` | [Invariants.base](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/base.md) | 402 | `declaration-track:1fd68553f3a67b83c56e3d7f9047eac9602430b652b0e0a15772d3d8dccd40da` |
| 38 | `theorem` | [Invariants.zero_of_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/zero-of-eq.md) | 406 | `result-track:cdcae630805597b3fe217420f6d0ebd995efa30315466d919b736169bf078a26` |
| 39 | `theorem` | [Invariants.isLongestMatchAt](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/islongestmatchat.md) | 413 | `result-track:2b4e7c3f36ac7e3ef59c0977ad4677f32d3e840a634f6f6bd2615860593670ba` |
| 40 | `theorem` | [Invariants.not_matchesAt_of_prefixFunction_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/not-matchesat-of-prefixfunction-eq.md) | 420 | `result-track:6dedc20ae0662fd53930a1e29f281049515178d7434caef341872c97127afed0` |
| 41 | `theorem` | [Invariants.of_prefixFunction_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/of-prefixfunction-eq.md) | 440 | `result-track:adf9da2cf01166d0a4b70a50566a16b53575d1bce8bfc9f02f3150da0d76a7d4` |
| 42 | `theorem` | [Invariants.isValidSearchFrom_toList](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/isvalidsearchfrom-tolist.md) | 450 | `result-track:7d375c42b48d67cf935397e79912d6100843c14c17ff48e7266b4f2c97aa313d` |
| 43 | `theorem` | [Invariants.start](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/start.md) | 559 | `result-track:05e4319184772b53bf69e63fd31675e70e1af0efb1d3814c471d9da4e64cb04b` |
| 44 | `theorem` | [Invariants.base_start](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/base-start.md) | 565 | `result-track:eda7305055465660054eb11f4d9143d8638f34136b68fdee60e10ca3f0f47b71` |
| 45 | `theorem` | [lawfulToForwardSearcherModel](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/lawfultoforwardsearchermodel-source-edition-2.md) | 569 | `result-track:7c32f28ebc952aa35a7d13670bffe42efca112bbd875d114b20693702692bf01` |
| 46 | `theorem` | [toList_atEnd_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/tolist-atend-eq.md) | 578 | `result-track:72c24216768597c6c4290511c3e37b2443fa2459b6d80e77c957f9f41d7f868c` |
| 47 | `theorem` | [toList_emptyAt_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/tolist-emptyat-eq.md) | 584 | `result-track:82ab37147b420a1b5f771de5c4da277f7727f3ced98bd6a512e761e88b66eaf9` |
| 48 | `theorem` | [toList_emptyBefore_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/tolist-emptybefore-eq.md) | 591 | `result-track:f9deb11086deab531d1ca772e77974c91082adb05c8ce58b6244e063f7ee6f19` |
| 49 | `theorem` | [toSearcher_of_isEmpty](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/tosearcher-of-isempty.md) | 604 | `result-track:f6a4f9651933281bec3490cf5aad600cb511da4ce218b118d19231bd2eadad45` |
| 50 | `theorem` | [lawfulToForwardSearcherModel](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/lawfultoforwardsearchermodel.md) | 614 | `result-track:0a4a6cddb7c667babe424d4a0ce221e3b24c3f675754da6817af9ddf596a4930` |
| 51 | `theorem` | [toSearcher_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/tosearcher-empty.md) | 620 | `result-track:39d1f43f1a003fc694f46ffb5c8f4b0c7340d283c162d4109bb254798702f450` |
| 52 | `theorem` | [contains_string_eq_contains_toSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/contains-string-eq-contains-toslice.md) | 629 | `result-track:2e2b1a69399d27a9f88d67a5ad6b3f18909e73995b6b48215a99102d007c1dab` |
| 53 | `theorem` | [find?_string_eq_find?_toSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/find-string-eq-find-toslice.md) | 633 | `result-track:cd1d6466c02cf9e2561576e8974b2ad41f00204cb8a35343f6c49bf1e4cd95ad` |
| 54 | `theorem` | [Pos.find?_string_eq_find?_toSlice](../../../../../ComputerScience/AlgorithmsInComputerScience/ForwardSearcherNamespacedPublic.lean/declarations/pos-find-string-eq-find-toslice.md) | 637 | `result-track:722764e58a9c94dcd4ea8f4692888dd5b8b953de1dd44b6ab46363dadb8f9288` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=245371e034b6bcd6270fa8d3057a1c69cba34f9cd7a59de848afdd38b25d45aa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardSearcher/Variant35f4cb5a890506fd452bb569ec3779e3e20e60daac67540dee698aaaea806921.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ForwardSearcher/Variant35f4cb5a890506fd452bb569ec3779e3e20e60daac67540dee698aaaea806921.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
