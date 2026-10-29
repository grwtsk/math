# Verification target: Source Reflection Duality Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91f90151cb778ac9ad0b9b942fb91990f85338ff",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd54be2fb8f29ec41e3a59629041c0a16ed7d85d5b8cbdcdc1c91b07cdbb22847.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/index.md) · [Full source](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91f90151cb778ac9ad0b9b942fb91990f85338ff`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd54be2fb8f29ec41e3a59629041c0a16ed7d85d5b8cbdcdc1c91b07cdbb22847.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd54be2fb8f29ec41e3a59629041c0a16ed7d85d5b8cbdcdc1c91b07cdbb22847.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.LpSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Arithmetic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.Monotonicity` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ComplexL2](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/complexl2.md) | 36 | `declaration-track:7ade72865b25fac4370728eadf447bb2fc05c97b985d1d7ae2b3633f1bc6f3cd` |
| 2 | `def` | [signSymbol](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/signsymbol.md) | 39 | `declaration-track:68fda59dac6880dbe412688e7327d57fd25534d64b208e1a3e0b87a38e8d907e` |
| 3 | `theorem` | [signSymbol_measurable](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/signsymbol-measurable.md) | 41 | `result-track:99b5f5685e108cdfec0f7b0a6b9213f5ba8dd18e84492c9b22fd23ee19089d2f` |
| 4 | `theorem` | [signSymbol_norm](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/signsymbol-norm.md) | 44 | `result-track:8010598076932d7e8c6056593217659d3ccca54160bb22c15f07b866ae2aba66` |
| 5 | `theorem` | [multiply_memLp](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/multiply-memlp.md) | 48 | `result-track:7571ce577b680e16f0a15a4fc0f7010e094d530ce5982b09cc3194ac5f4b264c` |
| 6 | `def` | [multiply](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/multiply.md) | 54 | `declaration-track:a1be1030b017eabbd5445df6acc6d9d5e42efce9b4aacd48be7f60c2ece9e593` |
| 7 | `theorem` | [multiply_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/multiply-ae.md) | 58 | `result-track:eee6e1690354ef2e4c569527f48a30234db64296a67233004c3ef2b7e9f897f2` |
| 8 | `def` | [multiplyLI](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/multiplyli.md) | 63 | `declaration-track:36485d66755792371ebf0c067515edde7f74393083cb75c78266703955c029e3` |
| 9 | `def` | [signMultiplierLI](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/signmultiplierli.md) | 87 | `declaration-track:4207a6c6ad51803265a0e033c439862af12956b38619000682ade4de16b62cdf` |
| 10 | `theorem` | [signMultiplierLI_coe_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/signmultiplierli-coe-ae.md) | 90 | `result-track:cc7699e110876be73f03effea6ec366317a1a280e6c9c99ff347a3097136411b` |
| 11 | `theorem` | [signMultiplier_involutive](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/signmultiplier-involutive.md) | 94 | `result-track:e0512aecce063359d5c3acc2aa59d1b5c661d4728c4ca81cf5cc0fe6fc0ef739` |
| 12 | `def` | [signMultiplier](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/signmultiplier.md) | 104 | `declaration-track:9db02271d07ab8100cf17bf7cfaa240e3b52f5bd0e5338a7b6439b858f53b43f` |
| 13 | `theorem` | [signMultiplier_coe_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/signmultiplier-coe-ae.md) | 108 | `result-track:b0624dccd2b163a0e6a1c8f20da55eb4636eeca15a750c375bb3dcc1d9c56d28` |
| 14 | `def` | [reflectionLI](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/reflectionli.md) | 113 | `declaration-track:2a03663f0e9ca08a37377331472037a9c8d2897ffd576b329ec2c85952089317` |
| 15 | `theorem` | [reflectionLI_coe_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/reflectionli-coe-ae.md) | 117 | `result-track:71867f837df656504dd87bd28b980a21c395770942bb5718537affa26c866aef` |
| 16 | `theorem` | [reflectionLI_involutive](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/reflectionli-involutive.md) | 121 | `result-track:0d95fa530352a225fb732b8aecd702a6509462de378640abf64144b793ca263e` |
| 17 | `def` | [reflection](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/reflection.md) | 129 | `declaration-track:6d0a9ac3ca7865068ac026e1fdc1e63977dbefe97c984f15a5858d90410f9c70` |
| 18 | `theorem` | [reflection_coe_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/reflection-coe-ae.md) | 133 | `result-track:552c044f3530133647ca782ff9c5b1ad173b29e3ade5520856063dd76fd11b79` |
| 19 | `theorem` | [reflection_toLp](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/reflection-tolp.md) | 137 | `result-track:8c0b2a98d4467b0a0a8e26c1fe0a967026f1180a0167b67e0a39ad94d41bb273` |
| 20 | `theorem` | [fourier_reflection](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/fourier-reflection.md) | 154 | `result-track:fe0f2a2bec11e7ce03b8510d6f4fbb82e83e83865db3c4cc315b3d4b390be6ee` |
| 21 | `theorem` | [signSymbol_neg](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/signsymbol-neg.md) | 172 | `result-track:d6e8a874ecd30ceb321d1c4f38bed14c59230a47b76391a2fd7d7c6326483443` |
| 22 | `theorem` | [reflection_signMultiplier](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/reflection-signmultiplier.md) | 180 | `result-track:b8db3612c1207e9df2c3f5ec161618da0901a16f29f4defed70f75b0789d0f4c` |
| 23 | `def` | [signFourierDuality](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/signfourierduality.md) | 195 | `declaration-track:752f78918fabc0a8bf702ebd10aafa543f4eb8b241cb2e47d739bdbcce3dbcd0` |
| 24 | `theorem` | [duality_fourier](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/duality-fourier.md) | 198 | `result-track:a24479c99e4f49fff2e41950e662f601d5194eeb745403da0400bc29e7bdd7d1` |
| 25 | `theorem` | [duality_fourier_coe_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/duality-fourier-coe-ae.md) | 201 | `result-track:c1a3afd8f2d522d065a6b2358f0f688d666511067bd4634f70effb4f680a318e` |
| 26 | `theorem` | [duality_involutive](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/duality-involutive.md) | 207 | `result-track:50f111a6c7059e4edb4af9406226e1b6403889d17aa38a8e002eb890632c4bbc` |
| 27 | `theorem` | [reflection_duality_anticommute](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/reflection-duality-anticommute.md) | 214 | `result-track:dcef80359a36d9f673550fb2ec5ebd09d70ce8091ff2fbfa03cb12c4622ff0fb` |
| 28 | `def` | [translationLI](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/translationli.md) | 222 | `declaration-track:16fefb7e08bcfd82ad9fa5951833a77420afc83efc42fdddf1798b21f4337dd4` |
| 29 | `theorem` | [translationLI_coe_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/translationli-coe-ae.md) | 225 | `result-track:b4ca966edc369f5300c4230e7a05f66779e1d68eb4f0d4d3835f7f3cc5a92617` |
| 30 | `theorem` | [translationLI_inverse](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/translationli-inverse.md) | 229 | `result-track:daa11825c1c340a1c6e931deeaa6e681deed74606d3324084b788806c0f24975` |
| 31 | `def` | [translation](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/translation.md) | 240 | `declaration-track:96f4bec6e493fd939364db45d8987d5f4303041ec330d2a4edad0fb12d5f7838` |
| 32 | `theorem` | [translation_coe_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/translation-coe-ae.md) | 244 | `result-track:88335b2b490bf821cd3ee8e15f3f8e04f2502944df1533c0df6306813b238405` |
| 33 | `def` | [standardSignDuality](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/standardsignduality.md) | 248 | `declaration-track:e90604e1f6d9ce7220f1f5f70a01925014b0cec41a65e3ad3dfdadd471fe16f4` |
| 34 | `def` | [angularSignDuality](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/angularsignduality.md) | 251 | `declaration-track:ac900edebc66d6962bfa1aa9b0dc7db33956a69458643746174b208101042176` |
| 35 | `theorem` | [angular_duality_eq_neg_standard](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/angular-duality-eq-neg-standard.md) | 254 | `result-track:65854186458c69ee08f38e6f6c2cfae7d164f7a5ab6c09769351e494508d7866` |
| 36 | `theorem` | [angular_duality_involutive](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/angular-duality-involutive.md) | 257 | `result-track:fff90911c9099c6a99534c8752881910178d88579bd50a74aeecc6c4d68a56ca` |
| 37 | `theorem` | [angular_reflection_duality_anticommute](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/angular-reflection-duality-anticommute.md) | 262 | `result-track:fa3f920aa7525795fd2b7f1e5e3d5a179eec1fcab4322c6cd953c8d9777e6e89` |
| 38 | `theorem` | [stationary_inner_dual](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/stationary-inner-dual.md) | 267 | `result-track:876632349e46f7436de4fc12f639a8a61f2e3972443d3ab0561c26900d883567` |
| 39 | `theorem` | [angular_stationary_inner_dual](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/angular-stationary-inner-dual.md) | 271 | `result-track:4d63b41018125cc39edf5bbf1d5587148c6e318464f84f1edfe3556d50630d41` |
| 40 | `theorem` | [reflected_pairing_dual](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/reflected-pairing-dual.md) | 276 | `result-track:1fe0862f9f7c4d5451c7ef2aef6fa70d15f2e438b65ba76e33e3a655fc6544d6` |
| 41 | `theorem` | [angular_reflected_pairing_dual](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/angular-reflected-pairing-dual.md) | 281 | `result-track:722bf0f0ee1bea97a9150c1b5dffc7407d31025a2fe35ea1a5b7e536ea6dba45` |
| 42 | `theorem` | [duality_inner_symmetric](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/duality-inner-symmetric.md) | 287 | `result-track:791cd5e075b868fd137089a55bfdb0a07d9d9c931f5e67f709758aede820f733` |
| 43 | `theorem` | [duality_selfAdjoint](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/duality-selfadjoint.md) | 294 | `result-track:f88ae0ad2efd4bbd400ddea034100d72a0f3dfaa7bee71cefb3740f4d5a3308f` |
| 44 | `theorem` | [angular_duality_selfAdjoint](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/angular-duality-selfadjoint.md) | 299 | `result-track:51f49449d354e616abd761a70049e2435c268dea0f99ca74eb0ef562d180d723` |
| 45 | `def` | [translationPhase](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/translationphase.md) | 312 | `declaration-track:8feef2d7d1e81321dec196197bd98cfee5deb89316083a6041d4af58120cda73` |
| 46 | `theorem` | [translationPhase_measurable](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/translationphase-measurable.md) | 314 | `result-track:cccf92d4a134f2a98915665421c8b458104fe3ad08748b10b00c3369aea4746d` |
| 47 | `theorem` | [translationPhase_norm](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/translationphase-norm.md) | 318 | `result-track:940fb9a246aaba0a7cb2ba135b23d436322c86f082945c9c347b6f87d6fbfffc` |
| 48 | `def` | [translationPhaseMultiplier](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/translationphasemultiplier.md) | 321 | `declaration-track:5a144252d53a5dca43856c613a32b15312daae0edf9562d84be3d62fb71470c4` |
| 49 | `theorem` | [translationPhaseMultiplier_coe_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/translationphasemultiplier-coe-ae.md) | 324 | `result-track:a42e9e14875a165f3e40b2e3adc5cba619ef25900857237b4f056990402df30c` |
| 50 | `theorem` | [translation_toLp](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/translation-tolp.md) | 328 | `result-track:f0f35248321e9d2d767cef943eb2f3813b4e858a40c245b25da93eb7502e7a09` |
| 51 | `theorem` | [fourier_translation_function](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/fourier-translation-function.md) | 339 | `result-track:031e5b554a4fd52dd3b01544df2e4fa08d31f470bd57e23d7feabf43f328f775` |
| 52 | `theorem` | [fourier_translation](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/fourier-translation.md) | 349 | `result-track:02376f2f14ae79ea164d166bf7e121590b57bca15083adbe6697f70310862b1f` |
| 53 | `theorem` | [phase_sign_commute](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/phase-sign-commute.md) | 369 | `result-track:c97da77a4c0063bb58dcb676a6e70bf3daa1106af4ab8771a19877d8651e2122` |
| 54 | `theorem` | [translation_duality_commute](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/translation-duality-commute.md) | 381 | `result-track:e7cd5a2559f71a7738a393c230114b95bc002e42ab639cd3de916a03e2bc9965` |
| 55 | `theorem` | [angular_translation_duality_commute](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/angular-translation-duality-commute.md) | 389 | `result-track:ac074af819613425f34f431be6e7328636062b589396f2ebbac0f0c01f7d8977` |
| 56 | `theorem` | [reflection_involutive](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/reflection-involutive.md) | 395 | `result-track:22751a132c5b64053ce5cad15b57bd35f215caed45bb7496a1b69ab850d5a032` |
| 57 | `def` | [stationaryKernel](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/stationarykernel.md) | 399 | `declaration-track:4ab81ad4f8ff5d84ccc3f037226bff57efb5e2a62e49f18cfdf5bc5aff098fa9` |
| 58 | `def` | [reflectedKernel](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/reflectedkernel.md) | 403 | `declaration-track:5b590fbb64c4630b8a98b91687f09153029dbafa99d4c34539d547864e493816` |
| 59 | `theorem` | [stationaryKernel_dual](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/stationarykernel-dual.md) | 406 | `result-track:c2959e5aa3fc9c213fe2031312347cb2cea307265cee9964be4276fca31a7009` |
| 60 | `theorem` | [reflectedKernel_dual](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/reflectedkernel-dual.md) | 412 | `result-track:6b98f9f327f79c408595697753992d48866f32bd0742de3b5eccbec875c5f2aa` |
| 61 | `theorem` | [duality_fourier_norm_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/duality-fourier-norm-ae.md) | 419 | `result-track:a9f2f58ef9b0a64db0f4b5e2d1a7637e7f5181ae4601ca5284e81095ee8919dd` |
| 62 | `theorem` | [angular_duality_fourier_coe_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/angular-duality-fourier-coe-ae.md) | 425 | `result-track:78ec2c700027cfb1e4b697b70b5ea143c05dd3c1619eee69476bc6882054a8ad` |
| 63 | `theorem` | [angular_duality_fourier_norm_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/angular-duality-fourier-norm-ae.md) | 437 | `result-track:5265bcad1d3580c53cb4262b95bda08978d05238dc33e79ece6230bd1bca68ec` |
| 64 | `def` | [sourceAngularFrequency](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/sourceangularfrequency.md) | 444 | `declaration-track:ecd9ea0fa6b4767245f934725f5b6e4066463710b86b74fc5127f0ac90eefc82` |
| 65 | `theorem` | [angular_standard_symbol_to_source_sign](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/angular-standard-symbol-to-source-sign.md) | 446 | `result-track:5e077dc6e6d0124fc48d97c35f0e9a100f227a837e467e9581b8cb3df38ba353` |
| 66 | `theorem` | [angular_even_to_odd](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/angular-even-to-odd.md) | 457 | `result-track:7a0a9417a33af21ad6928a6790b6b2972a080ee1a040117c657ae46f8e42c30f` |
| 67 | `theorem` | [angular_odd_to_even](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/angular-odd-to-even.md) | 461 | `result-track:f9b4f0bb696fa5c526a27dff4248bdc1faa2344ae408b3c6055bf3d8bcbe0af7` |
| 68 | `theorem` | [unit_even_reflected_dual](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/unit-even-reflected-dual.md) | 466 | `result-track:06ad0cbd22a549a69ae37115a25b6faafb360fc60bb5a1c95a72b1bf86721998` |
| 69 | `theorem` | [angular_even_orthogonal](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/angular-even-orthogonal.md) | 475 | `result-track:f3e67c98c6029df15aa389b4964dff8b4d5154389fe00c74a785b155380cbc8d` |
| 70 | `theorem` | [even_extra_duality_reflected_pairing_zero](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/even-extra-duality-reflected-pairing-zero.md) | 484 | `result-track:f79a8b2f5b1f1eae5d0ec83e81d3fa71d0e3ee41020d574bcad5ae06bc9aea4a` |
| 71 | `theorem` | [angular_square_sector_plus](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/angular-square-sector-plus.md) | 490 | `result-track:0f0a1d023bd367f260bdec9b79b097789d266f80e938ce4bcbb9122fa41af758` |
| 72 | `theorem` | [angular_square_sector_minus](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/angular-square-sector-minus.md) | 496 | `result-track:23715e5ab5523abdeee7e3b4fb51dcf90f94544b4c2f0809dddf5362be9de903` |
| 73 | `theorem` | [angular_signed_surplus](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition2.lean/declarations/angular-signed-surplus.md) | 502 | `result-track:1c20c9c1c5a7c7b5c60bc48b4b3768e3380049aa73dae3ba05f8c10f505027b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f2ec701f19187a32dcce3f69ce5473be4ce152cd7adfbfcd3c5d1951b20fcc4d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd54be2fb8f29ec41e3a59629041c0a16ed7d85d5b8cbdcdc1c91b07cdbb22847.lean","GRWTSK/_verification/specifications/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantd54be2fb8f29ec41e3a59629041c0a16ed7d85d5b8cbdcdc1c91b07cdbb22847.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
