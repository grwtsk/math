# Verification target: Tilde Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06d1d92a2293c66b68f27b9d03d863c6839eef5a",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Tilde/Variant7bb449b02c599d35dd1a97a8af3063267a6ee0d79af3ea4e6ba56edbb7ef6ca5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06d1d92a2293c66b68f27b9d03d863c6839eef5a`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Tilde/Variant7bb449b02c599d35dd1a97a8af3063267a6ee0d79af3ea4e6ba56edbb7ef6ca5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Tilde/Variant7bb449b02c599d35dd1a97a8af3063267a6ee0d79af3ea4e6ba56edbb7ef6ca5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Regular` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [modulesSpecToSheaf](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/modulesspectosheaf.md) | 44 | `declaration-track:353e3a5a60e530a81d988d17f90f5396e6fcce4a070bdaeaa8285ad3a0ef567a` |
| 2 | `def` | [moduleSpecΓFunctor](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/modulespec-functor.md) | 52 | `declaration-track:f53d09f41cb0b3862a7368f3c580e94bdfeaa21d7dbd368135771112e4138e03` |
| 3 | `def` | [SpecModulesToSheafFullyFaithful](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/specmodulestosheaffullyfaithful.md) | 58 | `declaration-track:db46140b897473b1cd556c126eb111173da3e8f306eed7929c23dcde49e4befb` |
| 4 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/instance-source-edition-15.md) | 86 | `declaration-track:eeef744d9808f21dd1422330916c37a405ffb072eb29036fad4da9e9299f0d0f` |
| 5 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/instance-source-edition-12.md) | 88 | `declaration-track:b0d49ddc7722d62584f175357accf511cccfa05ecc3fdcda97fd733817b6be1d` |
| 6 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/instance-source-edition-3.md) | 94 | `declaration-track:06c6be319c8f889c4ea3f945509259175ce754f8fb5052c5631fe7ff624056e4` |
| 7 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/instance.md) | 97 | `declaration-track:060229548a3f8561617bd7d9eed12fe651e62feaea51d77453cc074a1206ac33` |
| 8 | `lemma` | [smul_Spec_def](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/smul-spec-def.md) | 100 | `result-track:d98c6d998e1355dacbe8b1da5738d9df66c9408678cacd84b6572ab8e10d6bca` |
| 9 | `lemma` | [map_smul_Spec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/map-smul-spec.md) | 105 | `result-track:caeb8c3f68e254a987c5131a962531c0ea83a4834e23582779a0cf77c2c319d5` |
| 10 | `lemma` | [isUnit_algebraMap_end_of_le_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/isunit-algebramap-end-of-le-basicopen.md) | 110 | `result-track:1270dc1e5a5cdd5915e0afad2a3955b3202bf452c1b7277d56297ed9eb117800` |
| 11 | `lemma` | [isSMulRegular_of_le_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/issmulregular-of-le-basicopen.md) | 120 | `result-track:b6de8cec498bf21718563d4645ab64a9365884932616d66e8fdb326b32b62e06` |
| 12 | `lemma` | [restrictAppIso_smul_Spec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/restrictappiso-smul-spec.md) | 129 | `result-track:91e2b770f79255297ed709627c68b83b0365130b26fee913c8c26d4020bce377` |
| 13 | `def` | [tilde](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/tilde.md) | 152 | `declaration-track:d8d9ef1c964004c5b79f118c4e23c389074eb2aaca362133a38b160d1a19bcf8` |
| 14 | `def` | [modulesSpecToSheafIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/modulesspectosheafiso.md) | 163 | `declaration-track:da2e7d2e6403d088617c082ec2f63a3600d18669d5e6751687f3e75fee471cca` |
| 15 | `def` | [toOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/toopen.md) | 172 | `declaration-track:2ab76a252dfb67eb5207db14eed777dbb524f0d16c02cd0cc06e6389f4ae40c3` |
| 16 | `theorem` | [toOpen_res](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/toopen-res.md) | 176 | `result-track:4af1e429b17b7176bdc54c17070b053c1870c1496858f1ffcdc71482c2f9cad9` |
| 17 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/instance-source-edition-10.md) | 180 | `declaration-track:87075352a442c74f4502c3dc1bdc20801c879a68014e68339fb9c7875c4a890d` |
| 18 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/instance-source-edition-5.md) | 185 | `declaration-track:11b0e06a1d6ce17838125f01a3ed13b8ca5d85ac8d5c088c9808da771e075f1f` |
| 19 | `def` | [toStalk](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/tostalk.md) | 192 | `declaration-track:3ae4bcdebc02f74288d58389bd30d04d822dcb6af7b059c70a58f105582179ac` |
| 20 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/instance-source-edition-9.md) | 196 | `declaration-track:613c97b1fbaa0ff4ede5ebf605672c72507ac2bfddd251b3383486ad73a22b55` |
| 21 | `def` | [map](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/map.md) | 202 | `declaration-track:0ec8f720130783a10b4938ce3e3d53668aec280006be2921ff1183b2cccf653c` |
| 22 | `lemma` | [map_id](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/map-id.md) | 208 | `result-track:3365537c57b17f16839e8a54437e243d11cad392cc60c70f03d489e98b608991` |
| 23 | `lemma` | [map_comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/map-comp.md) | 213 | `result-track:ff61d192f0fa56d1472d70c916e9076f7986288853744dab2bdcbbacd31813e8` |
| 24 | `lemma` | [toOpen_map_app](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/toopen-map-app.md) | 223 | `result-track:11cb8d34be5a115f0dae39df2c8a1caa0c647b4d0d568a482e33c37b6d5fc1da` |
| 25 | `def` | [functor](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/functor.md) | 233 | `declaration-track:d4edc4eb1e48026658cd2e5e094a1b88cda17b67663208a4ba928a349592cfe6` |
| 26 | `instance` | [isIso_toOpen_top](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/isiso-toopen-top.md) | 238 | `declaration-track:437c26cd18c481d5999bd921666be049e985cf435096783297386d0701f3de4f` |
| 27 | `def` | [isoTop](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/isotop.md) | 244 | `declaration-track:84b62d88a8af224853d8c38f9507bbdabfbff7aaafe8f4e454ef1951d767c2b6` |
| 28 | `def` | [Scheme.Modules.fromTildeΓ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/scheme-modules-fromtilde.md) | 256 | `declaration-track:745bceb9e35985aeef90e9a9ac7d499d86419587783cea388665a4bc10ea3205` |
| 29 | `lemma` | [Scheme.Modules.toOpen_fromTildeΓ_app](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/scheme-modules-toopen-fromtilde-app.md) | 291 | `result-track:ce7a420f82d7a5e240350f530b7ba93f80e8d0ab8b5ffb717f2cb4c83963ee72` |
| 30 | `def` | [Scheme.Modules.fromTildeΓNatTrans](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/scheme-modules-fromtilde-nattrans.md) | 310 | `declaration-track:9899fd47a9f64ef50b3191edb3896a8cec583318328a9e4c244a357b88c9b99a` |
| 31 | `def` | [tilde.toTildeΓNatIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/tilde-totilde-natiso.md) | 335 | `declaration-track:417916206616f1de5c50ca76e296bf44072be7b9bc44ce623f6d1604321b7ed2` |
| 32 | `def` | [tilde.adjunction](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/tilde-adjunction.md) | 342 | `declaration-track:f7b247d4320a5f4f6d7af7bd5991d1c9f029074c3f775209ae931501b6da721b` |
| 33 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/instance-source-edition-4.md) | 370 | `declaration-track:0c9ac1df9f2d407384dd256a5e9a1aadb003994e018735e02576b54b6f40c122` |
| 34 | `def` | [tilde.fullyFaithfulFunctor](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/tilde-fullyfaithfulfunctor.md) | 375 | `declaration-track:1f0bead6ea315633fed127d531ad630a609724334768707d9bd3356e4adb1b34` |
| 35 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/instance-source-edition-13.md) | 378 | `declaration-track:c56dfc3ee51bedaff15c4487af91afe6f337b8ec7865e8858eb35885e25b4a18` |
| 36 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/instance-source-edition-8.md) | 379 | `declaration-track:4a90640b3d50db8604e2cb23d26f7636e25d92f415fbb83ed7a754a42d812533` |
| 37 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/instance-source-edition-11.md) | 380 | `declaration-track:ab83410d7846fa5636ce135fafa308d082e50adcf3b99e4b7ab5c513f0e68177` |
| 38 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/instance-source-edition-7.md) | 381 | `declaration-track:2c726eb550571981720d42c3099d3356b2a564001fe8167af2fb3fbd77f66c71` |
| 39 | `lemma` | [tilde.map_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/tilde-map-zero.md) | 389 | `result-track:1da86832659061f8dd8a9faecc8443b4e027fdbdb1a87ad2212c84a32fea145c` |
| 40 | `lemma` | [tilde.map_add](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/tilde-map-add.md) | 392 | `result-track:f03208e4483b4867abf2abb5d9a28fc66202a201c39355cef03dbccd9231d63f` |
| 41 | `lemma` | [tilde.map_sub](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/tilde-map-sub.md) | 395 | `result-track:18099299e519de8c9fa1918bb38fd0d9a35583e6d6948237f3cd3943e648070f` |
| 42 | `lemma` | [tilde.map_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/tilde-map-neg.md) | 398 | `result-track:1f6a468d92d4e687f4e70c8a1b3d4fc6d0dc3c5a93e75933550c660d74eada33` |
| 43 | `lemma` | [isIso_fromTildeΓ_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/isiso-fromtilde-iff.md) | 403 | `result-track:3a738cbb9e6ca8a4e366bd7e430ec696b0334ed32bd4c53bbd9c4b8b3a78c0d2` |
| 44 | `def` | [tildeSelf](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/tildeself.md) | 413 | `declaration-track:b790ae44002096bc16b721195c139840763af3b4c98d7f240f1437d40b4663e0` |
| 45 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/instance-source-edition-6.md) | 415 | `declaration-track:2a8f963c14419f340d6364173f5367bc5d1a97feaa024a9dd36fcb6e5acc846c` |
| 46 | `def` | [tildeFinsupp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/tildefinsupp.md) | 420 | `declaration-track:eb14812648d01559c4949c6fae01aa2ebd240ac480eae950d277f577d8bbc505` |
| 47 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/instance-source-edition-16.md) | 429 | `declaration-track:f8f4404cc575214c1e97198af3f49ac7674d89c0af418211bed131c91aa1f2c6` |
| 48 | `def` | [presentationTilde](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/presentationtilde.md) | 436 | `declaration-track:653632d72d83e08dcbe757625c37c23ce3935befee32969b11bf08620992be54` |
| 49 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/instance-source-edition-2.md) | 457 | `declaration-track:06704fa840d1ed3f194a685ef1a576bea47ccf2a4deb0c9beef021df8d49392a` |
| 50 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/instance-source-edition-14.md) | 460 | `declaration-track:c6073c7ad42a84b6421cec98eda6a242e1e3409bd033646c67f8b999d79534a2` |
| 51 | `lemma` | [isIso_fromTildeΓ_of_presentation](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/isiso-fromtilde-of-presentation.md) | 464 | `result-track:b8d4a3796a09ccdd7fe1966d45e8361667393c205cf62ed3c6c359b7765c7750` |
| 52 | `abbrev` | [IsLocalizing](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/islocalizing.md) | 484 | `declaration-track:a4c825f37d99025f0d6afd7f5502779de76a70b4a047981e2af7255aebf86583` |
| 53 | `theorem` | [isLocalizing_of_iso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/islocalizing-of-iso.md) | 488 | `result-track:1c5fab72b853f42a93c81bf0884a00b62d44160e56a477438dee161e0fef8fc5` |
| 54 | `theorem` | [isLocalizing_iff_of_iso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/islocalizing-iff-of-iso.md) | 498 | `result-track:5ed43054cd8fc0253d7f9dd885d4c47311c4b21b350e135bf0ce7aea737d0d1b` |
| 55 | `theorem` | [isLocalizing_of_isIso_app_top](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/islocalizing-of-isiso-app-top.md) | 502 | `result-track:094e2a70eb6fde8f99e8ab37c87d774c0c346696290d51219644620c68e86dbd` |
| 56 | `theorem` | [isLocalizing_tilde](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/islocalizing-tilde.md) | 510 | `result-track:ceed64bc8090917a41956d413db2a61ac659eae2ad6c3e16248fb2e210b1e0ea` |
| 57 | `theorem` | [isIso_fromTildeΓ_iff_isLocalizing](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/isiso-fromtilde-iff-islocalizing.md) | 524 | `result-track:302e31466b9b186cc412eb718a7c9def74c6d30e955e91f792c3791865bb1ffa` |
| 58 | `def` | [pushforwardCompModulesSpecToSheafIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/pushforwardcompmodulesspectosheafiso.md) | 536 | `declaration-track:22b176b40e2520351d5819e9e4a49880e46893f9875326fabe8cb8183a6efaf9` |
| 59 | `theorem` | [isLocalizing_pushforward_of_isLocalizing](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/islocalizing-pushforward-of-islocalizing.md) | 548 | `result-track:b4eaadee991d21f335f81e09da3e7fecc6c19c74bdebb29a39db8434071a1489` |
| 60 | `theorem` | [isIso_fromTildeΓ_pushforward](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/isiso-fromtilde-pushforward.md) | 560 | `result-track:0f568c6026554ab61a8f6887ebf6b5a3687b4603cd6130dd9cbc10096f2259f4` |
| 61 | `instance` | [Scheme.Modules.isQuasicoherent_restrictFunctor](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/scheme-modules-isquasicoherent-restrictfunctor.md) | 568 | `declaration-track:0d9077fd63f9816825bf1da6b0ffce6af0f4365c8bdd78322a02bbe2b90ce3b9` |
| 62 | `def` | [Scheme.Modules.presentationRestrict](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/scheme-modules-presentationrestrict.md) | 584 | `declaration-track:a48f88edf5efb4df1ff4a146a58a4b39ece7cc828faac9cb60493d681c87380e` |
| 63 | `lemma` | [Scheme.Modules.exists_isOpenCover_presentation](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/scheme-modules-exists-isopencover-presentation.md) | 592 | `result-track:bbd4632b9c633961e2d94d83498eb0fee85aaddcce596a7872274737933e6eea` |
| 64 | `lemma` | [Scheme.Modules.exists_affineOpenCover_presentation](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/scheme-modules-exists-affineopencover-presentation.md) | 616 | `result-track:26d47bc98b158162881381c60ead99166cd92d34a50b49d4589ba09a211ce66a` |
| 65 | `structure` | [Aux](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/aux.md) | 633 | `declaration-track:50a8aa3566b22601719e36b8209b92842ddb407e4be8505acb59d91412e1e071` |
| 66 | `lemma` | [Aux.of_le](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/aux-of-le.md) | 641 | `result-track:4b7ba0b377fb43e97e3f321ea4cfcb518630e1652e8653ee18f2225ea8c98f99` |
| 67 | `lemma` | [Aux.of_eq_iSup_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/aux-of-eq-isup-basicopen.md) | 660 | `result-track:0b1cad6fc97c6aff2152b398dd87021f733cf0d1ee6cbcd5f9484e2e22030ff5` |
| 68 | `lemma` | [isLocalizing_iff_aux](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/islocalizing-iff-aux.md) | 778 | `result-track:5fc0e7d6f4411cce1d66530143206dc117e7c7b5bb4d10825c0bf83bb9fb8d0c` |
| 69 | `lemma` | [aux_basicOpen_of_aux_restrict](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/aux-basicopen-of-aux-restrict.md) | 798 | `result-track:872abf319515427ef96cc10d69d3595d7a1160295f313d794e8236d7e967bc24` |
| 70 | `instance` | [Scheme.Modules.isIso_fromTildeΓ_of_isQuasicoherent](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/scheme-modules-isiso-fromtilde-of-isquasicoherent.md) | 842 | `declaration-track:e08d01a3e4fd72c3457611feca9f47c8fca726ed439915dee13c930e6b8d2b36` |
| 71 | `theorem` | [isQuasicoherent_iff_isIso_fromTildeΓ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/isquasicoherent-iff-isiso-fromtilde.md) | 868 | `result-track:1d7e18d60d971eec30e40d59a45002604d67f5629aed8bded3e0584225fc7590` |
| 72 | `lemma` | [essImage_tilde](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/essimage-tilde.md) | 876 | `result-track:89a0abf115376654f2d26dce54ae239b44c8c5ea5eaa448ef56df391327b6b67` |
| 73 | `def` | [tildeEquiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildePublic.lean/declarations/tildeequiv.md) | 890 | `declaration-track:4720d1163b7677e90069c077be3382969514c9985f3c7497862a4326b094b619` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7748f1279a8a77e84c7bde2c5bef9e25351da71297fdeae97739080fc7c8ca1e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/Tilde/Variant7bb449b02c599d35dd1a97a8af3063267a6ee0d79af3ea4e6ba56edbb7ef6ca5.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/Tilde/Variant7bb449b02c599d35dd1a97a8af3063267a6ee0d79af3ea4e6ba56edbb7ef6ca5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
