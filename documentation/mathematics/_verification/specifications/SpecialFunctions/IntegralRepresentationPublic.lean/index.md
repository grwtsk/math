# Verification target: Integral Representation Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f051aa857c8527248c1a1aa9c3b4aa9fe41a0c3",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaa41bcb48852ab5a9df9113f804c8e60bd6b1c798ae85fe7d13c6eba9308f2ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/index.md) · [Full source](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f051aa857c8527248c1a1aa9c3b4aa9fe41a0c3`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaa41bcb48852ab5a9df9113f804c8e60bd6b1c798ae85fe7d13c6eba9308f2ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaa41bcb48852ab5a9df9113f804c8e60bd6b1c798ae85fe7d13c6eba9308f2ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ContinuousFunctionalCalculus.Rpow.RingInverseOrder` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rpowIntegrand₀₁](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/rpowintegrand-source-edition-2.md) | 62 | `declaration-track:bb1163a2718ead6da6d9217567082ea0529fd284887118f052c5c9d0f7b5b4de` |
| 2 | `def` | [rpowIntegrand₁₂](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/rpowintegrand.md) | 65 | `declaration-track:4eac7a0313426a3eda2f7680b7d1d229bdd633627a8761e8d1b7f3c14065b54c` |
| 3 | `lemma` | [rpowIntegrand₀₁_zero_right](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/rpowintegrand-zero-right.md) | 75 | `result-track:6fa6770df85afb6676a1e7b0a4b764f69cfb91d26f1ca3b1de4a4d248c502e9d` |
| 4 | `lemma` | [rpowIntegrand₀₁_zero_left](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/rpowintegrand-zero-left.md) | 77 | `result-track:5bae89d741b5e8c6ad5f467679b42951df6df87231020ecde6f20d89bb84345e` |
| 5 | `lemma` | [rpowIntegrand₀₁_eq_sub](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/rpowintegrand-eq-sub.md) | 80 | `result-track:c1974534795a789227e04482cfdb8d881f79ef4377636687508551b07f9555b3` |
| 6 | `lemma` | [rpowIntegrand₀₁_nonneg](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/rpowintegrand-nonneg.md) | 87 | `result-track:2582e2a9d7db04a5b63ae20ad1cd28370aa9b44e862765d98beefb282d5b9d21` |
| 7 | `lemma` | [rpowIntegrand₀₁_eq_pow_div](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/rpowintegrand-eq-pow-div.md) | 98 | `result-track:93b1ad99af4fd0b467d096d9556b888d32b1d2e128d64e9cedb00c581ac87948` |
| 8 | `lemma` | [rpowIntegrand₀₁_eqOn_pow_div](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/rpowintegrand-eqon-pow-div.md) | 115 | `result-track:27a9e3bdd3dfdeb63a81a3510130b0494c3cc596a15e28a37527a6b236bfa6f0` |
| 9 | `lemma` | [rpowIntegrand₀₁_apply_mul](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/rpowintegrand-apply-mul.md) | 120 | `result-track:00803d49e15962867a26dfd78ac373994c0b05d9358683fd494d35df19f8aeda` |
| 10 | `lemma` | [rpowIntegrand₀₁_apply_mul'](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/rpowintegrand-apply-mul-source-edition-2.md) | 136 | `result-track:5d56eadd29a4b4d010d52ef2c8434678f7a9c227631224ee1967897f37f1f50d` |
| 11 | `lemma` | [rpowIntegrand₀₁_apply_mul_eqOn_Ici](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/rpowintegrand-apply-mul-eqon-ici.md) | 142 | `result-track:1c7e689636d927ec952891fa0a847d5c8a42da3d2670f302aa5969d29cb8f836` |
| 12 | `lemma` | [continuousOn_rpowIntegrand₀₁](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/continuouson-rpowintegrand.md) | 147 | `result-track:ed3759f3630be08e4dfada32e16e94d184631338253ccfb7b2c9c03a1dba9864` |
| 13 | `lemma` | [aestronglyMeasurable_rpowIntegrand₀₁](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/aestronglymeasurable-rpowintegrand.md) | 154 | `result-track:3c8f3c206534c2baa1eb9807e1d774e00734b03895498702b053d528fd6f2634` |
| 14 | `lemma` | [rpowIntegrand₀₁_monotoneOn](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/rpowintegrand-monotoneon.md) | 158 | `result-track:20321c4ed5722706633297573afdf9d2dcbe205d1f7723f97be9db71dfef7c03` |
| 15 | `lemma` | [continuousOn_rpowIntegrand₀₁_uncurry](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/continuouson-rpowintegrand-uncurry-source-edition-2.md) | 167 | `result-track:d6a48f0515bc39cb572d74a44c1bae4b328278b9ff4f141306d0f4d0ac595264` |
| 16 | `lemma` | [continuousOn_rpowIntegrand₀₁_Ici](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/continuouson-rpowintegrand-ici.md) | 179 | `result-track:99d1ba7eaf88ffd6b914c17e2b60107275ef119e817cadc8760c72c80a090fc8` |
| 17 | `lemma` | [rpowIntegrand₀₁_le_rpow_sub_two_mul_self](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/rpowintegrand-le-rpow-sub-two-mul-self.md) | 183 | `result-track:c33935988e8cef75581006abfde4bf31e00d41aff0e6f8ffe568269949ff4bde` |
| 18 | `lemma` | [rpowIntegrand₀₁_le_rpow_sub_one](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/rpowintegrand-le-rpow-sub-one.md) | 194 | `result-track:beab4c2c00dca40402a85fa23717cfd5eb5291538b26c678b922055806a1a8a2` |
| 19 | `lemma` | [rpowIntegrand₀₁_one_ge_rpow_sub_two](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/rpowintegrand-one-ge-rpow-sub-two.md) | 208 | `result-track:80b4c58ddee70cc9487fbe451a1daaf10babce904b1cf74f1d6702999094151c` |
| 20 | `lemma` | [rpowIntegrand₀₁_eqOn_mul_rpowIntegrand₀₁_one](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/rpowintegrand-eqon-mul-rpowintegrand-one.md) | 222 | `result-track:cd03acc4d0a1bc8bd21b8247ffb09f28afa5ac021be365f36bd7821272ba2251` |
| 21 | `lemma` | [integrableOn_rpowIntegrand₀₁_Ioc](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/integrableon-rpowintegrand-ioc.md) | 233 | `result-track:258926f6c0d3ba97db0f2d481fa4bb4b78a36ce263e8439c8413b3fed2caa43d` |
| 22 | `lemma` | [integrableOn_rpowIntegrand₀₁_Ioi_one](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/integrableon-rpowintegrand-ioi-one.md) | 254 | `result-track:fa958a95ffe5d43d221e76fe183c138f3804c945ad0ea6df89269e531ab1285a` |
| 23 | `lemma` | [integrableOn_rpowIntegrand₀₁_Ioi](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/integrableon-rpowintegrand-ioi.md) | 273 | `result-track:2904272f2eea59f7b02e5245543e0e7740bee8305438ef064adb191a056e7f9c` |
| 24 | `lemma` | [integrableOn_rpowIntegrand₀₁_Ici](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/integrableon-rpowintegrand-ici.md) | 281 | `result-track:86115aa2349e5c96baaa39ea8df6474f1830bc707bd9c1373cf3a0e79479d921` |
| 25 | `lemma` | [integral_rpowIntegrand₀₁_eq_rpow_mul_const](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/integral-rpowintegrand-eq-rpow-mul-const.md) | 285 | `result-track:3ff47f05be8d0e859c286a1146a9211c72f7765fcd0f87866ee522b7a44623ad` |
| 26 | `lemma` | [le_integral_rpowIntegrand₀₁_one](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/le-integral-rpowintegrand-one.md) | 307 | `result-track:7bfc12d4195773af799cd7a1387bb86aa2830e17a10d2bc7a9b52e9aaed02de5` |
| 27 | `lemma` | [integral_rpowIntegrand₀₁_one_pos](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/integral-rpowintegrand-one-pos.md) | 327 | `result-track:dd7363aac574e4a52f8584fc49ddbf940785634153318b409fc6a73fc1fb2248` |
| 28 | `lemma` | [rpow_eq_const_mul_integral](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/rpow-eq-const-mul-integral.md) | 336 | `result-track:eae471d93558fb1b5e9961b0c5519b1d349eb4c4375285b9e8f0a5a6d6c9c0be` |
| 29 | `lemma` | [exists_measure_rpow_eq_integral_rpowIntegrand₀₁](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/exists-measure-rpow-eq-integral-rpowintegrand-source-edition-2.md) | 349 | `result-track:e773c48d95d70f58a2301648e13b0ffc8e9985604190b7b4c585ee9e2a98e2c9` |
| 30 | `lemma` | [rpowIntegrand₁₂_eq_mul_rpowIntegrand₀₁](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/rpowintegrand-eq-mul-rpowintegrand.md) | 373 | `result-track:2e5cde08614ab159e450856ec6a98e8ec68fb001e64b6add108f08eb4a7111ec` |
| 31 | `lemma` | [rpowIntegrand₁₂_nonneg](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/rpowintegrand-nonneg-source-edition-2.md) | 377 | `result-track:72e26583ea801d2398c4e727b62357c577e3826784da8d8998619eeebd5a9855` |
| 32 | `lemma` | [rpowIntegrand₁₂_zero](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/rpowintegrand-zero.md) | 386 | `result-track:4d4871ff8bf6670ebd982086effc33471bf2e977a520c034ebc4905015b9e2ef` |
| 33 | `lemma` | [continuousOn_rpowIntegrand₁₂_uncurry](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/continuouson-rpowintegrand-uncurry.md) | 390 | `result-track:ac16325b1b89a2d2074c140b55475ea4e216e91b5c3e14a11261d1147a77fa93` |
| 34 | `lemma` | [monotoneOn_rpowIntegrand₁₂](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/monotoneon-rpowintegrand.md) | 395 | `result-track:2fc43a104f0ad0a16c65f4d11c49221cc1fc968d1086ec1ff10fa5492afe2145` |
| 35 | `lemma` | [integrableOn_rpowIntegrand₁₂](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/integrableon-rpowintegrand.md) | 400 | `result-track:92c6180d283b399d02714b724277e3677b99a9c67e2015a84921799742f07dfc` |
| 36 | `lemma` | [rpow_eq_const_mul_integral_rpowIntegrand₁₂](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/rpow-eq-const-mul-integral-rpowintegrand.md) | 411 | `result-track:d66feb0be302d86986661aa546c2625560bb829b1604df6f3f95ca57fd0f7ebf` |
| 37 | `lemma` | [exists_measure_rpow_eq_integral_rpowIntegrand₁₂](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/exists-measure-rpow-eq-integral-rpowintegrand.md) | 427 | `result-track:605c5dd20db5146c197876cfd2f4b7a67e9021815007fff2601da0db5292f2fa` |
| 38 | `lemma` | [cfcₙ_rpowIntegrand₀₁_eq_cfcₙ_rpowIntegrand₀₁_one](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/cfc-rpowintegrand-eq-cfc-rpowintegrand-one.md) | 457 | `result-track:71ec54bff730d32e283cf2751c431e04971d89fcd0012401b3efd180fb8d3da4` |
| 39 | `lemma` | [exists_measure_nnrpow_eq_integral_cfcₙ_rpowIntegrand₀₁](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/exists-measure-nnrpow-eq-integral-cfc-rpowintegrand.md) | 481 | `result-track:9a876517a0c25f9cbb699291c561fbf3a1ae07a36d0a08fd882bff7bddcb10b7` |
| 40 | `lemma` | [exists_measure_nnrpow_eq_integral_cfcₙ_rpowIntegrand₁₂](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/exists-measure-nnrpow-eq-integral-cfc-rpowintegrand-source-edition-2.md) | 525 | `result-track:d2cebe31f7e24d1f8bc2ae8f50270b99df230374996615255e2f022603f21987` |
| 41 | `lemma` | [concaveOn_cfc_rpowIntegrand₀₁](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/concaveon-cfc-rpowintegrand.md) | 578 | `result-track:766c6701fcf1b16cc9ebc5123a34ed54cfa609d866bac4c6d176e03379b5e8cf` |
| 42 | `lemma` | [monotoneOn_cfcₙ_rpowIntegrand₀₁](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/monotoneon-cfc-rpowintegrand.md) | 603 | `result-track:345eba77d65b934218a733c4e3a89c536c333b69bb22baa6862a0302799d4596` |
| 43 | `lemma` | [concaveOn_cfcₙ_rpowIntegrand₀₁](../../../../SpecialFunctions/IntegralRepresentationPublic.lean/declarations/concaveon-cfc-rpowintegrand-source-edition-2.md) | 621 | `result-track:c85171ef47dde519f0fa42d2691433d164339e3c3f626f767ca07abfb6d27f2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1778f1f5155c29ca93dff3b7c420943fac174633d1f04bee72ed8921703f646a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaa41bcb48852ab5a9df9113f804c8e60bd6b1c798ae85fe7d13c6eba9308f2ef.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/IntegralRepresentation/Variantaa41bcb48852ab5a9df9113f804c8e60bd6b1c798ae85fe7d13c6eba9308f2ef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
