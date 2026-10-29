# Verification target: Constructible

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97b75b14b02033ef3d206a9f27720ec1b71f72ee",
  "lexical_observation_count": 74,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Constructible/Variant1e478bfc35b859cb47366cb43d5700dde5f3c2367b1ec9933e7ca3c55d9023b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/Constructible.lean/index.md) · [Full source](../../../../GeneralTopology/Constructible.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97b75b14b02033ef3d206a9f27720ec1b71f72ee`.

Source path: `GRWTSK/Topology/GeneralTopology/Constructible/Variant1e478bfc35b859cb47366cb43d5700dde5f3c2367b1ec9933e7ca3c55d9023b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Constructible/Variant1e478bfc35b859cb47366cb43d5700dde5f3c2367b1ec9933e7ca3c55d9023b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.BooleanSubalgebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactness.Bases` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocalAtTarget` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.QuasiSeparated` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Spectral.Hom` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Spectral.Prespectral` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsRetrocompact](../../../../GeneralTopology/Constructible.lean/declarations/isretrocompact.md) | 48 | `declaration-track:23d3d6ef25d7e4dc97ea3392dfdaae4f35c7cd43dfdb815012590527793f263d` |
| 2 | `lemma` | [IsRetrocompact.empty](../../../../GeneralTopology/Constructible.lean/declarations/isretrocompact-empty.md) | 50 | `result-track:34a397d7dd51a5d8fa2817dc91a7eed612e612495248aadfb119ece4c29ba968` |
| 3 | `lemma` | [IsRetrocompact.univ](../../../../GeneralTopology/Constructible.lean/declarations/isretrocompact-univ.md) | 51 | `result-track:e0f87e287507c86d501a42e83b5a30a60674f24d5a72879a5053529f56a35c3f` |
| 4 | `lemma` | [IsRetrocompact.singleton](../../../../GeneralTopology/Constructible.lean/declarations/isretrocompact-singleton.md) | 54 | `result-track:8a2c05cbde173d9c0ae6311a9787b67491a14debd2bd4269794ae233ea2767f6` |
| 5 | `lemma` | [IsRetrocompact.union](../../../../GeneralTopology/Constructible.lean/declarations/isretrocompact-union.md) | 57 | `result-track:76791b59c1e3180954724059957956c5035b3cd4340a4ba35b0fbda8627617ae` |
| 6 | `lemma` | [supClosed_isRetrocompact](../../../../GeneralTopology/Constructible.lean/declarations/supclosed-isretrocompact.md) | 61 | `result-track:b0621fa59d5ab39634b0efc0210a18956a02698b53e0b262fb564bbffe6fb306` |
| 7 | `lemma` | [IsRetrocompact.finsetSup](../../../../GeneralTopology/Constructible.lean/declarations/isretrocompact-finsetsup-source-edition-2.md) | 64 | `result-track:9f5387dc52fe589453fb730de3e849da18028f3b8b6ef1450fc581928f180606` |
| 8 | `lemma` | [IsRetrocompact.finsetSup'](../../../../GeneralTopology/Constructible.lean/declarations/isretrocompact-finsetsup.md) | 73 | `result-track:5d0ab456c659064c1351c28f7b34dc299d4f938fb269ecb1ed8e15b989a5e98b` |
| 9 | `lemma` | [IsRetrocompact.iUnion](../../../../GeneralTopology/Constructible.lean/declarations/isretrocompact-iunion.md) | 77 | `result-track:7ae132c1edae781540f7ab5d828864813e1d3db3923df411132ce26bb8dc43b9` |
| 10 | `lemma` | [IsRetrocompact.sUnion](../../../../GeneralTopology/Constructible.lean/declarations/isretrocompact-sunion.md) | 80 | `result-track:20777d5c07bb69747c57e4c2eb38edef089c1593979b54539d19ca50bded25b3` |
| 11 | `lemma` | [IsRetrocompact.biUnion](../../../../GeneralTopology/Constructible.lean/declarations/isretrocompact-biunion.md) | 83 | `result-track:4812887b15777e8f7727526e941aba4c06dbc8a19d264d2865624391865d3422` |
| 12 | `lemma` | [IsRetrocompact.inter](../../../../GeneralTopology/Constructible.lean/declarations/isretrocompact-inter.md) | 90 | `result-track:d3c00b9045b76feed3537b265126f115ecde348aa8400e8ca90efcf988db882e` |
| 13 | `lemma` | [infClosed_isRetrocompact](../../../../GeneralTopology/Constructible.lean/declarations/infclosed-isretrocompact.md) | 94 | `result-track:decb3965eec3521f976be055259d46a25ae38009b9758bfa09c2d6ec46265375` |
| 14 | `lemma` | [IsRetrocompact.finsetInf](../../../../GeneralTopology/Constructible.lean/declarations/isretrocompact-finsetinf.md) | 97 | `result-track:60c7b935879841ed832e2d51f7dfdb8e2fac6ee545155b2030d4b87d9acf135a` |
| 15 | `lemma` | [IsRetrocompact.finsetInf'](../../../../GeneralTopology/Constructible.lean/declarations/isretrocompact-finsetinf-source-edition-2.md) | 106 | `result-track:69d976d93df75ef4120cfa8a2f818198f4fc1bbc74b6733fe05703f22ac70bbe` |
| 16 | `lemma` | [IsRetrocompact.iInter](../../../../GeneralTopology/Constructible.lean/declarations/isretrocompact-iinter.md) | 110 | `result-track:222ba229e817407f62a7b7cbe45958b2ec95f23f4af905498176247f48353cb8` |
| 17 | `lemma` | [IsRetrocompact.sInter](../../../../GeneralTopology/Constructible.lean/declarations/isretrocompact-sinter.md) | 113 | `result-track:8d9b55caac71507ef5f2de9add97822024981de69bc4a8f35b5657ef8d07c7b1` |
| 18 | `lemma` | [IsRetrocompact.biInter](../../../../GeneralTopology/Constructible.lean/declarations/isretrocompact-biinter.md) | 116 | `result-track:e154145c566eb92f0af56a7d18f18892de516c813629e94ef936cc7d6e6c2592` |
| 19 | `lemma` | [IsRetrocompact.inter_isOpen](../../../../GeneralTopology/Constructible.lean/declarations/isretrocompact-inter-isopen.md) | 122 | `result-track:5559e070959e4ff37968e8a4a603d574f75b6856ff79982521f8c4a3985821a3` |
| 20 | `lemma` | [IsRetrocompact.isOpen_inter](../../../../GeneralTopology/Constructible.lean/declarations/isretrocompact-isopen-inter.md) | 126 | `result-track:1382ab4367c9571d2a2a998177b78acbf4bdcfd3cda1e7334ffd961970854631` |
| 21 | `lemma` | [IsRetrocompact_iff_isSpectralMap_subtypeVal](../../../../GeneralTopology/Constructible.lean/declarations/isretrocompact-iff-isspectralmap-subtypeval.md) | 130 | `result-track:3b6576ced9e3decef2096ede90d60ca1b127771764f99e152e6510b277c5a575` |
| 22 | `lemma` | [IsRetrocompact.image_of_isEmbedding](../../../../GeneralTopology/Constructible.lean/declarations/isretrocompact-image-of-isembedding.md) | 139 | `result-track:eb15ea11fcc3f454b21b57cef71bd5d6208b0adc954e13f40d45b893f15d14fc` |
| 23 | `lemma` | [IsRetrocompact.preimage_of_isOpenEmbedding](../../../../GeneralTopology/Constructible.lean/declarations/isretrocompact-preimage-of-isopenembedding.md) | 148 | `result-track:749f56a4aa371fdf73e6dfa279453c9b23e39beb747e1a881d6da07a80d7a99d` |
| 24 | `lemma` | [IsRetrocompact.preimage_of_isClosedEmbedding](../../../../GeneralTopology/Constructible.lean/declarations/isretrocompact-preimage-of-isclosedembedding.md) | 155 | `result-track:cee55e2d0170ebff71265e43b4e9fb00b8d9408290b737628c680d3f6bb58b10` |
| 25 | `def` | [IsConstructible](../../../../GeneralTopology/Constructible.lean/declarations/isconstructible.md) | 174 | `declaration-track:be4e995b0ef2b49dffc7f7674be9032a5467802da3f7343263859bd0d05ad916` |
| 26 | `lemma` | [IsConstructible.empty](../../../../GeneralTopology/Constructible.lean/declarations/isconstructible-empty.md) | 178 | `result-track:2100523e4acd2d54af1ccbe9d069b3fee3d34d3a61f32c0825bfde4e2106066a` |
| 27 | `lemma` | [IsConstructible.univ](../../../../GeneralTopology/Constructible.lean/declarations/isconstructible-univ.md) | 181 | `result-track:1c9bc6d7de5e4041b4bd57446a8adfdb8b96b1f53aabbcd56e8e4c1fa149c287` |
| 28 | `lemma` | [IsConstructible.union](../../../../GeneralTopology/Constructible.lean/declarations/isconstructible-union.md) | 183 | `result-track:0d7b68c4e5dbf5fc357dd38bdd4d6a90cd86df6bf0030d0c4e77a54e3b8abc76` |
| 29 | `lemma` | [IsConstructible.inter](../../../../GeneralTopology/Constructible.lean/declarations/isconstructible-inter.md) | 186 | `result-track:7be215dbe09cb3553ea96fea94cbc4232b503fd24520b21e28f9a84a083b0976` |
| 30 | `lemma` | [IsConstructible.sdiff](../../../../GeneralTopology/Constructible.lean/declarations/isconstructible-sdiff.md) | 189 | `result-track:c7ee97fa2f997fa20e0a84492adb6f26f27805460367ef27341103b73a8cf6bf` |
| 31 | `lemma` | [IsConstructible.himp](../../../../GeneralTopology/Constructible.lean/declarations/isconstructible-himp.md) | 192 | `result-track:198034a33fc49503d155b8ea30d2ade50252605358110bdd8ee2f04079fff8df` |
| 32 | `lemma` | [isConstructible_compl](../../../../GeneralTopology/Constructible.lean/declarations/isconstructible-compl.md) | 195 | `result-track:11edef0c2640750d70dcada6a2367bf78680e5f9617727ddbcfa3beb27836f24` |
| 33 | `lemma` | [IsConstructible.iUnion](../../../../GeneralTopology/Constructible.lean/declarations/isconstructible-iunion.md) | 200 | `result-track:c4ac8ac462bb5eea9e21eb746a8d0d13a3d10d174ea3ac2534b048f51106e792` |
| 34 | `lemma` | [IsConstructible.iInter](../../../../GeneralTopology/Constructible.lean/declarations/isconstructible-iinter.md) | 203 | `result-track:ad13ffa2e6c60fcdf1b2852350ccd460df6dc8b38e4e6bcfaf77d9e7657e88ba` |
| 35 | `lemma` | [IsConstructible.sUnion](../../../../GeneralTopology/Constructible.lean/declarations/isconstructible-sunion.md) | 206 | `result-track:e39df50fe4b350a5143da71739edc4e424018639c72bb48cad8f51ba3f06e0e7` |
| 36 | `lemma` | [IsConstructible.sInter](../../../../GeneralTopology/Constructible.lean/declarations/isconstructible-sinter.md) | 209 | `result-track:7f3893e736434fdc19caa964455ee57a177d0e00cba73a02177b56b72c0b75a2` |
| 37 | `lemma` | [IsConstructible.biUnion](../../../../GeneralTopology/Constructible.lean/declarations/isconstructible-biunion.md) | 212 | `result-track:f25c1b00cc163d0559d7c49e0606ae807b079788b719388e516729b0f383ccb3` |
| 38 | `lemma` | [IsConstructible.biInter](../../../../GeneralTopology/Constructible.lean/declarations/isconstructible-biinter.md) | 216 | `result-track:3af77a81f6fbcf094d5c3312d85449d78c644f7799c5c99d155c37c7ef6e8c22` |
| 39 | `lemma` | [_root_.IsRetrocompact.isConstructible](../../../../GeneralTopology/Constructible.lean/declarations/root-isretrocompact-isconstructible.md) | 220 | `result-track:b0743f778225eba84d2e53a08c8ea6d1db9576d1f7525b1dfbe4c4a80842e4f0` |
| 40 | `lemma` | [IsConstructible.empty_union_induction](../../../../GeneralTopology/Constructible.lean/declarations/isconstructible-empty-union-induction.md) | 226 | `result-track:52491d5905a7f8a1515fab866158dfae1f54fb2bebca4a1476d86d3be484f6f4` |
| 41 | `lemma` | [IsConstructible.preimage](../../../../GeneralTopology/Constructible.lean/declarations/isconstructible-preimage.md) | 240 | `result-track:3c1d25a0e047dbfabec3f54e636e1ba5186b747359d0489077850545f2c2a186` |
| 42 | `lemma` | [IsConstructible.preimage_of_isOpenEmbedding](../../../../GeneralTopology/Constructible.lean/declarations/isconstructible-preimage-of-isopenembedding.md) | 250 | `result-track:7a2076dde417f83db078c1546a4fc3ff9e800b47f2c3139148fb323d90639779` |
| 43 | `lemma` | [IsConstructible.preimage_of_isClosedEmbedding](../../../../GeneralTopology/Constructible.lean/declarations/isconstructible-preimage-of-isclosedembedding.md) | 255 | `result-track:c553babbcfb8ebfcec3aca7629c1f487365ae44ae4872c4dbe1849a8f006a366` |
| 44 | `lemma` | [IsConstructible.image_of_isOpenEmbedding](../../../../GeneralTopology/Constructible.lean/declarations/isconstructible-image-of-isopenembedding.md) | 260 | `result-track:ecf08d8bc03854431e9f45bf7b71c8dfb8aae74956ea370b5e5c548acdf4eb9f` |
| 45 | `lemma` | [IsConstructible.image_of_isClosedEmbedding](../../../../GeneralTopology/Constructible.lean/declarations/isconstructible-image-of-isclosedembedding.md) | 272 | `result-track:959a3a7a3dfdf57fdc99991a502a64ff98956eb66eb1f7032134ddafa5a005bb` |
| 46 | `lemma` | [isConstructible_preimage_iff_of_isOpenEmbedding](../../../../GeneralTopology/Constructible.lean/declarations/isconstructible-preimage-iff-of-isopenembedding.md) | 291 | `result-track:07adfac4adb46f8fdbd3d14d9045489f6990f1174e6d9e6003f681c767a3f3ce` |
| 47 | `lemma` | [_root_.IsRetrocompact.isCompact](../../../../GeneralTopology/Constructible.lean/declarations/root-isretrocompact-iscompact.md) | 302 | `result-track:e354b90cc4b4baf7f7b263839486b29009d5791dd86f8b8f729303c3f0049f12` |
| 48 | `lemma` | [_root_.IsCompact.isRetrocompact](../../../../GeneralTopology/Constructible.lean/declarations/root-iscompact-isretrocompact.md) | 308 | `result-track:3e8a0515b35f640f8696f10acb3a3397b165c5e4786159491a07adda25912185` |
| 49 | `lemma` | [_root_.IsCompact.isConstructible](../../../../GeneralTopology/Constructible.lean/declarations/root-iscompact-isconstructible.md) | 312 | `result-track:7cbb37e98f93d0bff9dc146fe131386bd7e325186593ddc3dca5bb118bce8f0a` |
| 50 | `lemma` | [_root_.QuasiSeparatedSpace.isRetrocompact_iff_isCompact](../../../../GeneralTopology/Constructible.lean/declarations/root-quasiseparatedspace-isretrocompact-iff-iscompact.md) | 316 | `result-track:f1cbee4d8ecbc73c0b71bec14508fc5cc7e3fb58ca53636b207545ed7cf1f4cd` |
| 51 | `lemma` | [IsConstructible.induction_of_isTopologicalBasis](../../../../GeneralTopology/Constructible.lean/declarations/isconstructible-induction-of-istopologicalbasis.md) | 321 | `result-track:22ea9a062463c89a11fa47bad96bff2502503b7bc68fe40a9b130bf1545f3269` |
| 52 | `def` | [IsLocallyConstructible](../../../../GeneralTopology/Constructible.lean/declarations/islocallyconstructible.md) | 358 | `declaration-track:38bf9b7df0fe6de69c5bcc57d8abae858123a98def586b6bc30e7fdf195635d0` |
| 53 | `lemma` | [IsConstructible.isLocallyConstructible](../../../../GeneralTopology/Constructible.lean/declarations/isconstructible-islocallyconstructible.md) | 360 | `result-track:e697841e88de69d490790db04c5997cf294f54afe557612aeb76178c94690317` |
| 54 | `lemma` | [_root_.IsRetrocompact.isLocallyConstructible](../../../../GeneralTopology/Constructible.lean/declarations/root-isretrocompact-islocallyconstructible.md) | 365 | `result-track:17c3fd67be9c0fade806d8ab6b0bfac4ced7e1d3cf0efeb2ae7eb63d748c7ecc` |
| 55 | `lemma` | [IsLocallyConstructible.empty](../../../../GeneralTopology/Constructible.lean/declarations/islocallyconstructible-empty.md) | 368 | `result-track:fccbb795aedb6f1cf9a25146ee835546e42d907eddf36eacbe391f573bdc9f2f` |
| 56 | `lemma` | [IsLocallyConstructible.univ](../../../../GeneralTopology/Constructible.lean/declarations/islocallyconstructible-univ.md) | 371 | `result-track:1b439cd55764d1cb6cec726568b59d86005f7cbc8b049a9dacc42888c69757d7` |
| 57 | `lemma` | [IsLocallyConstructible.inter](../../../../GeneralTopology/Constructible.lean/declarations/islocallyconstructible-inter.md) | 374 | `result-track:f7aeef87867ca2cb2aa5c44bcf993dbad4b0c1124e39cf1320141512c86b3eed` |
| 58 | `lemma` | [IsLocallyConstructible.finsetInf](../../../../GeneralTopology/Constructible.lean/declarations/islocallyconstructible-finsetinf.md) | 387 | `result-track:478eb13fa2fb541d58a1428740fa0d1f0df8216296b0aec73c273bace2300849` |
| 59 | `lemma` | [IsLocallyConstructible.finsetInf'](../../../../GeneralTopology/Constructible.lean/declarations/islocallyconstructible-finsetinf-source-edition-2.md) | 396 | `result-track:db2aeef60bc6ca2f4110a5d513483db8822b92d05006d124fc2dd58f541b1afc` |
| 60 | `lemma` | [infClosed_isLocallyConstructible](../../../../GeneralTopology/Constructible.lean/declarations/infclosed-islocallyconstructible.md) | 400 | `result-track:03fa7704a544f08406101aec8efab28e519d0c268a971b0d1a46252759340af0` |
| 61 | `lemma` | [IsLocallyConstructible.iInter](../../../../GeneralTopology/Constructible.lean/declarations/islocallyconstructible-iinter.md) | 403 | `result-track:374b9558357129d58fc3c18a01ffa72a3be9022ce70a44393f8f60e3534717a9` |
| 62 | `lemma` | [IsLocallyConstructible.sInter](../../../../GeneralTopology/Constructible.lean/declarations/islocallyconstructible-sinter.md) | 407 | `result-track:5e61b48923f61b74b3a15650877bc11fc1f25d1053de6dcace49b09d9d97e3a2` |
| 63 | `lemma` | [IsLocallyConstructible.union](../../../../GeneralTopology/Constructible.lean/declarations/islocallyconstructible-union.md) | 411 | `result-track:a81066ef33ec14574a8e0f4f221291214e50a2a356f6165ecc48a3f9e5518db1` |
| 64 | `lemma` | [IsLocallyConstructible.iUnion](../../../../GeneralTopology/Constructible.lean/declarations/islocallyconstructible-iunion.md) | 426 | `result-track:d9bedea2ad0e70fdc53037f46a6a0602572d9f8079a3c5d1ac24bad66a70e36f` |
| 65 | `lemma` | [IsLocallyConstructible.biUnion](../../../../GeneralTopology/Constructible.lean/declarations/islocallyconstructible-biunion.md) | 430 | `result-track:09f1442c29edf8bcaecaf41d8c27544282e0e9558d71d566675c53a18425a787` |
| 66 | `lemma` | [IsLocallyConstructible.sUnion](../../../../GeneralTopology/Constructible.lean/declarations/islocallyconstructible-sunion.md) | 434 | `result-track:a34d8b1595c11ddf7ab0bdb9679f35a394bf8596fff4995457ba64d4cc101c81` |
| 67 | `lemma` | [IsLocallyConstructible.preimage_of_isOpenEmbedding](../../../../GeneralTopology/Constructible.lean/declarations/islocallyconstructible-preimage-of-isopenembedding.md) | 438 | `result-track:b10bf60b75fffddf51ff7dff782b309903492d3b66b8fd39e906edf18e639711` |
| 68 | `lemma` | [IsLocallyConstructible.isConstructible_of_subset_of_isCompact](../../../../GeneralTopology/Constructible.lean/declarations/islocallyconstructible-isconstructible-of-subset-of-iscompact.md) | 446 | `result-track:fa51f7a795f8c1342141d3c4ffe4be7cd1f0b4ef036ee5b2254d8a6778d855c4` |
| 69 | `lemma` | [IsLocallyConstructible.isConstructible](../../../../GeneralTopology/Constructible.lean/declarations/islocallyconstructible-isconstructible.md) | 468 | `result-track:1a9c015aed2553b59a2f56eb38cf8126bcac8879478fb12cf75d2d77f263b953` |
| 70 | `lemma` | [IsLocallyConstructible.inter_of_isOpen_isCompact](../../../../GeneralTopology/Constructible.lean/declarations/islocallyconstructible-inter-of-isopen-iscompact.md) | 474 | `result-track:df1a26cc71ea4d4de0a10b17197fa91a6aa9d98994c7dfb3ccf104e131793d7d` |
| 71 | `lemma` | [IsLocallyConstructible.of_isOpenCover](../../../../GeneralTopology/Constructible.lean/declarations/islocallyconstructible-of-isopencover-source-edition-2.md) | 483 | `result-track:ba5fa6bcf782dd840748b29867b88df368fc6d28987936327730016fc23e5670` |
| 72 | `lemma` | [IsLocallyConstructible.of_isOpenCover'](../../../../GeneralTopology/Constructible.lean/declarations/islocallyconstructible-of-isopencover.md) | 500 | `result-track:5c43fc6bb9af308c95fa07ab639899dca8bbedaaa30e8a88c0e568480497647c` |
| 73 | `lemma` | [IsLocallyConstructible.iff_of_isOpenCover](../../../../GeneralTopology/Constructible.lean/declarations/islocallyconstructible-iff-of-isopencover.md) | 507 | `result-track:417e2d0a489d2ccb04708a099cd3c2f96cefc2495eb4912168d2e7f16b19bb13` |
| 74 | `lemma` | [IsLocallyConstructible.iff_isConstructible_of_isOpenCover](../../../../GeneralTopology/Constructible.lean/declarations/islocallyconstructible-iff-isconstructible-of-isopencover.md) | 513 | `result-track:29b2c8fae1fabf7584b515a92617be68f355a18df6a246c653a2ddd89b9684e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9ef2cb44b86eac963f5bd591d08a5e7deebbd8e0c8a85df68ee7f0d1f039343c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Constructible/Variant1e478bfc35b859cb47366cb43d5700dde5f3c2367b1ec9933e7ca3c55d9023b8.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Constructible/Variant1e478bfc35b859cb47366cb43d5700dde5f3c2367b1ec9933e7ca3c55d9023b8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
