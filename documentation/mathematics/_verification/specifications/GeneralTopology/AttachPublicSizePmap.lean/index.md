# Verification target: Attach Public Size Pmap

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9502589a50e673c3faefbb7f95b349514d6ed257",
  "lexical_observation_count": 129,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Attach/Variant3a4ab48b28c6ef486431ba32dabe800716c5277d101335492834bd66de705c63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/AttachPublicSizePmap.lean/index.md) · [Full source](../../../../GeneralTopology/AttachPublicSizePmap.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9502589a50e673c3faefbb7f95b349514d6ed257`.

Source path: `GRWTSK/Topology/GeneralTopology/Attach/Variant3a4ab48b28c6ef486431ba32dabe800716c5277d101335492834bd66de705c63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Attach/Variant3a4ab48b28c6ef486431ba32dabe800716c5277d101335492834bd66de705c63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Bootstrap` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Count` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pmap](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/pmap.md) | 28 | `declaration-track:db7750ff190b5869f6eb739831a55e2e4558d26d159365b212238ddb2a66a5b6` |
| 2 | `def` | [attachWithImpl](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/attachwithimpl.md) | 35 | `declaration-track:141115e91e6d507aca64c566b60013951633e2930e91f5ced8a1603f26cf0981` |
| 3 | `def` | [attachWith](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/attachwith.md) | 44 | `declaration-track:304e27cfcee05e1c26b7b8dd66bbb229b8a474c761dff1a79083494f29dd9960` |
| 4 | `def` | [attach](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/attach.md) | 59 | `declaration-track:8158ac071ac308abcd482bad117bed37ed1fad5c5a03307b9cb73b77d5e8d500` |
| 5 | `theorem` | [_root_.List.attachWith_toArray](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/root-list-attachwith-toarray.md) | 61 | `result-track:63c6e15723ddb6f939dfc3d60f9a6b7cc04412030fa47b32eb9d763c544f8497` |
| 6 | `theorem` | [_root_.List.attach_toArray](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/root-list-attach-toarray.md) | 65 | `result-track:3877c9d8ba0ffb90debe7acda3e9dda1f48a9d75bc14f99a4359bcf7b7d4bd9b` |
| 7 | `theorem` | [_root_.List.pmap_toArray](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/root-list-pmap-toarray.md) | 69 | `result-track:0326387284f27cecab0f8d98ea2d8a5f0347b5243a6480240ae339ca18805106` |
| 8 | `theorem` | [toList_attachWith](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/tolist-attachwith.md) | 73 | `result-track:f59dc01a6a6a1f9e01174d34f2ff34958f333eea64f9b9a6a46152579dec010e` |
| 9 | `theorem` | [toList_attach](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/tolist-attach.md) | 77 | `result-track:55f37b98eebfe4db94c0c0ab9476b76d527759579137a9dc22e1756ad92a93f8` |
| 10 | `theorem` | [toList_pmap](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/tolist-pmap.md) | 81 | `result-track:ecd51df744c6bf7d47cedaeccaaab1bd5883bae2b1c466328975db6198b448ab` |
| 11 | `def` | [pmapImpl](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/pmapimpl.md) | 86 | `declaration-track:569b378fa7a3e5d3151a6c05f9ee40efb4068ecc11c610534d2214315aa2779d` |
| 12 | `theorem` | [pmap_eq_pmapImpl](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/pmap-eq-pmapimpl.md) | 89 | `result-track:7d18b71b2a941cf2cbff5a592eb9ddb7f69fa87f05fce569f6d8df328f554e5f` |
| 13 | `theorem` | [pmap_empty](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/pmap-empty.md) | 97 | `result-track:f740f7f8ec8474667de4b64914e8bf8dd2047780b5f9367b9712557790459c7e` |
| 14 | `theorem` | [pmap_push](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/pmap-push.md) | 99 | `result-track:8634017db670fb5ad234a7d11b0adc10d06dec9ccb24c0d63f6967694536dfff` |
| 15 | `theorem` | [attach_empty](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/attach-empty.md) | 104 | `result-track:8489d2f7351809e8484a3af37001d67fdd556a8b202ce478a67980446185be5f` |
| 16 | `theorem` | [attachWith_empty](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/attachwith-empty.md) | 106 | `result-track:a89a254718621a77c694baf9e11d3f1e8c5362753d746ffc93c2830776f0efd3` |
| 17 | `theorem` | [_root_.List.attachWith_mem_toArray](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/root-list-attachwith-mem-toarray.md) | 108 | `result-track:d945951dc79b8ca9724fcd18f4e34d939010d0a04a28f4ae6ec9a001350aa5c0` |
| 18 | `theorem` | [pmap_eq_map](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/pmap-eq-map.md) | 116 | `result-track:03abaecc5a6c18dd3133aa91e52eeae0c6f23983c1e9772c15ef84472441f0a8` |
| 19 | `theorem` | [pmap_congr_left](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/pmap-congr-left.md) | 120 | `result-track:aa80e5d10883c2c2435e8e3b76f6d6f5b18cacdbd57ea4a72a273ea2831d653a` |
| 20 | `theorem` | [map_pmap](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/map-pmap.md) | 127 | `result-track:47ec32a244d52db3c3129d7c6896a6c5f804e3d669c88d3d97ed0b0a6e2b8caf` |
| 21 | `theorem` | [pmap_map](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/pmap-map.md) | 132 | `result-track:63a5522b4a31bc6dc580ad3ceebbb9da6339310309a31a287e6495d5cc18383a` |
| 22 | `theorem` | [attach_congr](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/attach-congr.md) | 137 | `result-track:901642d07170112242397d9ad0d119bc512676f1ae0777b980c63511c554abf6` |
| 23 | `theorem` | [attachWith_congr](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/attachwith-congr.md) | 142 | `result-track:6a7828ff789e72341dbb2a8e7f40548c65aa8239333c7d1abf6d7b76854f4a30` |
| 24 | `theorem` | [attach_push](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/attach-push.md) | 147 | `result-track:8c6ca88953a5bca04e45be8e062ed935e9e3af20aa2d3d0d4c82dc6e165e6eee` |
| 25 | `theorem` | [attachWith_push](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/attachwith-push.md) | 154 | `result-track:ac6dc1b73beafc7b49b424796711643bd3e85eaa1f017627bcff595c1931c2e8` |
| 26 | `theorem` | [pmap_eq_map_attach](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/pmap-eq-map-attach.md) | 160 | `result-track:67ddc34676c218e648bf3f09b1203a4d7592363b76301947f89ede503183ce6e` |
| 27 | `theorem` | [attachWith_eq_map_attach](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/attachwith-eq-map-attach.md) | 165 | `result-track:f615b16e95fcaaf554d39d633828c55f60c3015c06fc4c33102ff1f0384732a3` |
| 28 | `theorem` | [pmap_eq_attachWith](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/pmap-eq-attachwith.md) | 170 | `result-track:9522297c21fae15a00a8cefdaa49bae0950431cfd240d7039b11541bc0885520` |
| 29 | `theorem` | [attach_map_val](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/attach-map-val.md) | 175 | `result-track:a7e9480819e4a65782adf9e4d53ef1f8a9dffa0ca63ed31a29d24a5a5cc6acf6` |
| 30 | `theorem` | [attach_map_subtype_val](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/attach-map-subtype-val.md) | 181 | `result-track:388a84ab146e44ea686a00e51dce4dabaafaba3a408caeecbe104f28309b064b` |
| 31 | `theorem` | [attachWith_map_val](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/attachwith-map-val.md) | 184 | `result-track:94fad26090292114eff7978a6980e4ee27001d6d695558dbbacda03f861e4ca0` |
| 32 | `theorem` | [attachWith_map_subtype_val](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/attachwith-map-subtype-val.md) | 188 | `result-track:5fb13e885bafdaebb67480cecdb11cd024d8ab1ead3406e4b490912c73c37160` |
| 33 | `theorem` | [mem_attach](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/mem-attach.md) | 193 | `result-track:ba429aaf60bc8839896daad8b7b3582bd9af17bd7d65c76ddf6688a78f251a74` |
| 34 | `theorem` | [mem_attachWith](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/mem-attachwith.md) | 200 | `result-track:68b5ce4be282deda85ccfa7d596a490e565a5a6b534eb8fa6e6332b357c3348e` |
| 35 | `theorem` | [mem_pmap](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/mem-pmap.md) | 206 | `result-track:64d80dde41140447d1959b35cf9807e2eb95a07e38dc5d2565105d373f65436b` |
| 36 | `theorem` | [mem_pmap_of_mem](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/mem-pmap-of-mem.md) | 210 | `result-track:bfd46fdba8f76aab8027fb1748dd8eaee24d5f6d3007c1508acd784c8142627c` |
| 37 | `theorem` | [size_pmap](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/size-pmap.md) | 218 | `result-track:1b2263946526fa3b3cc49e2cbbbd0042c364f1bc3081c533cee27010a9ba3d75` |
| 38 | `theorem` | [size_attach](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/size-attach.md) | 222 | `result-track:fc71965031229ceea95e73abb97c225b12e25677b03fc91c61c0367106a8ca28` |
| 39 | `theorem` | [size_attachWith](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/size-attachwith.md) | 226 | `result-track:2ea23ee7844547d18b8115d351de091627cf11343362dacfba123ce44781f31d` |
| 40 | `theorem` | [pmap_eq_empty_iff](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/pmap-eq-empty-iff.md) | 230 | `result-track:74f75d89e6d30e3d73648e966d9ce4ab3779ad99e3287b3181105a1252194f97` |
| 41 | `theorem` | [pmap_ne_empty_iff](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/pmap-ne-empty-iff.md) | 233 | `result-track:85583694e6d21be9985c55cec471ee9e204ed1566c19a9eb8766839126b9d2dd` |
| 42 | `theorem` | [pmap_eq_self](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/pmap-eq-self.md) | 237 | `result-track:9d240d65b40aa5bedfbfeec22b078296ed92acfc04420c6c72ea58f317447371` |
| 43 | `theorem` | [attach_eq_empty_iff](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/attach-eq-empty-iff.md) | 242 | `result-track:f032e242049b999c1ffb9b309d8592af5dd3083e179b61df0ac998767242322c` |
| 44 | `theorem` | [attach_ne_empty_iff](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/attach-ne-empty-iff.md) | 245 | `result-track:b1311dbc152fa79bdfeaa6f32718e85f6feed12d418260ff8b02b3b84b84ba61` |
| 45 | `theorem` | [attachWith_eq_empty_iff](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/attachwith-eq-empty-iff.md) | 249 | `result-track:c0bd5efc86808c440b71d8f37c47069a10c331231df65c605f6495cf90206ae5` |
| 46 | `theorem` | [attachWith_ne_empty_iff](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/attachwith-ne-empty-iff.md) | 253 | `result-track:1ee3dccaae32cecc86811f1d0ce268bc608b8f9db75bc324cb6a745b68b529fa` |
| 47 | `theorem` | [getElem?_pmap](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/getelem-pmap-source-edition-2.md) | 258 | `result-track:c0756f297519df9f0c2b2a4ce9a22ba49d4ccfb9fd484338a70433556c802b7f` |
| 48 | `theorem` | [getElem_pmap](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/getelem-pmap.md) | 264 | `result-track:45806fd283c0adad18063f94e1820530dce365eb0b513a6413bb82b53b66be59` |
| 49 | `theorem` | [getElem?_attachWith](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/getelem-attachwith-source-edition-2.md) | 272 | `result-track:75ddc52cdb1f8bccefae42d6848b60b99582542a17dfb9edce3bc62fcce11cac` |
| 50 | `theorem` | [getElem?_attach](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/getelem-attach.md) | 277 | `result-track:23d55dfbf501572f4139efa13a28210cf468029a5db8dbe7cb6571ca3cc554b2` |
| 51 | `theorem` | [getElem_attachWith](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/getelem-attachwith.md) | 282 | `result-track:73fe21372833cb53a04a69d587ccdeb08d310722aebc0ce97507e3a96d502f4e` |
| 52 | `theorem` | [getElem_attach](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/getelem-attach-source-edition-2.md) | 288 | `result-track:689f3a14ddb2cdc83816aebf239307a16018a8e027741a0775b20f568f161ded` |
| 53 | `theorem` | [pmap_attach](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/pmap-attach.md) | 292 | `result-track:af0f247dea07f3f4e592a91c08a80aeb654461e0b386d4d4be55643808bc0261` |
| 54 | `theorem` | [pmap_attachWith](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/pmap-attachwith.md) | 298 | `result-track:c8a54b8135f6b0b9bf884099e51f484ba3709e2181a46d6053dd6533426d7d16` |
| 55 | `theorem` | [foldl_pmap](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/foldl-pmap.md) | 304 | `result-track:8d9807367e43c1acdad4c8dcfdd49ab203cde0f311ee9f3831db08434b7391ca` |
| 56 | `theorem` | [foldr_pmap](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/foldr-pmap.md) | 309 | `result-track:e8f3760307fd53157a2a65784c7fae202366757b61a65755ab8ad978b715113f` |
| 57 | `theorem` | [foldl_attachWith](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/foldl-attachwith.md) | 314 | `result-track:0a04eed4bec0786c1d65df5b6bf56474959fb0a09af0e3f94f9498e6a07e5a0b` |
| 58 | `theorem` | [foldr_attachWith](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/foldr-attachwith.md) | 321 | `result-track:66457438d6d27c785f983bb28d8e74dfc052a369fbde70d47570d1d6f69f984b` |
| 59 | `theorem` | [foldl_attach](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/foldl-attach.md) | 338 | `result-track:9d31ab97520497f8ed61f10dc04450c910250fa8db346a1b4b8a5cd642cd2097` |
| 60 | `theorem` | [foldr_attach](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/foldr-attach.md) | 357 | `result-track:a24dc3bb4b533cdb7e7ffdfd0535c370fa1cced16bc61b2bcd90616c5cc0e637` |
| 61 | `theorem` | [attach_map](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/attach-map.md) | 366 | `result-track:85f738a185e80071d1bc8ca208002676d807563bf519774a02b987c3030c6aeb` |
| 62 | `theorem` | [attachWith_map](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/attachwith-map.md) | 371 | `result-track:c68e20552ee3a2f8ab219e3d8f3c3a692582a69f9f07624848dc1aee1c103620` |
| 63 | `theorem` | [map_attachWith](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/map-attachwith.md) | 377 | `result-track:a697e5ce419b1f19e44f878c775a6f92d9f7a3138e76cd9d0d868ca040d3ecf2` |
| 64 | `theorem` | [map_attachWith_eq_pmap](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/map-attachwith-eq-pmap.md) | 382 | `result-track:e07260045208d5ad5fa3e3e2e46be7c1f227c26b535ce2b883175f3dcc2ec620` |
| 65 | `theorem` | [map_attach_eq_pmap](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/map-attach-eq-pmap.md) | 390 | `result-track:8bae9bba819c57d21b6c91bf850cda26e2855d91a1793662c121c7d034548c02` |
| 66 | `theorem` | [attach_filterMap](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/attach-filtermap.md) | 396 | `result-track:ab7090ebd838a88cf6941b8f669104f64c33f033a1c14d82d922a5bae9ecd3a9` |
| 67 | `theorem` | [attach_filter](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/attach-filter.md) | 404 | `result-track:6f24fcb1b8e6b3aff9f62ce0f3b3ab2f7fd6573a03498bdadb4aa94210e45641` |
| 68 | `theorem` | [filterMap_attachWith](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/filtermap-attachwith.md) | 414 | `result-track:dc4679afe680dfac821b5d8d0bb1bca54eea68f67138140857c2e7f1829d8892` |
| 69 | `theorem` | [filter_attachWith](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/filter-attachwith.md) | 422 | `result-track:53648d3e700df82ab5e385e62ea9f194707f81ce6c10088831b6a1e14cd7f39d` |
| 70 | `theorem` | [pmap_pmap](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/pmap-pmap.md) | 430 | `result-track:5750d6530edab0ec4390109e8c145eeed01a5c7fff1f1c71cf421cf43b568e07` |
| 71 | `theorem` | [pmap_append](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/pmap-append.md) | 437 | `result-track:5ad3db607d171ae7b3361bda44d7b4a683651ec4117840b4a21a467881e6d7f8` |
| 72 | `theorem` | [pmap_append'](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/pmap-append-source-edition-2.md) | 446 | `result-track:b7b061af84d10ad069fb6da2118ca3b115930413a9d50af58f541c81b3325558` |
| 73 | `theorem` | [attach_append](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/attach-append.md) | 452 | `result-track:39557bff8e239c368e1d51470df05b400a2fb6aed11412c6c21709c0c7bd7f7c` |
| 74 | `theorem` | [attachWith_append](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/attachwith-append.md) | 460 | `result-track:5de523d91c85e41086a8641ad87e5648466695c7fc31d1103b456f87bceabaaf` |
| 75 | `theorem` | [pmap_reverse](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/pmap-reverse.md) | 466 | `result-track:13e59b218c06c0558bb14c294ac422fa0792b718a64af7725d23456ca491d8f1` |
| 76 | `theorem` | [reverse_pmap](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/reverse-pmap.md) | 471 | `result-track:37193ef0ca6b4e9efb290653f0666cbf5c46c11b4648b5acf74cbc5dedd00b4f` |
| 77 | `theorem` | [attachWith_reverse](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/attachwith-reverse.md) | 476 | `result-track:f2ed0d2659e9b4065cf16d13f644af194cff6b36497b9b167dcdbff247f05489` |
| 78 | `theorem` | [reverse_attachWith](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/reverse-attachwith.md) | 483 | `result-track:fc424ba3108dbc8a865f208213a983b7b6e83de8ab6b01328bc0267a797f5872` |
| 79 | `theorem` | [attach_reverse](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/attach-reverse.md) | 489 | `result-track:af4fab0f272d2f9cfe3ff85ef79732e9c6f4d864376e6bf41192923d59e68584` |
| 80 | `theorem` | [reverse_attach](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/reverse-attach.md) | 495 | `result-track:bc5b2bf43b67ec75856dbe6ed8094b0451ed3f58780f961e9c576bcaf7f51214` |
| 81 | `theorem` | [back?_pmap](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/back-pmap.md) | 500 | `result-track:1f09bb8f2206e0c491794854e72dcc12337c21d52caff28ad95d6c5a014fa3f4` |
| 82 | `theorem` | [back?_attachWith](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/back-attachwith.md) | 506 | `result-track:b5c1041ce0e78cb86f9ab9ea6d5790f28e513fd92bbb990d01e3c1a705d04d46` |
| 83 | `theorem` | [back?_attach](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/back-attach.md) | 513 | `result-track:eaef03d000e7c3503cc13e9bccd3f1f66d36cb5dab8df5c4ff4ea114da9dea1a` |
| 84 | `theorem` | [countP_attach](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/countp-attach.md) | 519 | `result-track:ed37ddbf0403dc3548b2d10915f65fdd16fe893e74539c1f3a8e5e43903bb7a6` |
| 85 | `theorem` | [countP_attachWith](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/countp-attachwith.md) | 525 | `result-track:70152f0890883a49c8c8ac1cef7464fe296e86727667a5c1c404c0c3c283c2cc` |
| 86 | `theorem` | [count_attach](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/count-attach.md) | 531 | `result-track:4becbf8d1aa2e5e5063df4d9586c831875dc7b5145de98e3d5a70a5d7759f1d9` |
| 87 | `theorem` | [count_attachWith](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/count-attachwith.md) | 540 | `result-track:f208d8c4b7bec44f79e510afd0bdb54d24f383858431d1018ddffb949257d290` |
| 88 | `theorem` | [countP_pmap](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/countp-pmap.md) | 545 | `result-track:14e91fcbe50f088e266c859d42d05b7d1b6a8c111953cc3d1ac96278ee1f0f89` |
| 89 | `def` | [unattach](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/unattach.md) | 576 | `declaration-track:61bc619bd4661ab9eb46ee285482eaae4b162091bba3586d3c28160f14d84410` |
| 90 | `theorem` | [unattach_empty](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/unattach-empty.md) | 578 | `result-track:0094e67ef9070624976d5a28a868934a03eedbed9d83c26bdfe92b055167232d` |
| 91 | `theorem` | [unattach_push](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/unattach-push.md) | 581 | `result-track:82e9f8c41b92873c5b3be66e7fedfdac8fff724269d77e3e4ca4c82ec4b00489` |
| 92 | `theorem` | [mem_unattach](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/mem-unattach.md) | 585 | `result-track:998756b8de140f08af2456052f0402cc42f1fb223c383375e6a05947b8ead6bf` |
| 93 | `theorem` | [size_unattach](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/size-unattach.md) | 589 | `result-track:297a3fd20c63a78ce1fa64876c2e1a3e4c6157c622da817baf1bc198522744d5` |
| 94 | `theorem` | [_root_.List.unattach_toArray](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/root-list-unattach-toarray.md) | 594 | `result-track:7c2efaf4537367354208583f422b167f18208d5beba1fafec1cadfd7b3f798c4` |
| 95 | `theorem` | [toList_unattach](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/tolist-unattach.md) | 598 | `result-track:ba6d3aed77e083354e238a846495d7396bc098a33c0d84a5002891bfc15a3d08` |
| 96 | `theorem` | [unattach_attach](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/unattach-attach.md) | 602 | `result-track:a6bbc9ea92fd86b605330572e4b02f2bf9b46fc682d1baca68f658a4e59d20d5` |
| 97 | `theorem` | [unattach_attachWith](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/unattach-attachwith.md) | 606 | `result-track:88eed3f9da4a7352e8258541c0a5782a58e8fcc834bcc57d2eb77e5419aaa509` |
| 98 | `theorem` | [getElem?_unattach](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/getelem-unattach.md) | 612 | `result-track:4cd6bd9be1b27a268525c0b94af2e810b521cf73823d0f971f56a99a1078de5a` |
| 99 | `theorem` | [getElem_unattach](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/getelem-unattach-source-edition-2.md) | 616 | `result-track:a7d16040d99ff727d1364d14e46fc456a76d30c18df64af64b6a4e299f27225d` |
| 100 | `theorem` | [foldl_subtype](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/foldl-subtype-source-edition-2.md) | 627 | `result-track:a39884c18c7c977d3d7f98342cb8784e3e5e6cb4d7ec50ca1d311e1c6f086064` |
| 101 | `theorem` | [foldl_subtype'](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/foldl-subtype.md) | 637 | `result-track:a136c48db517e0f017591495d40f867e49fe3524f577cc6c6f1d897180b95a44` |
| 102 | `theorem` | [foldr_subtype](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/foldr-subtype.md) | 648 | `result-track:33b9c55cc4c97e9ad1d5ebec5718fb64f1a2d7624f9d3309aeabeff9a561fcc9` |
| 103 | `theorem` | [foldr_subtype'](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/foldr-subtype-source-edition-2.md) | 658 | `result-track:9e384a0127d91d99b537e69a65239abac5f5f3484bfa5c626f7ba872c07bfd66` |
| 104 | `theorem` | [map_subtype](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/map-subtype.md) | 669 | `result-track:7dbc71d9e588e2f0a04a3f428f536b88824e9b29cd6ecbc2c69c66b464d2fd9f` |
| 105 | `theorem` | [filterMap_subtype](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/filtermap-subtype.md) | 677 | `result-track:7cf542beaf21765aa92734589e54153de0582edca1b98398c1637e1665d55fb7` |
| 106 | `theorem` | [flatMap_subtype](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/flatmap-subtype.md) | 687 | `result-track:188115d7dc42c8dcc24b82781c5dfe7fd50886d7df379e67a6c478668423d74d` |
| 107 | `theorem` | [findSome?_subtype](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/findsome-subtype.md) | 696 | `result-track:9e0d6d4013a8cd4ad5457161edd184c5fc5fcd4ee1c83c8e29d5bc447351816f` |
| 108 | `theorem` | [find?_subtype](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/find-subtype.md) | 703 | `result-track:615263b806355ea41737957fc774218f6d5d3533042f191654e60bd164907c75` |
| 109 | `theorem` | [all_subtype](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/all-subtype.md) | 710 | `result-track:486bb54d4a88570bf942e4ef0b8540bb261bc7406ebd051823f90deb26d56921` |
| 110 | `theorem` | [any_subtype](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/any-subtype.md) | 717 | `result-track:47a7060a60002a1e1e3e6fb52e90423e61df77a330e9a820c46671cb5428d448` |
| 111 | `theorem` | [unattach_filter](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/unattach-filter.md) | 726 | `result-track:7f4aff67a3894baeec75f7ce8ac116c05b4039902f0c629b37b10d228085494f` |
| 112 | `theorem` | [unattach_reverse](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/unattach-reverse.md) | 732 | `result-track:fea74859a91a2ab5d964084960e3225b4c408faef242fdc4a92a832fd18f72c3` |
| 113 | `theorem` | [unattach_append](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/unattach-append.md) | 737 | `result-track:78421fee2be2875e4584d37b6f62025e85754ab7206b6ab07b5c811d6907aa72` |
| 114 | `theorem` | [unattach_flatten](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/unattach-flatten.md) | 743 | `result-track:5cf22468d42b2b458b5e9f8e4ab2b80a7c53c7901bdc447a3a0e59014120bb86` |
| 115 | `theorem` | [unattach_replicate](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/unattach-replicate.md) | 751 | `result-track:9433d3ff5de8962179cbf862095b6e600f2605e268082531b69a499a5e68c02d` |
| 116 | `theorem` | [map_wfParam](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/map-wfparam.md) | 757 | `result-track:1a2a8bd944e4c2a2fdf1b7463e8c87cbc34f51db8a595336aa5b714232686f29` |
| 117 | `theorem` | [map_unattach](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/map-unattach.md) | 761 | `result-track:d7cfad0a720aae67fe2dd8cc406d639bd8ef49fe5bfe35db3e33d025f2cc7b24` |
| 118 | `theorem` | [foldl_wfParam](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/foldl-wfparam.md) | 766 | `result-track:83e38880d320764f96b97759db44f5d0a54d8c368e97d6489c73be6aa6a55dbd` |
| 119 | `theorem` | [foldl_unattach](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/foldl-unattach.md) | 770 | `result-track:c6b9b39c5f99be32007db2cf95e7254c0b5f213e8f268502d42454fef94f539b` |
| 120 | `theorem` | [foldr_wfParam](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/foldr-wfparam.md) | 775 | `result-track:d7bb41a415429940d1dd59207c2baba2875f533f45b62befffd3e3617b8d9bf7` |
| 121 | `theorem` | [foldr_unattach](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/foldr-unattach.md) | 779 | `result-track:d43daf524a1ab027405c463f55426a30d437496eda21e3dbf7670cf26c404e09` |
| 122 | `theorem` | [filter_wfParam](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/filter-wfparam.md) | 784 | `result-track:9f892696e4879934de487ad2b3844c1b31dfa70f3ef540fe254c800c1eb71d54` |
| 123 | `theorem` | [filter_unattach](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/filter-unattach.md) | 788 | `result-track:104b6aaa6774bd4974d8c23dda5b29a51a80784ef96232cc990bcdd88c53e06b` |
| 124 | `theorem` | [reverse_wfParam](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/reverse-wfparam.md) | 793 | `result-track:247178d968ddbc55c3d954b7bdd74325ea0b3fd076536e4ca3cfb774c04c8a43` |
| 125 | `theorem` | [reverse_unattach](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/reverse-unattach.md) | 796 | `result-track:dcee7119e911307f2999dc40a76c4b6d67fad175fa078596098b21dcff737981` |
| 126 | `theorem` | [filterMap_wfParam](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/filtermap-wfparam.md) | 799 | `result-track:8492fc63d5bb37ca518f56b7f0b448a80eb2942467f9b06c1874f4a09d69e945` |
| 127 | `theorem` | [filterMap_unattach](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/filtermap-unattach.md) | 803 | `result-track:830d4aad8af4b1d9b2b245e40a26483af936eb340a38077ee1e97d3c889f6125` |
| 128 | `theorem` | [flatMap_wfParam](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/flatmap-wfparam.md) | 808 | `result-track:8856e38c93653dccccf1ecb32f27d9fbcf6a5c247cfb70b3c81a5a6a8b9be048` |
| 129 | `theorem` | [flatMap_unattach](../../../../GeneralTopology/AttachPublicSizePmap.lean/declarations/flatmap-unattach.md) | 812 | `result-track:d30fe89fff53ec91025b991d5c690b142630018f0a94c6a93b24e14bd40752ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=70467a251f5279f64a46e1026de7a531fcf90ef8993f574057b564f29d1abf27 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Attach/Variant3a4ab48b28c6ef486431ba32dabe800716c5277d101335492834bd66de705c63.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Attach/Variant3a4ab48b28c6ef486431ba32dabe800716c5277d101335492834bd66de705c63.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
