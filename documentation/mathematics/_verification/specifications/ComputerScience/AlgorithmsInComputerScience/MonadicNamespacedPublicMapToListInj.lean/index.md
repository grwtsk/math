# Verification target: Monadic Namespaced Public Map To List Inj

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94ded2c5c6bf58c420f2b51be1da906e660f0055",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant043d83de955e2519e555795cae4371c3c24dbc20bfc0819b39bb592a20654c11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94ded2c5c6bf58c420f2b51be1da906e660f0055`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant043d83de955e2519e555795cae4371c3c24dbc20bfc0819b39bb592a20654c11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant043d83de955e2519e555795cae4371c3c24dbc20bfc0819b39bb592a20654c11.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Bool` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_toList_inj](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/map-tolist-inj.md) | 37 | `result-track:2b34c3083edcf04ed9a1efd929e99ad397c150fb08bc748afa086f7410a58031` |
| 2 | `theorem` | [mapM_pure](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/mapm-pure.md) | 44 | `result-track:18c0d87e25aa2b1d3eecad3596fbfc55c3bde45dd1d86a3351db575a7815fd51` |
| 3 | `theorem` | [idRun_mapM](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/idrun-mapm.md) | 48 | `result-track:1fac669be6ca1b142d1a96b8c4a33c60a4e5e801abc00de017f8d698ddba1d33` |
| 4 | `theorem` | [mapM_map](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/mapm-map.md) | 51 | `result-track:3c4ff9032580f6f763c44bdb058fc7f5f341a844991843004f35c994226e4c5e` |
| 5 | `theorem` | [mapM_append](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/mapm-append.md) | 56 | `result-track:2464d710eca7b57deabd46e6357334ab8258b8c5fd1e1d7b7710eeb0952e2988` |
| 6 | `theorem` | [mapM_eq_foldlM_push](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/mapm-eq-foldlm-push.md) | 62 | `result-track:2c6a1562c872a64b7099a5e38e7efb56bd0659a58a142d3ff5d4868ed1bceb35` |
| 7 | `theorem` | [foldlM_map](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/foldlm-map.md) | 79 | `result-track:792e988a50ccdfb8d314670add4d30c532821b809d4adae6e3d1a5fb367b3af3` |
| 8 | `theorem` | [foldrM_map](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/foldrm-map.md) | 85 | `result-track:001578d1902194f817a277353dba07cceca919e86d262e2a5ffde099ccff56db` |
| 9 | `theorem` | [foldlM_filterMap](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/foldlm-filtermap.md) | 92 | `result-track:a32ac45d62db86208b4523cc59121be28e33d253bfd518cf2a571d047abc6548` |
| 10 | `theorem` | [foldrM_filterMap](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/foldrm-filtermap.md) | 101 | `result-track:33f356b8c41185ece4dce169e4b90bc200a247566b374b7f7fdd16a7a655c20c` |
| 11 | `theorem` | [foldlM_filter](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/foldlm-filter.md) | 110 | `result-track:8014b72c2636a3512e0879a17a4f119b2a343b6331f82d434e62f5098dbe0530` |
| 12 | `theorem` | [foldrM_filter](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/foldrm-filter.md) | 118 | `result-track:0611d2ad101faa2da2684f48f74b3523e708d79c78c769a8b18e6b1837cddb60` |
| 13 | `theorem` | [foldlM_attachWith](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/foldlm-attachwith.md) | 126 | `result-track:302f7b2c259f6a8d925bea896cc73019744c69fedfbef63373221d62f70d65f6` |
| 14 | `theorem` | [foldrM_attachWith](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/foldrm-attachwith.md) | 134 | `result-track:13512cbf35e01dfd70fdbc043c1d3ed45d5ef8d8bbd8d99c0363be5d604338aa` |
| 15 | `theorem` | [forM_congr](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/form-congr.md) | 145 | `result-track:28ec61a3bc3d82ca735db1947549451d94e0e31a78f746ff14286b1bdbe17c3e` |
| 16 | `theorem` | [forM_append](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/form-append.md) | 151 | `result-track:aced1c27e55bb71d7bfa4ea24708301295494911ba30272f8ebe172f640defa9` |
| 17 | `theorem` | [forM_map](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/form-map.md) | 157 | `result-track:050d71a7abf724a8117e9a86b33f2cf1d9665c96e26db1e38fc1640965780e36` |
| 18 | `theorem` | [forIn'_congr](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/forin-congr.md) | 164 | `result-track:c783a5b19de95df3b591304e3bb603ffe5050eaf553fa83d8b545c771de0eda7` |
| 19 | `theorem` | [forIn'_eq_foldlM](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/forin-eq-foldlm.md) | 178 | `result-track:e08ac57f0812cf48f65a054df57bfab0249b2d093ff6c4372ca0b58edd23df02` |
| 20 | `theorem` | [forIn'_yield_eq_foldlM](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/forin-yield-eq-foldlm-source-edition-2.md) | 189 | `result-track:e40a4950487de24a617809d7ee6b9f9fcf9be8f1546e640ea2ae867dbd753b51` |
| 21 | `theorem` | [forIn'_pure_yield_eq_foldl](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/forin-pure-yield-eq-foldl.md) | 196 | `result-track:4aa2b279257976a970991b6c354e53b0b264e1980bcc1618a6c9c33d7bda5ab6` |
| 22 | `theorem` | [idRun_forIn'_yield_eq_foldl](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/idrun-forin-yield-eq-foldl-source-edition-2.md) | 203 | `result-track:c1092d61b5cf2917fcb5cf5015639fe5bf5ea89b5125eeea165eba9d3adf2e6c` |
| 23 | `theorem` | [forIn'_map](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/forin-map-source-edition-2.md) | 209 | `result-track:aa3275d108ba42bb253487bb1d970a90aa4fe62372de20f71b9e74d45340500e` |
| 24 | `theorem` | [forIn_eq_foldlM](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/forin-eq-foldlm-source-edition-2.md) | 219 | `result-track:f45326e7065e9847a23c03db4ce7eec4c82ba0e343534d9c0d4f3bc9a3b06866` |
| 25 | `theorem` | [forIn_yield_eq_foldlM](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/forin-yield-eq-foldlm.md) | 230 | `result-track:0fb087ac98d02dad1d3b5c4c5e531147f2a87444ec1cdb1bb5370dc522f75a3f` |
| 26 | `theorem` | [forIn_pure_yield_eq_foldl](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/forin-pure-yield-eq-foldl-source-edition-2.md) | 237 | `result-track:e4b8d3dc7db932fe31f433b93affc2b99d59cbbedda95f2cfa8f1fb801236cbd` |
| 27 | `theorem` | [idRun_forIn_yield_eq_foldl](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/idrun-forin-yield-eq-foldl.md) | 244 | `result-track:2be8cf149286eda29a452e2dfa36d3b23c1d207e8199ad2ef471105381a4cb42` |
| 28 | `theorem` | [forIn_map](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/forin-map.md) | 250 | `result-track:0ca7b4a7ae672aa0cd5a6b98db85749cc7114bad34d19d290295941dcf532b22` |
| 29 | `theorem` | [anyM_pure](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/anym-pure.md) | 258 | `result-track:2c37d579ecfe33bae131b3e6fdd5cc43c3d86ed5ede96d202aa10b40c6cc3443` |
| 30 | `theorem` | [allM_pure](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/allm-pure.md) | 263 | `result-track:13894a54760431b93308eebb48f41f53f75e1e57f6df26bb12184483acb19aba` |
| 31 | `theorem` | [findM?_pure](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/findm-pure.md) | 271 | `result-track:2bad008fe15f887b9c3a318627e0897b4725446e02411672f5cdf8f63550cfea` |
| 32 | `theorem` | [findSomeM?_pure](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/findsomem-pure.md) | 277 | `result-track:943c09ff26919479030d3ec75f48f2fb9593858bcf11e3e3db5ef74817d22b96` |
| 33 | `theorem` | [filterM_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/filterm-toarray.md) | 286 | `result-track:da631052c255d839d99e44ebe524c0dbaa551e04c11b485a86f0a41669227e0f` |
| 34 | `theorem` | [filterM_toArray'](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/filterm-toarray-source-edition-2.md) | 301 | `result-track:ec44123d588fdc052c67ba3dbd0658683c4c5dfd8b3b5442cd18277c01cc4b86` |
| 35 | `theorem` | [filterRevM_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/filterrevm-toarray-source-edition-2.md) | 306 | `result-track:a2bc096afbfce5609cc812844000faed10ef7454cca231370601b28f99333a55` |
| 36 | `theorem` | [filterRevM_toArray'](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/filterrevm-toarray.md) | 313 | `result-track:8a65a27a3db9305aba6d6e3e03702b9e24e376342283de7a5d004e6a2616834c` |
| 37 | `theorem` | [filterMapM_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/filtermapm-toarray-source-edition-2.md) | 318 | `result-track:d3bd0dcd83089c988df6b246113bbacd07675c7534dd0711ac9e38b21ac235e3` |
| 38 | `theorem` | [filterMapM_toArray'](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/filtermapm-toarray.md) | 331 | `result-track:977c2225a2275ba373c13f3599c574af007d7519d4a63328082a199bb5fbde0a` |
| 39 | `theorem` | [flatMapM_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/flatmapm-toarray.md) | 336 | `result-track:4d409cb044da432d204e8371ba559eb639952711ec4bf562f2947f96491c8577` |
| 40 | `theorem` | [filterM_congr](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/filterm-congr.md) | 353 | `result-track:ad6af7b74f8d01d9dffbaa864e96ea47b0b0b94efcc7e7e2095c258901a0eb6c` |
| 41 | `theorem` | [filterRevM_congr](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/filterrevm-congr.md) | 359 | `result-track:549ac2f383a224e7ebff61e1e2f4e78bce0b84ea8102c699c3df7c398c35a897` |
| 42 | `theorem` | [filterMapM_congr](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/filtermapm-congr.md) | 365 | `result-track:575141623c22fa1f75397926fb928952c49480b3e7e06b0c1e865360c02f3ca3` |
| 43 | `theorem` | [flatMapM_congr](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/flatmapm-congr.md) | 371 | `result-track:2e5d102a7ef1e4dfb8472eb6881b45901f5bdc4f1a050707e0a48b050edd0ebc` |
| 44 | `theorem` | [toList_filterM](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/tolist-filterm.md) | 377 | `result-track:61bf86e96f9996fc1af2247eebc9aa85645c1537d5ba34d6fe9dd07844749b23` |
| 45 | `theorem` | [toList_filterRevM](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/tolist-filterrevm.md) | 382 | `result-track:8fed43513302c1ccdc09bc429198199d39e83cecc7b7b5fc32b42a2a12014905` |
| 46 | `theorem` | [toList_filterMapM](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/tolist-filtermapm.md) | 387 | `result-track:57482fa20aa4b2d591fa67e6fc4bd85c906632adfefe2db40191a605600138d5` |
| 47 | `theorem` | [toList_flatMapM](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/tolist-flatmapm.md) | 392 | `result-track:a53daab07915c1a57241df031a9c9d30bdc55e29bdc4780c7dad635cb5693406` |
| 48 | `theorem` | [foldlM_subtype](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/foldlm-subtype.md) | 403 | `result-track:708d778bf400145a91fed303f441d06b609ac8954d07deed84ae35c6befc83bb` |
| 49 | `theorem` | [foldlM_wfParam](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/foldlm-wfparam.md) | 412 | `result-track:3bd7466b918e2e8ccbb4d9a4fbad1eb188bdc495de347cc1dfcdccf727fffdd7` |
| 50 | `theorem` | [foldlM_unattach](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/foldlm-unattach.md) | 416 | `result-track:1e620b5525568ba4b014b1c038fc9caa6d626c71c7ab36528e3d204edabda299` |
| 51 | `theorem` | [foldrM_subtype](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/foldrm-subtype.md) | 426 | `result-track:39b89b85688bdfd2c15bd69e13d730e6f8bdd75f168ecfd14783abedf190138e` |
| 52 | `theorem` | [foldrM_wfParam](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/foldrm-wfparam.md) | 436 | `result-track:1216704139d9da51c0de2fec07156ce676cff407205768d47663b11897f07ce6` |
| 53 | `theorem` | [foldrM_unattach](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/foldrm-unattach.md) | 440 | `result-track:4f728a4fbe06fdf7ad05d9da5290f5399cb3505fe2bb3d07e6fc38a8769de1f7` |
| 54 | `theorem` | [mapM_subtype](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/mapm-subtype.md) | 450 | `result-track:7d750e474ed910e2e213c91344ce762874ea2fe142b2f3177a41528695178b66` |
| 55 | `theorem` | [mapM_wfParam](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/mapm-wfparam.md) | 457 | `result-track:334d9be4bfa9287a371b58dae0f5a4f52e4efe27b4f6e7b2209581364827a198` |
| 56 | `theorem` | [mapM_unattach](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/mapm-unattach.md) | 461 | `result-track:7c6641cac660a00a44fba9ca6bfe11241d218e313d8d284167c3d7ee2f8da83d` |
| 57 | `theorem` | [filterMapM_subtype](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/filtermapm-subtype.md) | 466 | `result-track:34e06629ba1f38bf67e251b9b5f065893a0bad0a3908ca896dd00c460a2893f9` |
| 58 | `theorem` | [filterMapM_wfParam](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/filtermapm-wfparam.md) | 475 | `result-track:b8187cd8bbb76f430d7160711745757d235df2997e5e2d374f9b99bc5cd4de2b` |
| 59 | `theorem` | [filterMapM_unattach](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/filtermapm-unattach.md) | 480 | `result-track:de104adfdf53fe052db331919102922fcdd40185b05bc7a4e403a965cb7dc28e` |
| 60 | `theorem` | [flatMapM_subtype](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/flatmapm-subtype.md) | 486 | `result-track:f45897055b9cd9407e554628d89506af465927f7c972eb2f9f6937ac2e343a3d` |
| 61 | `theorem` | [flatMapM_wfParam](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/flatmapm-wfparam.md) | 494 | `result-track:47c13c20445276a842d3c6aca5e34229589e1789b75378aa5ea79446f13d9e05` |
| 62 | `theorem` | [flatMapM_unattach](../../../../../ComputerScience/AlgorithmsInComputerScience/MonadicNamespacedPublicMapToListInj.lean/declarations/flatmapm-unattach.md) | 499 | `result-track:43f1e8799a2f42564e07999a263d1257394fb96d424242effdef425b0c3d9af1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d8100609da863bcd42a8905049b7f637797d431a0cfa8e6ddb31943f9efdd374 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant043d83de955e2519e555795cae4371c3c24dbc20bfc0819b39bb592a20654c11.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monadic/Variant043d83de955e2519e555795cae4371c3c24dbc20bfc0819b39bb592a20654c11.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
