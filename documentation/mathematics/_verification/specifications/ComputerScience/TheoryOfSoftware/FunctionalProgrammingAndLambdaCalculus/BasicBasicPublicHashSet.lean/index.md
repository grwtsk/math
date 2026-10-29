# Verification target: Basic Basic Public Hash Set

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64d670f04d172bec31f848014cb28d7260e42146",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9c54b3f31851f8619310e17eea2772c70cc9b0e8f7b9e596e3ab4ce9ac8aa827.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64d670f04d172bec31f848014cb28d7260e42146`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9c54b3f31851f8619310e17eea2772c70cc9b0e8f7b9e596e3ab4ce9ac8aa827.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9c54b3f31851f8619310e17eea2772c70cc9b0e8f7b9e596e3ab4ce9ac8aa827.lean.json)

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
| 1 | `structure` | [HashSet](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/hashset.md) | 56 | `declaration-track:6a86243910697fe5cda99ac34ef116e38b773569776e02ab0974696e7c840cf0` |
| 2 | `def` | [emptyWithCapacity](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/emptywithcapacity.md) | 68 | `declaration-track:cdcd65485884796aade48e8371a86f43132e15238a5d1a962d855366a78efa8c` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/instance-source-edition-2.md) | 71 | `declaration-track:0eb45a326c02a551be320bd9797213f8d2de1fed3bda620130c27c8042f0df8b` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/instance-source-edition-3.md) | 74 | `declaration-track:1e3b471f940ba7c4ca5a5869ebd277de769d05b2bac5350f176552728fb17fe8` |
| 5 | `structure` | [Equiv](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/equiv.md) | 80 | `declaration-track:0d411f6224e477bd5e9c5f174f3b820c5309039badb66d390ce00a94de670e6c` |
| 6 | `def` | [insert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/insert.md) | 94 | `declaration-track:f2aa40eea3ea331fdc50b93b6a3c85479812aa26d27e70eadcd452e323945edd` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/instance-source-edition-12.md) | 97 | `declaration-track:c6121edfd488262a9351232429d398c847848cc7f31cf97db4d93cdf0807172b` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/instance-source-edition-10.md) | 99 | `declaration-track:a5d6d7a346b2ad89b69949a74aab88eaf7b8cfc08eb895645c2ecbadef756df4` |
| 9 | `def` | [containsThenInsert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/containstheninsert.md) | 108 | `declaration-track:a1808f7c142bce66f06630ee0bfa8b965226a1adc7ed33f13e40ee7774b2f93a` |
| 10 | `def` | [contains](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/contains.md) | 119 | `declaration-track:aba7c8230f785dba44ea57966c9d65fec9df92342e3f47e7d56464a36a14ff51` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/instance-source-edition-8.md) | 122 | `declaration-track:5eb0b54f67cf8ddf758cb4fdf2b948cdcb09345a01c21b2ea8428dfc6711b375` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/instance-source-edition-13.md) | 125 | `declaration-track:d29c69e61ee5ec9971d29fcc29516cac1d7e87803e70cf2c7d4c09463cc0d32a` |
| 13 | `def` | [erase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/erase.md) | 129 | `declaration-track:1e6045450e99e5249d8368e1c7c5f3981da9548d24e6c4fc6448b78d89d8dba8` |
| 14 | `def` | [size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/size.md) | 133 | `declaration-track:70871ebd818f4dcb6e9d7b5e413d2edfa4572d4bee52eaadd9264b52c4f886fd` |
| 15 | `def` | [get?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/get-source-edition-2.md) | 140 | `declaration-track:e7d578b006a0189d55e7b7820d4221e61aa2cca1949888d6b2490700eb1bd73f` |
| 16 | `def` | [get](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/get-source-edition-3.md) | 147 | `declaration-track:ed286f5c413e3a72720d8ab18e47703f5ac7d6d63c79cf6c149d711c508ebd60` |
| 17 | `def` | [getD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/getd.md) | 154 | `declaration-track:ea30ef3c7ef5dad52f6d4afac845274ab795dd9ebced26d8512c38439fd51b27` |
| 18 | `def` | [get!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/get.md) | 161 | `declaration-track:664c7cee98c2f85c913fa718eb9a076f07790fc071387e849aa51cdba673712c` |
| 19 | `def` | [isEmpty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/isempty.md) | 171 | `declaration-track:9452b5139a8258b5e1a7ec73b9fe790dd35bb00bee8ce03f8b004ffcef09323d` |
| 20 | `def` | [toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/tolist.md) | 175 | `declaration-track:16163d174c9621d9166165c396c57aa873be746a25ae550d0f927e1d82434ec9` |
| 21 | `def` | [ofList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/oflist.md) | 183 | `declaration-track:6ece7fb8c03eebebe2c9fae4cc004fc53f5c2b382e1a537b510c483a5b20f9d0` |
| 22 | `def` | [foldM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/foldm.md) | 190 | `declaration-track:e3755f5d045bdc046fda54edc1c03abaef913b761a5f3e3d2ee91c9fdb140a43` |
| 23 | `def` | [fold](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/fold.md) | 195 | `declaration-track:88ac6a6e7caa4a4cdf116a6d8b13992d7104a437bef9fa108da1028adee4d982` |
| 24 | `def` | [forM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/form.md) | 200 | `declaration-track:705b638206490a2ac1e77d66887ad4ba2fc4b28c98c514872dfa845e73f88507` |
| 25 | `def` | [forIn](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/forin.md) | 205 | `declaration-track:6f06819b5ad17c7662ae31cf6f0814aa38bcabe4e0c2f3792f17290c224c4753` |
| 26 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/instance-source-edition-5.md) | 209 | `declaration-track:3325319b581b15d5b1ce3db76615eb6e91509bf6f2f5f7e8b5257e05c3623f9c` |
| 27 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/instance-source-edition-7.md) | 212 | `declaration-track:563b38c1c7a4a604b8ea7513e67ea7ddfc7edeb1ae12450461773e477bea2892` |
| 28 | `def` | [filter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/filter.md) | 216 | `declaration-track:e21b4d5f09eda5aa47dccafebb7949879073a091dbcee7b8248b918eb4c86c01` |
| 29 | `def` | [insertMany](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/insertmany.md) | 227 | `declaration-track:297a05832295b797e83a413421195d71ec4588063d2929996ff8afa02d80f0e0` |
| 30 | `def` | [toArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/toarray.md) | 232 | `declaration-track:2962f5ff653f143a606c7b3e85664d8f1b5b821d55a946a12dc34582d6078911` |
| 31 | `def` | [all](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/all.md) | 236 | `declaration-track:0b7ba6e3ce98d4f3e2fe9e560581fa90c1d9586fb9a0365d00b0f95e52c2b2bb` |
| 32 | `def` | [any](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/any.md) | 239 | `declaration-track:dbeb4c3fd07c2cabd3aecc2cfcd41638512844a9ebd50c60a7dc0428c4657f6d` |
| 33 | `def` | [union](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/union.md) | 246 | `declaration-track:c51a1e2eb338bd672e307b450afca86fb61ab10e9c21b8c7ca2e4671555ead24` |
| 34 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/instance-source-edition-9.md) | 249 | `declaration-track:9eb0ad5fceaa18bfe5a7cfa21d2bcd1cc0d890bb6094e1ae28a3ce4b7683d454` |
| 35 | `def` | [inter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/inter.md) | 257 | `declaration-track:58644fe991ac25aefbb544ad7a4a799011a4171d2558ce69af7153abc9d8a3de` |
| 36 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/instance.md) | 260 | `declaration-track:088a4e8c708a6b62ce96fd355c5b72c802de62c41cdbcb7cc575528e1f0d39c7` |
| 37 | `def` | [beq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/beq.md) | 268 | `declaration-track:d376db0fe19ee112c97e223b80e601a9a670c0f1101c0c88608820b5c6897799` |
| 38 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/instance-source-edition-11.md) | 271 | `declaration-track:bd996c6c32cb452f1cb6e7843dd698792faa5a076f5a3a94fa1d4715b0887270` |
| 39 | `def` | [diff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/diff.md) | 279 | `declaration-track:382316e804fa9babe4009aebb3ce240e2b0f436532096aa044c47d889386ec93` |
| 40 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/instance-source-edition-4.md) | 282 | `declaration-track:25614972bd00e610f59bba61eefe8301571594ba7fdcf1a220a6b7a8c603b8fe` |
| 41 | `def` | [partition](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/partition.md) | 289 | `declaration-track:456e3166fe918812ebc26f9b667747d547260366bdf1da790c2b719ec7e33d8c` |
| 42 | `def` | [ofArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/ofarray.md) | 298 | `declaration-track:d2aa68c9fe67224915e83f1bca62b41bf1cac0edf5d1a886ec667820ef109f50` |
| 43 | `def` | [Internal.numBuckets](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/internal-numbuckets.md) | 306 | `declaration-track:3ec24893d2b92d586dc140756393a73874b20e47dd8114dfd387df28baffd991` |
| 44 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicHashSet.lean/declarations/instance-source-edition-6.md) | 309 | `declaration-track:3a15749ff64fdc10c7163638a80afcc8ad392ef91555f133753d181844158bc8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3ac04f275e4cae514aeb1b7ac2563669ccffde0f9b09623db0ebbeb2d9904775 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9c54b3f31851f8619310e17eea2772c70cc9b0e8f7b9e596e3ab4ce9ac8aa827.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant9c54b3f31851f8619310e17eea2772c70cc9b0e8f7b9e596e3ab4ce9ac8aa827.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
