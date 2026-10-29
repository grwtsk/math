# Verification target: Fixed Laplace Boundary Literal Check

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54a6d7cfc42997ce5317ac03106ea9826fea26b2",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant9f40e2fb9235c924ed14b409cac2d84020fe19b3f24b12fcc46fe30abf4d3039.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54a6d7cfc42997ce5317ac03106ea9826fea26b2`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant9f40e2fb9235c924ed14b409cac2d84020fe19b3f24b12fcc46fe30abf4d3039.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant9f40e2fb9235c924ed14b409cac2d84020fe19b3f24b12fcc46fe30abf4d3039.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.FixedLaplaceContinuation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntervalIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusSourceFilterQuotient` — import line 3; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedSourceFilter` — import line 4; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bumpMoment](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/bumpmoment.md) | 24 | `declaration-track:f63523818a5613ee5e448d910b35b5c58b80be6670955a84eb76d9951cde9e22` |
| 2 | `theorem` | [bumpMoment_intervalIntegrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/bumpmoment-intervalintegrable.md) | 29 | `result-track:9bf9d468783e8b06b421edeb02cee24d49169087daee9a6148cf95d507a63136` |
| 3 | `theorem` | [bumpMoment_zero_eq_source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/bumpmoment-zero-eq-source.md) | 36 | `result-track:7670f9e1f6c9b9dd861167c92dd13b3d03758b3adca4689e9334144668902195` |
| 4 | `theorem` | [bumpMoment_zero_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/bumpmoment-zero-zero.md) | 49 | `result-track:7b2f6c8709ef600a067d01655fd730c3c67ff7dd40e5727204a8bf374a7b6ee5` |
| 5 | `theorem` | [bumpFlux_hasDerivAt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/bumpflux-hasderivat.md) | 59 | `result-track:f7a170aa2059713b4666495127768655b84f95966bf2e3e9f0a6d0eb1a403b20` |
| 6 | `theorem` | [bumpMoment_equation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/bumpmoment-equation.md) | 70 | `result-track:710dd571c3c9e5e1da504fae06ec742a436fcd6e2593a1b402bb49603aae4dac` |
| 7 | `theorem` | [re_eq_zero_of_weighted_energy](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/re-eq-zero-of-weighted-energy.md) | 105 | `result-track:2b4b6fca6a210f87ef9eecc374ff8ce7f704e0d3293b4c75e388a23adfb2b887` |
| 8 | `theorem` | [bumpPrimitive_hasDerivAt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/bumpprimitive-hasderivat.md) | 134 | `result-track:7eb0bdf541ea5a6d45d8f1615b3a61a861f361f747c56aa10feeb1f4f16af351` |
| 9 | `theorem` | [bumpMoment_closedFormula](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/bumpmoment-closedformula.md) | 149 | `result-track:41b534ea0e8d924531a0742124e8d7276aff216e048a0c77e215a08e8be6f3fa` |
| 10 | `theorem` | [V_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/v-zero.md) | 174 | `result-track:10a4adc584cc6ea356f26ba46d232e1ce0ee27106881ff8af5de2122a1c19264` |
| 11 | `theorem` | [V_eq_bumpMoment](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/v-eq-bumpmoment.md) | 183 | `result-track:b2a4299e333b01d8e297604cc4195d121c0dfb91535c764a4a2a6942793fdba1` |
| 12 | `theorem` | [W_eq_bumpMoment](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/w-eq-bumpmoment.md) | 196 | `result-track:d92a56930ffcfe266132aa67dd7e5d7452363b66e5cb28e72aa289d7cc4e35c6` |
| 13 | `theorem` | [bumpMoment_hasDerivAt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/bumpmoment-hasderivat.md) | 218 | `result-track:17a6279a94844840423e3a2f9d1a8d63d35ec8ac11d0d67066d1f20d1f6f3c39` |
| 14 | `theorem` | [bumpMoment_continuous](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/bumpmoment-continuous.md) | 254 | `result-track:a905841842cb5b762eb7ef00beb77da366dd204d27d4839cd9abc6dce64fc352` |
| 15 | `def` | [radialProfile](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/radialprofile.md) | 259 | `declaration-track:7504449087e2ed744cf38e0cf68aa8530a0ddf733a5ccf9ebab51609c3ac36ad` |
| 16 | `def` | [radialFlux](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/radialflux.md) | 262 | `declaration-track:45be029cd18eacc5d034af1ac11361d6aa46f0849de096dadee4c4d1da8001a7` |
| 17 | `theorem` | [radialProfile_hasDerivAt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/radialprofile-hasderivat.md) | 266 | `result-track:249cb6ffe3bc49d75ce3d117d9ad2dca69f054e22cc6fdb53d31afb5b1de362f` |
| 18 | `theorem` | [radialFlux_hasDerivAt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/radialflux-hasderivat.md) | 275 | `result-track:4fafcfabc42f4f6849ca5cdb9d4e2923cb7da7f5221d3c48e70fb0cb111956bd` |
| 19 | `theorem` | [radialProfile_continuous](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/radialprofile-continuous.md) | 285 | `result-track:a9ae0cd0e9763e31f5628157b736d9d882023b9bc60c7b7769c50ff4a65ad926` |
| 20 | `theorem` | [radialFlux_continuous](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/radialflux-continuous.md) | 289 | `result-track:a5f1f6f93896cb712fdcccfa8d98d8cc3c467408e6e2158e9b8c9a8963688190` |
| 21 | `def` | [radialMass](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/radialmass.md) | 294 | `declaration-track:b7a56822bd56cc6444d298f1043bc6341809587346e6b56f1a8a3fcba870adc3` |
| 22 | `def` | [radialEnergy](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/radialenergy.md) | 297 | `declaration-track:100e3a4cfe31cf89a42d9db639876ec9974ba882608dda7ac1aaa8f3c609501c` |
| 23 | `theorem` | [radial_integrands_intervalIntegrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/radial-integrands-intervalintegrable.md) | 301 | `result-track:721d8158a343ec3a63e295e5c4b0305942374b18fbdcbb4196b9dae256da9c26` |
| 24 | `theorem` | [radialEnergy_nonneg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/radialenergy-nonneg.md) | 313 | `result-track:688f28529df368a9e8a850c48cea86eeabcbd7022f8fa7a95f88d03c16113a2e` |
| 25 | `theorem` | [radialProfile_eventually_ne_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/radialprofile-eventually-ne-zero.md) | 319 | `result-track:47fa09c3e79bd609dbade83775c0b0ecbea6a457f3ed948ab3e46c0b21426986` |
| 26 | `theorem` | [radialMass_pos](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/radialmass-pos.md) | 326 | `result-track:ed7bca3d557f99cafcb39cc2ebe31385482459783d89bddbc0ad2a4675d47dcc` |
| 27 | `theorem` | [radial_energy_identity](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/radial-energy-identity.md) | 342 | `result-track:260c5f134574720426e8791cd6f58b205883e1c45c6610b15cd36b6958026c67` |
| 28 | `theorem` | [bumpMoment_zero_re](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/bumpmoment-zero-re.md) | 400 | `result-track:c7e16fa05f64caf8c801a158343d77e27d4c8e030930d1ee1486385492fd2865` |
| 29 | `theorem` | [V_continuous](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/v-continuous.md) | 418 | `result-track:9195bd62c7f218b0a6de59b6fe86933305dd1a15a54111bc51b2e3763ed7f340` |
| 30 | `theorem` | [actualLaplace_continuousOn_closed](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/actuallaplace-continuouson-closed.md) | 426 | `result-track:12e541f19bef9d9acec41ea18a05c8b332e2986422a59038b00da27ff0084b8f` |
| 31 | `theorem` | [sourceProduct_continuousAt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/sourceproduct-continuousat.md) | 452 | `result-track:627f28d73ea8c0767e1855b2b0a4153ce08f6cad5b0133317a5704750ba2a42c` |
| 32 | `theorem` | [actualLaplace_eq_product_closed](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/actuallaplace-eq-product-closed.md) | 465 | `result-track:ddce0b646510e0bc2a79a5a6bf932aed077eff4abfaf5b5872d681530f2f0f8f` |
| 33 | `theorem` | [actualLaplace_boundary](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/actuallaplace-boundary.md) | 491 | `result-track:dd7e821416ca7a535242df10581a7405d62fa96c6074e0479a24df384aa7b562` |
| 34 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/example-source-edition-4.md) | 509 | `declaration-track:a9b83f6a1ee223d10e950a3b2fdf7e6992474aa7656579b2f86d759e7faea305` |
| 35 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/example-source-edition-3.md) | 510 | `declaration-track:a467a3aaa06c754e3bdb6bf0747ba60956847e8dc8efc830283d4c83c93d5841` |
| 36 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/example-source-edition-5.md) | 512 | `declaration-track:cd720d3d4a552a3a77b8e119a422f3296617ddb73c5ba6e90ee0493f03e5d7ca` |
| 37 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/example-source-edition-2.md) | 515 | `declaration-track:978824782d614c415ae19df44eeecbe133c9f822cc6376d7639e4f7185fa64a9` |
| 38 | `example` | [(anonymous)](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/FixedLaplaceBoundaryLiteralCheck.lean/declarations/example.md) | 518 | `declaration-track:672022cba642bf54e24ce1fca198cdaf3ae82bb7bc97cdf395b7307f99e4cab7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0dd2163b86e2ce63759dcfcb89099e3d603355ae31fd3127020e0b133f6f9c1c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant9f40e2fb9235c924ed14b409cac2d84020fe19b3f24b12fcc46fe30abf4d3039.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/FixedLaplaceBoundaryLiteralCheck/Variant9f40e2fb9235c924ed14b409cac2d84020fe19b3f24b12fcc46fe30abf4d3039.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
