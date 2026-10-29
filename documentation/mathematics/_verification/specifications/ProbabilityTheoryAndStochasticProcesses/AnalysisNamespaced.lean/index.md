# Verification target: Analysis Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39514dcafb5d2813e22094f733fbbe1b118f3ea5",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Analysis/Variant231e007a27b65b6a97fdbc0dc48a2096115caa9794d84dfac01fdff6b84d57bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39514dcafb5d2813e22094f733fbbe1b118f3ea5`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Analysis/Variant231e007a27b65b6a97fdbc0dc48a2096115caa9794d84dfac01fdff6b84d57bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Analysis/Variant231e007a27b65b6a97fdbc0dc48a2096115caa9794d84dfac01fdff6b84d57bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.WalshFourier.Noise` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sampleCount](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/samplecount.md) | 16 | `declaration-track:0088c3210447e0002304d3ab60870954f99cc69ee55ac646255aba104986b461` |
| 2 | `def` | [expectationNumerator](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/expectationnumerator.md) | 20 | `declaration-track:da55d23876ca5aab5393d5bca6a05917a8908f0bd97c6f527dd9322c2744c6c9` |
| 3 | `def` | [expectation](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/expectation.md) | 26 | `declaration-track:c3496458ee2c10d51039521891145f9fd87ac1ac6deb809f20daa6ff7cbaf298` |
| 4 | `def` | [momentNumerator](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/momentnumerator.md) | 33 | `declaration-track:321fe13bc1ab2e732dee0815c7b8a21f4ecf6adc8ed16f2a9e6b829310d2c5f8` |
| 5 | `def` | [lpPowerNumerator](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/lppowernumerator.md) | 42 | `declaration-track:2591e91f5d46483dcdc06253a05a259e1d610ad011a9c9ab84ae5f97776dbc1a` |
| 6 | `def` | [secondMomentNumerator](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/secondmomentnumerator.md) | 51 | `declaration-track:08566acf3a2e43c271bfb209e0a9ef20a8b373e90b63a2a36b9a0b49430f096d` |
| 7 | `def` | [centeredValueNumerator](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/centeredvaluenumerator.md) | 61 | `declaration-track:7fc330e613a8138531d4545d7a2652876d5e38cbc592309fa77f7d84b53bed79` |
| 8 | `def` | [centeredSecondMomentNumerator](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/centeredsecondmomentnumerator.md) | 68 | `declaration-track:3334b175b5486d06244706055ea8ca45ccc58ccda93ce6b4f8a900c16ae2a474` |
| 9 | `def` | [covarianceNumerator](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/covariancenumerator.md) | 78 | `declaration-track:a8aeaa9c857db942388142a437e95509724d4bc9fce375cc94ae9a084cf463e0` |
| 10 | `def` | [covariance](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/covariance.md) | 86 | `declaration-track:5dbb7e2b4b54ca163438bb147e166d2ba276dbe3eeba95054d470f5109ec3d00` |
| 11 | `def` | [varianceNumerator](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/variancenumerator.md) | 93 | `declaration-track:10c74671a294d248cc7da7da80d0083449c107314c8544126629d0241e6d8a85` |
| 12 | `def` | [variance](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/variance.md) | 99 | `declaration-track:5fbd37f43453bc84bb555be4139808a83909df481f55463ac5722f29eadd0a66` |
| 13 | `def` | [synthesisNumeratorFromCoordinates](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/synthesisnumeratorfromcoordinates.md) | 106 | `declaration-track:b72c451f8adca90825edc19585f2e90cd4e39344e2618941991260e435810fd1` |
| 14 | `def` | [spectralSynthesisNumerator](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/spectralsynthesisnumerator.md) | 115 | `declaration-track:c79ca55de28f4da980e323c9c531c8c8c7765c3d4f422692a4fc3e41185af382` |
| 15 | `def` | [noiseSynthesisNumerator](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/noisesynthesisnumerator.md) | 124 | `declaration-track:442779ae6a9a8cbe30f1c3d912c313f33e320418ad1ff563b6c79a4a27f2121a` |
| 16 | `def` | [noiseLpPowerNumerator](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/noiselppowernumerator.md) | 139 | `declaration-track:3b29624ee36afebd3c59ed2cecd330d271cdbf40ac0f1cd88da6a3c9ea0f11f5` |
| 17 | `def` | [degreeLayerSpectralMassNumerator](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/degreelayerspectralmassnumerator.md) | 151 | `declaration-track:9a946bafa269eb23eca869284ad7f65107b1b9ce5ccb67cf67574a8fa84add63` |
| 18 | `def` | [lowDegreeSpectralMassNumerator](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/lowdegreespectralmassnumerator.md) | 160 | `declaration-track:c11bd4ec1a7fc87dd45a30bf80ff7146dc6985be366735b64ac478c55a1aadfa` |
| 19 | `def` | [highDegreeSpectralMassNumerator](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/highdegreespectralmassnumerator.md) | 169 | `declaration-track:6c68088df1c7c98726e2c86daeb9fcf9b2d4c0b8aa8143793a844d9a3485dabd` |
| 20 | `def` | [coordinateDifference](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/coordinatedifference.md) | 178 | `declaration-track:799079bc09b22181a6c5acb70b9a55469e768db8887e379bba5cd2d9976d79b1` |
| 21 | `def` | [coordinateDifferenceEnergyNumerator](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/coordinatedifferenceenergynumerator.md) | 185 | `declaration-track:3868b79c5640d00b7c6db300c73b44393d32e655902d3d445eeb67c2082460b5` |
| 22 | `def` | [totalDifferenceEnergyNumerator](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/totaldifferenceenergynumerator.md) | 193 | `declaration-track:5f840373ac5bd219499c9a7e47885d66f09ec41dd2e3a102ebc3ce47cb215872` |
| 23 | `theorem` | [sampleCount_eq_pow](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/samplecount-eq-pow.md) | 201 | `result-track:23e8766ad838e7f1447b319604e865d74d16563f4f3cf9ab98392c51c61fe29c` |
| 24 | `theorem` | [expectation_numerator](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/expectation-numerator.md) | 205 | `result-track:36bfa6c80d94e82a760891c37064e2580cb58844b902cb753654b0079139207f` |
| 25 | `theorem` | [expectation_exponent](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/expectation-exponent.md) | 210 | `result-track:f5f9fb9a95295a57609c4a042670bd677f49385b5d784e4d24ec9d48dd06d915` |
| 26 | `theorem` | [expectation_denominator](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/expectation-denominator.md) | 214 | `result-track:6a7075e005bf56575a65e9d7ff4642de062badbb315ee444c7db06c3ea60ae9f` |
| 27 | `theorem` | [covariance_numerator](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/covariance-numerator.md) | 218 | `result-track:514303d11e10eaba9f8024806181a0875c1edcb479bcd1dda1632218e4513f22` |
| 28 | `theorem` | [covariance_exponent](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/covariance-exponent.md) | 223 | `result-track:7284b4671cb4944997260c84e2a25a2030313a304718d09b0be4ead6f40c487f` |
| 29 | `theorem` | [variance_numerator](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/variance-numerator.md) | 227 | `result-track:74bc278bb8dad9afebdbf00b3b4c115830243d060308d2edeed880823211ff0f` |
| 30 | `theorem` | [variance_exponent](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/variance-exponent.md) | 232 | `result-track:493b6c3deebdb86b48b622abc932d49826fa216c249ba9a10b945adcfe7c1864` |
| 31 | `theorem` | [varianceNumerator_eq_covariance_self](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/variancenumerator-eq-covariance-self.md) | 236 | `result-track:3b7ece16271d29299ebe84e7b489e1c4b5fd103da396411238fe025cab8e99b7` |
| 32 | `theorem` | [character_zeroFrequency](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/character-zerofrequency.md) | 241 | `result-track:c0e87153abe7458e34fcf3f90d7f0a82d96f300e3c205843c0b26b8767cc9170` |
| 33 | `theorem` | [expectationNumerator_eq_projection_zero](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/expectationnumerator-eq-projection-zero.md) | 257 | `result-track:1cd8abe3feddf416a70949c7f15e7e9a65c67ca33d770ced3eb676a0ed9d9474` |
| 34 | `theorem` | [expectation_eq_averageCoordinate](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/expectation-eq-averagecoordinate.md) | 269 | `result-track:4ddda2297ee6d0ee196dbd2bbe85d983a45be4b4c4a168be76092eb50394ba6c` |
| 35 | `theorem` | [secondMomentNumerator_eq_sampleEnergy](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/secondmomentnumerator-eq-sampleenergy.md) | 277 | `result-track:add045b7233f495d72e4903062642b3c61ee139519c8c7575599dad4ed284ff4` |
| 36 | `theorem` | [spectralMass_eq_scaled_secondMoment](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/spectralmass-eq-scaled-secondmoment.md) | 290 | `result-track:64e56d354fc50284c236f74f34ca31d21d8f41003318f791560469e3e37cf872` |
| 37 | `theorem` | [varianceNumerator_eq_spectralMass_sub_zeroFrequency](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/variancenumerator-eq-spectralmass-sub-zerofrequency.md) | 298 | `result-track:35b45e59c7eb93e55e3fd1a9ebff631986cf2c91642bb70785526a1edf1234e6` |
| 38 | `theorem` | [noiseSynthesisNumerator_one](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/noisesynthesisnumerator-one.md) | 312 | `result-track:3bc916ecf71bca9c5cb5e1424bf2b0b20ee1ad07f6385ebb052b1e503b7fbc72` |
| 39 | `theorem` | [degreeLayerSpectralMass_eq_weightedSpectralMass](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/degreelayerspectralmass-eq-weightedspectralmass.md) | 324 | `result-track:4609b1a72bb5ced6598f6d36092ca408b5f56454ef4653dc4a3b0d68ae23c715` |
| 40 | `theorem` | [lowDegreeSpectralMass_eq_weightedSpectralMass](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/lowdegreespectralmass-eq-weightedspectralmass.md) | 332 | `result-track:e3f5414c8b1e473d629de2e1b176b87d55ffbe32cdf799d57baa282f185b5fbf` |
| 41 | `theorem` | [highDegreeSpectralMass_eq_weightedSpectralMass](../../../../ProbabilityTheoryAndStochasticProcesses/AnalysisNamespaced.lean/declarations/highdegreespectralmass-eq-weightedspectralmass.md) | 340 | `result-track:f02754bfd7d0c1e8d3142b021b6eb3f9608dd048da0999f891849389aab2dfec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=780407cb97014f87411dc82fe937c56173af9123035ee7c93c14fadcff246170 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Analysis/Variant231e007a27b65b6a97fdbc0dc48a2096115caa9794d84dfac01fdff6b84d57bf.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Analysis/Variant231e007a27b65b6a97fdbc0dc48a2096115caa9794d84dfac01fdff6b84d57bf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
