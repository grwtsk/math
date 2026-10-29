# Verification target: Vector Bundle Basic Namespaced Smooth Proj

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb54446ef768f7fd34d217b063a4b43ec4cc3e0d",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant370c732e6bd4d09a9fc339300187ccfbbdf539ba751218d9bd0a2455ce7fd324.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/index.md) · [Full source](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb54446ef768f7fd34d217b063a4b43ec4cc3e0d`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Basic/Variant370c732e6bd4d09a9fc339300187ccfbbdf539ba751218d9bd0a2455ce7fd324.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Basic/Variant370c732e6bd4d09a9fc339300187ccfbbdf539ba751218d9bd0a2455ce7fd324.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.VectorBundle.FiberwiseLinear` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.VectorBundle.Constructions` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [FiberBundle.chartedSpace'](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/fiberbundle-chartedspace.md) | 94 | `declaration-track:4a20676babf17a4af8983941bd9986d8588430c11d4b6a4c61aac2f393d8aead` |
| 2 | `theorem` | [FiberBundle.chartedSpace'_chartAt](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/fiberbundle-chartedspace-chartat.md) | 102 | `result-track:86eada3c43b82bd5b03f588b5ce36314b2a355230e651141208ff0d253bfab92` |
| 3 | `instance` | [FiberBundle.chartedSpace](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/fiberbundle-chartedspace-source-edition-2.md) | 114 | `declaration-track:b94aa174311224adc7233ea31739e423c9436ecf9775ce87537206e677b4a0c1` |
| 4 | `theorem` | [FiberBundle.chartedSpace_chartAt](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/fiberbundle-chartedspace-chartat-source-edition-2.md) | 118 | `result-track:b1b6080b85d43edc0b39e2d10e150b67fa7e9c24f296c5030d3d4a45ba6c9aae` |
| 5 | `theorem` | [FiberBundle.chartedSpace_chartAt_symm_fst](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/fiberbundle-chartedspace-chartat-symm-fst.md) | 127 | `result-track:30aee06e96499fe2d86072bd673bb42b4a2c1f8862c6a82952a48858d6c44b1a` |
| 6 | `theorem` | [FiberBundle.extChartAt](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/fiberbundle-extchartat.md) | 148 | `result-track:663ce6c9f4b8c2179618b4224d53cce84f6ff837d703df2a777ac9670029bb98` |
| 7 | `theorem` | [FiberBundle.extChartAt_target](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/fiberbundle-extchartat-target.md) | 158 | `result-track:3a7407e164ee9fe82622eff744774add5f5d6639a63363c4d52eea42cd56e8ae` |
| 8 | `theorem` | [FiberBundle.writtenInExtChartAt_trivializationAt](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/fiberbundle-writteninextchartat-trivializationat.md) | 165 | `result-track:d91a3425fe1c9b745605b0fbf3837941dbcf972335710552fd232503bf569ee8` |
| 9 | `theorem` | [FiberBundle.writtenInExtChartAt_trivializationAt_symm](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/fiberbundle-writteninextchartat-trivializationat-symm.md) | 171 | `result-track:eceff4e8647eb87bd6ca01ba261ce9bef4c3ee2245f9978817ff576d8f795af7` |
| 10 | `theorem` | [contMDiffWithinAt_totalSpace](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/contmdiffwithinat-totalspace.md) | 188 | `result-track:9ab3233f6545f80afa37469d561c7f21a1ea8f91a95c65a0fa4e8f11596798f6` |
| 11 | `theorem` | [contMDiffAt_totalSpace](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/contmdiffat-totalspace.md) | 210 | `result-track:829035d3b6a13faf8f076b31677321ff6c8bfb4834c3c87788511f6937dd0358` |
| 12 | `theorem` | [contMDiffAt_section](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/contmdiffat-section.md) | 218 | `result-track:f0f962cef4e073b30587f59fd02f376dbc9f1195ed037671dbd990905db2fb20` |
| 13 | `theorem` | [contMDiff_proj](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/contmdiff-proj.md) | 226 | `result-track:b4260dc215264dcba6592911f0d1918284926b4d599c9bed54aec3bd9ec9d214` |
| 14 | `theorem` | [smooth_proj](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/smooth-proj.md) | 232 | `result-track:3e11e6e9af61a6d9b88c3c870870c8d1d421eee21a60f0875d61f9671d80e075` |
| 15 | `theorem` | [contMDiffOn_proj](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/contmdiffon-proj.md) | 236 | `result-track:7b117fbf1e1ab52794ab9cf42102b3b9e19d40914331436356905b6ca1776c91` |
| 16 | `theorem` | [smoothOn_proj](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/smoothon-proj.md) | 241 | `result-track:c697524312d2410337d41a3a8a6478c82288e430e22f8b4cb891681b680fb3a1` |
| 17 | `theorem` | [contMDiffAt_proj](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/contmdiffat-proj.md) | 245 | `result-track:5213b9af61e2d313535085c8a86babd4e59bc24946cb6306bf22ca20e4bda6a5` |
| 18 | `theorem` | [smoothAt_proj](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/smoothat-proj.md) | 249 | `result-track:a6e194c415c3e17c2423f0553cb8b3e89e32d11b9a7c562aa778ec3dd783cede` |
| 19 | `theorem` | [contMDiffWithinAt_proj](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/contmdiffwithinat-proj.md) | 253 | `result-track:4458dafd84b6d8450232d4d298ec2766ff75c812fcbcfa88e73a3dbae77d691b` |
| 20 | `theorem` | [smoothWithinAt_proj](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/smoothwithinat-proj.md) | 258 | `result-track:91ad5597e87192c3674d91651ef1103af92e5b2d7aa3a9772c3624922170daf9` |
| 21 | `theorem` | [smooth_zeroSection](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/smooth-zerosection.md) | 266 | `result-track:a2a95df3c9ec8e1caf357ed46a54a7ea08d3186842a63590179abb42bf96fa1d` |
| 22 | `class` | [SmoothVectorBundle](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/smoothvectorbundle-source-edition-3.md) | 299 | `declaration-track:a27ddd0ea81a3529b866414ec73b9ec50139e1683abb979ef02849ede4058acb` |
| 23 | `theorem` | [smoothOn_coordChangeL](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/smoothon-coordchangel.md) | 314 | `result-track:43158489e3f50632b3f153762a7f77c8ff342c976111db9a2380b59b6778e0d4` |
| 24 | `theorem` | [smoothOn_symm_coordChangeL](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/smoothon-symm-coordchangel.md) | 319 | `result-track:4b06a8af78b7734419ee7ff7f7bc1503792b59a2eba1ff82679f6d12cec0288d` |
| 25 | `theorem` | [contMDiffOn_coordChangeL](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/contmdiffon-coordchangel-source-edition-2.md) | 326 | `result-track:f92f61908e6aecb629cb4bc3d7a4fc179f824e09a13e46ad1eab46628f8b5af6` |
| 26 | `theorem` | [contMDiffOn_symm_coordChangeL](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/contmdiffon-symm-coordchangel.md) | 331 | `result-track:929045be26aa35595bed9957a6efa0d11f84a73b5deeb69d4da29852e4f98739` |
| 27 | `theorem` | [contMDiffAt_coordChangeL](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/contmdiffat-coordchangel-source-edition-2.md) | 338 | `result-track:a3d067bfccbc6acf3e3020634dd6d6ad04ceb7d6962dcbd1d707d65a263c3070` |
| 28 | `theorem` | [smoothAt_coordChangeL](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/smoothat-coordchangel-source-edition-2.md) | 343 | `result-track:fc04177138949c74f53fc523696234e807210262b003410d19fac319fb362359` |
| 29 | `theorem` | [ContMDiffWithinAt.coordChangeL](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/contmdiffwithinat-coordchangel.md) | 349 | `result-track:d3607c3756119949724fa3e57dc0aebd46e66b8e1c2e5c0b2b3b56b668acbdb9` |
| 30 | `theorem` | [ContMDiffAt.coordChangeL](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/contmdiffat-coordchangel.md) | 354 | `result-track:17bda2d8478b037edeb194622d36b7115f7ba5291e2dec28278fcabadc1dfe6d` |
| 31 | `theorem` | [ContMDiffOn.coordChangeL](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/contmdiffon-coordchangel.md) | 359 | `result-track:9b4531dda911e1a15652f72745ab9a14d846650b6051e73a373d6c844633019c` |
| 32 | `theorem` | [ContMDiff.coordChangeL](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/contmdiff-coordchangel.md) | 364 | `result-track:7e29203ec4cabf44aaaa7f0f3ebb906bf8f415fc434f97a30265a4f43eb4aba7` |
| 33 | `theorem` | [SmoothWithinAt.coordChangeL](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/smoothwithinat-coordchangel.md) | 369 | `result-track:0e82387e19b9b30cbc7d218477fb811ea6f452ca729118779ef6d030eefa590d` |
| 34 | `theorem` | [SmoothAt.coordChangeL](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/smoothat-coordchangel.md) | 374 | `result-track:4925a8f100d21d4ade7d2be97e9ea61efc2ac0ce7939227a3ccb7e36a325571e` |
| 35 | `theorem` | [SmoothOn.coordChangeL](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/smoothon-coordchangel-source-edition-2.md) | 379 | `result-track:47eb254d1a4d51a367dfa34ce26f9faf659437acf5aa895d7527a64e0debcc90` |
| 36 | `theorem` | [Smooth.coordChangeL](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/smooth-coordchangel.md) | 384 | `result-track:30494aa8d1fd88515e75510b19cb501af7a2eaff6244150c7ee98b1aa8a99a19` |
| 37 | `theorem` | [ContMDiffWithinAt.coordChange](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/contmdiffwithinat-coordchange.md) | 389 | `result-track:8c19e503cb196540ddcc8bd91e4d8640f62e1662193bc3ced72038d08ad8ed1d` |
| 38 | `theorem` | [ContMDiffAt.coordChange](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/contmdiffat-coordchange.md) | 400 | `result-track:c135aaf0afdfe2b61f8eacccb270c877be42cc35636187448ab7a387b25adb3f` |
| 39 | `theorem` | [ContMDiffOn.coordChange](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/contmdiffon-coordchange.md) | 406 | `result-track:cececb8f584725040e2cbdf0cf5be63f4617334370b5fa11b9d3933172ad549c` |
| 40 | `theorem` | [ContMDiff.coordChange](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/contmdiff-coordchange.md) | 411 | `result-track:db36ba76d7c658ff71a9012ed3f7957bffabbb3e58dd49bc2ad13f5d58aa8734` |
| 41 | `theorem` | [SmoothWithinAt.coordChange](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/smoothwithinat-coordchange.md) | 416 | `result-track:abe17076a02b7ca943a31840b05033700000dbaaeee4c3c439ac55d01c8a18a6` |
| 42 | `theorem` | [SmoothAt.coordChange](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/smoothat-coordchange.md) | 422 | `result-track:283224efd8c9932c8e410fa41ef9580295b01dfc18c579ab4307dafcb8b70682` |
| 43 | `theorem` | [SmoothOn.coordChange](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/smoothon-coordchange.md) | 427 | `result-track:3d799ed7a3bda558b69a6103714ce291997872f906b7d3f862050b596846fae1` |
| 44 | `theorem` | [Smooth.coordChange](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/smooth-coordchange.md) | 432 | `result-track:99d0be85f565b078856b00a6941ee23b480d75bdf383103b4583a98cd7debd3e` |
| 45 | `theorem` | [Trivialization.contMDiffOn_symm_trans](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/trivialization-contmdiffon-symm-trans.md) | 439 | `result-track:30ac4b0e17ad65a9c27dcbd719cc7126335858c499655e19c0c18a05890e6e64` |
| 46 | `theorem` | [ContMDiffWithinAt.change_section_trivialization](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/contmdiffwithinat-change-section-trivialization.md) | 456 | `result-track:b5e3829450e6a924f999669d5e55a2680cf760805f146107dd94d6cff9cceb0f` |
| 47 | `theorem` | [Trivialization.contMDiffWithinAt_snd_comp_iff₂](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/trivialization-contmdiffwithinat-snd-comp-iff.md) | 467 | `result-track:042be828acad9ca7e5d3df2ed8db9748d341fb912d8e0fc68bc15f842003403a` |
| 48 | `instance` | [SmoothFiberwiseLinear.hasGroupoid](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/smoothfiberwiselinear-hasgroupoid.md) | 479 | `declaration-track:617e821b028b10df6ba4780de49a2c13c8f35cf566c86bf80b0d41d8420d71c5` |
| 49 | `instance` | [Bundle.TotalSpace.smoothManifoldWithCorners](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/bundle-totalspace-smoothmanifoldwithcorners.md) | 496 | `declaration-track:ba9523dba53f5cf1229ad02eefcece5284605a35940092f37b56b55c561f9b2f` |
| 50 | `theorem` | [Trivialization.contMDiffWithinAt_iff](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/trivialization-contmdiffwithinat-iff.md) | 518 | `result-track:86b8fedbe7be38f90c9a2889d1d47d2585539460be708d48d1475482cab503b0` |
| 51 | `theorem` | [Trivialization.contMDiffAt_iff](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/trivialization-contmdiffat-iff.md) | 526 | `result-track:d4ecaf52874a9d97743527b33ade8175d35ae497a7cc9b9a891861c1de11b704` |
| 52 | `theorem` | [Trivialization.contMDiffOn_iff](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/trivialization-contmdiffon-iff.md) | 532 | `result-track:bef42d2cd788ef848f9437ef7f17d2692126333f843e197badd01aa9320de2fc` |
| 53 | `theorem` | [Trivialization.contMDiff_iff](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/trivialization-contmdiff-iff.md) | 540 | `result-track:f8e8f84fb25695649fff228c00a3599e502c6f2ac9675ab62cf0923fe680a29b` |
| 54 | `theorem` | [Trivialization.smoothWithinAt_iff](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/trivialization-smoothwithinat-iff.md) | 546 | `result-track:ea899f67b747b7e01d3854f4fb9cb21c358dc10e329447dd8ff61390e30c3475` |
| 55 | `theorem` | [Trivialization.smoothAt_iff](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/trivialization-smoothat-iff.md) | 553 | `result-track:1735e1fd877202a41ef88007592f35e0280904db7a6ccdc941e777836f5c1d34` |
| 56 | `theorem` | [Trivialization.smoothOn_iff](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/trivialization-smoothon-iff.md) | 558 | `result-track:d97e00b35c0c911c2241ecb8f300af9e437fa7d16a542b496b05492806276a67` |
| 57 | `theorem` | [Trivialization.smooth_iff](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/trivialization-smooth-iff.md) | 564 | `result-track:6ca9169df85fbb4ea5a5155c9ba12951fb32fd1b609a7eaa85ff0f986b1ad8ab` |
| 58 | `theorem` | [Trivialization.smoothOn](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/trivialization-smoothon.md) | 569 | `result-track:6ae0e16f0b52c21696c492cfde563cda226a420b3ddcb299c75e9cf17ba7f862` |
| 59 | `theorem` | [Trivialization.smoothOn_symm](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/trivialization-smoothon-symm.md) | 575 | `result-track:9f70c9a2441b050f65d851df4ac5b0e847e65180ae9d5a1962b05259645fa007` |
| 60 | `class` | [IsSmooth](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/issmooth.md) | 591 | `declaration-track:3f789fde169912da3893f45c769b40b1c89ddfd9b33d9c40173fe681b1e50a2a` |
| 61 | `theorem` | [smoothOn_coordChange](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/smoothon-coordchange-source-edition-2.md) | 596 | `result-track:7c0db8bbb08f0f0b04a21634e8c632209c60d9cbfe54930b749a12f36e3f930e` |
| 62 | `instance` | [smoothVectorBundle](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/smoothvectorbundle-source-edition-2.md) | 604 | `declaration-track:8dc93aba1667936ff704c770e51569f1329e892518b80cc5de2dd18fe1a90278` |
| 63 | `instance` | [Bundle.Trivial.smoothVectorBundle](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/bundle-trivial-smoothvectorbundle.md) | 619 | `declaration-track:950172f6081f04ac66d30334059046ea6d315f8c536718f674429c98bae07dea` |
| 64 | `instance` | [Bundle.Prod.smoothVectorBundle](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/bundle-prod-smoothvectorbundle.md) | 644 | `declaration-track:4a34ac3016747f397cb67cfac39e2a494c596fda863046637eeba3680e1ddfd0` |
| 65 | `class` | [IsSmooth](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/issmooth-source-edition-2.md) | 669 | `declaration-track:fd65e7e9519a2c1830fc712892f247ae4400955b40a11717b885ac5e5dbf16f6` |
| 66 | `def` | [smoothCoordChange](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/smoothcoordchange.md) | 683 | `declaration-track:fcf15c57388a5e7ec313d5960501d30b05c14f6950fa3759bc538be9d192fac3` |
| 67 | `theorem` | [smoothOn_smoothCoordChange](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/smoothon-smoothcoordchange.md) | 690 | `result-track:5f284dab027edcb72b1aa50ff3f7de3cb539111db1c672a5c12b4aafd0a37584` |
| 68 | `theorem` | [smoothCoordChange_apply](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/smoothcoordchange-apply.md) | 696 | `result-track:017f29768112a6fd47ef43194b23e7a293bbf4960c7be6f2eb55f1dbeec286a0` |
| 69 | `theorem` | [mk_smoothCoordChange](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/mk-smoothcoordchange.md) | 702 | `result-track:59999a839a0dc490dd272605803bf1e442ce8cee22df932c0aedd6a224d6402a` |
| 70 | `theorem` | [smoothVectorBundle](../../../../DifferentialGeometry/VectorBundleBasicNamespacedSmoothProj.lean/declarations/smoothvectorbundle.md) | 713 | `result-track:797447c15d4f51509fff50ffa32a4086649094420f862ff931c5618f998bef86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5a0e8eeccd58341755259d826dbd4102ba3ebfb7d5e8acbef8385c2ef2cf6447 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/Basic/Variant370c732e6bd4d09a9fc339300187ccfbbdf539ba751218d9bd0a2455ce7fd324.lean","GRWTSK/_verification/specifications/Geometry/DifferentialGeometry/Basic/Variant370c732e6bd4d09a9fc339300187ccfbbdf539ba751218d9bd0a2455ce7fd324.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
