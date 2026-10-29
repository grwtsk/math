# Verification target: Basic Basic Namespaced Public Ext DHash Map

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53b7d0b84e0c85af37176feeb5fc22affa04cb18",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant675fc861f1d556db2743557d6e53a64a32f45f6463738b0176744ddf96a346b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53b7d0b84e0c85af37176feeb5fc22affa04cb18`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant675fc861f1d556db2743557d6e53a64a32f45f6463738b0176744ddf96a346b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant675fc861f1d556db2743557d6e53a64a32f45f6463738b0176744ddf96a346b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ExtDHashMap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/extdhashmap.md) | 72 | `declaration-track:e14af2d1ac6bb4d4c6039a869bda6bb2c23590016b93e7ead785b3ced2fead92` |
| 2 | `abbrev` | [mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/mk.md) | 81 | `declaration-track:1a646b04d7b39c215f130961e94917fe793bcecc88753e5ca645d565fd2591d7` |
| 3 | `def` | [lift](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/lift.md) | 85 | `declaration-track:9134991afe396f277e1a9a176e143cfb9e7eddea378ddbc1154b1a55624f7c8b` |
| 4 | `def` | [lift₂](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/lift-source-edition-2.md) | 89 | `declaration-track:d77fcd401e46c9b37bfe11aa9d3a68a116fb56766a19bb8f2bdc1117dbff61e9` |
| 5 | `def` | [pliftOn](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/plifton.md) | 93 | `declaration-track:02029105ae794cfe7cbf59870d68d5ee65d850518e7d3c7db6395ff5f393ec17` |
| 6 | `theorem` | [inductionOn](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/inductionon-source-edition-2.md) | 98 | `result-track:83047546f4fb5f45b1ab31bf5b5c9ea0411a6c7d665e810e36c262f5037f282d` |
| 7 | `theorem` | [inductionOn₂](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/inductionon.md) | 103 | `result-track:173c1b96c456d7451eff92d7d2907de33a9f109ae40f537b9463b8da95f11a9f` |
| 8 | `theorem` | [sound](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/sound.md) | 107 | `result-track:6b25f375b5258e0f94938d43527f149dede55269a868500f31ed9dfeab76725e` |
| 9 | `theorem` | [exact](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/exact.md) | 110 | `result-track:b9a02ce712b903257e1eda091185aebff9476df8c152bae3c5cf685a1554422a` |
| 10 | `def` | [emptyWithCapacity](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/emptywithcapacity.md) | 114 | `declaration-track:45ae4d8f0f80c2d11855dee266a9050e0cb91b32e84d76aaf26fa5b88cf6792f` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/instance-source-edition-10.md) | 118 | `declaration-track:898c6cbbe0c6e40c6166727f3e88780611a281aeb164699be5015714cc8dbe99` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/instance-source-edition-11.md) | 121 | `declaration-track:902f8e0a92014d696ed4b4477aa852a5cc1db6a7385f361d4a10b409dd07c199` |
| 13 | `def` | [insert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/insert.md) | 125 | `declaration-track:8d0eb78e4ab1b15123008f5682527ba2613ace70cd66ca283fa58f6c152e8457` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/instance-source-edition-5.md) | 130 | `declaration-track:3fd346df3e963a52a4926fd0885e9558eb4ac461d880677b490134b0780c85b5` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/instance-source-edition-4.md) | 133 | `declaration-track:3df4d5ebd200e507e7f0baf1bda1c31622ec393901eb8a623fc796846d755de4` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/instance-source-edition-6.md) | 136 | `declaration-track:4765d8662db09e3c19c4b8de0b9d1a69015d09e77e68791b09c15d77e2fd7bf6` |
| 17 | `def` | [insertIfNew](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/insertifnew.md) | 140 | `declaration-track:9ebebc35b2e7639cfa33052dee1c330bd1eb4dffdca2fe73f09bb34c74e1c504` |
| 18 | `def` | [containsThenInsert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/containstheninsert.md) | 146 | `declaration-track:c3ab3f07e9a9f4b24a2a44ab477cf1a7c67555af286b9aa01e6a04f2982b61ff` |
| 19 | `def` | [containsThenInsertIfNew](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/containstheninsertifnew.md) | 156 | `declaration-track:9d9eacd876b5172111629f8cb09af7134c579720b2bba842840b699436a2a6de` |
| 20 | `def` | [getThenInsertIfNew?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/gettheninsertifnew.md) | 166 | `declaration-track:ab5b37160a3bcc362e8edd1055364b41fb112939ded9b3a9a2c4b3605e7428b3` |
| 21 | `def` | [get?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/get-source-edition-6.md) | 176 | `declaration-track:f3ca498f62e942a870a5cb0e9fdc710881a732be126fe326750308e9fb444655` |
| 22 | `def` | [contains](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/contains.md) | 181 | `declaration-track:3c0225667cb5c709014cbacf5dc8f3d1cc599a8cc27855696e5cb6c0a95b3e40` |
| 23 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/instance-source-edition-8.md) | 185 | `declaration-track:5d749414330272292e52a90aa0c38e14a1e29787541bb15a10ce716878594488` |
| 24 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/instance-source-edition-14.md) | 188 | `declaration-track:fc2c6643cda781f8c2e8a7ca072dc52794171428ee28910aa0c74a3456c488fe` |
| 25 | `def` | [get](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/get-source-edition-2.md) | 192 | `declaration-track:60eb2cbfaa31dceb2efb40eddd2c489d8bb523f40acb8219f9882c8347fd4bb4` |
| 26 | `def` | [get!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/get.md) | 198 | `declaration-track:5c4d2e69fe3361d0701c36473487fd957202f248d56453929310d857dfa3724e` |
| 27 | `def` | [getD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/getd-source-edition-2.md) | 203 | `declaration-track:d5e01bdeedaa11efa7d7e0dead7b36f100657648be90e8bd2bd2a38affefdec6` |
| 28 | `def` | [erase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/erase.md) | 208 | `declaration-track:ee9a846dbf8b30ab6611311217092aea2775f08c124ddd43cc512b9da8a2cfc1` |
| 29 | `def` | [get?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/get-source-edition-3.md) | 218 | `declaration-track:7823418b4e0a15ae2db59b1b8cadf8c0758317b0c387e3147ad8bffb4f6a6e1f` |
| 30 | `def` | [get](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/get-source-edition-5.md) | 224 | `declaration-track:9c5d8ec8b40f3d178c800ed9664d3510bf117e8f866eb1923a678dbf0b13982b` |
| 31 | `def` | [getD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/getd.md) | 230 | `declaration-track:02965cbc02d04c469c85286424df9646ddf80a4a317a6d83ccb9d542c3de8672` |
| 32 | `def` | [get!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/get-source-edition-4.md) | 236 | `declaration-track:808e3324e82ce52c0d559fba48a26ef40d950467da7e57f99c389bd1dc366bb6` |
| 33 | `def` | [getThenInsertIfNew?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/gettheninsertifnew-source-edition-2.md) | 242 | `declaration-track:c15ea61462946a65ef2890e8ff92bd3cf324dcd763e9338f7c84bf97853a4c6f` |
| 34 | `def` | [getKey?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/getkey-source-edition-3.md) | 259 | `declaration-track:e50b8731fb01476641538045b3d2e16907c3865779ba999c85979ffc15eb04ed` |
| 35 | `def` | [getKey](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/getkey.md) | 263 | `declaration-track:0e7e41877544fa88b448eb534d2d0986976c13262307670885463f777d7aa458` |
| 36 | `def` | [getKey!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/getkey-source-edition-2.md) | 268 | `declaration-track:d81632ffeee83e22e211e266b0ce18dbb427a6484d3a529ea9a0e300106ff389` |
| 37 | `def` | [getKeyD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/getkeyd.md) | 272 | `declaration-track:cf4f7d869876d373c40f50984bb3604786f3ffaa7a583cffa47688814f2e389b` |
| 38 | `def` | [size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/size.md) | 277 | `declaration-track:ac2c2c913415e18a66d4d6587a4250ba2d2355251b5d1f27a0e61cbe74a0d54b` |
| 39 | `def` | [isEmpty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/isempty.md) | 281 | `declaration-track:17be60c9654757adbbbdb4328f6321236769cbf75f53ee31c366eed9b1fa43c9` |
| 40 | `def` | [filter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/filter.md) | 287 | `declaration-track:41a1937aeb27e03ea97bfc8e33b90cf1dea67ec0c3f925e76b22017556cf940a` |
| 41 | `def` | [map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/map.md) | 293 | `declaration-track:5239259435e1a4b345259638a49e868f0b7edf02c231cfab42076441f0aa04d4` |
| 42 | `def` | [filterMap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/filtermap.md) | 299 | `declaration-track:22428db9f13d33ba17418e0f2f746e66a9f3a43f44fec62f67596162b35b19aa` |
| 43 | `def` | [modify](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/modify.md) | 305 | `declaration-track:5c0f60a9f9bddfdd2308aba15ce2c23cf501db37e53e8aa54bf06eb386062500` |
| 44 | `def` | [Const.modify](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/const-modify.md) | 311 | `declaration-track:9b85db1af215b8d8858766b020901dad6b5321fc3d818506184d00178e443ac5` |
| 45 | `def` | [alter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/alter.md) | 317 | `declaration-track:c6489a5d9757a371b19f4de31082c0e5c21272d35ec17351b49964e558267013` |
| 46 | `def` | [Const.alter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/const-alter.md) | 323 | `declaration-track:4672fd61e931b9ebc49bfc1bca68853f210b6b1611576abc42926938433d3c97` |
| 47 | `def` | [insertMany](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/insertmany.md) | 334 | `declaration-track:14938230ff918913792aeef83f546658b3638a01da44706cda5e847fe360f606` |
| 48 | `def` | [Const.insertMany](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/const-insertmany.md) | 343 | `declaration-track:7c1e4b5ffad10db76bbd311818fc342029098209f1247ddeaf67afaedfb0927e` |
| 49 | `def` | [Const.insertManyIfNewUnit](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/const-insertmanyifnewunit.md) | 353 | `declaration-track:f6e78764b9ae5a8ae37947de7d2f1220640679594126b56ce87b9f49ec01ca18` |
| 50 | `def` | [union](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/union.md) | 363 | `declaration-track:598945b7a61194f7e5a6fb40ebcc600869a5004e708cac63b9910e9a460d55af` |
| 51 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/instance-source-edition-2.md) | 371 | `declaration-track:1f0e081ca8170ba4cf902aa0f6077ce2a1a2f31070ade41454d9569ff8c74207` |
| 52 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/instance-source-edition-3.md) | 373 | `declaration-track:22d128c8626bf8868196a96ff48266c285e2018b4268706a5dc19827a009c6ea` |
| 53 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/instance.md) | 376 | `declaration-track:1c4e8912df4152805888104d39c3825050aad7276da40103b11bed260d3001ee` |
| 54 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/instance-source-edition-12.md) | 379 | `declaration-track:ae0ac94f9bc415e0c1b6b4ffae96fa2e561f0212a3b5ba4bb9b7dbfc0d0593d7` |
| 55 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/instance-source-edition-13.md) | 382 | `declaration-track:ee8f83ebed0553379b3b533f0645a183cdca374ddd19017024e1d12a79526af1` |
| 56 | `def` | [beq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/beq.md) | 390 | `declaration-track:6a50352f873609e974c64bce48b83094dd53442914b2f12ac8d1533e07c33a88` |
| 57 | `theorem` | [beq_of_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/beq-of-eq.md) | 393 | `result-track:601309e8df89922f460b599ec9e4f7150145a01dd52642a7a4abf0cb861d8137` |
| 58 | `theorem` | [eq_of_beq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/eq-of-beq.md) | 396 | `result-track:4fc66a33d3ec5a39b93f343f41ff700784b81a6e1049df3fa224ad14c4b7c073` |
| 59 | `def` | [inter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/inter.md) | 402 | `declaration-track:775b0a39889cd8550c7c741b123faecc201e2e943b24c10310216d3e47a12593` |
| 60 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/instance-source-edition-7.md) | 410 | `declaration-track:5ad39353e5e2c3c0a01a21a6bfba3d85d79a9fccef90f9275134ec6d54ca482a` |
| 61 | `def` | [diff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/diff.md) | 413 | `declaration-track:18b346613d1827e599014a3107bbf8dec8fbc8496e68e304eb30c95b5b7e42b2` |
| 62 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/instance-source-edition-9.md) | 421 | `declaration-track:6d4007b502b315b4763a8c75f8e5d03d56c0a6d4068c165e7552f7ea275bf95d` |
| 63 | `def` | [Const.unitOfArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/const-unitofarray.md) | 424 | `declaration-track:a3b3cf25234e741ab2b4802504de9c43147058e67744bd0851d0033450611896` |
| 64 | `def` | [ofList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/oflist.md) | 429 | `declaration-track:02f63b40f1fe6c323994586eb201541c0102a642b3e08a0d400ce07764a1d0be` |
| 65 | `def` | [Const.ofList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/const-oflist.md) | 434 | `declaration-track:fa38b57b9717525b7a8ae8fb08d6d386f9acbbb2b38a17263d3789271e18ea28` |
| 66 | `def` | [Const.unitOfList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicExtDHashMap.lean/declarations/const-unitoflist.md) | 439 | `declaration-track:c24f107a7cd122379452e91a1b6e26a79d24ebe271cde7e4a5549f850d10e372` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b06487ec68a27981d53b8591f9ead0a5b4b85f7124409c0a90f095b4353f1dc4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant675fc861f1d556db2743557d6e53a64a32f45f6463738b0176744ddf96a346b3.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant675fc861f1d556db2743557d6e53a64a32f45f6463738b0176744ddf96a346b3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
