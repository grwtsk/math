# Verification target: Algebraic Geometry Gluing Namespaced From Glued Is Open Embedding

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30158fa53d40ec14bdd9eea6368777899c2d5605",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variant02c339df70a8cd6435ab33542e2ee70ee5c99aad5cd2f4594a06c07ea9eaa521.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30158fa53d40ec14bdd9eea6368777899c2d5605`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variant02c339df70a8cd6435ab33542e2ee70ee5c99aad5cd2f4594a06c07ea9eaa521.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Gluing/Variant02c339df70a8cd6435ab33542e2ee70ee5c99aad5cd2f4594a06c07ea9eaa521.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.RingedSpace.PresheafedSpace.Gluing` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Cover.Open` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GlueData](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/gluedata.md) | 90 | `declaration-track:94edd4635c7b63c92e933b0b420dd0d743b805efc6a936b90fe4fc8c0dd76859` |
| 2 | `abbrev` | [toLocallyRingedSpaceGlueData](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/tolocallyringedspacegluedata.md) | 102 | `declaration-track:2b4f051f32ef1ca2359f7aa9861579e04c66cc4fb230e6d7057caf8253c70c93` |
| 3 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/instance-source-edition-8.md) | 106 | `declaration-track:c623067432d338f6c81aa2ebccbc39b82177e80374b64600eead3b0f41e1df63` |
| 4 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/instance-source-edition-7.md) | 110 | `declaration-track:bb17a8f95a6a4c1a3be37540dd3dd978526c90fd219ca1ab7888382752a740b3` |
| 5 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/instance-source-edition-2.md) | 115 | `declaration-track:2346c9994e5bc689f07d4f327d716f3b4b37401bbc6b5229b6bf457114f0458e` |
| 6 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/instance-source-edition-3.md) | 121 | `declaration-track:306d895a5b2968f65942b6c586ca71ebca1cf16ea22f214e5e22eab0ef0b69da` |
| 7 | `def` | [gluedScheme](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/gluedscheme.md) | 127 | `declaration-track:dde571df1f55342f9a2ae320e24ef0410fe600ef5f2a0d57159ec9539157b0e0` |
| 8 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/instance-source-edition-4.md) | 141 | `declaration-track:353766470177a091c864f34f32926ee642866f04fd446aeb92171d44ffa14509` |
| 9 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/instance-source-edition-9.md) | 145 | `declaration-track:fe72105ac5354d42ebc186c2cc2bdf977c441481285be11d1711bd23122e3fbe` |
| 10 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/instance.md) | 149 | `declaration-track:102728d7cc37f47b5e3955d656136e256808ff083edeabbbf9e97eedd56710fd` |
| 11 | `abbrev` | [glued](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/glued.md) | 153 | `declaration-track:691e04acfa2397348179b72e3bc6f16e838a018e34f7a13211b7eedfb42e2b2d` |
| 12 | `abbrev` | [ι](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/anonymous.md) | 157 | `declaration-track:10d4c4cbaee60b8fc5f6b966e84f255c1d745b6431933a88ef6459fab4bef768` |
| 13 | `abbrev` | [isoLocallyRingedSpace](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/isolocallyringedspace.md) | 161 | `declaration-track:4c28528da6b1e90843c2564e895b07e628aec0aa105671692d42e22b2888ee09` |
| 14 | `theorem` | [ι_isoLocallyRingedSpace_inv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/isolocallyringedspace-inv.md) | 165 | `result-track:ef2e75b0ba4925dd09d6ec21cd11c9870332a646658569a810dd78e532dce420` |
| 15 | `instance` | [ι_isOpenImmersion](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/isopenimmersion.md) | 170 | `declaration-track:380ef22cdf019d158241da329b28e52193efbae53af024a96a8553ba16c502db` |
| 16 | `theorem` | [ι_jointly_surjective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/jointly-surjective.md) | 173 | `result-track:a20b3dc78768ab86b46d2fd9d328fd36c99aa1acc9ba9dc747cf78520b7bcc6b` |
| 17 | `theorem` | [glue_condition](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/glue-condition.md) | 179 | `result-track:d32767eb81db6bba3a80a784644f2dd1a209ac9c014b771893ffa79a0207f1fb` |
| 18 | `def` | [vPullbackCone](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/vpullbackcone.md) | 184 | `declaration-track:b564495cbbb3bd69fbbdde8e2f22c289257cbc21ae8b1df150b386aae609d98f` |
| 19 | `def` | [vPullbackConeIsLimit](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/vpullbackconeislimit.md) | 195 | `declaration-track:cbc277cbf93c89cc8f4c9fcee16a0c4a9a6221a9df3e521b93467d3e2d70b7ac` |
| 20 | `def` | [isoCarrier](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/isocarrier.md) | 204 | `declaration-track:a491d5c2c304999c3151d6821502b58844d81011c6694923f3b23463f26087d6` |
| 21 | `theorem` | [ι_isoCarrier_inv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/isocarrier-inv.md) | 215 | `result-track:9a1228a281bfb4959024e3aa40d583b4db92637c6f330996c10b7231a12ab0f3` |
| 22 | `def` | [Rel](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/rel.md) | 228 | `declaration-track:32e2188899a09bc59acc639fd58c8d890f861b44aa34e3b3a2f1b0dfb3ac7ec8` |
| 23 | `theorem` | [ι_eq_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/eq-iff.md) | 231 | `result-track:3a2cad37da97f0eda9e3795ea2d3e19569d5cb224ee8b00a38fa7f893a47b17f` |
| 24 | `theorem` | [isOpen_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/isopen-iff.md) | 242 | `result-track:6c06da810d380e7a7e1e042d02343bb468c259d5d3f4449b41791770a4c28fbd` |
| 25 | `def` | [openCover](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/opencover.md) | 251 | `declaration-track:d7f845cf8d1b8fa676a6b288ea5472a6390ecdad653617408190adbf5a43b867` |
| 26 | `def` | [gluedCoverT'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/gluedcovert.md) | 265 | `declaration-track:aeced83e93a2e0dbb72caa8ba8225388abd934cab621286821ca5c7489e1e754` |
| 27 | `theorem` | [gluedCoverT'_fst_fst](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/gluedcovert-fst-fst.md) | 276 | `result-track:c1c8234a8e5a4de24791bbd0a5da06972557105d30264d91b216f6dac9f22f23` |
| 28 | `theorem` | [gluedCoverT'_fst_snd](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/gluedcovert-fst-snd.md) | 282 | `result-track:f0ce1416f51562593597c9394da8de08d5dbae54c2e919eaceead8b9b402061f` |
| 29 | `theorem` | [gluedCoverT'_snd_fst](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/gluedcovert-snd-fst.md) | 288 | `result-track:581a38d7d792a2d89e42d3c4b26cfaaa624857610ae15833dc3dff25fc34a658` |
| 30 | `theorem` | [gluedCoverT'_snd_snd](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/gluedcovert-snd-snd.md) | 294 | `result-track:8464b831941e93747d0dc840ddc90784179634c21429527a7bcef372524843e1` |
| 31 | `theorem` | [glued_cover_cocycle_fst](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/glued-cover-cocycle-fst.md) | 299 | `result-track:6de441baaca63ab576f65592ef9cb8a4a0972d2bb7e7ecbb0783848b37f5e85b` |
| 32 | `theorem` | [glued_cover_cocycle_snd](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/glued-cover-cocycle-snd.md) | 304 | `result-track:4cdff99cc22662bbf587aa4431ef151187115f1a44018cc78561286f1b5da8ee` |
| 33 | `theorem` | [glued_cover_cocycle](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/glued-cover-cocycle.md) | 309 | `result-track:84e862e6b2aa4f240c59ba29c1c13842a02d8de2368b70f9de152160700215d1` |
| 34 | `def` | [gluedCover](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/gluedcover.md) | 318 | `declaration-track:621220721ce2eab8cbca9701edd6baa0d6a47bcf3e63fe3591976d40dac1174b` |
| 35 | `def` | [fromGlued](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/fromglued-source-edition-2.md) | 334 | `declaration-track:adf9c0ebf1665157d286d0e12de91e467cdb0c34536509fcc5a938192378922c` |
| 36 | `theorem` | [ι_fromGlued](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/fromglued.md) | 342 | `result-track:4bdb29060a59817c4a4a11d63451c9f89001933847819a0f83c285e2f0f7d811` |
| 37 | `theorem` | [fromGlued_injective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/fromglued-injective.md) | 345 | `result-track:5a31a9db03582209fef365ebb56c81264232da68ccab84105bff02ad86e41a72` |
| 38 | `instance` | [fromGlued_stalk_iso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/fromglued-stalk-iso.md) | 365 | `declaration-track:a7e9c9b714adb6ea61dafe373546b472c2815e0432a33bb329cb13abf974107c` |
| 39 | `theorem` | [fromGlued_open_map](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/fromglued-open-map.md) | 373 | `result-track:37c936782e6a8f49a106dc3944a9287fc51003834dacfb5b302757d6ddebf825` |
| 40 | `theorem` | [fromGlued_isOpenEmbedding](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/fromglued-isopenembedding.md) | 390 | `result-track:18ba7f22896fae8bfe2d0f0fe56256e90e39a65eede348293f5b5eb7f11aac71` |
| 41 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/instance-source-edition-5.md) | 393 | `declaration-track:5785ae429929021b0b6127f0914f4117e4459f9b05ae7501dd7646adc4d0f703` |
| 42 | `instance` | [fromGlued_open_immersion](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/fromglued-open-immersion.md) | 402 | `declaration-track:0f2ca11823a8cf9beb46aadd60463bdf745d629c9968f6057d427942be026555` |
| 43 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/instance-source-edition-6.md) | 405 | `declaration-track:649c7bd169883ece840a2a0c48060f2e4fc7fb288cd2c5366c4f476bd5273c9a` |
| 44 | `def` | [glueMorphisms](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/gluemorphisms.md) | 420 | `declaration-track:c5ba9967e3575b633097c6e4044e4e05a940d99e53a5f638456698e4514594d1` |
| 45 | `theorem` | [ι_glueMorphisms](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/gluemorphisms-source-edition-2.md) | 432 | `result-track:f35f75e696ba45e721a8d83ee3e9ef0b336e260d7a6842de84c0911863af5a2f` |
| 46 | `theorem` | [hom_ext](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryGluingNamespacedFromGluedIsOpenEmbedding.lean/declarations/hom-ext.md) | 438 | `result-track:309b432c5d52468e427d07e2d0142593520eca2ffde54099845248bcd0614323` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1f9c26028dd6b027db45efa1ac0402899565a241e8583925c52c09a7b467e154 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variant02c339df70a8cd6435ab33542e2ee70ee5c99aad5cd2f4594a06c07ea9eaa521.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/Gluing/Variant02c339df70a8cd6435ab33542e2ee70ee5c99aad5cd2f4594a06c07ea9eaa521.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
