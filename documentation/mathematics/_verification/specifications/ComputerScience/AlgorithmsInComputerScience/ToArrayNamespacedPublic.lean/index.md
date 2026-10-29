# Verification target: To Array Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3318a8461302d173aa58aa433fca509db3f924aa",
  "lexical_observation_count": 87,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToArray/Variantbd0f388a042a38ce8dda6ec9ea374efe9761c718f95d803ac876a90293b56767.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3318a8461302d173aa58aa433fca509db3f924aa`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToArray/Variantbd0f388a042a38ce8dda6ec9ea374efe9761c718f95d803ac876a90293b56767.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToArray/Variantbd0f388a042a38ce8dda6ec9ea374efe9761c718f95d803ac876a90293b56767.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Bootstrap` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Bool` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.List.Erase` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.List.Find` — import line 22; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.Erase` — import line 23; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.InsertIdx` — import line 24; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.TakeDrop` — import line 25; external provider; requires a separately pinned dependency.
- `Init.Data.List.Sublist` — import line 26; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 27; external provider; requires a separately pinned dependency.
- `Init.Data.List.Zip` — import line 28; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 29; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 30; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 31; external provider; requires a separately pinned dependency.
- `Init.TacticsExtra` — import line 32; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toList_set](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/tolist-set.md) | 49 | `result-track:2c426eb60388ef94eb843160538e163ed4302452494a5c8a74369f9e746eefa2` |
| 2 | `theorem` | [swap_def](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/swap-def.md) | 52 | `result-track:773841ec00a990a87737fb2f62f060d636c77bd0edbe070e2415b4ded1a66c96` |
| 3 | `theorem` | [toList_swap](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/tolist-swap.md) | 56 | `result-track:130093518a78d4bfb9d0db719982d566ee8eebdb162b53f2071cea7f7fc5a166` |
| 4 | `theorem` | [toArray_inj](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/toarray-inj.md) | 65 | `result-track:470ae35b4b07ec4c172f8773b5e1b5cf387c794ab557faa8dfc0321df58ca352` |
| 5 | `theorem` | [toArray_eq_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/toarray-eq-iff.md) | 73 | `result-track:3409f97f2735ca3d1be3fae71ab35f0bfa811c3bc86ffc55ab821e3d6b90460d` |
| 6 | `theorem` | [eq_toArray_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/eq-toarray-iff.md) | 79 | `result-track:4fda216fd932df76b50851f87967e8b806ac501f9caebccb037324d58e4d082b` |
| 7 | `theorem` | [size_toArrayAux](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/size-toarrayaux.md) | 83 | `result-track:62ebc54e1bea7873e519cfdc9208b2e396eef870babc919b86163a01b4df5cad` |
| 8 | `theorem` | [toArray_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/toarray-cons.md) | 88 | `result-track:9c838c065d85571fcd4e31ce04666e4be82ba8b2a592ea6d8b95a5a291ab497e` |
| 9 | `theorem` | [push_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/push-toarray.md) | 92 | `result-track:cef729bd8f7b92a5a4bf1334240e776f30896fe00d5ac859440770e093bb3090` |
| 10 | `theorem` | [push_toArray_fun](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/push-toarray-fun.md) | 97 | `result-track:eab87efdc17078af56eec2e90474c1e9034e97604c0bd98fd4f58f06e859b7dd` |
| 11 | `theorem` | [isEmpty_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/isempty-toarray.md) | 101 | `result-track:b5be5d548682ae5817eb2ed96ae42178a6021cf5d8bcffc86000e321ce4cd737` |
| 12 | `theorem` | [toArray_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/toarray-singleton.md) | 104 | `result-track:50fc0df2a04d0db95f555670b16f5b20485c13aa441142d5ba330458cc63a62c` |
| 13 | `theorem` | [back!_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/back-toarray.md) | 106 | `result-track:d59681ddf7141018dd3484a0eac6d73dbf91559af78d3bb7dc8b72d084236c2e` |
| 14 | `theorem` | [back?_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/back-toarray-source-edition-3.md) | 109 | `result-track:fae57887d31e340c477481b17ab304983d1cc60c696403fd9a447b84a66a0c02` |
| 15 | `theorem` | [back_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/back-toarray-source-edition-2.md) | 112 | `result-track:dd58c799ebffdd4ce2135a5f3bd6fe9fd645c7e3d31acf0fe14e1d09b83554cd` |
| 16 | `theorem` | [To Array Namespaced Public](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-sw.md) | 116 | `result-track:1f49b0d26ada0abf58e61916589cde3656075bf88f77a55bf5061aed94ddeeaa` |
| 17 | `theorem` | [To Array Namespaced Public](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-sw-source-edition-3.md) | 121 | `result-track:52fbc3746bd3e123c5c2314307122155927089ab8dab81be404b72df16736a75` |
| 18 | `theorem` | [To Array Namespaced Public](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-sw-source-edition-4.md) | 126 | `result-track:845dec78cab9af822c9c946b5ec1328d0390f4e0e0cee3ca5ad3b731a1b160a5` |
| 19 | `theorem` | [set_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/set-toarray.md) | 131 | `result-track:2a51c3db77f58f444a6ac86ab36d276f745853a46377865e44eaf6c6c4edb074` |
| 20 | `theorem` | [forIn'_loop_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/forin-loop-toarray.md) | 134 | `result-track:cd1f1dbd2aa628c41ab955e2c79380c4f0cdcc0258e84a5ded8f985ff4e5e5c7` |
| 21 | `theorem` | [forIn'_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/forin-toarray.md) | 152 | `result-track:13a40f11957fced4e7d3bf04fa600ec1b14a43f539119d6170313f6882236dd3` |
| 22 | `theorem` | [forIn_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/forin-toarray-source-edition-2.md) | 158 | `result-track:987cc98b3d50be252eea0d198003b60f0cdf8852d7ae93943fb8563a5566c710` |
| 23 | `theorem` | [foldrM_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/foldrm-toarray-source-edition-2.md) | 162 | `result-track:a9395880e6fac053f37491ac1947333ef2d6f437b18ef16340b7ebb3e29f22b7` |
| 24 | `theorem` | [foldlM_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/foldlm-toarray.md) | 167 | `result-track:641cf84ec33e2945efdde45c8a458f97053e6aa6ba05d979e1a9a991f38a8e1c` |
| 25 | `theorem` | [foldr_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/foldr-toarray.md) | 171 | `result-track:1452a802bf5e2d0f3630fe71709e605a17d7ae8bf1882f19db9e26bcb36aec66` |
| 26 | `theorem` | [foldl_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/foldl-toarray.md) | 175 | `result-track:a12d125f1bcca1e98653f93c18467186cca88ba605570056f7e17a1ea5fc0f9c` |
| 27 | `theorem` | [foldrM_toArray'](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/foldrm-toarray.md) | 180 | `result-track:76600d43c9108acceaad6eae5e1d57f9f44a3a6049f35102f3321eef985014ec` |
| 28 | `theorem` | [foldlM_toArray'](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/foldlm-toarray-source-edition-2.md) | 188 | `result-track:d737b1db251aa8d33204d7cbd5a657e5b4202edda59220341ab7b647ce3c78c8` |
| 29 | `theorem` | [forM_toArray'](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/form-toarray.md) | 195 | `result-track:258593f826d503280249cdd823aff90b4f6b012c1cb587f207323002a675010c` |
| 30 | `theorem` | [forM_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/form-toarray-source-edition-2.md) | 203 | `result-track:c4d7b1311832252c5c0352e7fe3d8f229a8c5bc3329b558be29fb9d282c3e465` |
| 31 | `theorem` | [foldr_toArray'](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/foldr-toarray-source-edition-2.md) | 208 | `result-track:4f79418627188d4eb8e02cef99f9b12ad95641465fc9240bfc251ec9ea9ae8ee` |
| 32 | `theorem` | [foldl_toArray'](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/foldl-toarray-source-edition-2.md) | 215 | `result-track:fc158dfec843a44c0f765899f323fb9c788aeeb6fbb765dcc97fdf2cf4ffa90c` |
| 33 | `theorem` | [sum_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/sum-toarray.md) | 221 | `result-track:fe4d461b4fc37781655877fefcf5c332041b589199b98901ba5dd650827e4c10` |
| 34 | `theorem` | [prod_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/prod-toarray.md) | 224 | `result-track:27be76808abe075c6e548498b59cb855d6891e25be6a9dc6f84317061b7d7ee9` |
| 35 | `theorem` | [append_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/append-toarray.md) | 227 | `result-track:ae8bba0aa5b0d9ee2086f1098f1e3ea85b9aa13dbf950b31a335243325ec14f2` |
| 36 | `theorem` | [push_append_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/push-append-toarray.md) | 232 | `result-track:601ad49178cc7c5128e1721e868209c08e41e04c7ab60e83a5ca74bd8bbb9ae9` |
| 37 | `theorem` | [findSomeM?_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/findsomem-toarray.md) | 236 | `result-track:da7158043ed42dd1de51b0d85cf3f7a10ebe5b7059356f24d44fab44c6d1d8a7` |
| 38 | `theorem` | [findSomeRevM?_find_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/findsomerevm-find-toarray.md) | 247 | `result-track:79fcdbdb79131467b4075b2dd0ae5065ab709ab0ae8e12d1dc50c1e45887b5bc` |
| 39 | `theorem` | [findSomeRevM?_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/findsomerevm-toarray.md) | 260 | `result-track:8faf7419139634f661c4b3ab19d3e4411e768c913020eb1f7c178a1858c5ad16` |
| 40 | `theorem` | [findRevM?_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/findrevm-toarray.md) | 265 | `result-track:a32a6171cd9e7f835d6d33414541633806f5ed8cea4c6976e2e429edc8562c6b` |
| 41 | `theorem` | [findM?_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/findm-toarray.md) | 269 | `result-track:c3e99892b70df3bafd502330a2c2ba5d8f15b23d8a1e53458fddc69dddf23c5b` |
| 42 | `theorem` | [findSome?_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/findsome-toarray.md) | 280 | `result-track:a12fc2d85f6154cad60a21472581a5b4dc62760ab00f107a347be605b6714e9b` |
| 43 | `theorem` | [find?_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/find-toarray.md) | 284 | `result-track:d918b77f9bb78ab20cf791116c699e9b46288a778dd2284c886df4c8387d702b` |
| 44 | `theorem` | [findFinIdx?_loop_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/findfinidx-loop-toarray.md) | 295 | `result-track:aaad552ba915f03953f3ee77d0282a6b57855fcb8ac77dd281ec62fa0c524d3b` |
| 45 | `theorem` | [findFinIdx?_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/findfinidx-toarray.md) | 321 | `result-track:a56d06730ee2150cf06a269fd6cdcf8d14fc3c64ae956ac1fa50e62b779c5415` |
| 46 | `theorem` | [findIdx?_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/findidx-toarray-source-edition-2.md) | 326 | `result-track:8b9b53f796cc4427d89fdfddf7603e8d1ba301ac74bea3cfd687374e07974ff5` |
| 47 | `theorem` | [idxAuxOf_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/idxauxof-toarray.md) | 332 | `result-track:f5021810cd5ecbf080ce6529ef964b3fc04498f841d0a8120f40772c3c53ae52` |
| 48 | `theorem` | [finIdxOf?_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/finidxof-toarray.md) | 359 | `result-track:9115021a44038a817320d805f3131bb6ff6823dd245df134596ef07bda7e910a` |
| 49 | `theorem` | [idxOf?_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/idxof-toarray.md) | 364 | `result-track:a35a7910615e3b991e3c297e5895652fdc8568c47e39afdd3c8c9c539c2528c4` |
| 50 | `theorem` | [findIdx_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/findidx-toarray.md) | 369 | `result-track:1318978ea5a0ae071c8aed64a2d2af0c62128b9ea9f65352f2d98b3a48cb3cfe` |
| 51 | `theorem` | [idxOf_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/idxof-toarray-source-edition-2.md) | 373 | `result-track:e11a03254180b4f0f9009faf400181f8122c1bab2f3f26e081d2debae42d4460` |
| 52 | `theorem` | [isPrefixOfAux_toArray_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/isprefixofaux-toarray-succ.md) | 378 | `result-track:033d58b3710e314d3a5bb071251201fbe18611927ba8fd19b909240ea49b4843` |
| 53 | `theorem` | [isPrefixOfAux_toArray_succ'](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/isprefixofaux-toarray-succ-source-edition-2.md) | 390 | `result-track:32d62c360e9277291ceeb88512ffe66b78de474d7a305b9617f8e9ea069937d2` |
| 54 | `theorem` | [isPrefixOfAux_toArray_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/isprefixofaux-toarray-zero.md) | 399 | `result-track:48064b8419c7dc3d40826c8c1af3981575f61f6ab973419ccde8dcf03e6dedb7` |
| 55 | `theorem` | [isPrefixOf_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/isprefixof-toarray.md) | 409 | `result-track:2b31d06f4dba8e186ef7baee7c68ac758a9d08f7b0affd5c31d6597b119b20ca` |
| 56 | `theorem` | [zipWithMAux_toArray_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/zipwithmaux-toarray-succ.md) | 426 | `result-track:0806eb91e20efc02ccd748cba7616926167fcb460f42a703ad343f348f97d6a8` |
| 57 | `theorem` | [zipWithMAux_toArray_succ'](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/zipwithmaux-toarray-succ-source-edition-2.md) | 439 | `result-track:84de86af1bc8ebef56256819cb3fcacffa9d82a86e3f30f12579be0df84f77b9` |
| 58 | `theorem` | [zipWithMAux_toArray_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/zipwithmaux-toarray-zero.md) | 447 | `result-track:7f4c81e6a558b7b9f3ab71c7dff2e371adf8f08da27fadf3b7439416fdf1076a` |
| 59 | `theorem` | [zipWith_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/zipwith-toarray.md) | 456 | `result-track:8037dade8682e76420b22c14179bb39911c84da1c354f85d73fa118513b594a8` |
| 60 | `theorem` | [zip_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/zip-toarray.md) | 461 | `result-track:229ac2f5c383364deaf634296e88c525d39d7c76a5b870883f730cd312dc2d18` |
| 61 | `theorem` | [zipWithAll_go_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/zipwithall-go-toarray.md) | 465 | `result-track:3e91e095e09daedc41630c756336c200d81a7600eccc1604b2dcff49a22f7bea` |
| 62 | `theorem` | [zipWithAll_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/zipwithall-toarray.md) | 499 | `result-track:3496ab59a7f0c6bc7ee9894a246a988856ee0ba663e9d5cd1a77770918ca27da` |
| 63 | `theorem` | [zipWithM_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/zipwithm-toarray.md) | 503 | `result-track:51d8a6b4ab20fe21bf82a381b465c4167c9b467472c017dae0233da3236e5f94` |
| 64 | `theorem` | [toArray_appendList](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/toarray-appendlist.md) | 508 | `result-track:c6f62b1e9389922c3bfeb37dcdaf6c83dceec38baad4a668ae455cc3679001e8` |
| 65 | `theorem` | [pop_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/pop-toarray.md) | 513 | `result-track:b0a82d925f95a441e506b0ffb4c08691c03f122a6dee1758802ae35320cfa537` |
| 66 | `theorem` | [takeWhile_go_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/takewhile-go-succ.md) | 517 | `result-track:d78e1e91238aa6ab52bb0263ce92460b4696e4d0fc7ed3616fd8abd2326baf59` |
| 67 | `theorem` | [takeWhile_go_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/takewhile-go-toarray.md) | 526 | `result-track:14bd94d60f0d03498dea654a911c84e20d13c530538ed82b887cef34968a6b6b` |
| 68 | `theorem` | [takeWhile_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/takewhile-toarray.md) | 545 | `result-track:c142e89d4b553c3add255a08e213980f9b01b3f106ccf4ed1b78a907ab580e41` |
| 69 | `theorem` | [popWhile_toArray_aux](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/popwhile-toarray-aux.md) | 549 | `result-track:fc8eb01166c3e1db29b31a295bf12f58b39dc4910b7ca5cec6f4bce9679df42f` |
| 70 | `theorem` | [popWhile_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/popwhile-toarray.md) | 560 | `result-track:cc434196ebb77ef5605b3e34396b94c39516b4aa34eb1a368b9a238a9dfec2ed` |
| 71 | `theorem` | [setIfInBounds_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/setifinbounds-toarray.md) | 564 | `result-track:b99f5346578a246663f4ccfd65c18285ea218f7f924f441b77dd39924a735d21` |
| 72 | `theorem` | [toArray_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/toarray-replicate.md) | 572 | `result-track:7eefcdb7484a47a14a3bd31066123b6d2b84a99569737696197d7ea6cacf3cf3` |
| 73 | `theorem` | [To Array Namespaced Public](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-sw-source-edition-2.md) | 575 | `result-track:45e47afb2a717f8aea7bdfeca64610abd98c01c6a60cb06c2ada9a288c9dc468` |
| 74 | `theorem` | [To Array Namespaced Public](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-sw-source-edition-5.md) | 579 | `result-track:94ea2b33360894542949271afa43a9fa96d6630e30a9a65a0488a945f01cb506` |
| 75 | `theorem` | [flatMap_toArray_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/flatmap-toarray-cons.md) | 582 | `result-track:622e60a9c3378b9922ec45954a9cad3b2b6e0e877ece0f960e0500bb43dfd36b` |
| 76 | `theorem` | [flatMap_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/flatmap-toarray.md) | 592 | `result-track:c88fbae5fd6f51ccfe20dc58ba947d42aab50608541a04a05475a0a354e79a4e` |
| 77 | `theorem` | [swap_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/swap-toarray.md) | 600 | `result-track:dfb0775b658fb853dcc4d5ff6c4cd2cec0419f5c20a3e0275d6303eec5e69438` |
| 78 | `theorem` | [eraseIdx_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/eraseidx-toarray.md) | 605 | `result-track:c7e1de83459e98b3b663c603a51ac4403855451032a8d12229d15d39ab13b6e7` |
| 79 | `theorem` | [eraseIdxIfInBounds_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/eraseidxifinbounds-toarray.md) | 623 | `result-track:23d1ca8dcef4a8cdfa08ec3a2df19f8aae38613ac578a2a244dec6385a75fd7f` |
| 80 | `theorem` | [eraseP_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/erasep-toarray.md) | 630 | `result-track:fd50aba7a1bd476eb3504af089837a963ca4a5ff8fc1fef3f80e113104d5021e` |
| 81 | `theorem` | [erase_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/erase-toarray.md) | 635 | `result-track:56cd36be8d435e1fc15a0c726306bfa8c66633d1091a0ead655d3c752e566531` |
| 82 | `theorem` | [insertIdx_loop_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/insertidx-loop-toarray.md) | 641 | `result-track:bdce5dfedc10808920d9130238cef00fe6d23fe1fdcbd6943eb89318f10c05d5` |
| 83 | `theorem` | [insertIdx_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/insertidx-toarray.md) | 665 | `result-track:52af250cc9732275aef96bc9396487a6e14f10e170cdfe8cf547863882adae3a` |
| 84 | `theorem` | [insertIdxIfInBounds_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/insertidxifinbounds-toarray.md) | 688 | `result-track:2c03d45bf861b4a6fcf0e1c8309492ee9112c6eaa9cc0413151c280315a7c730` |
| 85 | `theorem` | [replace_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/replace-toarray.md) | 697 | `result-track:5c9751ff4e6289f06d4bdfa4dbe7557affd00b6577c02a94422c53db42ae8256` |
| 86 | `theorem` | [leftpad_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/leftpad-toarray.md) | 730 | `result-track:9036f78108d76d0ff3e6264ffc0c10b407acff866af7f8578654db94defeea18` |
| 87 | `theorem` | [rightpad_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/ToArrayNamespacedPublic.lean/declarations/rightpad-toarray.md) | 734 | `result-track:4ad48610918664c3e0cb6f945b2e526893d83b58d5b662db48ef4aac28da244b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=11520973f79fb6ad3ad14816d5850839b9e1c68e70609d36edc3f2d894b0ff2d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToArray/Variantbd0f388a042a38ce8dda6ec9ea374efe9761c718f95d803ac876a90293b56767.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ToArray/Variantbd0f388a042a38ce8dda6ec9ea374efe9761c718f95d803ac876a90293b56767.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
