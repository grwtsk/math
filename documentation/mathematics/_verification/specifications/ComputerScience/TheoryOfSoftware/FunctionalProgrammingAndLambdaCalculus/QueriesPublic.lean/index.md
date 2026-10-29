# Verification target: Queries Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4bf7a41b47d0f24218a9c6f8f40300021f51dbb",
  "lexical_observation_count": 128,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Queries/Variant7623f4ddad45e9bff0bd9a3f74710720590f169ffc8840af768bac8f8afda5b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4bf7a41b47d0f24218a9c6f8f40300021f51dbb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Queries/Variant7623f4ddad45e9bff0bd9a3f74710720590f169ffc8840af768bac8f8afda5b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Queries/Variant7623f4ddad45e9bff0bd9a3f74710720590f169ffc8840af768bac8f8afda5b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Internal.Linear` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 16; external provider; requires a separately pinned dependency.
- `Init.RCases` — import line 17; external provider; requires a separately pinned dependency.
- `Init.WFTactics` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/instance-source-edition-3.md) | 36 | `declaration-track:e80b1c4b66f52c90902ce5bc194d74ef4fe23ac2bf264acba4062742adefb309` |
| 2 | `structure` | [Equiv](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/equiv.md) | 39 | `declaration-track:0e786e396e5578acc366ea265506a809e563704545da3f22d3c5b61412452886` |
| 3 | `def` | [contains](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/contains.md) | 46 | `declaration-track:f40d313bd3cee641ec4daaa142ad2422f8946d4a6827122d299da32bd9e92ac8` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/instance-source-edition-4.md) | 55 | `declaration-track:e959ac9151f1b255b945e4672dd8334cbe259185d9c9dec43182255f9615d838` |
| 5 | `theorem` | [mem_iff_contains](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/mem-iff-contains.md) | 58 | `result-track:7efeda698b5a78468534fab37eaa4bd4bf6c1ad4bafd0bd9a7656c4a78332a2b` |
| 6 | `theorem` | [contains_iff_mem](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/contains-iff-mem.md) | 61 | `result-track:03cf6ab7e4c882c63cc3962acd6d5b053a7b74ec7504ead1d4309bc6bb3d1bfc` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/instance-source-edition-2.md) | 64 | `declaration-track:c42ddf9d7d1787e3a0a3c3d2745b86ea4717809e1146216f687cdfd4825004e4` |
| 8 | `theorem` | [Ordered.mem_inner_iff_mem_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/ordered-mem-inner-iff-mem-right.md) | 67 | `result-track:f450113e3524db0717d75b04faa091f932d6e4b7f93762dded787a6ac81db503` |
| 9 | `theorem` | [Ordered.mem_inner_iff_mem_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/ordered-mem-inner-iff-mem-left.md) | 73 | `result-track:3399d5683a099ea5e95096cabd60a30db2f5838236022b90829d514976d93688` |
| 10 | `def` | [isEmpty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/isempty.md) | 81 | `declaration-track:cd1eddb5e3e5e8e2133ab401251661c6d75133bf337ec8a6b7339cd147d253c1` |
| 11 | `def` | [get?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/get.md) | 87 | `declaration-track:1a0661118c44ea22dea3316abe6e515574f256ccbb98fc167ffd17ce41e10eee` |
| 12 | `def` | [get](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/get-source-edition-2.md) | 97 | `declaration-track:2c7674212b6a070e06a23d05cc8c9088e8a374cb1ae1cb3686beccfe9fcbb21b` |
| 13 | `def` | [get!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/get-source-edition-5.md) | 106 | `declaration-track:8fe7872d37cc226fc9c17e997c4a83c9a8fe25545394130ed5c244af5c3f9455` |
| 14 | `def` | [getD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getd-source-edition-2.md) | 116 | `declaration-track:b49c27fa3b3d3a3d78076bb69db9b98d2f6aa010131da6507e482ed16c262090` |
| 15 | `def` | [getEntry?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getentry-source-edition-3.md) | 126 | `declaration-track:fbfcc9068818779dafd97f5a037be1204ce8523889199bafc14ceb8f6d62263a` |
| 16 | `def` | [getEntry](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getentry.md) | 136 | `declaration-track:3140279c7405d135c81b4808b60acbe073b5721dccfc03eee42b5c26121187db` |
| 17 | `def` | [getEntry!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getentry-source-edition-2.md) | 145 | `declaration-track:cf091ceba8795c2a57bad4334334865305d90844d8baba40e28674ab6b7c1d2d` |
| 18 | `def` | [getEntryD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getentryd.md) | 155 | `declaration-track:3c90dff1415446392a5351894c92ad6b6518953699575dd47b1d967721310244` |
| 19 | `def` | [getKey?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getkey-source-edition-3.md) | 165 | `declaration-track:f569e3e795f9af4bfc142d15035e28f56e891c4c2255595615cea9483844517b` |
| 20 | `def` | [getKey](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getkey-source-edition-2.md) | 175 | `declaration-track:dcb0c4d9584b36c58498c70bafc96028853bb833cda43af86d36b0a61df766af` |
| 21 | `def` | [getKey!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getkey.md) | 184 | `declaration-track:a8f587e45580bba9178e73d69425c780f5cd7ac270edefaeabdc3a1248b041da` |
| 22 | `def` | [getKeyD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getkeyd.md) | 194 | `declaration-track:3c56803220d67c0fbe48dc89ab85d981ac4cc0b674b830685b3485cc8b3d7f64` |
| 23 | `def` | [get?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/get-source-edition-4.md) | 206 | `declaration-track:6698568bd1b76fa6641e73991ce045388a8470a6463dc790a3bfb0b5e9039f1e` |
| 24 | `def` | [get](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/get-source-edition-6.md) | 216 | `declaration-track:bd507e84b5016bfff9dbe5d24addac2833d9294583c9b7bd6420fa9d74ecf934` |
| 25 | `def` | [get!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/get-source-edition-3.md) | 225 | `declaration-track:551b2a842da570d71a43e06d1f51a92eb406370db9b441e2a98e54a2c7310dc0` |
| 26 | `def` | [getD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getd.md) | 235 | `declaration-track:0c22b63cb26c9c881be13e5f4536ae0890934488f297958ee87422862a524bdd` |
| 27 | `def` | [foldlM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/foldlm.md) | 248 | `declaration-track:1852d110a414416c91fc6c15cf02da1e21885dac7a3732ffd8a794af84e3c903` |
| 28 | `def` | [foldl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/foldl.md) | 257 | `declaration-track:7119529c35ddac555b3745761a306842114c4d86d4e8264bc2a3e3d691de2d44` |
| 29 | `def` | [foldrM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/foldrm.md) | 262 | `declaration-track:e160834106e7b7ce1b375ca23c9bca1ae684690623b7d4c9e0eb26b4cb1bf09d` |
| 30 | `def` | [foldr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/foldr.md) | 271 | `declaration-track:69f82d9495b71f8f543c8f5d77aacf50aaf64eee17f2eaa60279f98aced20cfb` |
| 31 | `def` | [forM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/form.md) | 276 | `declaration-track:89256cb9843c00c1e812aeb06bcde044be7d3bade5dc482e43e9dcf0554ad717` |
| 32 | `def` | [forInStep](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/forinstep.md) | 281 | `declaration-track:8403cb616813e2462b5898cc0f1c695b7bf5097545be5036ff7bbde56dff1473` |
| 33 | `def` | [forIn](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/forin.md) | 294 | `declaration-track:84272d26f60d7773758048e2274dae57577bcb028a032f7dd389fef494f40821` |
| 34 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/instance.md) | 299 | `declaration-track:509352709e3fac8e7a61c4e53d1cc98bdeb071450b21afced413cfb8a62c3c66` |
| 35 | `def` | [any](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/any.md) | 304 | `declaration-track:8a39a31f1b710af1eb2144b8773b28278262a1534c42c3de4ff79a6c0d708654` |
| 36 | `def` | [all](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/all.md) | 311 | `declaration-track:95b61baf91bf89e97d30e642a9dffeeed1349cfe7aefb99e6e40b8cd7707b3a4` |
| 37 | `def` | [keys](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/keys.md) | 317 | `declaration-track:7bf427bbfa1764e2b91dd31fcc70d28089b0f87509347004d51dbe0fad0d4ac5` |
| 38 | `def` | [keysArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/keysarray.md) | 321 | `declaration-track:d8aaa80fbc1ea066ce7e3f63431083aa4e74be89515a83d335f8f363cf3cf289` |
| 39 | `def` | [values](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/values.md) | 325 | `declaration-track:f27cd4e31166bf46fe3ae5650cbb55a5fc97eeafcb4570038611ae862efc23f8` |
| 40 | `def` | [valuesArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/valuesarray.md) | 329 | `declaration-track:434572b8758b6881ed653095d0491c326c35a4e8617873c8a1772a440458189f` |
| 41 | `def` | [toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/tolist.md) | 333 | `declaration-track:6534479c3010f35b1e70a465674505da6e38009119efb46efb2765e7b23f6aaa` |
| 42 | `def` | [toArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/toarray.md) | 337 | `declaration-track:6c3d584b8a71d7da9f5c7872e04cbd5e671eade9605cb869bded8338758a1d2b` |
| 43 | `def` | [toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/tolist-source-edition-2.md) | 345 | `declaration-track:75d34d313b85c5b3b3949745d5089abc65b7b51b9c588e8482af2bdd7f1e002a` |
| 44 | `def` | [toArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/toarray-source-edition-2.md) | 349 | `declaration-track:c5e194725cc26990ea229fee733988135fcf3edeea4fcd8018eaec264df8c40b` |
| 45 | `def` | [minEntry?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/minentry-source-edition-6.md) | 355 | `declaration-track:f0f65ad1f77516e7f71b6b9e6f4cfdeb2a1a9734142e7b216239219ae9bf3de9` |
| 46 | `def` | [minEntry](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/minentry-source-edition-2.md) | 361 | `declaration-track:35d04b73924d8334142b123f83ad84800edaf236fc728ebd88808cfb59bcfbf7` |
| 47 | `def` | [minEntry!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/minentry-source-edition-3.md) | 366 | `declaration-track:a56f0944eec6c0169ae5046fef4bb6116d8f95b9966e1053f5e6ae740494dab6` |
| 48 | `def` | [minEntryD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/minentryd-source-edition-2.md) | 372 | `declaration-track:34227adabb45f16dce7cdf718ffdfa4f501da27558000e5bf4c02e538af93fcc` |
| 49 | `def` | [maxEntry?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/maxentry-source-edition-6.md) | 378 | `declaration-track:fb17d21d6e4b27ef3557e82097d532263b90fee69654090dfd00f180785cf0ce` |
| 50 | `def` | [maxEntry](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/maxentry-source-edition-5.md) | 384 | `declaration-track:d293e54642713766406d469ad00059753c1946c01d687e85d53e62af8525a02f` |
| 51 | `def` | [maxEntry!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/maxentry-source-edition-4.md) | 389 | `declaration-track:cda56b98d78d46b8f83d0180745654a72439c5b7cc5ec685ce9aaffc0c7c3a58` |
| 52 | `def` | [maxEntryD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/maxentryd-source-edition-2.md) | 395 | `declaration-track:f182cefaa08562b1231735e94808c2290f2c3a867b6be54fa3adcf56039b552b` |
| 53 | `def` | [minKey?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/minkey-source-edition-2.md) | 401 | `declaration-track:9f33691d3c2075b5889445d24dfd082b6f70e39d59bd64460c955cead795fb1f` |
| 54 | `def` | [minKey](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/minkey.md) | 407 | `declaration-track:61a461d3ca8e9980029a2951498fb7256bc7b690bad9386d12e79aaf8b3f1a3a` |
| 55 | `def` | [minKey!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/minkey-source-edition-3.md) | 412 | `declaration-track:fb7dd7416abf7c76d87a7ddbdcedc37924c1667be60d518542d6145e59914ffb` |
| 56 | `def` | [minKeyD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/minkeyd.md) | 418 | `declaration-track:37e9359e32085d24ec98016f9039495ca5d22f5e5af09c681c282c6f54fa1f20` |
| 57 | `def` | [maxKey?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/maxkey.md) | 424 | `declaration-track:2312a9b1bd9876bfd41e5b66622b9b0cbe98eb8382f32fd50b42f2b97b0525f9` |
| 58 | `def` | [maxKey](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/maxkey-source-edition-2.md) | 430 | `declaration-track:eb603834e7550d3ae02cf95f0101d22ed113f00eaefc517de19214f5d7fe3764` |
| 59 | `def` | [maxKey!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/maxkey-source-edition-3.md) | 435 | `declaration-track:f1f65dbadd1c27a41bdf32de486766415afd0e89f59754771071422e70204385` |
| 60 | `def` | [maxKeyD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/maxkeyd.md) | 441 | `declaration-track:04791b29767d0f5709a1fa8d23933765989b2ffb0ead25289eaa902017890e80` |
| 61 | `def` | [entryAtIdx](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/entryatidx-source-edition-6.md) | 449 | `declaration-track:bab151a99eab1c872e5980a3b5c9a18faa10c3c4a6edb55b4333cbd2e42d0b48` |
| 62 | `def` | [entryAtIdx?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/entryatidx-source-edition-2.md) | 457 | `declaration-track:29a1bdabe48b7475e0b5f67a697f7340052cf05f27f3cb8a22b75ce8d7d1e429` |
| 63 | `def` | [entryAtIdx!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/entryatidx-source-edition-5.md) | 466 | `declaration-track:7647d1ab17f9a3f0a5d8ded7e0d8265335d4166ab58808ec142765c5ff95a01b` |
| 64 | `def` | [entryAtIdxD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/entryatidxd.md) | 475 | `declaration-track:eb912174b473ecdd251a85d27a6f60d2f115c068f0c6b63e757719510dd7a2f0` |
| 65 | `def` | [keyAtIdx](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/keyatidx-source-edition-2.md) | 484 | `declaration-track:3e3289055a6c122137cb1dff887ee4806625df8419a4c45be862510ca8787e84` |
| 66 | `def` | [keyAtIdx?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/keyatidx-source-edition-3.md) | 493 | `declaration-track:75c1808afaa1ecd747fe9f58a3cafe4f8713b8de75121d30d02acac0c4761b65` |
| 67 | `def` | [keyAtIdx!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/keyatidx.md) | 502 | `declaration-track:0be7a3efb0ffd34ece0f7bf21e08364ad863aeb3788effb4da7e474c1c71b345` |
| 68 | `def` | [keyAtIdxD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/keyatidxd.md) | 511 | `declaration-track:33d77f8ddfc2ff6f268f64859bd814b02758c362d5fc9499400a3fcaa0ccef06` |
| 69 | `def` | [getEntryGE?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getentryge-source-edition-5.md) | 521 | `declaration-track:b7ae9b2faae2698c05d38099a2ddd92aeb85d2d912bae1d8c6934845fff434be` |
| 70 | `def` | [getEntryGT?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getentrygt-source-edition-2.md) | 533 | `declaration-track:3fea9fa70a68dda88fc8b7910b9e0beda6c1010cd9f057e0eb0fdd9e7d7f7f1f` |
| 71 | `def` | [getEntryLE?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getentryle-source-edition-4.md) | 544 | `declaration-track:68ee17f870541ae81457fd4f7f9de29d10f6ef88d09ba0e93001f3158501d8e2` |
| 72 | `def` | [getEntryLT?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getentrylt.md) | 556 | `declaration-track:1a0908d992beb4ebc08160608381f0f35588d795b879a7d10df20ac6393698be` |
| 73 | `def` | [getEntryGE!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getentryge-source-edition-2.md) | 567 | `declaration-track:4a32b77830d4722b523ca8eb068e738fb6adfe38257366b050d42b967600bbd8` |
| 74 | `def` | [getEntryGT!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getentrygt-source-edition-6.md) | 572 | `declaration-track:d222637c44a62457d2ecf715a44a01cbaa0dac2e46bc2541d78f2e037d532088` |
| 75 | `def` | [getEntryLE!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getentryle-source-edition-2.md) | 577 | `declaration-track:4972066e3598d8c812f1aa4f9adb33db09bb9e3f9084839f4d60e5f73b25289e` |
| 76 | `def` | [getEntryLT!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getentrylt-source-edition-4.md) | 582 | `declaration-track:8a766137629d6d3b711da89f07ab6a6df492d99bdd0bfcee302e5058006ff8f0` |
| 77 | `def` | [getEntryGED](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getentryged.md) | 587 | `declaration-track:9b7c185069fb171b2e1141c1b0b65804f116963093ac79307b05d7c5985cba89` |
| 78 | `def` | [getEntryGTD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getentrygtd.md) | 592 | `declaration-track:39211a2890373d507ad82b2a0cc4294abcabd0083aa840cf562cb8734adbf3f6` |
| 79 | `def` | [getEntryLED](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getentryled.md) | 597 | `declaration-track:e7eaea5a2d290a79aede722aae15bd1741669195e2e3310ee89fddd5d2ebad7e` |
| 80 | `def` | [getEntryLTD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getentryltd.md) | 602 | `declaration-track:27b89212377d1df7dfb4738e9dcfe6a6c91f90485a96a3e856c6b64c33d9dd97` |
| 81 | `def` | [getEntryGE](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getentryge-source-edition-6.md) | 606 | `declaration-track:c172318d6e6214d5319badab94f56b26f7d192adec996d16e1b621f8fd5b26f8` |
| 82 | `def` | [getEntryGT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getentrygt-source-edition-4.md) | 619 | `declaration-track:64d601ac324bb07b4ee04d64cf0c6bcbd6b1a390e7d92e6307db5262342478e5` |
| 83 | `def` | [getEntryLE](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getentryle.md) | 633 | `declaration-track:0bdfcc3645f4375ea11c9f1578c7d9e5adca7bfc7b0ab55f30aef3b70b67a6aa` |
| 84 | `def` | [getEntryLT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getentrylt-source-edition-6.md) | 646 | `declaration-track:fe119facd0fc6657b7b8cdb5c0a5286eec820f89cd1a7597547b27c645ad4931` |
| 85 | `def` | [getKeyGE?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getkeyge.md) | 661 | `declaration-track:1e6d60538c745d13d1feaaf17023dd368d8e1720f42526c52712cab1be4ed34b` |
| 86 | `def` | [getKeyGT?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getkeygt-source-edition-3.md) | 673 | `declaration-track:cdfb0c8c745e219a3509953059b6dc433075818b2145e88e076a7dc553e6ff38` |
| 87 | `def` | [getKeyLE?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getkeyle-source-edition-3.md) | 684 | `declaration-track:cf227dfd858635aae0bb9031a893f81c8697c8d9dac9e9ddbb36cd23d5cf10a9` |
| 88 | `def` | [getKeyLT?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getkeylt-source-edition-3.md) | 696 | `declaration-track:ecef64905afd37034fdcf5a51ea0e5cefc07437b09c1e4f31d694478d8a0c573` |
| 89 | `def` | [getKeyGE!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getkeyge-source-edition-3.md) | 707 | `declaration-track:efc716762b8bc25723fb793971a7ff7850fc079779ceccd131bf4cf57eade2df` |
| 90 | `def` | [getKeyGT!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getkeygt.md) | 712 | `declaration-track:17a2dc29eb48b42f7f31728deee424d5c4a683e95e273b3829848942fd73a113` |
| 91 | `def` | [getKeyLE!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getkeyle.md) | 717 | `declaration-track:6705a740ba0869ecf5ce390e2315335993594f44b3f54b9cbbef6fdd0f9156a4` |
| 92 | `def` | [getKeyLT!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getkeylt.md) | 722 | `declaration-track:4caac5d1940fa53e6aca6e4e9d50857bd30cfb1053c88d7e50c2ce6251f4b348` |
| 93 | `def` | [getKeyGED](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getkeyged.md) | 727 | `declaration-track:71bcc48f89c808e13817a1bf4949880e3463b22dce5dc7627b59fa2e21cee589` |
| 94 | `def` | [getKeyGTD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getkeygtd.md) | 732 | `declaration-track:7698dc98ec5d9605c5d0a844a62dbc83d4d6867ef4d8680c799de6e916a55c53` |
| 95 | `def` | [getKeyLED](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getkeyled.md) | 737 | `declaration-track:6dee49a114a33d4d5c14836c9fb8ac692d55d90f07aa41092e1d0cc5c98963f5` |
| 96 | `def` | [getKeyLTD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getkeyltd.md) | 742 | `declaration-track:2e6cc3da9146d362c93947436a31dac1a842d23d7f0902eb92fa11bb10600615` |
| 97 | `def` | [getKeyGE](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getkeyge-source-edition-2.md) | 746 | `declaration-track:795cf3ea0ee1a143c1fcaa1e3fb2f375b74be268684a67276da9c0c37c6a89c8` |
| 98 | `def` | [getKeyGT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getkeygt-source-edition-2.md) | 759 | `declaration-track:391dd90e29ceb984341039d622a323f23106ef5090c47b0b636e5f0797c309d9` |
| 99 | `def` | [getKeyLE](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getkeyle-source-edition-2.md) | 773 | `declaration-track:cceaf241f425a095bf2a985c17e211b12e33f7cc231efc0327109ec967372a6d` |
| 100 | `def` | [getKeyLT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getkeylt-source-edition-2.md) | 786 | `declaration-track:eb13e742870ef4034c9b75c1abaa6e6382b54c7bfcca0d6238cadcc8cb0993f4` |
| 101 | `def` | [minEntry?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/minentry-source-edition-4.md) | 804 | `declaration-track:cad737009834c017a816534d9c456c0464c99d3d1b4e05475c7d438802caeafc` |
| 102 | `def` | [minEntry](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/minentry-source-edition-5.md) | 810 | `declaration-track:d51d35841c30dc52ed71f1ac92f386442f0a7473a62aaae1ccfbba56be5ba51d` |
| 103 | `def` | [minEntry!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/minentry.md) | 815 | `declaration-track:0c497aedd4e7e75e3393f1bcf39e0f303b2ffc501a4b4183c14777b43e7b6cda` |
| 104 | `def` | [minEntryD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/minentryd.md) | 821 | `declaration-track:307928755fd2078011c7a59e3f6f8d2ee1f89775e61c54afe4cfda4a922f6493` |
| 105 | `def` | [maxEntry?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/maxentry-source-edition-2.md) | 827 | `declaration-track:5603cab6552199b7ef3110109a26f0e558969c7326f526fbb05c7293a5c79956` |
| 106 | `def` | [maxEntry](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/maxentry-source-edition-3.md) | 833 | `declaration-track:9ed5ad344a0994504dd3d33c515b755d2955806433806fcc2706e12bf06d38ca` |
| 107 | `def` | [maxEntry!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/maxentry.md) | 838 | `declaration-track:3574cbaefcbe4ec73550cae16d9bb6433cc092ed6da235ff5af74adbaeec4f7b` |
| 108 | `def` | [maxEntryD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/maxentryd.md) | 844 | `declaration-track:d8edece1b3657a36d76427c89095b4cba1d5d596fb137f1d32ef5ae44f27881c` |
| 109 | `def` | [entryAtIdx](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/entryatidx.md) | 851 | `declaration-track:21edcff8293f786991943b5d6ba04e4cd9e72470eaab879d591fe5828819501a` |
| 110 | `def` | [entryAtIdx?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/entryatidx-source-edition-3.md) | 860 | `declaration-track:41e7507d11f00a77c6a0b12a9d22818d76c6854ec62c0b234e4690fd0eb6fde1` |
| 111 | `def` | [entryAtIdx!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/entryatidx-source-edition-4.md) | 869 | `declaration-track:576cc10a6777f5c96978e1e4c3779f82dcd73ed011122528f7c8e88540b8b5a3` |
| 112 | `def` | [entryAtIdxD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/entryatidxd-source-edition-2.md) | 878 | `declaration-track:f0cc6c0c6cb536472c6dcab90e3089d105ed46fd36e66ef46f380a4bb38d4027` |
| 113 | `def` | [getEntryGE?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getentryge-source-edition-3.md) | 888 | `declaration-track:9bece795bb68527a60653825c88bfb015f675cc5dac0d7293247cceb24dc064c` |
| 114 | `def` | [getEntryGT?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getentrygt-source-edition-3.md) | 900 | `declaration-track:5b56c69f71f1f1a8861bf4b963cdfb4ec48d504542048e1cdb665d2ce1a0cebf` |
| 115 | `def` | [getEntryLE?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getentryle-source-edition-5.md) | 911 | `declaration-track:8070b10d231432570d9b64508458dfb76bbd2641a77a67cc0f0e0d443a8799d9` |
| 116 | `def` | [getEntryLT?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getentrylt-source-edition-3.md) | 923 | `declaration-track:871c822dbcb1625f34f2742d9d3d86a5997eeadafc1613c338f00a08ace6c8ff` |
| 117 | `def` | [getEntryGE!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getentryge-source-edition-4.md) | 934 | `declaration-track:a650d1697869210a1796a5763fd2b858291c2eb08292749e1f6bb9c225aa9f83` |
| 118 | `def` | [getEntryGT!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getentrygt.md) | 939 | `declaration-track:3b205f731459d4b87ed74583322de4f813692326c78ad54903da98c8e48a032f` |
| 119 | `def` | [getEntryLE!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getentryle-source-edition-6.md) | 944 | `declaration-track:fec72fd735f7003512fde76183e9eec17999cdae8dd3c9f3e9ce7e78ab0391f2` |
| 120 | `def` | [getEntryLT!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getentrylt-source-edition-2.md) | 949 | `declaration-track:3a92270b74cd365436b47f7cc076ac6a613231c71055ba3650b7bcda0696c4ec` |
| 121 | `def` | [getEntryGED](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getentryged-source-edition-2.md) | 954 | `declaration-track:abf7c9e664dff642b67de27a932e09b2f51393da78c4d10f6119ad6966c809bf` |
| 122 | `def` | [getEntryGTD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getentrygtd-source-edition-2.md) | 959 | `declaration-track:9268bf68c8f9e5b72c4ee4026aab54b68cdd4360d01a1b4e4f129c3084a33783` |
| 123 | `def` | [getEntryLED](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getentryled-source-edition-2.md) | 964 | `declaration-track:efb861bca39e2aec7149a84ebf13f25b640a640db2d9b7fd60ebd73928b6b12d` |
| 124 | `def` | [getEntryLTD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getentryltd-source-edition-2.md) | 969 | `declaration-track:ab4ef44c468f32670becfca442c015c3348ba48aadd814604a97ac20cd84e36f` |
| 125 | `def` | [getEntryGE](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getentryge.md) | 973 | `declaration-track:220ec4f3e03e5224b2b0bd9908b6580c11c0c565b43879af73740461cc29e001` |
| 126 | `def` | [getEntryGT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getentrygt-source-edition-5.md) | 986 | `declaration-track:6d208d7f7e4cb740d76ca2444951374c3752a6afe50fb1b3b50b087b0725ada8` |
| 127 | `def` | [getEntryLE](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getentryle-source-edition-3.md) | 1000 | `declaration-track:4b3b24504c504a92abddea337671d6acd65f9fa74887e32fb5991ae04cb9ecd0` |
| 128 | `def` | [getEntryLT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/QueriesPublic.lean/declarations/getentrylt-source-edition-5.md) | 1013 | `declaration-track:8aa4d5c6c6b04da3c07abfb3c398d8daff1cea6d008a93f5e25e6d19237be970` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b58d1b22424d0a7398c6a656fdc0059ddedf5c1ae9e2e3071c7364412cc963bb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Queries/Variant7623f4ddad45e9bff0bd9a3f74710720590f169ffc8840af768bac8f8afda5b2.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Queries/Variant7623f4ddad45e9bff0bd9a3f74710720590f169ffc8840af768bac8f8afda5b2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
