# Verification target: Find Namespaced Public Find Idx Empty

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da3e7cd62ee7298d6fa5c0523884fb122ea0717d",
  "lexical_observation_count": 140,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant15c89330a62034e6c54afd8a1b64dc2f266defde012657d7cf38934277ab619a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da3e7cd62ee7298d6fa5c0523884fb122ea0717d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant15c89330a62034e6c54afd8a1b64dc2f266defde012657d7cf38934277ab619a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant15c89330a62034e6c54afd8a1b64dc2f266defde012657d7cf38934277ab619a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Nat.Sum` — import line 14; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Bootstrap` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Array.MapIdx` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.Bool` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.Fin.Lemmas` — import line 22; external provider; requires a separately pinned dependency.
- `Init.Data.List.Count` — import line 23; external provider; requires a separately pinned dependency.
- `Init.Data.List.Find` — import line 24; external provider; requires a separately pinned dependency.
- `Init.Data.List.Impl` — import line 25; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.Find` — import line 26; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.TakeDrop` — import line 27; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 28; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 29; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [findSome?_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findsome-empty.md) | 48 | `result-track:b72d282cb97a91d5ad9f235ebc076133c0056a8d196787caedf0140ad5d7231d` |
| 2 | `theorem` | [findSome?_push](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findsome-push.md) | 49 | `result-track:8f8526d6ad361bd23bd01f3f5a88716318686142c320b432a9b41520669dee03` |
| 3 | `theorem` | [findSome?_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findsome-singleton.md) | 53 | `result-track:d615547d8fdae563b2d6de6d63c80eb96456b6efe4ba20e700f5296ad2ae7602` |
| 4 | `theorem` | [findSomeRev?_push_of_isSome](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findsomerev-push-of-issome.md) | 56 | `result-track:3c0516e607fe1b0faf9e3603c0baacb6640b687866ba8d137daeb0107501acb5` |
| 5 | `theorem` | [findSomeRev?_push_of_isNone](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findsomerev-push-of-isnone.md) | 59 | `result-track:3046448c4bc7842800014ba5160665ad0867ec5be33e1021b73289ae9851f1e8` |
| 6 | `theorem` | [findSomeRev?_push](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findsomerev-push.md) | 63 | `result-track:ef00fdfe805950e39bc36e7f692b0b339e79b7b0cfe3190ed60bef97ec4cffeb` |
| 7 | `theorem` | [exists_of_findSome?_eq_some](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/exists-of-findsome-eq-some.md) | 73 | `result-track:3eb04350590515cea69807a675ff444def0475462e680dfe7894fdc4f6cf031d` |
| 8 | `theorem` | [findSome?_eq_none_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findsome-eq-none-iff.md) | 77 | `result-track:ea3c8365f03975bffc82bf3160d4668bdcc879af02ac83877429c155721d2cbb` |
| 9 | `theorem` | [findSome?_isSome_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findsome-issome-iff.md) | 80 | `result-track:dcc17a7f996ad2c907b4478852f5c8e263a972a9d1baba1856a7f8867a22059f` |
| 10 | `theorem` | [findSome?_eq_some_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findsome-eq-some-iff.md) | 84 | `result-track:8904f6e275056dc93ea99a3ac6d4de06c2bcf7d2a20a23e980a610c298a2f483` |
| 11 | `theorem` | [isSome_findSome?](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/issome-findsome.md) | 94 | `result-track:a23fc7f36c04634f48a2f096270f752becd5112c2f87236923e7b43bd84c0be6` |
| 12 | `theorem` | [findSome?_guard](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findsome-guard.md) | 98 | `result-track:f5e842f96b0e03eb36895a5aabe17b99c663f3bfd0255d124fa0462e9cacbfe7` |
| 13 | `theorem` | [find?_eq_findSome?_guard](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/find-eq-findsome-guard.md) | 101 | `result-track:f988e8f5d08d6e2e24a43c8431a95e198b613692e0d4bef0881ebefbf0c0b2d3` |
| 14 | `theorem` | [getElem?_zero_filterMap](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/getelem-zero-filtermap-source-edition-2.md) | 104 | `result-track:a0f6519c210e12d549d741a359ed7f0812ee4002267df1a45369115ba5f097d6` |
| 15 | `theorem` | [getElem_zero_filterMap](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/getelem-zero-filtermap.md) | 107 | `result-track:211da52e80c152ef6dd8e4f874ab31ea52ff8862149ded480cc6d2f3bc9ad532` |
| 16 | `theorem` | [back?_filterMap](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/back-filtermap.md) | 111 | `result-track:22ec7e78a592da1d7edda441cea723518936cec8c9fbe77cd19000287514a95f` |
| 17 | `theorem` | [back!_filterMap](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/back-filtermap-source-edition-2.md) | 114 | `result-track:6cecf8c96d5c2506025db6255a18ea98417781104419c275f695a91bbc4fbbf2` |
| 18 | `theorem` | [map_findSome?](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/map-findsome.md) | 118 | `result-track:c6005325e789e0f65342932a680af6c58dd285b1aa94c6f5c37cdb7d75ef8b7a` |
| 19 | `theorem` | [findSome?_map](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findsome-map.md) | 123 | `result-track:0dad3d13e55d4bee34ffbb86caa8ad9ae2f8e62dc0c269ac816d13b17cb96d4d` |
| 20 | `theorem` | [findSome?_append](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findsome-append.md) | 127 | `result-track:45c7021f9cb30434d6508a2e75e7e6c0179752f3df9db3ddfb6992d36500a867` |
| 21 | `theorem` | [getElem?_zero_flatten](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/getelem-zero-flatten.md) | 131 | `result-track:23ca704c1cd9133c703e53982a957ac979d65707b9c35b67ae9ca7118ff44fa7` |
| 22 | `theorem` | [getElem_zero_flatten.proof](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/getelem-zero-flatten-proof.md) | 136 | `result-track:0157c8da7fdb4830417eb9ab36505345a2e3ef9a50cbc9bc256db320a6cd7cc6` |
| 23 | `theorem` | [getElem_zero_flatten](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/getelem-zero-flatten-source-edition-2.md) | 147 | `result-track:c10e8f96ed4feae2316eac00ed10858776e9b5b35b60298ad2bd1b28d340821e` |
| 24 | `theorem` | [findSome?_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findsome-replicate.md) | 152 | `result-track:fe0fa5d32fc837c128f41d1844888afe94b012f7f54a3d8df6624d5d187cf391` |
| 25 | `theorem` | [findSome?_replicate_of_pos](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findsome-replicate-of-pos.md) | 155 | `result-track:2b23fc390cb3f88a1e5af26d88f64f4588675fe675da20a659d26cc46bef9f04` |
| 26 | `theorem` | [findSome?_replicate_of_isSome](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findsome-replicate-of-issome.md) | 159 | `result-track:e44e9a40065bae14ff52f04df085cd1b186017e3fad7d269a25df07e57d8244b` |
| 27 | `theorem` | [findSome?_replicate_of_isNone](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findsome-replicate-of-isnone.md) | 163 | `result-track:12829cc5b86c2bd15072859a9313906349169a6989eec8c742a19b9ca043dc45` |
| 28 | `theorem` | [find?_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/find-empty.md) | 170 | `result-track:55ef9575f0bc1deb220ba120dd418767c13feea86fcee3b339b8003a58e825d2` |
| 29 | `theorem` | [find?_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/find-singleton.md) | 173 | `result-track:b2013218937ea370b43d3cb4ec26da5fdcfc7bf3250479db3d640882bc619844` |
| 30 | `theorem` | [findRev?_push_of_pos](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findrev-push-of-pos.md) | 177 | `result-track:5833eef3861efa1e1737b6b6dd062669afa75f5333ff7866932dfa228de8552a` |
| 31 | `theorem` | [findRev?_push_of_neg](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findrev-push-of-neg.md) | 181 | `result-track:080e61f10f3e845a28af8e2bc779efdb12a0130262c677a6b0a07629db1f33bd` |
| 32 | `theorem` | [finRev?_push](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/finrev-push.md) | 186 | `result-track:6c4e8ed6028f3d4e973f996148e064242dce64694d607ae4d920f5b88d0f620f` |
| 33 | `theorem` | [find?_eq_none](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/find-eq-none.md) | 194 | `result-track:9be347549697a9c928eb1ea8944da4a4860b3edc09788d60c88baa2102eb6f32` |
| 34 | `theorem` | [find?_eq_some_iff_append](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/find-eq-some-iff-append.md) | 197 | `result-track:7e0f4716b7ce95ceb07195cd8f738c466d7628a9e80e7a632a35a473a0e7cdd9` |
| 35 | `theorem` | [isSome_find?](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/issome-find.md) | 210 | `result-track:06d06634a32974dbfbe9ca4bef40bf8dfea61d9f53da9e9a5375abb240e5fd04` |
| 36 | `theorem` | [find?_push](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/find-push.md) | 214 | `result-track:1f6bfd5d12f31e366a158722cf650be8eef05ba9ad659f2f37dcbde090998920` |
| 37 | `theorem` | [find?_push_eq_some](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/find-push-eq-some.md) | 218 | `result-track:3881b9481dde1382587af9a94d1ce5e5ec49f5f2f63bc7253ffb678d53b8e412` |
| 38 | `theorem` | [find?_isSome](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/find-issome.md) | 222 | `result-track:edc06317ccd6c97dad1ec2d1855be2bf002f0b5a763412f76fda4d69ef73d328` |
| 39 | `theorem` | [find?_some](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/find-some.md) | 226 | `result-track:822e49ec6308bdb031edac4546dacbee6279553b49d3d7faea412f6bbf85e948` |
| 40 | `theorem` | [mem_of_find?_eq_some](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/mem-of-find-eq-some.md) | 232 | `result-track:ae1ab0871debc3b054d642f9623347b542f020762eede1d0c42d52614f0debbe` |
| 41 | `theorem` | [get_find?_mem](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/get-find-mem.md) | 237 | `result-track:0db3b887c20b30d088bebefd3e9b5bc6e8dff9e9981841e7227d6f33f69cbdff` |
| 42 | `theorem` | [find?_filter](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/find-filter.md) | 243 | `result-track:668bbe3b4c97e1bdbfc153e1a5461ddaccf0f8c6e469caf24871c048ceffc64d` |
| 43 | `theorem` | [getElem?_zero_filter](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/getelem-zero-filter.md) | 247 | `result-track:6cc78fd1bf8f7ea563096de0765c7a78162481d4b14a02e889707b7aadbb3752` |
| 44 | `theorem` | [getElem_zero_filter](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/getelem-zero-filter-source-edition-2.md) | 251 | `result-track:a7dcbded8c49401b20302e48eee14388514c051ea8f3e9ccd5ebd8ec1ec34a64` |
| 45 | `theorem` | [back?_filter](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/back-filter.md) | 257 | `result-track:2338588a0059b211436001f7786e85a4e7b7f747e958455f8112221812dcd768` |
| 46 | `theorem` | [back!_filter](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/back-filter-source-edition-2.md) | 260 | `result-track:9419f431391f7333098e498ced12cecfde2ee41a94b568a9fd8f72b02ffb72f7` |
| 47 | `theorem` | [find?_filterMap](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/find-filtermap.md) | 264 | `result-track:c4076a2d33fbc8c579c5c9014924e65693c7deef2cf6740177cd6418c6fb79c0` |
| 48 | `theorem` | [find?_map](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/find-map.md) | 268 | `result-track:8b10979d95ac2a1ec2403eb351b723745464deaa08b980bc28d7096fb9e0eeef` |
| 49 | `theorem` | [find?_append](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/find-append.md) | 272 | `result-track:e91ab126850bd3810f92faeedcb26aa4c805864f4c748c0be278f59f9320d73d` |
| 50 | `theorem` | [find?_flatten](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/find-flatten.md) | 278 | `result-track:7e9a006ed17971cc8859710cc11799f2969cb7afdd84754725dad929fe2f2945` |
| 51 | `theorem` | [find?_flatten_eq_none_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/find-flatten-eq-none-iff.md) | 283 | `result-track:b1c23d46a8ecfdb802a222fc8547fff5555a0fe8fc2c3ddd479da875f529958c` |
| 52 | `theorem` | [find?_flatten_eq_some_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/find-flatten-eq-some-iff.md) | 292 | `result-track:819e2176bfd254192a15906891c50ff04c6982ad93fad66f7df45b76e0ebbc37` |
| 53 | `theorem` | [find?_flatMap](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/find-flatmap.md) | 312 | `result-track:96bbdc5029f37e125073e8f8d0e777e137c629374a1e25ebcf31da9dc9824157` |
| 54 | `theorem` | [find?_flatMap_eq_none_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/find-flatmap-eq-none-iff.md) | 317 | `result-track:b83a6a4bc02e4c61c015d825e193d6df28fa66889f6948b426e7fc82eb38d685` |
| 55 | `theorem` | [find?_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/find-replicate.md) | 322 | `result-track:3ccb850600104b8dcecb867ac258549a1443a805d9eca2ce7b37849022e8c81f` |
| 56 | `theorem` | [find?_replicate_of_size_pos](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/find-replicate-of-size-pos.md) | 326 | `result-track:c085caf9f6e30e95bfc3e4bf763656a344ecd730c71dbfba7a338683901d12f3` |
| 57 | `theorem` | [find?_replicate_of_pos](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/find-replicate-of-pos.md) | 330 | `result-track:bac725007c8f44f563343724b08f0ecf789cdc0744958153d182fef65d0cf7a4` |
| 58 | `theorem` | [find?_replicate_of_neg](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/find-replicate-of-neg.md) | 334 | `result-track:91772ca3a438a0433961f1c3a16fc0a83e7529967f6b338f5f10122a88d33b53` |
| 59 | `theorem` | [find?_replicate_eq_none_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/find-replicate-eq-none-iff.md) | 338 | `result-track:1e20ec0eed7e6358e0e06bfe324c922192d6f1a585bd1ebdd6f5d5720712f5e7` |
| 60 | `theorem` | [find?_replicate_eq_some_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/find-replicate-eq-some-iff.md) | 342 | `result-track:bceb93f220de4ee2707d7bcd6baf64b3007c95187ac87527f9695a3e489ea60d` |
| 61 | `theorem` | [get_find?_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/get-find-replicate.md) | 346 | `result-track:fa284ddb38ce98f246d24df90fdbc7c6a414b91945f1360f05545ceddb8638f4` |
| 62 | `theorem` | [find?_pmap](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/find-pmap.md) | 351 | `result-track:66fd782e1ee8947211ecb2073556cc40f70ab510f8c23b673ef3812a85a963bd` |
| 63 | `theorem` | [find?_eq_some_iff_getElem](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/find-eq-some-iff-getelem.md) | 357 | `result-track:6ae205862cdabe944465e1381d80cdf9ac7c43036f3487abda9d17e1aac3245d` |
| 64 | `theorem` | [findIdx_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-empty.md) | 365 | `result-track:1a39d84a5313065b705833b9d1e6031f53712ac77cdf7641c67aafd96e7b0883` |
| 65 | `theorem` | [findIdx_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-singleton.md) | 368 | `result-track:688da268e4e55251737318eebf2de8e4fccebb452396d2b1197892d0fef85b82` |
| 66 | `theorem` | [findIdx_of_getElem?_eq_some](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-of-getelem-eq-some.md) | 372 | `result-track:5df049a6155861170e53b4801b88daaa17652c61c4f55d7e344cae1f11d0088e` |
| 67 | `theorem` | [findIdx_getElem](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-getelem.md) | 376 | `result-track:53fb516118073d7f39f4b694fe20ac2792bfa04a4b8307a9da0f68e995a12582` |
| 68 | `theorem` | [findIdx_lt_size_of_exists](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-lt-size-of-exists.md) | 382 | `result-track:88d31d9c41a5f4b75cc7861f8a06ed3f2666c4c59108af2e8ffbeeb106024a8a` |
| 69 | `theorem` | [findIdx_getElem?_eq_getElem_of_exists](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-getelem-eq-getelem-of-exists.md) | 387 | `result-track:3a72ef1e7f5e6e6ec13a9ab5434f97b7aaeb950ff5bf8a325bc9aba9e61403ee` |
| 70 | `theorem` | [findIdx_eq_size](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-eq-size.md) | 392 | `result-track:0e3210585bd52916045d8cfdaac9a3e37824984f6ebce7e6bc0c6082a487a3ba` |
| 71 | `theorem` | [findIdx_eq_size_of_false](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-eq-size-of-false.md) | 397 | `result-track:4205c860c629997ea1a827dfec6095a97de8a9343bed2e6d01a2ac57fb12bc98` |
| 72 | `theorem` | [findIdx_le_size](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-le-size.md) | 402 | `result-track:64489618d80d1d6425c7cc7d0e2692abb9a45c2dbc93ed2c5ed540f809c3527b` |
| 73 | `theorem` | [findIdx_lt_size](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-lt-size.md) | 411 | `result-track:096e2bde238937ee34e216d067f8681c0fca1310f545abe4b8937ad1567aca58` |
| 74 | `theorem` | [not_of_lt_findIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/not-of-lt-findidx.md) | 419 | `result-track:9c338a8f5275904c759045d1a1555e4a75572953676c4a47a2b9fb351a166a6c` |
| 75 | `theorem` | [le_findIdx_of_not](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/le-findidx-of-not.md) | 427 | `result-track:3b9b19d99229521dcc81453bbb99aca5c1056fd4830ba66e46a75695eeadac72` |
| 76 | `theorem` | [lt_findIdx_of_not](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/lt-findidx-of-not.md) | 435 | `result-track:83aae04444b40f2f5d5048bf0f6c46ba695a751b913a14e21c18cb66497e21b6` |
| 77 | `theorem` | [findIdx_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-eq.md) | 444 | `result-track:9b104c8906bf85c8b3afd5eda2c275ab2c6235e86cb79356a612e0249989d328` |
| 78 | `theorem` | [findIdx_append](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-append.md) | 455 | `result-track:702e6a7b53cc6cfb138ae070ee2c56c2cb221ca51a66ffa606c7d754a01fe1ac` |
| 79 | `theorem` | [findIdx_push](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-push.md) | 463 | `result-track:9059361e20aa289ed809f4d555ce0017bee5327a7fc0a95ef222fb8d507f5f21` |
| 80 | `theorem` | [findIdx_le_findIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-le-findidx.md) | 470 | `result-track:2205b5015c122c4405d69c5e6f5153375761c5306b00ff1e8d9c1dba4fb1e528` |
| 81 | `theorem` | [findIdx_subtype](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-subtype.md) | 474 | `result-track:f0bf2b4cfd0437155e31bc11d72e13714ccf54201782a1cc0abb138ddd63bd77` |
| 82 | `theorem` | [false_of_mem_extract_findIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/false-of-mem-extract-findidx.md) | 480 | `result-track:0328072b9bad3b6681ab6b802f627e5ce047e5335cf96e7adf16efbf206367d6` |
| 83 | `theorem` | [findIdx_extract](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-extract.md) | 485 | `result-track:1318b71366f04c68f2ecb2a62683be1bed34bb781cf1ffa5c662467c2ea8836f` |
| 84 | `theorem` | [min_findIdx_findIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/min-findidx-findidx.md) | 490 | `result-track:c62f088840fb8f3ad21da9f0c7dff42b034e68ab6c8e447957d7f39b6099caa4` |
| 85 | `theorem` | [findIdx?_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-empty-source-edition-2.md) | 497 | `result-track:2d426a64b108beb41b84c740d2b16c63dbedfd17e2d6098ad4623223ff2a419e` |
| 86 | `theorem` | [findIdx?_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-singleton-source-edition-2.md) | 498 | `result-track:e2a61b7051fbd4a05a922c11100916c0590abb242c0877ade4585387b65092e5` |
| 87 | `theorem` | [findIdx?_eq_none_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-eq-none-iff.md) | 503 | `result-track:be6e1252524252728601c2e67d2567db8f50c169565943c8a6c5d7a6f7d30695` |
| 88 | `theorem` | [findIdx?_isSome](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-issome.md) | 509 | `result-track:d634683664219da75afd930a9df813c5214f73d0f2d911cdd054e17623129aad` |
| 89 | `theorem` | [findIdx?_isNone](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-isnone.md) | 515 | `result-track:d2dde406e5cf95ecee5a6bbc422b877ec4758bb3e0a4cfe320b13251cb661779` |
| 90 | `theorem` | [findIdx?_eq_some_iff_findIdx_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-eq-some-iff-findidx-eq.md) | 520 | `result-track:5e9784f0bb00c646da4fa1541c7a98166a6e5a44f8345271e99d52ff49fd103a` |
| 91 | `theorem` | [findIdx?_eq_some_of_exists](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-eq-some-of-exists.md) | 525 | `result-track:ad411c8280ba48d170ee5c843da22124c3a15b46a6d452b066e457b407cf2771` |
| 92 | `theorem` | [findIdx?_eq_none_iff_findIdx_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-eq-none-iff-findidx-eq.md) | 530 | `result-track:1eb031efc0f007bd42c5b44952d402c00ac6eb2cb0cf4c21ef3af483b013bb36` |
| 93 | `theorem` | [findIdx?_eq_guard_findIdx_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-eq-guard-findidx-lt.md) | 535 | `result-track:0d9d4f89e0c6d1214be8e34d8754adb32b89b8940152302ceaa4d2dcf6848909` |
| 94 | `theorem` | [findIdx?_eq_some_iff_getElem](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-eq-some-iff-getelem.md) | 540 | `result-track:f23c3d59bc083d31e63e19a57348e0694cdf41b2803cc67ec854ba55dd475378` |
| 95 | `theorem` | [of_findIdx?_eq_some](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/of-findidx-eq-some.md) | 546 | `result-track:431872610a56912887adc6087fd14adcc1234593c8665b5098ba18c293524bf7` |
| 96 | `theorem` | [of_findIdx?_eq_none](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/of-findidx-eq-none.md) | 551 | `result-track:fe6c09327515dadcb0114fd295cc33fd1b0a85cebfde73cb0fc46a62a88d4268` |
| 97 | `theorem` | [findIdx?_map](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-map.md) | 556 | `result-track:17c54de849ef88151061d21e9d4fc9b505e87570e445c286ef4485b8b4e82951` |
| 98 | `theorem` | [findIdx?_append](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-append-source-edition-2.md) | 561 | `result-track:d43df4622a7606651dfa4fb5e38a963371dfbc8960b04e325d90a2d86c623f5e` |
| 99 | `theorem` | [findIdx?_push](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-push-source-edition-2.md) | 569 | `result-track:bb6e03108395fa6e1c808e1dbdf1243b9524221bf2408fe925b3f91b62ed7ffa` |
| 100 | `theorem` | [findIdx?_flatten](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-flatten.md) | 576 | `result-track:5b7f9d278b54f2730e042f2156fba537a5f245893de97c39404d375f876535fc` |
| 101 | `theorem` | [findIdx?_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-replicate.md) | 584 | `result-track:0ff6fbbe9a3203471427b95981b4d30f50d186b84c0c3c2fd9ec41cc162d15ec` |
| 102 | `theorem` | [findIdx?_eq_findSome?_zipIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-eq-findsome-zipidx.md) | 590 | `result-track:400fb44ab74f238c90e3af5e4b5abc4dfaaec83b882e886cef5ca252892a95e4` |
| 103 | `theorem` | [findIdx?_eq_fst_find?_zipIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-eq-fst-find-zipidx.md) | 595 | `result-track:46b96503ee8fb685b7f1f248610b795ccdfd4fb7e87e5a4d95060c3f934be7da` |
| 104 | `theorem` | [findIdx?_eq_none_of_findIdx?_eq_none](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-eq-none-of-findidx-eq-none.md) | 601 | `result-track:867cadc8412d3df97b8053acb4e5012ee7aeb8125cfd595bd980898d9d64c271` |
| 105 | `theorem` | [findIdx_eq_getD_findIdx?](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-eq-getd-findidx.md) | 606 | `result-track:3cc485e4874c634f3e2369ebe1f53cdb481a35bc20d2487deac07c0f08904d9c` |
| 106 | `theorem` | [findIdx?_eq_some_le_of_findIdx?_eq_some](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-eq-some-le-of-findidx-eq-some.md) | 613 | `result-track:59afe91a95e6f205d085bab57c001293d5b77db9155085fbcccfe6e0acad507b` |
| 107 | `theorem` | [findIdx?_subtype](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-subtype-source-edition-2.md) | 618 | `result-track:fc9c4188811d3a4eb6d2769b9e80dd97e34d7a50ab8a62909d94b4bfc3e9199c` |
| 108 | `theorem` | [findIdx?_take](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-take.md) | 624 | `result-track:a7959e38ef5e4c88817c58977b0c11cb965283f7b18996f4eec2fc2aeafb2d38` |
| 109 | `theorem` | [findFinIdx?_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findfinidx-empty.md) | 632 | `result-track:666883b0db31cdd400da37b705374f6223292710cc2f2edd80d8b08f1d306547` |
| 110 | `theorem` | [findFinIdx?_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findfinidx-singleton.md) | 635 | `result-track:391154b7546bc8e403535567fefa9df88908903647f27c160f64cf811109ae63` |
| 111 | `theorem` | [findFinIdx?_congr](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findfinidx-congr.md) | 640 | `result-track:08bab5757218074ace787ff275320f0923d6ce9c056e2ad740fc992eebe85cad` |
| 112 | `theorem` | [findFinIdx?_eq_pmap_findIdx?](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findfinidx-eq-pmap-findidx.md) | 645 | `result-track:eaf17fa6da1f6d5f9b9795bdeb272d93ee97674ab376d0cc1b0518a35a1455b9` |
| 113 | `theorem` | [findFinIdx?_eq_none_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findfinidx-eq-none-iff.md) | 652 | `result-track:eb5bf0628a87cd752d8dd98aad437369ef65149416867c22e379112652784132` |
| 114 | `theorem` | [findFinIdx?_eq_some_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findfinidx-eq-some-iff.md) | 657 | `result-track:03a7fe97a89461c9ca0a982bf12491a570b38d7ad634f7cf137f42158ec71bda` |
| 115 | `theorem` | [findFinIdx?_push](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findfinidx-push.md) | 669 | `result-track:4229179f98c91e1131c1d9102ee09fc2db5a1abf51835584a72a8781a80a386c` |
| 116 | `theorem` | [findFinIdx?_append](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findfinidx-append.md) | 676 | `result-track:7327cc7f7568791aad86fd99bb8acf5e79a4a42618392d02687d91114688487d` |
| 117 | `theorem` | [isSome_findFinIdx?](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/issome-findfinidx.md) | 686 | `result-track:726d0829f5b48181d080d7323883afea3c2eec1e63be6a1970af65e4db782700` |
| 118 | `theorem` | [isNone_findFinIdx?](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/isnone-findfinidx.md) | 692 | `result-track:bbda84b37027f07257d01266d9461e111efdb40ac5aac351ec85915e7796f6ba` |
| 119 | `theorem` | [findFinIdx?_subtype](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findfinidx-subtype.md) | 697 | `result-track:22fd58057e6a942b3f057bea140f5b127ad61164b9666734ed0d8118a1f90677` |
| 120 | `theorem` | [find?_eq_map_findFinIdx?_getElem](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/find-eq-map-findfinidx-getelem.md) | 708 | `result-track:3f34e8bce3390b4d40bdf32f35f1103ecfdfd6c91e2f4a922c0e80990372e3f2` |
| 121 | `theorem` | [find?_eq_bind_findIdx?_getElem?](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/find-eq-bind-findidx-getelem.md) | 714 | `result-track:60bbe11850371d8a7ba1c2c6b78ad27196d3abda716364eb8a38e06c7c611065` |
| 122 | `theorem` | [find?_eq_getElem?_findIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/find-eq-getelem-findidx.md) | 719 | `result-track:b081152a234e2bb93165785d6b4a18cc32eb24c777f0693a6c029d5847921e6d` |
| 123 | `theorem` | [findIdx?_eq_bind_find?_idxOf?](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-eq-bind-find-idxof.md) | 724 | `result-track:461d1ab25c63490578af5afb614f6d4953bd4dd811883fa7bf14a473f8af7d5e` |
| 124 | `theorem` | [findFinIdx?_eq_bind_find?_finIdxOf?](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findfinidx-eq-bind-find-finidxof.md) | 729 | `result-track:620c86be449e4b3bbca9ea5531ed6217ebf5c1a45f76de680e6549e62f7cd349` |
| 125 | `theorem` | [findIdx_eq_getD_bind_find?_idxOf?](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/findidx-eq-getd-bind-find-idxof.md) | 734 | `result-track:e7bb13b0a64edf29264767f0327e35445e4c544a14e94b7984f7e6ea49f49536` |
| 126 | `theorem` | [idxOf_append](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/idxof-append.md) | 746 | `result-track:779f9705d1e555683092b1da1157d468456af256ec36a1f9adf25bfea028fe5a` |
| 127 | `theorem` | [idxOf_eq_size](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/idxof-eq-size.md) | 755 | `result-track:999ae554b3c34277530903f33cae39f0e091c420ae487dad8ef31cdc4480f7ab` |
| 128 | `theorem` | [idxOf_lt_length_of_mem](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/idxof-lt-length-of-mem.md) | 759 | `result-track:2d2ee2c5c35bb3bc53d847f21c1f05e91d1e078246a067c2b15bafee360c9d9b` |
| 129 | `theorem` | [idxOf_le_size](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/idxof-le-size.md) | 763 | `result-track:7f6f70ad1225dc95c3fb19c4f3c46799696f1a48f94868ee9fe5fe047ac98258` |
| 130 | `theorem` | [idxOf_lt_size_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/idxof-lt-size-iff.md) | 770 | `result-track:7be3d7213d1869c91d0ca6616264b546f042c2ffcf98a2f5d69d8587ffb21777` |
| 131 | `theorem` | [idxOf?_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/idxof-empty.md) | 783 | `result-track:a1c7d3d5e40bc1475c42f090563e00fa35a3b34f33682f6bccaed6e90f0770e6` |
| 132 | `theorem` | [idxOf?_eq_none_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/idxof-eq-none-iff.md) | 785 | `result-track:8e7f7e0391ac7a1c9fd981a31bbca568d95efffac9081723bbe7c165c94350ac` |
| 133 | `theorem` | [isSome_idxOf?](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/issome-idxof.md) | 791 | `result-track:913ebcaa4aec97ea1655e5c0bc1b951df4516bbcf044cafb64c7ab347f7b2f1a` |
| 134 | `theorem` | [isNone_idxOf?](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/isnone-idxof.md) | 797 | `result-track:07f7815278804001bae11270bf4dff38ea010bf7547893320c5cab1ee05413b3` |
| 135 | `theorem` | [idxOf?_eq_map_finIdxOf?_val](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/idxof-eq-map-finidxof-val.md) | 807 | `result-track:bb6b4679a7fd3deab77c4895cfed71de717d93a1a6181a76d0041be0d063346e` |
| 136 | `theorem` | [finIdxOf?_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/finidxof-empty.md) | 811 | `result-track:3012db94944c2d21aab90efed2ff7d18c56b8dc3342991effd984f66070293cb` |
| 137 | `theorem` | [finIdxOf?_eq_none_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/finidxof-eq-none-iff.md) | 813 | `result-track:fb1de35f2163540bdde702d71f90cc8f62a3635d5d14cbfc8dc9735cd8a6bb2f` |
| 138 | `theorem` | [finIdxOf?_eq_some_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/finidxof-eq-some-iff.md) | 818 | `result-track:ce769b1d764e1ad8ca3db0a8c51a4165a979c87846133e69b66ca252dd468b6c` |
| 139 | `theorem` | [isSome_finIdxOf?](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/issome-finidxof.md) | 825 | `result-track:df60165b042c62049ead3ab8515b66c3eb7b9a8f4ab539f5a47f56bd736930aa` |
| 140 | `theorem` | [isNone_finIdxOf?](../../../../../ComputerScience/AlgorithmsInComputerScience/FindNamespacedPublicFindIdxEmpty.lean/declarations/isnone-finidxof.md) | 831 | `result-track:4d246229bb8f920e2b839ecd9dff8ebc07da56bed5ef485ce861c6747a2ff33b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=584a31e60de89b49220f5c5069bcdab2ba876004fba959b5c34b01779bc9c9bc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant15c89330a62034e6c54afd8a1b64dc2f266defde012657d7cf38934277ab619a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant15c89330a62034e6c54afd8a1b64dc2f266defde012657d7cf38934277ab619a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
