# Verification target: Kernel Radon Nikodym

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15b5289d204c14c22bccd67a5b3a396fc7501f15",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variante8da09304f743f876989370359deca9236c7bc0af19754643e01522c384a9982.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15b5289d204c14c22bccd67a5b3a396fc7501f15`.

Source path: `GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variante8da09304f743f876989370359deca9236c7bc0af19754643e01522c384a9982.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/RadonNikodym/Variante8da09304f743f876989370359deca9236c7bc0af19754643e01522c384a9982.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Disintegration.Density` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.WithDensity` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rnDerivAux](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/rnderivaux.md) | 87 | `declaration-track:60d34ccf21c3ff9be5ec99d2d352632a04c19bbd93614e9314fa2f1a8061b618` |
| 2 | `lemma` | [rnDerivAux_nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/rnderivaux-nonneg.md) | 92 | `result-track:22651a8c26552443c50407e7cb2df928cb214a61e7ca06d692a319a7e1a879a2` |
| 3 | `lemma` | [rnDerivAux_le_one](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/rnderivaux-le-one.md) | 99 | `result-track:60e2b3cff9ce0bfdb7f6a192d94343aef9674a389e4b31bf0a97cda6a0e17f75` |
| 4 | `lemma` | [measurable_rnDerivAux](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/measurable-rnderivaux.md) | 111 | `result-track:d9c81a8ab311633b73b2e6dc98d0d656642a99bd39d4cd3a6bbf7fe2d7537438` |
| 5 | `lemma` | [measurable_rnDerivAux_right](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/measurable-rnderivaux-right.md) | 129 | `result-track:6afec5ee20826d08d18bd95d960a689cf64b42ed6458a5549e9b204f499a8fbe` |
| 6 | `lemma` | [setLIntegral_rnDerivAux](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/setlintegral-rnderivaux.md) | 132 | `result-track:6329821fc064dbf11bf1342a24573c3aabd23a6b12791705f4d7067aa7459edb` |
| 7 | `lemma` | [withDensity_rnDerivAux](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/withdensity-rnderivaux.md) | 149 | `result-track:0d1453421c742c18d5219516fbb728462d5fac8daa54cd756f46cd5a19be971d` |
| 8 | `lemma` | [withDensity_one_sub_rnDerivAux](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/withdensity-one-sub-rnderivaux.md) | 157 | `result-track:67492275b46b78802dbc6d05d4864b5d613528d7e92aa0e0eaedcd154f64d303` |
| 9 | `def` | [mutuallySingularSet](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/mutuallysingularset.md) | 183 | `declaration-track:dba19709b43ed24520d2c3610374531f070f546694f865344cbed7e1345f7b06` |
| 10 | `def` | [mutuallySingularSetSlice](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/mutuallysingularsetslice.md) | 190 | `declaration-track:6e6810bfe8828ebeac2b482821630a2155124da217779b0649079c8358091655` |
| 11 | `lemma` | [mem_mutuallySingularSetSlice](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/mem-mutuallysingularsetslice.md) | 193 | `result-track:48e5ba2f48514f28fc7bb7a2814f0c1eb3b96f5fab5debe2c9a91e67aa23a0ac` |
| 12 | `lemma` | [notMem_mutuallySingularSetSlice](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/notmem-mutuallysingularsetslice.md) | 197 | `result-track:e6caa1e0fa6944e703e0891867cf7ccb64667f8d9fc0348a67f78c80a1fe419e` |
| 13 | `lemma` | [measurableSet_mutuallySingularSet](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/measurableset-mutuallysingularset.md) | 204 | `result-track:bb9263d691592d3f702fe493037517c9d31291dad1b188dfeebb9feb738579ea` |
| 14 | `lemma` | [measurableSet_mutuallySingularSetSlice](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/measurableset-mutuallysingularsetslice.md) | 208 | `result-track:551ac6408ab6aefc394e5c12fc8b665daa5c54a48d43205ecb80967b986bb1bb` |
| 15 | `lemma` | [measure_mutuallySingularSetSlice](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/measure-mutuallysingularsetslice.md) | 212 | `result-track:0d24a52ee73e10cee6ab1062348d4d75c7bbf08c1dd7baa0af7db90a338a50fc` |
| 16 | `lemma` | [rnDeriv_def'](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/rnderiv-def.md) | 233 | `result-track:a5fb87302754c342bcb8ccf7feb4f9153d209510a01087ff5a067b89a066ef25` |
| 17 | `lemma` | [measurable_rnDeriv](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/measurable-rnderiv.md) | 238 | `result-track:b38d91c3627396f7fe5b81193d328f4b49998a2ea6e7e855f9598ad37cb26c39` |
| 18 | `lemma` | [measurable_rnDeriv_right](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/measurable-rnderiv-right.md) | 245 | `result-track:05cb459327ba587736732186a6d8b823a932aa00f0c7098e66e41e323ea20071` |
| 19 | `lemma` | [rnDeriv_eq_top_iff](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/rnderiv-eq-top-iff.md) | 248 | `result-track:10bf24a7211f93400fa1d7e15c04a39131c4657059fe0dc96e7167b17b92d79b` |
| 20 | `lemma` | [rnDeriv_eq_top_iff'](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/rnderiv-eq-top-iff-source-edition-2.md) | 255 | `result-track:4f02ed87fa9c31f9cad4b1419933fd0430358deec74251ec49d56eb67c848965` |
| 21 | `lemma` | [measurable_singularPart_fun](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/measurable-singularpart-fun.md) | 266 | `result-track:1c65a5e1b7734fdf027037a8d890acbbf22a01b721b6b3f61fbe68b8d9484f60` |
| 22 | `lemma` | [measurable_singularPart_fun_right](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/measurable-singularpart-fun-right.md) | 270 | `result-track:3790b4ecdc9a4572b6dff5b5f401284a96f6ba746b5ca4171e47cfd5a6fe8940` |
| 23 | `lemma` | [singularPart_compl_mutuallySingularSetSlice](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/singularpart-compl-mutuallysingularsetslice.md) | 278 | `result-track:63760c2b407429518fb8e0a1db1430d26d9142f119dde2d6fe96c0988e114cf3` |
| 24 | `lemma` | [singularPart_of_subset_compl_mutuallySingularSetSlice](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/singularpart-of-subset-compl-mutuallysingularsetslice.md) | 298 | `result-track:6c25bae5230a665200d1fbfbf813191c558ae4bf689beeab8dd52e76ab2511ef` |
| 25 | `lemma` | [singularPart_of_subset_mutuallySingularSetSlice](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/singularpart-of-subset-mutuallysingularsetslice.md) | 303 | `result-track:8030eed5a9b5cfde1a9342e94bc974acc77412b4d916959191b1b3d03db69398` |
| 26 | `lemma` | [withDensity_rnDeriv_mutuallySingularSetSlice](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/withdensity-rnderiv-mutuallysingularsetslice.md) | 325 | `result-track:e2b4df5464e2b4161155ff4e6051df02448bfcdace574c0cc4b31583aa7ad718` |
| 27 | `lemma` | [withDensity_rnDeriv_of_subset_mutuallySingularSetSlice](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/withdensity-rnderiv-of-subset-mutuallysingularsetslice.md) | 332 | `result-track:18a7df47098bb0672a7b19a1f9b6f96539ad4ed8c9b972d83c2518fad07a44d6` |
| 28 | `lemma` | [withDensity_rnDeriv_of_subset_compl_mutuallySingularSetSlice](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/withdensity-rnderiv-of-subset-compl-mutuallysingularsetslice.md) | 338 | `result-track:9b56e2c1a7f2ea111d072eea36127cbb5f33e9cd3be87123a168c93d8ca301c8` |
| 29 | `lemma` | [mutuallySingular_singularPart](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/mutuallysingular-singularpart.md) | 372 | `result-track:0bf077e2f166b045a13a148d850f0e355763ed59e8d2fba7992ee4a821cf52e6` |
| 30 | `lemma` | [rnDeriv_add_singularPart](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/rnderiv-add-singularpart.md) | 382 | `result-track:917ef2c164296166aac0270fe6860b3f81f37a278558d8e5abfff11f6ac401de` |
| 31 | `lemma` | [singularPart_eq_zero_iff_apply_eq_zero](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/singularpart-eq-zero-iff-apply-eq-zero.md) | 398 | `result-track:b35c75608a4f9b93ee604426b598cf54a81aca09ae19698f04c9cd48f938009f` |
| 32 | `lemma` | [withDensity_rnDeriv_eq_zero_iff_apply_eq_zero](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/withdensity-rnderiv-eq-zero-iff-apply-eq-zero.md) | 406 | `result-track:faeb08d438e76b553d66b4abfa335528d128366c54ab0dd9730735c7660beac6` |
| 33 | `lemma` | [singularPart_eq_zero_iff_absolutelyContinuous](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/singularpart-eq-zero-iff-absolutelycontinuous.md) | 415 | `result-track:4e520d714ce076d31d98696254bd1f8b8ca1a658fe7d49e6875ebf531e6d0ee2` |
| 34 | `lemma` | [withDensity_rnDeriv_eq_zero_iff_mutuallySingular](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/withdensity-rnderiv-eq-zero-iff-mutuallysingular.md) | 426 | `result-track:662912aeef528f2e516d3c505deee423400e9cda0375c515e27c579c50ab65c6` |
| 35 | `lemma` | [singularPart_eq_zero_iff_measure_eq_zero](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/singularpart-eq-zero-iff-measure-eq-zero.md) | 438 | `result-track:b0aafbbb762216aca0b101f555db3bc138974bb658daaa8d87eef93fa8f9396c` |
| 36 | `lemma` | [withDensity_rnDeriv_eq_zero_iff_measure_eq_zero](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/withdensity-rnderiv-eq-zero-iff-measure-eq-zero.md) | 450 | `result-track:4bae7d5b36439da6d25f1312b1560b93d13fde44271acbc43d819d13a0424264` |
| 37 | `lemma` | [measurableSet_absolutelyContinuous](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/measurableset-absolutelycontinuous.md) | 466 | `result-track:38b6c274b70d7ab742db8ee9b00dbf13383ee9dc2cfefabae20552ff7690496f` |
| 38 | `lemma` | [measurableSet_mutuallySingular](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/measurableset-mutuallysingular.md) | 475 | `result-track:bd37e6c15a557c403a3e357e044ff9a108f49ad2e032d4e5fb577007747136a2` |
| 39 | `lemma` | [singularPart_self](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/singularpart-self.md) | 483 | `result-track:0a2758e1830dda03a674d48d18147861d33e5b2b375add8525b7130f1a52e72e` |
| 40 | `lemma` | [eq_rnDeriv_measure](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/eq-rnderiv-measure.md) | 491 | `result-track:7cb4645e5a7591044118bd4fea7f4340f8c5e16b2b2dd8374456cbfd9ba930c2` |
| 41 | `lemma` | [eq_singularPart_measure](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/eq-singularpart-measure.md) | 499 | `result-track:bd12c2fd2046bc4c36f2b4b8c613b03eef4c05201eb23b490432324184b03605` |
| 42 | `lemma` | [rnDeriv_eq_rnDeriv_measure](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/rnderiv-eq-rnderiv-measure.md) | 508 | `result-track:8aa146f8b4cbf0151ce3f95bc70a26a9c630a041dcc33d06c7e0ad7b6ce89bc0` |
| 43 | `lemma` | [singularPart_eq_singularPart_measure](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/singularpart-eq-singularpart-measure.md) | 512 | `result-track:309fb30332e959641afaad509eac511a28b2336aeca71ef62405aa305f4f1a91` |
| 44 | `lemma` | [eq_rnDeriv](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/eq-rnderiv.md) | 516 | `result-track:e53bcaa9c63eb09d797cb3a711b29c2e75553cf44ccaae3d7efa208c9c36ce59` |
| 45 | `lemma` | [eq_singularPart](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/eq-singularpart.md) | 521 | `result-track:150a5f826bf97797cb92a94c54dd0ae261e34c64d821a41f586c0e7f8eae6ba9` |
| 46 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/instance-source-edition-2.md) | 528 | `declaration-track:f836ef7f61de686acd1e71c8ce6397d20506a09b0b2ae1965001c4738b8698c2` |
| 47 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/instance.md) | 536 | `declaration-track:28d6a2062c670f33eadae11fb9290647cb416e30808da8407b26381173969825` |
| 48 | `lemma` | [measurable_singularPart](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/measurable-singularpart.md) | 545 | `result-track:c39d921df60f41e05b74ad2e3982d645fa2e726afc4f765fcac9e351483f47c1` |
| 49 | `lemma` | [rnDeriv_self](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/rnderiv-self.md) | 551 | `result-track:f0ad43556c0304b1fa1240ceca2b721dd190cf84fd204cd615c74000ffa6cb58` |
| 50 | `lemma` | [rnDeriv_singularPart](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/rnderiv-singularpart.md) | 554 | `result-track:b82dd0236ba5b0394d6c2831e237b6bd9163cea4971a12ba521876cb41788579` |
| 51 | `lemma` | [rnDeriv_lt_top](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/rnderiv-lt-top.md) | 560 | `result-track:010f07c84388622be5457427d5a47165170e3ac85a075cede82551d9ed3219e6` |
| 52 | `lemma` | [rnDeriv_ne_top](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/rnderiv-ne-top.md) | 565 | `result-track:117ba22935a4b8ced4034c1758bd8eec8901ddce41d643ab1344993cbaef714e` |
| 53 | `lemma` | [rnDeriv_pos](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/rnderiv-pos.md) | 569 | `result-track:54ce1028a60904a4ac46dd3e91e64346c11fcb20e3d7629177134912d738eb9e` |
| 54 | `lemma` | [rnDeriv_toReal_pos](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/rnderiv-toreal-pos.md) | 574 | `result-track:e30415493d95e4892eaac8923a90b570a898bcee66771237fa2b4cb094830def` |
| 55 | `lemma` | [rnDeriv_add](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/rnderiv-add.md) | 579 | `result-track:cc2a727ff258b22c4ce1cb83995d26ca55f82f7e86877a4155d786eb56c0b94f` |
| 56 | `lemma` | [setLIntegral_rnDeriv_le](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/setlintegral-rnderiv-le.md) | 586 | `result-track:575ce994f77f3d6ea7b9cd48963bb902e4e10bc8966017e15449aeedae0b88a0` |
| 57 | `lemma` | [setLIntegral_rnDeriv](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/setlintegral-rnderiv.md) | 593 | `result-track:1466d375cfedb1005db49572ef97b4c7d4d15372e5af7ceedc8b0085cf5d4e9d` |
| 58 | `lemma` | [lintegral_rnDeriv](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/lintegral-rnderiv.md) | 599 | `result-track:e330eb60ba15b79362d618ccbfbfec84be05fe1fb5e753acaa1014235063a9a0` |
| 59 | `lemma` | [withDensity_rnDeriv_le](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/withdensity-rnderiv-le.md) | 604 | `result-track:e10c0496803a406f2631cea44914c67e550863c9c0c7e1fd8c46b80fff423c1b` |
| 60 | `lemma` | [withDensity_rnDeriv_eq](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/withdensity-rnderiv-eq.md) | 611 | `result-track:590723a1b7a0dcf35b39015118130a73d534e68c0b21a05016787ee070b9e354` |
| 61 | `lemma` | [rnDeriv_withDensity](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/rnderiv-withdensity.md) | 618 | `result-track:b42f6041aa730a04e55d00caf2bd077d6e48d290b8bbcc8da45d4f3da706039a` |
| 62 | `lemma` | [rnDeriv_eq_one_iff_eq](../../../../ProbabilityTheoryAndStochasticProcesses/KernelRadonNikodym.lean/declarations/rnderiv-eq-one-iff-eq.md) | 626 | `result-track:f897ce76384bc7725c6549988547244a3d9b9e06dfb2248e114cb7e8e8664672` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba12c32631faa3749aaaf64ea8b5370d54abb40d38d29b468de3088186664069 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variante8da09304f743f876989370359deca9236c7bc0af19754643e01522c384a9982.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/RadonNikodym/Variante8da09304f743f876989370359deca9236c7bc0af19754643e01522c384a9982.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
