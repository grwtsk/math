# Verification target: Cofibrant Object Homotopy Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5bd190755f8047ef5bd51664ecbc0c76343170c1",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CofibrantObjectHomotopy/Variant3a028757e717bec4dfdba8944c29b5cf4272e5d5ab2baf57d78033d7f17b5e66.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/index.md) · [Full source](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5bd190755f8047ef5bd51664ecbc0c76343170c1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CofibrantObjectHomotopy/Variant3a028757e717bec4dfdba8944c29b5cf4272e5d5ab2baf57d78033d7f17b5e66.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CofibrantObjectHomotopy/Variant3a028757e717bec4dfdba8944c29b5cf4272e5d5ab2baf57d78033d7f17b5e66.lean.json)

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
| 1 | `def` | [homRel](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/homrel.md) | 37 | `declaration-track:b617228f0c38164443055eb582823363d529ce712957d5754318b59e06ef6096` |
| 2 | `lemma` | [homRel_iff_rightHomotopyRel](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/homrel-iff-righthomotopyrel.md) | 40 | `result-track:26db88677b2d11025735ecdeaa3bf2e884ec671296c0cc1c2287be04eab8b186` |
| 3 | `instance` | [(anonymous)](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-8.md) | 43 | `declaration-track:7f5409f6d0357c924451c5988958a3749b04e98edc7b539e6cb4dd3d48701c42` |
| 4 | `instance` | [(anonymous)](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-10.md) | 46 | `declaration-track:91539ae0ec83e7322f8f49bd204311e85b4a00d04c93ac43a040693f8f790aad` |
| 5 | `lemma` | [homRel_equivalence_of_isFibrant_tgt](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/homrel-equivalence-of-isfibrant-tgt.md) | 49 | `result-track:7c446948570c8371f684e3ab53adbb755081922aac6d92cfc5e5e92503aaf5f4` |
| 6 | `abbrev` | [HoCat](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/hocat.md) | 55 | `declaration-track:79211a27798ce9f488c6be151a5413133c66760f6c99612e89b56e21c3f66de7` |
| 7 | `def` | [toHoCat](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/tohocat.md) | 60 | `declaration-track:1a1f1783454344f31171223d6732c691a60dd51f4ae822ec429cc40c592936b3` |
| 8 | `lemma` | [toHoCat_obj_surjective](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/tohocat-obj-surjective.md) | 62 | `result-track:22b3e1c04107f90461545d08916fa3bba6499147ef04e534fd719a04ed07dc81` |
| 9 | `instance` | [(anonymous)](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/instance.md) | 65 | `declaration-track:10b06c95bc345b50e2f897ed9f9d4d271f02ddb1fbac3c1eca123f421cd86013` |
| 10 | `lemma` | [toHoCat_map_eq](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/tohocat-map-eq.md) | 67 | `result-track:f00cd3251112d969b011ab2d188a670cee2ba9004c3210e8e8be02db99931574` |
| 11 | `lemma` | [toHoCat_map_eq_iff](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/tohocat-map-eq-iff.md) | 72 | `result-track:00e56010749a0b538981c245d773616445944995dd4c52b56a2be1d1dde3f38c` |
| 12 | `instance` | [(anonymous)](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-3.md) | 78 | `declaration-track:387c6e6693b4dbbbeb0d38a2ca61d5293a2117909d3283980db474b5aaa77436` |
| 13 | `instance` | [(anonymous)](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-9.md) | 84 | `declaration-track:833b2733f38551db1941241624ace857b4890f45a35d9e5aabcaf6e0770b7af8` |
| 14 | `lemma` | [weakEquivalence_toHoCat_map_iff](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/weakequivalence-tohocat-map-iff.md) | 87 | `result-track:63eb18d72d093bee2595e95ede5808cc0639d9844a92edbea0a11dc5cb51c202` |
| 15 | `def` | [toHoCatLocalizerMorphism](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/tohocatlocalizermorphism.md) | 94 | `declaration-track:0990a67431141e4068745faf70b3a1eed742de6942c4c5d2642ccd9c87240ebe` |
| 16 | `lemma` | [factorsThroughLocalization](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/factorsthroughlocalization.md) | 104 | `result-track:d4357fbb126fae004b5701c6675f717fd8415bd028cbd30c8449465492c56502` |
| 17 | `instance` | [(anonymous)](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-11.md) | 118 | `declaration-track:922cfe4387a8fc78d605ed69aebd27ff802a0d72ad6898a9e0256a05b29764a3` |
| 18 | `instance` | [(anonymous)](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-16.md) | 122 | `declaration-track:e8de0a0455bc6127a7c32d6304c5290a1c5b2a4763a4db4d1afbeac0bd38e81e` |
| 19 | `lemma` | [HoCat.exists_resolution](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/hocat-exists-resolution.md) | 127 | `result-track:84c880b0e1e87e838c6ee938c00836649b373bf1e1ed1f4397bd00c1cbd23f81` |
| 20 | `def` | [HoCat.resolutionObj](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/hocat-resolutionobj.md) | 137 | `declaration-track:c7373b8fb4f8bdbe2aa9c46e05cb362c1dfb27ef4045f2693a2e27f8a0c7cda8` |
| 21 | `instance` | [(anonymous)](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-6.md) | 140 | `declaration-track:6b7f1b68ffcccaa72eaafe1e448a3d9b44d584a36807b3ca385d1a1d6b8e6449` |
| 22 | `def` | [HoCat.pResolutionObj](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/hocat-presolutionobj.md) | 145 | `declaration-track:9933d7f3fcc90b4d90731617efc23ba70f88ddd9e9f5ac79bfcdfc6766fb2bb8` |
| 23 | `instance` | [(anonymous)](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-14.md) | 148 | `declaration-track:b6bbd0343bc366ec461932b19a255d0152e43925a215568c43896e7ef32fc041` |
| 24 | `instance` | [(anonymous)](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-5.md) | 151 | `declaration-track:683fdf1cbac00856e54b3057f4721101743472d655227f2de712d38b3e09f86f` |
| 25 | `instance` | [(anonymous)](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-15.md) | 154 | `declaration-track:d451ed6e2285de148814111903cbafad2b4815cbc856cd6f000d41c311121d85` |
| 26 | `lemma` | [HoCat.exists_resolution_map](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/hocat-exists-resolution-map.md) | 157 | `result-track:d37c0ea38de384f4493d7a7cf89c1abb6798be1ca7705aea010f8b7812699df0` |
| 27 | `def` | [HoCat.resolutionMap](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/hocat-resolutionmap.md) | 166 | `declaration-track:c05c2cc05f6c857697a58c416a477bac4d1120545afcc3935100538a645f432b` |
| 28 | `lemma` | [HoCat.resolutionMap_fac](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/hocat-resolutionmap-fac.md) | 171 | `result-track:a68bf861206a726bd67eb8ea200d2732e603152a6627d10cab4498eb4fbb820f` |
| 29 | `lemma` | [HoCat.weakEquivalence_resolutionMap_iff](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/hocat-weakequivalence-resolutionmap-iff.md) | 177 | `result-track:2246d4f51479f02f388b0111935eeadd02e0ac6b05c1ace5b8bf320e50324250` |
| 30 | `lemma` | [HoCat.resolutionObj_hom_ext](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/hocat-resolutionobj-hom-ext.md) | 182 | `result-track:d709a53922558ef245292cd45ee964795358db2bcda5d139043a863bbea3bb69` |
| 31 | `def` | [HoCat.resolution](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/hocat-resolution.md) | 194 | `declaration-track:19f4f68801fe7fca8bf69d9c07596b846bc642c1bd4baed5b993dbf592f53f81` |
| 32 | `def` | [HoCat.localizerMorphismResolution](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/hocat-localizermorphismresolution.md) | 207 | `declaration-track:8f9cbc3b919759579f34f3dff0c00a1ace5ad9d46585735917f626987c177d43` |
| 33 | `def` | [HoCat.ιCompResolutionNatTrans](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/hocat-compresolutionnattrans.md) | 219 | `declaration-track:48a29123912e8fc05ddaf06799e14bdd6d1b9393890bf3baf70d14c270eb2122` |
| 34 | `instance` | [(anonymous)](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-4.md) | 228 | `declaration-track:46a1f45dfba75718364e82763ac3c6b77d2d15c4aafffe4ab5cd49ebde8509a4` |
| 35 | `instance` | [(anonymous)](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-2.md) | 234 | `declaration-track:3026417df219c2a05d42051a3373c16d3f71a57c98aa99b72697818d8c55b8a7` |
| 36 | `def` | [HoCat.toLocalization](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/hocat-tolocalization.md) | 249 | `declaration-track:ab8f2be21ae99914bfa378ca06d320f3ceaf9959f72f10ac79dc4db86407c96f` |
| 37 | `def` | [HoCat.toHoCatCompToLocalizationIso](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/hocat-tohocatcomptolocalizationiso.md) | 258 | `declaration-track:c355b8259c54f5fba90e86dcd526e9614a5e4e490f3d270fc6e039b6943d0804` |
| 38 | `def` | [HoCat.resolutionCompToLocalizationNatTrans](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/hocat-resolutioncomptolocalizationnattrans.md) | 262 | `declaration-track:d6f6316886bfffac6c94e2188b1d0eddf271925af60e9c8a5a34d18437a6403a` |
| 39 | `instance` | [(anonymous)](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-7.md) | 269 | `declaration-track:751d3080a1845eda9b20fcb775451e57a03dca9e1010d5a93b35e296b991ec2d` |
| 40 | `def` | [localizerMorphism](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/localizermorphism.md) | 281 | `declaration-track:1a762b2e1bb8e0cdaaf7ab64c463c7ea83cbacf483b2beb94b04c5b65b69c39d` |
| 41 | `instance` | [(anonymous)](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-13.md) | 287 | `declaration-track:a71ae72db1c403f8c86bd9dbd45e767db8511f89381c5163c70c882259d1c937` |
| 42 | `instance` | [(anonymous)](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-17.md) | 320 | `declaration-track:feca642d76503d97bcbf96d0f73b9e4857b7b280581e35bd2125ac2ca60639cb` |
| 43 | `instance` | [(anonymous)](../../../../AlgebraicTopology/CofibrantObjectHomotopyPublic.lean/declarations/instance-source-edition-12.md) | 324 | `declaration-track:a4cb62d4ce623d03ea2b2540a105a6a1f811e188267c149c3744381c927e93cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cca0517bd90fb1529aa6ed00a714bb47ea17a69e7ef3a8fbd9d4d0c94cbcd8ee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CofibrantObjectHomotopy/Variant3a028757e717bec4dfdba8944c29b5cf4272e5d5ab2baf57d78033d7f17b5e66.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/CofibrantObjectHomotopy/Variant3a028757e717bec4dfdba8944c29b5cf4272e5d5ab2baf57d78033d7f17b5e66.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
