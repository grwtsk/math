# Verification target: Erase Namespaced Public Erase PEmpty

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de6d85b0e8b7751aa61d506a7060b32350efb108",
  "lexical_observation_count": 74,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant58c14e7652b61aa37810456e620961064c42ee2c0d00ea523861700deab2d8d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de6d85b0e8b7751aa61d506a7060b32350efb108`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant58c14e7652b61aa37810456e620961064c42ee2c0d00ea523861700deab2d8d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant58c14e7652b61aa37810456e620961064c42ee2c0d00ea523861700deab2d8d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Bootstrap` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Bool` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.List.Erase` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.Basic` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.Erase` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eraseP_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/erasep-empty.md) | 43 | `result-track:a63841f935934d1683a88d3db083ce73a28698ad384e8b2afa9bc3b34f58583e` |
| 2 | `theorem` | [eraseP_of_forall_mem_not](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/erasep-of-forall-mem-not.md) | 45 | `result-track:3b105d8d89975a159cc80d8cb0859559bf3c878898b8074847837dacf8bed096` |
| 3 | `theorem` | [eraseP_of_forall_getElem_not](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/erasep-of-forall-getelem-not.md) | 49 | `result-track:9d5db11a7a905be6a2cb43b9fa0dc4dd24fe3b48dd52e9e1422875cdaf0e0981` |
| 4 | `theorem` | [eraseP_eq_empty_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/erasep-eq-empty-iff.md) | 55 | `result-track:59969e23d5c2916d13dce155c702bf275a423e8321b0b57d44673c7962825473` |
| 5 | `theorem` | [eraseP_ne_empty_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/erasep-ne-empty-iff.md) | 59 | `result-track:b3507f3d0588c3117f77cae6eb2135a2c63b416ec19e126e1aa8209fb73d6b3e` |
| 6 | `theorem` | [exists_of_eraseP](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/exists-of-erasep.md) | 62 | `result-track:ed3da8e84ec9b5181eb08a1c64bed03b22999ce2ea5e1cbca99d72ab9bab4805` |
| 7 | `theorem` | [exists_or_eq_self_of_eraseP](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/exists-or-eq-self-of-erasep.md) | 69 | `result-track:1b767b8c90f962f8283114584477a78b7a5100f4f9afc46fe858a299c048b847` |
| 8 | `theorem` | [size_eraseP_of_mem](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/size-erasep-of-mem.md) | 78 | `result-track:c04e54174747e060cba9eda38d90de7fafb265e066eec6178e45a885dc7b9f78` |
| 9 | `theorem` | [size_eraseP](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/size-erasep.md) | 84 | `result-track:9d6d2c27b640b3e977939d8f5a5cafd6b218de145a732d4c2b63690b60cfe6a4` |
| 10 | `theorem` | [size_eraseP_le](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/size-erasep-le.md) | 93 | `result-track:e6cd31945d271c17e9b0fa979f09d7e8e190ae19a175d1768efb56297bcd100b` |
| 11 | `theorem` | [le_size_eraseP](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/le-size-erasep.md) | 97 | `result-track:ca904b5f589cb3a1c02b26ae2a09b8f4e0a1acdc848a4efddad88f096a88cc23` |
| 12 | `theorem` | [mem_of_mem_eraseP](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/mem-of-mem-erasep.md) | 102 | `result-track:c076a402f408587a5ab7307b0c975732be115cac4e16c8e1c6246658ed6e3f5f` |
| 13 | `theorem` | [mem_eraseP_of_neg](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/mem-erasep-of-neg.md) | 106 | `result-track:3a8c836e9f0105817a36a6cbce7ee96e1a7d1631f403333f88b1ee3bcd9a13b1` |
| 14 | `theorem` | [eraseP_eq_self_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/erasep-eq-self-iff.md) | 110 | `result-track:466e3b6d81d3e48ead514b5d1f476b2721c36a677834781e3629efc3ce8111f0` |
| 15 | `theorem` | [eraseP_map](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/erasep-map.md) | 115 | `result-track:ef08d734771b7da3cf43c93ce5ced23f55fbe8a02c26716ead172e40272d347b` |
| 16 | `theorem` | [eraseP_filterMap](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/erasep-filtermap.md) | 120 | `result-track:02f4511225893fa6764271741178d8161f5a93697aa3a5f3885ac94e11ee93b8` |
| 17 | `theorem` | [eraseP_filter](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/erasep-filter.md) | 126 | `result-track:f8b3bc7e31d58e623867fa6aafd09e801184a135a0512e2b5efdfb0a488a23b6` |
| 18 | `theorem` | [eraseP_append_left](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/erasep-append-left.md) | 131 | `result-track:6977d94b103df0fd1a544552cd4a97c41748e301ee0d9f2e9439621a893b66d9` |
| 19 | `theorem` | [eraseP_append_right](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/erasep-append-right.md) | 137 | `result-track:10af36a3d3357f05e3d1cd512b163ede9a0aa091c9bfbb3ad266c171e9d0a2e6` |
| 20 | `theorem` | [eraseP_append](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/erasep-append.md) | 144 | `result-track:7c068a4bb05f99db841f66ee02225e429f59190f80fd2311a26a74d1cd8038f7` |
| 21 | `theorem` | [eraseP_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/erasep-replicate.md) | 152 | `result-track:d7c2c512851761a1f6fe0125bf69e6ce351ad8be7f4ca0265b5864f64ea2ac56` |
| 22 | `theorem` | [eraseP_replicate_of_pos](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/erasep-replicate-of-pos.md) | 157 | `result-track:cde42a06e4237e4d00ca5e9fa5b1c86c1b232827db60ba587125abdacac68787` |
| 23 | `theorem` | [eraseP_replicate_of_neg](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/erasep-replicate-of-neg.md) | 162 | `result-track:2292ebdc88887cdd2d1842e71e72cf23602f59a377dab3a916c3a9bbff9a99f5` |
| 24 | `theorem` | [eraseP_eq_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/erasep-eq-iff.md) | 167 | `result-track:40741435fe966698162ce492b7ad535ab5696bf7a531b4f698d17df1be0f21fb` |
| 25 | `theorem` | [eraseP_comm](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/erasep-comm.md) | 183 | `result-track:de259bd7e994a2661ac8183d9779f04716137d3f8ccfe341c994ff0be167798e` |
| 26 | `theorem` | [erase_of_not_mem](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/erase-of-not-mem.md) | 193 | `result-track:1834a93f13ebe0ffafa350a5382a686cfe907cf240e112bc85c24d99bef5f9d6` |
| 27 | `theorem` | [erase_eq_eraseP'](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/erase-eq-erasep-source-edition-2.md) | 198 | `result-track:87a0ce7232330f058de3669d877db580558c7a8f2307a20af043336710f8e301` |
| 28 | `theorem` | [erase_eq_eraseP](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/erase-eq-erasep.md) | 203 | `result-track:21329f047508c871fa16a5e8c4b6569fbbee7185d058dff0eead39a35de73312` |
| 29 | `theorem` | [erase_eq_empty_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/erase-eq-empty-iff.md) | 207 | `result-track:48dbbcc4eead3fd8701771ffc56bec7e83e9ee43a516fa6b5693366e20abb5e2` |
| 30 | `theorem` | [erase_ne_empty_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/erase-ne-empty-iff.md) | 212 | `result-track:3ddac2f8d80a38043b265cd4665a10f4559f7f829e0ff6b156db1833ff579b9f` |
| 31 | `theorem` | [exists_erase_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/exists-erase-eq.md) | 217 | `result-track:15d2acba709c478aa947623b04a923e127da77fc900223001fea849200ed2d9d` |
| 32 | `theorem` | [size_erase_of_mem](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/size-erase-of-mem.md) | 222 | `result-track:0a718809c70a7c948509ec8965e8377a35ae88a1b3b2b065f8bc96fb6bfe4086` |
| 33 | `theorem` | [size_erase](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/size-erase.md) | 227 | `result-track:a2b676acf13e2620afe4b30c268e8fb6437a0dfcdf8e0439aea5099c74df47ef` |
| 34 | `theorem` | [size_erase_le](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/size-erase-le.md) | 233 | `result-track:06b0da692e076ae613f574df564b1fef497cdbd4c18e5e6ceac3232a2629e317` |
| 35 | `theorem` | [le_size_erase](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/le-size-erase.md) | 237 | `result-track:0d66cfae59836b687808cc4cf34c3cc9b38e821c57ab3c1cab686174bd6a9134` |
| 36 | `theorem` | [mem_of_mem_erase](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/mem-of-mem-erase.md) | 242 | `result-track:de0403a5139e9aeaa1766ca35f93f733b673dcdc86cc9bd22b00a8b064141495` |
| 37 | `theorem` | [mem_erase_of_ne](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/mem-erase-of-ne.md) | 246 | `result-track:30820ef80c6c99dc40afe137f0decfc58f09823b0588c1381864fd9f8a862df1` |
| 38 | `theorem` | [erase_eq_self_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/erase-eq-self-iff.md) | 250 | `result-track:8e7bb044c4af22c5365ea0125113cdd92dac1573cf31e46d0f606b240b7162a2` |
| 39 | `theorem` | [erase_filter](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/erase-filter.md) | 255 | `result-track:101c514f15a04d2223433af5c3fc252bea3527a11219592f9d6c25e2da9c5039` |
| 40 | `theorem` | [erase_append_left](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/erase-append-left.md) | 260 | `result-track:7470d9abe033065eb9444b380934800b6949e1046ed36f039af210663fb851a4` |
| 41 | `theorem` | [erase_append_right](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/erase-append-right.md) | 266 | `result-track:864ead44037f3e15e5dc775df374f004ad23428ba654533d816abe52dc72d49b` |
| 42 | `theorem` | [erase_append](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/erase-append.md) | 273 | `result-track:c3427406b7a799f7974516ae4010e88d4b5cd90913b58f93c32ce46683df18ed` |
| 43 | `theorem` | [erase_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/erase-replicate.md) | 281 | `result-track:1b2572d9f2c79e216546bff83000a6ccbbe2c5eb12e9c2c8eb05817bed644681` |
| 44 | `theorem` | [erase_comm](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/erase-comm.md) | 290 | `result-track:3d4ebfe9631246f17417f979f6fd58b2ad2e67979fc31e5b26064ab4d1a3ef7a` |
| 45 | `theorem` | [erase_eq_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/erase-eq-iff.md) | 295 | `result-track:111412cbc33191f3fabf6d078a88d6af5d8780e077b7bed2d0883e6cce7f67c2` |
| 46 | `theorem` | [erase_replicate_self](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/erase-replicate-self.md) | 309 | `result-track:2883bf8ac35b4ee0a745cd97c01018fc8319de7412a624ab173ac6980c32f7fe` |
| 47 | `theorem` | [erase_replicate_ne](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/erase-replicate-ne.md) | 314 | `result-track:72b1b51e518f021985de945bc817c5400883b3d4355bbe6917243b5732d228f8` |
| 48 | `theorem` | [eraseIdxIfInBounds_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/eraseidxifinbounds-eq.md) | 324 | `result-track:6817ebe87fdfbd6518236c364236d739169ff87902ec1334ad510ec3598f4f38` |
| 49 | `theorem` | [eraseIdx_eq_eraseIdxIfInBounds](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/eraseidx-eq-eraseidxifinbounds.md) | 330 | `result-track:20d7043ad1d33e8fd801892c896c21064a0af77c8e3c23c8ef4e1c50cbbd387d` |
| 50 | `theorem` | [eraseIdx_eq_take_drop_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/eraseidx-eq-take-drop-succ.md) | 334 | `result-track:5bceb1aeb2aa31d565023c9a14dc47e00f2e38339acbaa8aa55d34a46337c083` |
| 51 | `theorem` | [getElem?_eraseIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/getelem-eraseidx-source-edition-2.md) | 348 | `result-track:cf5fb76dde7d4f1f569b876024e2c83e374bc0bdc90057093ec66f2ed4d8a2d1` |
| 52 | `theorem` | [getElem?_eraseIdx_of_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/getelem-eraseidx-of-lt-source-edition-2.md) | 353 | `result-track:574ddf391008c8c394d700f351ee96aacb50435eaaa10554c3f76ded0f5ceff2` |
| 53 | `theorem` | [getElem?_eraseIdx_of_ge](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/getelem-eraseidx-of-ge.md) | 358 | `result-track:3e80c8a737c6eb257019ed01edabce3e631d7075c18f7165a18e086bf38d82e9` |
| 54 | `theorem` | [getElem_eraseIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/getelem-eraseidx.md) | 366 | `result-track:4e0538354cab9f2ebbbaede056d19659c91d688ffc7b8b5b78296b5eeb915677` |
| 55 | `theorem` | [eraseIdx_eq_empty_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/eraseidx-eq-empty-iff.md) | 375 | `result-track:a9f0b4d23210de18c2c53ef5b2c3f515b48118e5f9384161236ef9cc5974f7eb` |
| 56 | `theorem` | [eraseIdx_ne_empty_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/eraseidx-ne-empty-iff.md) | 382 | `result-track:3a86dea51c793d3efd162358182eb3b7ba6ec93c77ea0887beb8b039248033d1` |
| 57 | `theorem` | [mem_of_mem_eraseIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/mem-of-mem-eraseidx.md) | 389 | `result-track:3e7a06a3469ea39f70bef2263327bd264cb291bd112e4b47933aefc0bf0e7f6a` |
| 58 | `theorem` | [eraseIdx_append_of_lt_size](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/eraseidx-append-of-lt-size.md) | 395 | `result-track:53550817103034d418223273f2acb270f24a0d8fe618fdcbb886acb84e4fdd92` |
| 59 | `theorem` | [eraseIdx_append_of_size_le](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/eraseidx-append-of-size-le.md) | 402 | `result-track:9630a4fb5dd027a405d7a834e789705e1d518c259c8ae75b37173953d9f0475f` |
| 60 | `theorem` | [eraseIdx_append](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/eraseidx-append.md) | 410 | `result-track:a3db1ef9e9e8241f0e9673ea7b7680aac8cf1996f541c0404fbc6977403045b0` |
| 61 | `theorem` | [eraseIdx_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/eraseidx-replicate.md) | 422 | `result-track:51c6f1debd68d90d5d24952f593aae2bfc8be6b2fca3b6107841ccf1640b2dbb` |
| 62 | `theorem` | [mem_eraseIdx_iff_getElem](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/mem-eraseidx-iff-getelem-source-edition-2.md) | 428 | `result-track:c8251a05edd54dd5d0538e7d238ac09af46ab56b5630c619e28df0a85f8ee836` |
| 63 | `theorem` | [mem_eraseIdx_iff_getElem?](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/mem-eraseidx-iff-getelem.md) | 432 | `result-track:5159fdcc63ab9bd9a6f828f84b8319cf325802aa8b3e78597bee028eff34d539` |
| 64 | `theorem` | [erase_eq_eraseIdx_of_idxOf](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/erase-eq-eraseidx-of-idxof.md) | 436 | `result-track:f826b734f417af8a0848674cef0a538cad63072754c33ddd6a15ba515c95bcc9` |
| 65 | `theorem` | [getElem_eraseIdx_of_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/getelem-eraseidx-of-lt.md) | 442 | `result-track:03cde3ac2ce0671a8c7b9887a58f8bb10ee6bf3c6f551945ecb6ef5fbaf9af38` |
| 66 | `theorem` | [getElem_eraseIdx_of_ge](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/getelem-eraseidx-of-ge-source-edition-2.md) | 447 | `result-track:c847fde71d8b91bff4ad9b8261d5496430d04ab622935aea89fee77a6bf529ea` |
| 67 | `theorem` | [eraseIdx_set_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/eraseidx-set-eq.md) | 452 | `result-track:48294bf52e8f4c85c45c3f4ad6b13670220f9c8ce6a223a0a3c7cd5648b33b16` |
| 68 | `theorem` | [eraseIdx_set_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/eraseidx-set-lt.md) | 457 | `result-track:f5719358152a4f908e1140b3dbaeed538bbbc5e267ae05fd78612cecb25d8221` |
| 69 | `theorem` | [eraseIdx_set_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/eraseidx-set-gt.md) | 462 | `result-track:a20320b09300a4ee796ced85984fe64d64bcf24cd2486fdf44634046061b120e` |
| 70 | `theorem` | [eraseIdx_set](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/eraseidx-set.md) | 468 | `result-track:6f1ea45ae1b9302b159e49fe26784c25c0ed7a45543ac6e477888c5ab660cdb1` |
| 71 | `theorem` | [set_eraseIdx_le](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/set-eraseidx-le.md) | 485 | `result-track:296162494c5e4b2b7daed1d8dd373d3e0edc12dd4d81a6fb6335c4a7a6dc6437` |
| 72 | `theorem` | [set_eraseIdx_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/set-eraseidx-gt.md) | 491 | `result-track:101e09214c4bdc7d1dd9c21876efb36a0b0649ca6303811a3e30b25010e443f6` |
| 73 | `theorem` | [set_eraseIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/set-eraseidx.md) | 497 | `result-track:641f052dfad1236b949908d2a695f09e00661faeedbe2449289633163f1377ae` |
| 74 | `theorem` | [set_getElem_succ_eraseIdx_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/EraseNamespacedPublicErasePEmpty.lean/declarations/set-getelem-succ-eraseidx-succ.md) | 509 | `result-track:ea1dd6fe6663d3beb399a64f1e13e1185b896160c3af73333db75b68b18a3ef7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=11691418348dc3b6dc90e2645208924c26498c9e048d1eb49b9bd544a89484a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant58c14e7652b61aa37810456e620961064c42ee2c0d00ea523861700deab2d8d7.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Erase/Variant58c14e7652b61aa37810456e620961064c42ee2c0d00ea523861700deab2d8d7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
