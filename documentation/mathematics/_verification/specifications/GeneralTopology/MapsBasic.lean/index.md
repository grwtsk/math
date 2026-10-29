# Verification target: Maps Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2bac6bbe1e7cf34c5a37ed76034237ac1d64229",
  "lexical_observation_count": 126,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd733a29f652b2bf8ec2b1cad288e33e014f8f764cf40753cf5e9ad500481b68f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/MapsBasic.lean/index.md) · [Full source](../../../../GeneralTopology/MapsBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2bac6bbe1e7cf34c5a37ed76034237ac1d64229`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantd733a29f652b2bf8ec2b1cad288e33e014f8f764cf40753cf5e9ad500481b68f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantd733a29f652b2bf8ec2b1cad288e33e014f8f764cf40753cf5e9ad500481b68f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsInducing.induced](../../../../GeneralTopology/MapsBasic.lean/declarations/isinducing-induced.md) | 56 | `result-track:35b70862a0bbb7831603aa666c5e19567d566d9b67fb5ba7528b38d7a6d0db15` |
| 2 | `lemma` | [IsInducing.id](../../../../GeneralTopology/MapsBasic.lean/declarations/isinducing-id.md) | 63 | `result-track:ab5da36e45358935cb5af5cfc73523f4698aa54d27380ac1cd9624bb06f31841` |
| 3 | `lemma` | [IsInducing.comp](../../../../GeneralTopology/MapsBasic.lean/declarations/isinducing-comp.md) | 69 | `result-track:8a7ea53cda0941bb672eff46f649f0b3595987bbaa0bf8900ad07c63912949c3` |
| 4 | `lemma` | [IsInducing.of_comp_iff](../../../../GeneralTopology/MapsBasic.lean/declarations/isinducing-of-comp-iff.md) | 75 | `result-track:1048ff5d8c160d29e111419aa566c69ca403a817df352017304fb985327c7504` |
| 5 | `lemma` | [IsInducing.of_comp](../../../../GeneralTopology/MapsBasic.lean/declarations/isinducing-of-comp.md) | 81 | `result-track:56806fcd66e4ff56833411fa34a185aa965343f2bc62661f748c45cc53bab907` |
| 6 | `lemma` | [isInducing_iff_nhds](../../../../GeneralTopology/MapsBasic.lean/declarations/isinducing-iff-nhds.md) | 90 | `result-track:10318e0e51316c9d8f7f8878fe2412119da9057b3ef23a5b05444cc432598afa` |
| 7 | `lemma` | [nhds_eq_comap](../../../../GeneralTopology/MapsBasic.lean/declarations/nhds-eq-comap.md) | 97 | `result-track:fd29535743aa52c9920414d6fc42b62aa46ec465361777acad20a1ca9b2bc2b9` |
| 8 | `lemma` | [basis_nhds](../../../../GeneralTopology/MapsBasic.lean/declarations/basis-nhds.md) | 100 | `result-track:db1ffbcd512c357b49ed601e461cbfe9649044ab8d8745c5b34406d7e297b6d8` |
| 9 | `lemma` | [nhdsSet_eq_comap](../../../../GeneralTopology/MapsBasic.lean/declarations/nhdsset-eq-comap.md) | 104 | `result-track:96fcc9564c222c9a1524d20397d6adc10fe00f1083902e9f12d14c2678fe72a0` |
| 10 | `lemma` | [map_nhds_eq](../../../../GeneralTopology/MapsBasic.lean/declarations/map-nhds-eq.md) | 108 | `result-track:6f1baca2ef50344826449d46bcc42cc840a9d538aca8bd472ae5a820d6152055` |
| 11 | `lemma` | [map_nhds_of_mem](../../../../GeneralTopology/MapsBasic.lean/declarations/map-nhds-of-mem.md) | 111 | `result-track:130264d46e577f3a523506f4a2ea5aa23bae92f47fec3d6709d1c31342d0efa6` |
| 12 | `lemma` | [mapClusterPt_iff](../../../../GeneralTopology/MapsBasic.lean/declarations/mapclusterpt-iff.md) | 114 | `result-track:8448d2cbc8b9486fb6e52b41e094afd3769f4842110d53602d99257a13c6db97` |
| 13 | `lemma` | [image_mem_nhdsWithin](../../../../GeneralTopology/MapsBasic.lean/declarations/image-mem-nhdswithin.md) | 119 | `result-track:498f3c3bbf562ddcb9bb910a30955b8397a701cccb75969d3bdcf9e37dcf7264` |
| 14 | `lemma` | [tendsto_nhds_iff](../../../../GeneralTopology/MapsBasic.lean/declarations/tendsto-nhds-iff-source-edition-2.md) | 123 | `result-track:7045ab5b23916d9cd6d393a2ee3e4ff7643682985c7d8da4fb46d4d63bbe2e3e` |
| 15 | `lemma` | [continuousAt_iff](../../../../GeneralTopology/MapsBasic.lean/declarations/continuousat-iff.md) | 127 | `result-track:95e291b6f57f820157fc44c1f36716af5dc77e6b1e2b124e6a1ac99f963c9e37` |
| 16 | `lemma` | [continuous_iff](../../../../GeneralTopology/MapsBasic.lean/declarations/continuous-iff-source-edition-2.md) | 131 | `result-track:719ad5d48497111e3a2ce2379940abfb24e32413798dc34649faf142ebdc66e4` |
| 17 | `lemma` | [continuousAt_iff'](../../../../GeneralTopology/MapsBasic.lean/declarations/continuousat-iff-source-edition-2.md) | 135 | `result-track:f4e73d03bc4ce643deb5b386dfe1d6ca7c109c11d186ff1c0e980bacb7a63f96` |
| 18 | `lemma` | [continuous](../../../../GeneralTopology/MapsBasic.lean/declarations/continuous-source-edition-2.md) | 139 | `result-track:3fa5d1570b6a4709f0f98d68ae6894c597cf346a4125fbf4d06e680c94a3a580` |
| 19 | `lemma` | [closure_eq_preimage_closure_image](../../../../GeneralTopology/MapsBasic.lean/declarations/closure-eq-preimage-closure-image-source-edition-2.md) | 142 | `result-track:fbc4055c8570c451878f18c3f193f4f7bed0d834a5f988d561eb5a88a49bf74a` |
| 20 | `theorem` | [isClosed_iff](../../../../GeneralTopology/MapsBasic.lean/declarations/isclosed-iff-source-edition-2.md) | 147 | `result-track:6a64e89454f4c220d4836326e811232c837711355150dc32c1f38323c675e156` |
| 21 | `theorem` | [isClosed_iff'](../../../../GeneralTopology/MapsBasic.lean/declarations/isclosed-iff.md) | 150 | `result-track:4b0b5048df6861f85563462e4449d2fd56be9c05abf408d62d05e8ba7a36a14b` |
| 22 | `theorem` | [isClosed_preimage](../../../../GeneralTopology/MapsBasic.lean/declarations/isclosed-preimage-source-edition-2.md) | 153 | `result-track:e1b4d062967834d3ea78b14185a4e01904c1da11de1d0b762163b7be5fa987ee` |
| 23 | `theorem` | [isOpen_iff](../../../../GeneralTopology/MapsBasic.lean/declarations/isopen-iff.md) | 157 | `result-track:1d6ca9d0bb3754bd3293df0c023d836f9bfdb52789198120b36709270ae54522` |
| 24 | `theorem` | [setOf_isOpen](../../../../GeneralTopology/MapsBasic.lean/declarations/setof-isopen.md) | 160 | `result-track:f2fc5c485fd31914cf03123c084e19dd44b42e1782f6f6a619819549a2b9a246` |
| 25 | `theorem` | [dense_iff](../../../../GeneralTopology/MapsBasic.lean/declarations/dense-iff.md) | 164 | `result-track:92205f45948e79411903779e098a3990fd541d34d83697f50a28cc006a489082` |
| 26 | `theorem` | [of_subsingleton](../../../../GeneralTopology/MapsBasic.lean/declarations/of-subsingleton-source-edition-2.md) | 168 | `result-track:bd29b72aa7cfe3a040807721e1390bbf6194466f43b86514b165826731eb827b` |
| 27 | `lemma` | [induced](../../../../GeneralTopology/MapsBasic.lean/declarations/induced.md) | 175 | `result-track:f5837770c723ec280a04eeed4103f64055732169c26df77fa173c53189b7acbb` |
| 28 | `lemma` | [isInducing](../../../../GeneralTopology/MapsBasic.lean/declarations/isinducing.md) | 186 | `result-track:d6e943a0f4d93aeb4a50b7dcc12cb1557c846482e31054f2e5c262ca9060dc22` |
| 29 | `lemma` | [mk'](../../../../GeneralTopology/MapsBasic.lean/declarations/mk.md) | 190 | `result-track:3fa6d1bc357b52df4b0d16175257fc54fa784ee41c61786716192bdf83af5210` |
| 30 | `lemma` | [id](../../../../GeneralTopology/MapsBasic.lean/declarations/id-source-edition-2.md) | 197 | `result-track:579f3a5d3ab630b9873d276b94010efe09ca72374dfc5adac5f4ac1f06289554` |
| 31 | `lemma` | [comp](../../../../GeneralTopology/MapsBasic.lean/declarations/comp-source-edition-6.md) | 202 | `result-track:ed85aecb7be2576094374b57427ef8b78e7be4c91c1d26755c7d17a346080268` |
| 32 | `lemma` | [of_comp_iff](../../../../GeneralTopology/MapsBasic.lean/declarations/of-comp-iff-source-edition-3.md) | 208 | `result-track:f34e9a72c127ea7ed705e73598816cf8bbfa677438a547e4af3bd71dd2a361c3` |
| 33 | `lemma` | [of_comp](../../../../GeneralTopology/MapsBasic.lean/declarations/of-comp-source-edition-2.md) | 214 | `result-track:42ea67b86e8a18d683ada0a158c2482a31c215987ebafbb070e38f6a9ed9f486` |
| 34 | `lemma` | [of_leftInverse](../../../../GeneralTopology/MapsBasic.lean/declarations/of-leftinverse.md) | 222 | `result-track:19c3d3e3b513c310def2faa2520935fbadb2037c55995031b0f01362b2ca3709` |
| 35 | `lemma` | [map_nhds_eq](../../../../GeneralTopology/MapsBasic.lean/declarations/map-nhds-eq-source-edition-2.md) | 230 | `result-track:ac35bb25bedd098f6c557c40514d6559c81a09ec9361fa1378a85f842db20d7e` |
| 36 | `lemma` | [map_nhds_of_mem](../../../../GeneralTopology/MapsBasic.lean/declarations/map-nhds-of-mem-source-edition-2.md) | 236 | `result-track:97df4ec12bf9145d4d44828978489fefc5a190cefcbbaa09ed9797bb31c5ff58` |
| 37 | `lemma` | [tendsto_nhds_iff](../../../../GeneralTopology/MapsBasic.lean/declarations/tendsto-nhds-iff.md) | 243 | `result-track:477ad12da9df858cc3f987714bcf0496e131a40b5c12fba0e1150ed9c9756e19` |
| 38 | `lemma` | [continuous_iff](../../../../GeneralTopology/MapsBasic.lean/declarations/continuous-iff-source-edition-3.md) | 246 | `result-track:cefa1bb0f43b3b3b5e9032e1b03ab1474ae10aa65c76e434c75d7e7d667ba073` |
| 39 | `lemma` | [continuous](../../../../GeneralTopology/MapsBasic.lean/declarations/continuous-source-edition-4.md) | 252 | `result-track:bdfa32f6e61314032a55a8411823964620c176defb64ff122617525388fa140e` |
| 40 | `lemma` | [closure_eq_preimage_closure_image](../../../../GeneralTopology/MapsBasic.lean/declarations/closure-eq-preimage-closure-image.md) | 254 | `result-track:051dbf02067bd0da66f4a2648275d8e58a204e2da282211f949c253bfe217075` |
| 41 | `lemma` | [discreteTopology](../../../../GeneralTopology/MapsBasic.lean/declarations/discretetopology.md) | 265 | `result-track:0fbadcb4ac40c23b2d956a00eec219f5b30615af1a61e5cf8ab2a37aaa69e038` |
| 42 | `lemma` | [of_subsingleton](../../../../GeneralTopology/MapsBasic.lean/declarations/of-subsingleton.md) | 271 | `result-track:a998a06fcf3c32b6f177e1b27ae608c891a8326190888d43219eece6abf3d3c4` |
| 43 | `lemma` | [isQuotientMap_iff](../../../../GeneralTopology/MapsBasic.lean/declarations/isquotientmap-iff.md) | 283 | `result-track:d90be50f06e10ac4596fc17030cbed3474dd5d0dbe6dd09c953a8182b1578970` |
| 44 | `theorem` | [isQuotientMap_iff_isClosed](../../../../GeneralTopology/MapsBasic.lean/declarations/isquotientmap-iff-isclosed.md) | 289 | `result-track:1649b21f47bca162ccbf3ced30cd703312efd277289e7240ed73d0a98a5980eb` |
| 45 | `theorem` | [IsInducing.isQuotientMap_of_surjective](../../../../GeneralTopology/MapsBasic.lean/declarations/isinducing-isquotientmap-of-surjective.md) | 299 | `result-track:574148a7c14a6e327c94998a564a19c774b2f147b938e492bf689e21cb4f1559` |
| 46 | `theorem` | [id](../../../../GeneralTopology/MapsBasic.lean/declarations/id-source-edition-5.md) | 307 | `result-track:a6c1de160f2a6ea122476f4d3a4d9100fba180a14798aa64eb8b2e46f675628e` |
| 47 | `theorem` | [comp](../../../../GeneralTopology/MapsBasic.lean/declarations/comp-source-edition-4.md) | 310 | `result-track:bcb31a51b0fe9b0aeec0bc582b9601d5dd36304dbed3bd583bbda9642df69887` |
| 48 | `theorem` | [of_comp](../../../../GeneralTopology/MapsBasic.lean/declarations/of-comp.md) | 313 | `result-track:1a1414799688ee9ae0c9cb50aa1e6c973adc6ede4f9158cd897cb5d9317a055d` |
| 49 | `theorem` | [of_inverse](../../../../GeneralTopology/MapsBasic.lean/declarations/of-inverse.md) | 323 | `result-track:57368d61428881e619fc66783e5ccffea4073ac387b6c01812abaa5de818737e` |
| 50 | `theorem` | [continuous_iff](../../../../GeneralTopology/MapsBasic.lean/declarations/continuous-iff.md) | 326 | `result-track:563ae99aadf93dd9e65e63ef77742481aa5b0b4096be5f72feb4360107383d3f` |
| 51 | `theorem` | [continuous](../../../../GeneralTopology/MapsBasic.lean/declarations/continuous.md) | 329 | `result-track:225b21d125e5a80e29a9c8e9dbfe740df243ab7223764e1fdebf575b01182b08` |
| 52 | `lemma` | [isOpen_preimage](../../../../GeneralTopology/MapsBasic.lean/declarations/isopen-preimage.md) | 332 | `result-track:b03479ece50c61b8f6ecdc6f0294090ead85a18c00767f1275a7347a9de3474f` |
| 53 | `theorem` | [isClosed_preimage](../../../../GeneralTopology/MapsBasic.lean/declarations/isclosed-preimage.md) | 335 | `result-track:a8ea9bdf299d7e5677b8480a2b6fa7765792caf77235fffc4266dbabcbf7a05b` |
| 54 | `theorem` | [id](../../../../GeneralTopology/MapsBasic.lean/declarations/id-source-edition-4.md) | 348 | `result-track:79406ac7f9f40984823cdb9f26554bc7db5c9f05ec7427b9ca954fb79781f665` |
| 55 | `theorem` | [comp](../../../../GeneralTopology/MapsBasic.lean/declarations/comp-source-edition-2.md) | 350 | `result-track:3cd356ac1aef8bdfda88f789181368a64efaa1f8fac4756459581b97649e5908` |
| 56 | `theorem` | [isOpen_range](../../../../GeneralTopology/MapsBasic.lean/declarations/isopen-range.md) | 353 | `result-track:124f95e90bc28fb5a437c1516d86fa26885c8d4aed5273fcfae2934766f86be0` |
| 57 | `theorem` | [image_mem_nhds](../../../../GeneralTopology/MapsBasic.lean/declarations/image-mem-nhds.md) | 357 | `result-track:3f8a58ee7849e07eda77adaa3dc40f1c62e8b3af33cf5f78641339ff23ab6933` |
| 58 | `theorem` | [range_mem_nhds](../../../../GeneralTopology/MapsBasic.lean/declarations/range-mem-nhds.md) | 361 | `result-track:f186e44819f92e33150e40ae509193a2f3c213c9ba4c096f1628fb4b5568e5c9` |
| 59 | `theorem` | [mapsTo_interior](../../../../GeneralTopology/MapsBasic.lean/declarations/mapsto-interior.md) | 364 | `result-track:f4b39d8ed4a517ebc45b7af08af1f179e3480df75bdada41b563a1822c3961ec` |
| 60 | `theorem` | [image_interior_subset](../../../../GeneralTopology/MapsBasic.lean/declarations/image-interior-subset.md) | 369 | `result-track:339a323ec48d4c0c2c2d13f3373724e07e89150d39edce044295e7bd61e5cfac` |
| 61 | `theorem` | [nhds_le](../../../../GeneralTopology/MapsBasic.lean/declarations/nhds-le.md) | 373 | `result-track:bafbf75cfc9d3151c006da3a90778998d475b9056c94c343bdb2b706da481fbc` |
| 62 | `theorem` | [of_nhds_le](../../../../GeneralTopology/MapsBasic.lean/declarations/of-nhds-le.md) | 376 | `result-track:2a292f4392ca9a648e710af9db003e3eabd6cce3c806d9dd0c07eacd47fff57f` |
| 63 | `theorem` | [of_sections](../../../../GeneralTopology/MapsBasic.lean/declarations/of-sections.md) | 379 | `result-track:80d4dd4de4b3d1227de01e4238a93ddf15e927b7efe44a42977687cc266194c8` |
| 64 | `theorem` | [of_inverse](../../../../GeneralTopology/MapsBasic.lean/declarations/of-inverse-source-edition-3.md) | 388 | `result-track:bc2e15ac3e721f8826efaaae299efd69432c8738873646db6b6b2be4577b1cde` |
| 65 | `theorem` | [isQuotientMap](../../../../GeneralTopology/MapsBasic.lean/declarations/isquotientmap.md) | 393 | `result-track:57f0e479644adb363f33629ea1fa16cd779d03debe2eb6274f7195b9d57b6c20` |
| 66 | `theorem` | [interior_preimage_subset_preimage_interior](../../../../GeneralTopology/MapsBasic.lean/declarations/interior-preimage-subset-preimage-interior.md) | 401 | `result-track:1ffc65170bb9c56fab0c0ceadbb17d9defa879634bdab3356feff5494b1b39e3` |
| 67 | `theorem` | [preimage_interior_eq_interior_preimage](../../../../GeneralTopology/MapsBasic.lean/declarations/preimage-interior-eq-interior-preimage.md) | 405 | `result-track:751083794f2b19c626fe8c0b8db183f4020a4b0a1920e681c7ce12ce2b18db12` |
| 68 | `theorem` | [preimage_closure_subset_closure_preimage](../../../../GeneralTopology/MapsBasic.lean/declarations/preimage-closure-subset-closure-preimage.md) | 410 | `result-track:ef1299e1e9cdd67d605787f38958a70927210a1daa4687a51744916f529f29ca` |
| 69 | `theorem` | [preimage_closure_eq_closure_preimage](../../../../GeneralTopology/MapsBasic.lean/declarations/preimage-closure-eq-closure-preimage.md) | 415 | `result-track:6ec83c309668ab924d97d57c655e89b776e9e54a27abcf7852c4760b8f6ad273` |
| 70 | `theorem` | [preimage_frontier_subset_frontier_preimage](../../../../GeneralTopology/MapsBasic.lean/declarations/preimage-frontier-subset-frontier-preimage.md) | 419 | `result-track:49159305e23ea8408b7ba55bd5650c3101445ba84473313cdfc5b2d514597048` |
| 71 | `theorem` | [preimage_frontier_eq_frontier_preimage](../../../../GeneralTopology/MapsBasic.lean/declarations/preimage-frontier-eq-frontier-preimage.md) | 425 | `result-track:d2d69805f7ba620a3410327fb04dc02d3c4b8c6354bca181baaf9a1f876a9db6` |
| 72 | `theorem` | [of_isEmpty](../../../../GeneralTopology/MapsBasic.lean/declarations/of-isempty-source-edition-2.md) | 430 | `result-track:9550b5f9d503091ba33ba2e062c8bd708f3cc017d5ff09e833f5c5388ad588e4` |
| 73 | `theorem` | [isOpenMap_iff_nhds_le](../../../../GeneralTopology/MapsBasic.lean/declarations/isopenmap-iff-nhds-le.md) | 434 | `result-track:7a0f6a7f1428ef94543504d4bbbf7157c214818a68603fa5eff4f982be42591b` |
| 74 | `theorem` | [isOpenMap_iff_interior](../../../../GeneralTopology/MapsBasic.lean/declarations/isopenmap-iff-interior.md) | 437 | `result-track:c63de5724d66b6a1a21ed80cf90f3a3cf3fbf7b4d2f919db40194820211e24fb` |
| 75 | `lemma` | [Topology.IsInducing.isOpenMap](../../../../GeneralTopology/MapsBasic.lean/declarations/topology-isinducing-isopenmap.md) | 445 | `result-track:1558da306b63745ce6192a8b5feb4c64d41205814a7e52d173b8ffa3aa79c1e6` |
| 76 | `theorem` | [Dense.preimage](../../../../GeneralTopology/MapsBasic.lean/declarations/dense-preimage.md) | 452 | `result-track:d84f5d198cdbe51532006e03c524d097ae4d9c0fcbcfffcb1edace3d4f38ab64` |
| 77 | `theorem` | [id](../../../../GeneralTopology/MapsBasic.lean/declarations/id-source-edition-6.md) | 465 | `result-track:c74bc38f3c1f2c2f980c599a507d43e4fc11c145b1e57461e28d64e504a0954e` |
| 78 | `theorem` | [comp](../../../../GeneralTopology/MapsBasic.lean/declarations/comp-source-edition-5.md) | 467 | `result-track:d00e066ce19af1b8b826313ee3112a10724438065edce59b6873ed26558ffb45` |
| 79 | `theorem` | [of_comp_surjective](../../../../GeneralTopology/MapsBasic.lean/declarations/of-comp-surjective.md) | 472 | `result-track:a7f81df26e39364490920fe003cc729ee3523f42b42a8d8086d8538c060b0479` |
| 80 | `theorem` | [closure_image_subset](../../../../GeneralTopology/MapsBasic.lean/declarations/closure-image-subset.md) | 478 | `result-track:c33464130681e147a29b7d513484ba65c1fa08f3d5f1a402c19be2e151695173` |
| 81 | `theorem` | [of_inverse](../../../../GeneralTopology/MapsBasic.lean/declarations/of-inverse-source-edition-2.md) | 482 | `result-track:6956e173fefe8d4fa3d4536e4ba76b222d01ae2c33a746e63c39341b299c36e8` |
| 82 | `theorem` | [of_nonempty](../../../../GeneralTopology/MapsBasic.lean/declarations/of-nonempty.md) | 487 | `result-track:ca34c1a07525f92028de3a2b0e9f68af37cee64bb5f9effe64a5b11261e8c718` |
| 83 | `theorem` | [isClosed_range](../../../../GeneralTopology/MapsBasic.lean/declarations/isclosed-range.md) | 493 | `result-track:139a95f0ffd1f4c70e77da2b28f05ff0eaa0320e7c82c824afb4429a76bd8007` |
| 84 | `theorem` | [isQuotientMap](../../../../GeneralTopology/MapsBasic.lean/declarations/isquotientmap-source-edition-2.md) | 497 | `result-track:ec48d7671940fdc979562c41db16e44316577dd957ef2ec96274e9f46fb834ea` |
| 85 | `lemma` | [Topology.IsInducing.isClosedMap](../../../../GeneralTopology/MapsBasic.lean/declarations/topology-isinducing-isclosedmap.md) | 507 | `result-track:766f9bfcbbca281e50242b8ea4ecd00cbd6a4153a4a060c8bab21b2d9834457c` |
| 86 | `theorem` | [isClosedMap_iff_closure_image](../../../../GeneralTopology/MapsBasic.lean/declarations/isclosedmap-iff-closure-image.md) | 516 | `result-track:31fd02c981c436e68bf1c4b7632e532f8f8b18bdaae86547437ffe79527b1e0d` |
| 87 | `theorem` | [isClosedMap_iff_clusterPt](../../../../GeneralTopology/MapsBasic.lean/declarations/isclosedmap-iff-clusterpt.md) | 528 | `result-track:efef9bcdc67db5eec8e2511bf24d6d0da3b3663fceba51a4f67ebeb1bf0e4bc2` |
| 88 | `theorem` | [IsClosedMap.closure_image_eq_of_continuous](../../../../GeneralTopology/MapsBasic.lean/declarations/isclosedmap-closure-image-eq-of-continuous.md) | 533 | `result-track:767cfed4d8a2d59fb2443cd52ad0c9c5824631759f46f4aa8adc74cc075739a2` |
| 89 | `theorem` | [IsClosedMap.lift'_closure_map_eq](../../../../GeneralTopology/MapsBasic.lean/declarations/isclosedmap-lift-closure-map-eq.md) | 538 | `result-track:62614e251ba02c301dee4e40124fa935af9c2ba0a14128516a6ef4544f94a9b5` |
| 90 | `theorem` | [IsClosedMap.mapClusterPt_iff_lift'_closure](../../../../GeneralTopology/MapsBasic.lean/declarations/isclosedmap-mapclusterpt-iff-lift-closure.md) | 546 | `result-track:b3185bea277e777a76b7df1b290c913863a10b53dab2be14cd0f3589bb113fe0` |
| 91 | `lemma` | [IsOpenEmbedding.isEmbedding](../../../../GeneralTopology/MapsBasic.lean/declarations/isopenembedding-isembedding.md) | 559 | `result-track:5c0561984102f460ef53faf93cc6ccee40940ef4b25f5e29a80f6874b5b0dd43` |
| 92 | `lemma` | [IsOpenEmbedding.isInducing](../../../../GeneralTopology/MapsBasic.lean/declarations/isopenembedding-isinducing.md) | 560 | `result-track:2915bf39bdf70c4accb24cff0722bcd9f47f3ede5d0ccfb72d6282dab1ec6944` |
| 93 | `lemma` | [IsOpenEmbedding.isOpenMap](../../../../GeneralTopology/MapsBasic.lean/declarations/isopenembedding-isopenmap.md) | 565 | `result-track:7a52e823b9c6c6591551cda630718195562ae65190eb333830a7be9b119c4072` |
| 94 | `theorem` | [IsOpenEmbedding.map_nhds_eq](../../../../GeneralTopology/MapsBasic.lean/declarations/isopenembedding-map-nhds-eq.md) | 568 | `result-track:e05433e1ea02eac562a6629f402879af9dac72ff67aa2222b289387e083bbe4c` |
| 95 | `lemma` | [IsOpenEmbedding.isOpen_iff_image_isOpen](../../../../GeneralTopology/MapsBasic.lean/declarations/isopenembedding-isopen-iff-image-isopen.md) | 572 | `result-track:be04f98b3bb276910ba5fc8d2dbec5e99bf7909c3f9f0b2c4d3c5f46579cf7a0` |
| 96 | `theorem` | [IsOpenEmbedding.tendsto_nhds_iff](../../../../GeneralTopology/MapsBasic.lean/declarations/isopenembedding-tendsto-nhds-iff-source-edition-2.md) | 580 | `result-track:a6557baafc6da61134355f2519153e13464a0ddb034ccfd5e3175d34d6c4c6f0` |
| 97 | `theorem` | [IsOpenEmbedding.tendsto_nhds_iff'](../../../../GeneralTopology/MapsBasic.lean/declarations/isopenembedding-tendsto-nhds-iff.md) | 584 | `result-track:7a88b107ce1a54e447bcd17fcdddae93dc8ced78e57edcdb377beaec7407e2eb` |
| 98 | `theorem` | [IsOpenEmbedding.continuousAt_iff](../../../../GeneralTopology/MapsBasic.lean/declarations/isopenembedding-continuousat-iff.md) | 588 | `result-track:4b8c009f496f7d8bc8d3f5320762af603d09dea6f8447cddec5ff21744aa92ac` |
| 99 | `theorem` | [IsOpenEmbedding.continuous](../../../../GeneralTopology/MapsBasic.lean/declarations/isopenembedding-continuous.md) | 592 | `result-track:b92a1836561474341e995c086e5b774b8c5bc830166f7a92d0df3b41c459beb8` |
| 100 | `lemma` | [IsOpenEmbedding.isOpen_iff_preimage_isOpen](../../../../GeneralTopology/MapsBasic.lean/declarations/isopenembedding-isopen-iff-preimage-isopen.md) | 595 | `result-track:a4cb8bcc8a9ebfca0a43f5afea4e5a3e8882ea7d7ae6ae8f3acd5409e06c2850` |
| 101 | `lemma` | [IsOpenEmbedding.of_isEmbedding_isOpenMap](../../../../GeneralTopology/MapsBasic.lean/declarations/isopenembedding-of-isembedding-isopenmap.md) | 602 | `result-track:d39de56d9e279c16ca42a391109620ab68785d18c79d8fec448f8c0b75e59663` |
| 102 | `lemma` | [IsEmbedding.isOpenEmbedding_of_surjective](../../../../GeneralTopology/MapsBasic.lean/declarations/isembedding-isopenembedding-of-surjective.md) | 610 | `result-track:3337a1147589d595caa7a802212d5b215ffd11f857d557091433b9ee3b043ced` |
| 103 | `lemma` | [isOpenEmbedding_iff_isEmbedding_isOpenMap](../../../../GeneralTopology/MapsBasic.lean/declarations/isopenembedding-iff-isembedding-isopenmap.md) | 619 | `result-track:f87a210367e642f964495c0e55e2bc9eb147c05d8ee7c8797b26bd5198eefde4` |
| 104 | `theorem` | [IsOpenEmbedding.of_continuous_injective_isOpenMap](../../../../GeneralTopology/MapsBasic.lean/declarations/isopenembedding-of-continuous-injective-isopenmap.md) | 625 | `result-track:f4afab2facd5a604f60f4a6ba54179c7562482aa6bd88e0d8efbe6ca74536326` |
| 105 | `lemma` | [isOpenEmbedding_iff_continuous_injective_isOpenMap](../../../../GeneralTopology/MapsBasic.lean/declarations/isopenembedding-iff-continuous-injective-isopenmap.md) | 632 | `result-track:08a12997fc1cee32b0293d77120d76d5563163442dc717dc057bf1800273c3fa` |
| 106 | `lemma` | [id](../../../../GeneralTopology/MapsBasic.lean/declarations/id.md) | 644 | `result-track:5167c88a62aeeb973fcd827f9b8d6c050cef3a4e7df015ca9223fcaac67fe3e6` |
| 107 | `lemma` | [comp](../../../../GeneralTopology/MapsBasic.lean/declarations/comp.md) | 646 | `result-track:37a0f0bc837bd487010dbe21849e0c07e41d8dc83daf1d2fd461b59fb372cd1b` |
| 108 | `theorem` | [isOpenMap_iff](../../../../GeneralTopology/MapsBasic.lean/declarations/isopenmap-iff.md) | 650 | `result-track:3e4e2f1507a5e5d88ea14bdf6979810d9f6f7d4b449cc0f55336ed4fe99bd621` |
| 109 | `theorem` | [of_comp_iff](../../../../GeneralTopology/MapsBasic.lean/declarations/of-comp-iff.md) | 654 | `result-track:3d79789e5b2068ba9cf8d944ffcf20808d44cd0d867ea0c96bdef8da8ffceba8` |
| 110 | `lemma` | [of_comp](../../../../GeneralTopology/MapsBasic.lean/declarations/of-comp-source-edition-3.md) | 659 | `result-track:7d73ae97f614199e710f70f7353053f0fcaca5f601d8c77dfdb24e9bcfc7e6be` |
| 111 | `theorem` | [of_isEmpty](../../../../GeneralTopology/MapsBasic.lean/declarations/of-isempty.md) | 662 | `result-track:276568f1f3bf012d5247f0049ed2513354cde811ba8508d3d3e706c242882720` |
| 112 | `theorem` | [image_mem_nhds](../../../../GeneralTopology/MapsBasic.lean/declarations/image-mem-nhds-source-edition-2.md) | 665 | `result-track:4cb1838acdaad86ff4d71d00b25d84a8e848e24d40e978248dbadbeaf402a619` |
| 113 | `lemma` | [isEmbedding](../../../../GeneralTopology/MapsBasic.lean/declarations/isembedding.md) | 679 | `result-track:5dc0adcd5eda37e62551dd96f1379f2954464f324aec7262b0892d46eeb89fa0` |
| 114 | `lemma` | [isInducing](../../../../GeneralTopology/MapsBasic.lean/declarations/isinducing-source-edition-2.md) | 680 | `result-track:fc71452a1be1d2f03282082a7e0435339c5bf55660033e8edb65ca90c98b6e8d` |
| 115 | `lemma` | [continuous](../../../../GeneralTopology/MapsBasic.lean/declarations/continuous-source-edition-3.md) | 681 | `result-track:aed8d187c4ba8da8849343f47da66b6b2762c6dc92be99803b02db4b1768c92d` |
| 116 | `lemma` | [tendsto_nhds_iff](../../../../GeneralTopology/MapsBasic.lean/declarations/tendsto-nhds-iff-source-edition-3.md) | 685 | `result-track:e12b5f725d8cc722b230d6c6be9c2fd87aa39c22fcccf63dc854dbbf029bbf45` |
| 117 | `lemma` | [isClosedMap](../../../../GeneralTopology/MapsBasic.lean/declarations/isclosedmap.md) | 688 | `result-track:cd00ae6ee3df49c73ef8de43c56a1a24ebf0f83218da39ebd750674d691c0b32` |
| 118 | `lemma` | [isClosed_iff_image_isClosed](../../../../GeneralTopology/MapsBasic.lean/declarations/isclosed-iff-image-isclosed.md) | 691 | `result-track:eadc2a6039d2d8dbfec414e859d04f2422f36dbbd8e9d7618eab11661df2ee0f` |
| 119 | `lemma` | [isClosed_iff_preimage_isClosed](../../../../GeneralTopology/MapsBasic.lean/declarations/isclosed-iff-preimage-isclosed.md) | 699 | `result-track:57e9001e239da73aeda4d8a46153812b8b9f4ed155ccbb3c20fe7e686a31ad56` |
| 120 | `lemma` | [of_isEmbedding_isClosedMap](../../../../GeneralTopology/MapsBasic.lean/declarations/of-isembedding-isclosedmap.md) | 706 | `result-track:6e5f53eaf03e18c95c47e10e8d481f42b7906818289bb61394ef7971491f4bc4` |
| 121 | `lemma` | [of_continuous_injective_isClosedMap](../../../../GeneralTopology/MapsBasic.lean/declarations/of-continuous-injective-isclosedmap.md) | 713 | `result-track:7881fc72b115b60dbf57f01406b698c410c0da51f05ca3eb2d6784f386cd4b81` |
| 122 | `lemma` | [isClosedEmbedding_iff_continuous_injective_isClosedMap](../../../../GeneralTopology/MapsBasic.lean/declarations/isclosedembedding-iff-continuous-injective-isclosedmap.md) | 720 | `result-track:cbf3d44fdc3949bda03353c03db5d1f626dfe7b5a1dbb69616ef97626179f26b` |
| 123 | `theorem` | [id](../../../../GeneralTopology/MapsBasic.lean/declarations/id-source-edition-3.md) | 725 | `result-track:62710e7e58c1faf8fca7662879ed0f34bc235c2df12fb2f7093e503b15418994` |
| 124 | `theorem` | [comp](../../../../GeneralTopology/MapsBasic.lean/declarations/comp-source-edition-3.md) | 727 | `result-track:75a30079298eeb546cba0764f963d30bf54616745ded9f34566325918289c3e4` |
| 125 | `lemma` | [of_comp_iff](../../../../GeneralTopology/MapsBasic.lean/declarations/of-comp-iff-source-edition-2.md) | 731 | `result-track:662b717d7fd87dc0cd61ada32621658e3db983ad1ad2fca54eeb46b80a0e29a0` |
| 126 | `theorem` | [closure_image_eq](../../../../GeneralTopology/MapsBasic.lean/declarations/closure-image-eq.md) | 738 | `result-track:8bdd1211ef8f6b4f0ef695a2b4c87479c17e59797d562b01316604b1bbfeb4dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=95d9ffbca1035c84b11e730e332bc47f76090eb4e553f3bd3d8eca76c9dfaf25 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variantd733a29f652b2bf8ec2b1cad288e33e014f8f764cf40753cf5e9ad500481b68f.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variantd733a29f652b2bf8ec2b1cad288e33e014f8f764cf40753cf5e9ad500481b68f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
