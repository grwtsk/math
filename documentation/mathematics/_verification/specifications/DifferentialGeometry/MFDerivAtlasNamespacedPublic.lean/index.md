# Verification target: MFDeriv Atlas Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d38d4d41db9040c3a7a5f7d2ca252b9eee9cbf0f",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Atlas/Variant2d4f024981cb013c17f1de0273737f3aa04db2453464a10c4681a929b47b826b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/index.md) · [Full source](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d38d4d41db9040c3a7a5f7d2ca252b9eee9cbf0f`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Atlas/Variant2d4f024981cb013c17f1de0273737f3aa04db2453464a10c4681a929b47b826b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Atlas/Variant2d4f024981cb013c17f1de0273737f3aa04db2453464a10c4681a929b47b826b.lean.json)

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
| 1 | `theorem` | [hasMFDerivAt](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/hasmfderivat.md) | 65 | `result-track:701766aa7e5bff92cf6c9380c7217419129f62d8c31e18704a07a31a3bd73875` |
| 2 | `theorem` | [hasMFDerivWithinAt](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/hasmfderivwithinat.md) | 68 | `result-track:4e37c86f9bad1e6af630246a3a2b77921e442e344e08e02f435a4a6636699fc9` |
| 3 | `theorem` | [mdifferentiableWithinAt](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mdifferentiablewithinat.md) | 72 | `result-track:bc0b84f62a951e263b3d8c3213435623c12aec8de6d0d38bddf71dd92c536fac` |
| 4 | `theorem` | [mdifferentiableAt](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mdifferentiableat.md) | 75 | `result-track:f520b1797c154f87dc30602daad88c73bf4be7f65fdec1586d7007b970a0c3d0` |
| 5 | `theorem` | [mdifferentiableOn](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mdifferentiableon.md) | 78 | `result-track:32500d741714f02e2bc3cb4c4175a714117975f1809cb70e0eddf73f6d69b59a` |
| 6 | `theorem` | [mdifferentiable](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mdifferentiable.md) | 81 | `result-track:3a05428de949604769bde1bf1aaf4cbd20c11a48fdfd0e27f6e724639e9e2ef4` |
| 7 | `theorem` | [hasMFDerivWithinAt_symm](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/hasmfderivwithinat-symm.md) | 83 | `result-track:6aa9d5ba016e5979f322673e7b0a39a9880f078ba73a3bbb02c1875fb7e191a4` |
| 8 | `theorem` | [mdifferentiableOn_symm](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mdifferentiableon-symm.md) | 88 | `result-track:165a0748d78d5eca938fca3ba9df40eee40d2868ed3c0c4a93a71e6bc209d15e` |
| 9 | `theorem` | [mdifferentiableWithinAt_symm](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mdifferentiablewithinat-symm.md) | 91 | `result-track:2b969584defe9382316b8d5caa5e4c0aa0088ffdfe0fcb8d24d537856a67bb68` |
| 10 | `theorem` | [mdifferentiableAt_of_mem_maximalAtlas](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mdifferentiableat-of-mem-maximalatlas.md) | 103 | `result-track:22858d4beb6a51cce865123cd0135e5ffc00d6c84eef27eb4f59bd26e468a2fa` |
| 11 | `lemma` | [mdifferentiableAt_symm_of_mem_maximalAtlas](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mdifferentiableat-symm-of-mem-maximalatlas.md) | 107 | `result-track:d047811026b5819c258dedbacef56cd220dded2074facb1d51c25ef7da9fec1f` |
| 12 | `theorem` | [mdifferentiableAt_atlas](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mdifferentiableat-atlas.md) | 114 | `result-track:9ee70be79c41c046996864b3108694ef0f312d383b4d2ff2d5eb78a98cd121fc` |
| 13 | `theorem` | [mdifferentiableOn_atlas](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mdifferentiableon-atlas.md) | 118 | `result-track:f8924f684d9f8ef2a1c3fd50324c9dba9c19758bf064f7e342f4aa859e8cc95f` |
| 14 | `theorem` | [mdifferentiableAt_atlas_symm](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mdifferentiableat-atlas-symm.md) | 121 | `result-track:57fbf3bba1adf5acee9a4fe790483fff4369c957c4c46f8d049b3e4a5abf9056` |
| 15 | `theorem` | [mdifferentiableOn_atlas_symm](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mdifferentiableon-atlas-symm.md) | 125 | `result-track:2a6bd6aa0488ae4aea6d7edc4ba0aee28302f3673f650b9b67ceda642140c006` |
| 16 | `theorem` | [mdifferentiable_of_mem_atlas](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mdifferentiable-of-mem-atlas.md) | 128 | `result-track:816fa102671a47aaee1830f6842b5c0ea34faef20a401f61f0b85a9d50da7036` |
| 17 | `theorem` | [mdifferentiable_chart](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mdifferentiable-chart.md) | 131 | `result-track:44154cce6aa2afea5664e6f203b3ae18b4f08e6dbec35ed6ccd6f57acbdd8593` |
| 18 | `theorem` | [symm](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/symm.md) | 143 | `result-track:385ba74ab6ecf528cc12852246ea8a81e6c48020d4026275aeca22cf5e8d13e0` |
| 19 | `theorem` | [mdifferentiableAt](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mdifferentiableat-source-edition-2.md) | 145 | `result-track:fc2b367441d8b4b678224322c7209e362f1c19dcb4589eb8972a80e3585a1993` |
| 20 | `theorem` | [mdifferentiableAt_symm](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mdifferentiableat-symm.md) | 148 | `result-track:2e98be62ded750f0c4b0461b6391da1482204bdaef8ab35fe9ec5f708b5d2d51` |
| 21 | `theorem` | [symm_comp_deriv](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/symm-comp-deriv.md) | 151 | `result-track:638efc98ad99ff9759628e4a56ddcdd752c14ea6fae660d5e05fe4c54069d5aa` |
| 22 | `theorem` | [comp_symm_deriv](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/comp-symm-deriv.md) | 163 | `result-track:fabbee2a3d204c323e8dd7fded2ebb3eea8a30f487ddbc18ce63325f4ff9b07c` |
| 23 | `def` | [mfderiv](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mfderiv.md) | 170 | `declaration-track:edeab48cd51edb36ae42e2b999d4778cbfb2d380732be35c0726f743d2d584cb` |
| 24 | `theorem` | [mfderiv_bijective](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mfderiv-bijective.md) | 188 | `result-track:2b1d4c9f070e2beddadc90717f01f46f6ce4a0dddcfd738d415c7dd1dbeafc0a` |
| 25 | `theorem` | [mfderiv_injective](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mfderiv-injective.md) | 191 | `result-track:70248746359717be65f0c0cccb57c3d80216b29fd8b9df2b7f47eda74aa517a6` |
| 26 | `theorem` | [mfderiv_surjective](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mfderiv-surjective.md) | 194 | `result-track:0d8ba38a387f91d73aaff134b4b0ebf3fc15fac975c7a1170276e8b039e3f8da` |
| 27 | `theorem` | [ker_mfderiv_eq_bot](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/ker-mfderiv-eq-bot.md) | 197 | `result-track:29c3f67e61f921b8bae6c716d48d4a36fa9389cdcfd7ad720f5433dd1cd2325e` |
| 28 | `theorem` | [range_mfderiv_eq_top](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/range-mfderiv-eq-top.md) | 200 | `result-track:5971857f161f33fb92fea8f25fed4740253b7e72fc6615fabf1fdd69a7911fe3` |
| 29 | `theorem` | [range_mfderiv_eq_univ](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/range-mfderiv-eq-univ.md) | 203 | `result-track:82feb68279235a73f2fddf0c2807112435b88e8dd25a79bc5d0ad33ee8780f50` |
| 30 | `theorem` | [trans](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/trans.md) | 206 | `result-track:e4291554ba887c55d985d5770863ae8fb10d6fd78422ae419b5cab6afa79e140` |
| 31 | `theorem` | [OpenPartialHomeomorph.mdifferentiableAt_extend](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/openpartialhomeomorph-mdifferentiableat-extend.md) | 228 | `result-track:118b86c3c76ecdb08640156ac102f63f2349e70ff26fff4a5a89e32597324332` |
| 32 | `theorem` | [OpenPartialHomeomorph.mdifferentiableOn_extend](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/openpartialhomeomorph-mdifferentiableon-extend.md) | 233 | `result-track:d3b7c308f8eaaaca082e8f8ca5016d4092724ff48969191a44ff7eb21af36ed8` |
| 33 | `theorem` | [mdifferentiableWithinAt_extend_symm](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mdifferentiablewithinat-extend-symm.md) | 239 | `result-track:b386f7c0251e88f222750b3a30b9733b4c7ff25c79ec0a1569c9b4aa8052a89f` |
| 34 | `theorem` | [mdifferentiableOn_extend_symm](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mdifferentiableon-extend-symm.md) | 247 | `result-track:b4da55fbaf01ec2fcf7fa28b708c6cc13a1bd2ee76a6b8e932c79fe94baf1760` |
| 35 | `lemma` | [mfderiv_extend_comp_mfderivWithin_extend_symm](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mfderiv-extend-comp-mfderivwithin-extend-symm.md) | 255 | `result-track:7dcc7b20f03a8395e393a43e508e95cc9c2ffc651b0ef6c2b65fd0f00b4b6c6d` |
| 36 | `lemma` | [mfderiv_extend_comp_mfderivWithin_extend_symm'](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mfderiv-extend-comp-mfderivwithin-extend-symm-source-edition-2.md) | 277 | `result-track:f53ad518b24d876074beadf1388351dca2a675d225db311f3c0d55efeaedbb5c` |
| 37 | `lemma` | [mfderivWithin_extend_symm_comp_mfderiv_extend](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mfderivwithin-extend-symm-comp-mfderiv-extend.md) | 287 | `result-track:a986582e239b8b545f2a57fdcaa3896988bfab4387c2d6abecc778d7d01ee363` |
| 38 | `lemma` | [mfderivWithin_extend_symm_comp_mfderiv_extend'](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mfderivwithin-extend-symm-comp-mfderiv-extend-source-edition-2.md) | 316 | `result-track:d40da9ae55b734c6db3245ce8de08bb1497e4544c7ba3f3f69ed91f6c6751a60` |
| 39 | `lemma` | [isInvertible_mfderivWithin_extend_symm](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/isinvertible-mfderivwithin-extend-symm.md) | 324 | `result-track:d1e9ca15abb491f73eed06b97d34c540bdab793be5b3c10c16560e9c99a5315f` |
| 40 | `lemma` | [isInvertible_mfderiv_extend](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/isinvertible-mfderiv-extend.md) | 331 | `result-track:4d631588333545fe0ad454ee2320eeee1d594ebc49f2ede3c64f0d4f262d0908` |
| 41 | `theorem` | [hasMFDerivAt_extChartAt](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/hasmfderivat-extchartat.md) | 345 | `result-track:09cc8942bbb78b992c67ed4997b1550c353cf899e1e340f58164adc3cf021cd8` |
| 42 | `theorem` | [hasMFDerivWithinAt_extChartAt](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/hasmfderivwithinat-extchartat.md) | 349 | `result-track:e51243441e2d8dfa2c2501f52faf5772a9052b939006bcdaf5fb80c7addbd403` |
| 43 | `theorem` | [mdifferentiableAt_extChartAt](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mdifferentiableat-extchartat.md) | 353 | `result-track:5b733807d387d4cdd82d5ed17283f948576b4cf5011ed67bc00037104b7dd67f` |
| 44 | `theorem` | [mdifferentiableOn_extChartAt](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mdifferentiableon-extchartat.md) | 357 | `result-track:b3c7374f1a789cb210d2668537f69a8bb3bc4731df17233c28ccb0c8db281b48` |
| 45 | `theorem` | [mdifferentiableWithinAt_extChartAt_symm](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mdifferentiablewithinat-extchartat-symm.md) | 360 | `result-track:bf1c5756cb83a3558845220912447b5581832cee490cd4f5da5e3c1541696175` |
| 46 | `theorem` | [mdifferentiableOn_extChartAt_symm](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mdifferentiableon-extchartat-symm.md) | 364 | `result-track:21d14c29e841d865633bf10483f017f5820dba7b19f1f1ca3af1bcd9ecd3809e` |
| 47 | `lemma` | [mfderiv_extChartAt_comp_mfderivWithin_extChartAt_symm](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mfderiv-extchartat-comp-mfderivwithin-extchartat-symm.md) | 371 | `result-track:4d1b00675f891e8afc1ccfe11b4bcb17d550847ee0d3d108ea82f8e4c3110d57` |
| 48 | `lemma` | [mfderiv_extChartAt_comp_mfderivWithin_extChartAt_symm'](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mfderiv-extchartat-comp-mfderivwithin-extchartat-symm-source-edition-2.md) | 380 | `result-track:51b4bc14882458317527d8d333204f097a0bb5fdb7feb3be048c5fababe4f545` |
| 49 | `lemma` | [mfderivWithin_extChartAt_symm_comp_mfderiv_extChartAt](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mfderivwithin-extchartat-symm-comp-mfderiv-extchartat.md) | 389 | `result-track:2c981a082559f4024ae5ffc6468fd95cc005a1b22bb41d5905f0fb287263c244` |
| 50 | `lemma` | [mfderivWithin_extChartAt_symm_comp_mfderiv_extChartAt'](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mfderivwithin-extchartat-symm-comp-mfderiv-extchartat-source-edition-2.md) | 399 | `result-track:5d7085ffeb94b7d6ccd453e457cb7f7adcef22fd90b1712393111fa61e6dc217` |
| 51 | `lemma` | [isInvertible_mfderivWithin_extChartAt_symm](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/isinvertible-mfderivwithin-extchartat-symm.md) | 407 | `result-track:567fd821ef803624bade40190da4f7d4f95a01b6b258048e8bed46c5e75917d9` |
| 52 | `lemma` | [isInvertible_mfderiv_extChartAt](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/isinvertible-mfderiv-extchartat.md) | 411 | `result-track:e1b07cebf782b97d181ec54e44a87cc55d52a68865924fc18c28ffcd047e6554` |
| 53 | `theorem` | [TangentBundle.continuousLinearMapAt_trivializationAt](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/tangentbundle-continuouslinearmapat-trivializationat.md) | 419 | `result-track:a50d2ca1c7923909279c90a71ebde6eb7aa0688b00c06272ccbfc0d830e3dba0` |
| 54 | `theorem` | [TangentBundle.symmL_trivializationAt](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/tangentbundle-symml-trivializationat.md) | 433 | `result-track:5edb6e45c377050e4729a143391ba128839569c016945d04006674959aeadf7a` |
| 55 | `lemma` | [fderivWithin_extChartAt_comp_extChartAt_symm_range](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/fderivwithin-extchartat-comp-extchartat-symm-range.md) | 445 | `result-track:04ecbc01826a44d30bba8f1fe8fa4474f086f0ab527e071381e8fe1b8e77bf7d` |
| 56 | `lemma` | [mfderiv_extChartAt_self](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mfderiv-extchartat-self.md) | 456 | `result-track:e22fe3df7e11f66331a3e1ee206873e77ffd359188c13f7f7b534a6a6b0080b2` |
| 57 | `lemma` | [mfderivWithin_range_extChartAt_symm](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mfderivwithin-range-extchartat-symm.md) | 467 | `result-track:bf8b011431fa65fbbcb7c268f1cc184f4bf516206454c0a1a32cdf5b246a83fb` |
| 58 | `lemma` | [mfderivWithin_extChartAt_symm_inverse_apply](../../../../DifferentialGeometry/MFDerivAtlasNamespacedPublic.lean/declarations/mfderivwithin-extchartat-symm-inverse-apply.md) | 477 | `result-track:024bb4efa1f153d08376fe97837d883259a95f63e919fe260d1e5fc268203586` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2a4ee2a9be60294b6832096068e2b275706c8167d27c916f0138f30f2bd4b1ca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/Atlas/Variant2d4f024981cb013c17f1de0273737f3aa04db2453464a10c4681a929b47b826b.lean","GRWTSK/_verification/specifications/Geometry/DifferentialGeometry/Atlas/Variant2d4f024981cb013c17f1de0273737f3aa04db2453464a10c4681a929b47b826b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
