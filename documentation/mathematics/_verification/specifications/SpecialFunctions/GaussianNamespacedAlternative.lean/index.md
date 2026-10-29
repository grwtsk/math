# Verification target: Gaussian Namespaced Alternative

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "031cd32f6e7660a61b7c6ac3977e3bcf76414ab2",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Gaussian/Variant547a6a54d241f37756e4e22383d4a59a00d78c73a8d270659ffe094a0c4bde34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/index.md) · [Full source](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `031cd32f6e7660a61b7c6ac3977e3bcf76414ab2`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Gaussian/Variant547a6a54d241f37756e4e22383d4a59a00d78c73a8d270659ffe094a0c4bde34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Gaussian/Variant547a6a54d241f37756e4e22383d4a59a00d78c73a8d270659ffe094a0c4bde34.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.PolarCoord` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Complex` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.PoissonSummation` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/declarations/macro-rules.md) | 48 | `declaration-track:e610e68d971c67c137f318706ebf5ae41808e7495b0538d8e0cde5e177d0295d` |
| 2 | `theorem` | [exp_neg_mul_sq_isLittleO_exp_neg](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/declarations/exp-neg-mul-sq-islittleo-exp-neg.md) | 62 | `result-track:e6a61df7aebbea7de4c5d5d39e3dcc6f4d1dfee613641e6ed3ade47348edc812` |
| 3 | `theorem` | [rpow_mul_exp_neg_mul_sq_isLittleO_exp_neg](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/declarations/rpow-mul-exp-neg-mul-sq-islittleo-exp-neg.md) | 70 | `result-track:43b80852f87d9050a53a9a4b7a14e1a3c189aecab2d0880a0dc3afe8311c5ed5` |
| 4 | `theorem` | [integrableOn_rpow_mul_exp_neg_mul_sq](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/declarations/integrableon-rpow-mul-exp-neg-mul-sq.md) | 77 | `result-track:6ee1d0ec4da6a319c8231369d986afad37b2d23e4bb66a9aa758e7b294e96b5d` |
| 5 | `theorem` | [integrable_rpow_mul_exp_neg_mul_sq](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/declarations/integrable-rpow-mul-exp-neg-mul-sq.md) | 95 | `result-track:d639714179c391e126c9a5ce71e22f383be9293182ac65dbe3e5fb95b4a5c6fb` |
| 6 | `theorem` | [integrable_exp_neg_mul_sq](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/declarations/integrable-exp-neg-mul-sq.md) | 115 | `result-track:45bef3d207d19fec19f784685602b036bcda6103f87f1ed49c8792e2785017bf` |
| 7 | `theorem` | [integrableOn_Ioi_exp_neg_mul_sq_iff](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/declarations/integrableon-ioi-exp-neg-mul-sq-iff.md) | 119 | `result-track:5635802f447bdfa458b76712fcc321d7c471450d5cd89b753d6c0e536b6f4089` |
| 8 | `theorem` | [integrable_exp_neg_mul_sq_iff](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/declarations/integrable-exp-neg-mul-sq-iff.md) | 131 | `result-track:20557688da3b34cdca0334736dc9ae7a336b627c68af3bb0bd7509293e7167d7` |
| 9 | `theorem` | [integrable_mul_exp_neg_mul_sq](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/declarations/integrable-mul-exp-neg-mul-sq.md) | 136 | `result-track:9a985a41da2a92a34ac3a49aa518a01f365c07e3a99fdaa82cb6cf974506f972` |
| 10 | `theorem` | [norm_cexp_neg_mul_sq](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/declarations/norm-cexp-neg-mul-sq.md) | 141 | `result-track:1119685922d2041c7472ae08a76d9d42d3d19ce82f83c23cbe245477f72769b8` |
| 11 | `theorem` | [integrable_cexp_neg_mul_sq](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/declarations/integrable-cexp-neg-mul-sq.md) | 147 | `result-track:23ecacdaf8fd0a6752f16941d993637176cad5b942253698bb8ae7c09b2e5485` |
| 12 | `theorem` | [integrable_mul_cexp_neg_mul_sq](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/declarations/integrable-mul-cexp-neg-mul-sq.md) | 156 | `result-track:8b24f26818538d7d5bad4f94a1264cc122500465d84c0f8bbe9734d707b31748` |
| 13 | `theorem` | [integral_mul_cexp_neg_mul_sq](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/declarations/integral-mul-cexp-neg-mul-sq.md) | 167 | `result-track:8990a7ce37d5dfee60045c4488f56b097da269cc141114a4859d1d5c777bf0e9` |
| 14 | `theorem` | [integral_gaussian_sq_complex](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/declarations/integral-gaussian-sq-complex.md) | 189 | `result-track:936923f934566cf6cc293db5c78c6be56c3ee878860408c2ae9e9b620b423722` |
| 15 | `theorem` | [integral_gaussian](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/declarations/integral-gaussian.md) | 222 | `result-track:2ec5ef0964e3480cb7df5895a9515c9832edcb660267452f35d9252ac07019ff` |
| 16 | `theorem` | [continuousAt_gaussian_integral](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/declarations/continuousat-gaussian-integral.md) | 237 | `result-track:3cecfe642158010bbbf91dfc6aca96e197dff7c98e0506288470c60d58d9d878` |
| 17 | `theorem` | [integral_gaussian_complex](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/declarations/integral-gaussian-complex.md) | 256 | `result-track:708f6c92316fb099a4c18479e19694465d9adca4198cb5caebe6ac4456a17b43` |
| 18 | `theorem` | [integral_gaussian_complex_Ioi](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/declarations/integral-gaussian-complex-ioi.md) | 296 | `result-track:8fcd77de04c1ee17b2cc99315dcf823bdec81bbba02077219c53515f7fd971a9` |
| 19 | `theorem` | [integral_gaussian_Ioi](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/declarations/integral-gaussian-ioi.md) | 322 | `result-track:bada4e20bfcd84ea264bf6dc1088a47b3c875a2858415c2c732cf344125e5b04` |
| 20 | `theorem` | [Real.Gamma_one_half_eq](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/declarations/real-gamma-one-half-eq.md) | 338 | `result-track:8f3ed8907e5cc20d8e9491677fb1221abd34ddbf7723cc4544e31d1a4a7c7e21` |
| 21 | `theorem` | [Complex.Gamma_one_half_eq](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/declarations/complex-gamma-one-half-eq.md) | 356 | `result-track:1dbf35d5696a6632c55026502ba7597f59b9ff7b0969709541a9e6524bd32d6b` |
| 22 | `def` | [verticalIntegral](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/declarations/verticalintegral.md) | 377 | `declaration-track:760efa68bc85ac576da446f1f29d8222953bbf1aeba2191b144888b501124df6` |
| 23 | `theorem` | [norm_cexp_neg_mul_sq_add_mul_I](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/declarations/norm-cexp-neg-mul-sq-add-mul-i-source-edition-2.md) | 383 | `result-track:6ece5d43f78943ddf0c2dca1e2a17d7aac0d7edae6132d0a655854486fdc3cdf` |
| 24 | `theorem` | [norm_cexp_neg_mul_sq_add_mul_I'](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/declarations/norm-cexp-neg-mul-sq-add-mul-i.md) | 391 | `result-track:014f8ce95c0d06c03edd6cd31584429fe3208ae383011bf42ba000583d6319f4` |
| 25 | `theorem` | [verticalIntegral_norm_le](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/declarations/verticalintegral-norm-le.md) | 402 | `result-track:5bd8063bcfadc417d83d98e9904fbdb7e8ffe9e819e9c810800d06d264c868c0` |
| 26 | `theorem` | [tendsto_verticalIntegral](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/declarations/tendsto-verticalintegral.md) | 447 | `result-track:34dc50f8dcb28f0e1ebb5627a7aab46151e12c808e7fce23e1706c23797aca99` |
| 27 | `theorem` | [integrable_cexp_neg_mul_sq_add_real_mul_I](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/declarations/integrable-cexp-neg-mul-sq-add-real-mul-i.md) | 464 | `result-track:452222a582ebfd61d8df1fe8b4c8a1216ee8d8a8b55b057d8a6ad73753ba2724` |
| 28 | `theorem` | [integral_cexp_neg_mul_sq_add_real_mul_I](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/declarations/integral-cexp-neg-mul-sq-add-real-mul-i.md) | 481 | `result-track:cc7159456f97b128c18891e3a1d3487d2bd25ac516da72e96840c81dd0120711` |
| 29 | `theorem` | [Gaussian Namespaced Alternative](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/declarations/root-grwtsk-analysis-asymptoticanalysis-expnegmulsqislittleoexpneg-varia-source-edition-2.md) | 523 | `result-track:bbed2651a2d9a6a8dc6ace55079c5e06a389f1d858596dbfd003b1663e407968` |
| 30 | `theorem` | [Gaussian Namespaced Alternative](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/declarations/root-grwtsk-analysis-asymptoticanalysis-expnegmulsqislittleoexpneg-varia-source-edition-3.md) | 531 | `result-track:c1d444a15afc74d0a9201bc2a31c101bf44489470d9b1fdaf258ac08ddf61651` |
| 31 | `theorem` | [Gaussian Namespaced Alternative](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/declarations/root-grwtsk-analysis-asymptoticanalysis-expnegmulsqislittleoexpneg-varia.md) | 545 | `result-track:39e1864a24147919810122e349170e1aa008ea34f228af32de79a51f94b932d6` |
| 32 | `theorem` | [tendsto_rpow_abs_mul_exp_neg_mul_sq_cocompact](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/declarations/tendsto-rpow-abs-mul-exp-neg-mul-sq-cocompact.md) | 573 | `result-track:d9117ea4f3e5fd01533f484d2bd27476f1ec88b55ddd0732542dcc848e96cb84` |
| 33 | `theorem` | [isLittleO_exp_neg_mul_sq_cocompact](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/declarations/islittleo-exp-neg-mul-sq-cocompact.md) | 584 | `result-track:d7b274a5240cd5a7c76840f775a65f2851dcb7c5114e055d1a570e1264acee2f` |
| 34 | `theorem` | [Complex.tsum_exp_neg_mul_int_sq](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/declarations/complex-tsum-exp-neg-mul-int-sq.md) | 602 | `result-track:6478e39344311b08aed0d9e0b88f74fd6d84b2833a1c06a9b04d19695c0d5592` |
| 35 | `theorem` | [Real.tsum_exp_neg_mul_int_sq](../../../../SpecialFunctions/GaussianNamespacedAlternative.lean/declarations/real-tsum-exp-neg-mul-int-sq.md) | 631 | `result-track:2eff81112de61ee3501efafac6c9affbf25ba304177295055ead19067dc33c9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0b425c9120278c66451966d331564e1aa5a30f0a9876307f2283a18889d1e916 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Gaussian/Variant547a6a54d241f37756e4e22383d4a59a00d78c73a8d270659ffe094a0c4bde34.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/Gaussian/Variant547a6a54d241f37756e4e22383d4a59a00d78c73a8d270659ffe094a0c4bde34.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
