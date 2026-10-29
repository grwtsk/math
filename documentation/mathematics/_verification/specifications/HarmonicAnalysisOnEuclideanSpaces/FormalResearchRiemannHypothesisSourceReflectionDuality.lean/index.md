# Verification target: Formal Research Riemann Hypothesis Source Reflection Duality

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db9d3c100efa65ca2ae8e801c34e328e6714f4f4",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FormalResearchRiemannHypothesisSourceReflectionDuality/Variantcb2290ef74471fb02991618fe89d9a497ebda50bac50dbe2622930ec7a74ab5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/index.md) · [Full source](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db9d3c100efa65ca2ae8e801c34e328e6714f4f4`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FormalResearchRiemannHypothesisSourceReflectionDuality/Variantcb2290ef74471fb02991618fe89d9a497ebda50bac50dbe2622930ec7a74ab5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/FormalResearchRiemannHypothesisSourceReflectionDuality/Variantcb2290ef74471fb02991618fe89d9a497ebda50bac50dbe2622930ec7a74ab5f.lean.json)

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
| 1 | `abbrev` | [ComplexL2](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/complexl2.md) | 29 | `declaration-track:3b85cfbf4e471f463a3ff65a7024b3bb9dd8e98e7f03b17eab3a2a23244d2514` |
| 2 | `def` | [signSymbol](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/signsymbol.md) | 32 | `declaration-track:9a652eda179f2540b2a633e99eccfac148e8028508b44037a62c5d23a2f6819d` |
| 3 | `theorem` | [signSymbol_measurable](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/signsymbol-measurable.md) | 34 | `result-track:89d3e07f3840bd40f23c579850a702259e15c3b746f438f256606d8da4d5cd56` |
| 4 | `theorem` | [signSymbol_norm](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/signsymbol-norm.md) | 37 | `result-track:e6d9e23bc83987516ee181833bf92233e3493b5a9474c0b71de61992f99f247d` |
| 5 | `theorem` | [multiply_memLp](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/multiply-memlp.md) | 41 | `result-track:cd12807b1ec066f588cc572f44626e9e2855f04ec1876ba2bd55aa26a8dd7c66` |
| 6 | `def` | [multiply](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/multiply.md) | 47 | `declaration-track:42c9ad801ff42fea3da1a0089562a270e78b2a394cc5dad07991c255d6442cce` |
| 7 | `theorem` | [multiply_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/multiply-ae.md) | 51 | `result-track:93b0a16ba9bff251a7958ec433138bd8c69d856b112fc84eb5b051448d7e7bee` |
| 8 | `def` | [multiplyLI](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/multiplyli.md) | 56 | `declaration-track:530bbc08d94bee65368855446514a03920d34dab78edab7c479ee28afa2433c6` |
| 9 | `def` | [signMultiplierLI](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/signmultiplierli.md) | 80 | `declaration-track:0da1dfd202903603d16239308148966e33b5523129ce343944514af6fd5ae236` |
| 10 | `theorem` | [signMultiplierLI_coe_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/signmultiplierli-coe-ae.md) | 83 | `result-track:27170f0a17e921cbd26b7a038d913806a924aa63540bbe6195998f346de6d112` |
| 11 | `theorem` | [signMultiplier_involutive](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/signmultiplier-involutive.md) | 87 | `result-track:63aa31d9b68804534e5b6a87e165542af70568c02d9a280d26a536dd1eb9a9c2` |
| 12 | `def` | [signMultiplier](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/signmultiplier.md) | 97 | `declaration-track:a0fb93f33763b7e4a0ae1c01afe2fa5b4f2112ae2d406c475bfa9ed64b581095` |
| 13 | `theorem` | [signMultiplier_coe_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/signmultiplier-coe-ae.md) | 101 | `result-track:bd765235a037e9bfe8dafcf18d4f8cd3e26036ec43663ddcdae18b5578502c60` |
| 14 | `def` | [reflectionLI](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/reflectionli.md) | 106 | `declaration-track:1e96640b7823b31ccb7ae0137edbc60c8bf5eef514a126ddc1d42efe321f80b9` |
| 15 | `theorem` | [reflectionLI_coe_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/reflectionli-coe-ae.md) | 110 | `result-track:0aeaa8c53b8b57e8f51e48b8156534442faa37c8f1cae90f56f92c0cb0833af4` |
| 16 | `theorem` | [reflectionLI_involutive](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/reflectionli-involutive.md) | 114 | `result-track:9eb92c0dcecded171ef944f627a8c48c295eab91a2785094329e051452efc800` |
| 17 | `def` | [reflection](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/reflection.md) | 123 | `declaration-track:d7cbb1b907ee2d12de1dfa6534b7d4732860a3534a2a9ce34b9f58ecb5e7161b` |
| 18 | `theorem` | [reflection_coe_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/reflection-coe-ae.md) | 127 | `result-track:74b67441ce9f102728ec069747313340928f26e5c7df33dfd1b98c7ea144d617` |
| 19 | `theorem` | [reflection_toLp](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/reflection-tolp.md) | 131 | `result-track:5b91456c9f992a7e97a045ea71787a46a5d8092c4574681a28701b37dd090199` |
| 20 | `theorem` | [fourier_reflection](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/fourier-reflection.md) | 148 | `result-track:7525e52643236b4aa1f522b0650f5695ded9fddfc269903fec2e79d728dd275d` |
| 21 | `theorem` | [signSymbol_neg](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/signsymbol-neg.md) | 166 | `result-track:51411af44733d47f004f93daaf7fef2bc71812140fcd418fd0abbbce87d00b96` |
| 22 | `theorem` | [reflection_signMultiplier](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/reflection-signmultiplier.md) | 174 | `result-track:c28462f9aa7970ed7ce9c795892370f32d9f7b400d421ace5068a1ee796a598e` |
| 23 | `def` | [signFourierDuality](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/signfourierduality.md) | 189 | `declaration-track:c04c17c66202eca425dcbe4c73b482be27f68c6e0afdc7813bcf8ffc6c85e812` |
| 24 | `theorem` | [duality_fourier](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/duality-fourier.md) | 192 | `result-track:6c15410d3c1c1c5160f4e6ec9929238e64fe99d5c263ec25eb08a94e34c3c652` |
| 25 | `theorem` | [duality_fourier_coe_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/duality-fourier-coe-ae.md) | 195 | `result-track:fdb88e933ea2739ea750674aa774ffd53908dbe6c4bf2d13b187213c635fcc90` |
| 26 | `theorem` | [duality_involutive](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/duality-involutive.md) | 201 | `result-track:9d97cf4538e85a14b2b879016e8fcfaf7b2c8308099e0f872b3618297fb2ee66` |
| 27 | `theorem` | [reflection_duality_anticommute](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/reflection-duality-anticommute.md) | 208 | `result-track:7a315b9cf2ab9dc8e1195dc3fbb8d07c706f39ebd1ed33b100adbb0cb8b6760f` |
| 28 | `def` | [translationLI](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/translationli.md) | 216 | `declaration-track:bc452096b6202f95575182d97ed75e45e21edf36a60277832beae0d67892ccec` |
| 29 | `theorem` | [translationLI_coe_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/translationli-coe-ae.md) | 219 | `result-track:c16c9d46db2959fdc7d67918ffbc3b21eaeb3d5e9390ea775f3663a245448d07` |
| 30 | `theorem` | [translationLI_inverse](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/translationli-inverse.md) | 223 | `result-track:dd55c57591907b74a90fb5f6dc7d15beacdee755e1c2a1f3b7bd9e0f888e1a1e` |
| 31 | `def` | [translation](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/translation.md) | 235 | `declaration-track:d203664109f188b28663050d7945d531775002cf929c00568b9fe718f732e150` |
| 32 | `theorem` | [translation_coe_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/translation-coe-ae.md) | 239 | `result-track:2b3368aadca480b2876d75e57645bff25c6b25383c7d8750547e7d75b3f7219e` |
| 33 | `def` | [standardSignDuality](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/standardsignduality.md) | 243 | `declaration-track:aeaac2ac470b74cd9c9d7f9bc80d887d23e938feb49c7cdf9865cc2b3a3dd58c` |
| 34 | `def` | [angularSignDuality](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/angularsignduality.md) | 246 | `declaration-track:b1fb66748aae6f5e22805d7bf445a7a5e2b840540def6c6f1a0450466559f561` |
| 35 | `theorem` | [angular_duality_eq_neg_standard](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/angular-duality-eq-neg-standard.md) | 249 | `result-track:60a9874e31705e3e5510aac81f03a57ad16287e0e4fb14973e926fc60e475b72` |
| 36 | `theorem` | [angular_duality_involutive](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/angular-duality-involutive.md) | 252 | `result-track:4ee084df3959252f14cadad8cc0b6b86035b51a24b2ab6c32ab366ca8b796aa3` |
| 37 | `theorem` | [angular_reflection_duality_anticommute](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/angular-reflection-duality-anticommute.md) | 257 | `result-track:fd3ea69e8060923f5675790e0a1321cb05c320cc0891615d054ff43332773031` |
| 38 | `theorem` | [stationary_inner_dual](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/stationary-inner-dual.md) | 262 | `result-track:a9ad6eb7021f714912fac70b1f08ad1063f873e5f1657a532ddc505fff36223c` |
| 39 | `theorem` | [angular_stationary_inner_dual](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/angular-stationary-inner-dual.md) | 266 | `result-track:c0070e5576daabf5d1e790d0cfbd5fc0cd8c8204272b38e8eb3072aabe82153e` |
| 40 | `theorem` | [reflected_pairing_dual](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/reflected-pairing-dual.md) | 271 | `result-track:601ee5c1e35b2760056adda2a7f781595a002a747c7a17e12641d2f674c517c5` |
| 41 | `theorem` | [angular_reflected_pairing_dual](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/angular-reflected-pairing-dual.md) | 276 | `result-track:1b0cc4fa9e1dd58feca52295275b9568dff6c3fd79032265fb7771c214c5d000` |
| 42 | `theorem` | [duality_inner_symmetric](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/duality-inner-symmetric.md) | 282 | `result-track:fbfcdeb89806eda3a79bd4937e85644bd7dbb2e11c673f09b4f8896f4380dccb` |
| 43 | `theorem` | [duality_selfAdjoint](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/duality-selfadjoint.md) | 289 | `result-track:7096a04b4f7480f8f4d9c8f24521955c8f7b16bb88111d60f78cbe766547326d` |
| 44 | `theorem` | [angular_duality_selfAdjoint](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/angular-duality-selfadjoint.md) | 294 | `result-track:b326cd63406e96e7870534d36fffe3e3aeef65d12cc52c073afef324e0ebe1ca` |
| 45 | `def` | [translationPhase](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/translationphase.md) | 307 | `declaration-track:cc638d883e1441471cf8b1f3d830cf13fbf09396984a9b7bd5a4f63a81d88545` |
| 46 | `theorem` | [translationPhase_measurable](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/translationphase-measurable.md) | 309 | `result-track:05babf358664aeb3a5191d4f618062da7794a1695a73af0297b2a064eb5076df` |
| 47 | `theorem` | [translationPhase_norm](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/translationphase-norm.md) | 313 | `result-track:8934fded2118516c07158d13be444a44ddcb356b05074ee0aa63ebd3107cc623` |
| 48 | `def` | [translationPhaseMultiplier](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/translationphasemultiplier.md) | 317 | `declaration-track:20da11737d836701cd91715b8b8892d7416bf59147407292026b0091f4e75661` |
| 49 | `theorem` | [translationPhaseMultiplier_coe_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/translationphasemultiplier-coe-ae.md) | 320 | `result-track:56c3d6a758c5bdc54a42a1817da62d9c691c0ad3dcf9f1bd6cf0132571d271f9` |
| 50 | `theorem` | [translation_toLp](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/translation-tolp.md) | 324 | `result-track:dd832034d89031cd122a467ca73da6992760084e1ca999f8ab17167cce204b2d` |
| 51 | `theorem` | [fourier_translation_function](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/fourier-translation-function.md) | 335 | `result-track:d4119c22fec5401f43f73a0ff8a573437902206f0d8348d2be37d018d76dc86a` |
| 52 | `theorem` | [fourier_translation](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/fourier-translation.md) | 345 | `result-track:43e40b943cc43a5aaf0996e5b8290f361676261662c5cb8f703ed36e66ab9c84` |
| 53 | `theorem` | [phase_sign_commute](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/phase-sign-commute.md) | 365 | `result-track:e571eea538821f113a1154c9d9c3ef1e229a20facb5bdea1dfa2b54cd5b57004` |
| 54 | `theorem` | [translation_duality_commute](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/translation-duality-commute.md) | 377 | `result-track:cd39f37f35ff5a028a629e3d9f7e0d49237f3df60c2ae61009fea3000c36d6a9` |
| 55 | `theorem` | [angular_translation_duality_commute](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/angular-translation-duality-commute.md) | 385 | `result-track:488d7fa870fde270e7383b41fc56f896c82eeef00c243537876111fbcfa99983` |
| 56 | `theorem` | [reflection_involutive](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/reflection-involutive.md) | 391 | `result-track:bab8758b6842967900a2aa03e4c9c7a96cff947792654a76d4ec3fff20c971c2` |
| 57 | `def` | [stationaryKernel](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/stationarykernel.md) | 395 | `declaration-track:215c14d05388d784e51506f4e388aa8cf7564416c769c539d3cd766f18c8aaa9` |
| 58 | `def` | [reflectedKernel](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/reflectedkernel.md) | 399 | `declaration-track:58b6c993e97016cc5df10d82e595e706757814a5786aaa232ac1917276b133a5` |
| 59 | `theorem` | [stationaryKernel_dual](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/stationarykernel-dual.md) | 402 | `result-track:f9f4e7ec37bfe9000d36ef282a324668ee9ea4625136dcc34b7f3bedd9e33ddc` |
| 60 | `theorem` | [reflectedKernel_dual](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/reflectedkernel-dual.md) | 408 | `result-track:e8f92d2e4d63610f687689f63f68b78573a594b2c64691fe1fc3c38d21c3012d` |
| 61 | `theorem` | [duality_fourier_norm_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/duality-fourier-norm-ae.md) | 415 | `result-track:de4dc55d72821433533805bc11d257366889fd6661e82b790f542527afa7244c` |
| 62 | `theorem` | [angular_duality_fourier_coe_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/angular-duality-fourier-coe-ae.md) | 421 | `result-track:0ecf3835d82b8e1fdb84eb705af5a2e8d0bf0ab5da7f8486c76cfeea4c9b5734` |
| 63 | `theorem` | [angular_duality_fourier_norm_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/angular-duality-fourier-norm-ae.md) | 433 | `result-track:4e95da993ad663f1cbbc9736f17cf5350bc9ae2fa9f32c0832afb0dbae2d850c` |
| 64 | `def` | [sourceAngularFrequency](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/sourceangularfrequency.md) | 440 | `declaration-track:d9b8ab6e1e3a5a4345046eca3d3e1fc9ba4962dd81282197e1e5267351b5aec8` |
| 65 | `theorem` | [angular_standard_symbol_to_source_sign](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/angular-standard-symbol-to-source-sign.md) | 442 | `result-track:54aacdf64f6a4739439f9ea58b0b18335c4d66dc1d2089fc94a31477daa1cbd7` |
| 66 | `theorem` | [angular_even_to_odd](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/angular-even-to-odd.md) | 453 | `result-track:c4f5d7a5d8b22b3db5b5d3cd8b5f4e6459a0391d1e15f21accc06217ac40be2c` |
| 67 | `theorem` | [angular_odd_to_even](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/angular-odd-to-even.md) | 457 | `result-track:ed02213e9a78c57ebc20a748cd92237962c4e2904a925f083a448d672c8a1d8e` |
| 68 | `theorem` | [unit_even_reflected_dual](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/unit-even-reflected-dual.md) | 462 | `result-track:d09304073e64520255309400b85f63f9603fbd41a524de9965c2a8f513f9a6d9` |
| 69 | `theorem` | [angular_even_orthogonal](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/angular-even-orthogonal.md) | 471 | `result-track:5665ba0ea8490e6d95ee0f0417889b6c3914add6222f1d7ff3509466d273f747` |
| 70 | `theorem` | [even_extra_duality_reflected_pairing_zero](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/even-extra-duality-reflected-pairing-zero.md) | 480 | `result-track:f90011bca0bcbb5247c9d03182d79b40205cd01f677386075c3626232494cb10` |
| 71 | `theorem` | [angular_square_sector_plus](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/angular-square-sector-plus.md) | 486 | `result-track:a634911b3e3e6bf6fb3e3c462411b8d2703049070399ef998906bcdeff271a65` |
| 72 | `theorem` | [angular_square_sector_minus](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/angular-square-sector-minus.md) | 492 | `result-track:18bb687e7980e7e88375dde772d40226f075f28739dc6113ad299a9f98edc8de` |
| 73 | `theorem` | [angular_signed_surplus](../../../../HarmonicAnalysisOnEuclideanSpaces/FormalResearchRiemannHypothesisSourceReflectionDuality.lean/declarations/angular-signed-surplus.md) | 498 | `result-track:1da639749d51957075f967ae8f1305e6bb15158feed954b1fc475c7bc51f8309` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=14efca98b52b4002b390c6d277be19c8dc9c945fff6c219da56fd36197384c01 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FormalResearchRiemannHypothesisSourceReflectionDuality/Variantcb2290ef74471fb02991618fe89d9a497ebda50bac50dbe2622930ec7a74ab5f.lean","GRWTSK/_verification/specifications/Analysis/HarmonicAnalysis/FourierAnalysis/FormalResearchRiemannHypothesisSourceReflectionDuality/Variantcb2290ef74471fb02991618fe89d9a497ebda50bac50dbe2622930ec7a74ab5f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
