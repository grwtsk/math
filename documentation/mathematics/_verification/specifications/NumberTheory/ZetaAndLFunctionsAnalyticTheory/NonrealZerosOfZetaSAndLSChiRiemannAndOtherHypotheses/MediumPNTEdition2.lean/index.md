# Verification target: Medium PNTEdition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd0090e4a15b15a774a62017b81284b601871ee8",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variant3ce679cd409b134f5c8f3068ed46daad75236cdb79e02dcb230949315002b7cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd0090e4a15b15a774a62017b81284b601871ee8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variant3ce679cd409b134f5c8f3068ed46daad75236cdb79e02dcb230949315002b7cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MediumPNT/Variant3ce679cd409b134f5c8f3068ed46daad75236cdb79e02dcb230949315002b7cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.FromPNTPlus.MellinCalculus` — import line 16; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.ZetaBounds` — import line 17; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.ZetaConj` — import line 18; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.SmoothExistence` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Support` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinInversion` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Chebyshev` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [psi_eq_sum_range](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/psi-eq-sum-range.md) | 42 | `result-track:12f2e2a6430d823af6d2a2b424a59f1fd33a6c0079c5d92d75e24b22afa74496` |
| 2 | `abbrev` | [ChebyshevPsi](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/chebyshevpsi.md) | 48 | `declaration-track:433948141af8c3f4fbfbf4e0bef52c71d9c3a1461adc5ea262366be515423240` |
| 3 | `theorem` | [LogDerivativeDirichlet](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/logderivativedirichlet.md) | 51 | `result-track:bc2b1cd213966403a48a20d261b63fa4d169215f6fdfabd5a977380377459e68` |
| 4 | `abbrev` | [SmoothedChebyshevIntegrand](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/smoothedchebyshevintegrand.md) | 62 | `declaration-track:631fc45a188f53e7cf89efef869737e3596d47b270da4ab6dbd5851f9f105e15` |
| 5 | `def` | [SmoothedChebyshev](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/smoothedchebyshev.md) | 67 | `declaration-track:2c029155504213d24f28571c38bafd939a3dc7d0f73aa1f85c03808a60062f14` |
| 6 | `lemma` | [smoothedChebyshevIntegrand_conj](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/smoothedchebyshevintegrand-conj.md) | 73 | `result-track:850c1360a2cd1454e6e113f9009675da4d4e4afe067fb6edb69d67173ca6d578` |
| 7 | `lemma` | [SmoothedChebyshevDirichlet_aux_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/smoothedchebyshevdirichlet-aux-integrable.md) | 98 | `result-track:51baa1e4d89eac2ea8cdebf9ba18dfad54ca0aed4c4c14310221baf63df3f92a` |
| 8 | `lemma` | [SmoothedChebyshevDirichlet_aux_tsum_integral](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/smoothedchebyshevdirichlet-aux-tsum-integral.md) | 133 | `result-track:3ff9d5025b29f1324bfc21b653e60f164aca886ee3482d3e524f3785d532eb1e` |
| 9 | `theorem` | [SmoothedChebyshevDirichlet](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/smoothedchebyshevdirichlet.md) | 204 | `result-track:0b8a3eb8ce26235015a27d1f63caadf7a26e860efa39bb0d227ea1b61e0a5b8d` |
| 10 | `theorem` | [SmoothedChebyshevClose_aux](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/smoothedchebyshevclose-aux.md) | 303 | `result-track:75b33ff3930ec1541d2b61b2f504a9d006ccb48e00db21a5a54dc3de93b0d2c2` |
| 11 | `theorem` | [SmoothedChebyshevClose](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/smoothedchebyshevclose.md) | 606 | `result-track:87a39427857da8a51636748db7b872c8b768b31bab96f25f14d251825ed0cfa5` |
| 12 | `def` | [I₁](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/i-source-edition-10.md) | 705 | `declaration-track:ca333622845cbe1135bb5ff867895f577fe1582bbc71a454fb820fd06f5b4dc3` |
| 13 | `def` | [I₂](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/i.md) | 709 | `declaration-track:074e1c51ea8328c6cc2db4f7e27ee0f3b1fa3215b07cd03ab38f78a78544d664` |
| 14 | `def` | [I₃₇](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/i-source-edition-7.md) | 713 | `declaration-track:8187c7bf58c1b3ebacaf6352b2aedd14504ac708a64d007f9669f50df10cafe5` |
| 15 | `def` | [I₈](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/i-source-edition-2.md) | 717 | `declaration-track:1898d7d3d3108b021a30bfc5426c7f7b3b5be5ebfd56be9967ce1f1ffa91cb21` |
| 16 | `def` | [I₉](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/i-source-edition-5.md) | 721 | `declaration-track:6e1fa5041d27b0bde6cb624d5dc5185fb4e140085b3088ae440842d283cc3e32` |
| 17 | `def` | [I₃](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/i-source-edition-6.md) | 725 | `declaration-track:7e1476531aefc0797b3964b14b5cf20d26e680a779b43e9bd2895b8c769ebc19` |
| 18 | `def` | [I₇](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/i-source-edition-3.md) | 729 | `declaration-track:1b0188eff234785eb4761df07a03c7512729baad23066ed8622bea09cd24319b` |
| 19 | `def` | [I₄](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/i-source-edition-8.md) | 733 | `declaration-track:8cce388fe5d6d4419aad93f87deaa0970a980e3ea17812f0a3c30973d6dfc322` |
| 20 | `def` | [I₆](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/i-source-edition-9.md) | 737 | `declaration-track:bd05de38bdc6fc02495ee894aff2df44e6ec2103f45af02d5f9706755a4395b1` |
| 21 | `def` | [I₅](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/i-source-edition-4.md) | 741 | `declaration-track:389125c351ab8b37d0133ebe9444b60b213f2032ec43e266959f946b4d538a47` |
| 22 | `theorem` | [realDiff_of_complexDiff](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/realdiff-of-complexdiff.md) | 745 | `result-track:5442efaa131791f10c4fa370dc79c53096e749f6aca76b97c7323a8eb59cd765` |
| 23 | `def` | [LogDerivZetaHasBound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/logderivzetahasbound.md) | 751 | `declaration-track:03f48feed0a766360dc8e35bbd3f42a30d371901c8dfedec82adb9951cdcdf3c` |
| 24 | `def` | [LogDerivZetaIsHoloSmall](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/logderivzetaisholosmall.md) | 755 | `declaration-track:6ea8e517d183d9c7c85005cada84e0e2c2a123ad4eae8f4f5f6796d1ec5f1fb4` |
| 25 | `theorem` | [dlog_riemannZeta_bdd_on_vertical_lines_explicit](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/dlog-riemannzeta-bdd-on-vertical-lines-explicit.md) | 759 | `result-track:8712bd7af00e92f6d7e039349e41bafb7ff92d04eee35b031a6439b56d439c3c` |
| 26 | `theorem` | [dlog_riemannZeta_bdd_on_vertical_lines](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/dlog-riemannzeta-bdd-on-vertical-lines.md) | 764 | `result-track:f5fdc1028294407fd1fd1ce25db265459ba134ef400d80e3ce80eabb6ee65f2a` |
| 27 | `theorem` | [SmoothedChebyshevPull1_aux_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/smoothedchebyshevpull1-aux-integrable.md) | 771 | `result-track:d3243640d9985cebd6a5028e10ededf3595eeddaf8fe3f06bd8b2bc3b4fce65c` |
| 28 | `lemma` | [BddAboveOnRect](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/bddaboveonrect.md) | 833 | `result-track:8e59c7a1414eacb55bd3d49545fc4118d5b43949510e697f5e3bfce6484beb2e` |
| 29 | `theorem` | [SmoothedChebyshevPull1](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/smoothedchebyshevpull1.md) | 840 | `result-track:754bdb7bdb5372a19d6f95139416287157ab2b68757aa62e85901f4d4cb82aff` |
| 30 | `lemma` | [interval_membership](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/interval-membership.md) | 1011 | `result-track:730a1b45d64ce3265bde61e44bf2ffd689323633cd51a2e9235bdc4a36c26235` |
| 31 | `lemma` | [verticalIntegral_split_three_finite](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/verticalintegral-split-three-finite-source-edition-2.md) | 1020 | `result-track:d2088a0540f76f0328946677a00c7c9ad9d6f899878b3a6dd0aac7e612b769af` |
| 32 | `lemma` | [verticalIntegral_split_three_finite'](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/verticalintegral-split-three-finite.md) | 1036 | `result-track:cf5f0c980566b9c5191e10fbc4829eb8ea37c41b4c9f556b84be64d23abdf1b4` |
| 33 | `theorem` | [SmoothedChebyshevPull2_aux1](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/smoothedchebyshevpull2-aux1.md) | 1053 | `result-track:a5af2c1748a456e5eaefd22f62471e9596b135cf7d75175f78683a40e4ae4428` |
| 34 | `theorem` | [SmoothedChebyshevPull2](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/smoothedchebyshevpull2.md) | 1072 | `result-track:09cd3baef4695bb2eb6ca7ac171331743fadac41325bd65d167c623afd7979bc` |
| 35 | `theorem` | [ZetaBoxEval](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/zetaboxeval.md) | 1255 | `result-track:fda0aa115e04494fde640e3d87f7f04efe36ac61991225d89f477b9ab21a3479` |
| 36 | `theorem` | [poisson_kernel_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/poisson-kernel-integrable.md) | 1275 | `result-track:e09443228250d22d7cdb2e6f631821d2337dc19b543b82c36735edd5ca9524b4` |
| 37 | `theorem` | [ae_volume_of_contains_compl_singleton_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/ae-volume-of-contains-compl-singleton-zero.md) | 1290 | `result-track:1247ac5f55def152b5a93a84441f3c27dbbff322c5dfdb14d2f345b7cdbd7101` |
| 38 | `theorem` | [integral_evaluation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/integral-evaluation.md) | 1319 | `result-track:a348222e1e9696288fa90562fed1bf0fe54bfc66d2b3671698978f245343cd33` |
| 39 | `lemma` | [IBound_aux1](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/ibound-aux1.md) | 1391 | `result-track:4d1c8eafd68edcb01f03c9e86cb9a3f134be594d7434dc60f6723d4cd7e3d88a` |
| 40 | `theorem` | [I1Bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/i1bound.md) | 1422 | `result-track:295e3c58515ad4c8bcc6c8c97641b556da9ea9ad8d78ad4618b8e6c21abd8037` |
| 41 | `lemma` | [I9I1](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/i9i1.md) | 1734 | `result-track:c401968afcf8631d5d06e17f9117dba1c108bddd92c91c626a6e88e57e94d68e` |
| 42 | `theorem` | [I9Bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/i9bound.md) | 1748 | `result-track:2312569402795ab22d482dc9d17a8abf41f2de157698184007bb78e9145dfd8f` |
| 43 | `lemma` | [one_add_inv_log](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/one-add-inv-log.md) | 1764 | `result-track:0f4e2f3cd85ecb9a5baf79dafbb91f2c70fe3e769383c4f7c4a181d0f9161dbf` |
| 44 | `lemma` | [I2Bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/i2bound.md) | 1769 | `result-track:12a371fa4b49ce89a2eac2d1c5f10bd4115e682bf0f732189c9f58df5172b210` |
| 45 | `lemma` | [I8I2](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/i8i2.md) | 1915 | `result-track:aef4bf9fba88aa7f0053181d5f07761a9cc8ebd7d5ef732b83aaedaa75afe409` |
| 46 | `lemma` | [I8Bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/i8bound.md) | 1930 | `result-track:5a44d65e98af25cf590f0631d3f2580847d4044c6fe053472a65ec12311409dd` |
| 47 | `lemma` | [log_pow_over_xsq_integral_bounded](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/log-pow-over-xsq-integral-bounded.md) | 1948 | `result-track:0be3983971e33bb8e09f9e282a9adb6bd4dbd083fa8275a2ceb1e098639fce66` |
| 48 | `theorem` | [I3Bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/i3bound.md) | 2198 | `result-track:f4dbfdffeb71b9dfa49115ca354362332f91e47a5346cfaa33cbad9770690e5c` |
| 49 | `lemma` | [I7I3](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/i7i3.md) | 2469 | `result-track:142f4ad6a03857b4af79a381866d4c1c76247e7cd0e3b3cdbe6dd66bd6bb758d` |
| 50 | `lemma` | [I7Bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/i7bound.md) | 2483 | `result-track:e096cd2877b5cbf72fcbcbd427819fd1756bedc0e6049b47e98fbd83cfa01656` |
| 51 | `lemma` | [I4Bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/i4bound.md) | 2498 | `result-track:451fda3f8e87b55beb610c2dd89d75b5c8164f62dc95824c6bb01acf8b470567` |
| 52 | `lemma` | [I6I4](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/i6i4.md) | 2870 | `result-track:27aa54e2158f573bc36c864f12ba227982fa34c00d05ec0bd4eb0f8dd1806238` |
| 53 | `lemma` | [I6Bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/i6bound.md) | 2884 | `result-track:3a4305cd2a3c8f63ee5a4d17a3d7dec5093b55a60897a6a371bf7af18d7dd578` |
| 54 | `lemma` | [I5Bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/i5bound.md) | 2901 | `result-track:4e3d7fcc61668fb822b397e642229541d4cd9b17f21ee226a8cdd67b5a8ceaad` |
| 55 | `lemma` | [LogDerivZetaBoundedAndHolo](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/logderivzetaboundedandholo.md) | 3051 | `result-track:9f412c515783f16734dbb4bf173b926e3d6123b46cfd0a87af2b0a5a383418d9` |
| 56 | `lemma` | [MellinOfSmooth1cExplicit](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/mellinofsmooth1cexplicit.md) | 3077 | `result-track:8aac036c07d78cace9d90002b096c5cc134803e24007667631e106ab6cfbf883` |
| 57 | `lemma` | [x_ε_to_inf](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/x-to-inf.md) | 3097 | `result-track:00b3b228893baaec541ce89b3a501415b230d8b6c0459f405a2e37679b8439ff` |
| 58 | `theorem` | [MediumPNT](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/MediumPNTEdition2.lean/declarations/mediumpnt.md) | 3159 | `result-track:8876ff96da11a467f19817bb5c269fc7213755063c9a0af86316236b903f3112` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1f916e8418a135a3e8deecb7f5e7f5d90fea6b6d2953620b368a8d6449ef7796 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variant3ce679cd409b134f5c8f3068ed46daad75236cdb79e02dcb230949315002b7cb.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/MediumPNT/Variant3ce679cd409b134f5c8f3068ed46daad75236cdb79e02dcb230949315002b7cb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
