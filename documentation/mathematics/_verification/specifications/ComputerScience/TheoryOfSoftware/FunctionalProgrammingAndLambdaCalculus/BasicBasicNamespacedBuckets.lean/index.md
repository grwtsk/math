# Verification target: Basic Basic Namespaced Buckets

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "777b41bb75ace94715ddd6f66cad9196cb5dbfd4",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0885f455033d73a7b9de478ef57ea8e077214d625e02dbef67a7c3b81615568c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `777b41bb75ace94715ddd6f66cad9196cb5dbfd4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0885f455033d73a7b9de478ef57ea8e077214d625e02dbef67a7c3b81615568c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0885f455033d73a7b9de478ef57ea8e077214d625e02dbef67a7c3b81615568c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.AssocList` — import line 11; external provider; requires a separately pinned dependency.
- `Std.Data.Nat.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Classes.BEq` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LawfulHashable](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/lawfulhashable.md) | 21 | `declaration-track:f964473dd583eac022031639c619eb03d0feb82bfa3328fe69b548f7dd14ad30` |
| 2 | `def` | [Buckets](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/buckets.md) | 31 | `declaration-track:790e48a03161cc0a29f924f1ba3e88f3cf221e988f2978ad1c41c00d9a7ba2a4` |
| 3 | `def` | [mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/mk.md) | 36 | `declaration-track:4f3feb84ac11e525aa3dcae1b3718a1b40cd093a318caae2086cb4a46ce98d75` |
| 4 | `def` | [update](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/update.md) | 40 | `declaration-track:ea934333d75b5506e6fd5a5365c26cad5ab348ba4f90ac99c76041e34a64cd52` |
| 5 | `def` | [size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/size.md) | 48 | `declaration-track:598ecbeefb33337bf37e5e72f32cf77ce89698e687aa3eadad061c7e6ca1f522` |
| 6 | `theorem` | [update_size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/update-size.md) | 50 | `result-track:df75cabca6fa787f27c50f8f70055c32599d85f8fcfe6eefe48c2379490f4a09` |
| 7 | `def` | [mapVal](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/mapval.md) | 54 | `declaration-track:5d230cf70e329e22994328e83887e9df9f87f6201ca0a48a6a35ddd50431ba77` |
| 8 | `structure` | [WF](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/wf.md) | 61 | `declaration-track:260f3b2954db41ec8d96cd9357e08661b4263ac7002b1c1fa8696ee1106d642e` |
| 9 | `structure` | [Imp](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/imp.md) | 73 | `declaration-track:8adaaaef247bab0dd929af678981a723b5aee585171424edf75f0fc1143be4c4` |
| 10 | `def` | [numBucketsForCapacity](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/numbucketsforcapacity.md) | 87 | `declaration-track:360b2621e50cacfbff2058fdab9960a980a4a67a297f4286f47067cef0819040` |
| 11 | `def` | [empty'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/empty-source-edition-2.md) | 91 | `declaration-track:809080ac87dd66d7f987ebdcaf6c33a786e19d6a332f386acd0e8c78501f7668` |
| 12 | `def` | [empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/empty.md) | 95 | `declaration-track:6bd2df65b00486e7fa0c58d1a8029f9d87cebc1dfe70176e01ed7e13746d91a3` |
| 13 | `def` | [mkIdx](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/mkidx.md) | 103 | `declaration-track:6f47bd40d0c3ef962854deb070b4c644f8fa2c8243e1ddc03392a680d09e0c57` |
| 14 | `def` | [reinsertAux](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/reinsertaux.md) | 110 | `declaration-track:c7251f8ffbeae1e0e77b2040898de239718ebc25b854eea51a9daf9938d3a7f1` |
| 15 | `def` | [foldM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/foldm-source-edition-2.md) | 116 | `declaration-track:b64f17c58a4fbd99c1fe57e71d34577e4322ec3b21ab958d2a541e67ef594ae9` |
| 16 | `def` | [fold](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/fold-source-edition-2.md) | 120 | `declaration-track:f093da24f02e6049db2083beb96501deb97c24807c2685bc5432f29fbe849f51` |
| 17 | `def` | [forM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/form.md) | 124 | `declaration-track:a568ab4f6425b0c18a383a2a0b2b62d36f8f70b04cb5ec9b30f91b4aaeb9875f` |
| 18 | `def` | [findEntry?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/findentry-source-edition-2.md) | 128 | `declaration-track:83bac7734a7968b0855c1f0686bca864efdea72cc2fb948c527d93567ae2674e` |
| 19 | `def` | [find?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/find.md) | 134 | `declaration-track:108497512b0c04f4df0af44f3863c37c5bf2c68b77fccb13d346f3eb2567a979` |
| 20 | `def` | [contains](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/contains-source-edition-2.md) | 140 | `declaration-track:27e33ffe1864643fb6e24138074aad9305330def5b577a015da7a5d684dc2db3` |
| 21 | `def` | [expand](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/expand.md) | 146 | `declaration-track:a718ae02aaeb7115ab013e8feee29781c95e7175bc881acd066eca979c7b06f3` |
| 22 | `def` | [insert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/insert-source-edition-3.md) | 168 | `declaration-track:c38cf689f04eef857966e73110bbc26fb9c847fcfee17a8233fa354e01fb9afc` |
| 23 | `def` | [erase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/erase-source-edition-2.md) | 185 | `declaration-track:4245b7b06b7c0c805ff1ba77c4eaf285fce465eb3935b8f56596b39691ecfd36` |
| 24 | `def` | [mapVal](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/mapval-source-edition-2.md) | 192 | `declaration-track:e0c501855875f6527131cda10c19677186d87e796b987f7f8746084686009991` |
| 25 | `def` | [modify](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/modify.md) | 196 | `declaration-track:0cdbdb6fe93badb5f628d1e2e4be3673e4674672acf719621ec9b699e52fdf38` |
| 26 | `def` | [filterMap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/filtermap.md) | 207 | `declaration-track:5a92882435d975e0ed11a3c79d99bf3e8eb2b292697892a06a37f92d87ef212b` |
| 27 | `def` | [filter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/filter.md) | 225 | `declaration-track:1552e68526a0d8a3d1297d244d664a999ab8189f81d399df0555671d92ac5a9a` |
| 28 | `inductive` | [WF](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/wf-source-edition-2.md) | 233 | `declaration-track:f872c18d0ef0d34b4e9eb3510dfb91673db29ee1eb114f3c8d4661fa5531b378` |
| 29 | `theorem` | [WF.empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/wf-empty.md) | 248 | `result-track:0f52bcff0794ceb70670518bcf67b4cfaec3e2f81382dc90a016e4817759a7b2` |
| 30 | `def` | [Basic Basic Namespaced Buckets](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-la.md) | 259 | `declaration-track:3bb7915393b87659743d2e1aaf7562e7035a2ca3e34e1beaf24cdc3feb7ab199` |
| 31 | `def` | [Basic Basic Namespaced Buckets](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-la-source-edition-2.md) | 264 | `declaration-track:9b657645d2230c7508d13fe27e028ce574d98b828d866e9d4d1a7da6bbd39429` |
| 32 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/instance-source-edition-3.md) | 267 | `declaration-track:e7a22cd46bd98f12d49adcb7510ec7ca35b8fe88e61c2e63236890d5ab36dc9b` |
| 33 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/instance.md) | 270 | `declaration-track:57a746d343e90e791bccdce248bb23775bacd119ab68334e957a24bc4b99f13b` |
| 34 | `def` | [empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/empty-source-edition-3.md) | 273 | `declaration-track:e0bfa2593daa5480c81cd311c661799e75e0bc44a3f3be90288a1e8b70dec29b` |
| 35 | `def` | [size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/size-source-edition-2.md) | 278 | `declaration-track:d8931bda38b40920fc459993e5c8faef380c55668087ff034f6bf3d741e1ce65` |
| 36 | `def` | [isEmpty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/isempty.md) | 281 | `declaration-track:51216224ca049fabff33396210b04771fccb8e0a9ed630ed263dcbf6e870f64e` |
| 37 | `def` | [insert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/insert-source-edition-2.md) | 287 | `declaration-track:49ee11ac6f13ada11652a652c62fd254253c8c7901fe7d52d6471c9a95b0eedb` |
| 38 | `def` | [insert'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/insert.md) | 293 | `declaration-track:020385ec96394acc8339532e76bb929d7995ae9797b37cebf61838aa46e1445d` |
| 39 | `def` | [erase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/erase.md) | 302 | `declaration-track:2eb1a662df80cc1fd972ac2ae55ca08acec013c85f86aab6230d31d5c421f384` |
| 40 | `def` | [modify](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/modify-source-edition-2.md) | 308 | `declaration-track:82a26ad8bedb95fcfea0c0a88f7041fe4ce088916f072ab93446dddda7d61942` |
| 41 | `def` | [findEntry?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/findentry.md) | 312 | `declaration-track:7f33ca0e83c863ab7e43e7f0beeff62e26a00f4a263957f6417bf0d73eba3e6b` |
| 42 | `def` | [find?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/find-source-edition-2.md) | 315 | `declaration-track:6f18a0e950929f937565cea9acb2938231cb74d43c2330b89e7d81c011711ce5` |
| 43 | `def` | [findD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/findd.md) | 318 | `declaration-track:1b086008b68dc000215d092c2616577bf29c726d58305ea92d8e6f537c9369b2` |
| 44 | `def` | [find!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/find-source-edition-3.md) | 321 | `declaration-track:c8e2ab20375e0777b2fa7935449413b5d8255b71875a4c360578f5a96fd26e04` |
| 45 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/instance-source-edition-2.md) | 324 | `declaration-track:abffaee34422c3230bc1cb2ddd8ea8daef6e6a2a2cb1ef1872e39f382f75c1b4` |
| 46 | `def` | [contains](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/contains.md) | 328 | `declaration-track:1ed72ab5041c22011cb387c7145df3bc837f4bce49a2356721d0dc97cd60bf38` |
| 47 | `def` | [foldM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/foldm.md) | 331 | `declaration-track:8b1cd3ffb10a2ca066fce04ed62690c889ace794ad7e693a3e3478c1721e48df` |
| 48 | `def` | [fold](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/fold.md) | 335 | `declaration-track:bb54b4ea004305fe55496424e45dda1f6f9aedf089c2af7a7f03933381390b23` |
| 49 | `def` | [mergeWithM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/mergewithm.md) | 338 | `declaration-track:f9a07cf9cd856d52649790df18bf386882f7a8c57e53e9973a95475d01481e71` |
| 50 | `def` | [mergeWith](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/mergewith.md) | 346 | `declaration-track:756c5e570f98ed5e2ed371c13cbda1781534e3dbe345ed4e2227572cbfd1c0b7` |
| 51 | `def` | [forM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/form-source-edition-2.md) | 355 | `declaration-track:bde58cecfd9268d862c15eb901bb814bf6ca360971dd5662068c4a2ea5736aa8` |
| 52 | `def` | [toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/tolist.md) | 358 | `declaration-track:91ea676405254f1fb9447921e576372616e392c1653b9088f2d5f7c95a74f21f` |
| 53 | `def` | [toArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/toarray.md) | 361 | `declaration-track:efc8f58d81e1691e418336e52fa8c17796b4a421397df8f8e9480229e4daf65e` |
| 54 | `def` | [numBuckets](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/numbuckets.md) | 365 | `declaration-track:a99a5e4ba463660784394a1d3593939742b44930f9bdd386e4f1b49380413802` |
| 55 | `def` | [ofList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/oflist.md) | 371 | `declaration-track:536432d10cec9bbb4ae26993896f06bd899f116e10d92149d841e7f6dfab1c8e` |
| 56 | `def` | [ofListWith](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedBuckets.lean/declarations/oflistwith.md) | 375 | `declaration-track:5eb7c79a98f836b63fd4732998d43d3a7a551e0d9d988462b1783f32332824d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=348e5dc0ee393bccd55d5082ffe534604fd0bfe0925d423841a89a7bfaf4965b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0885f455033d73a7b9de478ef57ea8e077214d625e02dbef67a7c3b81615568c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0885f455033d73a7b9de478ef57ea8e077214d625e02dbef67a7c3b81615568c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
