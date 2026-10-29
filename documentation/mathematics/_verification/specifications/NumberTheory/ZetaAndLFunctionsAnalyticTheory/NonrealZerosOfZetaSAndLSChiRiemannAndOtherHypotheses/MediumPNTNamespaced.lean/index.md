# Verification target: Medium PNTNamespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1c6bebd6c78ecb6aad6f9f5d46997bf852abb60",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/8bdbefdcf0b7cc6f8812MediumPNT/Variant4740993f570c56492ddb3dc84e74a7b39e49d95b8b439695d1fd51ab11f22354.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1c6bebd6c78ecb6aad6f9f5d46997bf852abb60`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/8bdbefdcf0b7cc6f8812MediumPNT/Variant4740993f570c56492ddb3dc84e74a7b39e49d95b8b439695d1fd51ab11f22354.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/8bdbefdcf0b7cc6f8812MediumPNT/Variant4740993f570c56492ddb3dc84e74a7b39e49d95b8b439695d1fd51ab11f22354.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.FromPNTPlus.MellinCalculus` — import line 21; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.ZetaBounds` — import line 22; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.ZetaConj` — import line 23; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.SmoothExistence` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Support` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinInversion` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 27; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Chebyshev` — import line 28; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [psi_eq_sum_range](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/psi-eq-sum-range.md) | 41 | `result-track:6a42cd3e2f32aac6343712de987d3e45252ae582853becfd671c7a5fb6c43f70` |
| 2 | `abbrev` | [ChebyshevPsi](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/chebyshevpsi.md) | 45 | `declaration-track:9204367f6b17a51acd2803f6ddd802840dddd4badcac204460fcd349bd10b86a` |
| 3 | `theorem` | [LogDerivativeDirichlet](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/logderivativedirichlet.md) | 47 | `result-track:87d04cf7df66595b96d72f55e82e46986309816d2a073035043c21109fcc81b5` |
| 4 | `abbrev` | [SmoothedChebyshevIntegrand](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/smoothedchebyshevintegrand.md) | 57 | `declaration-track:4f7043eaa9a25eff329352f3c451c164738d56b7a1203426524a356b40a41c2f` |
| 5 | `def` | [SmoothedChebyshev](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/smoothedchebyshev.md) | 61 | `declaration-track:ca108e26d4dcc6c81b2d3d0e686ee6f6018fbf4193df8f0438d42ef23d8e8195` |
| 6 | `lemma` | [smoothedChebyshevIntegrand_conj](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/smoothedchebyshevintegrand-conj.md) | 65 | `result-track:b52497625ef4ec239089a83373f48e51b192f9c261ddb1a2b17258a1edad72d8` |
| 7 | `lemma` | [SmoothedChebyshevDirichlet_aux_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/smoothedchebyshevdirichlet-aux-integrable.md) | 88 | `result-track:9399259df2bdc8ba296516718a16bc38786e3cfb7136f8288007f96de1f6849f` |
| 8 | `lemma` | [SmoothedChebyshevDirichlet_aux_tsum_integral](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/smoothedchebyshevdirichlet-aux-tsum-integral.md) | 121 | `result-track:be45ab4899994169bca8c66b298d0c78c1b4c9a9edd068450e152a3ea66b5ce5` |
| 9 | `theorem` | [SmoothedChebyshevDirichlet](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/smoothedchebyshevdirichlet.md) | 186 | `result-track:76b33cdf79bca964f7ebd28edde706f2df763d848f277f3ef1cb4590b1779ba8` |
| 10 | `theorem` | [SmoothedChebyshevClose_aux](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/smoothedchebyshevclose-aux.md) | 284 | `result-track:f58c612652b1382b36925f55dc25b3b72ede5e7bfc11ea6bd9624ea8eb633c68` |
| 11 | `theorem` | [SmoothedChebyshevClose](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/smoothedchebyshevclose.md) | 561 | `result-track:3edcf4a422d13bd406b588bbcbf51fdf41b89f3f92ab8380a23a34ea728448a7` |
| 12 | `def` | [I₁](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/i-source-edition-9.md) | 640 | `declaration-track:d9290dd1fadc1e4e687fdd7764b30e526ee4d77975c1f7b3e910aecb3c5f78cc` |
| 13 | `def` | [I₂](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/i-source-edition-8.md) | 643 | `declaration-track:bda542c76e96643db3d9c4f81316ca0e8c34d6908ff56df4e11c41ef963a0fc6` |
| 14 | `def` | [I₃₇](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/i-source-edition-4.md) | 646 | `declaration-track:7f507d9e8118be5e10d03a13aac2e850383315c967d7386d84b71280a6be9efd` |
| 15 | `def` | [I₈](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/i-source-edition-7.md) | 649 | `declaration-track:bcd15b532c5cc8f82c049e93427d05e38aeac6cfaa2c55572184b9d2f0fdce48` |
| 16 | `def` | [I₉](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/i-source-edition-3.md) | 652 | `declaration-track:6bd6c3389a008d3b1d5d4947a6f838c7ab168816e3bed3097f29f5bbb51394a7` |
| 17 | `def` | [I₃](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/i-source-edition-10.md) | 655 | `declaration-track:fc076a36d3f6d5464fb0680fa00c7d1a91abcd7894d33556624d8e8c18c563f1` |
| 18 | `def` | [I₇](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/i.md) | 658 | `declaration-track:105f2dba2319ca05408e14257063b94057d0f8e3544027bc66c75f5db0060846` |
| 19 | `def` | [I₄](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/i-source-edition-5.md) | 661 | `declaration-track:8ddc1e47b7cb5180c669cca6a1dcc5547fe47e406ce8541a8b50e2bd115c2ef6` |
| 20 | `def` | [I₆](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/i-source-edition-2.md) | 664 | `declaration-track:221a6959cbde83431c24693369166df80ee4f8f33742c1d34f9b63fe1b4ade99` |
| 21 | `def` | [I₅](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/i-source-edition-6.md) | 667 | `declaration-track:bcb13787172d5f2db38db75539ee8bb98244dc986c4860d0fc06fc9b893e82b6` |
| 22 | `theorem` | [realDiff_of_complexDiff](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/realdiff-of-complexdiff.md) | 670 | `result-track:88537c6b15901642c7360590611845fb2f1465ad5463a078a878ebafd1e5286c` |
| 23 | `def` | [LogDerivZetaHasBound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/logderivzetahasbound.md) | 675 | `declaration-track:37fcaa6a155171f2b8a82fe34dac82c141ccc214ab3f65271a41500dfbf71398` |
| 24 | `def` | [LogDerivZetaIsHoloSmall](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/logderivzetaisholosmall.md) | 678 | `declaration-track:1fdd94632b827bb1261c19811043a6b2e43587de66bcd896f5b87b732d757342` |
| 25 | `theorem` | [dlog_riemannZeta_bdd_on_vertical_lines_explicit](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/dlog-riemannzeta-bdd-on-vertical-lines-explicit.md) | 681 | `result-track:c34bb4248090d600528b8b750daa21fad66de96cbd7dc81f0c87d964d4955204` |
| 26 | `theorem` | [dlog_riemannZeta_bdd_on_vertical_lines](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/dlog-riemannzeta-bdd-on-vertical-lines.md) | 685 | `result-track:1126dad75e33a73ea5e8a31ee5490d27bd379d32151799017dc56d57882c9064` |
| 27 | `theorem` | [SmoothedChebyshevPull1_aux_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/smoothedchebyshevpull1-aux-integrable.md) | 691 | `result-track:8bf278aadd0be9694bf12324111f4435cc5619a591ff40999955eb577b4a5bd4` |
| 28 | `lemma` | [BddAboveOnRect](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/bddaboveonrect.md) | 752 | `result-track:534207010a1bcb110a0adb4c831e1497d66a4653a48dcb12336c8af8229a24c8` |
| 29 | `theorem` | [SmoothedChebyshevPull1](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/smoothedchebyshevpull1.md) | 758 | `result-track:90a5542be4ba21a105cc18530ee082b16f6de7cbcee70c6e4333959da002080d` |
| 30 | `lemma` | [interval_membership](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/interval-membership.md) | 926 | `result-track:c0893ed3be2ef2eb8052d694dd38ffddd3f91cd241c5eee041f9bddf8e066bfb` |
| 31 | `lemma` | [verticalIntegral_split_three_finite](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/verticalintegral-split-three-finite-source-edition-2.md) | 934 | `result-track:f7cc8cdca2daf857695dd816fc547b69839d5ce5623294664fc273129e1988ab` |
| 32 | `lemma` | [verticalIntegral_split_three_finite'](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/verticalintegral-split-three-finite.md) | 949 | `result-track:943428bed285b25fa2a169df5f7674b2da46f7c5baec259c1db4beee5e14169c` |
| 33 | `theorem` | [SmoothedChebyshevPull2_aux1](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/smoothedchebyshevpull2-aux1.md) | 965 | `result-track:e21bd12a3ad39d68812a410abc69f818a86eedd8dd899b149c2ec866fc579621` |
| 34 | `theorem` | [SmoothedChebyshevPull2](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/smoothedchebyshevpull2.md) | 983 | `result-track:e0ec7947d2df6ac438306a9008dd96bbdf14f51f41830b69b0edb7fade9d1ca1` |
| 35 | `theorem` | [ZetaBoxEval](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/zetaboxeval.md) | 1170 | `result-track:f2abe02388bdb0831b67b9fe2e65e96cc2e53d9ee0b7aca6d140bc51df355e64` |
| 36 | `theorem` | [poisson_kernel_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/poisson-kernel-integrable.md) | 1189 | `result-track:f09b8df9f5078e92089d0d2d7fbc166bf23f4684666524561356a97c1caa2df7` |
| 37 | `theorem` | [ae_volume_of_contains_compl_singleton_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/ae-volume-of-contains-compl-singleton-zero.md) | 1203 | `result-track:1f4d34270a5bfdf600cc42bced000420883e638b4370d13790168a61a0954b8e` |
| 38 | `theorem` | [integral_evaluation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/integral-evaluation.md) | 1227 | `result-track:987bc243f5cc1f462e27ee730165b30ce8d701c7e7c3e69020aefc444c685548` |
| 39 | `lemma` | [IBound_aux1](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/ibound-aux1.md) | 1294 | `result-track:9e06237e276adfe9bbd7f7dd47faed7d3ebda6a09a7b9b3004e18c2d6580d4d5` |
| 40 | `theorem` | [I1Bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/i1bound.md) | 1326 | `result-track:b1e7208daef22a9dba6873395e9235f9f5cd462cdb6b90b087cd758b8e559ea6` |
| 41 | `lemma` | [I9I1](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/i9i1.md) | 1591 | `result-track:eeba84ca12e06263f49e5722f202dce5e0fda03df6617713883d29cab78192cf` |
| 42 | `theorem` | [I9Bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/i9bound.md) | 1604 | `result-track:8b938fcd35f67b9732b2d415ca96ad445bacceba6b11c5cb39c35404cb8107de` |
| 43 | `lemma` | [one_add_inv_log](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/one-add-inv-log.md) | 1620 | `result-track:5bea17d17b7cc49c7ea33cdb0e71fcaf5ff3d0487266c03d841dd1c306926f0a` |
| 44 | `lemma` | [I2Bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/i2bound.md) | 1624 | `result-track:c6e915e68e7dc97c393b6e7b3fe471a17b6935df81d3fca41d0e405513fae6eb` |
| 45 | `lemma` | [I8I2](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/i8i2.md) | 1770 | `result-track:91bebd9784764b18588cd3ce07b7a0bfb2caa7c4e9479b4c7dee52cbd9dc7151` |
| 46 | `lemma` | [I8Bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/i8bound.md) | 1784 | `result-track:0ce383b4590c2c7db2eee1c90b41a1da1a6b2dc9a16b8dfb5c5d620ac3a9984a` |
| 47 | `lemma` | [log_pow_over_xsq_integral_bounded](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/log-pow-over-xsq-integral-bounded.md) | 1801 | `result-track:29705e35cbafd34cca4b835c64f7360ef70dbb8bd5ebb65eea90db964267d0de` |
| 48 | `theorem` | [I3Bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/i3bound.md) | 2026 | `result-track:c0bae80c68f4c46ffcb7909338cbf16262c24e03811f7f90cc328212442d4f26` |
| 49 | `lemma` | [I7I3](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/i7i3.md) | 2267 | `result-track:b0c8a6f6177c1b6949de4e3ae3b5caf292365b0d079949995b62b44506d3cecd` |
| 50 | `lemma` | [I7Bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/i7bound.md) | 2280 | `result-track:5b61dcd541de49ea1b843910bb06c2005f2be844ecfe8f73f7953463d3b935b1` |
| 51 | `lemma` | [I4Bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/i4bound.md) | 2294 | `result-track:3c3dac3e7d472ab0b10bfdbf07052178a68812213ee4027eb460e883c2cace54` |
| 52 | `lemma` | [I6I4](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/i6i4.md) | 2668 | `result-track:9720cf8174198e1359be5feae3c7d8f2c3f0111a9a92de6e02968f0f7bc15e57` |
| 53 | `lemma` | [I6Bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/i6bound.md) | 2681 | `result-track:dd67e5c84e48030203be04bf2811040d93aa4967550ab57ead1106d883b397a9` |
| 54 | `lemma` | [I5Bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/i5bound.md) | 2698 | `result-track:a967af97b2c88f5008d48265df32590b98ce15d2af15a6a5723b9b11145ff692` |
| 55 | `lemma` | [LogDerivZetaBoundedAndHolo](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/logderivzetaboundedandholo.md) | 2838 | `result-track:f50a60e512f6e50ec30d7b93a18a903b5ca65470b785a591de1f8ffba9cdd49b` |
| 56 | `lemma` | [MellinOfSmooth1cExplicit](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/mellinofsmooth1cexplicit.md) | 2863 | `result-track:ea986d01c0dd2fdcb03ca23039117ce834d380293359bf063ddbadf8d62492f2` |
| 57 | `lemma` | [x_ε_to_inf](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/x-to-inf.md) | 2881 | `result-track:d3dbbfd6d6ce4f9ad7fa1f15d87e4981a95c8d375031881c5f9f8a3ede591aa5` |
| 58 | `theorem` | [MediumPNT](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTNamespaced.lean/declarations/mediumpnt.md) | 2938 | `result-track:a2db9b1f0dd3f0044c24b4f71ac7690b4bd509c2bfc2d244028cc75d4af43354` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=18ac475964a7a1655e985a17e5f1a9af96f05b43253aba1425f861e9ef3b1f6b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/8bdbefdcf0b7cc6f8812MediumPNT/Variant4740993f570c56492ddb3dc84e74a7b39e49d95b8b439695d1fd51ab11f22354.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/8bdbefdcf0b7cc6f8812MediumPNT/Variant4740993f570c56492ddb3dc84e74a7b39e49d95b8b439695d1fd51ab11f22354.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
