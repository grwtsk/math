# Verification target: Constructible Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15fe5be2b116dde295895c5f95065f3612588f49",
  "lexical_observation_count": 74,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Constructible/Variant5e943b2a96c32a763c9ddba84e8648c631fad0d6f723f82f20ed1449d15aff75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ConstructibleNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/ConstructibleNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15fe5be2b116dde295895c5f95065f3612588f49`.

Source path: `GRWTSK/Topology/GeneralTopology/Constructible/Variant5e943b2a96c32a763c9ddba84e8648c631fad0d6f723f82f20ed1449d15aff75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Constructible/Variant5e943b2a96c32a763c9ddba84e8648c631fad0d6f723f82f20ed1449d15aff75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.BooleanSubalgebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactness.Bases` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocalAtTarget` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.QuasiSeparated` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Spectral.Hom` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Spectral.Prespectral` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsRetrocompact](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isretrocompact.md) | 56 | `declaration-track:ba6d9aff2f295668d4bfb71403414f554b9450e8e081369c9aee02f3d657e157` |
| 2 | `lemma` | [IsRetrocompact.empty](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isretrocompact-empty.md) | 58 | `result-track:8cac5165d66bccff19d3fe5c1f497ed913660b39f6eee230b8081230f30085ae` |
| 3 | `lemma` | [IsRetrocompact.univ](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isretrocompact-univ.md) | 59 | `result-track:504484d8fcd6ec2703cffd69830bde12cfd339ce48f51d888c5fbf4f8d592829` |
| 4 | `lemma` | [IsRetrocompact.singleton](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isretrocompact-singleton.md) | 62 | `result-track:f7a79273ea1fca959a21426a82d9cd4dd256d8d1a735b22290974172d8da3932` |
| 5 | `lemma` | [IsRetrocompact.union](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isretrocompact-union.md) | 65 | `result-track:baa6eca63eef6eb4ee0e117b7a3ff1a82bb3c5573c6fe32d800b72e85427e1ad` |
| 6 | `lemma` | [supClosed_isRetrocompact](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/supclosed-isretrocompact.md) | 69 | `result-track:86206536a5b3b8b0127bc974bce29ad25d9675366d224d8bcf65ffc5e735dae0` |
| 7 | `lemma` | [IsRetrocompact.finsetSup](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isretrocompact-finsetsup-source-edition-2.md) | 72 | `result-track:a4ba7fcbaa8ff9e6cd697c76d198f7c0afb41c83485417dc253964d15579ed28` |
| 8 | `lemma` | [IsRetrocompact.finsetSup'](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isretrocompact-finsetsup.md) | 81 | `result-track:20e74b7f2571dd6dfba96a1a239a88c088e1d817cd3e37695e7878000241dce5` |
| 9 | `lemma` | [IsRetrocompact.iUnion](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isretrocompact-iunion.md) | 85 | `result-track:47fe15db84c0cb693ff0d587b8bee1bc7e80d6b4bb80eb403b6d57695a517408` |
| 10 | `lemma` | [IsRetrocompact.sUnion](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isretrocompact-sunion.md) | 88 | `result-track:e644fcfc9622ac3f89d48fb84985587d0c0f657e915ec6e95a77de1443eaed24` |
| 11 | `lemma` | [IsRetrocompact.biUnion](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isretrocompact-biunion.md) | 91 | `result-track:c6aeffdb4a5a6c9bce5a9c7e85cd3fce469282a352c86c79aa0e515dd509e7d5` |
| 12 | `lemma` | [IsRetrocompact.inter](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isretrocompact-inter.md) | 98 | `result-track:9610578e8174fd66d0c5d6dcebdb26a3662376dbf7d4251f6b8215bd78b7d984` |
| 13 | `lemma` | [infClosed_isRetrocompact](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/infclosed-isretrocompact.md) | 102 | `result-track:a8fbf234e81547da8ca4d3d92c55febcf3daabca9cdc8bd0d6c5b59f456c3df5` |
| 14 | `lemma` | [IsRetrocompact.finsetInf](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isretrocompact-finsetinf.md) | 105 | `result-track:2cf5b74282b6c6f66f5545ca20701abca009ee7cfe8271775bf921f3ade1f957` |
| 15 | `lemma` | [IsRetrocompact.finsetInf'](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isretrocompact-finsetinf-source-edition-2.md) | 114 | `result-track:3560b8a47443bd3b473b03cb501704f755fcc1f57c48fd701416bcbc56ed8ae1` |
| 16 | `lemma` | [IsRetrocompact.iInter](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isretrocompact-iinter.md) | 118 | `result-track:571c992a8287d1ccc8ee96c9fd98a3efd51c6fbb8e85e07cc92a85ee3fae1897` |
| 17 | `lemma` | [IsRetrocompact.sInter](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isretrocompact-sinter.md) | 121 | `result-track:5650a8e5bf6fab9375a8d09fcb3fca190c79166061a93c5673e207146aab33db` |
| 18 | `lemma` | [IsRetrocompact.biInter](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isretrocompact-biinter.md) | 124 | `result-track:b3305dc01b184069a3912a93192f76100fedafc70ec2c91085bcbb776373d5c6` |
| 19 | `lemma` | [IsRetrocompact.inter_isOpen](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isretrocompact-inter-isopen.md) | 130 | `result-track:6fdf0b65ab0b71b7a2fd535557af71cde870d65ecb13c7a7d26e04ab9748d03b` |
| 20 | `lemma` | [IsRetrocompact.isOpen_inter](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isretrocompact-isopen-inter.md) | 134 | `result-track:062dad4ce6b6caadb490694b60b6bb15a15ac98a125f8983b0e097e84f9b2a10` |
| 21 | `lemma` | [IsRetrocompact_iff_isSpectralMap_subtypeVal](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isretrocompact-iff-isspectralmap-subtypeval.md) | 138 | `result-track:87e5277f25d165008e646d3e0546877294f7410d3be0784dfebab0a7197cccfa` |
| 22 | `lemma` | [IsRetrocompact.image_of_isEmbedding](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isretrocompact-image-of-isembedding.md) | 147 | `result-track:125718a3d351bc84040ed9156a402545f621ee7c2db0b715fce80984996b6434` |
| 23 | `lemma` | [IsRetrocompact.preimage_of_isOpenEmbedding](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isretrocompact-preimage-of-isopenembedding.md) | 156 | `result-track:5dbc2487a2d48a355c1853c53d36070e2cde89667a3406b016f50813193706d5` |
| 24 | `lemma` | [IsRetrocompact.preimage_of_isClosedEmbedding](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isretrocompact-preimage-of-isclosedembedding.md) | 163 | `result-track:61701cada7e0078d938329e2752297cf754e9c4a497726b6af9f27a9078b1f9a` |
| 25 | `def` | [IsConstructible](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isconstructible.md) | 182 | `declaration-track:197134c1a99544e713b267387e8cd3989986b716b215e9b090a774c42ed712f9` |
| 26 | `lemma` | [IsConstructible.empty](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isconstructible-empty.md) | 186 | `result-track:172bbf86185a453b30aa27b1f370952ae8a02b8bc1b144cb5ded5f1660705965` |
| 27 | `lemma` | [IsConstructible.univ](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isconstructible-univ.md) | 189 | `result-track:3726d2b04e4eefbccb1b8c72975d1b02a6a831a710ba9e3bbc5b205b64c21779` |
| 28 | `lemma` | [IsConstructible.union](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isconstructible-union.md) | 191 | `result-track:3ec003b0aa9903b147f274164804510a9db873c4af75bb730b3b22855704ac08` |
| 29 | `lemma` | [IsConstructible.inter](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isconstructible-inter.md) | 194 | `result-track:312fb6a9bdb407e2d4fec931aad74defc25d30e1e2c223554562c85bf375240a` |
| 30 | `lemma` | [IsConstructible.sdiff](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isconstructible-sdiff.md) | 197 | `result-track:fbce57daf30acf5d20c2f28ddbe06f899160534f2986bca82420e319b73cc271` |
| 31 | `lemma` | [IsConstructible.himp](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isconstructible-himp.md) | 200 | `result-track:4e7dc98bcc410e4e9f6740dc4d2da2c19f78b4c32add09024c9b47383648e16b` |
| 32 | `lemma` | [isConstructible_compl](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isconstructible-compl.md) | 203 | `result-track:8ce2eef60b4fd98b64b5860354ec83385580fd6e97475b9650a1b05fde9dd620` |
| 33 | `lemma` | [IsConstructible.iUnion](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isconstructible-iunion.md) | 208 | `result-track:b2855e920b101e17cf2999dd4e436044956c2063da97fcd48a120549b6c0baef` |
| 34 | `lemma` | [IsConstructible.iInter](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isconstructible-iinter.md) | 211 | `result-track:f627109473b7e82966cd7b38ac5feedf519c5ac13022c635a385b882ba3d7700` |
| 35 | `lemma` | [IsConstructible.sUnion](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isconstructible-sunion.md) | 214 | `result-track:a3f7e271b0995b726ab5987349e5c0b30436630cb0864fc067fff462f14b9c00` |
| 36 | `lemma` | [IsConstructible.sInter](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isconstructible-sinter.md) | 217 | `result-track:80c2856d59559c3b1b78425201737e5804265bf1aee9778295ba46fe428054b1` |
| 37 | `lemma` | [IsConstructible.biUnion](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isconstructible-biunion.md) | 220 | `result-track:26ecdbb19700e2564eae03589f91de8f01645eae2cb83ab25206883d4981698c` |
| 38 | `lemma` | [IsConstructible.biInter](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isconstructible-biinter.md) | 224 | `result-track:0d9c8ee45bbd662ef8ff375ba07204b471c35a83545a10ce02ad206baa09dbac` |
| 39 | `lemma` | [Constructible Namespaced](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isconstructible-source-line-228-occurrence-2.md) | 228 | `result-track:1e83e408910fd6ba6b9658c025b3bb7cb144e3578642dde170e63d5108b46931` |
| 40 | `lemma` | [IsConstructible.empty_union_induction](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isconstructible-empty-union-induction.md) | 234 | `result-track:60c76431ead431c3799b19f7e17cce410033cb4c2c9e057ebfe5c34a72551a71` |
| 41 | `lemma` | [IsConstructible.preimage](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isconstructible-preimage.md) | 248 | `result-track:b035eabf31655a014fc40dc12691108bd7b936e9b939ff02821e3ab6624abd2d` |
| 42 | `lemma` | [IsConstructible.preimage_of_isOpenEmbedding](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isconstructible-preimage-of-isopenembedding.md) | 258 | `result-track:4362adff209ffa66274be4984b9adba3e335811f93649c68f558f4dbc2e41444` |
| 43 | `lemma` | [IsConstructible.preimage_of_isClosedEmbedding](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isconstructible-preimage-of-isclosedembedding.md) | 263 | `result-track:98f94f58fe7c68e53db17dba0a38b6f4c495703cc45ff6e85b7aa99aba11ea80` |
| 44 | `lemma` | [IsConstructible.image_of_isOpenEmbedding](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isconstructible-image-of-isopenembedding.md) | 268 | `result-track:5f2c26750483acfa26199dd9435bc9b53aadc8181619a65ecd020ee007728485` |
| 45 | `lemma` | [IsConstructible.image_of_isClosedEmbedding](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isconstructible-image-of-isclosedembedding.md) | 280 | `result-track:7f1ac14fcba21a682b855279df7503c3d9911aa856ebbeecde4b4ad69dde5d5c` |
| 46 | `lemma` | [isConstructible_preimage_iff_of_isOpenEmbedding](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isconstructible-preimage-iff-of-isopenembedding.md) | 299 | `result-track:ef13390481867bb3e053de31580159d5ae48d1082bef81a3a7c251d53145b41b` |
| 47 | `lemma` | [Constructible Namespaced](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/iscompact.md) | 310 | `result-track:264e38824a3835d12fe6c3a7cbbeccb39fa991ef0f85a9c6fcca3e35ac4a3e40` |
| 48 | `lemma` | [Constructible Namespaced](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isretrocompact-source-line-316-occurrence-2.md) | 316 | `result-track:a0646a627d6f1e36a553455c2e17c150ac55f799a17e497dff2102b0d3f567ad` |
| 49 | `lemma` | [Constructible Namespaced](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isconstructible-source-line-320-occurrence-2.md) | 320 | `result-track:35ea649bd770134711bfab59f01ed272ba5b4bfefe1d9c782d5c624e369f121b` |
| 50 | `lemma` | [Constructible Namespaced](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isretrocompact-iff-iscompact.md) | 324 | `result-track:3343d49492eefd014d8e971612950b3750fd53a05b120b2fb52d059e2c68e4c1` |
| 51 | `lemma` | [IsConstructible.induction_of_isTopologicalBasis](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isconstructible-induction-of-istopologicalbasis.md) | 329 | `result-track:900f89733916b0bdaa2d627776a12b1f2089ae887c18e482e3e2a97eb740e53c` |
| 52 | `def` | [IsLocallyConstructible](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/islocallyconstructible.md) | 366 | `declaration-track:663403ded62c3458f1996747b6d1de85f1e58c53b70ed543dad53186849517bb` |
| 53 | `lemma` | [IsConstructible.isLocallyConstructible](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/isconstructible-islocallyconstructible.md) | 368 | `result-track:5d77b82fdf941af084289eb2f8fe3e22f248d1fac90bf4d89a25ff02efd6430a` |
| 54 | `lemma` | [Constructible Namespaced](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/islocallyconstructible-source-line-373-occurrence-2.md) | 373 | `result-track:145add0aa056ca966ca2268e2091dfb76fd544056e6cd2db16f609b15d5dec56` |
| 55 | `lemma` | [IsLocallyConstructible.empty](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/islocallyconstructible-empty.md) | 376 | `result-track:66fbdfb2ba4a271cb161786909ac2b12866f3670a27ba4656df4fe63e5bfbe86` |
| 56 | `lemma` | [IsLocallyConstructible.univ](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/islocallyconstructible-univ.md) | 379 | `result-track:3e797e3285027757cfa47f3df8c5ab65dca67a72e1780da46ede90cd99a589ce` |
| 57 | `lemma` | [IsLocallyConstructible.inter](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/islocallyconstructible-inter.md) | 382 | `result-track:25fe1e835c8112e28c9a9994a345ac3037c64f95db7f47955351058b16fd4c8a` |
| 58 | `lemma` | [IsLocallyConstructible.finsetInf](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/islocallyconstructible-finsetinf.md) | 395 | `result-track:9847651d60b5c91d79f82623cc655b75cd9377fcbd68541d7a6620f331ffccb2` |
| 59 | `lemma` | [IsLocallyConstructible.finsetInf'](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/islocallyconstructible-finsetinf-source-edition-2.md) | 404 | `result-track:9aa85b4aa84e6333c8356015f703c845532806b32e963f83e9398936d9e1d48d` |
| 60 | `lemma` | [infClosed_isLocallyConstructible](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/infclosed-islocallyconstructible.md) | 408 | `result-track:bd6592fcc9dc58eec208344718e3f28ad9ec084c4bda3dff89cdfa7a9b6555c5` |
| 61 | `lemma` | [IsLocallyConstructible.iInter](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/islocallyconstructible-iinter.md) | 411 | `result-track:3e9cd2c8152527ea673d399bf90c0f25466fc63289ccf0afd8f016b53f3669f7` |
| 62 | `lemma` | [IsLocallyConstructible.sInter](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/islocallyconstructible-sinter.md) | 415 | `result-track:88cab7d4208ef788e6cb09df0b3be08cc5c1ee4137fd12dc8c95db93a35f408f` |
| 63 | `lemma` | [IsLocallyConstructible.union](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/islocallyconstructible-union.md) | 419 | `result-track:513a95e27b615776bf69e41fc74758b4574a48f911016e76ff99516d146c4d8e` |
| 64 | `lemma` | [IsLocallyConstructible.iUnion](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/islocallyconstructible-iunion.md) | 434 | `result-track:389eace894e1214ee658012ded93c8caf653fcd73f1d689cb766e75e79b5a8bc` |
| 65 | `lemma` | [IsLocallyConstructible.biUnion](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/islocallyconstructible-biunion.md) | 438 | `result-track:61489c8776929d9edfc4214f22adb3fa409d94d62181ebf0aef2843b3ac2edc9` |
| 66 | `lemma` | [IsLocallyConstructible.sUnion](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/islocallyconstructible-sunion.md) | 442 | `result-track:f6df43672465d6295fb88cef2ff24b9972ce9bce66c48ea831eb27848f6a08cb` |
| 67 | `lemma` | [IsLocallyConstructible.preimage_of_isOpenEmbedding](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/islocallyconstructible-preimage-of-isopenembedding.md) | 446 | `result-track:f1e38ce7ade34c249dd8579f94322b0ac013f9a8a1cc73be41d52b01ad1d6c84` |
| 68 | `lemma` | [IsLocallyConstructible.isConstructible_of_subset_of_isCompact](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/islocallyconstructible-isconstructible-of-subset-of-iscompact.md) | 454 | `result-track:e14fd350d51d07860ed2b60065bcee0635a820e0e3fed42e1dfb36f48648dcd0` |
| 69 | `lemma` | [IsLocallyConstructible.isConstructible](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/islocallyconstructible-isconstructible.md) | 476 | `result-track:5a57fd17eb5619d3b344fd1daaf7b946acd41d60620fc02258472758d0cf4e74` |
| 70 | `lemma` | [IsLocallyConstructible.inter_of_isOpen_isCompact](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/islocallyconstructible-inter-of-isopen-iscompact.md) | 482 | `result-track:4f00a2b5d56dbcf98d55df627c0e3857f43479fc86dbbf08bc1a787ce7b7fc8d` |
| 71 | `lemma` | [IsLocallyConstructible.of_isOpenCover](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/islocallyconstructible-of-isopencover.md) | 491 | `result-track:35e9aaaa7d64187d2cd45ec15688e8c5dec87b5d4b2ab33f77d0b49f44d189e3` |
| 72 | `lemma` | [IsLocallyConstructible.of_isOpenCover'](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/islocallyconstructible-of-isopencover-source-edition-2.md) | 508 | `result-track:52107e44454fa2815d11c78da658b758beb17d3d4175bfec3f3106106e662842` |
| 73 | `lemma` | [IsLocallyConstructible.iff_of_isOpenCover](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/islocallyconstructible-iff-of-isopencover.md) | 515 | `result-track:63af474d356643df71b3cac16f8729f85145b00a86986953239e273614751efd` |
| 74 | `lemma` | [IsLocallyConstructible.iff_isConstructible_of_isOpenCover](../../../../GeneralTopology/ConstructibleNamespaced.lean/declarations/islocallyconstructible-iff-isconstructible-of-isopencover.md) | 521 | `result-track:48c6ca2f92a803b6d0b35e2bf062dc01368738ea19df64e9ec61f80298af6e80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7e667e43dc0e6a912bba67749d2e4c63e7ee65e003c52e828c375e6ee51a841a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Constructible/Variant5e943b2a96c32a763c9ddba84e8648c631fad0d6f723f82f20ed1449d15aff75.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Constructible/Variant5e943b2a96c32a763c9ddba84e8648c631fad0d6f723f82f20ed1449d15aff75.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
