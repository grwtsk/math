# Verification target: Topology Order Left Right Lim Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18013ceb938cc14055502ca1fced29a52cbeef98",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LeftRightLim/Variantcfc71eb77ee76d07e3c2e7e78d31ac79ed71f1abae17732ff48c713b82030a3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/index.md) · [Full source](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18013ceb938cc14055502ca1fced29a52cbeef98`.

Source path: `GRWTSK/Topology/GeneralTopology/LeftRightLim/Variantcfc71eb77ee76d07e3c2e7e78d31ac79ed71f1abae17732ff48c713b82030a3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LeftRightLim/Variantcfc71eb77ee76d07e3c2e7e78d31ac79ed71f1abae17732ff48c713b82030a3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Function.leftLim](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/function-leftlim.md) | 50 | `declaration-track:08bb9ab087a79422c2d88611e6bec0a1e3f343932a088b226180e820db710d65` |
| 2 | `def` | [Function.rightLim](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/function-rightlim.md) | 60 | `declaration-track:9edd885c48d3f03aa25ba4b54920f183dacbd60c4ad8f73d6849a49ef76393e4` |
| 3 | `theorem` | [leftLim_eq_of_tendsto](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/leftlim-eq-of-tendsto.md) | 65 | `result-track:2fe713c7cc76093cddf1e4410eb48614fcbb3528c4f87fa5423461f1d073cd5d` |
| 4 | `theorem` | [rightLim_eq_of_tendsto](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/rightlim-eq-of-tendsto.md) | 73 | `result-track:462923df5cd0268d373b37691c53853629aa49f8721862a717605d81fea45bba` |
| 5 | `theorem` | [leftLim_eq_of_eq_bot](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/leftlim-eq-of-eq-bot.md) | 78 | `result-track:c7bb79de0d757a2e7e4a56efbca487af1a19566ee79d2239ce0353c468836289` |
| 6 | `theorem` | [rightLim_eq_of_eq_bot](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/rightlim-eq-of-eq-bot.md) | 83 | `result-track:27982cacd23bf06649c61549d713b0229f0a391446755b8a11378414106f4cca` |
| 7 | `theorem` | [leftLim_eq_of_not_tendsto](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/leftlim-eq-of-not-tendsto.md) | 87 | `result-track:eacda0305197043d58c1057e57afba3a7cd30fb96cc41bc62cc67bd7d7c95912` |
| 8 | `theorem` | [rightLim_eq_of_not_tendsto](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/rightlim-eq-of-not-tendsto.md) | 93 | `result-track:d2e9bbe5f6e317a4a5976ef430ba284a8c7f87f6b5f88ae4493d15ea98c968fe` |
| 9 | `theorem` | [leftLim_eq_of_isBot](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/leftlim-eq-of-isbot.md) | 98 | `result-track:39b8bedb47b790585914a1913385b886a250605300f898209a4f1fdae56a754f` |
| 10 | `theorem` | [rightLim_eq_of_isTop](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/rightlim-eq-of-istop.md) | 106 | `result-track:03656ee6206743a71d8dc1ff06cb355fd1f0814a4eedc063c56d1b54d6898c56` |
| 11 | `theorem` | [ContinuousWithinAt.leftLim_eq](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/continuouswithinat-leftlim-eq.md) | 110 | `result-track:dd3ecb3513b6ae284160d115ce3db220bfdd7b806142e04f7ab4dc27b394dd97` |
| 12 | `theorem` | [ContinuousWithinAt.rightLim_eq](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/continuouswithinat-rightlim-eq.md) | 117 | `result-track:27fee9a737d1dbe7c79be715ec41c4a59f0a72d4f064dfda8403e3b5e108f41a` |
| 13 | `theorem` | [tendsto_leftLim_of_tendsto](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/tendsto-leftlim-of-tendsto.md) | 121 | `result-track:8ee38c9fad31aa3958293924801ab26ef8d2a122be12f9af10618b927c5ca9cc` |
| 14 | `theorem` | [tendsto_rightLim_of_tendsto](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/tendsto-rightlim-of-tendsto.md) | 130 | `result-track:743a0bc338ab20673a00a5b6fc096939827d8f07a2304443483c0e8f6a6c3eb5` |
| 15 | `theorem` | [mapClusterPt_leftLim](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/mapclusterpt-leftlim.md) | 135 | `result-track:c86628e4f1ec8f121a68ced2048ecb6f19931e593c1500079bdf4b4aa92de517` |
| 16 | `theorem` | [mapClusterPt_rightLim](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/mapclusterpt-rightlim.md) | 149 | `result-track:c122c74c8a3ee33566e8cd729f881d1081101b616e8be1a9db3525d71f2c36e9` |
| 17 | `theorem` | [continuousWithinAt_leftLim_Iic](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/continuouswithinat-leftlim-iic.md) | 153 | `result-track:ef3c8f9e606f86965d790315776b015b780b6ea6e2cdcd8c1065e0d8e31bf145` |
| 18 | `theorem` | [leftLim_leftLim](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/leftlim-leftlim.md) | 177 | `result-track:08fda02439e1386cf96c292fc1c92bf61ba5e6de2f24ae230825d0f9a6e59f34` |
| 19 | `theorem` | [continuousWithinAt_rightLim_Ici](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/continuouswithinat-rightlim-ici.md) | 182 | `result-track:c8912f4515b43707b727c855f3c4cb8c9996c0fb6686fa457fb407b23a00dfe5` |
| 20 | `theorem` | [rightLim_rightLim](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/rightlim-rightlim.md) | 187 | `result-track:b3d21f06e1571c0d621420b0da1dffae9aa987e4397fa5a3d938f0dd6159382f` |
| 21 | `theorem` | [leftLim_rightLim](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/leftlim-rightlim.md) | 192 | `result-track:e50a0974511d25559dd9a9c6726712dfe68c65d983b163ce2e307a954fcd2495` |
| 22 | `theorem` | [rightLim_leftLim](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/rightlim-leftlim.md) | 210 | `result-track:c5b66aded3a75c9eaf953af4959c79068a89b4a5fd2ad0f8f2b94af6049587c2` |
| 23 | `theorem` | [tendsto_atTop_of_mapClusterPt](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/tendsto-attop-of-mapclusterpt.md) | 215 | `result-track:a0656ca039427ce9672913fe1d95748df389c9d0997304d8a01ba0cc8e049bc8` |
| 24 | `theorem` | [tendsto_atBot_of_mapClusterPt](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/tendsto-atbot-of-mapclusterpt.md) | 229 | `result-track:1318214a16d782e035479678f186f49aed03d56e6c8f15c216302bfe265742b4` |
| 25 | `theorem` | [tendsto_leftLim_atTop_of_tendsto](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/tendsto-leftlim-attop-of-tendsto.md) | 235 | `result-track:9fe92a3de749b019d7ea507773626130ec0e16def5bf7cca60f5fcb64e22573c` |
| 26 | `theorem` | [tendsto_rightLim_atTop_of_tendsto](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/tendsto-rightlim-attop-of-tendsto.md) | 242 | `result-track:f2a1019ef971a08443f0339bcfb4783d6a016f06a49035fa666248a4f5b1405b` |
| 27 | `theorem` | [tendsto_rightLim_atBot_of_tendsto](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/tendsto-rightlim-atbot-of-tendsto.md) | 253 | `result-track:f3a85e728714e35d84453a82c568309d7780defff758bc25e34046631d15a65f` |
| 28 | `theorem` | [tendsto_leftLim_atBot_of_tendsto](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/tendsto-leftlim-atbot-of-tendsto.md) | 259 | `result-track:9d82b653a4d422d40756c04dbf0cd4b2a7844d6abbbf6a5056579e61ee78059d` |
| 29 | `theorem` | [leftLim_eq_sSup](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/leftlim-eq-ssup.md) | 274 | `result-track:d11459be0c8ebb72636674203d8873b98c534d43265bd3847189dae161b994f1` |
| 30 | `theorem` | [rightLim_eq_sInf](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/rightlim-eq-sinf.md) | 278 | `result-track:68d06dfd4d738ba82ff8dd712f36a9ffb18036807755523f062099261ba42b66` |
| 31 | `theorem` | [leftLim_le](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/leftlim-le.md) | 282 | `result-track:810bd74214bebfe70fa9935d8b086184ac5d84d84e1c8e8b97b3e7f6f54b4761` |
| 32 | `theorem` | [le_leftLim](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/le-leftlim-source-edition-2.md) | 295 | `result-track:973188a13713bc00843717a28ef2ddc34acbf9a782a491fda13d43933273c1b6` |
| 33 | `theorem` | [leftLim](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/leftlim-source-edition-2.md) | 309 | `result-track:f7d84f0eba393f7edac014469e5deb57cca610e775cbf9582576daba4bc5289d` |
| 34 | `theorem` | [le_rightLim](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/le-rightlim.md) | 315 | `result-track:cf30e29725f039110ee3ad4253beb237c2eaa362e670ecb5f3c41719369304ee` |
| 35 | `theorem` | [rightLim_le](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/rightlim-le.md) | 318 | `result-track:2a13c27502a15f15c0b848e9e7fd6d3b0285c4f0045b42c2ffcd312591515f60` |
| 36 | `theorem` | [rightLim](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/rightlim-source-edition-2.md) | 322 | `result-track:673efe71bf0779bb8385d03ac15ac4b404329726a7b5d6b0a3bfd755b09d5fc8` |
| 37 | `theorem` | [leftLim_le_rightLim](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/leftlim-le-rightlim.md) | 324 | `result-track:26705cdc2a8d9ed932b3ba247a45b6e00f66f6c2a7843047cdca28490569a8bb` |
| 38 | `theorem` | [rightLim_le_leftLim](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/rightlim-le-leftlim-source-edition-2.md) | 327 | `result-track:98a8147930e09f9839af7c97096b3d66a8f8fa213f8529291e9aa6da215fd7de` |
| 39 | `theorem` | [tendsto_leftLim](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/tendsto-leftlim-source-edition-2.md) | 339 | `result-track:ed0e05dce16e7416c5a6d4f6607b04d3c8d31e5270dc397d562761c031968d9b` |
| 40 | `theorem` | [tendsto_leftLim_within](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/tendsto-leftlim-within-source-edition-2.md) | 342 | `result-track:6a7076825fefca564c2add7013f692a3d4669628a65f85182808358294135152` |
| 41 | `theorem` | [tendsto_rightLim](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/tendsto-rightlim-source-edition-2.md) | 346 | `result-track:bd894911be47f31338b6fafd49530f6182917ec7c9a884dbedc6c9ee2817213d` |
| 42 | `theorem` | [tendsto_rightLim_within](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/tendsto-rightlim-within.md) | 349 | `result-track:6e60ca30da1befe253e8b4df2cf59ded66ad89374575038066edd1eb1ada5e7b` |
| 43 | `theorem` | [continuousWithinAt_Iio_iff_leftLim_eq](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/continuouswithinat-iio-iff-leftlim-eq-source-edition-2.md) | 354 | `result-track:93e4120a368b19d25f0a5be57ed0bcdf7b6a97d59305424c6f0fe579634eb9ad` |
| 44 | `theorem` | [continuousWithinAt_Ioi_iff_rightLim_eq](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/continuouswithinat-ioi-iff-rightlim-eq.md) | 364 | `result-track:2cfc03f125f9c3ed4b91ce425b6352bb4a65d4d7e4111ad4a03e00769de4cfa1` |
| 45 | `theorem` | [continuousAt_iff_leftLim_eq_rightLim](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/continuousat-iff-leftlim-eq-rightlim-source-edition-2.md) | 370 | `result-track:1e9d1814466459ececef63fb951aa1f34a6fdc440f69bb00550718b0c251e390` |
| 46 | `theorem` | [le_leftLim](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/le-leftlim.md) | 394 | `result-track:31e128f15fa33d426e3a78ed6136145e8d1915ffb86222dc114e2c036ebf5a87` |
| 47 | `theorem` | [leftLim_le](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/leftlim-le-source-edition-2.md) | 397 | `result-track:922032cfd79cd17468f6140cc7baf60d76dd12cbee1bfdf75a11e299ec448076` |
| 48 | `theorem` | [leftLim](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/leftlim.md) | 401 | `result-track:e512b4d3aaf933b84799623676c408b8178a906ddef8ae0d6f0b85418c7cab5a` |
| 49 | `theorem` | [rightLim_le](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/rightlim-le-source-edition-2.md) | 404 | `result-track:4a96d453218e4c9bb78c9b5f8bf94fce4e4fa3fed5184a774d4acc5977b5713e` |
| 50 | `theorem` | [le_rightLim](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/le-rightlim-source-edition-2.md) | 407 | `result-track:dbf6ab5b5f5f0984c7a563a2d0a32ec3de02a94e24bee683437a1592268d4741` |
| 51 | `theorem` | [rightLim](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/rightlim.md) | 411 | `result-track:18a784dd88e9636b72a1a0065437a318a46c1eab2996e3ba4ba6f5310c2663ec` |
| 52 | `theorem` | [rightLim_le_leftLim](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/rightlim-le-leftlim.md) | 414 | `result-track:0a06221fe0d5dc14ee2438bdf1e42c3ce00f3477aac6a5ea489726aac9ec7d7e` |
| 53 | `theorem` | [leftLim_le_rightLim](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/leftlim-le-rightlim-source-edition-2.md) | 417 | `result-track:476d90440e418d4ea3844a1c9619daade8f9816a377ce71406fe44bb77038a45` |
| 54 | `theorem` | [tendsto_leftLim](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/tendsto-leftlim.md) | 422 | `result-track:58d48e9d63e6e07553b1ebf3b81a1b9b13ae34502acd30e22620f1c4ad620d56` |
| 55 | `theorem` | [tendsto_leftLim_within](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/tendsto-leftlim-within.md) | 425 | `result-track:4a171689a4b963085121059bb2152aab5afbe082848cf91f5573360b28cb6933` |
| 56 | `theorem` | [tendsto_rightLim](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/tendsto-rightlim.md) | 428 | `result-track:51e5a384a155bc7a1104643fb0bfb08380e69dd1e78ad648978a5eda3f07c4c0` |
| 57 | `theorem` | [tendsto_rightLim_within](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/tendsto-rightlim-within-source-edition-2.md) | 431 | `result-track:d24200a7f3958b2389e5fad804a9322a7384daf118b0611e60c19db44c30932f` |
| 58 | `theorem` | [continuousWithinAt_Iio_iff_leftLim_eq](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/continuouswithinat-iio-iff-leftlim-eq.md) | 436 | `result-track:2ed19ad44c8bf9abcfbc85941b9503842bda840c547d739a6c0af848b98e1080` |
| 59 | `theorem` | [continuousWithinAt_Ioi_iff_rightLim_eq](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/continuouswithinat-ioi-iff-rightlim-eq-source-edition-2.md) | 442 | `result-track:a94ba99248192e70e7865810a9a0172b6eb1784b3737187373cb279922d9ce45` |
| 60 | `theorem` | [continuousAt_iff_leftLim_eq_rightLim](../../../../GeneralTopology/TopologyOrderLeftRightLimPublic.lean/declarations/continuousat-iff-leftlim-eq-rightlim.md) | 448 | `result-track:1e6a4af9e3be5d1e8f86d2fa75261a5481097d050c82e0ce8fa2aa2da9c28c55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c4833a5fc91264bf7ae4e10d7c57dd84c0e12893d3b2132f666912584802d6d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LeftRightLim/Variantcfc71eb77ee76d07e3c2e7e78d31ac79ed71f1abae17732ff48c713b82030a3e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LeftRightLim/Variantcfc71eb77ee76d07e3c2e7e78d31ac79ed71f1abae17732ff48c713b82030a3e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
