# Verification target: FKS2 Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4bc63a57afc465f27db885b1686b1f5e58591aef",
  "lexical_observation_count": 172,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4bc63a57afc465f27db885b1686b1f5e58591aef`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Pi` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Prod` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Module.Defs` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.OfScientific` — import line 11; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.SecondaryDefinitions` — import line 12; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.FioriKadiriSwidinsky.FioriKadiriSwidinsky` — import line 13; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.BKLNW.BKLNW` — import line 14; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.RosserSchoenfeld.RosserSchoenfeldPrime` — import line 15; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.LogTables` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [g_bound](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/g-bound.md) | 52 | `declaration-track:65b16adddac1adccea9efb2e458a8bb3de16535792ffae4b2c3ad62499668f57` |
| 2 | `theorem` | [lemma_10_substep](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/lemma-10-substep.md) | 63 | `result-track:a87fa6873f85862fbfa23ee5a85e1cbc2720e6b09950c0ed7e54e4a8e9d026fd` |
| 3 | `theorem` | [lemma_10_substep_2](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/lemma-10-substep-2.md) | 92 | `result-track:5972c3273e12fa1e4f2e9bdda359dce833ea9b35687a9edba9416cac6b33bd52` |
| 4 | `theorem` | [lemma_10a](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/lemma-10a.md) | 113 | `result-track:8faf9c69d3a11c418e3886fe829bf065f9f1f44365d0262be594f3a342f8facc` |
| 5 | `theorem` | [lemma_10b](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/lemma-10b.md) | 137 | `result-track:30eea6d8ecc9518294d0bc2a55f2bccd05238678a767d4992754e581f33d0935` |
| 6 | `theorem` | [lemma_10c](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/lemma-10c.md) | 173 | `result-track:3feb29ec2d6c864a5ef0c2186d0f30039f0c70f9499b22b3ad22deabad8818f5` |
| 7 | `theorem` | [corollary_11](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/corollary-11.md) | 209 | `result-track:fb5219036ff372367768b433ad2a71f5a661b73b197751bd60640f024e1d4c88` |
| 8 | `def` | [dawson](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/dawson.md) | 225 | `declaration-track:5906829ee11fa46d87a46ad26e6e0d38a380fccc906b1cddb4afd4ae81bee4ed` |
| 9 | `lemma` | [deriv_dawson](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/deriv-dawson.md) | 227 | `result-track:15c42d1cc3daba008bf2772175bfc8d3d380c02089d07074593adbe535696c67` |
| 10 | `lemma` | [differentiable_dawson](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/differentiable-dawson.md) | 237 | `result-track:f8c2323b8521abd5e106c2f169cf258f1704d650a7206a5eed540cf1dee66331` |
| 11 | `lemma` | [continuous_dawson](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/continuous-dawson.md) | 243 | `result-track:9216ede12209fa890bf05d31dc32cf0f6be7738d865027a665b90e16496f3698` |
| 12 | `lemma` | [dawson_nonneg](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/dawson-nonneg.md) | 249 | `result-track:dcc226ed12f8410a17c9720f72a2e4dbabb186894b669a0169bade8a78f71e41` |
| 13 | `lemma` | [dawson_one_pos](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/dawson-one-pos.md) | 252 | `result-track:e9e36f34c4f5d4723589b52efe0015f43ed7297ce54fd3649da706ed198212a7` |
| 14 | `lemma` | [filter_tendsto_dawson_at_top_zero](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/filter-tendsto-dawson-at-top-zero.md) | 257 | `result-track:e20fa4e1805933b8b0572301527beccbd7b707cfd18f5f777b4a7504c0e36b81` |
| 15 | `lemma` | [dawson_exists_M](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/dawson-exists-m.md) | 291 | `result-track:3104348d58a753b0c44cff14af038efab1b718baa375e1e04eec9c238df2059d` |
| 16 | `lemma` | [dawson_exists_max_Icc](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/dawson-exists-max-icc.md) | 299 | `result-track:055392f34f08cc4963a5fc88c8e3b3f282d4504fc82be7a924bbe9b4f9f44658` |
| 17 | `lemma` | [dawson_pos](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/dawson-pos.md) | 305 | `result-track:7b86e803e46f42f48ff3a2c2b7e183aebea4fade703e4ecf74db4d65141aecb0` |
| 18 | `lemma` | [hasDerivAt_exp_sq](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/hasderivat-exp-sq.md) | 311 | `result-track:caf259d3ffa9c7df9bc2eff80d9ce9ccddce916775b1818713d442a087387166` |
| 19 | `lemma` | [F_strictAnti](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/f-strictanti.md) | 317 | `result-track:e54921469f9542f213ca4f9198e21b5e34502858f0ed003847b788a0ebcf9976` |
| 20 | `lemma` | [pos_of_deriv_pos_of_zero](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/pos-of-deriv-pos-of-zero.md) | 332 | `result-track:d9d90906332bf0212e422bd30ce5a1bf75c0dfbc39f9866cf21e57af099958bd` |
| 21 | `def` | [S6](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/s6.md) | 339 | `declaration-track:69bf138c7ec121e55a605111f3bd0f3c20e8bc9c35b1e338cb306878221f862c` |
| 22 | `def` | [S5](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/s5.md) | 343 | `declaration-track:857c5c3cdc6e83f75371463a22fc82214a27fd3328fcc230a9c648fa2758e572` |
| 23 | `lemma` | [hasDerivAt_S5](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/hasderivat-s5.md) | 346 | `result-track:88274ec1bbe5746f7662878fb989852dbdeda9d094b30902ff65bf700b641efb` |
| 24 | `lemma` | [hasDerivAt_S6](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/hasderivat-s6.md) | 362 | `result-track:862b91f027a28c57a0a0d51bb6da01cabee6ec77c072e7b9dba1355e7bb0e4af` |
| 25 | `lemma` | [dawson_lt_S6](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/dawson-lt-s6.md) | 369 | `result-track:1da5de32b2a77e3e5cd18f42ff5b700f49e5835d6952fbc10525236b9cd86ac7` |
| 26 | `lemma` | [S6_0924_bound](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/s6-0924-bound.md) | 401 | `result-track:e13708e199ef100db11b1c440438742f1005fe4c3f53325e0525de4bfc59465d` |
| 27 | `theorem` | [dawson_0924_bound](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/dawson-0924-bound.md) | 405 | `result-track:74459981fdc3110c5e6821c512e3fdee3c074d78e065f8300d56a1c1b7e24cd7` |
| 28 | `lemma` | [S5_lt_dawson](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/s5-lt-dawson.md) | 408 | `result-track:5ac3ffa42fb95f57fa41bfd497ede784396871d58705f125d96e77ea8329304e` |
| 29 | `lemma` | [S5_0925_bound](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/s5-0925-bound.md) | 439 | `result-track:07e5c12558f25a685ac79c6930ec2835239b02032d2b28813c295d229a441c75` |
| 30 | `theorem` | [dawson_0925_bound](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/dawson-0925-bound.md) | 443 | `result-track:f9aabc4567c4de8b93aac3dd087b46233ef038459c5c95718f207f55d43b385c` |
| 31 | `lemma` | [crit_ge_of_F_pos](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/crit-ge-of-f-pos.md) | 446 | `result-track:4a80c5155e44cafd7032e4be1129b649c01db0c861b908e1531a374d3b2c974e` |
| 32 | `lemma` | [crit_le_of_F_neg](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/crit-le-of-f-neg.md) | 455 | `result-track:6fdbc2417cc1537d75bb5e6ca1c2fc73f1b586d98ec6b2451180daaf853f5bf3` |
| 33 | `lemma` | [dawson_exists_critical_global_max](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/dawson-exists-critical-global-max.md) | 464 | `result-track:ace18890dd11c6f0e9183718b4abf90b4b77de97325ce7cfe7079c4d581aa612` |
| 34 | `theorem` | [remark_after_corollary_11](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/remark-after-corollary-11.md) | 509 | `result-track:be7f0f00c0910cd3c5b81d9314db7b1d5cf917d19948d50fc2c5e5b353b58f51` |
| 35 | `def` | [ν_asymp](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/asymp-source-edition-2.md) | 539 | `declaration-track:9bc9ede4af8bd6b8bcafc6d754a026bd185e4a5fb37f4144e41392e3e951714b` |
| 36 | `abbrev` | [remark_15_margin](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/remark-15-margin.md) | 546 | `declaration-track:882cd663de4ff9181a9dbce74cf4fdca5176bc52ddc84b3697779d9509083a0c` |
| 37 | `lemma` | [two_mul_sqrt_div_le_quarter](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/two-mul-sqrt-div-le-quarter.md) | 552 | `result-track:1e86bd56dd614708c6c1be53cbd2f8962e0793187c594d138c827d245fdb4b7c` |
| 38 | `lemma` | [BKLNW_a1_le_two_of_ge_1000](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/bklnw-a1-le-two-of-ge-1000.md) | 587 | `result-track:12bb001461695e7abaa6f1e51c6c4951674583d0d18899544e6239defa8930f1` |
| 39 | `lemma` | [BKLNW_a2_le_five_mul_of_ge_1000](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/bklnw-a2-le-five-mul-of-ge-1000.md) | 623 | `result-track:60b6fb54cfae76b57aa4c240be1b8f2a18b0e030bd7a5ad55ac503a894ad4ce6` |
| 40 | `lemma` | [sixty_thousand_mul_exp_neg_230_le](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/sixty-thousand-mul-exp-neg-230-le.md) | 739 | `result-track:f12233c784e9680b1a484abee62c5b185e899b07d5c6c554a3aefd2e34f60ed0` |
| 41 | `lemma` | [t_mul_exp_neg_one_thousandth_le_five_hundred](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/t-mul-exp-neg-one-thousandth-le-five-hundred.md) | 750 | `result-track:d7584853ad033b58f01bf7748382d476e23832eeb2df63cee023bfc81df6c2fb` |
| 42 | `lemma` | [exp_neg_five_twelfths_mul_le](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/exp-neg-five-twelfths-mul-le.md) | 772 | `result-track:08f9c68267b882ed72a17a0ad2ef1fe4619db66ab6019b9dd7afad0e22a4d543` |
| 43 | `lemma` | [part1_decay_bound](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/part1-decay-bound.md) | 794 | `result-track:df2bbda18ee783b609b0fabe594b4fc8f8aab0d78b76546dc8946a057b7f7599` |
| 44 | `lemma` | [part2_decay_bound](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/part2-decay-bound.md) | 825 | `result-track:9a5c8eefde9ced10a96385a2d537e8771dd8ed92213ae76103fa7c528ce1cb01` |
| 45 | `theorem` | [FKS_A_one_le](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/fks-a-one-le.md) | 884 | `result-track:8614bde8d9cf91e2d8dfe1e3a1172dbaab783a40f3acb4e284f4388bff941428` |
| 46 | `lemma` | [BKLNW_a1_nonneg](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/bklnw-a1-nonneg.md) | 887 | `result-track:6ec6719a937704c70bc4bc641db9bb9653844e9f8d082eda911ce6f754e72309` |
| 47 | `lemma` | [BKLNW_a2_nonneg](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/bklnw-a2-nonneg.md) | 901 | `result-track:a8070441e31b4a64b42a0223ec9625a8b2daeed6738ac929f939ce9f5a58c47a` |
| 48 | `lemma` | [term_inside_bound](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/term-inside-bound.md) | 913 | `result-track:e9922a3f4652c9d95c45228805255663ae912618d44178c0d613e2b4744387c1` |
| 49 | `theorem` | [nu_asymp_le_remark_15_margin](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/nu-asymp-le-remark-15-margin.md) | 926 | `result-track:6db21977ce6c485abfe8d6be23c4129aece5d897ab0f1dc1a3f978f1c49f2e43` |
| 50 | `theorem` | [nu_asymp_le_remark_15_margin_sub_one](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/nu-asymp-le-remark-15-margin-sub-one.md) | 991 | `result-track:f42052713339d53baae58b731b48ff25a01b6980dc8b16c5c1ad9d57d40dbda5` |
| 51 | `lemma` | [g_bound_strictAntiOn](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/g-bound-strictantion.md) | 996 | `result-track:9188bc4e214581fb73eb5aad14e1e6d3cbc3f6178fe8172048e401f6460dee7e` |
| 52 | `lemma` | [g_bound_le_of_anti](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/g-bound-le-of-anti.md) | 1004 | `result-track:531f64b9509ee2f7ef9fce9f11e28a65af97e1c8101a081fb9ce0ce4a59c61d2` |
| 53 | `lemma` | [mul_rpow_sub_div_le_admissible_bound_mul](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/mul-rpow-sub-div-le-admissible-bound-mul.md) | 1012 | `result-track:4512422a6df353feb5cfb597b4bd4c3db3d82943a6cf7266d6fc1057926fa18f` |
| 54 | `theorem` | [proposition_13](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/proposition-13.md) | 1085 | `result-track:9a565fb0c56500743f112753d3bceed2aa5350313ef196179e5c3e0963ba5bb9` |
| 55 | `lemma` | [rpow_sum_le_card](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/rpow-sum-le-card.md) | 1150 | `result-track:cba918b7e84208d75e2614c3097d614a603205af77c11dd4192574851b5ef2f7` |
| 56 | `lemma` | [inv_le_exp_neg](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/inv-le-exp-neg.md) | 1166 | `result-track:e1059453af2f75b3637bf56c01c6042e0b50c8615530553dae4312646431a652` |
| 57 | `lemma` | [corollary_14_small_adm_case1](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/corollary-14-small-adm-case1.md) | 1173 | `result-track:a48d074f89c42e43439534c5966ed2e180899cdb82b0910b7b5dbe49dbab6f68` |
| 58 | `lemma` | [corollary_14_small_adm_case2](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/corollary-14-small-adm-case2.md) | 1189 | `result-track:e3909f98820169fdd7fd8122cfe7d5360bc765039f80a0e02be7566bafd67f31` |
| 59 | `lemma` | [corollary_14_small_adm_case3](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/corollary-14-small-adm-case3.md) | 1210 | `result-track:71b395ccc6acd6fa519617c65af6591d0cdfeb586f5c1e046d17879ab30faa49` |
| 60 | `lemma` | [corollary_14_small_adm](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/corollary-14-small-adm.md) | 1230 | `result-track:265245ac8bac501faac01831b260a329c17bcf08217e54a066e4b3eadd9eb159` |
| 61 | `lemma` | [floor_30_div_log2_eq_43](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/floor-30-div-log2-eq-43.md) | 1267 | `result-track:d8ed9bbc04d771965fd2053d5b173126bee1cbfc393ff451d71fe6ae01a2c6e1` |
| 62 | `lemma` | [bklnw_a1_30_le](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/bklnw-a1-30-le.md) | 1273 | `result-track:6d53854ed81328702a8353dbd5473f9982ac41f9f1212e5af1a0ec45af606faa` |
| 63 | `lemma` | [bklnw_f_exp30_le](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/bklnw-f-exp30-le.md) | 1287 | `result-track:13c7f903189e8851da9eab582c1fa62f63e18a75d884874718f2268d33cce402` |
| 64 | `lemma` | [bklnw_f_pow44_le](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/bklnw-f-pow44-le.md) | 1299 | `result-track:30fffdac6e8cd15b26c09801fc410ea5b9b06e7b0e38687c589fe82198a56986` |
| 65 | `lemma` | [bklnw_a2_30_le](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/bklnw-a2-30-le.md) | 1315 | `result-track:c15d1c3bae1d90cc1bab8b5708860b9539e247c28d28fd5146d69bc4c9284a50` |
| 66 | `lemma` | [coeff_bound_30](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/coeff-bound-30.md) | 1339 | `result-track:0bfaf44eb4d35a42161b17181b9646dac9de5586c77c2edb69d3b4c72544d347` |
| 67 | `lemma` | [nu_asymp_bound_30](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/nu-asymp-bound-30.md) | 1395 | `result-track:ff3508b6e0123d57e84381a553946361f572a9a5317f997ce50abb7cae8716a8` |
| 68 | `lemma` | [epsi_classicalBound_30](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/epsi-classicalbound-30.md) | 1477 | `result-track:9e79f6bdf4c5c16e5317e7e43b7af0b4a0d6b40a864b56c1a748caee80951fbf` |
| 69 | `theorem` | [corollary_14](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/corollary-14.md) | 1493 | `result-track:28f25cef2d8a74a2541c587215909dcaab36981aceac64a65e83c55f834487c8` |
| 70 | `theorem` | [remark_15'](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/remark-15.md) | 1570 | `result-track:2cfec4f7560f7587bd45566ffbcb9496dd52cd0f3fb69f6b20819ec7daf3ed68` |
| 71 | `theorem` | [remark_15](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/remark-15-source-edition-2.md) | 1660 | `result-track:b199ae85968067f2e7f4d6f485acbf7ac50cc79f52309397f6c1e27c14ee2205` |
| 72 | `theorem` | [l0](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/l0.md) | 1677 | `result-track:ece87b2804a7a69bafe5bf3f60be17673bc5b6f39332e14ae49b6d89ce4e8889` |
| 73 | `theorem` | [Li_identity](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/li-identity-source-edition-2.md) | 1683 | `result-track:83510e07ac68996b0b048c00b0ca0ad14813cc99085ea5267954b007b580f0c4` |
| 74 | `theorem` | [l1](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/l1.md) | 1701 | `result-track:c18f262e03ce3737463e76155cf9792b99b998ef07246501f4859c737b837a3d` |
| 75 | `theorem` | [l2](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/l2.md) | 1705 | `result-track:c2f0444149ea8c74a5f62ce0e5b2d572c2b7234a2022523245b04213206e4538` |
| 76 | `theorem` | [he](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/he.md) | 1709 | `result-track:7bb319c7787b01ce96f863297fd7d4ea256e6926d9cee908baa913bd3c42c26a` |
| 77 | `theorem` | [l3](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/l3.md) | 1717 | `result-track:95d7192a0d2707eaea3c5f2afdd82c7582d0cb63a9ffb1bed2a9440e923ef58c` |
| 78 | `theorem` | [eq_17](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/eq-17.md) | 1736 | `result-track:ed9225c43be2a956d7623c9bee8fbf82bcab9d39dc3ae1ee2d50a996c47956c5` |
| 79 | `def` | [δ](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/anonymous.md) | 1760 | `declaration-track:8fbd3dc633775aa28001792ff92340c58da9ab5bd0feffa3ba12b16634fdcbd6` |
| 80 | `theorem` | [eq_30](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/eq-30.md) | 1777 | `result-track:798ca1065454cbedc71e4c2786ff53ad2e35740a9059947f645ede706cc51d04` |
| 81 | `theorem` | [lemma_12](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/lemma-12.md) | 1858 | `result-track:8ddd557cd7cfeca48cf20ff4cbe960908728abe3d7d248c312208dc64842e1ea` |
| 82 | `def` | [μ_asymp](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/asymp.md) | 2025 | `declaration-track:90b3aa159f02bb6201d26a1645d3f5bcc9a80e270de65e2fe84faf07202e7923` |
| 83 | `lemma` | [admissible_bound_mul](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/admissible-bound-mul.md) | 2038 | `result-track:12e80e9c785088371eb0b185e0599869977bdd7b572667533789d6c270b5abda` |
| 84 | `lemma` | [ratio_eq_g](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/ratio-eq-g.md) | 2045 | `result-track:24284e8466a562cb9ef5d7465c194e08297057401e024822e3152a668f44e652` |
| 85 | `lemma` | [ratio_mono](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/ratio-mono.md) | 2065 | `result-track:3944f6d00ea3c1c36cfd5c472ee9593b5345fff0c3329f0127b77f4f9aa8f9b3` |
| 86 | `lemma` | [m_simplify](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/m-simplify.md) | 2098 | `result-track:a19ba9a723b15cb67ef72f33dd9afc07dadb7fbe4435be51b4101dd9b3c87c2f` |
| 87 | `lemma` | [admissible_bound_pos](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/admissible-bound-pos.md) | 2111 | `result-track:4ec42c7ba207241fbe1a4f59d19404ef76f5bbe686510c4aeda9c25068de5111` |
| 88 | `lemma` | [Eθ_nonneg](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/e-nonneg.md) | 2118 | `result-track:4980cb72159033567028c1dd0802ce261c0f209ab3d754c4abe2c916dbc0773d` |
| 89 | `lemma` | [delta_nonneg](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/delta-nonneg.md) | 2124 | `result-track:65b5fbe42c4dd124fd6e86e172718886417d838f98ae4b0915d1d0bab57e326c` |
| 90 | `lemma` | [logx_over_x_bound](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/logx-over-x-bound.md) | 2130 | `result-track:80c5943f08f903a13524b668b7633406f7b7c3ada682fb97dcf3316a1165a874` |
| 91 | `lemma` | [delta_term_bound](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/delta-term-bound.md) | 2148 | `result-track:91a59097cf334e8809af080b59956d8d4aac080bd33886d7e49a0e0806ce2cf4` |
| 92 | `lemma` | [dawson_antitoneOn](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/dawson-antitoneon.md) | 2166 | `result-track:0f7b6ab8e52a46f91fa9a5988501015a972cd02f0b96f5073e15153cdc6e6066` |
| 93 | `lemma` | [Eθ_eq_abs](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/e-eq-abs.md) | 2173 | `result-track:fa17a93200a65ac2b5f4d79bf55ca635ad376294d03b7bc5895132eefcdb4b7b` |
| 94 | `lemma` | [integral_algebra](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/integral-algebra.md) | 2180 | `result-track:e69de2d2fb7b14480bcdf80102dd05637d5f75220494f8e90c03e601ea98373e` |
| 95 | `lemma` | [dawson_mono_ge_one](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/dawson-mono-ge-one.md) | 2199 | `result-track:7f01b311ba06ab85b6f951bc352db2af04a4abc4bd0be1fdc643247586264dd7` |
| 96 | `lemma` | [sqrt_log_minus_ge_one](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/sqrt-log-minus-ge-one.md) | 2207 | `result-track:faec613002ab49fa6737a8acddae991a0859d0b7de00dfa9487e52a5a2e8d33e` |
| 97 | `lemma` | [integral_term_bound](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/integral-term-bound.md) | 2231 | `result-track:ac0fd31f42f820ca7b325af3908da944bea58803098f779e87295c5f31ac3297` |
| 98 | `lemma` | [theorem_3_easy_preconditions](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/theorem-3-easy-preconditions.md) | 2284 | `result-track:5996c6ab44933ddc846aff178b48a4f3f3e6b3e0cdd4639b876107f80b908d10` |
| 99 | `theorem` | [theorem_3](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/theorem-3.md) | 2321 | `result-track:eba95dd5c70630ffb62949b56dd3ef6c83a9812fa4a402c1589e3c6d045a2f05` |
| 100 | `def` | [εθ_from_εψ](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/from.md) | 2360 | `declaration-track:0e4e433712841bf335fdd368137f17fd449196f0b5508fe532def2736aef45bb` |
| 101 | `theorem` | [psi_le_bound_small](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/psi-le-bound-small.md) | 2365 | `result-track:7e6806fb51eabf1a868ce166658a4039591d4d6f5a7c1d71bb0a3d139ed38551` |
| 102 | `theorem` | [psi_le_bound_medium](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/psi-le-bound-medium.md) | 2374 | `result-track:3451febb48e835f431c89fff491c1e844112d84ed0d8885dca41815e00fdd2d4` |
| 103 | `theorem` | [psi_le_bound_large](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/psi-le-bound-large.md) | 2385 | `result-track:92a74d4181be8ae87c72d8e13675df43492321f6079eaac0de08274f90920420` |
| 104 | `theorem` | [psi_le_bound](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/psi-le-bound.md) | 2405 | `result-track:53e8889af7db49dc6ad841e4596f9e83bcf37e378a5379be61602b3265df8fd9` |
| 105 | `theorem` | [proposition_17](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/proposition-17.md) | 2438 | `result-track:22f0039f3e4f97d05e52df8a30278524d614e68da8323f4122705c1eed1ca86b` |
| 106 | `theorem` | [Li_identity'](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/li-identity.md) | 2516 | `result-track:08d39d0f8223391474ac4813189337ca9b908d00be39f757e452e14d06cb4100` |
| 107 | `theorem` | [lemma_19](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/lemma-19.md) | 2553 | `result-track:964b82853df2bbd2aa77eb91e1dac8460d62b92a219e8de422cb0ea353114c54` |
| 108 | `lemma` | [hasDerivAt_Li](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/hasderivat-li.md) | 2608 | `result-track:064cf3379bdb61cf42e371fd53e5e3cb86b25c4bdab0f1298129c104ac463c2e` |
| 109 | `theorem` | [lemma_20_a](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/lemma-20-a.md) | 2632 | `result-track:41ab599398a09515787842c60c140b5436a697e18570e4a27d31390fe744f900` |
| 110 | `lemma` | [Li_ibp](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/li-ibp.md) | 2643 | `result-track:b0bf9278c22ad419c7e013a3e4b2f8098b93176b9fc208a289fdd78095a874f1` |
| 111 | `lemma` | [hasDerivAt_Li_sub_div_log](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/hasderivat-li-sub-div-log.md) | 2696 | `result-track:ef0081dc0263afc6d91871b5c5a67465c70f537d7779ff897d135daf2d112b56` |
| 112 | `lemma` | [summable_li_series_658](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/summable-li-series-658.md) | 2708 | `result-track:15c6cf3852b2df260f5972e25cd9c589a11ece71864f9e1727ab7d4622c9d531` |
| 113 | `lemma` | [li_series_658_lower](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/li-series-658-lower.md) | 2718 | `result-track:692b801dfb1eabdc6d1978965a9d17bf63169445fd3c59247b665933968d1483` |
| 114 | `theorem` | [Li_diff_pos_at_6_58](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/li-diff-pos-at-6-58.md) | 2745 | `result-track:5d3935929e3cabab2185b639a2f3992a7ef0c69b976d8e3f77d1cbf334635897` |
| 115 | `theorem` | [lemma_20_b](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/lemma-20-b.md) | 2772 | `result-track:a9177414c710aef957173b75b2641752441a2b0dc934144690f782992a066b35` |
| 116 | `lemma` | [Eθ_integrable](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/e-integrable.md) | 2818 | `result-track:63601142a14437ed38fb9fa50f7afcc636469f39ed668c236229a68ca51c8e19` |
| 117 | `lemma` | [Eθ_bound_integral_last](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/e-bound-integral-last.md) | 2831 | `result-track:f33090f159d61e6dc5e631ab8d96929ce5ad3a0f7bbb463fdfdc1dd1681c0fe1` |
| 118 | `lemma` | [bound_x0_x1](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/bound-x0-x1.md) | 2847 | `result-track:a774a731c49bbd3aaca9188c96be9474b08c3a264be998ece7ccf9e219ec2074` |
| 119 | `theorem` | [theorem_6_1](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/theorem-6-1.md) | 2958 | `result-track:16809452b2b4dc30bf6196126714fa8cb99efededc65d9d895c5cba648a642b0` |
| 120 | `lemma` | [integral_one_div_log_sq](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/integral-one-div-log-sq.md) | 3028 | `result-track:23e4b7e52ca1f0138afd795e16f25836b9b8b41257526dc5211bcdf00d1af41a` |
| 121 | `lemma` | [integral_one_div_log_sq_le_const](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/integral-one-div-log-sq-le-const.md) | 3036 | `result-track:5fe59d8a5c83c590dfe44241d02d753224cd24e2db5a08265a0e745aaa0074e6` |
| 122 | `lemma` | [log_gt_two_of_ge_14](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/log-gt-two-of-ge-14.md) | 3068 | `result-track:a90610200536acae19c9670d93c7bd898113fd58f37651d5177a9da36997bff4` |
| 123 | `lemma` | [hasDerivAt_id_div_log_sq](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/hasderivat-id-div-log-sq.md) | 3076 | `result-track:ee44341326e62a74f47e0f938e6a34f223213fce43c2ebaf22b712b71e34403a` |
| 124 | `lemma` | [integral_one_div_log_sq_le_of_ge](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/integral-one-div-log-sq-le-of-ge.md) | 3083 | `result-track:4c340d512303385d9e11c960f644d7a6d502d0a2b2828815bd9f376028b8d560` |
| 125 | `lemma` | [log_div_self_mul_integral_le_of_ge](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/log-div-self-mul-integral-le-of-ge.md) | 3136 | `result-track:af9a2de094eaf6a3f731f61b59ad8d448e5a82b9f89078e79ac91192198521c7` |
| 126 | `lemma` | [log_gt_one_of_ge_14](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/log-gt-one-of-ge-14.md) | 3144 | `result-track:83947deb30056ffa31d3eeec399a8ae92787080b0949fcc6086788e318796854` |
| 127 | `lemma` | [x1_le_x1_log_x1](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/x1-le-x1-log-x1.md) | 3149 | `result-track:72658fd35549ccd41c0b7ae318a1dc098a536c9c7911db0d9578c0f073e0bc39` |
| 128 | `lemma` | [x1_lt_x1_log_x1](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/x1-lt-x1-log-x1.md) | 3152 | `result-track:0b8180e003db90bbd7cf9da2ba94feacacf6f90b1ca7e780785bbdce3512fb87` |
| 129 | `lemma` | [log_div_self_mul_integral_nonneg](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/log-div-self-mul-integral-nonneg.md) | 3155 | `result-track:abaf12021d1dc6d135a34b4096031a85b66464755f7a26d149cba05ea6ea8d56` |
| 130 | `lemma` | [tendsto_log_div_self_mul_integral_atTop_zero](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/tendsto-log-div-self-mul-integral-attop-zero.md) | 3163 | `result-track:4c885b058fc7febef14247206fb8cf2d554ea25a8bdb7f7655ee715f2721d171` |
| 131 | `lemma` | [integral_sub_div_self](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/integral-sub-div-self.md) | 3178 | `result-track:e7ca9caf5f48f80ca644f763f462032794ee109354f62babd9f47435806015ad` |
| 132 | `lemma` | [integral_I_div_self_le](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/integral-i-div-self-le.md) | 3189 | `result-track:1fa1e9d91c294fded639450f6c582ba8533995375f65d19e75d7462513dc9034` |
| 133 | `lemma` | [u_eq_sub_integral](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/u-eq-sub-integral.md) | 3215 | `result-track:058708cb565f4c36b0b9fb19a0ea7e1e10fac2350dc61536c25a6cbd17c804f0` |
| 134 | `lemma` | [hu_simplify](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/hu-simplify.md) | 3247 | `result-track:c729a421aceeabc0d342aea2b15e11046b4e5876c2a0d7bf2722ede18a504780` |
| 135 | `lemma` | [continuousOn_one_div_log_sq_Ioi](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/continuouson-one-div-log-sq-ioi.md) | 3253 | `result-track:5e8f92478ab2b80d6e7099d2527362a1abcc456043863432df400680ee720ed8` |
| 136 | `lemma` | [hasDerivAt_integral_one_div_log_sq](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/hasderivat-integral-one-div-log-sq.md) | 3264 | `result-track:41dbae75e0bc2e43cb8b9baae5b31a2dc8e6a1ed8b126eb69fe0d53052ad3169` |
| 137 | `lemma` | [hasDerivAt_log_div_self_mul_integral](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/hasderivat-log-div-self-mul-integral.md) | 3276 | `result-track:df016d577daf797de5be1864377ac2042fb85890b2952904446bd1eab3db7753` |
| 138 | `lemma` | [h_deriv_at](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/h-deriv-at.md) | 3288 | `result-track:030d88f9e082e75b337fb5587a713584bd498e7a12bed5e3174cbab031227be9` |
| 139 | `lemma` | [h_monotoneOn](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/h-monotoneon.md) | 3293 | `result-track:77981504885e3188ade7daed7eaecc3ac5087e382a5d12c04c46fc620f8b7468` |
| 140 | `theorem` | [hasDerivAt_log_div_self_mul_integral_one_div_log_sq](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/hasderivat-log-div-self-mul-integral-one-div-log-sq.md) | 3321 | `result-track:5ce0a154431e4960d213503436950e914abd2e7b908624a7b1a17cf3a6d5ce6e` |
| 141 | `lemma` | [deriv_log_div_self_mul_integral_one_div_log_sq_pos](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/deriv-log-div-self-mul-integral-one-div-log-sq-pos.md) | 3329 | `result-track:947f9863dfe6b11fea847242564614515f6679ccb7bd971be6b22cb8dde2a509` |
| 142 | `lemma` | [exists_larger_than_boundary_val](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/exists-larger-than-boundary-val.md) | 3358 | `result-track:f14fdf309d0fc95c6b356a4ac24e28800cab8f78a2f8e32c68462bdb6de00b31` |
| 143 | `lemma` | [exists_isMaxOn_Ici_log_div_self_mul_integral_one_div_log_sq](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/exists-ismaxon-ici-log-div-self-mul-integral-one-div-log-sq.md) | 3376 | `result-track:b32960ed3631ca97d768ec947a378d889dd00d1bdff1e844eb284cfd14c9718d` |
| 144 | `theorem` | [theorem_6_2](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/theorem-6-2.md) | 3474 | `result-track:65f8c4ad0441f5da982811d7e467a7e4a9c9eedac3020c33f08798177dd69272` |
| 145 | `theorem` | [theorem_6_3](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/theorem-6-3.md) | 3502 | `result-track:576fd48c1902c0cd72545fc3a9c6d779fbb45d7d6505721c365fc29fc59f1151` |
| 146 | `def` | [μ_num_1](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/num-1.md) | 3534 | `declaration-track:9e877ed05c3929fea4b65c0cfe8dbedecef38cdcbdc26b777c4cc8ee5c9c288f` |
| 147 | `def` | [μ_num_2](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/num-2.md) | 3554 | `declaration-track:671cccfc910faf917598b5044da21daf3c05410968c32f2bb1756dbe1a590912` |
| 148 | `def` | [μ_num](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/num.md) | 3566 | `declaration-track:3b344e5ce8fe027aa74fd51b8aa9785ca13c31bff2426dc35ab331914aa41e67` |
| 149 | `def` | [επ_num](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/num-source-edition-2.md) | 3579 | `declaration-track:63a72bc43ef89d3e15f31e409af92e3e96e851b8f6c45acf139bb576b597cf13` |
| 150 | `def` | [default_b](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/default-b.md) | 3583 | `declaration-track:8978f2767433a619c9fee3c3497e78e5d00f5946b5d86ac0b4fb83f952f6d1df` |
| 151 | `theorem` | [remark_7](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/remark-7.md) | 3601 | `result-track:4e2ee51fae5e2c61ad6241ab62fd8a4014a81685a288d18834b47e59122d5c60` |
| 152 | `theorem` | [theorem_6](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/theorem-6.md) | 3629 | `result-track:1b330c52398abffd8bad82df4e837e1501b73bc799f42928d07ddb6a50981f30` |
| 153 | `theorem` | [theorem_6_alt](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/theorem-6-alt.md) | 3667 | `result-track:b798ceb13d79934f3cd524d9585fe4cf2661629d4b6653225505b382fcbf7806` |
| 154 | `lemma` | [find_ereal_bin](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/find-ereal-bin.md) | 3695 | `result-track:1532adc9045f03a9c28c886f5bb51538653e84550cec0033c2343d7eadb8de97` |
| 155 | `lemma` | [ereal_toReal_sub_mono](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/ereal-toreal-sub-mono.md) | 3714 | `result-track:8b113c9e977668d6b95fb7eea2f7ee3931a795a502e76c066f02ad9cb506833c` |
| 156 | `lemma` | [ereal_toReal_coe_log](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/ereal-toreal-coe-log.md) | 3733 | `result-track:9603154539537b55614fa632bde66e663f446d2fef74f91d8ede986e7a87cfe2` |
| 157 | `lemma` | [ereal_exp_toReal_le](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/ereal-exp-toreal-le.md) | 3746 | `result-track:dfec3ac6184c8d62fa121190a2f9f2f98f6442ef63732d79bc7d0b58ee82b781` |
| 158 | `lemma` | [ereal_exp_ge_max](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/ereal-exp-ge-max.md) | 3767 | `result-track:51de1bfc92aea46a654cdee0f9103aace64a8439be8e2d6f15efe85a80b5bc67` |
| 159 | `lemma` | [corollary_8_apply_theorem_6](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/corollary-8-apply-theorem-6.md) | 3807 | `result-track:14d35a97a93a8087669d6a1dc368370da637a208220c457f4ca34b328f41a61e` |
| 160 | `theorem` | [corollary_8](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/corollary-8.md) | 3884 | `result-track:bdfd060e7345a1ad5841500ca1ba4dfbb5c8bd517935eba942aa1f942f3f1a1c` |
| 161 | `theorem` | [corollary_21](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/corollary-21.md) | 3935 | `result-track:4178a63f276588a670bc16d953934f551f6e82c614d05fe0914e221f0958733e` |
| 162 | `def` | [Table_4](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/table-4.md) | 3982 | `declaration-track:eac96431213911f75e8106180ba8420ac2ab871ee0fbb33f73fcb1cbfe3ee146` |
| 163 | `def` | [Table_5](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/table-5.md) | 4028 | `declaration-track:c4b84a7668f1509d5e67bbed773560b5ace6c10fd3c6fd1c797fa49ed683e7ce` |
| 164 | `theorem` | [corollary_22](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/corollary-22.md) | 4072 | `result-track:b7efa34c09b2325443cef3afa25cd3b71a10bafa5add7e79a01789642feaaf15` |
| 165 | `def` | [table6](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/table6.md) | 4074 | `declaration-track:a427a84b47e6a62a6c036ccc2d1ee81675a614112e24ffc6a7b3e27279ee6b4d` |
| 166 | `theorem` | [corollary_23](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/corollary-23.md) | 4094 | `result-track:5d5f681f063e80e4792eea41a5053003c54aa07348e6790456912f83ff3d0477` |
| 167 | `def` | [table7](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/table7.md) | 4097 | `declaration-track:f0688eff720c030294f9c8b1a35520bbdc2fc26f86e82509fbfff56b82543475` |
| 168 | `theorem` | [corollary_24](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/corollary-24.md) | 4121 | `result-track:05e5be0e9fb081a7f6349b8d10da6c4a1e644e4917e04df95f81af6324637296` |
| 169 | `lemma` | [table6_mem](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/table6-mem.md) | 4127 | `result-track:1398da686d6e719d92bee9bf51ded5e89b35dac95ab0d2e8a0d96b7abb10d71e` |
| 170 | `lemma` | [sqrt_exp_le_half](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/sqrt-exp-le-half.md) | 4130 | `result-track:afb1d6f77f437d8be80ef9a2de62540ba9d3694ebcaf30e38a3664bb17d7953b` |
| 171 | `lemma` | [admissible_bound_le_0826](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/admissible-bound-le-0826.md) | 4141 | `result-track:a72fb9ac03812e37341928e7ef55b8954d1d99337b89440252f84f30f561ae91` |
| 172 | `theorem` | [corollary_26](../../../../MeasureAndIntegration/FKS2NamespacedEdition2.lean/declarations/corollary-26.md) | 4184 | `result-track:03d236642ce1f9f99e20d2b7784a8019416e8744d307b2758f452ac53ea7140d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ded291f488f56dadc1d1b99ac42b2e34ee4bc70154bf6748a6a1a00730c1e88 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/FKS2/Variantb98ed9f7a0ad0c712f2a6e834162cc247b167cc7114066c466053cd55d97b4a5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
