# Verification target: Partition Basic Not Mem Bot

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ab959332b9188071df0df2fae6a9c90e725afc4",
  "lexical_observation_count": 112,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4712d15d0d109269e5d1dd128a3a9dfa613986495d66c60f61eb046ce75b7bf5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/index.md) · [Full source](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ab959332b9188071df0df2fae6a9c90e725afc4`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant4712d15d0d109269e5d1dd128a3a9dfa613986495d66c60f61eb046ce75b7bf5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant4712d15d0d109269e5d1dd128a3a9dfa613986495d66c60f61eb046ce75b7bf5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Option` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.BoxIntegral.Box.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Pairwise.Lattice` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Prepartition](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/prepartition.md) | 50 | `declaration-track:8182dceb68bcdfd1b38366a0c9e6f0601d2f309a28388bdd8ae25c41c4455608` |
| 2 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/instance-source-edition-2.md) | 62 | `declaration-track:37c2c5fd94600d80276474feb0a84535ebed5a9b9fe21482fdbb0275d2d199a9` |
| 3 | `theorem` | [mem_boxes](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/mem-boxes.md) | 66 | `result-track:969ec345d649c3531c29e5f515d4ae48f05c6ebef749a5cbff34e0877b1bda8d` |
| 4 | `theorem` | [mem_mk](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/mem-mk.md) | 69 | `result-track:2f2f514fab1d3329ed99945ad539bb4f03a7937b1528b33634b38811202be2f3` |
| 5 | `theorem` | [disjoint_coe_of_mem](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/disjoint-coe-of-mem.md) | 71 | `result-track:4f11ba49a31552671ed68616e49c20b6f444688f7e3f50061ddb94bb56864a91` |
| 6 | `theorem` | [eq_of_mem_of_mem](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/eq-of-mem-of-mem.md) | 75 | `result-track:7d0d0c6ba5fc6b44c52fa635cff2fd0ace179637eb248ce462aa2feaed42567a` |
| 7 | `theorem` | [eq_of_le_of_le](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/eq-of-le-of-le.md) | 78 | `result-track:7cfb5d14f47a9a491d65412741d59acc3068a9b0fbfb742696bbb8108bc1f6b4` |
| 8 | `theorem` | [eq_of_le](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/eq-of-le.md) | 81 | `result-track:7e8b4c0aee7d0cb19620c98993e1d8a042191c9c4ef6ee093970715703af3e7f` |
| 9 | `theorem` | [le_of_mem](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/le-of-mem.md) | 84 | `result-track:e61a00f85436bcdb4d3418247a741c0a990e06d442b3a7427f6d6f21d146c84c` |
| 10 | `theorem` | [lower_le_lower](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/lower-le-lower.md) | 87 | `result-track:08a2d4b2f423c719cfd6516ca745396bc6cd57fc78bd71f0e3627e811a11e030` |
| 11 | `theorem` | [upper_le_upper](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/upper-le-upper.md) | 90 | `result-track:7806a632b287028aabb18e473e286f86408bc774996ecf590352e575e9f69e29` |
| 12 | `theorem` | [injective_boxes](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/injective-boxes.md) | 93 | `result-track:a040e8410bcdf23d90c2a892bd9751009067dd50335f1e0a18216eef79f53b20` |
| 13 | `theorem` | [ext](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/ext.md) | 98 | `result-track:888e36bf4a2a66c05ff068b051e2a405ded5b6a48d1986d770b2e2bc0dacb10a` |
| 14 | `def` | [single](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/single.md) | 103 | `declaration-track:2b2a32ed8bb342787de19f8579ec9e868cfa02217fe940b659eeea5bbbe33a11` |
| 15 | `theorem` | [mem_single](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/mem-single.md) | 107 | `result-track:ae4f3c1e2b815cc4e9c1e0defb8d8865ffafa7459ce68146019c28776ee4452a` |
| 16 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/instance-source-edition-4.md) | 111 | `declaration-track:5c0a8f106c02b2dc98b53b1117f467b1f92c4c66e1a3e2f8b16b826cb145e2d0` |
| 17 | `instance` | [partialOrder](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/partialorder.md) | 114 | `declaration-track:1702ae74045c9628f60f53fe55493b3c87a7f58e303812ac54fb088487a9100f` |
| 18 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/instance-source-edition-6.md) | 130 | `declaration-track:dc4a6fc6332d792a240b500ae6dc3e833b1454e4020cdea7f44210068859fd9b` |
| 19 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/instance-source-edition-3.md) | 134 | `declaration-track:3dfa0b64b3957f1c466e8c8311167da4c520e79297167298b480f4e434ae0d36` |
| 20 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/instance-source-edition-5.md) | 140 | `declaration-track:ce128de0abe0a0af672a02187aa4835c79248b0bd8d1a9df84ad01f8e2d5f08e` |
| 21 | `theorem` | [le_def](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/le-def.md) | 142 | `result-track:b3f9490cbbf8c480c04309352fb96a21e5729b25e94d61526d9feead47f02e15` |
| 22 | `theorem` | [mem_top](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/mem-top.md) | 145 | `result-track:37910878b585d209291aaacb09c8ad5d998b3d74264f7e56c89beea597be0d06` |
| 23 | `theorem` | [top_boxes](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/top-boxes.md) | 149 | `result-track:da6164125eacef5a5c850c98c86095232951f3b1e56dfb40c8e0d97646d55ce1` |
| 24 | `theorem` | [notMem_bot](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/notmem-bot.md) | 152 | `result-track:538c4cfb2c820b2af7ba3d416cc8579ff59adf459fd26ebced20e14dbb1b77f9` |
| 25 | `theorem` | [bot_boxes](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/bot-boxes.md) | 158 | `result-track:248c94e37cc3fbdb5c8d081168b1bc77a642833a8c4efa52db7bc54e8940bd7a` |
| 26 | `theorem` | [injOn_setOf_mem_Icc_setOf_lower_eq](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/injon-setof-mem-icc-setof-lower-eq.md) | 162 | `result-track:1aaea0e0afae2e2a9f9c7ce80c53205bc85ed92d03a9f7ca5b27ecfbc54db456` |
| 27 | `theorem` | [card_filter_mem_Icc_le](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/card-filter-mem-icc-le.md) | 182 | `result-track:23dcde319d6ff540d382a6107cc147392a3482596b1556c4e0f5077be89f8612` |
| 28 | `def` | [iUnion](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/iunion.md) | 191 | `declaration-track:3c301450c70c3a0a8cda572088a33c2c7ac413a7cdec2264ec72278ee4823f34` |
| 29 | `theorem` | [iUnion_def](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/iunion-def.md) | 194 | `result-track:0c0c9cfafa269c89dee9d43a16f8b7fca7c7cf1773dee566a06046ae0348da9d` |
| 30 | `theorem` | [iUnion_def'](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/iunion-def-source-edition-2.md) | 196 | `result-track:e55e2c396776a66e60fea9583345ba32300a0a8a272148443215a2e7b5ddb0c7` |
| 31 | `theorem` | [mem_iUnion](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/mem-iunion.md) | 200 | `result-track:31d147f6b2f8e0ddf4d8b301ec48394925a67910ed448ff9d656cce09789a382` |
| 32 | `theorem` | [iUnion_single](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/iunion-single.md) | 205 | `result-track:f37fcbaf12d78996b33dd713fde011871444d1420ed3e28313c546a46200ceaa` |
| 33 | `theorem` | [iUnion_top](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/iunion-top.md) | 208 | `result-track:8a4ec22e40420f1419f3e688c85502fccdcad8665a89b35a5277ec5409105c2c` |
| 34 | `theorem` | [iUnion_eq_empty](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/iunion-eq-empty.md) | 211 | `result-track:690344b5a03c4a203afd057278b5049ac7d898076cfcac8e4206a7c85b9ee1f0` |
| 35 | `theorem` | [iUnion_bot](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/iunion-bot.md) | 215 | `result-track:f1b13c5dcfe74e09a8acdc88b2a09581ae41de4620b81ffe8e7aaddc99390823` |
| 36 | `theorem` | [subset_iUnion](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/subset-iunion.md) | 218 | `result-track:e3970600b3c1f6aea5c15a2cfb7ae9a6315bc97d9126d4191d989678a929e1d5` |
| 37 | `theorem` | [iUnion_subset](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/iunion-subset-source-edition-2.md) | 221 | `result-track:b1cf708688649447c4f87b77ed7035193764f60b3a2af744af0db92d55c37089` |
| 38 | `theorem` | [iUnion_mono](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/iunion-mono.md) | 225 | `result-track:703ef29059d317df8c5509d9a39667443c8d97748503b29b8890a8ab6f80744b` |
| 39 | `theorem` | [disjoint_boxes_of_disjoint_iUnion](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/disjoint-boxes-of-disjoint-iunion.md) | 230 | `result-track:c9ad7462f84464e1808d528183c63a0bc12c2a8e2249d99b579073cac59edb18` |
| 40 | `theorem` | [le_iff_nonempty_imp_le_and_iUnion_subset](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/le-iff-nonempty-imp-le-and-iunion-subset.md) | 235 | `result-track:185c7a23f221e3e65e3f206fbc94168c8c5793734c327d412cd4033df7a03d2e` |
| 41 | `theorem` | [eq_of_boxes_subset_iUnion_superset](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/eq-of-boxes-subset-iunion-superset.md) | 248 | `result-track:32b9c0bd57e1775a6ba24fa991653f579be90bbcba8b597f9184f93d0ac4c91c` |
| 42 | `def` | [biUnion](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/biunion-source-edition-2.md) | 262 | `declaration-track:a7909568b5b35f74cf1709d0b7867718c9dd83c57d9de19b2cf11eeaf078edee` |
| 43 | `theorem` | [mem_biUnion](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/mem-biunion.md) | 280 | `result-track:c9587c0ab9946e158fb85a178e82a89a1585bccc8ae1af35deade17b57678010` |
| 44 | `theorem` | [biUnion_le](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/biunion-le.md) | 282 | `result-track:3b8dd1010653ce334023149400789f8fd6c0f6d5e5cd9a925cfa4272e82bdd99` |
| 45 | `theorem` | [biUnion_top](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/biunion-top.md) | 287 | `result-track:9f9f162e28fa811a5abd7d4680be6d538dd73b87ffed254e06559f33bc7b4cf7` |
| 46 | `theorem` | [biUnion_congr](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/biunion-congr.md) | 292 | `result-track:d820e9de0246fe882c6dda5f07f26f76b26f4ebd7b17fae68ac816c120575e81` |
| 47 | `theorem` | [biUnion_congr_of_le](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/biunion-congr-of-le.md) | 299 | `result-track:97fb0bf60cc617277ebdbe92de10192f722563755fcef0791c9d66e484bade7c` |
| 48 | `theorem` | [iUnion_biUnion](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/iunion-biunion.md) | 304 | `result-track:076422e3b258d913907cc918d5ed1a45c5842bdcab04a1cd3363ddafa9a82ff9` |
| 49 | `theorem` | [sum_biUnion_boxes](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/sum-biunion-boxes.md) | 309 | `result-track:566235e72097bcb4487f5fe4f59b07f20f0b4ea1255f1708b91c4baff4ea673e` |
| 50 | `def` | [biUnionIndex](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/biunionindex.md) | 319 | `declaration-track:e2a5ff27cc6802241fa96486e340b00c7d4d456e6c1a0c7c00981c34b2e5f3ec` |
| 51 | `theorem` | [biUnionIndex_mem](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/biunionindex-mem.md) | 322 | `result-track:bbe677bc3fc7a71844a5088d5966aa49d6bf9a262fedab3fb52e0e84528f137c` |
| 52 | `theorem` | [biUnionIndex_le](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/biunionindex-le.md) | 326 | `result-track:415dd2382b7e944145717af0608b9bd188756d4baacf62d04c6dfd69de782d86` |
| 53 | `theorem` | [mem_biUnionIndex](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/mem-biunionindex.md) | 331 | `result-track:b331fc85194522e03ff89c0d7497b7acc9353479dc50bee8769499cb3939ada0` |
| 54 | `theorem` | [le_biUnionIndex](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/le-biunionindex.md) | 334 | `result-track:437673689c3b72e66776ab13a3f769f960d2a4565367392bcc2eba62ba8acc52` |
| 55 | `theorem` | [biUnionIndex_of_mem](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/biunionindex-of-mem.md) | 338 | `result-track:9d71ce503763ea5ece558b879525bd3efec2b3dc60ea0c3cb21c478fdff73859` |
| 56 | `theorem` | [biUnion_assoc](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/biunion-assoc.md) | 342 | `result-track:3c8a21d79f2d40caaec5a54cda695338192d73345290eedcb3cf71ba35aed4b5` |
| 57 | `def` | [ofWithBot](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/ofwithbot.md) | 357 | `declaration-track:7de39c629424d4e1425773836a0d825dfa830155ed9d4db818a42c48fd5f8044` |
| 58 | `theorem` | [mem_ofWithBot](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/mem-ofwithbot.md) | 370 | `result-track:86d96a74ff1026a389a2fb05f1c5375097fb4ad58fddbac32a512918660dcb22` |
| 59 | `theorem` | [iUnion_ofWithBot](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/iunion-ofwithbot.md) | 375 | `result-track:908dd53d76874c69e586b9348398175e8b1c37931f6986499e285eadbba6505b` |
| 60 | `theorem` | [ofWithBot_le](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/ofwithbot-le.md) | 384 | `result-track:76178ed28598e089ffe6bb1f2b40c8f3a5189d03a5227e9ba7534f091aff8e63` |
| 61 | `theorem` | [le_ofWithBot](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/le-ofwithbot.md) | 393 | `result-track:4b5c7f9fe239fccd73df9248b38cd04ee469bfc1923fe295315d4ab1b609843a` |
| 62 | `theorem` | [ofWithBot_mono](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/ofwithbot-mono.md) | 402 | `result-track:079eca52ddba0c4b0444555d5c58150005277a1780ff904e376fd31481f68b35` |
| 63 | `theorem` | [sum_ofWithBot](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/sum-ofwithbot.md) | 412 | `result-track:0546167c6239e48d9bf6a7f1ef1c18a0812c3821ddf15ac6bb7493d45d0d6316` |
| 64 | `def` | [restrict](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/restrict-source-edition-2.md) | 421 | `declaration-track:f15a3dbab4c94510e7a873444c431b008509c487664528e4ce88b72629b2772d` |
| 65 | `theorem` | [mem_restrict](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/mem-restrict-source-edition-2.md) | 435 | `result-track:c7c50c0880669df874a106003fb69176f641f039c7afb141896dccb1e32e9bb2` |
| 66 | `theorem` | [mem_restrict'](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/mem-restrict.md) | 438 | `result-track:561d492494f5f2267ca6818decc265596b919e8bd687001ccc9d1ed462db58e7` |
| 67 | `theorem` | [restrict_mono](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/restrict-mono.md) | 442 | `result-track:4f099e01b011ba0fbe2703e8ec3f2009304a527948a6a874cd0087321ca4de39` |
| 68 | `theorem` | [monotone_restrict](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/monotone-restrict.md) | 449 | `result-track:46c9f965c8cb4d18d93312542fc2bda3e5af8ed4428d7e49c55c6959f5f64b0d` |
| 69 | `theorem` | [restrict_boxes_of_le](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/restrict-boxes-of-le.md) | 454 | `result-track:dca1806fae9b4c0a36a66aa172eab43c8be5075a4ad93ab6f61a318c8b3bc219` |
| 70 | `theorem` | [restrict_self](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/restrict-self.md) | 464 | `result-track:8d2e619bf88081ea1d65bc3eb72651164b8ac0ff4f94964dc73a09534a95b0e8` |
| 71 | `theorem` | [iUnion_restrict](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/iunion-restrict.md) | 468 | `result-track:669af1bd26b6735867ebef77b58013c323845188e5c7c04f5c35117cb08ef9ec` |
| 72 | `theorem` | [restrict_biUnion](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/restrict-biunion.md) | 472 | `result-track:c83af80e337cd3444155c5fbcc3320018c4a66b8ce480de5ed3eac94bf6b6c5d` |
| 73 | `theorem` | [biUnion_le_iff](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/biunion-le-iff.md) | 482 | `result-track:924da5069c809636929f93a43af78dbf11c80d7c50b13461a792d67397cadf6e` |
| 74 | `theorem` | [le_biUnion_iff](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/le-biunion-iff.md) | 493 | `result-track:b4daf1c29e1ef2234b0b67926ce88d738639275b4ee931642cc65765b515619f` |
| 75 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/instance.md) | 505 | `declaration-track:265bce7da8efdca393dd65cd7ac39e6eeeb568f0adbaa4ec5640217bcffae1ae` |
| 76 | `theorem` | [inf_def](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/inf-def.md) | 511 | `result-track:69effe72fe48b8a874db0e390459e87ec85a8046468de2ef402a202c7daabe95` |
| 77 | `theorem` | [mem_inf](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/mem-inf.md) | 514 | `result-track:bce95d0a562d354fce8674a89a074646f806c9cf53f0e5b10ab422a6e0c4b484` |
| 78 | `theorem` | [iUnion_inf](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/iunion-inf.md) | 519 | `result-track:44c1756b3332c0732e5c77e56962107c8e7d623d9f20b9d7656f7827341cf232` |
| 79 | `def` | [filter](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/filter.md) | 525 | `declaration-track:cc1331f45cad241d0de5cd3b8f646010ca17e7597cb07f795fa5ecb9dc3cf80e` |
| 80 | `theorem` | [mem_filter](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/mem-filter.md) | 531 | `result-track:700f96db7314c7dc8730b4dcb328d200a2d65e279287f1521e2c734c6b0a46a8` |
| 81 | `theorem` | [filter_le](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/filter-le.md) | 535 | `result-track:4e77c83545de0de3b7abbbb63f4ae341a3b3442d3a2c43d3f8ad91d597166eb7` |
| 82 | `theorem` | [filter_of_true](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/filter-of-true.md) | 539 | `result-track:b22d67334e38bb5f0f831a0db90e67c5c97acde8d0ac9b7e497ccdf81e5dc8ee` |
| 83 | `theorem` | [filter_true](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/filter-true.md) | 544 | `result-track:bbe7b8c518955677dc60e6310fe9383725f92aad72257322da434d9362dd0510` |
| 84 | `theorem` | [iUnion_filter_not](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/iunion-filter-not.md) | 548 | `result-track:b15a0658c863936e3925d7dfc8e30922cdc1ed533f46236856de97c8032f0d3d` |
| 85 | `theorem` | [sum_fiberwise](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/sum-fiberwise.md) | 560 | `result-track:c8db7d2d672c9fed27d8a90a2557f9f9c24f4551ee7bd4caa36829dd7d2e2fa7` |
| 86 | `def` | [disjUnion](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/disjunion.md) | 568 | `declaration-track:6a98847099f764c9cb0048008438fdee3175958455c784e0e2711a37e17ba545` |
| 87 | `theorem` | [mem_disjUnion](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/mem-disjunion.md) | 577 | `result-track:0061741cb74ee836d6313390299d94fb6632132f8dcae64cd4456e6b52fc89c5` |
| 88 | `theorem` | [iUnion_disjUnion](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/iunion-disjunion.md) | 582 | `result-track:ef4b848e40feb5c500be04c31c158303345c5e87d7e493088ad2efa140dc252c` |
| 89 | `theorem` | [sum_disj_union_boxes](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/sum-disj-union-boxes.md) | 588 | `result-track:d723a6ac76df38981f2b0b7c5af4abfe3e08faf64939437f1cdf7ccb4def39d8` |
| 90 | `def` | [distortion](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/distortion.md) | 599 | `declaration-track:54a795bdddf94eef17532cdc048632c0803e96e43ee168cc1fd003812a8cb09a` |
| 91 | `theorem` | [distortion_le_of_mem](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/distortion-le-of-mem.md) | 602 | `result-track:9ee4e6a39a2df1e8b5c71689de6e9d07f5c15cd9b997e1f1828ac399f191e01a` |
| 92 | `theorem` | [distortion_le_iff](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/distortion-le-iff.md) | 605 | `result-track:9e8e412b00dcc335b239ab91a3214f16eec2c6408f23e1e449f6b4afa7148c90` |
| 93 | `theorem` | [distortion_biUnion](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/distortion-biunion.md) | 608 | `result-track:e00caaba3c0bd576105329708a5f2a13452c96d3ae56e3edcff25dcde5d9aad2` |
| 94 | `theorem` | [distortion_disjUnion](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/distortion-disjunion.md) | 613 | `result-track:cd680939231012f6b38a3c669a7fb24692fb6ade61fb5d79a3e44226159c7983` |
| 95 | `theorem` | [distortion_of_const](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/distortion-of-const.md) | 617 | `result-track:e4226b76c33e31597ec3253d7132d32e36541f7b797aebd7d26653bbbf068c1e` |
| 96 | `theorem` | [distortion_top](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/distortion-top.md) | 622 | `result-track:778567137d67ef859f60d86395ba4647da5ec8ef377350abfa5710fa0263c3e0` |
| 97 | `theorem` | [distortion_bot](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/distortion-bot.md) | 626 | `result-track:8f661978dfc827a5767cf442eb3ecce3ce62a683eee54bea31b2b29835b4cb74` |
| 98 | `def` | [IsPartition](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/ispartition.md) | 632 | `declaration-track:c88d084bad4b3fcaa73f810d59f536bf475e6d8cc990303fe92985a490cf9394` |
| 99 | `theorem` | [isPartition_iff_iUnion_eq](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/ispartition-iff-iunion-eq.md) | 635 | `result-track:3225206ab17928e41ca278fbfbbb139e7bb0a238e7aef89a08e9dfb46cc06a61` |
| 100 | `theorem` | [isPartition_single_iff](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/ispartition-single-iff.md) | 640 | `result-track:d2cac6d36ba33d70acc4731d8436e2681ea47bf933caed64ef60b4ff05c63e31` |
| 101 | `theorem` | [isPartitionTop](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/ispartitiontop.md) | 643 | `result-track:5949aed516ae679b8e17242c7c52e47c9212adb8f6907c5225e7fae34881288a` |
| 102 | `theorem` | [iUnion_eq](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/iunion-eq.md) | 650 | `result-track:5c2d5db4c7fd4f2225c86e93bf87411e9c426f4c8909caac9784e57f4936d135` |
| 103 | `theorem` | [iUnion_subset](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/iunion-subset.md) | 653 | `result-track:9efb1a6b4380330bc5a173549ce1c02e0194d0879891a1db88011aafda227ae2` |
| 104 | `theorem` | [existsUnique](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/existsunique.md) | 656 | `result-track:c4a36a834c403d3feb78b5be9b3d2b42dc4717adcbd70b77d37a8ee22f0805fe` |
| 105 | `theorem` | [nonempty_boxes](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/nonempty-boxes.md) | 661 | `result-track:7f13716cbca07842a529fe79876ac150e17750a71c5371fdbe1e7ee63ad8b1a1` |
| 106 | `theorem` | [eq_of_boxes_subset](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/eq-of-boxes-subset.md) | 665 | `result-track:7b918702e823fd15d6da058de237dc8c179f8d0200a4c41197acfb6cfa604f51` |
| 107 | `theorem` | [le_iff](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/le-iff.md) | 668 | `result-track:5b4dce7484e1a303e313c3b5ad958efdd81728b7e65634857efbeed764e1f783` |
| 108 | `theorem` | [biUnion](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/biunion.md) | 672 | `result-track:470ad857f36135e6502815f8c368fd1feb0bc0d3ab95da63141e9f40358f8866` |
| 109 | `theorem` | [restrict](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/restrict.md) | 678 | `result-track:6380aa973d38ffcfc9c0d3931492bc248d565741a3b89da71a1a7c7788cce946` |
| 110 | `theorem` | [inf](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/inf.md) | 681 | `result-track:abbbd268f7546f45e9d95aac479023513280f6a73d0c529b82046ff963adfeff` |
| 111 | `theorem` | [iUnion_biUnion_partition](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/iunion-biunion-partition.md) | 686 | `result-track:b89e1330883e97e6c4d5aca197f98927938e86ee978a0b26067f52c3060c793b` |
| 112 | `theorem` | [isPartitionDisjUnionOfEqDiff](../../../../FunctionalAnalysis/PartitionBasicNotMemBot.lean/declarations/ispartitiondisjunionofeqdiff.md) | 692 | `result-track:59d9aed0a723c2b696c885590d19ba458114ff17b7f37745190073c47217efff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=851c7fc548a21c6525cd4c742ea4d578e3ee263b3454ea24ae16e75646a4ddb3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant4712d15d0d109269e5d1dd128a3a9dfa613986495d66c60f61eb046ce75b7bf5.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant4712d15d0d109269e5d1dd128a3a9dfa613986495d66c60f61eb046ce75b7bf5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
