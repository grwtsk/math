# Verification target: Disintegration Density Density Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a49ff4eda35f74082be3ce99933db8f3ab08f5c",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Density/Variantb46e3dedb4a2e65709d6a9e1ce0ff273dd1919f7720a61905c28c9876d7a3949.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a49ff4eda35f74082be3ce99933db8f3ab08f5c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Density/Variantb46e3dedb4a2e65709d6a9e1ce0ff273dd1919f7720a61905c28c9876d7a3949.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Density/Variantb46e3dedb4a2e65709d6a9e1ce0ff273dd1919f7720a61905c28c9876d7a3949.lean.json)

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
| 1 | `def` | [densityProcess](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/densityprocess.md) | 105 | `declaration-track:6415de089b7fd8e63602f32a231a20454e834064e6b0205810fe7ae77d42e3d5` |
| 2 | `lemma` | [densityProcess_def](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/densityprocess-def.md) | 109 | `result-track:a4b2c2cec8e45e7d3850cbc7a809f987333a314f3c27242b06f5dec047571b19` |
| 3 | `lemma` | [measurable_densityProcess_countableFiltration_aux](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/measurable-densityprocess-countablefiltration-aux.md) | 114 | `result-track:ab4763e0cd903aa5b53f917f8e28638b58fe41a09eeba8e15d7d1743b25ea3c2` |
| 4 | `lemma` | [measurable_densityProcess_aux](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/measurable-densityprocess-aux.md) | 134 | `result-track:a126a322d3161e9ee9022bd708ed942d776b4a6e98ef22bc9ca6798f5f677766` |
| 5 | `lemma` | [measurable_densityProcess](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/measurable-densityprocess.md) | 141 | `result-track:b461ce168150157c0080a3baae3f3ab67c27e5c85efb78d48837e87506467990` |
| 6 | `lemma` | [measurable_densityProcess_left](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/measurable-densityprocess-left.md) | 147 | `result-track:388e1a9f803fe9b1090414579f84dd6dd5b0daa932b776021430dcbf7ff3c15c` |
| 7 | `lemma` | [measurable_densityProcess_right](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/measurable-densityprocess-right.md) | 152 | `result-track:35a7f1380a07e872187ae51360e335fd4e4412bcd63eef92c224969f2d1d3ffe` |
| 8 | `lemma` | [measurable_countableFiltration_densityProcess](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/measurable-countablefiltration-densityprocess.md) | 157 | `result-track:b7c13cac10e10729cbdfcd162f565a60883bf0ed0632ebbc6a068001737c006e` |
| 9 | `lemma` | [stronglyMeasurable_countableFiltration_densityProcess](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/stronglymeasurable-countablefiltration-densityprocess.md) | 164 | `result-track:1016619983bac8ca36c445c1eb03b14f96acdc873d1909d10f70ac3671172415` |
| 10 | `lemma` | [stronglyAdapted_densityProcess](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/stronglyadapted-densityprocess.md) | 169 | `result-track:9e277c232856422f0410922c9c3b1ab11f8706f34ed8c5226df491f32aebadce` |
| 11 | `lemma` | [densityProcess_nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/densityprocess-nonneg.md) | 174 | `result-track:3be6e84a365280c2d7e24ad5dcc6a986bbebd5dd1e35800c714b8a4c46722b67` |
| 12 | `lemma` | [meas_countablePartitionSet_le_of_fst_le](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/meas-countablepartitionset-le-of-fst-le.md) | 179 | `result-track:413b5507275ab0b552377049bd52fbe4b8d849ae2bf4b28db16c154d4e99cec8` |
| 13 | `lemma` | [densityProcess_le_one](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/densityprocess-le-one.md) | 190 | `result-track:e8899f31f500f36fbf9187355450b145c120278949057ba299e3796d865f048b` |
| 14 | `lemma` | [eLpNorm_densityProcess_le](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/elpnorm-densityprocess-le.md) | 196 | `result-track:61c43da2acf9ec298a62d3940bd254f6292bcba5ab505a850f7996a0e99a5a4a` |
| 15 | `lemma` | [integrable_densityProcess](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/integrable-densityprocess.md) | 206 | `result-track:80d568bfbd5e40af770e074b5b21edd349f8e3242b485cc44798ed32f019eae5` |
| 16 | `lemma` | [setIntegral_densityProcess_of_mem](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/setintegral-densityprocess-of-mem.md) | 212 | `result-track:9d6e13163134449cb3dc6943bb0bd6df40fd26e04b101fa199e5003c0af1d9cf` |
| 17 | `lemma` | [setIntegral_densityProcess](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/setintegral-densityprocess.md) | 253 | `result-track:c7fcc02d59a816c698e5b941e89fa159a82a957e594113e541b400c5be99f399` |
| 18 | `lemma` | [integral_densityProcess](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/integral-densityprocess.md) | 278 | `result-track:da8ea500cc9f8f01706dc9320fef4fd7fa53d9d65798b80d45969030b0b5e3d4` |
| 19 | `lemma` | [setIntegral_densityProcess_of_le](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/setintegral-densityprocess-of-le.md) | 283 | `result-track:1421a59104b655a685f180a0ef4da51483c9ac1b6e8c13381ccca23fce7f3353` |
| 20 | `lemma` | [condExp_densityProcess](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/condexp-densityprocess.md) | 289 | `result-track:94903a44753218c68ee98da02b2b35feeec0d26a9e7ceaa5b1d2483f1bfebf73` |
| 21 | `lemma` | [martingale_densityProcess](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/martingale-densityprocess.md) | 302 | `result-track:059b5470ee06b01ec0229c89ef510ebfffdfba82b357424d1d377fbf506c140e` |
| 22 | `lemma` | [densityProcess_mono_set](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/densityprocess-mono-set.md) | 307 | `result-track:c627cf6fd4b2435dc54a58458d00ed45ef69c1f5a5f069539b6f24b2f7b2c605` |
| 23 | `lemma` | [densityProcess_mono_kernel_left](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/densityprocess-mono-kernel-left.md) | 317 | `result-track:4be12affcf4ad054ffca0f9da72b93a7c3acd758c89a524e0afe690c43330925` |
| 24 | `lemma` | [densityProcess_antitone_kernel_right](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/densityprocess-antitone-kernel-right.md) | 331 | `result-track:df31f541bed8297551f689e20ff0e91e5405f81c776133450b4ca4592662149b` |
| 25 | `lemma` | [densityProcess_empty](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/densityprocess-empty.md) | 345 | `result-track:c1318c1c372138e7f0505606268208364510946a6d19ca2e19598f04354d6b8c` |
| 26 | `lemma` | [tendsto_densityProcess_atTop_empty_of_antitone](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/tendsto-densityprocess-attop-empty-of-antitone.md) | 349 | `result-track:548623daa8b3cef2e4af85081874abc258226add2520cead59a7f120a8a3aab7` |
| 27 | `lemma` | [tendsto_densityProcess_atTop_of_antitone](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/tendsto-densityprocess-attop-of-antitone.md) | 371 | `result-track:5e0544545d8b128a887ec49c7661f5ef3d1f808be7225c978d205ef78b6dcfda` |
| 28 | `lemma` | [tendsto_densityProcess_limitProcess](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/tendsto-densityprocess-limitprocess.md) | 379 | `result-track:a41b8b1bad52be75d0aa667ac7c8d4570ca540903e09e2d67663eea7658ffb3c` |
| 29 | `lemma` | [memL1_limitProcess_densityProcess](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/meml1-limitprocess-densityprocess.md) | 390 | `result-track:6ceda299f9d1d7f3724bc5648a845fbdd5a105f750bff966edb851d08559927e` |
| 30 | `lemma` | [tendsto_eLpNorm_one_densityProcess_limitProcess](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/tendsto-elpnorm-one-densityprocess-limitprocess.md) | 400 | `result-track:b3b14ccbc6520d653c2acc732b88a1776fdb6b5c06f77673af1e32bda6b8c5a6` |
| 31 | `lemma` | [tendsto_eLpNorm_one_restrict_densityProcess_limitProcess](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/tendsto-elpnorm-one-restrict-densityprocess-limitprocess.md) | 417 | `result-track:ec8ff0ef5557a667fdcb58380127cdc114f7d2af210176d2db8d3bd56a826007` |
| 32 | `def` | [density](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/density.md) | 434 | `declaration-track:bb2feb3231c0ff27c3aec88774ee5b60ec4c2be78ccba5c2882770d63461c158` |
| 33 | `lemma` | [density_ae_eq_limitProcess](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/density-ae-eq-limitprocess.md) | 437 | `result-track:acfc0008bcfd9cdd8be58bfd0feb82423e618fe8cf8fc9b5d96fb0032d65ad8a` |
| 34 | `lemma` | [tendsto_m_density](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/tendsto-m-density.md) | 444 | `result-track:ea286c982e8a6c2eb75343f382781f645d9e9b24fca92142455c7c4f8522bf90` |
| 35 | `lemma` | [measurable_density](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/measurable-density.md) | 451 | `result-track:5d7842bf54ad55df0262d24a68f8f5acdea246606bbb1071525c09ae5ec91e34` |
| 36 | `lemma` | [measurable_density_left](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/measurable-density-left.md) | 456 | `result-track:ab716aac7d251f6a73ac08df3b21942a509118cb8270185e9aec1665f17277c0` |
| 37 | `lemma` | [measurable_density_right](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/measurable-density-right.md) | 462 | `result-track:ae1504cf655a9b5c52e74162ab2ee5e442657405af93eb19a1e46002c51fd3a1` |
| 38 | `lemma` | [density_mono_set](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/density-mono-set.md) | 468 | `result-track:d69825546a8e6debed25775002912e1e7bd43f6459517eccd90db90bffce7317` |
| 39 | `lemma` | [density_nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/density-nonneg.md) | 475 | `result-track:06c99902ce019c057f0aea54cf299e0e26bffd04139afa1b91c1d797c65d10dc` |
| 40 | `lemma` | [density_le_one](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/density-le-one.md) | 481 | `result-track:4d511c1b54257bc330f35c33018854147b2e88d9ae35abc0a3482345410fdf02` |
| 41 | `lemma` | [eLpNorm_density_le](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/elpnorm-density-le.md) | 489 | `result-track:6f61ab98d270fa6868953674185ee6be490ea514f10b9ae0afa4888f04af18ed` |
| 42 | `lemma` | [integrable_density](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/integrable-density.md) | 498 | `result-track:23ac8fb1eff35d2ef3d48729cd95e4c3460981c896adc558e607730c43cb826e` |
| 43 | `lemma` | [tendsto_setIntegral_densityProcess](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/tendsto-setintegral-densityprocess.md) | 505 | `result-track:e9f5b32fecc9286471106804f171b33f63211012c3af6c24c4955884a1dbf290` |
| 44 | `lemma` | [setIntegral_density_of_measurableSet](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/setintegral-density-of-measurableset.md) | 517 | `result-track:4b2df336298ee9a7d1add24e0979c009febde40c061083c52c5f401f76c23edb` |
| 45 | `lemma` | [integral_density](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/integral-density.md) | 535 | `result-track:8b5efbb8483767691e870776ef7f5890552d4b2381bb117d97ee2c05b3c6150d` |
| 46 | `lemma` | [setIntegral_density](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/setintegral-density.md) | 540 | `result-track:5f4d39288a86915ef8164c41787a4dac098668d3009de6f901d42ea0155de217` |
| 47 | `lemma` | [setLIntegral_density](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/setlintegral-density.md) | 579 | `result-track:1baa0a2971046b93fecbbfb97f1baf7376d69a40c68493230214b0965c7b9c62` |
| 48 | `lemma` | [lintegral_density](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/lintegral-density.md) | 588 | `result-track:e6fe3f22e274b41d5c6af12a6f422dfa54aad02dc065f6cfbd518c29da738969` |
| 49 | `lemma` | [tendsto_integral_density_of_monotone](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/tendsto-integral-density-of-monotone.md) | 596 | `result-track:16ed66f11ff62b96405a0a8dc605bd4bbdcdc4fd4be6cd72d002d550a4dda525` |
| 50 | `lemma` | [tendsto_integral_density_of_antitone](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/tendsto-integral-density-of-antitone.md) | 613 | `result-track:4b49a43880dd6fac644cd29201694c24acacf142ddeaec034a2692be57aaeb89` |
| 51 | `lemma` | [tendsto_density_atTop_ae_of_antitone](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/tendsto-density-attop-ae-of-antitone.md) | 629 | `result-track:b107abd8703a70f6e409a816dace7950d7a5c99676cb325b1015fe18d07749ad` |
| 52 | `lemma` | [densityProcess_fst_univ](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/densityprocess-fst-univ.md) | 644 | `result-track:20559fc651ff25daba6eddf7a84baad3846e5dc717f22440fa9cb9c36f33ccf0` |
| 53 | `lemma` | [densityProcess_fst_univ_ae](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/densityprocess-fst-univ-ae.md) | 662 | `result-track:bb3474bf5b8c9124350139f71b01eb7390103b4db4fd0423b25e3709a2557659` |
| 54 | `lemma` | [tendsto_densityProcess_fst_atTop_univ_of_monotone](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/tendsto-densityprocess-fst-attop-univ-of-monotone.md) | 690 | `result-track:a58b54e999ea91439693eb20fe597cc115c03ff9b5cffdaacaeadaed30864d50` |
| 55 | `lemma` | [tendsto_densityProcess_fst_atTop_ae_of_monotone](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/tendsto-densityprocess-fst-attop-ae-of-monotone.md) | 723 | `result-track:d4015275a206f2c291926e0577c36ad3dc7f2054fa29c8cb7f689e0b6ce60119` |
| 56 | `lemma` | [density_fst_univ](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/density-fst-univ.md) | 730 | `result-track:ea57335a8c54aa844c602deacc5d907344ecf06f16ce8e51581690c34c9885f5` |
| 57 | `lemma` | [tendsto_density_fst_atTop_ae_of_monotone](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityNamespacedPublic.lean/declarations/tendsto-density-fst-attop-ae-of-monotone.md) | 737 | `result-track:7d9a7dc4560072c93a4cc03c798c8dac8dbc33c325dc88b197e897fd068262ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5d157a6adb851f1a340a509f5bb090d5bf0d8e6400a5262473ae4d836ae19262 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Density/Variantb46e3dedb4a2e65709d6a9e1ce0ff273dd1919f7720a61905c28c9876d7a3949.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Density/Variantb46e3dedb4a2e65709d6a9e1ce0ff273dd1919f7720a61905c28c9876d7a3949.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
