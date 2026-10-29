# Verification target: One Point Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c98464f3146096cd3f74246727d43ec2e08b20cf",
  "lexical_observation_count": 104,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant94ca5accdd8acbcbc21aa024323adb8f93098430bc1dfc70559014d21e1747a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/OnePointBasicPublic.lean/index.md) · [Full source](../../../../GeneralTopology/OnePointBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c98464f3146096cd3f74246727d43ec2e08b20cf`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant94ca5accdd8acbcbc21aa024323adb8f93098430bc1dfc70559014d21e1747a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant94ca5accdd8acbcbc21aa024323adb8f93098430bc1dfc70559014d21e1747a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.WithTopology` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [OnePoint](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/onepoint.md) | 55 | `declaration-track:e4d8864ec200f4801ed09aff069bf68237e8c01d01e5685d5389b2e8aaa2514d` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/instance-source-edition-5.md) | 59 | `declaration-track:60c3072ecefc00f0beafde68c42eca6ae6aae8717217f0cc484ae835cb65118b` |
| 3 | `def` | [infty](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/infty.md) | 68 | `declaration-track:054c78c9697e4c6c4c9ba6cd8a9b4b575c861374ab3ba67f9f8a1a4cbd9d75dd` |
| 4 | `def` | [some](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/some.md) | 74 | `declaration-track:6340633a35a2b37f735cc42aee50be183bcae747ac7cbef3d32b58723f3e5eaf` |
| 5 | `lemma` | [some_eq_iff](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/some-eq-iff.md) | 77 | `result-track:ab1a710326863d9db1bf2bf69be6bab4fffa70a38fcf0e90502a2f888b54a5f8` |
| 6 | `instance` | [(anonymous)](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/instance-source-edition-8.md) | 81 | `declaration-track:8a2a259f82744615336618009645375d693cbf5d4a28a41aafd6d5f4f9d388f4` |
| 7 | `instance` | [(anonymous)](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/instance-source-edition-13.md) | 83 | `declaration-track:e20de07d19d4d864623cf7c286bca36d36ac2a6e6662afbfa17c50caecf959b6` |
| 8 | `instance` | [(anonymous)](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/instance-source-edition-4.md) | 85 | `declaration-track:4ebeec2115ae453fda7472c645d94a3d83d599fdad53c92381769888027aa3ec` |
| 9 | `lemma` | [«forall»](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/forall.md) | 88 | `result-track:763439efc9f77a218bed4a9d370ed38ddc6d33564f9545e4281f37d3ea39185a` |
| 10 | `lemma` | [«exists»](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/exists.md) | 92 | `result-track:0bd7453847e02dc2aea137a74fd4baa5f025983933cec1d4e3649593f36e61a9` |
| 11 | `instance` | [(anonymous)](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/instance-source-edition-7.md) | 96 | `declaration-track:7c50a8cb1c8107768ab079869d578c512de721e451aba716fb307950f9d5d756` |
| 12 | `instance` | [infinite](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/infinite.md) | 99 | `declaration-track:348119d78ebb5c58057cd72e97ba886d92215f0f646d0f23297553440480f727` |
| 13 | `theorem` | [coe_injective](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/coe-injective.md) | 102 | `result-track:2c7e948725aabbe43d69158db93e2fc8407e2f0d3fca4890d760ca077d994a08` |
| 14 | `theorem` | [coe_eq_coe](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/coe-eq-coe.md) | 106 | `result-track:a46d99398748d139b55698b5c2e628976a160f1730a24f4bc22bac4468684ae8` |
| 15 | `theorem` | [coe_ne_infty](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/coe-ne-infty.md) | 110 | `result-track:6eefc0cfe1b0d6f05e23b9bb89de3ca36ae5bc2c1402b681a726c31520babebd` |
| 16 | `theorem` | [infty_ne_coe](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/infty-ne-coe.md) | 114 | `result-track:6577ae7d2ca787d939b5c85d3c4351f187e4eb5a532d9df51abf1044dcb06c31` |
| 17 | `def` | [rec](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/rec.md) | 119 | `declaration-track:7da6171761772c1489b9f227906fac886b6652c4e77e1fc93cd7e049fb7b61ad` |
| 18 | `def` | [elim](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/elim.md) | 125 | `declaration-track:560834fd10dd924e79776b63d2ed9c95ed641c0308f07cbfad0ff8481f113a62` |
| 19 | `theorem` | [elim_infty](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/elim-infty.md) | 127 | `result-track:b538cc7a63943b6fbe2c48045819de51e45e163d573f0dcc150a19f130d64e10` |
| 20 | `theorem` | [elim_some](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/elim-some.md) | 129 | `result-track:f318949783e20e3431b2ea66571b9e8000eeb28ed109bc7a48b049bde1e35bc0` |
| 21 | `theorem` | [isCompl_range_coe_infty](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/iscompl-range-coe-infty.md) | 131 | `result-track:c40d37c6d0716aed34534c282ec108a5e2a0ed8ac45b3ecb41b94cb30c530b00` |
| 22 | `theorem` | [range_coe_union_infty](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/range-coe-union-infty.md) | 134 | `result-track:25b3b90cd5eb8d4899391834bb92226b31b30566726c8e9f893c0f711a239043` |
| 23 | `theorem` | [insert_infty_range_coe](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/insert-infty-range-coe.md) | 138 | `result-track:e01ba3a109ae772705954f63825191eadbb7c89666f699726a2077383400cd70` |
| 24 | `theorem` | [compl_range_coe](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/compl-range-coe.md) | 142 | `result-track:460970e6193e1b83b992df10af487adee1ad7da56971b7813a127bfe5ed8f2dc` |
| 25 | `theorem` | [compl_infty](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/compl-infty.md) | 145 | `result-track:a89b053cee7ffe811da6005ecf8e80fae78fb4006a4f17b902c19f9448f48e0d` |
| 26 | `theorem` | [compl_image_coe](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/compl-image-coe.md) | 148 | `result-track:a5084be753f60af2dcec5816b47095699d81b0e4c2ede89fb638c203b969fd0f` |
| 27 | `theorem` | [ne_infty_iff_exists](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/ne-infty-iff-exists.md) | 151 | `result-track:1ef16b2e1df167ebf6de45924a738b1a96067c759d8e45489382bf4ed5a55119` |
| 28 | `instance` | [canLift](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/canlift.md) | 154 | `declaration-track:c24ec3e5284da19b91c27fd8074ca77f1dfba2b9f57f49b0489e310a8a8cf75d` |
| 29 | `theorem` | [notMem_range_coe_iff](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/notmem-range-coe-iff.md) | 157 | `result-track:beb3993a1a7be0528d649cf5c05df0df202be40d73ed4b67684387b9513d1b42` |
| 30 | `theorem` | [infty_notMem_range_coe](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/infty-notmem-range-coe.md) | 160 | `result-track:8fd819cf7aa9f87767129a49b40a2e359776250bc065d45d8f685313ac84139f` |
| 31 | `theorem` | [infty_notMem_image_coe](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/infty-notmem-image-coe.md) | 163 | `result-track:caac5b382c6f0abbebdc4c202748a5e546e2396075b45a325950aedd595f4f0f` |
| 32 | `theorem` | [coe_preimage_infty](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/coe-preimage-infty.md) | 167 | `result-track:4a5217605be45583a763fb5b24e589484a9d3da39781976684f16814befa1496` |
| 33 | `def` | [map](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/map.md) | 173 | `declaration-track:3a81c0950c55fde0b9af268c5b1300d1cc9e53044cc7d3b73ebeb940484297e7` |
| 34 | `theorem` | [map_infty](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/map-infty.md) | 176 | `result-track:87138ba388369aea28990ec8378ea5c2020c0f2441dfab3371de4be18aa40f5f` |
| 35 | `theorem` | [map_some](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/map-some.md) | 177 | `result-track:667736ae610b34e8b02d8dd0753f42ae7e8eafccee649e743a7957794b087b35` |
| 36 | `theorem` | [map_id](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/map-id.md) | 178 | `result-track:7e26171c00437d29865a402050aa2d7484ef3ee7751609372147ab3f2098127f` |
| 37 | `theorem` | [map_comp](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/map-comp.md) | 180 | `result-track:3732f9aafce249f6199c07120ba6bbfcee3aafc2546b8efc1626234a9afacc28` |
| 38 | `instance` | [(anonymous)](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/instance-source-edition-3.md) | 200 | `declaration-track:4841557e28442b4e0ea819c477276a06982987e4a5cefc9403f6df6fcfa26b86` |
| 39 | `theorem` | [isOpen_def](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/isopen-def.md) | 220 | `result-track:c421ae6a15c7219e98143536c878ce25f95be29de2edf40b730a2d4616d83f72` |
| 40 | `theorem` | [isOpen_iff_of_mem'](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/isopen-iff-of-mem.md) | 224 | `result-track:2e32b697595df4c4cff6f5632705e54b26ceb624f169669cdb3491adf9a33ac3` |
| 41 | `theorem` | [isOpen_iff_of_mem](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/isopen-iff-of-mem-source-edition-2.md) | 228 | `result-track:37c508073ac9f7eac1c7c5e9c19d4bb431fe8be00f1b2fe53135416b5be16626` |
| 42 | `theorem` | [isOpen_iff_of_notMem](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/isopen-iff-of-notmem.md) | 232 | `result-track:450d88e36babb6fd70db4163228b7fee7b401f61bcc9b8974855fb5fa8d888da` |
| 43 | `theorem` | [isClosed_iff_of_mem](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/isclosed-iff-of-mem.md) | 235 | `result-track:4e15da27c8c48de554b3a40b5872b5d9d51914fbde190d6880cd0b089226d144` |
| 44 | `theorem` | [isClosed_iff_of_notMem](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/isclosed-iff-of-notmem.md) | 239 | `result-track:96934320a36426c1642565f72b11cdae481443f7ecac357d04a424ae3abb0721` |
| 45 | `theorem` | [isOpen_image_coe](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/isopen-image-coe.md) | 244 | `result-track:9a6d8e5075ea1f393a352848303afb313a133ddeef35f514dbeebd4ce7dc4cb7` |
| 46 | `theorem` | [isOpen_compl_image_coe](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/isopen-compl-image-coe.md) | 247 | `result-track:9157da6ac35e873f5d06ddb38f2e1e96186e0777006bc2cb946bb76bc3b09122` |
| 47 | `theorem` | [isClosed_image_coe](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/isclosed-image-coe.md) | 253 | `result-track:9aa1eb1e649097bbcebd82959debdac23a78b861e7c461c40f8a8d25823e766d` |
| 48 | `def` | [opensOfCompl](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/opensofcompl.md) | 258 | `declaration-track:2cb088bd4c80205e8aee1feae8bbfa6ed7e9ac9edca32251048fd98379f20425` |
| 49 | `theorem` | [infty_mem_opensOfCompl](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/infty-mem-opensofcompl.md) | 262 | `result-track:2775ec4cf7e2e4357c7d5a146ea1d2e769e087122b83ef7961e6a3fd72ec6a36` |
| 50 | `theorem` | [continuous_coe](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/continuous-coe.md) | 267 | `result-track:78d92278de34ac88d973211fde443899d37a523b47e95f5a8f49343599d1fe25` |
| 51 | `theorem` | [isOpenMap_coe](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/isopenmap-coe.md) | 270 | `result-track:422ff169a15e587e23369f3f202b8710a5a6ff9bdb499ca6ccf015fcfbe84f67` |
| 52 | `theorem` | [isOpenEmbedding_coe](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/isopenembedding-coe.md) | 272 | `result-track:af928f1cb1f5000fee7307311d2a3b432fb2bac3531897f2ab6e27618f218330` |
| 53 | `theorem` | [isOpen_range_coe](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/isopen-range-coe.md) | 275 | `result-track:4686d39ab39c1e7ba8f53c8961da93f928a9dea18b38a2ad9c014c86ce62da2b` |
| 54 | `theorem` | [isClosed_infty](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/isclosed-infty.md) | 278 | `result-track:7a34b392d1c7ff1968f71f33b0aed740d51a75037bc9600a23dd845ec6cd38eb` |
| 55 | `theorem` | [nhds_coe_eq](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/nhds-coe-eq.md) | 282 | `result-track:86d219e32e58f420c36e05d9023f96f6949e92177f5868f9db5d8b070ca7b0b4` |
| 56 | `theorem` | [nhdsWithin_coe_image](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/nhdswithin-coe-image.md) | 285 | `result-track:93d28cb046f7fd3c9436b029a45242583de969aeb0445f2848df6e4efb709285` |
| 57 | `theorem` | [nhdsWithin_coe](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/nhdswithin-coe.md) | 289 | `result-track:58a2641a2617aab6159be1b4be38053d022e8f8fbb9afe13877fe531fa2c9b70` |
| 58 | `theorem` | [comap_coe_nhds](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/comap-coe-nhds.md) | 292 | `result-track:bb3bd529606a0e299974d740ff9033daeb0b1588594e762f0d3609ecddb389f8` |
| 59 | `instance` | [nhdsNE_coe_neBot](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/nhdsne-coe-nebot.md) | 297 | `declaration-track:c993b6f1c57cc0e8294dcd30a9be43249f77efa8819c1e706525ea95a4e71aed` |
| 60 | `theorem` | [nhdsNE_infty_eq](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/nhdsne-infty-eq.md) | 300 | `result-track:057e723fa6f49faa65bffe59e432e59fc05b2cacea485da0a15a8ff1374987b5` |
| 61 | `instance` | [nhdsNE_infty_neBot](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/nhdsne-infty-nebot.md) | 310 | `declaration-track:c9f7bf02f12e9c2ee383bd77e26057f2e62985113bbd8439490c4ee12f90c8c5` |
| 62 | `instance` | [(anonymous)](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/instance.md) | 314 | `declaration-track:26548ad55b42e86a61b85da5a4b28ea5f2e16e05307d275d6d040997305a45f1` |
| 63 | `theorem` | [nhds_infty_eq](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/nhds-infty-eq.md) | 318 | `result-track:0669cf87550686e78a8f2ffd46601cb3b94a853c57506d8a00d88d9ca9760295` |
| 64 | `theorem` | [tendsto_coe_infty](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/tendsto-coe-infty.md) | 321 | `result-track:ddff0276f15333463c41f92d32a764210be546b8fd142e297aa05e41b15b3da7` |
| 65 | `theorem` | [hasBasis_nhds_infty](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/hasbasis-nhds-infty.md) | 325 | `result-track:e70420e46d365f89a89a549af7d108c330325f84b4eaf8855fd325f312c3ef3c` |
| 66 | `theorem` | [comap_coe_nhds_infty](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/comap-coe-nhds-infty.md) | 332 | `result-track:6649ba782a4e7e3586aaad94abc4f33efe9da3e3c8f1290c347b185f0ee1ea45` |
| 67 | `theorem` | [le_nhds_infty](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/le-nhds-infty.md) | 335 | `result-track:5566a04769266db52754e56d42b4594f081388482910e6d793f367c2c8b671fc` |
| 68 | `theorem` | [ultrafilter_le_nhds_infty](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/ultrafilter-le-nhds-infty.md) | 339 | `result-track:1cf05119d5ce4e037cc4b660b114ba72f77d4d179fff346a33a4c9ccef336446` |
| 69 | `theorem` | [tendsto_nhds_infty'](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/tendsto-nhds-infty-source-edition-2.md) | 344 | `result-track:c36ff07569a7dcd45ea4bf3beea29e224a27e7fb9112a1f9a2f5fa374ea986db` |
| 70 | `theorem` | [tendsto_nhds_infty](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/tendsto-nhds-infty.md) | 348 | `result-track:45d7077aee9834758de459f6515361667ca7809e051aca55081200107b60968e` |
| 71 | `theorem` | [continuousAt_infty'](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/continuousat-infty.md) | 355 | `result-track:1ef59a79c64eae48a4a83cf842c9b042940603226ec3883719d32b5fdffcd5a0` |
| 72 | `theorem` | [continuousAt_infty](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/continuousat-infty-source-edition-2.md) | 359 | `result-track:fd0403a9ab2c3fb2deb335219c8ec556fdb96d8b4c6079c86d8b020f6476406f` |
| 73 | `theorem` | [continuousAt_coe](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/continuousat-coe.md) | 364 | `result-track:9638d70979610e1e9b7d40e1f42660db77694ab2cd4272c6c9739b8fe063e0fa` |
| 74 | `lemma` | [continuous_iff](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/continuous-iff.md) | 368 | `result-track:13f7c6409a3856a7d28c3ad8dc63bf2f005a230008ca31b92096a320d6ae7681` |
| 75 | `def` | [continuousMapMk](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/continuousmapmk.md) | 377 | `declaration-track:ac1419f5e8f531728b386187eaff2493c02213b7805ebee6bab19c1fa1bc5564` |
| 76 | `lemma` | [continuous_iff_from_discrete](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/continuous-iff-from-discrete.md) | 384 | `result-track:b499ff8de0a803ce63195be0e61c38f5350dcd9852883e39ee6cba790be3f77b` |
| 77 | `def` | [continuousMapMkDiscrete](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/continuousmapmkdiscrete.md) | 393 | `declaration-track:ca3cfa3d235b92a6ce2b27f4316ec2648d18b9e4de63c64dbcb6e032259d559e` |
| 78 | `def` | [continuousMapDiscreteEquiv](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/continuousmapdiscreteequiv.md) | 403 | `declaration-track:414370675f0d24b8fec741f200af098343cd76d69f1f07d7f8050a1a730bb6ee` |
| 79 | `lemma` | [continuous_iff_from_nat](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/continuous-iff-from-nat.md) | 421 | `result-track:b8fc8915a52b90d9befdb5788d479d541e92c536c36b57dcd3e011d430704968` |
| 80 | `def` | [continuousMapMkNat](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/continuousmapmknat.md) | 429 | `declaration-track:2992b530e6efea591a5e828174744f446e852760eefd69e492ad07632f1f7189` |
| 81 | `def` | [continuousMapNatEquiv](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/continuousmapnatequiv.md) | 438 | `declaration-track:844dc4525d9824149ad47d033a20b9b4db65b8d5fddf7c0acc62fd3bd4f068c5` |
| 82 | `theorem` | [denseRange_coe](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/denserange-coe.md) | 446 | `result-track:586e6134b18633b0fbda52c5c3bcb6dc5c86103ecf28690d0f8335ee236ea20f` |
| 83 | `theorem` | [isDenseEmbedding_coe](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/isdenseembedding-coe.md) | 450 | `result-track:92c990fc855f1c590470eafbed00102da60faf0e9573284306b0bc3dad135fb4` |
| 84 | `theorem` | [specializes_coe](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/specializes-coe.md) | 454 | `result-track:ce290e77bcead3ad502a0673ee2068314933aea860726c5bfdc141649c53e686` |
| 85 | `theorem` | [inseparable_coe](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/inseparable-coe.md) | 458 | `result-track:248c348a195a67f78f7a648fd898ed4b62dea7e77cf37c0e1001bb272d61c5cd` |
| 86 | `theorem` | [not_specializes_infty_coe](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/not-specializes-infty-coe.md) | 461 | `result-track:efeb70019b98fe26a0bbb2b7aa34c7d50b1babe657b1d7d2f7181bfde2d69518` |
| 87 | `theorem` | [not_inseparable_infty_coe](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/not-inseparable-infty-coe.md) | 464 | `result-track:703e0ca4382c255ecb32d2a8b20d29cfeec05e7c311884959159b15143af0929` |
| 88 | `theorem` | [not_inseparable_coe_infty](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/not-inseparable-coe-infty.md) | 467 | `result-track:be33ce7fbbfe0bcc16acb1410b3e432d7f4c8d51c805d38f6556df9a4e26d290` |
| 89 | `theorem` | [inseparable_iff](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/inseparable-iff.md) | 470 | `result-track:58b5e0b8d6d00dc8f97f8c89b0147e9e3af3557281401c799a094478d7d96207` |
| 90 | `theorem` | [continuous_map_iff](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/continuous-map-iff.md) | 475 | `result-track:d6c8e717e66188a03c9f538b3144740cb1719b0eb256c55ced21e6201d5f8350` |
| 91 | `theorem` | [continuous_map](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/continuous-map.md) | 482 | `result-track:6485a198553a356478395ee2ad0a4a2eeaf569bbc6c8f33842ca54fa8ee89532` |
| 92 | `instance` | [(anonymous)](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/instance-source-edition-9.md) | 500 | `declaration-track:94e03fe2fecb5c80d6d18eb7930a58c543af31626875ddc7be7a3816e43034e1` |
| 93 | `instance` | [(anonymous)](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/instance-source-edition-11.md) | 509 | `declaration-track:cec0f857b6091596067f6e146ef24794adf97edc1ed145f2910c0e9659932ce9` |
| 94 | `instance` | [(anonymous)](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/instance-source-edition-10.md) | 515 | `declaration-track:b42555a3552f745fd5e094333b74bdf1017cc98f3e7587290c76e8fdd042899f` |
| 95 | `instance` | [(anonymous)](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/instance-source-edition-2.md) | 524 | `declaration-track:3d365136d651d4b3c0bf70f8595e87a2d8cae821a68054b1dd3c792a693bc377` |
| 96 | `example` | [(anonymous)](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/example.md) | 540 | `declaration-track:c27a7d12604b391858431fc068e58be0b4d9f22b86026cfa4afea671d8ed32a5` |
| 97 | `instance` | [(anonymous)](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/instance-source-edition-6.md) | 543 | `declaration-track:79452e1cfbec220fd13c360fccae3719473ab11f39658fd87b73fffa3bb64b5b` |
| 98 | `theorem` | [not_continuous_cofiniteTopology_of_symm](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/not-continuous-cofinitetopology-of-symm.md) | 549 | `result-track:7043c223518db8dc2b1147b0a7cc9ef13d4bf9744ec382175c03e7d0671fd0ff` |
| 99 | `instance` | [(anonymous)](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/instance-source-edition-12.md) | 557 | `declaration-track:d550beac8d5a9776344741c674a2f1d49b79bc562d8333006c72a220de911ae1` |
| 100 | `def` | [equivOfIsEmbeddingOfRangeEq](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/equivofisembeddingofrangeeq.md) | 580 | `declaration-track:931ffac5882a36c32919ec1d12d5af241b823beb04f5a6b1bb346579f7fa65e1` |
| 101 | `lemma` | [equivOfIsEmbeddingOfRangeEq_apply_coe](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/equivofisembeddingofrangeeq-apply-coe.md) | 607 | `result-track:406c49181f534294f858d662bbfe84e8bce2d0d1b876bd614770cc32714a7d78` |
| 102 | `lemma` | [equivOfIsEmbeddingOfRangeEq_apply_infty](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/equivofisembeddingofrangeeq-apply-infty.md) | 612 | `result-track:5c8d4ddad8fae5d7aabf27d6e899d06df844c5f5f79f716233e6cd21efde0a66` |
| 103 | `def` | [onePointCongr](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/onepointcongr.md) | 629 | `declaration-track:7672d2bfe5b1d42bc556188ce44dfbbf2c8a550000dfc01cf3032e46fd673262` |
| 104 | `theorem` | [Continuous.homeoOfEquivCompactToT2.t1_counterexample](../../../../GeneralTopology/OnePointBasicPublic.lean/declarations/continuous-homeoofequivcompacttot2-t1-counterexample.md) | 645 | `result-track:dbce4c2622365488d81400134bea902b54ccc4b36d0cbae77ddcf7c794900246` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=de7eb4ce71b1eff42cf287ab3ae9da23e7fa1287c3feb0f0a6e2338a2516e2a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant94ca5accdd8acbcbc21aa024323adb8f93098430bc1dfc70559014d21e1747a0.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant94ca5accdd8acbcbc21aa024323adb8f93098430bc1dfc70559014d21e1747a0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
