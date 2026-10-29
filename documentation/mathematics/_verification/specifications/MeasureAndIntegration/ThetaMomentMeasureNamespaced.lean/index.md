# Verification target: Theta Moment Measure Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80507dd15d009639e0d9e17caf34246efb511f41",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Varianta51016aa63f7dc2b35ca4900f4ce2cd9e62d5f21be04eff37364b2ea16aef6a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80507dd15d009639e0d9e17caf34246efb511f41`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Varianta51016aa63f7dc2b35ca4900f4ce2cd9e62d5f21be04eff37364b2ea16aef6a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Varianta51016aa63f7dc2b35ca4900f4ce2cd9e62d5f21be04eff37364b2ea16aef6a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailCalculus` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Roots` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Polynomial` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Archimedean.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourceMeasure](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/sourcemeasure.md) | 38 | `declaration-track:6a7676c2265d3d38120a97362e2cd316b309273ace3931f344dd70471480484d` |
| 2 | `def` | [momentMeasure](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/momentmeasure.md) | 42 | `declaration-track:351faaf8eb37f2051a89356784c239f72b04ea9d29eac078b89caf8c7568774b` |
| 3 | `def` | [moment](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/moment.md) | 46 | `declaration-track:be9ad79dd3d7ea0f560a100562430d9e0d7d00f50a170d7665a9cd80f2c1fb92` |
| 4 | `theorem` | [density_measurable](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/density-measurable.md) | 48 | `result-track:068408194ef83953710722fdc4899f9b3394105c6a62338ce42ae0395154fe80` |
| 5 | `theorem` | [phi_nonnegative_ae](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/phi-nonnegative-ae.md) | 52 | `result-track:7169f1322955008e7744aaf5e320761fd1ead54c81c316cb22434aa9a4e07ecd` |
| 6 | `theorem` | [source_power_integrable](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/source-power-integrable.md) | 58 | `result-track:479b77d4a30dc14b4bff229f993cc14e378c479db984f4a7904cb5582afdb48c` |
| 7 | `theorem` | [sourceMeasure_power_integrable](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/sourcemeasure-power-integrable.md) | 66 | `result-track:5cbecc0aab8347da6d7807a9fb4d908e312a9f624ea8246de4e5412157938bea` |
| 8 | `theorem` | [moment_power_integrable](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/moment-power-integrable.md) | 75 | `result-track:949c7358f3346b8ac36a1fbda84550b870701ba360e3018adb7eb95338468e93` |
| 9 | `theorem` | [moment_eq_source_integral](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/moment-eq-source-integral.md) | 84 | `result-track:e024c930d975d6cae2dde299f10475a62505f97c1fc7a78a8fc18ef2e4c72f57` |
| 10 | `theorem` | [moment_eq_factorial_mul_thetaTail](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/moment-eq-factorial-mul-thetatail.md) | 96 | `result-track:3983dcdd65bc05d345f2223e4107281eb16499215fb1d182d183601288b3e74e` |
| 11 | `theorem` | [moment_positive](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/moment-positive.md) | 107 | `result-track:8db61d872da16a067671048818cfa9359a663eb9f470ea88d2c210983b9de0c9` |
| 12 | `theorem` | [moment_le_factorial_bound](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/moment-le-factorial-bound.md) | 112 | `result-track:da7174159a76c8a537836e58f87bbf69d5cc4c205d273a32f5cbffe4b02906ce` |
| 13 | `theorem` | [momentMeasure_finite](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/momentmeasure-finite.md) | 119 | `result-track:a45985476154afddc4ae2a16a33d814eb83c423cbe14a2c0e5135850fdd0e1c4` |
| 14 | `theorem` | [momentMeasure_ne_zero](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/momentmeasure-ne-zero.md) | 124 | `result-track:819a88c8cc6260ab64da2e1c4a443c30bb001f80934682fb71218bac0bbf3c8f` |
| 15 | `theorem` | [momentMeasure_nonnegative_ae](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/momentmeasure-nonnegative-ae.md) | 130 | `result-track:c4d4b6f091db97e5512442f28e96dd03d79d5cbfa9b87701dc9f71df6d25a85d` |
| 16 | `theorem` | [integral_momentMeasure_eq_source](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/integral-momentmeasure-eq-source.md) | 142 | `result-track:3febc2529ccbd92a4ed33436edc9b5e2518da24f0d2190b39d999865b44e7ed3` |
| 17 | `theorem` | [integrable_momentMeasure_iff](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/integrable-momentmeasure-iff.md) | 155 | `result-track:8eca04461daca70d715e4979e2ed6fdfc74723c5ec124a8811f9601f5c3b836a` |
| 18 | `theorem` | [polynomial_integrable](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/polynomial-integrable.md) | 169 | `result-track:6e9b14c4c3b46cd1bae954a2ce7d2af005ee717670ac2f0f01e6e6482e2cafc3` |
| 19 | `theorem` | [polynomial_square_integrable](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/polynomial-square-integrable.md) | 176 | `result-track:65690e92643523b0b25d979e25bd681641d3cb294fed318609d7ea20303035e9` |
| 20 | `theorem` | [polynomial_square_integral_positive](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/polynomial-square-integral-positive.md) | 182 | `result-track:20472ee45cb65d541ec1c38009b1ae07eafe7964ce650dc46073a595f36d5f83` |
| 21 | `theorem` | [moment_zero_eq_thetaTail_one](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/moment-zero-eq-thetatail-one.md) | 216 | `result-track:f375ba57950a1a684ca6ffe0340f45367045ceb56ba502536224cdffe592f14a` |
| 22 | `def` | [initialDiagonal](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/initialdiagonal.md) | 221 | `declaration-track:b8e61c886e883244701419f1af8ca499cd7c858e397e06c49880f08a6e42c44c` |
| 23 | `def` | [initialOffDiagonalSquared](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/initialoffdiagonalsquared.md) | 224 | `declaration-track:5288b09ff4f02c7cd2ceb6f22816a37036cbc8293cab8974103245bd81c4b30b` |
| 24 | `theorem` | [initialDiagonal_positive](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/initialdiagonal-positive.md) | 228 | `result-track:afcecc73f559b3e3d3dacda5b49df06ff9e967e0e1072636c815db3cae43b941` |
| 25 | `theorem` | [centered_square_integral](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/centered-square-integral.md) | 232 | `result-track:df13929c0d3338921b63e1f6f4edf18de42468f90ebfbf42acd0c4cae85fc4cf` |
| 26 | `theorem` | [centered_square_integral_positive](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/centered-square-integral-positive.md) | 252 | `result-track:82a9df813819060524c83baee47c4dd23d2d54ffc47fd291167c721494763dc1` |
| 27 | `theorem` | [initialOffDiagonalSquared_positive](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/initialoffdiagonalsquared-positive.md) | 261 | `result-track:b309bd847141430dd8d3ac2ebcfbbbbd768d9adcc6e207d73b893702c19346c5` |
| 28 | `def` | [initialOffDiagonal](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/initialoffdiagonal.md) | 278 | `declaration-track:7b911d6a37f75c9fa09ae49dc6cb8011b44d2ffcd81b9f376727546faf8177fb` |
| 29 | `theorem` | [initialOffDiagonal_positive](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/initialoffdiagonal-positive.md) | 281 | `result-track:3a672066641b586acef6ef43d123c9429a35699eb658afa1c5b94d24352b913d` |
| 30 | `theorem` | [initialOffDiagonal_sq](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/initialoffdiagonal-sq.md) | 285 | `result-track:7c83c14a6d757df14fc5a1d6cd87c9cb603bf68a507c2b39f568aa21fe9cd157` |
| 31 | `theorem` | [initialDiagonal_eq_tail_ratio](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/initialdiagonal-eq-tail-ratio.md) | 290 | `result-track:38c99710a10f1f8493807442c3db8663f8166d6f891ee25ccbbd0c7da7de4973` |
| 32 | `theorem` | [initialOffDiagonalSquared_eq_tail_ratio](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/initialoffdiagonalsquared-eq-tail-ratio.md) | 297 | `result-track:9215447faf7015e9c59d2a463f3dd5b527f3fbca9f39d2a0283c043bb16b0e47` |
| 33 | `def` | [cyclicVectorNorm](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/cyclicvectornorm.md) | 306 | `declaration-track:1e0b72960bf3d07744fae17e4cb6b82979f8889e1ad77c4ed81e1e0c6e440151` |
| 34 | `theorem` | [cyclicVectorNorm_sq](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/cyclicvectornorm-sq.md) | 309 | `result-track:b69c1b208c4328f2a8c551d563d428786c406819139b27823dd9a99a3f485f2f` |
| 35 | `theorem` | [sourceMeasure_dominates_restricted_volume](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/sourcemeasure-dominates-restricted-volume.md) | 315 | `result-track:63933b83ae7738f81582e5ce50f09afd0126ce0c653e42d843e5a8a677d8953f` |
| 36 | `theorem` | [momentMeasure_Ioi_positive](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/momentmeasure-ioi-positive.md) | 324 | `result-track:02c6deda722beed7b5e5487ea70681309b49d0acb9fe13fdeca1fceb778ecd04` |
| 37 | `theorem` | [exponential_majorant_integrable](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/exponential-majorant-integrable.md) | 348 | `result-track:885516320af3d2b03d24ae51c282b4a13c1627b1bb2ff269d64c0df6d0ff552f` |
| 38 | `theorem` | [source_exp_le_majorant](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/source-exp-le-majorant.md) | 355 | `result-track:1d4eee33ec1a1b63cf8e504076fdd79db0c75ddbcf94c4c5d50002ddd17d16c7` |
| 39 | `theorem` | [exponential_integrable](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/exponential-integrable.md) | 368 | `result-track:0ef62fb43ffc9c9d9f8a83d90d884ec73988bcdb0771f278a9d6cfe3230cb689` |
| 40 | `theorem` | [exponential_integral_le](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/exponential-integral-le.md) | 382 | `result-track:d7c9737a49226bffdd0cd621b1b250b174dc5aeff5d942f2d4c1e5ae2ffe8a0e` |
| 41 | `theorem` | [even_moment_tail_lower](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/even-moment-tail-lower.md) | 410 | `result-track:d4a69e2755b8fdade29873522ea229b1a330e0d5549c8e06f4575953eebb5ea4` |
| 42 | `theorem` | [no_geometric_even_moment_bound](../../../../MeasureAndIntegration/ThetaMomentMeasureNamespaced.lean/declarations/no-geometric-even-moment-bound.md) | 432 | `result-track:0c92766aec5e0ce71479f70ad7bbe67d4c8da0f7ebec8f27a3b8610ca8f5c69e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe16d8e593a65befdfc48ebe96aafe9c58f87b99adcbe17df0a1f103ee8cda7b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Varianta51016aa63f7dc2b35ca4900f4ce2cd9e62d5f21be04eff37364b2ea16aef6a9.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ThetaMomentMeasure/Varianta51016aa63f7dc2b35ca4900f4ce2cd9e62d5f21be04eff37364b2ea16aef6a9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
