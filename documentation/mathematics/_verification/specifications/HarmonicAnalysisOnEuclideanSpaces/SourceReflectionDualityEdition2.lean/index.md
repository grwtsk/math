# Verification target: Source Reflection Duality Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3bf7bfdf81147ae1250fd5b0290962202ea26f10",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantce915583154f62b5f0abcd5c359e8568e69ef3e92a8598850a887f874c485270.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/index.md) · [Full source](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3bf7bfdf81147ae1250fd5b0290962202ea26f10`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantce915583154f62b5f0abcd5c359e8568e69ef3e92a8598850a887f874c485270.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantce915583154f62b5f0abcd5c359e8568e69ef3e92a8598850a887f874c485270.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.LpSpace` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Arithmetic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.Monotonicity` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ComplexL2](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/complexl2.md) | 11 | `declaration-track:65492f66c2abe1d91d29a4b9544db58ef2d6dbbf90630ddbfb823104f98a8c89` |
| 2 | `def` | [signSymbol](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/signsymbol.md) | 14 | `declaration-track:97e09043a2cd8095b5714d37e2da5075318f13351e0b1e1ddb4704e8a810076d` |
| 3 | `theorem` | [signSymbol_measurable](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/signsymbol-measurable.md) | 16 | `result-track:bd2111df11a7377e67b7c20624a18eaf5adb1f2c1e169d7d7b5e26d43d8a70b1` |
| 4 | `theorem` | [signSymbol_norm](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/signsymbol-norm.md) | 19 | `result-track:53f358fb3cd70bb5ae1c81f86382cd1230ea9c88790d1f6d0badc0694c6a5272` |
| 5 | `theorem` | [multiply_memLp](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/multiply-memlp.md) | 23 | `result-track:7746557e7259f8c759885f468d971b2d0052f1cba3a4a62ffc902af33e12d523` |
| 6 | `def` | [multiply](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/multiply.md) | 29 | `declaration-track:1e4112eafca56ca70440fb757d9bcf6c005b1743dcfa096a662cdfec375314ce` |
| 7 | `theorem` | [multiply_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/multiply-ae.md) | 33 | `result-track:40499244ad5fcd31a45609e1311e7dc7fa9cd3b6d09eb5f3ddf46fb75ffc9f3a` |
| 8 | `def` | [multiplyLI](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/multiplyli.md) | 38 | `declaration-track:37c916dc75c9927c44efb32f6f43b722bffd31507f4e8a4ea04b86b7f264dafb` |
| 9 | `def` | [signMultiplierLI](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/signmultiplierli.md) | 62 | `declaration-track:02b207a7138dc0a6bc728e1db117e52d0bf009c7cfc1c3392b7afeb5e8ae9b4f` |
| 10 | `theorem` | [signMultiplierLI_coe_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/signmultiplierli-coe-ae.md) | 65 | `result-track:7305e51e5c71d28e283b783b5ce5655cb04816e0fa50f78801384ebb8b9b3891` |
| 11 | `theorem` | [signMultiplier_involutive](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/signmultiplier-involutive.md) | 69 | `result-track:c23fd9017ed4969549ef5a6e92cfac39c9eab7ce7ddae1c1657dc1eedec8fe67` |
| 12 | `def` | [signMultiplier](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/signmultiplier.md) | 78 | `declaration-track:5ba7d5fcbe0c430befca0c855613afe879a3aea7456bee0a7d90eaaff6e8faef` |
| 13 | `theorem` | [signMultiplier_coe_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/signmultiplier-coe-ae.md) | 82 | `result-track:68dcf39c1fa60b411175138cb10aa0847e17bbf5f3ed8ea847d66276b8a0eea1` |
| 14 | `def` | [reflectionLI](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/reflectionli.md) | 87 | `declaration-track:465b93f35eec360823bfb22490cf09f0c75d053f1ff72bcef70e2a6942cb3b18` |
| 15 | `theorem` | [reflectionLI_coe_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/reflectionli-coe-ae.md) | 91 | `result-track:489e837eb17e49a2cc4408a552b9525666ce125549437942f6a51619730e623a` |
| 16 | `theorem` | [reflectionLI_involutive](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/reflectionli-involutive.md) | 95 | `result-track:3ce4486c61ea2c51d64ed7e1bd624ce21f89bc9ba1a1d2883ed018511683a557` |
| 17 | `def` | [reflection](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/reflection.md) | 103 | `declaration-track:44bbb5c850d9e85d7d440663c4167ba1e6f48f99611b75d9d54e55170292b192` |
| 18 | `theorem` | [reflection_coe_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/reflection-coe-ae.md) | 107 | `result-track:c252182473ad25b5c20f3809bc25bd22157df6bfa458c862f4a92452359ee459` |
| 19 | `theorem` | [reflection_toLp](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/reflection-tolp.md) | 111 | `result-track:d320f60780ca6c00310d6e5b76c5489457443008a1c60db199c4424680f7dbd3` |
| 20 | `theorem` | [fourier_reflection](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/fourier-reflection.md) | 126 | `result-track:02da8eda60e513b79c8708ff6587e37b489cae80aaf00737cf687192480233f4` |
| 21 | `theorem` | [signSymbol_neg](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/signsymbol-neg.md) | 144 | `result-track:18bb812c920422358370779705375b936a1bb0ab68e5a2e2ae85fb6a260f3965` |
| 22 | `theorem` | [reflection_signMultiplier](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/reflection-signmultiplier.md) | 152 | `result-track:6041557bb0ee23012dfeaa71d724390290a400b6e08cd3f0e1dd69cf4feb4b68` |
| 23 | `def` | [signFourierDuality](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/signfourierduality.md) | 167 | `declaration-track:ba4820cb9cc6bf81b2d107d34464c928bcecc7a5adef27a6d7ae1525a62f043b` |
| 24 | `theorem` | [duality_fourier](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/duality-fourier.md) | 170 | `result-track:bac9c0bbd493aa0d755158ccd5a2ef9c90c92313495dc91802c9162aaf0c31ff` |
| 25 | `theorem` | [duality_fourier_coe_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/duality-fourier-coe-ae.md) | 173 | `result-track:b2ade2f94666dd9c24b40e6f4369b5dfff92c3337dcc2996d659fbba2fb47cfb` |
| 26 | `theorem` | [duality_involutive](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/duality-involutive.md) | 178 | `result-track:9a74b4f44d8c404c2d94acddbb8840fed929cf9eeff683be65cf5eacb58714b9` |
| 27 | `theorem` | [reflection_duality_anticommute](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/reflection-duality-anticommute.md) | 185 | `result-track:cda8623092c1d4721d57b348200d1767ad9859fdeab5655e66894f97183dd787` |
| 28 | `def` | [translationLI](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/translationli.md) | 193 | `declaration-track:b975ec32eb8a1fa1e1cfb3ebb66778a8dfabf27dff9fb1cc8e5a36af52cac5d7` |
| 29 | `theorem` | [translationLI_coe_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/translationli-coe-ae.md) | 196 | `result-track:0802f747d4d4a90b6e810260a3200d8764287b5c8bfe6b72cf1438cfd81ce383` |
| 30 | `theorem` | [translationLI_inverse](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/translationli-inverse.md) | 200 | `result-track:d9827619e40b36ffd2028dfeb1e0fab089f5169e00e06890d9a30236a6d5b5f5` |
| 31 | `def` | [translation](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/translation.md) | 211 | `declaration-track:f0bad59f555a07a4dd4610e52c254cbae433849418d5716a34050752f3831b11` |
| 32 | `theorem` | [translation_coe_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/translation-coe-ae.md) | 215 | `result-track:9d455d3fc0ee130f8fe2ea496873d165bbeff821deaa68c33a5118cb9ece251d` |
| 33 | `def` | [standardSignDuality](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/standardsignduality.md) | 219 | `declaration-track:1f0579c66dde079112294c81d4e2c731e1df608bc1dde3496aed76a93215db00` |
| 34 | `def` | [angularSignDuality](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/angularsignduality.md) | 222 | `declaration-track:d8fe3a05864bb9521138434bb3d87f412c35afd1aba388a9fd7f6d826ce7fab7` |
| 35 | `theorem` | [angular_duality_eq_neg_standard](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/angular-duality-eq-neg-standard.md) | 225 | `result-track:e543fc77d7085d9d06d5b17c2f58dcf3814d738d3a1af24d11052c21e2db328d` |
| 36 | `theorem` | [angular_duality_involutive](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/angular-duality-involutive.md) | 228 | `result-track:f3a20d2d952a93a49c270b86b04ea6f2812665cf40d7f8eb1630a2393f2b5564` |
| 37 | `theorem` | [angular_reflection_duality_anticommute](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/angular-reflection-duality-anticommute.md) | 233 | `result-track:747114e6c30ee7f422459ebe79f79fc81cadb6036c79d43644745d2754e07326` |
| 38 | `theorem` | [stationary_inner_dual](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/stationary-inner-dual.md) | 238 | `result-track:be03c3703d819ddf59d643138ab0b42e08dfec5ffef16773f9dc973a9813bf0d` |
| 39 | `theorem` | [angular_stationary_inner_dual](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/angular-stationary-inner-dual.md) | 242 | `result-track:01425c344752c58293b3612973f670616c04fe15072f81d918f64c3e0ddc8690` |
| 40 | `theorem` | [reflected_pairing_dual](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/reflected-pairing-dual.md) | 247 | `result-track:e4a2f109bac9f1c296c1fd3769004a8862389d405cd668d5fb89f385ef42f29a` |
| 41 | `theorem` | [angular_reflected_pairing_dual](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/angular-reflected-pairing-dual.md) | 252 | `result-track:800ef2b9db953e4aeec594bc5b2bbe4f113704dae8415d15a430967651174d30` |
| 42 | `theorem` | [duality_inner_symmetric](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/duality-inner-symmetric.md) | 258 | `result-track:780dcda76c17a4c145a44111708c454f460d6f4218378171c444b59680d8c776` |
| 43 | `theorem` | [duality_selfAdjoint](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/duality-selfadjoint.md) | 265 | `result-track:d7bb4fb80e94bc93bdd29c28c2c82be29d08d2a9c72387e64ca1526f4e027420` |
| 44 | `theorem` | [angular_duality_selfAdjoint](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/angular-duality-selfadjoint.md) | 268 | `result-track:f172098390f5a84e070df9a09432ac60ed7f3643ed131489b8da39cae93547c5` |
| 45 | `def` | [translationPhase](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/translationphase.md) | 279 | `declaration-track:77448b306db6e2674665c3f84b2ec96bf2744a0a6d31cae4b9fd9aa6fa3894e9` |
| 46 | `theorem` | [translationPhase_measurable](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/translationphase-measurable.md) | 281 | `result-track:01fdd948ff49aa7fcb19ef35d68387499a9d3f6982ca8f40c88b7888eb641eb3` |
| 47 | `theorem` | [translationPhase_norm](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/translationphase-norm.md) | 285 | `result-track:a3bd041c606709578f72825475a06e8ed8d3f2d19505eb2ba8d11ba7384118bd` |
| 48 | `def` | [translationPhaseMultiplier](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/translationphasemultiplier.md) | 288 | `declaration-track:c2f9c8288b83c684b17872c1395bb11c6b6e0e1f4be5f9ce792fb8253a2fe21f` |
| 49 | `theorem` | [translationPhaseMultiplier_coe_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/translationphasemultiplier-coe-ae.md) | 291 | `result-track:623ac43a0b0cd94047856b2c6ff39c6c8b631e80b6d15bff4848de504adc379f` |
| 50 | `theorem` | [translation_toLp](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/translation-tolp.md) | 295 | `result-track:c9a348f3b482130f80f1a6bc98f01fb385a85809e02bfe4b3005e63de847ed1f` |
| 51 | `theorem` | [fourier_translation_function](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/fourier-translation-function.md) | 306 | `result-track:ea489266367d293f1aae88290694844b712c0a40c896ef4358679ca8c46958d1` |
| 52 | `theorem` | [fourier_translation](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/fourier-translation.md) | 316 | `result-track:7e621985edf3d76663707e63dcb79dfeb61e4d4230fe440a1351760412967fd5` |
| 53 | `theorem` | [phase_sign_commute](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/phase-sign-commute.md) | 336 | `result-track:71f40ad6075182cefb524ec051edda15674e8421e95779d1745c59e13aeaa1e1` |
| 54 | `theorem` | [translation_duality_commute](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/translation-duality-commute.md) | 348 | `result-track:bac4a29a11e1018763ad6b6ee807faf4412777c045d3b7c0159cfed3b8ad7b09` |
| 55 | `theorem` | [angular_translation_duality_commute](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/angular-translation-duality-commute.md) | 356 | `result-track:2d2bae0e101ae551ac2b61660f0b09f5a4f48f86e50993e96b2b02c596d761f2` |
| 56 | `theorem` | [reflection_involutive](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/reflection-involutive.md) | 362 | `result-track:2ab2efd7cad803843dcd945fb9248dccdbebd9a5e1ec3e7ec88a05f5a9ea0243` |
| 57 | `def` | [stationaryKernel](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/stationarykernel.md) | 366 | `declaration-track:ec67f12c4b453c947e5ebd80d9c0a6f2ac1fa2c82c4bb9aff937d5b6c3961517` |
| 58 | `def` | [reflectedKernel](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/reflectedkernel.md) | 370 | `declaration-track:0f0f30748fad8710386a5a741c9b1dee658d4f28db8a8b9941ce3498ab46ef31` |
| 59 | `theorem` | [stationaryKernel_dual](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/stationarykernel-dual.md) | 373 | `result-track:e29122bc1ae191dd0d5e34f5a80f6edc10aba9d0a7327fb482c8ae6955964ff6` |
| 60 | `theorem` | [reflectedKernel_dual](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/reflectedkernel-dual.md) | 379 | `result-track:823d419b949d09d8157249df2556a0d48af1e0558f2e9d4709362631b3713c59` |
| 61 | `theorem` | [duality_fourier_norm_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/duality-fourier-norm-ae.md) | 386 | `result-track:8876276129163062cc5ee10f88a4a7162c4468f54027ba78d74a8ab7404e67a8` |
| 62 | `theorem` | [angular_duality_fourier_coe_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/angular-duality-fourier-coe-ae.md) | 392 | `result-track:f584f61d57fa298cfe6642b63e95baa0d68138a833267f84fc25a3e15b5ff566` |
| 63 | `theorem` | [angular_duality_fourier_norm_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/angular-duality-fourier-norm-ae.md) | 403 | `result-track:26d2e9cd7e1f359ad575052c0cdca0b195e7aea78602b702cecac7670b9f6f02` |
| 64 | `def` | [sourceAngularFrequency](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/sourceangularfrequency.md) | 410 | `declaration-track:a6ed770561d6f53578031e48fc9fe51f24fc7ddb1cd1bb97affd094fad0c5f1c` |
| 65 | `theorem` | [angular_standard_symbol_to_source_sign](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/angular-standard-symbol-to-source-sign.md) | 412 | `result-track:41e103a1a1f2ac2b970e3a6b88a1ca0e40f040532542be572a80fa104640fe93` |
| 66 | `theorem` | [angular_even_to_odd](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/angular-even-to-odd.md) | 423 | `result-track:9eadff6d08e72156fe708a9a76aa6aef1e159e728ae8d96c3c1009543dcd9d83` |
| 67 | `theorem` | [angular_odd_to_even](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/angular-odd-to-even.md) | 427 | `result-track:b8dc84c01e2595b6d5920763e18d3a5c1980cdf160e764f6e8a17a44f4a4d27a` |
| 68 | `theorem` | [unit_even_reflected_dual](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/unit-even-reflected-dual.md) | 432 | `result-track:4a395acb60ad19f50b66b1f7508177072fc18da1c183e5ed8e4a498e07b46225` |
| 69 | `theorem` | [angular_even_orthogonal](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/angular-even-orthogonal.md) | 441 | `result-track:cac713dd482a8e7fd1cd85d26e49971d0e70c5e25660232c3f7f3c0ce7c02c17` |
| 70 | `theorem` | [even_extra_duality_reflected_pairing_zero](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/even-extra-duality-reflected-pairing-zero.md) | 450 | `result-track:0be7604937d7eff2c169a58d1e1484f5264b02975e3b3b2cea93e332b8ac2aa5` |
| 71 | `theorem` | [angular_square_sector_plus](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/angular-square-sector-plus.md) | 456 | `result-track:75c5f5f90b113e270daf32e2c868748245621754b0b9015135efa42b2944c0ee` |
| 72 | `theorem` | [angular_square_sector_minus](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/angular-square-sector-minus.md) | 462 | `result-track:0429f38225a973fa0a6faec84581d707d92af7dceadd20b3d46a90f967ce182e` |
| 73 | `theorem` | [angular_signed_surplus](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityEdition2.lean/declarations/angular-signed-surplus.md) | 468 | `result-track:4d2e65a732ac43930af88e770ae9e255600d7b146377fe1e69d2773c0e243b01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=84fd621b8ac66c571ce901437e69e74a0f8d321acd2d8f4ca85b317f774069c8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantce915583154f62b5f0abcd5c359e8568e69ef3e92a8598850a887f874c485270.lean","GRWTSK/_verification/specifications/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variantce915583154f62b5f0abcd5c359e8568e69ef3e92a8598850a887f874c485270.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
