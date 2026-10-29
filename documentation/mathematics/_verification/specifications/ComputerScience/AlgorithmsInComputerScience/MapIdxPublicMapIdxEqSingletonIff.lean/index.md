# Verification target: Map Idx Public Map Idx Eq Singleton Iff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af3ce9f5791845e45e8936d0255ed0d18b559fea",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variant74676ed3cc402fdbac6ffff9c90c218a54c97e6f641442f5f1768ad60ca5e46a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af3ce9f5791845e45e8936d0255ed0d18b559fea`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variant74676ed3cc402fdbac6ffff9c90c218a54c97e6f641442f5f1768ad60ca5e46a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variant74676ed3cc402fdbac6ffff9c90c218a54c97e6f641442f5f1768ad60ca5e46a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [getElem_mapFinIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/getelem-mapfinidx-source-edition-2.md) | 23 | `result-track:a77c0c0856b74213d9adde39d2870b50b932f2ef793fe97674761a0eb1dad73f` |
| 2 | `theorem` | [getElem?_mapFinIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/getelem-mapfinidx.md) | 29 | `result-track:0ce0928b3f368fe2672e3c2a3f5e5545c8f64dcf3f8b33ab9901346bcd2e5411` |
| 3 | `theorem` | [getElem_mapIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/getelem-mapidx.md) | 37 | `result-track:37ecb2529ff74af1f71bdfa82c9b7d6d296d074ddac6dcb227e6298bf7478d6f` |
| 4 | `theorem` | [getElem?_mapIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/getelem-mapidx-source-edition-2.md) | 42 | `result-track:aecca672199a4ad845b6117f5ab2e0945eab1e8887a5380a32149dab5c8b455e` |
| 5 | `theorem` | [mapFinIdx_toVector](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mapfinidx-tovector.md) | 51 | `result-track:58813b2bfca7312e5ff35fde1a711862359b53b70d8f9f6f934a6af9ee6e3f9d` |
| 6 | `theorem` | [mapIdx_toVector](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mapidx-tovector.md) | 55 | `result-track:f4c70253d9949f4043713f6a668d9d9408dba8d15b2e29e9e152a5d760c97fc6` |
| 7 | `theorem` | [toList_zipIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/tolist-zipidx.md) | 65 | `result-track:d4063404285211e9007c106c880cc4f93f271c624caa4f00d722cb8fa15e7131` |
| 8 | `theorem` | [getElem_zipIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/getelem-zipidx.md) | 70 | `result-track:081349d87b69a8ef8e4ab20b5110b6d20c57fee6c637bf4fe440e8386d4d935e` |
| 9 | `theorem` | [mk_mem_zipIdx_iff_le_and_getElem?_sub](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mk-mem-zipidx-iff-le-and-getelem-sub.md) | 75 | `result-track:3f133a4b5cec55b986f9bf5b2aa65ac59870f3467c9dab2b53b5786550007ae6` |
| 10 | `theorem` | [mk_mem_zipIdx_iff_getElem?](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mk-mem-zipidx-iff-getelem.md) | 82 | `result-track:d7af6a0c64016ecfac37db30fc6894ef2d14ae155edf61b42677c5be04a1ccef` |
| 11 | `theorem` | [mem_zipIdx_iff_le_and_getElem?_sub](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mem-zipidx-iff-le-and-getelem-sub.md) | 87 | `result-track:d171c40988ba5f29dc9f19cac35c57835abda0e757dffaf682506facf5039cc4` |
| 12 | `theorem` | [mem_zipIdx_iff_getElem?](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mem-zipidx-iff-getelem.md) | 94 | `result-track:68f621206488e3e5e54995083d26a14a7ba962cb58fac6c2f45e73675ea90b2f` |
| 13 | `theorem` | [mapFinIdx_congr](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mapfinidx-congr.md) | 103 | `result-track:98028dbf15015888629e85744f2816ccb12dfe315084430a928bf0bdf238fe28` |
| 14 | `theorem` | [mapFinIdx_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mapfinidx-empty.md) | 110 | `result-track:cb6e516e354da7ecfcc4d8534b95b93ab5f8bb671f8976cfc51c8d76159fa2ab` |
| 15 | `theorem` | [mapFinIdx_eq_ofFn](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mapfinidx-eq-offn.md) | 113 | `result-track:c4cc46574c9ab819bebe97035892e8c05d00feca3e7a4a16a9b00d5fa177c888` |
| 16 | `theorem` | [mapFinIdx_append](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mapfinidx-append.md) | 119 | `result-track:54af8759d955ffcdecea360be266c8033d81679af21ff003e9a72989dbc06505` |
| 17 | `theorem` | [mapFinIdx_push](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mapfinidx-push.md) | 128 | `result-track:d23f1a666bffc36ef24a3293fddcab5ecd5e19027050f464a2e2c052c3744024` |
| 18 | `theorem` | [mapFinIdx_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mapfinidx-singleton.md) | 133 | `result-track:09d5b001dfa2b01d54816b06c1b26fa68e6bc6673ac1b09f63f3981dedd83e9a` |
| 19 | `theorem` | [mapFinIdx_eq_zipIdx_map](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mapfinidx-eq-zipidx-map.md) | 137 | `result-track:f2953a36c52d028d4ed0a162e77d40f6a7af27c55c64868b2331cffe8ba72a8d` |
| 20 | `theorem` | [exists_of_mem_mapFinIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/exists-of-mem-mapfinidx.md) | 143 | `result-track:5e699b789f292c3dac1558a4234ed4e53109bd75186737114dba0cfb65a7aa53` |
| 21 | `theorem` | [mem_mapFinIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mem-mapfinidx.md) | 148 | `result-track:b4cb2ce3eb70e369e3d81df0799e7d78756727591c18184119860797ee10c337` |
| 22 | `theorem` | [mapFinIdx_eq_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mapfinidx-eq-iff.md) | 153 | `result-track:faaf718825538bf813aee520e3538b0a6a6e1b7ce0c89dd1204997b77d78052d` |
| 23 | `theorem` | [mapFinIdx_eq_singleton_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mapfinidx-eq-singleton-iff.md) | 159 | `result-track:c75367cc19ca081567969dc85cba1398277442354b99a40e241ef1b1543bd27c` |
| 24 | `theorem` | [mapFinIdx_eq_append_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mapfinidx-eq-append-iff.md) | 169 | `result-track:5e60235c7ab5dbf2c643620068d045c594ce3b6a293d6cb6ba3a1a7c35488341` |
| 25 | `theorem` | [mapFinIdx_eq_push_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mapfinidx-eq-push-iff.md) | 189 | `result-track:949c985cccfe5c941453dbb721828300a48dd309c2e2e6f3dabcbdc177ecd791` |
| 26 | `theorem` | [mapFinIdx_eq_mapFinIdx_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mapfinidx-eq-mapfinidx-iff.md) | 204 | `result-track:503f10eb36b27dd534957e888c155cfd0fc85fb85a327fff41214b3a481e64f0` |
| 27 | `theorem` | [mapFinIdx_mapFinIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mapfinidx-mapfinidx.md) | 209 | `result-track:5f972f4c32b60a1a583734876e7a0655433919519b6744783766d7919508e601` |
| 28 | `theorem` | [mapFinIdx_eq_replicate_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mapfinidx-eq-replicate-iff.md) | 215 | `result-track:3ec596bd1b1f3be1dce90c3e3fb6c8527a31e47eadb919d527ff262e7f3a4df4` |
| 29 | `theorem` | [mapFinIdx_reverse](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mapfinidx-reverse.md) | 220 | `result-track:d9bb1efe4a5cb3776a274b0d3d5b4b97526309863e05013871ee93a285ca1292` |
| 30 | `theorem` | [mapIdx_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mapidx-empty.md) | 228 | `result-track:b0a663ba5e2b187a76c219773787176f49c7b9f4ac73b0f8d37f9640432695f2` |
| 31 | `theorem` | [mapFinIdx_eq_mapIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mapfinidx-eq-mapidx.md) | 231 | `result-track:7e97c03bf882295ec3a44a4cea8229df51574dd6dd0811bbff7fd48a1910c748` |
| 32 | `theorem` | [mapIdx_eq_mapFinIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mapidx-eq-mapfinidx.md) | 236 | `result-track:88d260486366aa877d156eda348e5f4b54d55eeb01e037a75726a9f34b4e39fd` |
| 33 | `theorem` | [mapIdx_eq_zipIdx_map](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mapidx-eq-zipidx-map.md) | 240 | `result-track:aa63f99c789586ceb162ffb4d98f159cdc832c928b7dc2168459d1b6aeddeeed` |
| 34 | `theorem` | [mapIdx_append](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mapidx-append.md) | 247 | `result-track:50d5f27f121787761fe8084773c0fa570e4fbcbaeb85d66ac81c2b1c0e175859` |
| 35 | `theorem` | [mapIdx_push](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mapidx-push.md) | 254 | `result-track:8e5501e7a8ec23ed185ef0fa49ae070030de3b8b28cf9f0b2a504ca5eb57dd8a` |
| 36 | `theorem` | [mapIdx_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mapidx-singleton.md) | 258 | `result-track:8818a70ce62f650ecb36561e4f61f80cd9e73357a057926f172cc27d0ed7c365` |
| 37 | `theorem` | [exists_of_mem_mapIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/exists-of-mem-mapidx.md) | 261 | `result-track:64570c3eca6e64e772316a8ab44a485e8478d22f5e57799d7decf5a6d1ad27cd` |
| 38 | `theorem` | [mem_mapIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mem-mapidx.md) | 266 | `result-track:38936b819ed700095431b0a3310e4e0b198bbe7a65a6a26db093abc0493a5a9a` |
| 39 | `theorem` | [mapIdx_eq_push_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mapidx-eq-push-iff.md) | 275 | `result-track:b15c8f1e8012946bd267a489d20db8e0265ee6e3bf66928507e9112055132e6c` |
| 40 | `theorem` | [mapIdx_eq_singleton_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mapidx-eq-singleton-iff.md) | 286 | `result-track:73f6c83dc6ec8f2f3877aebeb52f6083884949eb109dbb1669d97e30b1f84be2` |
| 41 | `theorem` | [mapIdx_eq_append_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mapidx-eq-append-iff.md) | 290 | `result-track:056b8a090c0aa3ae4762863a587476d527e3229b97799f5915663e9867a9d8bf` |
| 42 | `theorem` | [mapIdx_eq_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mapidx-eq-iff.md) | 301 | `result-track:a97aae8ee9295d5ac74ccb4c9da3d4530c9415b40e86db1622a5c83de55fa2d3` |
| 43 | `theorem` | [mapIdx_eq_mapIdx_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mapidx-eq-mapidx-iff.md) | 318 | `result-track:2f9b30960113af29c17380d9d9184cb1131d9a56752495214e685d84c8f54fe8` |
| 44 | `theorem` | [mapIdx_set](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mapidx-set.md) | 323 | `result-track:dc438e5a38ed061d3fd68bfd4af64af7c4dfd0e28640ea43040108048b41fd5e` |
| 45 | `theorem` | [mapIdx_setIfInBounds](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mapidx-setifinbounds.md) | 328 | `result-track:61699ff1aa7aba7651905d1d96bef1d3dbceda75cf5495e259cf09126ac537ae` |
| 46 | `theorem` | [back?_mapIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/back-mapidx.md) | 333 | `result-track:02df3e10443ef5921504f577bf0f972be80c602b46610bc953ccaae3263bd49d` |
| 47 | `theorem` | [back_mapIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/back-mapidx-source-edition-2.md) | 338 | `result-track:0359a1f13300495ba2f65322c117fe0655100143cf0746f88ba2d0704a7a2682` |
| 48 | `theorem` | [mapIdx_mapIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mapidx-mapidx.md) | 343 | `result-track:837400de69dd2357592ad1809a126e4027e2eb7c291c88bf0722ad83232ba130` |
| 49 | `theorem` | [mapIdx_eq_replicate_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mapidx-eq-replicate-iff.md) | 347 | `result-track:b03e7f0374a9236e33b4f78ac2f229dd0568c0208ff91bb68f857121ebba875d` |
| 50 | `theorem` | [mapIdx_reverse](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/mapidx-reverse.md) | 352 | `result-track:44eb3b9aa11e476dfcc5b7bc41ecc5cb92e8b947c484ad4467133a6d53fd3a35` |
| 51 | `theorem` | [toArray_mapFinIdxM](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/toarray-mapfinidxm.md) | 357 | `result-track:ccc2ce5eb6b90366d54c652f269967819c6b0c685750cb9a53d209d1049c7616` |
| 52 | `theorem` | [toArray_mapIdxM](../../../../../ComputerScience/AlgorithmsInComputerScience/MapIdxPublicMapIdxEqSingletonIff.lean/declarations/toarray-mapidxm.md) | 374 | `result-track:c0456fc9403a5053cbb92ad09d4a5917e5ccd51547e9f7221f63ad68e92e9e78` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c07e6bfca0ebbe89b4fe83d74154d5fcf1545ffc6f69bcbc89f93205cf48f470 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variant74676ed3cc402fdbac6ffff9c90c218a54c97e6f641442f5f1768ad60ca5e46a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Variant74676ed3cc402fdbac6ffff9c90c218a54c97e6f641442f5f1768ad60ca5e46a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
