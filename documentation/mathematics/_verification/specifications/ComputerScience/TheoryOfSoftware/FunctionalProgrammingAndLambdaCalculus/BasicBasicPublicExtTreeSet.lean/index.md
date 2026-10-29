# Verification target: Basic Basic Public Ext Tree Set

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3225bddda7725448e7467daa43245e8b98c9416b",
  "lexical_observation_count": 78,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf869bad46f591ffbc22f636edc00993bf760318b22c0b85e1ff541e78b83dea6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3225bddda7725448e7467daa43245e8b98c9416b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf869bad46f591ffbc22f636edc00993bf760318b22c0b85e1ff541e78b83dea6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf869bad46f591ffbc22f636edc00993bf760318b22c0b85e1ff541e78b83dea6.lean.json)

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
| 1 | `structure` | [ExtTreeSet](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/exttreeset.md) | 70 | `declaration-track:20633837b7ae10c95917de602fd8b4804aa0bc65fa0a5887f05ef6881f7b627e` |
| 2 | `def` | [empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/empty.md) | 82 | `declaration-track:a3591c04a8489df06cd0057dedaee9320722df8e0c65cc87e7a1d268662ba95d` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/instance-source-edition-14.md) | 85 | `declaration-track:dc33f8abb37f2e987ffb5b1aa903428eb6cc09e711e91faa4dfdd96be024f91d` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/instance-source-edition-16.md) | 88 | `declaration-track:eace62a6a4ff61b65681b073f2eb8ea2fb94a06cdb78dadde9e6336795f4d4e1` |
| 5 | `theorem` | [empty_eq_emptyc](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/empty-eq-emptyc.md) | 92 | `result-track:6051c204ccc704af8466869419346b68eeb52cdb2c4dec3d45ecca2656402e59` |
| 6 | `def` | [insert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/insert.md) | 104 | `declaration-track:8a4acedc04eb7da001d68ed2bf12b9794623ed1e5a58f044396c3ca2318eb17c` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/instance-source-edition-12.md) | 107 | `declaration-track:b314fca07f919d831d4ac846bcbb61474f0116ee89bb986a6df2d4b88906bbab` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/instance-source-edition-17.md) | 110 | `declaration-track:ed7a2149d5c7ff42ee29a74eff353a2aaf207ff86288e01431f85e5f87d1f18d` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/instance-source-edition-8.md) | 113 | `declaration-track:6447e136a5c24b87d02cce43ee450c19e82580a392de28994208c0079d577326` |
| 10 | `def` | [containsThenInsert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/containstheninsert.md) | 124 | `declaration-track:a92d7a9986e6abaaec656a61f6c24d8c91e8c7c3e50d8431ab9eb959416d2429` |
| 11 | `def` | [contains](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/contains.md) | 137 | `declaration-track:8109c7be1e01e944b57d6d67d96fbb60d2cdcdc22f44ff47a97033519c5399ed` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/instance-source-edition-7.md) | 140 | `declaration-track:5c72198e08d7c7bbc4e1328fe140364ec13d7c50d7e367431154e204533284f6` |
| 13 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/instance-source-edition-11.md) | 143 | `declaration-track:9a5d0f972f7913e0b6ed92c9d3f469d83e169f77cd5b14977e18985de01cd9d1` |
| 14 | `def` | [size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/size.md) | 148 | `declaration-track:7e2708753e93d5b2e89d07334db7707ddd9cab4db59787ce8ba9397354702c5b` |
| 15 | `def` | [isEmpty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/isempty.md) | 153 | `declaration-track:52ff4e1bd83ba951e2dfaf179d92708189168c7cf8def5922e3f2878446186e7` |
| 16 | `def` | [erase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/erase.md) | 158 | `declaration-track:171f31a142c315a264423dc791838098e5e4430de9a296e2f58eaaede445a93a` |
| 17 | `def` | [get?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/get-source-edition-2.md) | 166 | `declaration-track:e0acf29e5eb9533e82eed6c51848dc7a50bee9e743e4f1a5fbab846fa8a33043` |
| 18 | `def` | [get](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/get-source-edition-3.md) | 174 | `declaration-track:ef2b1b21b1f912a2b10a73b1348cb3426404a1143d803712c44958cb291a4dd9` |
| 19 | `def` | [get!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/get.md) | 182 | `declaration-track:2576a9c5fff2b9692802f7bf8c67584d88237b093ed592b08553f4299dd90eae` |
| 20 | `def` | [getD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/getd.md) | 190 | `declaration-track:d8586e2499602abe0ece8393ba8d9f71b7ae7eb2d8be36f14f34f3a82979090e` |
| 21 | `def` | [min?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/min-source-edition-3.md) | 197 | `declaration-track:9b9acbec750e8426bb02a9bf7c064d32b813e918bfef9a30b284f7d72bc611a6` |
| 22 | `def` | [min](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/min.md) | 204 | `declaration-track:0a48e6ff815ca152eb1cf4997072028c9f8db7adf92eb58c55970cd62f28f54b` |
| 23 | `def` | [min!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/min-source-edition-2.md) | 211 | `declaration-track:6380f5a8fa96912959e38693e9e2671cd9df195965a73cf101789f5a6e52e91a` |
| 24 | `def` | [minD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/mind.md) | 218 | `declaration-track:c7eeb57a52d77e14baea6fb383032c947016288932d524e60b2cb2e0df1d56ac` |
| 25 | `def` | [max?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/max-source-edition-2.md) | 225 | `declaration-track:843c9ed00f208c3bae236cd9c53eb993aa4c7c0187f0fb7b3ad348c6da8bae7e` |
| 26 | `def` | [max](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/max-source-edition-3.md) | 232 | `declaration-track:decfdd70028191567f318567f8856cc9c8a63ffcd7fc49f24e51ba89f0039eda` |
| 27 | `def` | [max!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/max.md) | 239 | `declaration-track:12d40df55fd36ac581290ea5008fe261892a6653700eeeae6846c5525fd55694` |
| 28 | `def` | [maxD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/maxd.md) | 246 | `declaration-track:3960a809be762c6ae8f3695554ce202da3e089d33f8802e2ee7b2b677a89a322` |
| 29 | `def` | [atIdx?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/atidx.md) | 251 | `declaration-track:1e9ff934c47a2bbc9e974568348993acd47a91228c67b16d8f35be2b435f71df` |
| 30 | `def` | [atIdx](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/atidx-source-edition-2.md) | 256 | `declaration-track:4ff4be4913f064c8bbd6c5fb592c57ca7f31a8e983b3a564daa3607a40104635` |
| 31 | `def` | [atIdx!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/atidx-source-edition-3.md) | 261 | `declaration-track:b2b657d4f9e882f5d00ea901b88f138639a6d99f0af80b8b54dc090251acaf9a` |
| 32 | `def` | [atIdxD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/atidxd.md) | 266 | `declaration-track:4972282e77328fc367a3819d2cebab2484a881c62d2875ff4bc8666e506918a9` |
| 33 | `def` | [getGE?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/getge-source-edition-2.md) | 274 | `declaration-track:59b27a901a49d43d4438514aa3980ecf814969e47f0a2164cae7019a339357cd` |
| 34 | `def` | [getGT?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/getgt.md) | 282 | `declaration-track:7b362061ede87a4a23370af3572c01d4dd400eeb58a9097bb326671dfe4198fb` |
| 35 | `def` | [getLE?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/getle-source-edition-2.md) | 290 | `declaration-track:c437a9a3af42bd290cc747afe3432e410ccc7faa4d9ccf6af7012307adaa6f95` |
| 36 | `def` | [getLT?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/getlt.md) | 298 | `declaration-track:76640f29c30f55c1092b68b9951157dcf486aeec1204d9f041be63ecc6c84935` |
| 37 | `def` | [getGE](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/getge.md) | 306 | `declaration-track:0bdd824ed03bea7e316f2cee894f63e17160f304e1662f462fcaf08e232a79fb` |
| 38 | `def` | [getGT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/getgt-source-edition-3.md) | 314 | `declaration-track:df774e9b48dd9745f2d3ac615cc1a02b546d063655058fcf96310104a6d313cd` |
| 39 | `def` | [getLE](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/getle-source-edition-3.md) | 322 | `declaration-track:cb30bffef73603168231766f068910db180d59bf06d62ca1bcfab10f3b0cd0ab` |
| 40 | `def` | [getLT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/getlt-source-edition-3.md) | 330 | `declaration-track:a7a7c0cc02e7c818b24f65fe55449df897a33dae31909020232d80648bb7f704` |
| 41 | `def` | [getGE!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/getge-source-edition-3.md) | 338 | `declaration-track:dac6375eda917dac70ae2ed5fbffce9588c902d1b7f4a101d160de092763f328` |
| 42 | `def` | [getGT!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/getgt-source-edition-2.md) | 346 | `declaration-track:c719e6a96bf77043b4932a93bf545e4a72525b58ea1a3cc086bc3a25b6023e6d` |
| 43 | `def` | [getLE!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/getle.md) | 354 | `declaration-track:be9196408426a36caeae71edce78a21576e1b719e165437e9b29be58728e9d73` |
| 44 | `def` | [getLT!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/getlt-source-edition-2.md) | 362 | `declaration-track:8e3e8bb170a12b4c016acae65fee1c58be00fd94df50cb3eb8c1e8cae4cdfa59` |
| 45 | `def` | [getGED](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/getged.md) | 370 | `declaration-track:29d43a29169311e15ff8c2dd3738603fff66154c8cb22f9bfc777351006630cd` |
| 46 | `def` | [getGTD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/getgtd.md) | 378 | `declaration-track:e7ad673cc4fa4753e9e902d789962941da4da0248ece315836f50b614a76939f` |
| 47 | `def` | [getLED](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/getled.md) | 386 | `declaration-track:6493c17d461c701027aa33cd3fe92042fce9f38eb0e8bc2c8e6b87703c683b89` |
| 48 | `def` | [getLTD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/getltd.md) | 394 | `declaration-track:5228dce8b0b231892a2cee178714cbf529f33f5110dcdd435a7799bbe12eb00c` |
| 49 | `def` | [filter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/filter.md) | 401 | `declaration-track:7ce64af17d179c5a5bda766341081f0686de77b6be244d3da4d3702db09d4368` |
| 50 | `def` | [foldlM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/foldlm.md) | 409 | `declaration-track:a4778ad74c3723f730f2af1819c01c681dda6e349dca670053c730a3aa5df721` |
| 51 | `def` | [foldl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/foldl.md) | 414 | `declaration-track:5dacd52c1f299989465c73b47239604ae48607296f375612866d7f36fbf505f9` |
| 52 | `def` | [foldrM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/foldrm.md) | 422 | `declaration-track:92498064b93f5f52a900a298ebf98baa74905de88f67f600d1429caea441b0af` |
| 53 | `def` | [foldr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/foldr.md) | 427 | `declaration-track:0bb4404dabba4aed18ff29d0f5e27bc99f4bf8dee9ef40b24d7904e9bb9624ad` |
| 54 | `def` | [partition](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/partition.md) | 432 | `declaration-track:8f7bf8a22eabfd746f44d8631755c188da0b3628e631208aa82773e58f07a11a` |
| 55 | `def` | [forM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/form.md) | 438 | `declaration-track:fac45c643fd08526c6add7b9d16b67f319c462c0ae19ab1e0e0a9663b6e633c3` |
| 56 | `def` | [forIn](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/forin.md) | 446 | `declaration-track:55145a698b7af8f5e2f48cf9176ce68be26adcbcf503d0d00fe0d393d641e3b3` |
| 57 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/instance-source-edition-2.md) | 450 | `declaration-track:19699842751e87ea5629aa7de73d5949890936697504a9bf383e425def7f9921` |
| 58 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/instance-source-edition-5.md) | 453 | `declaration-track:4b0a25cba7d0509b1b6ae369895c5d31655b01a019f4efe8b0a0f35ddf76f0fb` |
| 59 | `def` | [any](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/any.md) | 458 | `declaration-track:ed31ef8297fbf4c800db5ce3cc4069da915da9b9bafc34b72cc540d8149e3020` |
| 60 | `def` | [all](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/all.md) | 463 | `declaration-track:884b707aebc74bdfbe18896c78cb2c5adf7daa33b3bf6fb6c6e8b182d6cd49b7` |
| 61 | `def` | [toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/tolist.md) | 468 | `declaration-track:7c68f9fe7f98a463cb42b97b45ac90a6284fdc015a64ddc90c1534398498384a` |
| 62 | `def` | [ofList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/oflist.md) | 472 | `declaration-track:5c7bfd4ae4e13b05296072a90c1765fd833cac570a4fa2661e5102f67f9e0f53` |
| 63 | `def` | [toArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/toarray.md) | 477 | `declaration-track:85bfe91ed0f1c7680057828dc5c8feff50859c6753dd16fc87528269dd9ca394` |
| 64 | `def` | [ofArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/ofarray.md) | 481 | `declaration-track:5f4b4af1ebf5c5144a1b2ac1cd5080185309666104fbd226b38fb148f2c5be59` |
| 65 | `def` | [merge](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/merge.md) | 495 | `declaration-track:72955a33b7d06536aba1f9806ea3e36bc3ccd6a2bc650d3658a7af56d41b4bee` |
| 66 | `def` | [insertMany](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/insertmany.md) | 508 | `declaration-track:98fc4fcf003fa07edb30737c0ea97d3fdf9b1e63fe7c721a29d753145b2ca65b` |
| 67 | `def` | [union](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/union.md) | 518 | `declaration-track:733de54437de66d043cab4822da4740c7e68683f3817d1a3168f92db52a3ea82` |
| 68 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/instance-source-edition-15.md) | 520 | `declaration-track:dce968e46646c5623792f3bfb62375ce02492f765369a9c784232e11ac7f58cf` |
| 69 | `def` | [inter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/inter.md) | 528 | `declaration-track:d2e1ce4fbb89986ef74c9de412698eabf98f82b4d9aca2ce58d74b6631cd2429` |
| 70 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/instance-source-edition-10.md) | 530 | `declaration-track:74c94347f4a46abaceb1a5a722bfdb374f36739cc3a1c52042a27d62c8e45996` |
| 71 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/instance.md) | 532 | `declaration-track:15ef52c598b4b4670a63d3b0f7747cc87316610dc5e93e2c2b759e9b1eff4feb` |
| 72 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/instance-source-edition-9.md) | 535 | `declaration-track:6f7c5d94d702f6aff94048fce58042ca05d83f82e0753daf8b564cdf5ba4df48` |
| 73 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/instance-source-edition-3.md) | 538 | `declaration-track:25574185c2b0f3fed559941b6dc921cf95fa3d2e2198508b04da57ce19c44eba` |
| 74 | `def` | [diff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/diff.md) | 551 | `declaration-track:3335d728ffad6dc117fa1cd672f8b10b18820e2431b0650e54f9bcce63c02c00` |
| 75 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/instance-source-edition-4.md) | 553 | `declaration-track:287eefd6747818960414cfc841e31b5beef130bcbe69f963e9a860a9d5cab256` |
| 76 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/instance-source-edition-13.md) | 555 | `declaration-track:cb7dc3da226c6b48b0cc1c24afe2e8337db2a942fd843b4c31696c670436f816` |
| 77 | `def` | [eraseMany](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/erasemany.md) | 562 | `declaration-track:d45f726e90e835e6e097e60df199f0c9527d65f0777af6e8414f33b8377bbfca` |
| 78 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicExtTreeSet.lean/declarations/instance-source-edition-6.md) | 565 | `declaration-track:4f518a200dfedb6629c2f68c46b2a09d5512d17977783448dbd214137d5f6c3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e77c05bfa07c953a2c184049f8418719b30571b9bbb74a101a3aa8c0dd7f219b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf869bad46f591ffbc22f636edc00993bf760318b22c0b85e1ff541e78b83dea6.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantf869bad46f591ffbc22f636edc00993bf760318b22c0b85e1ff541e78b83dea6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
