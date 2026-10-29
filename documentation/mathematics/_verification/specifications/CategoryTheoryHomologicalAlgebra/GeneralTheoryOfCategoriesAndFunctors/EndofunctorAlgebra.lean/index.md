# Verification target: Endofunctor Algebra

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8254518c828b3a9630dfe6337a0fff8dd249931",
  "lexical_observation_count": 67,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Varianta2911ef8b8d3ff618ba0a9601c748ef78362558be49db7d3d9f20fda8b3cac6d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8254518c828b3a9630dfe6337a0fff8dd249931`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Varianta2911ef8b8d3ff618ba0a9601c748ef78362558be49db7d3d9f20fda8b3cac6d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Varianta2911ef8b8d3ff618ba0a9601c748ef78362558be49db7d3d9f20fda8b3cac6d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.IsTerminal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.EpiMono` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Algebra](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/algebra.md) | 35 | `declaration-track:04651a53020ce8cf518064b5429b75770d5bad812c8f5d4e279169a1b78d0185` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/instance-source-edition-6.md) | 41 | `declaration-track:cbe4ee713ce4569985452711f841e7916a08247c94ad694d1650c81f998adeab` |
| 3 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/hom.md) | 61 | `declaration-track:2d8da69584b8740285627263ef717839c1912439c3986e85d75aaa76358a27fe` |
| 4 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/id-source-edition-2.md) | 72 | `declaration-track:8776ada51905c46e2c084a980ea61b9b098e37c0b7ae5534d8a346bda07bf558` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/instance.md) | 74 | `declaration-track:106262a567967de29110081af822cd3072d364262dda7fc8724e4303a25ec70d` |
| 6 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/comp-source-edition-2.md) | 78 | `declaration-track:f40e85db4357a9ec62ad74cf3b83a10b983779bb3330eed4365dceba3d6cd15c` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/instance-source-edition-2.md) | 82 | `declaration-track:36022f995c65d028c60b53a36d8b790eb6ffcb69b8f193df258549569a9f02f2` |
| 8 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/ext-source-edition-2.md) | 88 | `result-track:96b5465ca878fe38dcfade6269bb35d4f658f763f67f7b7419e480f3879b2881` |
| 9 | `theorem` | [id_eq_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/id-eq-id-source-edition-2.md) | 92 | `result-track:59c7c08fc40476f70a291cfb09eed5457ef18ca23352730146185ad941ceb960` |
| 10 | `theorem` | [id_f](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/id-f.md) | 96 | `result-track:1b8051bd87c6d0d2e955ed4201cdb020b9f5b427c7d547c93ff1aed25baf115e` |
| 11 | `theorem` | [comp_eq_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/comp-eq-comp.md) | 102 | `result-track:1311b5250cffe2e75b2c5f08b4aa392412f3528ffd2176d8cb968803797a6a1d` |
| 12 | `theorem` | [comp_f](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/comp-f.md) | 106 | `result-track:11502e5ce77077295671758b5ba694cb12ca06c72ecaca8ab79f6e97f8c0c672` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/instance-source-edition-4.md) | 110 | `declaration-track:9cbac6a427e9dc61122502b610cca0ba4aa68474d7b0c6306466d41a2e89618e` |
| 14 | `def` | [isoMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/isomk.md) | 116 | `declaration-track:565de3884537595b36efea21a91d8e95bcbcd56dba497f4ff27a3bbd6c8e8c6e` |
| 15 | `def` | [forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/forget-source-edition-2.md) | 127 | `declaration-track:81311493d665cf523aecdf5c1dfbdb05088d468e10b8914a66bfdf8d2f810093` |
| 16 | `theorem` | [iso_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/iso-of-iso.md) | 132 | `result-track:3cc2a91bc2a8effdc9b9c79b8f7c7f61366cc8162049f4968fd62096263a45d3` |
| 17 | `instance` | [forget_reflects_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/forget-reflects-iso-source-edition-2.md) | 138 | `declaration-track:dbafb33f186e0646aab8b707d7fd14151c41643c1ecdb918353f77c61efe7cba` |
| 18 | `instance` | [forget_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/forget-faithful.md) | 140 | `declaration-track:50487501c4c2658c9e3d3000a39f5f127ed6d0d2e3eb3740bddd9f2dcf50522c` |
| 19 | `theorem` | [epi_of_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/epi-of-epi.md) | 143 | `result-track:5efe5eaaebabb67ae331ebd35ff033b302799f83e5211acf6d128e186e4abcc6` |
| 20 | `theorem` | [mono_of_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/mono-of-mono.md) | 147 | `result-track:297d8442b781b79202cbfcdc1afa7a3dc645a50000258ab83216ede727e90211` |
| 21 | `def` | [functorOfNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/functorofnattrans.md) | 154 | `declaration-track:3896d8c7fdbb04ee53922d9ccb3313c19c65d6cd22c7597dca47f4ee5241909c` |
| 22 | `def` | [functorOfNatTransId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/functorofnattransid.md) | 162 | `declaration-track:15ef6228c7f02f6928b1f31c29b2850a2e04e188b304d7b3e909e186c8115384` |
| 23 | `def` | [functorOfNatTransComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/functorofnattranscomp-source-edition-2.md) | 167 | `declaration-track:c9be74450555bde8720e2cf2e4e537bf1d1aa68f9042b289b89afa6acbee90a9` |
| 24 | `def` | [functorOfNatTransEq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/functorofnattranseq.md) | 178 | `declaration-track:3aaf41fab9493ab64546de280ad3d4ea9a9d95e61e8acec07e42c107c0fca02e` |
| 25 | `def` | [equivOfNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/equivofnatiso.md) | 187 | `declaration-track:53c41439475332e3be54c8d46c1bc1a7f3d7460839a1712e28e3f127ff0e9074` |
| 26 | `def` | [strInv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/strinv.md) | 199 | `declaration-track:8d07e3245769ba40635514ef01ce914e88701f553a586dfcb716c63ea0551dba` |
| 27 | `theorem` | [left_inv'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/left-inv-source-edition-2.md) | 202 | `result-track:0c16bda9a567a42fb915edf01f03e049b555c0f38bf0e34fac30bdb15c7d5a1c` |
| 28 | `theorem` | [left_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/left-inv.md) | 206 | `result-track:08ba1bd48feda80372494c6cd978b5b37e93ee3f8f8f4f088bb4c56a23e919d8` |
| 29 | `theorem` | [right_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/right-inv-source-edition-3.md) | 209 | `result-track:fa984978787db836becab6fab24d61374a264aacbbb616633b318b6fea9b528f` |
| 30 | `theorem` | [str_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/str-isiso-source-edition-2.md) | 217 | `result-track:55c1d9543f95f8d76a5d925df7f5327c923e27820bd87d27591416c4ebc98e3c` |
| 31 | `structure` | [Coalgebra](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/coalgebra.md) | 225 | `declaration-track:ff971dd1a4ff1bcf450cbfba4702f374b81f4829f86f135bf782c82fe2510876` |
| 32 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/instance-source-edition-7.md) | 231 | `declaration-track:e4f4f6a4b1c41e06a4de66de1488693ff221184c1abb5f3a7bda0218b9687fa7` |
| 33 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/hom-source-edition-2.md) | 251 | `declaration-track:6e2cbdabc8bbc976ea849e356f04a44c9fd316b4dbf95af1f2f6203f4fb2327a` |
| 34 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/id.md) | 262 | `declaration-track:6a666fe8d6da3be3d1b72229f1f6b22798b6058d889a601cef4ae44f03d535e0` |
| 35 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/instance-source-edition-3.md) | 264 | `declaration-track:870490e3797c310001a52e05a5dda8ea87a8514ed1fe6268d586c68be7377fb9` |
| 36 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/comp.md) | 268 | `declaration-track:16244f65ac1de16b68b321e71a54f53e15181e55adc2014874820dca94a330f6` |
| 37 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/instance-source-edition-8.md) | 272 | `declaration-track:e5d97258f9aed1d384c2a19f6739945b0484a708232599c9cede18f3bc3396f0` |
| 38 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/ext.md) | 278 | `result-track:54e6c5b6adf2ff89ccb1cec788fcf874f189ccca4d4e79d4e6ff19a1f1ca573c` |
| 39 | `theorem` | [id_eq_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/id-eq-id.md) | 282 | `result-track:57d0f9be70a71ebc5d68f00ecb505207143895d3ffec53a442beaefa40cacb3d` |
| 40 | `theorem` | [id_f](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/id-f-source-edition-2.md) | 286 | `result-track:c1e3bff1ca7dbf2ab980b7751a6b666c5bc59f8480529b70fdab3d590bac7a3a` |
| 41 | `theorem` | [comp_eq_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/comp-eq-comp-source-edition-2.md) | 292 | `result-track:1e89b46c42d38ce4a992429cbb30b64ddf510c476b385f045a7d03c4b5c674a9` |
| 42 | `theorem` | [comp_f](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/comp-f-source-edition-2.md) | 296 | `result-track:6a4f334dc910530b14903578f89db366191eef8a260c6c3a76f8a615e5fcb936` |
| 43 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/instance-source-edition-5.md) | 300 | `declaration-track:c6f0bc417d48e981ce5fdd40904a20eb3152f460fb5fbc6ec12e0657be7a1a97` |
| 44 | `def` | [isoMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/isomk-source-edition-2.md) | 306 | `declaration-track:99882a09fa5a601110e10fa81a0b834ce4966c1204b775586f75c119803c4131` |
| 45 | `def` | [forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/forget.md) | 317 | `declaration-track:0fe12702dd8314f71bcbfd37da2ab2831f3ae066e339809ef5f54a23f7519d5f` |
| 46 | `theorem` | [iso_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/iso-of-iso-source-edition-2.md) | 322 | `result-track:485747bb13b964d2c7c311d93df068baae5b270c98f6b368ecad9f753ec5fdc8` |
| 47 | `instance` | [forget_reflects_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/forget-reflects-iso.md) | 328 | `declaration-track:684f6a26c02fe87be93248215e5f779b0d3438dad5fcadceefb09ab20d5b21e8` |
| 48 | `instance` | [forget_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/forget-faithful-source-edition-2.md) | 330 | `declaration-track:bd19431b247d06ae0de724f6fd7937232ba01caca6bc5c667bc7d75c823fb07e` |
| 49 | `theorem` | [epi_of_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/epi-of-epi-source-edition-2.md) | 333 | `result-track:d050284b92c034d9de40396756159518b85c492edd7c6deaadf119c3fc9032b1` |
| 50 | `theorem` | [mono_of_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/mono-of-mono-source-edition-2.md) | 337 | `result-track:a374a120becde726d065a642710f207bde511f6c36a75b76cf0acf071399c20a` |
| 51 | `def` | [functorOfNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/functorofnattrans-source-edition-2.md) | 344 | `declaration-track:ca5abf69f7a38ab529601b2542535b7a8b7203ea14730f4346da9046b783d1ee` |
| 52 | `def` | [functorOfNatTransId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/functorofnattransid-source-edition-2.md) | 354 | `declaration-track:f5f6500f29f2c96a201d53e071a1ec283d2d240116d18c648712b65caf7830b1` |
| 53 | `def` | [functorOfNatTransComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/functorofnattranscomp.md) | 359 | `declaration-track:160aa4a989fcbeb9a766ff1cf9dce9a85bc4292e3755caf73cadf0c9de1330fc` |
| 54 | `def` | [functorOfNatTransEq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/functorofnattranseq-source-edition-2.md) | 369 | `declaration-track:f94afa0f8dcb9b9d4d28db0c75923e992ab3e25b7944109c5f4b23c5950d6cc9` |
| 55 | `def` | [equivOfNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/equivofnatiso-source-edition-2.md) | 378 | `declaration-track:9837b72b232f38892608f6a087f73c863a540679f3842664a20302c18fed8e53` |
| 56 | `def` | [strInv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/strinv-source-edition-2.md) | 391 | `declaration-track:bb3da10982a5eb9baa080e080bd905308abe43c6782ad112dcd7c5e1e7a56a78` |
| 57 | `theorem` | [right_inv'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/right-inv-source-edition-2.md) | 394 | `result-track:c01bfada4dcfe38fc6f6bd10b7a44d10e224225b5ce782d0cca1735d161839d9` |
| 58 | `theorem` | [right_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/right-inv.md) | 398 | `result-track:17d48b831105c58168d9adef1508bc7664c3737ab54d154ddf163dafcc92629f` |
| 59 | `theorem` | [left_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/left-inv-source-edition-3.md) | 401 | `result-track:832bbace53e776634a4caaa437b1d76594523717890ed01f768684df6793b93a` |
| 60 | `theorem` | [str_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/str-isiso.md) | 409 | `result-track:378eadbfef30cc60615684481facb6335883ee0558f7561de46d88c557bea4ea` |
| 61 | `theorem` | [Algebra.homEquiv_naturality_str](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/algebra-homequiv-naturality-str.md) | 420 | `result-track:0f5382ce0280d23fbf38e99b65838bcc2a87220a88a6cc904d9f21e4f7b189d9` |
| 62 | `theorem` | [Coalgebra.homEquiv_naturality_str_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/coalgebra-homequiv-naturality-str-symm.md) | 424 | `result-track:8349f97a19a3e5744e23f8caccc4d5421e32181bf2d2bc19a6183dc56b6e2de5` |
| 63 | `def` | [Algebra.toCoalgebraOf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/algebra-tocoalgebraof.md) | 433 | `declaration-track:3ec24bfd9a398a208fc2af9d30ee91230fd1a309e6dad78181919b42afe222cd` |
| 64 | `def` | [Coalgebra.toAlgebraOf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/coalgebra-toalgebraof.md) | 444 | `declaration-track:2baf650de82b78e1ff88512c822db0acecf22f1ecdfc4714f35a105aacef6d89` |
| 65 | `def` | [AlgCoalgEquiv.unitIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/algcoalgequiv-unitiso.md) | 455 | `declaration-track:a40919bf75badb43c4f5e436cd239d0e26a226361ce5a2e95d65e0853602bcca` |
| 66 | `def` | [AlgCoalgEquiv.counitIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/algcoalgequiv-counitiso.md) | 462 | `declaration-track:145c3f537177a6a469558581f4119cf40d4c78059818577c0c5dbd44141bf67d` |
| 67 | `def` | [algebraCoalgebraEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndofunctorAlgebra.lean/declarations/algebracoalgebraequiv.md) | 469 | `declaration-track:f11397237ea17714ae0bc570958e1166b7cb8cbb80f5c6e7247e5fa11da63626` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce0d66caefe96839c252529fdbd5e9adb3fcb8b4f8e02359e8e4e1b300acf505 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Varianta2911ef8b8d3ff618ba0a9601c748ef78362558be49db7d3d9f20fda8b3cac6d.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Varianta2911ef8b8d3ff618ba0a9601c748ef78362558be49db7d3d9f20fda8b3cac6d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
