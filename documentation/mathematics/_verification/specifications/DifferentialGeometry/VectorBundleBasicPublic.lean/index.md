# Verification target: Vector Bundle Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8d2b1a3a3d792fc60aa6f8fece7bd337c2c4faf",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant54334dbfcf0e1c946f5614be66401bff7040782665789fd9ad631a00e6fec37c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/index.md) · [Full source](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8d2b1a3a3d792fc60aa6f8fece7bd337c2c4faf`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Basic/Variant54334dbfcf0e1c946f5614be66401bff7040782665789fd9ad631a00e6fec37c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Basic/Variant54334dbfcf0e1c946f5614be66401bff7040782665789fd9ad631a00e6fec37c.lean.json)

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
| 1 | `instance` | [FiberBundle.chartedSpace'](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/fiberbundle-chartedspace.md) | 82 | `declaration-track:58db1b25393ea10f54c4c9146cc1e37f1aa13b6d3e688997ff4bc1f6bc0d13ad` |
| 2 | `theorem` | [FiberBundle.chartedSpace'_chartAt](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/fiberbundle-chartedspace-chartat.md) | 90 | `result-track:ea51a1cf05618aa1129780bea24faebe58c0ec3ad67ea7bf5bcb26c54eca47e5` |
| 3 | `instance` | [FiberBundle.chartedSpace](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/fiberbundle-chartedspace-source-edition-2.md) | 102 | `declaration-track:f8423cf4c758d0554fc6a8df023431575c09c06c2f008ae1c1ed65ae77859555` |
| 4 | `theorem` | [FiberBundle.chartedSpace_chartAt](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/fiberbundle-chartedspace-chartat-source-edition-2.md) | 105 | `result-track:fe8f4e8ad0e5fb3f8cc1fd157013b40c73034836e73da5330abad1d7b9f6cc52` |
| 5 | `theorem` | [FiberBundle.chartedSpace_chartAt_symm_fst](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/fiberbundle-chartedspace-chartat-symm-fst.md) | 113 | `result-track:54e372521cf0a9c728b988c11345cd3f69c8fae4e22dbe12667c7363707636b4` |
| 6 | `theorem` | [FiberBundle.extChartAt](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/fiberbundle-extchartat.md) | 132 | `result-track:161b3090b33799fabdcf51b4a5f94c6fac61b8e344e51e8de745dfd4f39e329b` |
| 7 | `theorem` | [FiberBundle.extChartAt_target](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/fiberbundle-extchartat-target.md) | 141 | `result-track:d4caa7cd712669ef841b6ab4fcceb9b7157c6248ea49d7ae020bdd44bad2e3d1` |
| 8 | `theorem` | [FiberBundle.writtenInExtChartAt_trivializationAt](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/fiberbundle-writteninextchartat-trivializationat.md) | 148 | `result-track:9acbe517e201260835fce954901ddb7761814b0ce27d3bb654666bd90b2aa21a` |
| 9 | `theorem` | [FiberBundle.writtenInExtChartAt_trivializationAt_symm](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/fiberbundle-writteninextchartat-trivializationat-symm.md) | 154 | `result-track:23e13fcf9965670440aa628fda0616f6f539a92bf97f29d7612dd22a84593bf4` |
| 10 | `theorem` | [contMDiffWithinAt_totalSpace](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffwithinat-totalspace.md) | 170 | `result-track:cecc465ebddba93cf4f4f57dce0d86a7d18a39fe018571724eba93525d160156` |
| 11 | `theorem` | [contMDiffAt_totalSpace](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffat-totalspace.md) | 191 | `result-track:b341f9006274b9b77f092333f006e0524cc8ac9cb9e22dae48639a11a7447291` |
| 12 | `theorem` | [contMDiffWithinAt_section](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffwithinat-section-source-edition-2.md) | 198 | `result-track:ba48b6d8254bd4be6a7d9cf68698fffe6f1514f4f1884e15ff762f905b6c2e0e` |
| 13 | `theorem` | [contMDiffAt_section](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffat-section.md) | 204 | `result-track:f1c03d5d77435932effab11a29d6f01453c3c3382522cfe131e9b670a2b6c6d1` |
| 14 | `theorem` | [contMDiff_proj](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiff-proj.md) | 211 | `result-track:3680414ec115f4d982bce7fc477ca351d641ce3bd9b3bd691fcde34fd68268dc` |
| 15 | `theorem` | [contMDiffOn_proj](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffon-proj.md) | 216 | `result-track:4508bb82a218a3cacc4f76a02e51e569719114188c3fcd526540f06394c6bff5` |
| 16 | `theorem` | [contMDiffAt_proj](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffat-proj.md) | 220 | `result-track:79310f3f76ae58ba037f68c6e714fc660ec5afb2c15ec420a984d2c7f6e56e38` |
| 17 | `theorem` | [contMDiffWithinAt_proj](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffwithinat-proj.md) | 223 | `result-track:95813687570895f1e654a24166c2f9dd94b19e614b7e1ae98e583ca7b0297250` |
| 18 | `theorem` | [contMDiff_zeroSection](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiff-zerosection.md) | 232 | `result-track:20f42680b1632e246fe593231280d040874b663f92045fb6477e28db60f86177` |
| 19 | `theorem` | [contMDiffOn_zeroSection](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffon-zerosection.md) | 241 | `result-track:c461de33af38cd866ebe041a2e76a63a61bc7c540251f2f70b68dbfb6557dd39` |
| 20 | `theorem` | [contMDiffAt_zeroSection](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffat-zerosection.md) | 245 | `result-track:de2552dbdaf7fe59754864b6febdca524a1dc59a2f3ebb83acbf04905243d96e` |
| 21 | `theorem` | [contMDiffWithinAt_zeroSection](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffwithinat-zerosection.md) | 248 | `result-track:cc3708d20a8f212f917a1da13554a840c4d48b11b2d155547cf939075ec2c118` |
| 22 | `lemma` | [contMDiffWithinAt_section_of_subsingleton](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffwithinat-section-of-subsingleton.md) | 257 | `result-track:f626c33440910c9547f1a1c002fdc4ce1a606ba8b865fd1c7529e842f6454dca` |
| 23 | `lemma` | [contMDiffAt_section_of_subsingleton](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffat-section-of-subsingleton.md) | 266 | `result-track:ede5568331a36a48f32498e66c2447f859b2c866de511feff0cdafda2f49d32d` |
| 24 | `lemma` | [contMDiffOn_section_of_subsingleton](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffon-section-of-subsingleton.md) | 272 | `result-track:a2a71c31ccef29dc2d664e83183b156183cfd159629931d7e5409f0e873f056f` |
| 25 | `lemma` | [contMDiff_section_of_subsingleton](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiff-section-of-subsingleton.md) | 277 | `result-track:b02ac7d3e8bcc6b3c70c5a6dc1dad723f8b9d2855ecfa7c93a395081d80572b9` |
| 26 | `class` | [ContMDiffVectorBundle](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffvectorbundle.md) | 305 | `declaration-track:a7ce7e420f19f93bd46de329845bfd2846c80d417c92d3c4c499c318e2b41f3f` |
| 27 | `theorem` | [ContMDiffVectorBundle.of_le](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffvectorbundle-of-le.md) | 312 | `result-track:cea65d524e396296b25486950e06652826fa8c2e48479bfb20dd037359949af4` |
| 28 | `instance` | [(anonymous)](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/instance-source-edition-2.md) | 316 | `declaration-track:460e59d3b54cd3a3c7bee5454e0faf6a79142c3b26591d4735f8e676bbe72dad` |
| 29 | `instance` | [(anonymous)](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/instance-source-edition-3.md) | 320 | `declaration-track:a971fcdcdeb3de95b91a599a9ee0509aca01e5328a027f2c417086ed29b0eb37` |
| 30 | `instance` | [(anonymous)](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/instance.md) | 323 | `declaration-track:2c041c323e37f7b4450c1de4a7f50778fde90fb31bfd0fc5a7c59792e6ba61d5` |
| 31 | `instance` | [(anonymous)](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/instance-source-edition-4.md) | 326 | `declaration-track:e28c4cb5c7791726fd6c40de946529cd887b45e4c7bc9a987ba99fa75b00a249` |
| 32 | `theorem` | [contMDiffOn_coordChangeL](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffon-coordchangel-source-edition-2.md) | 339 | `result-track:59e746fa89059e02c3f68fd4cac2d7fcf33d84709556db1c8c79c37b25bf4062` |
| 33 | `theorem` | [contMDiffOn_symm_coordChangeL](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffon-symm-coordchangel.md) | 344 | `result-track:46c51dd13826483e8a7c257b028c14f4da809f8ee47fad4670af37ac4d0b7981` |
| 34 | `theorem` | [contMDiffAt_coordChangeL](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffat-coordchangel-source-edition-2.md) | 353 | `result-track:90fd305cdcff381f78cf12861c34f244c012cea394a55b0a2acf4dd71c61fad2` |
| 35 | `theorem` | [ContMDiffWithinAt.coordChangeL](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffwithinat-coordchangel.md) | 360 | `result-track:639db77a793fe72ac7d8db9e209c7c1e4f875fe12dea94cc99d322b92e50091f` |
| 36 | `theorem` | [ContMDiffAt.coordChangeL](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffat-coordchangel.md) | 365 | `result-track:063b17239d03cf4f622cc42f088f681420b98106d8b3764edb1cbac34c97ca3d` |
| 37 | `theorem` | [ContMDiffOn.coordChangeL](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffon-coordchangel.md) | 370 | `result-track:234ff1bf696348d542aea91731243d6e7c49c6c7e6d37d301efe3184d22f36e6` |
| 38 | `theorem` | [ContMDiff.coordChangeL](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiff-coordchangel.md) | 375 | `result-track:3d795ec56ab0110ae731152fa305962738ae81f72e5960321be72b91339090e3` |
| 39 | `theorem` | [ContMDiffWithinAt.coordChange](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffwithinat-coordchange.md) | 380 | `result-track:f3bdb0d7bb86ede5cf0b9a626d0ee28f7b32eebe1f1e585cbc322ba6e6b1dbec` |
| 40 | `theorem` | [ContMDiffAt.coordChange](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffat-coordchange.md) | 391 | `result-track:8654cacdd97947ebeed55b0e28e7eea532fbf4b3017c62042523782931265e89` |
| 41 | `theorem` | [ContMDiffOn.coordChange](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffon-coordchange.md) | 397 | `result-track:515133c81efd4cefe33c1a1f8e2ae0385c40a74d4ae8ff260c8fb22d9fd2b0d5` |
| 42 | `theorem` | [ContMDiff.coordChange](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiff-coordchange.md) | 402 | `result-track:12e43d9d7c4d3cc702b44766737b9ab853faa9dcd867f9a26f5449a8a569c605` |
| 43 | `theorem` | [Bundle.Trivialization.contMDiffOn_symm_trans](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/bundle-trivialization-contmdiffon-symm-trans.md) | 410 | `result-track:0d7cd4f18978286d50db70ed4d4ffde3d03def59732f880f7b5d1ef7c0ae3932` |
| 44 | `theorem` | [ContMDiffWithinAt.change_section_trivialization](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffwithinat-change-section-trivialization.md) | 427 | `result-track:5bdb01a83ef3968796d060f1ad24d2f87d102338b9be55c3bfa02e834a2868bd` |
| 45 | `theorem` | [Bundle.Trivialization.contMDiffWithinAt_snd_comp_iff₂](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/bundle-trivialization-contmdiffwithinat-snd-comp-iff.md) | 437 | `result-track:e2e0d848b38b23e29e56a6bc2d62a2c488e1877a6f99c3f5234269fcaf4a00ba` |
| 46 | `instance` | [ContMDiffFiberwiseLinear.hasGroupoid](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdifffiberwiselinear-hasgroupoid.md) | 450 | `declaration-track:7b3f9061b8070a535ef4c88a78f2b63f75969f12e57a187c2cf5603efcfbe99a` |
| 47 | `instance` | [Bundle.TotalSpace.isManifold](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/bundle-totalspace-ismanifold.md) | 467 | `declaration-track:2034523a4eb4747980888b5aa092f39c99fce73b48d853b8751008ee31993d36` |
| 48 | `theorem` | [contMDiffWithinAt_iff](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffwithinat-iff.md) | 490 | `result-track:abe8fe2481471ce09c1cf58fd99ef37b24f4616ae171605e3b68bc31728b991b` |
| 49 | `theorem` | [contMDiffAt_iff](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffat-iff.md) | 498 | `result-track:8a0f7932136f79763d3ea19e062768ab15d9b898305396ded62e087906b61c55` |
| 50 | `theorem` | [contMDiffOn_iff](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffon-iff.md) | 504 | `result-track:11354e760b5ef62f436d70e53a5249b13ff9189f50e33e15b6fe53cfd1abb80a` |
| 51 | `theorem` | [contMDiff_iff](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiff-iff.md) | 512 | `result-track:b66cde52c0f3a733232200cc33e88d84125a020c9409906a0a8ec82e27d1fd8e` |
| 52 | `theorem` | [contMDiffOn](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffon.md) | 518 | `result-track:098ca20fe7e41d8f3e98b3f7ece0886fde035a7b635ae35fea239aeee5f2b2f8` |
| 53 | `theorem` | [contMDiffOn_symm](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffon-symm.md) | 524 | `result-track:e414c9b9359f2cba420367d881d33c93412742aeb0b3b96dad348dc8bdb2f90d` |
| 54 | `theorem` | [contMDiffWithinAt_section](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffwithinat-section.md) | 533 | `result-track:6f9a0a5feb94c4cc93df5ad6720327a7c7fb70d3e4e94eebe01be429a7e6ed74` |
| 55 | `theorem` | [contMDiffAt_section_iff](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffat-section-iff.md) | 545 | `result-track:c6176e92e259717f71ed937afd9e1d1224d66fff8297fea002d4b73d58c3f5a3` |
| 56 | `theorem` | [contMDiffOn_section_iff](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffon-section-iff.md) | 555 | `result-track:efeb61af1cf415ec4a45908daf3b5c1605ed04cf3e2b720be58572ecfb7f8800` |
| 57 | `theorem` | [contMDiffOn_section_baseSet_iff](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffon-section-baseset-iff.md) | 567 | `result-track:326cc70641bf026a6d8c2c4aab6094472df82254dde02441b494c086e1cfd858` |
| 58 | `class` | [IsContMDiff](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/iscontmdiff.md) | 586 | `declaration-track:61dea91d30f1321a57d5d26cf9a2016d542246dc6d11762e96f93d63fc639fe6` |
| 59 | `theorem` | [contMDiffOn_coordChange](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffon-coordchange-source-edition-2.md) | 590 | `result-track:d0d469f2bf4de68321d75bb645d002ec09babc420a2cd75edd9e02063ee24a1d` |
| 60 | `instance` | [instContMDiffVectorBundle](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/instcontmdiffvectorbundle.md) | 598 | `declaration-track:b596d024a01b7b94965e28cd35d45c9943f0144978a3fe6ec1b65223e824c2bd` |
| 61 | `instance` | [Bundle.Trivial.contMDiffVectorBundle](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/bundle-trivial-contmdiffvectorbundle.md) | 610 | `declaration-track:41929849d3c4e14097fedd887d67fda04e20f1aa56b388f0b6a219bbd4b25263` |
| 62 | `instance` | [Bundle.Prod.contMDiffVectorBundle](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/bundle-prod-contmdiffvectorbundle.md) | 637 | `declaration-track:8fefeb443417bcdda4c1c8db053e17ea1e3d8c332d7bd68a034e838f14f84279` |
| 63 | `class` | [IsContMDiff](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/iscontmdiff-source-edition-2.md) | 661 | `declaration-track:7cbb224708ecc39587011b9fa414de225def543e48cfe3b1c81260e00e8b5b4c` |
| 64 | `def` | [contMDiffCoordChange](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffcoordchange.md) | 675 | `declaration-track:a4681f50e70e114dedd97ddf5ccaadcf2453508c4da3877374062ae3034e47fd` |
| 65 | `theorem` | [contMDiffOn_contMDiffCoordChange](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffon-contmdiffcoordchange.md) | 679 | `result-track:4df95221c78a0ddc5898c2777069a2f4fd6fd88e3024d75078b59ca34331452f` |
| 66 | `theorem` | [contMDiffCoordChange_apply](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffcoordchange-apply.md) | 685 | `result-track:f1adedbe5434a1e8b1ea745cc46239a4bb48b269fcfe13745106a27d2ed8751d` |
| 67 | `theorem` | [mk_contMDiffCoordChange](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/mk-contmdiffcoordchange.md) | 690 | `result-track:4475fb930fc842d56d9a26b39e65f6ce8e85b58c244e76dfd6f43ed3e10ff6c3` |
| 68 | `theorem` | [contMDiffVectorBundle](../../../../DifferentialGeometry/VectorBundleBasicPublic.lean/declarations/contmdiffvectorbundle-source-edition-2.md) | 700 | `result-track:bf6e6f68522dcb34a458c34681be6985750428369bbed76b87df8dae2f77af30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2227cf43bfbe5ffea8a14ff26e3fb172f8d1e266d5cd60004b04a1e4ca1d378a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/Basic/Variant54334dbfcf0e1c946f5614be66401bff7040782665789fd9ad631a00e6fec37c.lean","GRWTSK/_verification/specifications/Geometry/DifferentialGeometry/Basic/Variant54334dbfcf0e1c946f5614be66401bff7040782665789fd9ad631a00e6fec37c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
