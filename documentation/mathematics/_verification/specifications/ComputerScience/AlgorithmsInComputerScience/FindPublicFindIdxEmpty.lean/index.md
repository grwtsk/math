# Verification target: Find Public Find Idx Empty

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9067dab78972b411b755074f9c0f682b9b49a8f5",
  "lexical_observation_count": 140,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant035dcf1c655b1efd8ae520ef5a6af6ef2a9b0e0bbd10e5a25bceec80f2cfaf82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9067dab78972b411b755074f9c0f682b9b49a8f5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant035dcf1c655b1efd8ae520ef5a6af6ef2a9b0e0bbd10e5a25bceec80f2cfaf82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant035dcf1c655b1efd8ae520ef5a6af6ef2a9b0e0bbd10e5a25bceec80f2cfaf82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Nat.Sum` — import line 9; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Bootstrap` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Array.MapIdx` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Bool` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Fin.Lemmas` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.List.Count` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.List.Find` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.List.Impl` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.Find` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.TakeDrop` — import line 22; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 23; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 24; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [findSome?_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findsome-empty.md) | 40 | `result-track:7ac4a5c4e089c15c0d9b7132835bd5194dc22171af68ea20dc3e33bda252d9fb` |
| 2 | `theorem` | [findSome?_push](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findsome-push.md) | 41 | `result-track:6f5ac2f3145e6a078f31dfae0ff05e654a6bd46d84f9c94dc44dd0401318b342` |
| 3 | `theorem` | [findSome?_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findsome-singleton.md) | 45 | `result-track:f065a7bd2a13a558c6adb35a64ae7c8fb745c2cf998179ada33d8c63e38709bc` |
| 4 | `theorem` | [findSomeRev?_push_of_isSome](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findsomerev-push-of-issome.md) | 48 | `result-track:f5fb4dd9beade88e212a4f0b84414e3e9933a5f9ffc1776ddefc787ae764d490` |
| 5 | `theorem` | [findSomeRev?_push_of_isNone](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findsomerev-push-of-isnone.md) | 51 | `result-track:881f825e18436349dcff8d5c0570a98b755b616274ebd6299346258a1d3c82f8` |
| 6 | `theorem` | [findSomeRev?_push](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findsomerev-push.md) | 55 | `result-track:2eb168ebfcfc1d7752779b686592e9e21448936ad53878a79ec264a00bb01c4d` |
| 7 | `theorem` | [exists_of_findSome?_eq_some](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/exists-of-findsome-eq-some.md) | 65 | `result-track:7e2db4df25a66093a79608b2911329b016d00f7e11cb8e5daf0f6ef7aa2dda9c` |
| 8 | `theorem` | [findSome?_eq_none_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findsome-eq-none-iff.md) | 69 | `result-track:aaee9557e5d36c01df29c67fed6b40ce1228fb498dd245abf3a0f7f84e546f4b` |
| 9 | `theorem` | [findSome?_isSome_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findsome-issome-iff.md) | 72 | `result-track:02beeea575103a07d15bf881460cfa69dead47b26913116caa6b3024661a1157` |
| 10 | `theorem` | [findSome?_eq_some_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findsome-eq-some-iff.md) | 76 | `result-track:93cb28cdd0609fab5faff5002b204c188e2d20b370a2baa27948f2e132c1ffcf` |
| 11 | `theorem` | [isSome_findSome?](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/issome-findsome.md) | 86 | `result-track:96af31b21a5f4e6e050c99c029a4f40c12978b2e7fa75c01736be2d25bb1a3a6` |
| 12 | `theorem` | [findSome?_guard](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findsome-guard.md) | 90 | `result-track:5dd883d3361176513b916b7c9dee983a498ffc05b590a645df8df948415771c7` |
| 13 | `theorem` | [find?_eq_findSome?_guard](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/find-eq-findsome-guard.md) | 93 | `result-track:2c4e40e3a4f161753adc600bab4ebef840cf1bc90f763a5cab9b51224174481b` |
| 14 | `theorem` | [getElem?_zero_filterMap](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/getelem-zero-filtermap-source-edition-2.md) | 96 | `result-track:ff9fcf1a705c525915d21dcc382473359a86eec5d3c14db5486d1a3e308b74a8` |
| 15 | `theorem` | [getElem_zero_filterMap](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/getelem-zero-filtermap.md) | 99 | `result-track:c475a95e078856c6a94659981aefd6a110084784b7263facef0c3d72aea21d9b` |
| 16 | `theorem` | [back?_filterMap](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/back-filtermap-source-edition-2.md) | 103 | `result-track:f742a64049d23c5f624a4bdda6272092485a44c9f9601528c24ac54f800646cb` |
| 17 | `theorem` | [back!_filterMap](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/back-filtermap.md) | 106 | `result-track:46a99db522ea4cc8178722f5a5f13f202c77a54232fa95484b7dc91615ff4e8d` |
| 18 | `theorem` | [map_findSome?](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/map-findsome.md) | 110 | `result-track:04d45bb1430ae858b4debd3d10c44f1b8efa02aa6a1891e21dfd49ed27635ad9` |
| 19 | `theorem` | [findSome?_map](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findsome-map.md) | 115 | `result-track:777fe113e6ac7a148e3b9857caf014aa3a672719e69c41c6da88b5e4170f6822` |
| 20 | `theorem` | [findSome?_append](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findsome-append.md) | 119 | `result-track:6059ff3be693d2d1fb0e465925f19feb5b35c61eb61b284646e162c5c93e125c` |
| 21 | `theorem` | [getElem?_zero_flatten](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/getelem-zero-flatten-source-edition-2.md) | 123 | `result-track:c593345503e8cd754200496128c62d15524348623925e0812ee4b663bf1a758d` |
| 22 | `theorem` | [getElem_zero_flatten.proof](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/getelem-zero-flatten-proof.md) | 128 | `result-track:a8e5c0d0b338529b8335aec7b357c965adef66adb0d561601f5b1d13ebc5818c` |
| 23 | `theorem` | [getElem_zero_flatten](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/getelem-zero-flatten.md) | 139 | `result-track:b0590dec17d2801f533b1b92cd5a4c95d56ecebe8940cb9260200dc30bd9be30` |
| 24 | `theorem` | [findSome?_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findsome-replicate.md) | 144 | `result-track:528873d457fcb51c66b416ae59476f702a41513679391bc0672e218e0e3d4f08` |
| 25 | `theorem` | [findSome?_replicate_of_pos](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findsome-replicate-of-pos.md) | 147 | `result-track:9f7da303dd201a5dc6a943580ad54cf076e66e8173b00aeed1a42c9e8c106bb9` |
| 26 | `theorem` | [findSome?_replicate_of_isSome](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findsome-replicate-of-issome.md) | 151 | `result-track:0a44934149df3bae075f5e960e814f5d6ae626f055ce5b25d7ba2b06aaa9f3a0` |
| 27 | `theorem` | [findSome?_replicate_of_isNone](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findsome-replicate-of-isnone.md) | 155 | `result-track:b637cf96d9de370341451b20da636568de68c19c598cb31f7813858aa6422468` |
| 28 | `theorem` | [find?_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/find-empty.md) | 162 | `result-track:65a0a8b5d572a938fe7de4523c1f200dd5020a2fbe0dabf4e7f775c12d9bf611` |
| 29 | `theorem` | [find?_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/find-singleton.md) | 165 | `result-track:cb25228e84281c4f2784cc660897e2ed60f4104915c6237691dfc7cd902020b6` |
| 30 | `theorem` | [findRev?_push_of_pos](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findrev-push-of-pos.md) | 169 | `result-track:c03210e9b75251d92a1db0ffaf08115efd07fd0d0c5a5453451fd10a6fb347f6` |
| 31 | `theorem` | [findRev?_push_of_neg](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findrev-push-of-neg.md) | 173 | `result-track:5238f5c684f4c6be0ccea2148fce887a60bf753ca92dad5109f4d94b22c72d08` |
| 32 | `theorem` | [finRev?_push](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/finrev-push.md) | 178 | `result-track:d78e9356e6431d2ffb8640e5aa233c9f960d0455a8a36b8984a2bf3920538e2f` |
| 33 | `theorem` | [find?_eq_none](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/find-eq-none.md) | 186 | `result-track:fe95c0677609e62f3c407bec1b6565cdc5452a680f40fb2d57613d8eae2e1834` |
| 34 | `theorem` | [find?_eq_some_iff_append](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/find-eq-some-iff-append.md) | 189 | `result-track:8ecf48b7ffa8380beef9d119e00d8dc15cb7066ce295253438ee48c590713262` |
| 35 | `theorem` | [isSome_find?](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/issome-find.md) | 202 | `result-track:5add55ef1282fb4c7ee607bf35b8c72feca5ce4b9250b23deea21db15c1f5161` |
| 36 | `theorem` | [find?_push](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/find-push.md) | 206 | `result-track:644ebeecfbd4669c25909f8893ee42c1dec5746d0528f5bcabba69ed621a273a` |
| 37 | `theorem` | [find?_push_eq_some](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/find-push-eq-some.md) | 210 | `result-track:dab29f6882c6a692d608babc9e62fcbaf11ef5d27e149cc1e7c01b3a2738bfe4` |
| 38 | `theorem` | [find?_isSome](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/find-issome.md) | 214 | `result-track:fb93b574200adea967575ca7272292358b0bca6d99f42293f22d86b2c4e1fca2` |
| 39 | `theorem` | [find?_some](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/find-some.md) | 218 | `result-track:3d907202e85845581acfcd02656b54267a7b1cbe6703c21170c9205c0404d072` |
| 40 | `theorem` | [mem_of_find?_eq_some](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/mem-of-find-eq-some.md) | 224 | `result-track:3a377801425574766be3f2bfd39825f9fb5558f684653f23ac16570190faf140` |
| 41 | `theorem` | [get_find?_mem](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/get-find-mem.md) | 229 | `result-track:1c06de01d777b95a380319d57a4a7a8e4088831cd6ec2d168d48bbba229b376b` |
| 42 | `theorem` | [find?_filter](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/find-filter.md) | 235 | `result-track:ef65e24438e69a271b6480ab3214b1ca26462b5e8a6c31b2f9323015a9d8f883` |
| 43 | `theorem` | [getElem?_zero_filter](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/getelem-zero-filter.md) | 239 | `result-track:445ed191989ca4c7d68c2e6a3ff8664c001706380dee290255bc398bd04ef628` |
| 44 | `theorem` | [getElem_zero_filter](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/getelem-zero-filter-source-edition-2.md) | 243 | `result-track:491cffc6ac4c8fae3800de1e6c8481eac24e48a521ec3f1c062ad9b78f4ad3de` |
| 45 | `theorem` | [back?_filter](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/back-filter.md) | 249 | `result-track:0a9a9506356d4acdccc5138dfed15ca709045c59929d3c5eb024a2231225baec` |
| 46 | `theorem` | [back!_filter](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/back-filter-source-edition-2.md) | 252 | `result-track:0c07c5c4b12d2bf60e38ee4c52da5b5a83a30a1b23c905cf4821ee736024e3c3` |
| 47 | `theorem` | [find?_filterMap](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/find-filtermap.md) | 256 | `result-track:d09e7d618a905a6ce2815907026ccb950e14c46dce6ec7a69e0005802258ec94` |
| 48 | `theorem` | [find?_map](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/find-map.md) | 260 | `result-track:a4e8f40c3bbe3efdf2afaf8cb9bec67ae4a13b267bfb2f948b713c4a0e6435c9` |
| 49 | `theorem` | [find?_append](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/find-append.md) | 264 | `result-track:4e51e94dc9a3cd27ade39c8517cc50c2943d00e4d65c629aef334f364ecc6c4a` |
| 50 | `theorem` | [find?_flatten](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/find-flatten.md) | 270 | `result-track:a3167f7320e41935398b6b72a7b3cbce976f8b1d9c2be61355a63f921e6fea4d` |
| 51 | `theorem` | [find?_flatten_eq_none_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/find-flatten-eq-none-iff.md) | 275 | `result-track:67f130b6f0299994536b288dfe21588eab9b26dff054870d155c45ae04c2effc` |
| 52 | `theorem` | [find?_flatten_eq_some_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/find-flatten-eq-some-iff.md) | 284 | `result-track:0a0af2173a78ecbed2c06bf2086086e3598e87608d6123ca2a8590149f5cceee` |
| 53 | `theorem` | [find?_flatMap](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/find-flatmap.md) | 304 | `result-track:e154f329f44f30eb2a69b061bd5f4f2cffe320346ff85c664d6001597c51e29c` |
| 54 | `theorem` | [find?_flatMap_eq_none_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/find-flatmap-eq-none-iff.md) | 309 | `result-track:268edf39109c100613e803c1323d97006c8918d1ee149a81b788025e57371738` |
| 55 | `theorem` | [find?_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/find-replicate.md) | 314 | `result-track:cc1f0818595790934df0de916636af53d57168115acba5505648cfab11568005` |
| 56 | `theorem` | [find?_replicate_of_size_pos](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/find-replicate-of-size-pos.md) | 318 | `result-track:23a9be4ad62b024d8cba5ba6cff6509bf4a212118fb8cec650f1c4fc0c3382a7` |
| 57 | `theorem` | [find?_replicate_of_pos](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/find-replicate-of-pos.md) | 322 | `result-track:443cebaeb0256210753a4c6b699b94238fc97664f9a80646908a8c1e48d3ec0b` |
| 58 | `theorem` | [find?_replicate_of_neg](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/find-replicate-of-neg.md) | 326 | `result-track:98d656076a2c644dd1057de4c36f3a632d09232426a3cab3d5ee9eaac39cbe4b` |
| 59 | `theorem` | [find?_replicate_eq_none_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/find-replicate-eq-none-iff.md) | 330 | `result-track:3926cf6dba1690a259ebb2516a1ae9da5866120abccbab71541d52c392af36ce` |
| 60 | `theorem` | [find?_replicate_eq_some_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/find-replicate-eq-some-iff.md) | 334 | `result-track:64fde7f08f2965db40cefe47aa238bc312219a56e01c952cf018de39c87fbac0` |
| 61 | `theorem` | [get_find?_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/get-find-replicate.md) | 338 | `result-track:edf456605ffd795d6a0a568f8b2b27fd52142ae68176ece061bffb7029ade946` |
| 62 | `theorem` | [find?_pmap](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/find-pmap.md) | 343 | `result-track:879a3524fcd90a47436fd46fe06d321802f8466909a38a31695cb39ce85c796a` |
| 63 | `theorem` | [find?_eq_some_iff_getElem](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/find-eq-some-iff-getelem.md) | 349 | `result-track:8fc5cd3c71876ff03fa0f3c389927a7b266491bff1233a1d7ac1ab4eff271404` |
| 64 | `theorem` | [findIdx_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-empty.md) | 357 | `result-track:3bccdd3775824e10a9856900626104e9687c285967d563d2c2e83f4ab97cb06a` |
| 65 | `theorem` | [findIdx_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-singleton.md) | 360 | `result-track:32300b673d1864994ea6df1cf47658d5c8aca1cad96ff89a48a0046b51183f59` |
| 66 | `theorem` | [findIdx_of_getElem?_eq_some](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-of-getelem-eq-some.md) | 364 | `result-track:a3b2adf7946d8f0c6962f26ed334f5e4c6d1aff15326d2fab0cd1081cf580db4` |
| 67 | `theorem` | [findIdx_getElem](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-getelem.md) | 368 | `result-track:291ecb7046a89b6e7edd1bd46c5dfb028e8cddfead607e48006379df0f33529b` |
| 68 | `theorem` | [findIdx_lt_size_of_exists](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-lt-size-of-exists.md) | 374 | `result-track:0bae4dae3477d1976d2253a5e46478746050e09d3cf2f3c1e70eed9ab31ec305` |
| 69 | `theorem` | [findIdx_getElem?_eq_getElem_of_exists](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-getelem-eq-getelem-of-exists.md) | 379 | `result-track:992ae9920d262cad1a4c2a8864fc46eb17f847ea71112b11e18ee9d24923c708` |
| 70 | `theorem` | [findIdx_eq_size](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-eq-size.md) | 384 | `result-track:5e2efffac6418080e7a46785b5e846b39644d64bccad8e4cc6327a56c850b9a2` |
| 71 | `theorem` | [findIdx_eq_size_of_false](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-eq-size-of-false.md) | 389 | `result-track:752999b1a1659a7c0ca4864f657b0594f3af82a4e6e12e25afca72bd69fe2997` |
| 72 | `theorem` | [findIdx_le_size](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-le-size.md) | 394 | `result-track:253dd0da2ff639fd2a3cd5da4741f6292137ae9f4ac7253a87c280b62187df0a` |
| 73 | `theorem` | [findIdx_lt_size](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-lt-size.md) | 403 | `result-track:eb71b19658c601ca5910924604a52cea8b25832e3a379ed1fcd105fca7e30c80` |
| 74 | `theorem` | [not_of_lt_findIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/not-of-lt-findidx.md) | 411 | `result-track:f9d3ef51e265d6c0d619d71ce68a7c7d15c71c7e4cd13a0bc95ed5961027e370` |
| 75 | `theorem` | [le_findIdx_of_not](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/le-findidx-of-not.md) | 419 | `result-track:06e34a18f58536ff58a937e222d91354739d5abeec1e0c2e4290fd69a39cd871` |
| 76 | `theorem` | [lt_findIdx_of_not](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/lt-findidx-of-not.md) | 427 | `result-track:063cb9d0923b64b4dd817ec42a24d9b620b2d4863eb225f11c57526900a25e10` |
| 77 | `theorem` | [findIdx_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-eq.md) | 436 | `result-track:19b6adcec106500c1cc6642ee1a925ef82af85c873017261e84795c2ceb81086` |
| 78 | `theorem` | [findIdx_append](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-append.md) | 447 | `result-track:28fe67090235f0d9e0ad0793db7bcff5432be4de3d0d71fbf85c1d4913d2ecdf` |
| 79 | `theorem` | [findIdx_push](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-push-source-edition-2.md) | 455 | `result-track:3238a935c1cd7bdbaf73d8b359f75916af3787f5fb3cc57ce8bf3d3a8b649e90` |
| 80 | `theorem` | [findIdx_le_findIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-le-findidx.md) | 462 | `result-track:5f9405f6f60517ecbae34d4061600eeeea04d52dc5135224deae5d1c3df25b80` |
| 81 | `theorem` | [findIdx_subtype](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-subtype.md) | 466 | `result-track:192b7a6f1a93c5cbe781629e2dafaf21d7e2732ae23af2d8b94a4503578a9765` |
| 82 | `theorem` | [false_of_mem_extract_findIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/false-of-mem-extract-findidx.md) | 472 | `result-track:efba868f635706c88a349ce1aa752d88b9904fba353fa33b155a0b0112470ebb` |
| 83 | `theorem` | [findIdx_extract](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-extract.md) | 477 | `result-track:544e5ffca096a4d377edf6af6297e03e1a34a2bbac99063886702b6f1c36410a` |
| 84 | `theorem` | [min_findIdx_findIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/min-findidx-findidx.md) | 482 | `result-track:c14a0d179be1879d3d48c33cf3ef225877927f92ed3d4b4b07502ccd4749f354` |
| 85 | `theorem` | [findIdx?_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-empty-source-edition-2.md) | 489 | `result-track:765ded441271776114b879cf469b0e198940da36eb3cb87cc798a30a8233439a` |
| 86 | `theorem` | [findIdx?_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-singleton-source-edition-2.md) | 490 | `result-track:d63ec1b7649ffd1cd02be772b4e607eaa176d6df4f18eb3653740f699782f4a9` |
| 87 | `theorem` | [findIdx?_eq_none_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-eq-none-iff.md) | 495 | `result-track:391fd98953ee5c8398cc0c6aa71b538833ff07db9f7def04f27a982e1b3d670f` |
| 88 | `theorem` | [findIdx?_isSome](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-issome.md) | 501 | `result-track:afa112807d71789362d58dfcef618b6714fdd8179241ded8a1872fffcfaabc6b` |
| 89 | `theorem` | [findIdx?_isNone](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-isnone.md) | 507 | `result-track:95f5d04a4aab294e95977a0782c38f5f8ec1ca550bd6181b04aa9711ac2c44cc` |
| 90 | `theorem` | [findIdx?_eq_some_iff_findIdx_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-eq-some-iff-findidx-eq.md) | 512 | `result-track:45aecc3f30c8be82e204c05debfde9bc12357c8144fa435f4b9d854b19253aef` |
| 91 | `theorem` | [findIdx?_eq_some_of_exists](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-eq-some-of-exists.md) | 517 | `result-track:d9f623e0c3930d4d11cf0a229f69407c030fb4ba66a22f24de2ac8f701c948cd` |
| 92 | `theorem` | [findIdx?_eq_none_iff_findIdx_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-eq-none-iff-findidx-eq.md) | 522 | `result-track:e640eb75c74611fead11f067a2d71e9444a82612062b7836488883ecbd76d2a4` |
| 93 | `theorem` | [findIdx?_eq_guard_findIdx_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-eq-guard-findidx-lt.md) | 527 | `result-track:c60bda0098ebde8fd8c9406ce96c22a52b8fbd4a730d0bc4f4c23211d91505cc` |
| 94 | `theorem` | [findIdx?_eq_some_iff_getElem](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-eq-some-iff-getelem.md) | 532 | `result-track:46c739db36aa0b8dc3333bd97a02222f6aeb6d78f7fc72c20cfc2789eef6f3d8` |
| 95 | `theorem` | [of_findIdx?_eq_some](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/of-findidx-eq-some.md) | 538 | `result-track:aaa97530bf05601c5207f6ca7599fb2fc54d5e9d94288dbdb8059e0cd7c2ee44` |
| 96 | `theorem` | [of_findIdx?_eq_none](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/of-findidx-eq-none.md) | 543 | `result-track:112e71d995d277dea74e1890ab652019e725ef40ef198bd47698ff8bc548549e` |
| 97 | `theorem` | [findIdx?_map](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-map.md) | 548 | `result-track:90f3dd07c94081c72979f61112c6354c158a5971e28bee64449c11ccfdbc7098` |
| 98 | `theorem` | [findIdx?_append](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-append-source-edition-2.md) | 553 | `result-track:c82940b326ca51a566a6289163572adfd68203874207049d70ea25507dce8029` |
| 99 | `theorem` | [findIdx?_push](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-push.md) | 561 | `result-track:302608d1e269f4bb7611c46f45f5709d412f330cf585b1538237e2bbf096f688` |
| 100 | `theorem` | [findIdx?_flatten](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-flatten.md) | 568 | `result-track:5e1de6b70eaa1cf04c7167a895a2544b2ce8fd4a8aeb71f98a5a45434111c422` |
| 101 | `theorem` | [findIdx?_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-replicate.md) | 576 | `result-track:967baa54bcb0ccfcb899c3fddecafee954445a37c2b456d425548472bc8c584c` |
| 102 | `theorem` | [findIdx?_eq_findSome?_zipIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-eq-findsome-zipidx.md) | 582 | `result-track:01ce38f48ca52b3f2419f57ed80d784cd0845009da60a01e93ae8a9b0ec7f7f3` |
| 103 | `theorem` | [findIdx?_eq_fst_find?_zipIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-eq-fst-find-zipidx.md) | 587 | `result-track:3b5940354724de20bd725f88e88f5086295b2955a2dc3087aff7e8474d8b9fa7` |
| 104 | `theorem` | [findIdx?_eq_none_of_findIdx?_eq_none](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-eq-none-of-findidx-eq-none.md) | 593 | `result-track:eafee7a8bd60a05e8f43c03d345909e1043297f09819c8cbbced23f6a498da83` |
| 105 | `theorem` | [findIdx_eq_getD_findIdx?](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-eq-getd-findidx.md) | 598 | `result-track:a10bf3033319f37cb4f8469242778b0b334beae4e3f44663a7b6d94fc60fb30c` |
| 106 | `theorem` | [findIdx?_eq_some_le_of_findIdx?_eq_some](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-eq-some-le-of-findidx-eq-some.md) | 605 | `result-track:23c12dc451e6f3aeb210036cae8180526f291f9f42a9cefd5eb6713caa553dcb` |
| 107 | `theorem` | [findIdx?_subtype](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-subtype-source-edition-2.md) | 610 | `result-track:e19d3c4047636dcf8164cb10c8a98c92fc33187fcaba848fead87d0538e7c4e3` |
| 108 | `theorem` | [findIdx?_take](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-take.md) | 616 | `result-track:acae9bcb351c061deb463caf134e4c5ea90f9d303d19d07fc86156019ca71988` |
| 109 | `theorem` | [findFinIdx?_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findfinidx-empty.md) | 624 | `result-track:c0c3118db87c78b6a8abebc38a64510a479f625cfe4861bc7f212b34bc639b47` |
| 110 | `theorem` | [findFinIdx?_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findfinidx-singleton.md) | 627 | `result-track:ba3501c6c51fedc5fd1b6f67f5c329b09f48d0b876cba1c1dcc3214c81836d83` |
| 111 | `theorem` | [findFinIdx?_congr](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findfinidx-congr.md) | 632 | `result-track:aa0f2af2ad90fc271dae3aef2305a07d40834de084e68aea987763e5ef87dd18` |
| 112 | `theorem` | [findFinIdx?_eq_pmap_findIdx?](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findfinidx-eq-pmap-findidx.md) | 637 | `result-track:3d583d3130d00d746d7491058dbd9861873fedc566490c2d6ba0c18f3abdcee8` |
| 113 | `theorem` | [findFinIdx?_eq_none_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findfinidx-eq-none-iff.md) | 644 | `result-track:5dce3ccb63c5faaa68c343fe83fa0cac50e1f287da1607d6356a501f0a56b659` |
| 114 | `theorem` | [findFinIdx?_eq_some_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findfinidx-eq-some-iff.md) | 649 | `result-track:7f69aa1e07e9c8a12d26deb63cfc77f16a98897ae93fc8268a4232ac8122b8a8` |
| 115 | `theorem` | [findFinIdx?_push](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findfinidx-push.md) | 661 | `result-track:9156e9dae4c894589c7784df3057a9c98e04254ebd8cee6f19dada8743408043` |
| 116 | `theorem` | [findFinIdx?_append](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findfinidx-append.md) | 668 | `result-track:65112b1c2ffdedb569331e24a34a893fef5a229dfd63eab389449514978239f8` |
| 117 | `theorem` | [isSome_findFinIdx?](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/issome-findfinidx.md) | 678 | `result-track:d2a353feaae87f1b0e44d35792601342a377d74d80b297f2f00ae738b34c5af1` |
| 118 | `theorem` | [isNone_findFinIdx?](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/isnone-findfinidx.md) | 684 | `result-track:c32fac14aa7f9b2739f44c10b111018851fbbd86c9fd0e6be623ce6015abc389` |
| 119 | `theorem` | [findFinIdx?_subtype](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findfinidx-subtype.md) | 689 | `result-track:6ff4eb855f943a370a31010977b6082b1922a802efbdced06419136040fb46bd` |
| 120 | `theorem` | [find?_eq_map_findFinIdx?_getElem](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/find-eq-map-findfinidx-getelem.md) | 700 | `result-track:dd29e92e0ecdace24b2dac6c2decd4c82eb7dead2dbffe1bff31f066b9712ab2` |
| 121 | `theorem` | [find?_eq_bind_findIdx?_getElem?](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/find-eq-bind-findidx-getelem.md) | 706 | `result-track:24c581f58c4b4e95792e0f72eb908f2554e58534bff473eb156ddea0ec54b4d6` |
| 122 | `theorem` | [find?_eq_getElem?_findIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/find-eq-getelem-findidx.md) | 711 | `result-track:e3268ced3564d1f155c6e3562e4e58e706359a9bc50a05915b5ca1aef5296201` |
| 123 | `theorem` | [findIdx?_eq_bind_find?_idxOf?](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-eq-bind-find-idxof.md) | 716 | `result-track:eba2b2ace7b10f400e7361dd980db7cea54e680a918537a0a954a41269687735` |
| 124 | `theorem` | [findFinIdx?_eq_bind_find?_finIdxOf?](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findfinidx-eq-bind-find-finidxof.md) | 721 | `result-track:71cd983c1048fa06af249a0608e46f413e9fd650daaaaeb6020bc69274fe6f64` |
| 125 | `theorem` | [findIdx_eq_getD_bind_find?_idxOf?](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/findidx-eq-getd-bind-find-idxof.md) | 726 | `result-track:02c232fac3fac51071423654209421904abe19a408d345157fecd3768cc9ad49` |
| 126 | `theorem` | [idxOf_append](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/idxof-append.md) | 738 | `result-track:dc7c31dc4835cd155d4dda44dea040ca755058696b6219f72a148f94c4daa57f` |
| 127 | `theorem` | [idxOf_eq_size](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/idxof-eq-size.md) | 747 | `result-track:2e62ea37e9a0d7b679332e211ac18db776128f1b32a8a1e8df359fd99005e37e` |
| 128 | `theorem` | [idxOf_lt_length_of_mem](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/idxof-lt-length-of-mem.md) | 751 | `result-track:9af3dd3a01029611870bd3221df7636fa419265db7a1881058a396e981046e6c` |
| 129 | `theorem` | [idxOf_le_size](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/idxof-le-size.md) | 755 | `result-track:cd3594315fa11f00a11a7b4da470635a67f48c1ade8a5c55bebdc586b40370dc` |
| 130 | `theorem` | [idxOf_lt_size_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/idxof-lt-size-iff.md) | 762 | `result-track:63521b30487eaad394f3ef899674beb832981b245bfe7cd251039e4a3cfb0d6f` |
| 131 | `theorem` | [idxOf?_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/idxof-empty.md) | 775 | `result-track:483d7ae0bd47c7f136dffd393ef5eeff157313f1e3b2ee0617a86b2699d52b93` |
| 132 | `theorem` | [idxOf?_eq_none_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/idxof-eq-none-iff.md) | 777 | `result-track:87776b74be5e21e67bcb5d5f66aa55acb1094a1c5aa9cd4a52d32605f5435edd` |
| 133 | `theorem` | [isSome_idxOf?](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/issome-idxof.md) | 783 | `result-track:1cbd638f221112330851c2391ec0558027190c212dba767059aca0f67fbff0b6` |
| 134 | `theorem` | [isNone_idxOf?](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/isnone-idxof.md) | 789 | `result-track:b8f4c970c72d5e2d4a1f0245fe064e3cc86f595d5a482db2c92c8792373fa2ef` |
| 135 | `theorem` | [idxOf?_eq_map_finIdxOf?_val](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/idxof-eq-map-finidxof-val.md) | 799 | `result-track:d0181a8f058982b9aa22383808ba8edf08668f6455eba8cfef99c78ce2a4d056` |
| 136 | `theorem` | [finIdxOf?_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/finidxof-empty.md) | 803 | `result-track:93d46a5b0d8f6906ae5ded568107f359c6e8113d4b6ed0902082a865e2bc33ea` |
| 137 | `theorem` | [finIdxOf?_eq_none_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/finidxof-eq-none-iff.md) | 805 | `result-track:c02e737c022bb491edb0c6a14e3f372c5732748211742ca4ec2fe5ee24186267` |
| 138 | `theorem` | [finIdxOf?_eq_some_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/finidxof-eq-some-iff.md) | 810 | `result-track:36768384630561df9063b48cb0468735c54b93c7d50ef6d46bfe283483b4a78b` |
| 139 | `theorem` | [isSome_finIdxOf?](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/issome-finidxof.md) | 817 | `result-track:650b8925810b0216df113ee4e5bb854044609ecb66ff22bbc69b38f862565ad8` |
| 140 | `theorem` | [isNone_finIdxOf?](../../../../../ComputerScience/AlgorithmsInComputerScience/FindPublicFindIdxEmpty.lean/declarations/isnone-finidxof.md) | 823 | `result-track:f9a77e1d9066e586cd569b6807226ab141d4142510a685cc012fd2c75f54a93b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b7b64105c583f739401bdb91fb79fc3ebdb13fe06944a347a888034dbab1a123 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant035dcf1c655b1efd8ae520ef5a6af6ef2a9b0e0bbd10e5a25bceec80f2cfaf82.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Find/Variant035dcf1c655b1efd8ae520ef5a6af6ef2a9b0e0bbd10e5a25bceec80f2cfaf82.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
