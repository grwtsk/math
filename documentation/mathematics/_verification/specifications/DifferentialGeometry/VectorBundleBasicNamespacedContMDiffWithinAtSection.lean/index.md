# Verification target: Vector Bundle Basic Namespaced Cont MDiff Within At Section

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3533206111b8a53876ce93ea62a1d30d6f5dc61",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variantb6375b16a50dc4b1c7d2bb1d9f8ef142cd11f583e23a9490ee951232984aee16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/index.md) · [Full source](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3533206111b8a53876ce93ea62a1d30d6f5dc61`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Basic/Variantb6375b16a50dc4b1c7d2bb1d9f8ef142cd11f583e23a9490ee951232984aee16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Basic/Variantb6375b16a50dc4b1c7d2bb1d9f8ef142cd11f583e23a9490ee951232984aee16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.ContMDiff.Atlas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.VectorBundle.FiberwiseLinear` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.VectorBundle.Constructions` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [FiberBundle.chartedSpace'](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/fiberbundle-chartedspace-source-edition-2.md) | 90 | `declaration-track:a1cc99bba2b6e31207a8bfd1312f42e2adeb7276735130e54236e43db5a118bb` |
| 2 | `theorem` | [FiberBundle.chartedSpace'_chartAt](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/fiberbundle-chartedspace-chartat-source-edition-2.md) | 97 | `result-track:bdb93bbc5ff3837ae115b4b482d61574c5cb83ce31b442b928889c81d06a4ec0` |
| 3 | `instance` | [FiberBundle.chartedSpace](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/fiberbundle-chartedspace.md) | 109 | `declaration-track:53590de960e84540d9bedcc75a8c96d4dbbf97da2a52f4cf6336aced9a1a1be0` |
| 4 | `theorem` | [FiberBundle.chartedSpace_chartAt](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/fiberbundle-chartedspace-chartat.md) | 112 | `result-track:8aee2ea2cc895a54c463066c67b9d06e140386195777309543d194830fa6c562` |
| 5 | `theorem` | [FiberBundle.chartedSpace_chartAt_symm_fst](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/fiberbundle-chartedspace-chartat-symm-fst.md) | 120 | `result-track:80fd9ca84721eb65bffb21179d8bc317bcc88100acd8f419a118f5b3d05ae026` |
| 6 | `theorem` | [FiberBundle.extChartAt](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/fiberbundle-extchartat.md) | 139 | `result-track:fabd032117efdfb705653e382fa58edf19a005494df391e4047066800ee221d4` |
| 7 | `theorem` | [FiberBundle.extChartAt_target](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/fiberbundle-extchartat-target.md) | 148 | `result-track:ec7cb6b3943cea2f3f1eb835f94a72111857301f0dcf86c693409161e7a64f5f` |
| 8 | `theorem` | [FiberBundle.writtenInExtChartAt_trivializationAt](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/fiberbundle-writteninextchartat-trivializationat.md) | 155 | `result-track:536a85cb314728421bbb68158d0902e562d5c9e83d299f783da5a70b68cafbd8` |
| 9 | `theorem` | [FiberBundle.writtenInExtChartAt_trivializationAt_symm](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/fiberbundle-writteninextchartat-trivializationat-symm.md) | 161 | `result-track:714c84f1c9134ab561a3a237e94869e8216ff7d216036cb5010fd74ca3c11c7d` |
| 10 | `theorem` | [contMDiffWithinAt_totalSpace](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/contmdiffwithinat-totalspace.md) | 176 | `result-track:03c64dd08df7922b224f38795b7fa8e48e287b7d638a77e5bbd061c1b2f4f69b` |
| 11 | `theorem` | [contMDiffAt_totalSpace](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/contmdiffat-totalspace.md) | 197 | `result-track:cda6c35d70f2e3f7d620a6bbae2ca5d196e21d048313d38612edf66f902005b9` |
| 12 | `theorem` | [contMDiffWithinAt_section](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/contmdiffwithinat-section.md) | 204 | `result-track:0b5229dba20ac3c16bbf7da9df9834c76794e716edeacf06c99fa64e2d5a1c36` |
| 13 | `theorem` | [contMDiffAt_section](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/contmdiffat-section.md) | 210 | `result-track:acc3d875f30d8458d909f6fddae32f3dfd5d58d9f634f78d28f40ec2b10f16c1` |
| 14 | `theorem` | [contMDiff_proj](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/contmdiff-proj.md) | 217 | `result-track:606caeb8ca6d74b3b2ea969be9b14e69c47d9cd8a50fe60347cb4493bbac83f2` |
| 15 | `theorem` | [contMDiffOn_proj](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/contmdiffon-proj.md) | 224 | `result-track:7f7302197b5a6f4ff8f58bb3ac9dcdda1c52140b3aa3e3ca8d6ea8bea672c05f` |
| 16 | `theorem` | [contMDiffAt_proj](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/contmdiffat-proj.md) | 230 | `result-track:b6c3d187a1b31d22dd3c44eff4ad4883cc53a2d5eca1fdb03bfbd0e6e775b0a9` |
| 17 | `theorem` | [contMDiffWithinAt_proj](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/contmdiffwithinat-proj.md) | 235 | `result-track:cb291e6e20796db59b2dd52d0ed612a4cb8002f5c063a32bc1a3a6b22d499089` |
| 18 | `theorem` | [contMDiff_zeroSection](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/contmdiff-zerosection.md) | 244 | `result-track:8871bff2460a2e3f84678dffacbc54be99463a462c184bc605a8811dadadd4e3` |
| 19 | `class` | [ContMDiffVectorBundle](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/contmdiffvectorbundle.md) | 278 | `declaration-track:cb6795999326c4e4a8b38304115f26125d58887b4c3eadbf773f16db688a9fda` |
| 20 | `theorem` | [ContMDiffVectorBundle.of_le](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/contmdiffvectorbundle-of-le.md) | 287 | `result-track:d62eb4bd80c01a6d270ae736ca3b018617f69c7c26c12df82954ab09ca9f767b` |
| 21 | `instance` | [(anonymous)](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/instance-source-edition-2.md) | 291 | `declaration-track:56ea115d2ed8e578ed9dc14b440d659cd2da70c58566516976b3dc8ef73ac118` |
| 22 | `instance` | [(anonymous)](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/instance-source-edition-4.md) | 295 | `declaration-track:87ac0ed4f7ee323c3943626cc0b9efecdbe5acfcbcd9c5068c32be0a5e335459` |
| 23 | `instance` | [(anonymous)](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/instance.md) | 298 | `declaration-track:23fc54765ce84ec822e3e9dafaef59eed7f4f494a95be9c73915c5d374f711a3` |
| 24 | `instance` | [(anonymous)](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/instance-source-edition-3.md) | 301 | `declaration-track:86b70e8bb9e61aced9c2dcb62028c80ba1a72e539c935d940625660f2156344d` |
| 25 | `theorem` | [contMDiffOn_coordChangeL](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/contmdiffon-coordchangel-source-edition-2.md) | 314 | `result-track:f6de17e36e303f8bfbabc167e25d820ca0531ec6c58092e189b5d126b129a526` |
| 26 | `theorem` | [contMDiffOn_symm_coordChangeL](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/contmdiffon-symm-coordchangel.md) | 319 | `result-track:8feecd5d64ddd1e567c14c3a2bf37f576d72cf9da833095ed4fadad5435a2d46` |
| 27 | `theorem` | [contMDiffAt_coordChangeL](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/contmdiffat-coordchangel-source-edition-2.md) | 333 | `result-track:9aada4a367974298e5cf74062abac685d9044df8710b7acbd23f59858803d79a` |
| 28 | `theorem` | [ContMDiffWithinAt.coordChangeL](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/contmdiffwithinat-coordchangel.md) | 342 | `result-track:244b50856a699be4221e138684a0be63807445c395f84db04a65277058fecd5f` |
| 29 | `theorem` | [ContMDiffAt.coordChangeL](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/contmdiffat-coordchangel.md) | 347 | `result-track:1885f975422fdb11c3f70f31c033603f2e01275c63cf57c89d25030115a11246` |
| 30 | `theorem` | [ContMDiffOn.coordChangeL](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/contmdiffon-coordchangel.md) | 352 | `result-track:ee1c022ec60bcc7aecee62b454a775bca0ed93da9abe997d8bf68b1a0a33db0c` |
| 31 | `theorem` | [ContMDiff.coordChangeL](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/contmdiff-coordchangel.md) | 357 | `result-track:5bf31b49eeab59c0e252cf7a831caac2a36b75f824b51e9ee03cf8f4bc31d961` |
| 32 | `theorem` | [ContMDiffWithinAt.coordChange](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/contmdiffwithinat-coordchange.md) | 374 | `result-track:3b2d5b2d9c41c7d9fd82c0b0dd0f367c5a60dfa5fc5f681b37a8d1a4770529b8` |
| 33 | `theorem` | [ContMDiffAt.coordChange](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/contmdiffat-coordchange.md) | 385 | `result-track:97888cf7c23f1b189897a14eaf64b862b6b746035039b99c997b3ba064c76b2a` |
| 34 | `theorem` | [ContMDiffOn.coordChange](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/contmdiffon-coordchange.md) | 391 | `result-track:0a584db752d116ae4b0b2905ddd5f9554df045b99ce058f0b21e880c8e9a9935` |
| 35 | `theorem` | [ContMDiff.coordChange](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/contmdiff-coordchange.md) | 396 | `result-track:fb1b598e64d56e420829e8ca444a3b171c44888c3cfb5b4de7bcb5443f9c6fcb` |
| 36 | `theorem` | [Trivialization.contMDiffOn_symm_trans](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/trivialization-contmdiffon-symm-trans.md) | 416 | `result-track:9556bf122684fdc82b3e4aae18cad1a86021cb9d8d05dd89ea997389c449752e` |
| 37 | `theorem` | [ContMDiffWithinAt.change_section_trivialization](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/contmdiffwithinat-change-section-trivialization.md) | 433 | `result-track:2182b12326b5b2a0aa5b4c39ecfe2933d10f5213d4ed13865db75fc2eaa615a7` |
| 38 | `theorem` | [Trivialization.contMDiffWithinAt_snd_comp_iff₂](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/trivialization-contmdiffwithinat-snd-comp-iff.md) | 444 | `result-track:a01b54337910ed73aac26fa704cc7f7731e66a4ca0aa494b33d69e89d903ad9a` |
| 39 | `instance` | [ContMDiffFiberwiseLinear.hasGroupoid](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/contmdifffiberwiselinear-hasgroupoid.md) | 457 | `declaration-track:f28cccee433ebd4931b64dca80c6e426a7d4504276c670851ee34c55dac59614` |
| 40 | `instance` | [Bundle.TotalSpace.isManifold](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/bundle-totalspace-ismanifold.md) | 474 | `declaration-track:cdf22b864350377ce7a3182206e22d3d848138bf64eb9c7bc8e599b54d9b5c83` |
| 41 | `theorem` | [Trivialization.contMDiffWithinAt_iff](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/trivialization-contmdiffwithinat-iff.md) | 495 | `result-track:9ef3c4ca2f1091e5ebb22f8a6445940b9af3ae59fe7d5eb4ded2e73a6da8c638` |
| 42 | `theorem` | [Trivialization.contMDiffAt_iff](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/trivialization-contmdiffat-iff.md) | 503 | `result-track:85fd44415caf5ebab925374416bc49273cfadb6919529f58bd5a609386567dc6` |
| 43 | `theorem` | [Trivialization.contMDiffOn_iff](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/trivialization-contmdiffon-iff.md) | 509 | `result-track:020a8fd3a5a51b11e3d15658b0ff65d0391065680c2e3085b9fb370d89b7a449` |
| 44 | `theorem` | [Trivialization.contMDiff_iff](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/trivialization-contmdiff-iff.md) | 517 | `result-track:d6abf1538c9cb01fc65cd0aa12ed76b09679be46ee4b7e9e969c53a1c773455d` |
| 45 | `theorem` | [Trivialization.contMDiffOn](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/trivialization-contmdiffon.md) | 535 | `result-track:0907070cea150c1429123a51b0c6faf4b4d3a4231ff57fcef08fecd1485f3c57` |
| 46 | `theorem` | [Trivialization.contMDiffOn_symm](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/trivialization-contmdiffon-symm.md) | 541 | `result-track:247d5bf035ab05cdabb32ff9aed59cc0e9b7031d7a6b34fd0c9ce64826b05361` |
| 47 | `class` | [IsContMDiff](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/iscontmdiff-source-edition-2.md) | 563 | `declaration-track:9f614e186f219488b7c4e49e3d42248b0ffad0edce5f9b8c249120a27c3b061a` |
| 48 | `theorem` | [contMDiffOn_coordChange](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/contmdiffon-coordchange-source-edition-2.md) | 569 | `result-track:e22ac1494e0861102cdbe5c1653055dad90c438ce1396ff102b9879df6bcf2cc` |
| 49 | `instance` | [instContMDiffVectorBundle](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/instcontmdiffvectorbundle.md) | 580 | `declaration-track:ec3201674bff22006e6420544c835fba34faebd84c799c4808b66511ebdb3d66` |
| 50 | `instance` | [Bundle.Trivial.contMDiffVectorBundle](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/bundle-trivial-contmdiffvectorbundle.md) | 592 | `declaration-track:962523e5167af73ae6a9791dfad2bcbf208f9a7516f964611f89926c0b0c2ad1` |
| 51 | `instance` | [Bundle.Prod.contMDiffVectorBundle](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/bundle-prod-contmdiffvectorbundle.md) | 619 | `declaration-track:61a6f7d17a27d38fe2427f2ced5b4c8645ad0aa169aa4bd824e4e96f2cf48d11` |
| 52 | `class` | [IsContMDiff](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/iscontmdiff.md) | 643 | `declaration-track:714b0255298ece6ad57d0b07c71f49a7c163588e2aba2ccacecf95be76c6d2c0` |
| 53 | `def` | [contMDiffCoordChange](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/contmdiffcoordchange.md) | 659 | `declaration-track:5bed5e0c24deaacef086b3c8042bc426c68e81f6e8a5a1941664fc5e03a24bf2` |
| 54 | `theorem` | [contMDiffOn_contMDiffCoordChange](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/contmdiffon-contmdiffcoordchange.md) | 665 | `result-track:35ff579b0e55532792a383973c728c1c0f6b3542cf7007d34397c804cb6e051e` |
| 55 | `theorem` | [contMDiffCoordChange_apply](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/contmdiffcoordchange-apply.md) | 677 | `result-track:997e89445e6cf6f2f76cdf7b33907c33c0d931fb387f08afd8350897126d0a3f` |
| 56 | `theorem` | [mk_contMDiffCoordChange](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/mk-contmdiffcoordchange.md) | 684 | `result-track:a5830490dbdddf0e1a1716976c82c5ca577dd81a61dbc67ea3c1d3f57ec99b96` |
| 57 | `theorem` | [contMDiffVectorBundle](../../../../DifferentialGeometry/VectorBundleBasicNamespacedContMDiffWithinAtSection.lean/declarations/contmdiffvectorbundle-source-edition-2.md) | 696 | `result-track:d53771991a1d58153defdc1f46153868f350221ff0e6d6b534979af298da12c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1285533839b2e499ded8a05cdd3a02505f249899a1841a942b072c3941a4c16a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/Basic/Variantb6375b16a50dc4b1c7d2bb1d9f8ef142cd11f583e23a9490ee951232984aee16.lean","GRWTSK/_verification/specifications/Geometry/DifferentialGeometry/Basic/Variantb6375b16a50dc4b1c7d2bb1d9f8ef142cd11f583e23a9490ee951232984aee16.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
