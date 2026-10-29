# Verification target: Source Reflection Duality Namespaced Edition3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57752dfeb1c55413710aa00a3bee993f923d7d9b",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variant07611ca9654fde2c054a03d1749175de0426b7b8e7e4b4c62554a8422bf74390.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/index.md) · [Full source](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57752dfeb1c55413710aa00a3bee993f923d7d9b`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variant07611ca9654fde2c054a03d1749175de0426b7b8e7e4b4c62554a8422bf74390.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variant07611ca9654fde2c054a03d1749175de0426b7b8e7e4b4c62554a8422bf74390.lean.json)

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
| 1 | `abbrev` | [ComplexL2](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/complexl2.md) | 19 | `declaration-track:b3c20325a7f5d478d18685688d5ed4be1156c523831094ec96155d8a5f46b136` |
| 2 | `def` | [signSymbol](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/signsymbol.md) | 22 | `declaration-track:b781ed4bfc843f372188c1dfe6051f3de0a336deeeb8c74e9415de93e0ab6cb1` |
| 3 | `theorem` | [signSymbol_measurable](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/signsymbol-measurable.md) | 24 | `result-track:cbbf388564b7088037422e07236685c7c05a9fcd31f2c17752265d534ae2e48e` |
| 4 | `theorem` | [signSymbol_norm](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/signsymbol-norm.md) | 27 | `result-track:0affc67e344157b9ce43cb373b21fe6990619d6868f8572f035ce253d5690ca6` |
| 5 | `theorem` | [multiply_memLp](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/multiply-memlp.md) | 31 | `result-track:5f9fa038ff081282ea30cefaa55864a60033057caca5c96aa82196905ad5664f` |
| 6 | `def` | [multiply](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/multiply.md) | 37 | `declaration-track:11d6b41e076b09a0d748336f4564d5354aee5198bfd64dec21fea90516503648` |
| 7 | `theorem` | [multiply_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/multiply-ae.md) | 41 | `result-track:a36276bc844a6ced281bb9f8b18bfb913647164e2977cebe76f2f433a8633ea0` |
| 8 | `def` | [multiplyLI](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/multiplyli.md) | 46 | `declaration-track:82656bc4cea142fabf27fc925aeca0245268bf5d013aa29f8536d7d49896ae43` |
| 9 | `def` | [signMultiplierLI](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/signmultiplierli.md) | 70 | `declaration-track:12580b8ac99f604c9114f28f3bfd06ab95d67aec824aa83ff24e4faca2c06ce4` |
| 10 | `theorem` | [signMultiplierLI_coe_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/signmultiplierli-coe-ae.md) | 73 | `result-track:1b8a34ef7650ed7fc7edf79bb0681750fb1db1b9fc60247090f433ed41dc3bb2` |
| 11 | `theorem` | [signMultiplier_involutive](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/signmultiplier-involutive.md) | 77 | `result-track:f14fc53fc38d5e90bde9b1970fe0011feda1b4d468aae566b0b3f9a74f7155a4` |
| 12 | `def` | [signMultiplier](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/signmultiplier.md) | 86 | `declaration-track:2b3119213cfbbea2e6c817dc7aed535c8e48bbf3226e147302b62bd16a3defd7` |
| 13 | `theorem` | [signMultiplier_coe_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/signmultiplier-coe-ae.md) | 90 | `result-track:8f4d9b3526b57d165e66567b6d62dbec70effa27b526704de5dacaf8b40cc341` |
| 14 | `def` | [reflectionLI](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/reflectionli.md) | 95 | `declaration-track:8ac5523a4e22cc9ef74c6ab928555334ebc5bb33fa9dadde2fe9918d086c6e6d` |
| 15 | `theorem` | [reflectionLI_coe_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/reflectionli-coe-ae.md) | 99 | `result-track:c1bc484349ffd059c1920b1d63297e736b9d0472d0561bf2464e1b365b03f3ca` |
| 16 | `theorem` | [reflectionLI_involutive](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/reflectionli-involutive.md) | 103 | `result-track:01c5e5fa73de4ab47f8afbbc09c7f4ca2a2c1cdbc620b1698613713d52885938` |
| 17 | `def` | [reflection](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/reflection.md) | 111 | `declaration-track:1b80cf21e549c6e4f9016b154dd3efecc44f9bfb6f8ea54221ee67be0298bd8a` |
| 18 | `theorem` | [reflection_coe_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/reflection-coe-ae.md) | 115 | `result-track:7926111333983ac63cba48a2844d8b347c2f4b6c64848e5d5c2e0294576eff28` |
| 19 | `theorem` | [reflection_toLp](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/reflection-tolp.md) | 119 | `result-track:2dd63e6eb84843b9d4db72573fc9aca49219b1bafb540006899f0139edaa49c9` |
| 20 | `theorem` | [fourier_reflection](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/fourier-reflection.md) | 134 | `result-track:20214942cf02a31a9571d6f8a8df315b307807d8004b43c4aacae9b2ea58d443` |
| 21 | `theorem` | [signSymbol_neg](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/signsymbol-neg.md) | 152 | `result-track:e296c744a68c357971006e39f3395c51c253ee3fcfc14f971b9553fddd7d1d04` |
| 22 | `theorem` | [reflection_signMultiplier](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/reflection-signmultiplier.md) | 160 | `result-track:9c78932aea2d4891b156fd71f3ec7f793fa7509c44b8fb3d340de8b0986445cb` |
| 23 | `def` | [signFourierDuality](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/signfourierduality.md) | 175 | `declaration-track:bac69c991256030979e73eb1316aa459527866f96b8711d29122047a588d2b5d` |
| 24 | `theorem` | [duality_fourier](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/duality-fourier.md) | 178 | `result-track:0ec2b266d83f35aaee855894d86750f8a9c6b9127c4c10ccdf89286fe2055f9c` |
| 25 | `theorem` | [duality_fourier_coe_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/duality-fourier-coe-ae.md) | 181 | `result-track:07bd5d972a3274963c0155269b35a271d34c5534de1eded1b744ce9422c3e3cb` |
| 26 | `theorem` | [duality_involutive](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/duality-involutive.md) | 186 | `result-track:96382f49ff378d3dc1e36d057b40840583ddb391606928d0eeef0ec22f96c7b8` |
| 27 | `theorem` | [reflection_duality_anticommute](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/reflection-duality-anticommute.md) | 193 | `result-track:dc0c6140992dc7cfe43c9499159237df676b19e9098b4b50250018578bfd8fb2` |
| 28 | `def` | [translationLI](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/translationli.md) | 201 | `declaration-track:b713a289cc8b3ba122e37fb38fb1511135bc8c2dfd6e221b0d300b66c11c8dc5` |
| 29 | `theorem` | [translationLI_coe_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/translationli-coe-ae.md) | 204 | `result-track:2678e451dfdc596ead2fc2947ffda5bae621320b0f5f6e50cc04d5b42d6aa5d4` |
| 30 | `theorem` | [translationLI_inverse](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/translationli-inverse.md) | 208 | `result-track:ba1f11cace6fca1d0e35775fb3d95b759cc9787793f7a5c4abcb973f436322be` |
| 31 | `def` | [translation](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/translation.md) | 219 | `declaration-track:e5909060d8a79683d7eb353327bc411096745442354a985bf99955f26667e57f` |
| 32 | `theorem` | [translation_coe_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/translation-coe-ae.md) | 223 | `result-track:34a7068de037f59f048bbc6dc4243708b36c1472a0c4e3ee45b42906405df806` |
| 33 | `def` | [standardSignDuality](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/standardsignduality.md) | 227 | `declaration-track:b1a20054e05c5a36cb79e46e67b98157ebc767495def7434f91d5eae59523820` |
| 34 | `def` | [angularSignDuality](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/angularsignduality.md) | 230 | `declaration-track:1e5c92dcfdcc443d16a3b059f5d04f5195e87834e1c51d8083dcca8926e23f16` |
| 35 | `theorem` | [angular_duality_eq_neg_standard](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/angular-duality-eq-neg-standard.md) | 233 | `result-track:1073ffdddc16abe1796246cf7047ee572b2edd6e62375ef34e97576cfacda468` |
| 36 | `theorem` | [angular_duality_involutive](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/angular-duality-involutive.md) | 236 | `result-track:4ec08f1266ece5fda3e115af344c4edc3820d55fd822dce21b5df74bdd759bcd` |
| 37 | `theorem` | [angular_reflection_duality_anticommute](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/angular-reflection-duality-anticommute.md) | 241 | `result-track:58232e8deac5802f05a2941d0d58e97cfe423dcfefb33a343da336f01efe496e` |
| 38 | `theorem` | [stationary_inner_dual](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/stationary-inner-dual.md) | 246 | `result-track:10221f316324cd18672dd2ed4cfda139ad87dd9c8032ab7365dc4d2915cb7655` |
| 39 | `theorem` | [angular_stationary_inner_dual](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/angular-stationary-inner-dual.md) | 250 | `result-track:17b60555a433b8c39f3f96f83bc707ff4b4f378c8d4ac8e927867f36a76f6e66` |
| 40 | `theorem` | [reflected_pairing_dual](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/reflected-pairing-dual.md) | 255 | `result-track:6d3a8f00f91adbee7371776328c235f12979d59772649ae9945fe138ac554888` |
| 41 | `theorem` | [angular_reflected_pairing_dual](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/angular-reflected-pairing-dual.md) | 260 | `result-track:4df364ca3c107a6fb10b3621bb58cd900780c083273cdc6769bdff5216ec4887` |
| 42 | `theorem` | [duality_inner_symmetric](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/duality-inner-symmetric.md) | 266 | `result-track:ef3642c19e7902150c732a53c61152e3bf92393a9401bcdab90f9a3d50a99f9f` |
| 43 | `theorem` | [duality_selfAdjoint](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/duality-selfadjoint.md) | 273 | `result-track:a763159b3f2ccfd38e65fad7152d7de6f660924a3061ad36b3dc06d1b2c58ca8` |
| 44 | `theorem` | [angular_duality_selfAdjoint](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/angular-duality-selfadjoint.md) | 276 | `result-track:dcf87d45e548627ba35239e44daa82ea231835c3366932e2e70bd234abe03348` |
| 45 | `def` | [translationPhase](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/translationphase.md) | 287 | `declaration-track:5b60c00112d174ac6caca4300dc040cee67215707277e189778917c8725685a8` |
| 46 | `theorem` | [translationPhase_measurable](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/translationphase-measurable.md) | 289 | `result-track:07797e8a2f403134666f75575796db126b63819fc4e7600538aaa17e9e4ee534` |
| 47 | `theorem` | [translationPhase_norm](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/translationphase-norm.md) | 293 | `result-track:cbc2edd281e93b19316aaed6dd4fd610264775ff62d4d45a48b7f9e6c2d54e79` |
| 48 | `def` | [translationPhaseMultiplier](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/translationphasemultiplier.md) | 296 | `declaration-track:258090b345942d84363ea0736a0ae8869dc292b0192ebdbf4a61aa7454c59e77` |
| 49 | `theorem` | [translationPhaseMultiplier_coe_ae](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/translationphasemultiplier-coe-ae.md) | 299 | `result-track:5a0d5cd976ca7b1ed49a6e8cb0ea506d0ed30753630d25b861c7bc5bb6bd4fcd` |
| 50 | `theorem` | [translation_toLp](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/translation-tolp.md) | 303 | `result-track:dcde3fad34528c31f095370c30db83695c4cd75e488b50e0e7ffd83617969ac8` |
| 51 | `theorem` | [fourier_translation_function](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/fourier-translation-function.md) | 314 | `result-track:68f6845f95659c593eb8502a3067bf8037f019c7828253bfec673953eb9f22be` |
| 52 | `theorem` | [fourier_translation](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/fourier-translation.md) | 324 | `result-track:a7036a1155a240d49bffb15b4849ca705ac200d082db14e35c8d0d8e749c0e5b` |
| 53 | `theorem` | [phase_sign_commute](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/phase-sign-commute.md) | 344 | `result-track:275d6d87ab7700e8f59b5f9a5c2157390acad2fb6dd6bbe176debef7dd998198` |
| 54 | `theorem` | [translation_duality_commute](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/translation-duality-commute.md) | 356 | `result-track:f5855ed34165054147f26227a09a4307c275370786a7de5998906a84ab1e6b1a` |
| 55 | `theorem` | [angular_translation_duality_commute](../../../../HarmonicAnalysisOnEuclideanSpaces/SourceReflectionDualityNamespacedEdition3.lean/declarations/angular-translation-duality-commute.md) | 364 | `result-track:04bb5914abea930dbe75bec3d74016ca5a2e02d4fa64c46108018c146231452a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=39719cf325ff63018607d11b73847f824c38f866a58d1a0fefca6c2043fbd661 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variant07611ca9654fde2c054a03d1749175de0426b7b8e7e4b4c62554a8422bf74390.lean","GRWTSK/_verification/specifications/Analysis/HarmonicAnalysis/FourierAnalysis/SourceReflectionDuality/Variant07611ca9654fde2c054a03d1749175de0426b7b8e7e4b4c62554a8422bf74390.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
