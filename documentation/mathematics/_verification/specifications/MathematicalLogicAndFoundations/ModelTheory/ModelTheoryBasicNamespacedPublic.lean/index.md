# Verification target: Model Theory Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6988e18780ea3babae578dffe65260a6442e870",
  "lexical_observation_count": 141,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant10c5155efe8fcaedc434cd871bff46807a19650a89af1717627a21031fd3e393.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6988e18780ea3babae578dffe65260a6442e870`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant10c5155efe8fcaedc434cd871bff46807a19650a89af1717627a21031fd3e393.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant10c5155efe8fcaedc434cd871bff46807a19650a89af1717627a21031fd3e393.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Language](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/language.md) | 67 | `declaration-track:b29e43f3fc461286f17a18bc36129206922ff35e54cb000dda426863f9e9d2b5` |
| 2 | `abbrev` | [IsRelational](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/isrelational.md) | 78 | `declaration-track:c3b7ed384379abc29898802040fe22be0f059227b2f516a1be764bf335326c19` |
| 3 | `abbrev` | [IsAlgebraic](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/isalgebraic.md) | 81 | `declaration-track:413b60521ab6f18bc9041dbc6ca5850520a1369835fd9588c255d7aec42d5f86` |
| 4 | `def` | [empty](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/empty.md) | 84 | `declaration-track:7182659b1d608bff090ea5ff3608b16bb21217c1ecc236441827ae4ef5304442` |
| 5 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 87 | `declaration-track:f030029526354722d35474d5bdca5c4259f8e7696d8c6cdda74051da21c0245f` |
| 6 | `def` | [sum](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/sum.md) | 91 | `declaration-track:74a99f2d9d8c2456bad0c497187b382871605300036723d53c80a60dcc1a0d27` |
| 7 | `abbrev` | [Constants](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/constants.md) | 95 | `declaration-track:7f7d1fe750327fdfbd83bdd79a19db7c93470f0ff4d5decde581295a9735b4f6` |
| 8 | `abbrev` | [Symbols](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/symbols.md) | 99 | `declaration-track:dd4c0eddd07d3dcdd14d42e1b4b79594ecf8d6b5986b670a54270b56a21164fd` |
| 9 | `def` | [card](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/card.md) | 103 | `declaration-track:a4d5707ee1ee7fc03e33f49b0b8049c9522e969ceb3f29e403ddbe0aa721ab77` |
| 10 | `theorem` | [card_eq_card_functions_add_card_relations](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/card-eq-card-functions-add-card-relations.md) | 108 | `result-track:04e1770ab4bcbce3424d165364157774cbf0eb619c4f97d6dd7c9c8a3173de79` |
| 11 | `instance` | [isRelational_sum](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/isrelational-sum.md) | 114 | `declaration-track:d62bb1e0fa654da755cb339dad2b63d4ff644b84384d0891ccd073dcffbd829a` |
| 12 | `instance` | [isAlgebraic_sum](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/isalgebraic-sum.md) | 117 | `declaration-track:f0d58bcc3e870a71f3c2fee7b164eb072f5b42c04d54b911ec49b87f186513d3` |
| 13 | `theorem` | [card_empty](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/card-empty.md) | 121 | `result-track:934d6338e29822162d942d4145b104b79210d5e521a30558e572ba22761013d7` |
| 14 | `instance` | [Countable.countable_functions](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/countable-countable-functions.md) | 123 | `declaration-track:be4efb6010fed62b913b67aac3a7d185ffe8feb0aca89e6787df7529e90a5c17` |
| 15 | `theorem` | [card_functions_sum](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/card-functions-sum.md) | 127 | `result-track:29f5cd2cef1a40d1b705abb69004b165b45ff525259eabc6ba688869e45576bd` |
| 16 | `theorem` | [card_relations_sum](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/card-relations-sum.md) | 133 | `result-track:7cb5db2c393fb488bf84a3e8c189b7d3d2a23afbaf2139004dda999a64448e40` |
| 17 | `theorem` | [card_sum](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/card-sum.md) | 138 | `result-track:cc8f9377c0e136ee445fa618310babf5aea2313cfc24da9d62e146a2d903f982` |
| 18 | `instance` | [instDecidableEqFunctions](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/instdecidableeqfunctions.md) | 147 | `declaration-track:c80a99443f0efd43bbfb1cba042641203f3e6b154d797af0c71d53ffca3e3e58` |
| 19 | `instance` | [instDecidableEqRelations](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/instdecidableeqrelations.md) | 153 | `declaration-track:3e217db9e6289a9340aaf7ca9f260e9d34819fccd3ad3004a710efe4701b1d22` |
| 20 | `class` | [Structure](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/structure.md) | 163 | `declaration-track:95eebbb6b78748e021d489e2e45eb2757df9837047e6d36391c39b10b880423a` |
| 21 | `def` | [Inhabited.trivialStructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/inhabited-trivialstructure.md) | 177 | `declaration-track:2171e4a431937353098153da2ea0414e4fb5cf46d849863349fde8acb4140a14` |
| 22 | `structure` | [Hom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/hom.md) | 186 | `declaration-track:f96cfe26ed2cbd680a94bce3491d3fc8d4f0f49c829a779f7c195dd4c1225d66` |
| 23 | `structure` | [Embedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/embedding.md) | 207 | `declaration-track:dff0f532f382d46f4c91dd83f6437f3f41121a250e04d147f79f842e4d748a10` |
| 24 | `structure` | [Equiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/equiv.md) | 220 | `declaration-track:27c4ccffb30cd6cbf2a180861c3d85287d6754f735e87345ed9b68382af3209a` |
| 25 | `def` | [constantMap](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/constantmap.md) | 235 | `declaration-track:81e4d3a400e5ca763616c21664680ee4e9a7539c253615144fe8126ceaa206c5` |
| 26 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 237 | `declaration-track:effa037ceebf3df39a09b79dde8edd7707eb18b6ab317a1298314224b04b88de` |
| 27 | `theorem` | [funMap_eq_coe_constants](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/funmap-eq-coe-constants.md) | 240 | `result-track:41f5d10c7a63621d41b7759bba5176e427c29592c433ef1652123a2a826b2d80` |
| 28 | `theorem` | [nonempty_of_nonempty_constants](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/nonempty-of-nonempty-constants.md) | 246 | `result-track:cd43828eb1c15f0be6297febf326501f81528c36b03e75f9f2eb8eca2fecf9e9` |
| 29 | `class` | [HomClass](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/homclass-source-edition-2.md) | 251 | `declaration-track:4bc2e5ac308eaba71313ea938507eba3a13b6584546705adf6c98d0bc91b4a63` |
| 30 | `class` | [StrongHomClass](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/stronghomclass-source-edition-2.md) | 258 | `declaration-track:560147f0c7d089b76b7ba5b3039d178c46826a1ee85a5c9bc178a96d98ddc218` |
| 31 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 263 | `declaration-track:b0eab6936289dee952b289293e9ea595c63a0c26301a8b68086da45ab35a2c8f` |
| 32 | `theorem` | [HomClass.strongHomClassOfIsAlgebraic](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/homclass-stronghomclassofisalgebraic.md) | 269 | `result-track:6e0d5d2257950cd35b85fe02e28672e3faf7b2664662f0fdee30a2edff757d68` |
| 33 | `theorem` | [HomClass.map_constants](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/homclass-map-constants.md) | 274 | `result-track:89708e1b985855030a2983247c8553609fe0549460a56a1428bb5779b620e5b3` |
| 34 | `instance` | [instFunLike](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/instfunlike.md) | 289 | `declaration-track:7042c7017136e5ee0ebae90946edcc8f47158ffc036044323a5383afd1a07416` |
| 35 | `instance` | [homClass](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/homclass.md) | 293 | `declaration-track:467e164b8db1fd31d7816fd321501c4ecbcf04b28a352ee02c160ec3dfb35d77` |
| 36 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 297 | `declaration-track:baf4d73e5b4056bd100f961822e2176161c9b4433f125167078b2caa7f05e0b2` |
| 37 | `theorem` | [toFun_eq_coe](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/tofun-eq-coe.md) | 301 | `result-track:f195540ecfa93249d748ff5afbca7059ccb1b7d69b7d3e4005a4f8fa87034189` |
| 38 | `theorem` | [ext](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/ext.md) | 305 | `result-track:63c689ac33b0b23be98b04784e1b6f178da1f7bc2acb0eef1b31a15450b036b7` |
| 39 | `theorem` | [map_fun](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/map-fun.md) | 309 | `result-track:093d1415c296ca740027f48bf86916a089a9ff0b6f99ee8047380aab5340480c` |
| 40 | `theorem` | [map_constants](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/map-constants.md) | 314 | `result-track:1c8ff6d0cb87bc0591ce9ac16e3ad043f64b1ae9573fe1805db2e3e75ee2f0a5` |
| 41 | `theorem` | [map_rel](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/map-rel.md) | 318 | `result-track:14e008cfebfee8805240ca22b3da07e47753153c11c49519fa4613f489af2b91` |
| 42 | `def` | [id](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/id.md) | 326 | `declaration-track:fc9479671487e87d64d16a0e35ce8a54a4c1aba2fd93b08ede202ee59f2f05be` |
| 43 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 331 | `declaration-track:535ce74072cbb9d1f9e40f76704114f81d065c13f258df5bfb5e2334e2317306` |
| 44 | `theorem` | [id_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/id-apply.md) | 335 | `result-track:b83b93c759047495f910ca9a4fa398ce76fb971a7acbddb9763c28a97f3be197` |
| 45 | `def` | [comp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/comp.md) | 340 | `declaration-track:4be385a2229184e20505da68c076df14669c4600de599d97f29667e0cb33e28e` |
| 46 | `theorem` | [comp_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/comp-apply-source-edition-2.md) | 348 | `result-track:97dc9b53f072a6dfdbbfb876beb75b40fe7ca295bc22af7f575d301e52181366` |
| 47 | `theorem` | [comp_assoc](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/comp-assoc-source-edition-3.md) | 352 | `result-track:b6221c9e7a7d157115a2664fe5d56e5357ca788c7d83d3652c7216ef00afe31d` |
| 48 | `theorem` | [comp_id](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/comp-id.md) | 357 | `result-track:821f259cbd6b3cb3f4296d6c78f9041fcce838fb3bb01979ede2a16a244e9304` |
| 49 | `theorem` | [id_comp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/id-comp.md) | 361 | `result-track:3248929bbbc6a0c4bbee9cee90dc88f6b2fd9c39cdcee7207bcaa0428eff7316` |
| 50 | `def` | [HomClass.toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/homclass-tohom.md) | 367 | `declaration-track:4e7558f7729adc8ced26248ed930a433bdd56425b86fa76132bb5f369aff1a3a` |
| 51 | `instance` | [funLike](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/funlike.md) | 374 | `declaration-track:112a3addd19205bf1748be763a69456649e0650dfc0b5ecf1a3535f6c080f34d` |
| 52 | `instance` | [embeddingLike](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/embeddinglike.md) | 383 | `declaration-track:0f9b9eb18adb3a87bfae6ddd43c209a222493a851e87b80aedc6582f6efd1385` |
| 53 | `instance` | [strongHomClass](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/stronghomclass.md) | 386 | `declaration-track:1feda03c1bd07ec3f0a05f165c0520e6b637f3347918d087bdaa0f4870c36176` |
| 54 | `theorem` | [map_fun](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/map-fun-source-edition-3.md) | 391 | `result-track:d33e043a9aef00521f65ac6e311b6c0e4289e0417d42419e0b810e1fd19d79a8` |
| 55 | `theorem` | [map_constants](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/map-constants-source-edition-2.md) | 396 | `result-track:658be1b86c3da1f1f9c5b470cd36da077106a491a08e0e5ae4ceefc52ecf0f1f` |
| 56 | `theorem` | [map_rel](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/map-rel-source-edition-2.md) | 400 | `result-track:6ecde8cf576ba3f59b2e5acc5d0c04dc20aa28ec3d765d839afe6e90943c22e4` |
| 57 | `def` | [toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/tohom-source-edition-2.md) | 405 | `declaration-track:9eddf6cb01c3edf5dfaaa256845a6c6748461985a14fbe7918bb348ff8990db5` |
| 58 | `theorem` | [coe_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/coe-tohom.md) | 409 | `result-track:48c34a34570a56045d9a6d2b2aa59e6ebdf4c7c61f34aa7324ba4fb8c7810651` |
| 59 | `theorem` | [coe_injective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/coe-injective-source-edition-2.md) | 412 | `result-track:8e4c08df1e46ca3e19922c54adde2d6cda34e3a6dc1973d5b306faced2e75dbe` |
| 60 | `theorem` | [ext](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/ext-source-edition-2.md) | 416 | `result-track:8acfa7cabc2ca85d139723cd99a3487a1c6ceb6eb29055e92b25e587a6304f14` |
| 61 | `theorem` | [toHom_injective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/tohom-injective.md) | 419 | `result-track:6b6ea5f1da7ada0ac20ca1e44196e726f8afdfbc69aed0e109e3345c6160034d` |
| 62 | `theorem` | [toHom_inj](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/tohom-inj.md) | 425 | `result-track:3708fac28823db20c58ffcd3e410ffd9271340b771e871a1368a37b01c2fe802` |
| 63 | `theorem` | [injective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/injective.md) | 428 | `result-track:29a4feff49a23746d35821fdca8a595c28d886b8d501721f1cc15795d0ce6d78` |
| 64 | `def` | [ofInjective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/ofinjective.md) | 433 | `declaration-track:82f9177ff2ef604f1b7b46fe6da4e07f4b44edcde6655df5c2f683756bd53f0e` |
| 65 | `theorem` | [coeFn_ofInjective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/coefn-ofinjective.md) | 439 | `result-track:b6088b74b899ddbbb657e73dc7b310df0fa80c6e083e1ac1a23a4107cc9b552c` |
| 66 | `theorem` | [ofInjective_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/ofinjective-tohom.md) | 444 | `result-track:5db689c6f94db58f0c4a1fbb2781736dbd19b7d9ea15d404275a24b4b46a202e` |
| 67 | `def` | [refl](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/refl.md) | 452 | `declaration-track:3b61876adc91a71572a2f81e70e7eae1b0822cedc2b2413d4bf363f14db97167` |
| 68 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 456 | `declaration-track:894d37f31913bbae4b5bf799058eef016322afb92e98c890b3f1ceb3cc472135` |
| 69 | `theorem` | [refl_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/refl-apply-source-edition-2.md) | 460 | `result-track:a5fe27025b13f4c342d4f75251b79729f34c1a0c46cf69172a7d68f3d2537055` |
| 70 | `def` | [comp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/comp-source-edition-2.md) | 465 | `declaration-track:69ee5c755dba7db5cfd6813476fd48c84f04da7d3165abefd80a9df717aa8b67` |
| 71 | `theorem` | [comp_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/comp-apply.md) | 474 | `result-track:6e9b9576f25e08a76245b529affe93011359b20c381d6f37c73a8174e82062be` |
| 72 | `theorem` | [comp_assoc](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/comp-assoc-source-edition-2.md) | 478 | `result-track:92bb8bf6affa904ed19a808fbd8a581f67bc82333bcf675a4f37ffd1cfaf9a27` |
| 73 | `theorem` | [comp_injective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/comp-injective.md) | 482 | `result-track:5686c83964437613387fef8562f6b882344c2dfd8b7d276b826fb1f1fd33cdea` |
| 74 | `theorem` | [comp_inj](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/comp-inj.md) | 488 | `result-track:544376d727cb608c2a8ff7265bbbb14c4f737afee2b8a8b2b094c363667b6d9e` |
| 75 | `theorem` | [toHom_comp_injective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/tohom-comp-injective.md) | 491 | `result-track:cc5119d2a88cf2ba4140d8041674fa69a39f6ea0e326277cd75804d12424d018` |
| 76 | `theorem` | [toHom_comp_inj](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/tohom-comp-inj.md) | 497 | `result-track:8844778b414b767ab6d293beffae797a6998863f766cf7062f25d58404552df7` |
| 77 | `theorem` | [comp_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/comp-tohom-source-edition-2.md) | 501 | `result-track:653ff9af5d2faab3be38bc0d17d05619b67c11ffbee2da23b0cd9e6febc52c02` |
| 78 | `theorem` | [comp_refl](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/comp-refl.md) | 506 | `result-track:3485bf06e4f462288ed887a62bc810ef8f0abf08bd8333f27a844973764d6ed5` |
| 79 | `theorem` | [refl_comp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/refl-comp.md) | 509 | `result-track:78e37a1c099e2cd095eb19b3a07414db569a4ca73097d3311f6ea6b84bf718d7` |
| 80 | `theorem` | [refl_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/refl-tohom-source-edition-2.md) | 512 | `result-track:439c51d5981a4465a9257c3cf11f2b36149e9ed7bca8b1efe59d480287a1e21e` |
| 81 | `def` | [StrongHomClass.toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/stronghomclass-toembedding.md) | 518 | `declaration-track:d85647563dc7a1ef9f949199e4247245bb59e9a765f5c56516160468c0ff2214` |
| 82 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 525 | `declaration-track:49dca647ccf18d80fa8500e511c807fe10db4c0aec1c794852f5d2cf29d8060b` |
| 83 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 537 | `declaration-track:921c81a76747dcace0f87368c146596bb7ea3ed41518765f8f2e379e3e171f40` |
| 84 | `def` | [symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/symm.md) | 543 | `declaration-track:6981e83b73e3964a4d5baaf3532b9bc83400ef6660fe471fdf218a559aa81b79` |
| 85 | `theorem` | [symm_symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/symm-symm.md) | 556 | `result-track:e5630f31c66ecc4cb279e9ec983ca7e4921dfa9a07f36610504a00b38a9ac828` |
| 86 | `theorem` | [symm_bijective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/symm-bijective.md) | 560 | `result-track:37b4258a5aa9b802db257726557e87871933c09e09ed0efd7eb98b581ac400c3` |
| 87 | `theorem` | [apply_symm_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/apply-symm-apply.md) | 564 | `result-track:f44ff491ad85ccd620613f43da9edd024e7cc223755fb89972c7fe107d51da30` |
| 88 | `theorem` | [symm_apply_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/symm-apply-apply.md) | 568 | `result-track:4bcece44427f30c245262d01a0094b522433dc4af4d76340583b9d6d23ad3249` |
| 89 | `theorem` | [map_fun](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/map-fun-source-edition-2.md) | 572 | `result-track:76282e4b64f4a38322501fd4407b035870f6c1b105ec1abdf1ed00d40844f9f8` |
| 90 | `theorem` | [map_constants](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/map-constants-source-edition-3.md) | 577 | `result-track:a9988fddb18aca31abe84ba79a07add11e5090a2dd0cbf956e37b05211281dea` |
| 91 | `theorem` | [map_rel](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/map-rel-source-edition-3.md) | 581 | `result-track:ffe4f60649f3c979bc0b85a060b2611289db5e45291948ddd3ea3d0f4e82eccd` |
| 92 | `def` | [toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/toembedding.md) | 586 | `declaration-track:e7ca8f2648ed29c55d19b3f0a0a83a600a4e13aa8c2f6dc13dcab919cd8ecce1` |
| 93 | `def` | [toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/tohom.md) | 590 | `declaration-track:9e83cd0b678daf2d83dc7a21512ec06aa4380ce8fb0d23268f7dc503130fd79f` |
| 94 | `theorem` | [toEmbedding_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/toembedding-tohom.md) | 594 | `result-track:626b20fc71a861caee0e678f2c4874820c4ee64bfc51d62100c456a0dfc3e83e` |
| 95 | `theorem` | [coe_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/coe-tohom-source-edition-2.md) | 598 | `result-track:eeb608a15fd7d63ccf48bc271b1189568e35695f8ddc45c6144f688a4849e361` |
| 96 | `theorem` | [coe_toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/coe-toembedding.md) | 602 | `result-track:3055e5277a70649a75c6288e361792976461e2165c6aa65e926f296a099309da` |
| 97 | `theorem` | [injective_toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/injective-toembedding.md) | 605 | `result-track:828994b24222e2043e88e20f6eee59d4388874606a1bc1e0766af963c99ac5b8` |
| 98 | `theorem` | [coe_injective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/coe-injective.md) | 608 | `result-track:32894664824a18f6d54658c65415e3bb4b8e162a57b880f375771be596103dd9` |
| 99 | `theorem` | [ext](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/ext-source-edition-3.md) | 612 | `result-track:b265e6928b8a4dd407268de7ae46a9e8b6ba90a1981004b8f46f2cf2e4928247` |
| 100 | `theorem` | [bijective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/bijective.md) | 615 | `result-track:30c3903fc2bc814ed9a7a1ebe4954d0f53d9688a0d119f97aaeb68e9b626f9f1` |
| 101 | `theorem` | [injective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/injective-source-edition-2.md) | 618 | `result-track:8df20432d6835dedcbaa54b7e97356a9af5f15703e5b679082ef2a65c616c79a` |
| 102 | `theorem` | [surjective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/surjective.md) | 621 | `result-track:18d95becf6772466f0a9a4853509b3d1454cecaf19ab4cda53952ad5f1e60ed5` |
| 103 | `def` | [refl](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/refl-source-edition-2.md) | 628 | `declaration-track:643f89474ccaeac560b254e96ec21cf5e44e9b4056150a2e314d6284f5fb0467` |
| 104 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/instance.md) | 632 | `declaration-track:088cc283d6aee804279ab41c9dd905d1eae58fc576cdaf080cdceb2dbfa3a537` |
| 105 | `theorem` | [refl_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/refl-apply.md) | 636 | `result-track:6ece6441418f7536f89206d456a6fc80de2596bbdd04e174806a0965c0d9fa21` |
| 106 | `def` | [comp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/comp-source-edition-3.md) | 640 | `declaration-track:86918b5ab8238dc95c57bb1da947104aec7191e89f1bc44dfa4725a858c38158` |
| 107 | `theorem` | [comp_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/comp-apply-source-edition-3.md) | 649 | `result-track:a9787a88deb18a9f42efd4820c3d3a2c107330ba4176a49ddc5da59892d27ce7` |
| 108 | `theorem` | [comp_refl](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/comp-refl-source-edition-2.md) | 653 | `result-track:5cd39681bbf304180cf233100d4dbd1a3189e8555ff9f7873ed9d9ff8a5dff64` |
| 109 | `theorem` | [refl_comp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/refl-comp-source-edition-2.md) | 657 | `result-track:98a51f2577f5b5dda55767ff0c34886466dd923a656efb904d71dd1d82c3aa1c` |
| 110 | `theorem` | [refl_toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/refl-toembedding.md) | 661 | `result-track:f8b07a9fca1e968c7a3697633afb9220c3017108a1837bc327e80d3bfbe88c96` |
| 111 | `theorem` | [refl_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/refl-tohom.md) | 665 | `result-track:2f33cd6bc6942517b7e3ed9d14bb097439fc800d73c46130848650e536bb9e22` |
| 112 | `theorem` | [comp_assoc](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/comp-assoc.md) | 669 | `result-track:1958b4b6a04714879ff13804df998aa65cd1f26c1e34c0bdf7e9773480ac7591` |
| 113 | `theorem` | [injective_comp](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/injective-comp.md) | 673 | `result-track:06a94dfd39cb188335b616bce8c1ab5e3b7cfc3736a7f7dcfdccdcba3401cf1b` |
| 114 | `theorem` | [comp_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/comp-tohom.md) | 679 | `result-track:0a7d611b24aede94c131340484f722e391743774d803c0c0d9c875d6520357e1` |
| 115 | `theorem` | [comp_toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/comp-toembedding.md) | 684 | `result-track:a9a558dd2432ad34bf4d8d5d97066a02fa2aadee9529181a47faf00b18715c9b` |
| 116 | `theorem` | [self_comp_symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/self-comp-symm.md) | 689 | `result-track:26434eec60ed76a1451c2803a137b164983f2294eb1f2ce531ef9acda79692ff` |
| 117 | `theorem` | [symm_comp_self](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/symm-comp-self.md) | 693 | `result-track:df5f4ad15dacf1835f24e1eecee538829a9608953ba3729369050e4ab51809c4` |
| 118 | `theorem` | [symm_comp_self_toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/symm-comp-self-toembedding.md) | 697 | `result-track:f1645bfb5fd7e78e5c0fbbaca1304325f540e8d9dec77d750feb170881c161f4` |
| 119 | `theorem` | [self_comp_symm_toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/self-comp-symm-toembedding.md) | 702 | `result-track:78ab96c8e7a4598c8a7e089a0ef776d88e47b7154571d1adde2bcb4ecd185484` |
| 120 | `theorem` | [symm_comp_self_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/symm-comp-self-tohom.md) | 707 | `result-track:52726e897c5e497a3934f992553e7572de03a7b754223f815b38a97cce4ad6e8` |
| 121 | `theorem` | [self_comp_symm_toHom](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/self-comp-symm-tohom.md) | 712 | `result-track:262a9c9e9eac1b339d4ab8169cad44c909409a71eedcff06b4bfdcc2f9f3d272` |
| 122 | `theorem` | [comp_symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/comp-symm.md) | 717 | `result-track:c0340ddf866e77303ff0f685cd7f92bc8603fb7a376e6aa5cf3b31d61630927e` |
| 123 | `theorem` | [comp_right_injective](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/comp-right-injective.md) | 720 | `result-track:847a920e747f1397fb77e381b57510ab28201e12d0a803de8cf2fdba85f5ee00` |
| 124 | `theorem` | [comp_right_inj](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/comp-right-inj.md) | 727 | `result-track:66f3f09c7c8583240603d3250b4457b18b4ea8c175b36aac2e157a0b7db746e4` |
| 125 | `def` | [StrongHomClass.toEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/stronghomclass-toequiv.md) | 733 | `declaration-track:e5e818fb4225de215b9c760e817dd8bc2a64dd4723811d28974e7aef3f42383f` |
| 126 | `instance` | [sumStructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/sumstructure.md) | 742 | `declaration-track:6dc094b48f00fdbd2c82d8c0288db20d18191208021e713c1e249d1ae1ba5003` |
| 127 | `theorem` | [funMap_sumInl](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/funmap-suminl.md) | 749 | `result-track:9dd28e69f462ad85dc6078492f875bcc42e4268358a1c4365e8e4a54be38a039` |
| 128 | `theorem` | [funMap_sumInr](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/funmap-suminr.md) | 754 | `result-track:a5e8080e2a22a12f2699492f24802e1da8a7792d5217eae799321db1853c0ba6` |
| 129 | `theorem` | [relMap_sumInl](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/relmap-suminl.md) | 759 | `result-track:b0214073dda8d234e1b6b11b80973fa66836d32ec6cbd811b62c59c084a04ac8` |
| 130 | `theorem` | [relMap_sumInr](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/relmap-suminr.md) | 764 | `result-track:397bf681d7c540cf73b66c83a9cbb640fe92ceed5e8c233cecb83dffbb946394` |
| 131 | `def` | [emptyStructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/emptystructure.md) | 775 | `declaration-track:61d1d429c7418e3a0747a50da9838ffba41779d3bdf81a5f2e6ff312a84413a2` |
| 132 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 777 | `declaration-track:84fc61afda56900715c46888fd66d94a3516b9076e2fd3a827047561333452a9` |
| 133 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 783 | `declaration-track:61c17d6a8e7ec4dfe2df845db9fe4e1aa5bad7276b77580f55c325527369dd85` |
| 134 | `theorem` | [empty.nonempty_embedding_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/empty-nonempty-embedding-iff.md) | 788 | `result-track:041bb31a285f7f23c0a6d7cac25a741f6debd1bba3e137ca09fa0d3ac9b2f865` |
| 135 | `theorem` | [empty.nonempty_equiv_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/empty-nonempty-equiv-iff.md) | 794 | `result-track:c461c415aba41628afaad2db567ce086d21544dba92ff4ea80f478c27c19383e` |
| 136 | `def` | [Model Theory Basic Namespaced Public](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/emptyhom.md) | 803 | `declaration-track:de48ef7fd9ed7be05568ef911ccefa86c3b4e4f2a61004986e8890f635015d1a` |
| 137 | `def` | [inducedStructure](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/inducedstructure.md) | 819 | `declaration-track:7a2c2e4f80b18c7281a0ff945cacd8536450b366eccdf6ea8c8e45880b380d45` |
| 138 | `def` | [inducedStructureEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/inducedstructureequiv.md) | 823 | `declaration-track:94d1a0f2d0447e7fd3e07aa8582140bdea3de65f4353eb67637db51503d816a8` |
| 139 | `theorem` | [toEquiv_inducedStructureEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/toequiv-inducedstructureequiv.md) | 831 | `result-track:01587f236a4760c9d3d146a6b885553e285e40dbae6dfd623352d3ae64938ede` |
| 140 | `theorem` | [toFun_inducedStructureEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/tofun-inducedstructureequiv.md) | 836 | `result-track:70907f98741d60b9b40509258f6f69951a14fcd6259af189b625d76b4b2af4ed` |
| 141 | `theorem` | [toFun_inducedStructureEquiv_Symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/ModelTheoryBasicNamespacedPublic.lean/declarations/tofun-inducedstructureequiv-symm.md) | 841 | `result-track:ec435d7c6c38953ac9e5c360518d44986ffe5117767b2987688556f55777d7a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=531d1505e66f79788137cce82b91e213db1ffa730cab1fa0fdc3b223fd0d40dd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant10c5155efe8fcaedc434cd871bff46807a19650a89af1717627a21031fd3e393.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant10c5155efe8fcaedc434cd871bff46807a19650a89af1717627a21031fd3e393.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
