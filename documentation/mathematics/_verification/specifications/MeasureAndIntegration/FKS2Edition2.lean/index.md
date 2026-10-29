# Verification target: FKS2 Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2da8f7a1095fdd5b64ca8609b613f4c0960c9eed",
  "lexical_observation_count": 172,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FKS2Edition2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FKS2Edition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2da8f7a1095fdd5b64ca8609b613f4c0960c9eed`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Defs` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Pi` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Prod` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Module.Defs` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Cast.OfScientific` — import line 6; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.SecondaryDefinitions` — import line 7; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.FioriKadiriSwidinsky.FioriKadiriSwidinsky` — import line 8; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.BKLNW.BKLNW` — import line 9; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.RosserSchoenfeld.RosserSchoenfeldPrime` — import line 10; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.LogTables` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [g_bound](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/g-bound.md) | 44 | `declaration-track:195b2a90ea94d135fdd6478c3de7726a208df43896a70a98db6ece5eedb8bcfa` |
| 2 | `theorem` | [lemma_10_substep](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/lemma-10-substep.md) | 55 | `result-track:a1978f130df6cf1e6c32f9cabe84b2479f8250e50f5729ccfbd5ce22f484969b` |
| 3 | `theorem` | [lemma_10_substep_2](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/lemma-10-substep-2.md) | 84 | `result-track:7e0a763e50a2173299b0da6559a9646d948b01f3defb525163b6e1a7eaf374ad` |
| 4 | `theorem` | [lemma_10a](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/lemma-10a.md) | 105 | `result-track:01fe75fac7e8833cd1ca1555fe730f30143745637a5b3df401e9d2bba91280a4` |
| 5 | `theorem` | [lemma_10b](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/lemma-10b.md) | 129 | `result-track:82a6d106469e2abf74f82f3479cfd23e368e4bfc11ef1edd1ca434db6015312a` |
| 6 | `theorem` | [lemma_10c](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/lemma-10c.md) | 165 | `result-track:e32008face96c4e2687784a1f2f27f1ce33425c599b821b4e8846e137f53b56a` |
| 7 | `theorem` | [corollary_11](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/corollary-11.md) | 201 | `result-track:45be115375536d08ff57d9e146058394e3f96521620febf9ea9b92af99b69ae9` |
| 8 | `def` | [dawson](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/dawson.md) | 217 | `declaration-track:53aad3b74e9bd77e10f380df26d93b322c85860ed71e542c2551e18c36503bde` |
| 9 | `lemma` | [deriv_dawson](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/deriv-dawson.md) | 219 | `result-track:6aed61121f665b785106f83b384d15a89e62bd24ed8f630808531872f8a8afa7` |
| 10 | `lemma` | [differentiable_dawson](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/differentiable-dawson.md) | 229 | `result-track:597d647c4db55b3f2e46be9d3743d1e4a8945782b2d28f7811f182101d4738fa` |
| 11 | `lemma` | [continuous_dawson](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/continuous-dawson.md) | 235 | `result-track:42a6e931edd0f2bd432a57582ab73ffdf91fbd3f97945f092d4d5e0f3cb6f60d` |
| 12 | `lemma` | [dawson_nonneg](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/dawson-nonneg.md) | 241 | `result-track:6da8532c91b913bade8567fd8f0bc1abade2fec00c82cf33700660f1218b5947` |
| 13 | `lemma` | [dawson_one_pos](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/dawson-one-pos.md) | 244 | `result-track:c773480634d5dbc075c423a7c2dde48457ffa85d506a98241f3b305d651b5354` |
| 14 | `lemma` | [filter_tendsto_dawson_at_top_zero](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/filter-tendsto-dawson-at-top-zero.md) | 249 | `result-track:6fb4e74b3ec1ebe81d246bd64d8af83e0e8ec547c356f23940beca10df839ac4` |
| 15 | `lemma` | [dawson_exists_M](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/dawson-exists-m.md) | 283 | `result-track:89fdc6e0e249ee2f8f7208063e08dc112310de7267fdf786616831a49fb0c7c9` |
| 16 | `lemma` | [dawson_exists_max_Icc](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/dawson-exists-max-icc.md) | 291 | `result-track:347e001fb4d3f0f9eaafa748f7b584c8b730cf6f6be6c53718e0e949ab413e39` |
| 17 | `lemma` | [dawson_pos](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/dawson-pos.md) | 297 | `result-track:4e7b04c1db9f367b2d9b416f636f9454c547aa6c6c2ca07e9c95de4e3ffbada7` |
| 18 | `lemma` | [hasDerivAt_exp_sq](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/hasderivat-exp-sq.md) | 303 | `result-track:fc7c89a64271d4c1daf28dbffc96ff591f60e8611032f5b703813ba4f4cb7aa1` |
| 19 | `lemma` | [F_strictAnti](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/f-strictanti.md) | 309 | `result-track:8cf78fbdd7c67435118e4a14d4f76fccc923283252233d1850591f378fb91bd5` |
| 20 | `lemma` | [pos_of_deriv_pos_of_zero](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/pos-of-deriv-pos-of-zero.md) | 324 | `result-track:bf4730b4a1517bfa13231ea9373f62574e755f2a29ac258ec057290a216d5069` |
| 21 | `def` | [S6](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/s6.md) | 331 | `declaration-track:9d3ae6dd20de5eb4b1117c7fa411ea61f64eac65ec29056c1524b6f6726e8075` |
| 22 | `def` | [S5](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/s5.md) | 335 | `declaration-track:c2a777e5fc61dbaa443fe68481426f1c674c30212c161db171c493bc66ae27ea` |
| 23 | `lemma` | [hasDerivAt_S5](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/hasderivat-s5.md) | 338 | `result-track:3f3f61bc63846a68230d3c6dd3f38179283a24c6a33f108a28ba2105982158d3` |
| 24 | `lemma` | [hasDerivAt_S6](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/hasderivat-s6.md) | 354 | `result-track:f33dd3a2227aaff9345ad06ccd3c671ed74499454499791c6ebda0e4527c8e8a` |
| 25 | `lemma` | [dawson_lt_S6](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/dawson-lt-s6.md) | 361 | `result-track:c8533bc51c53fbb7dd75c8fd0e8316e8398769982cfcc0b462858bdf7edd12f6` |
| 26 | `lemma` | [S6_0924_bound](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/s6-0924-bound.md) | 393 | `result-track:87a59691e69394b979d1d8ce0bec4bab942c18189c648dc1e9c8fb9ca255b00c` |
| 27 | `theorem` | [dawson_0924_bound](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/dawson-0924-bound.md) | 397 | `result-track:6b910e3ba936ff327f7d89b093c7dfaac5bd53bfcfdd9a20e66366d1b3151864` |
| 28 | `lemma` | [S5_lt_dawson](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/s5-lt-dawson.md) | 400 | `result-track:32f5195b01c373691f836164b62902ac33021c30b04c60953530ad2be12e54a8` |
| 29 | `lemma` | [S5_0925_bound](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/s5-0925-bound.md) | 431 | `result-track:4bc958321d86a136eaba4f088b7b6bc0a9e083fb99df9f5f5500a3e875635a69` |
| 30 | `theorem` | [dawson_0925_bound](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/dawson-0925-bound.md) | 435 | `result-track:437d4a505c01c9da1fef1d850b06920556a867c4737e60aec59f0684429b3995` |
| 31 | `lemma` | [crit_ge_of_F_pos](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/crit-ge-of-f-pos.md) | 438 | `result-track:a24e430407485a1f4b491a18d791e27b675c82d9df65e2fc79afc80d7d41902b` |
| 32 | `lemma` | [crit_le_of_F_neg](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/crit-le-of-f-neg.md) | 447 | `result-track:1a5a6e020f8ce5a192a2dc017e9b12251a87eea8ad58f01d577ff16f8dca96b8` |
| 33 | `lemma` | [dawson_exists_critical_global_max](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/dawson-exists-critical-global-max.md) | 456 | `result-track:d078853017707ddb5e936b566f7a41b08d84dbcc7042bd868650acc537723922` |
| 34 | `theorem` | [remark_after_corollary_11](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/remark-after-corollary-11.md) | 501 | `result-track:d18e5ac7da33d4ee0dee56199d5035e304b3671b025ba63a420a862cd60fd7e1` |
| 35 | `def` | [ν_asymp](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/asymp-source-edition-2.md) | 531 | `declaration-track:d38c5aa0925765f139e79a536ed281769f5f17d03588956c282dcd1771edb9ab` |
| 36 | `abbrev` | [remark_15_margin](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/remark-15-margin.md) | 538 | `declaration-track:6fc6b0159650f71ccc9fc4bf911f7c51d417e38844a64fe76332908f64535d7f` |
| 37 | `lemma` | [two_mul_sqrt_div_le_quarter](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/two-mul-sqrt-div-le-quarter.md) | 544 | `result-track:fc0ba8548214805aaf9e176f3043a18e8a5b260339b990ffc64a7e194f327b18` |
| 38 | `lemma` | [BKLNW_a1_le_two_of_ge_1000](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/bklnw-a1-le-two-of-ge-1000.md) | 579 | `result-track:1f1cc395a566d4a3eae8b29866bafaa7965e11acc9543b545e6d891f1a559e9e` |
| 39 | `lemma` | [BKLNW_a2_le_five_mul_of_ge_1000](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/bklnw-a2-le-five-mul-of-ge-1000.md) | 615 | `result-track:6847e4685a553df47d84b65767b74b7a88c28e548cf8069916e96ba57b358c7a` |
| 40 | `lemma` | [sixty_thousand_mul_exp_neg_230_le](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/sixty-thousand-mul-exp-neg-230-le.md) | 731 | `result-track:3f18eff4ce9bddb63aa349fc90224cb6a6f4a562181dff63361f0c885290dfaf` |
| 41 | `lemma` | [t_mul_exp_neg_one_thousandth_le_five_hundred](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/t-mul-exp-neg-one-thousandth-le-five-hundred.md) | 742 | `result-track:0f399e2da8ff946e9d8e9e640431f305512b5134961323392c161a84d66517ee` |
| 42 | `lemma` | [exp_neg_five_twelfths_mul_le](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/exp-neg-five-twelfths-mul-le.md) | 764 | `result-track:59313a4148dad8a4fa8d3e7ba64d904c03b1928d83ce9e5aac77b0386e703ea5` |
| 43 | `lemma` | [part1_decay_bound](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/part1-decay-bound.md) | 786 | `result-track:608c08fb7a20b8ac60e0dc506d8752b87fff2f2ac682cd6701bafa21121ba8d7` |
| 44 | `lemma` | [part2_decay_bound](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/part2-decay-bound.md) | 817 | `result-track:c0aa7144bd04f7761eb5f67d8678286d10023ac9b40a5578acd8ddf1090cce4b` |
| 45 | `theorem` | [FKS_A_one_le](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/fks-a-one-le.md) | 876 | `result-track:417260058be4dfa7295aeaf24f2de535c471531a58e050820f7b4f17dd3c885c` |
| 46 | `lemma` | [BKLNW_a1_nonneg](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/bklnw-a1-nonneg.md) | 879 | `result-track:3eec2d2013aa48ac17334ac2af8b231693eb44a1e4cb0b12a101671af0caf5ef` |
| 47 | `lemma` | [BKLNW_a2_nonneg](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/bklnw-a2-nonneg.md) | 893 | `result-track:2f3d848781789f3b1d4c2ee306c232ddca2be9da32039750ca2f8128b471c9a3` |
| 48 | `lemma` | [term_inside_bound](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/term-inside-bound.md) | 905 | `result-track:e5bec9954e2ffe2afc82c7a53a8175eed65df35c2b5c6bcfc6ccd4f10df017cd` |
| 49 | `theorem` | [nu_asymp_le_remark_15_margin](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/nu-asymp-le-remark-15-margin.md) | 918 | `result-track:14a9770cbc01f8dbb8d600aa251e4311812ab3c83e743d624ef238d45bffd521` |
| 50 | `theorem` | [nu_asymp_le_remark_15_margin_sub_one](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/nu-asymp-le-remark-15-margin-sub-one.md) | 983 | `result-track:92dfe2436ca456c13560243f861c5ea7066fefe008c6d0984d30c21965846722` |
| 51 | `lemma` | [g_bound_strictAntiOn](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/g-bound-strictantion.md) | 988 | `result-track:10c2713ee3d97ffabf6dcaf9263e2b3f2344944ac4c0e52ab33a58833a0b5ec2` |
| 52 | `lemma` | [g_bound_le_of_anti](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/g-bound-le-of-anti.md) | 996 | `result-track:f7e78592250be9ad1446903c05a0460c729010d4f0183ef4d668e0433983c41e` |
| 53 | `lemma` | [mul_rpow_sub_div_le_admissible_bound_mul](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/mul-rpow-sub-div-le-admissible-bound-mul.md) | 1004 | `result-track:f70601303e64e70e5f1ac460562029b8824564194f26823f8c216989aee534ad` |
| 54 | `theorem` | [proposition_13](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/proposition-13.md) | 1077 | `result-track:0266990001301601482191eb66f8276f102f45a11121f292f03ffecb4a8a9a4b` |
| 55 | `lemma` | [rpow_sum_le_card](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/rpow-sum-le-card.md) | 1142 | `result-track:78e6cb9f060e1baa292f18124e50f503a505d911d8cbde4bfcec537df8b01ae2` |
| 56 | `lemma` | [inv_le_exp_neg](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/inv-le-exp-neg.md) | 1158 | `result-track:7e829f0214fdd11959edb5cc2dbb2e3bb45ff25e7a65d0f73f004fe18f0e2574` |
| 57 | `lemma` | [corollary_14_small_adm_case1](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/corollary-14-small-adm-case1.md) | 1165 | `result-track:7237ee39d297065def61fa6515afeb6f5cacf8f6671d0d37a341198ec8e12c7c` |
| 58 | `lemma` | [corollary_14_small_adm_case2](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/corollary-14-small-adm-case2.md) | 1181 | `result-track:49b28d5cbfac07d037cf93d70de71bdf511a33ec2933ebd9328fde980239c3bd` |
| 59 | `lemma` | [corollary_14_small_adm_case3](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/corollary-14-small-adm-case3.md) | 1202 | `result-track:ec867f70a65892c6cbe0fce054ec1e197e61959d8ae6f34e1449d64e1c5881e7` |
| 60 | `lemma` | [corollary_14_small_adm](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/corollary-14-small-adm.md) | 1222 | `result-track:71b68a403f18b879d29569a3e01031787c284da55c6f3c84c8e767e41e0d46be` |
| 61 | `lemma` | [floor_30_div_log2_eq_43](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/floor-30-div-log2-eq-43.md) | 1259 | `result-track:a3a68dcdd357245420c0b00605b5ef502efcbffb76067a0ac8051f20016904eb` |
| 62 | `lemma` | [bklnw_a1_30_le](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/bklnw-a1-30-le.md) | 1265 | `result-track:96eac5b5f33d84a0cfaa19576c926d224b4d7bf69af18b895e3259d4d1a6ccf2` |
| 63 | `lemma` | [bklnw_f_exp30_le](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/bklnw-f-exp30-le.md) | 1279 | `result-track:45ea3cb0570a6049f99e3bb7b703f47f78ce8730dd7e493d0b1e5d6692522677` |
| 64 | `lemma` | [bklnw_f_pow44_le](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/bklnw-f-pow44-le.md) | 1291 | `result-track:b7af8cbc85f591c2ff5f48a6e0582178d0fd8ec626121a8dd3e8b12fd0a93417` |
| 65 | `lemma` | [bklnw_a2_30_le](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/bklnw-a2-30-le.md) | 1307 | `result-track:cc2d62c6ce0f54c88507f7ede67e014d165b7303ae2369c7e8892b21742adcc5` |
| 66 | `lemma` | [coeff_bound_30](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/coeff-bound-30.md) | 1331 | `result-track:cae5deb82b5b2b88b4381fb8031bdf218f440654ef1739eef21d9254304023c6` |
| 67 | `lemma` | [nu_asymp_bound_30](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/nu-asymp-bound-30.md) | 1387 | `result-track:007b1a3df7ebd247ee203be753c8c802905fd9bb202479b9359a43c57c61b3a8` |
| 68 | `lemma` | [epsi_classicalBound_30](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/epsi-classicalbound-30.md) | 1469 | `result-track:a3d94773c536324277c1fa87266d7a58e7fb3f727016431ad883c5e70fb7f529` |
| 69 | `theorem` | [corollary_14](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/corollary-14.md) | 1485 | `result-track:9c79fe94ba3d9ba9ebf176396d4b4eb6a1e1d7948ec0af9989f99e0304d115d8` |
| 70 | `theorem` | [remark_15'](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/remark-15-source-edition-2.md) | 1562 | `result-track:8c896d34d1aacf37fd52f312920e110a37212e2e6ca9d2275b8d2c573265ba82` |
| 71 | `theorem` | [remark_15](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/remark-15.md) | 1652 | `result-track:87f27ff7478b35aa94c8fbb24ddc48b344f115a810f5e253deb3b38ed7e2345c` |
| 72 | `theorem` | [l0](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/l0.md) | 1669 | `result-track:3cf204137deea244854408fd15e9bf7760d6fac25bfb2a428728c7ea0551ca46` |
| 73 | `theorem` | [Li_identity](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/li-identity-source-edition-2.md) | 1675 | `result-track:ea1fd3e9b657554ad0b3e3508e265e5b962949a77fb598cba5d63a68917a9a58` |
| 74 | `theorem` | [l1](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/l1.md) | 1693 | `result-track:587258cb59845afb56aa3515039d5de5efaec692a3a2b002e9e6efb283c2377e` |
| 75 | `theorem` | [l2](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/l2.md) | 1697 | `result-track:ce9ccd2205d4d0aaa73fac387512ced87036c598e5bd182e36cc67bd7a1330eb` |
| 76 | `theorem` | [he](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/he.md) | 1701 | `result-track:8b0d2720274614ab8d51722ba47b7690b1b7bc3854b12c2e05decb4839da460c` |
| 77 | `theorem` | [l3](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/l3.md) | 1709 | `result-track:4bb9513be9194387952a497555e4c31eb9724a279b83705849c5a4aa7520a815` |
| 78 | `theorem` | [eq_17](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/eq-17.md) | 1728 | `result-track:f7ab3366746ff6f6afd8c450328d54d08a0870eeb61ae1c765c2c97dfea8ca73` |
| 79 | `def` | [δ](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/anonymous.md) | 1752 | `declaration-track:8018fbd25314ac04cb89f6b512296774a03d8980b3db19ca668fe86e2c2e7ed8` |
| 80 | `theorem` | [eq_30](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/eq-30.md) | 1769 | `result-track:e1ce06fe63e64f6935bee1a468c31eb0c5357f09edb07c245baffe7b0bcd5b9e` |
| 81 | `theorem` | [lemma_12](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/lemma-12.md) | 1850 | `result-track:265d30e31f86bb7a0457d33525440d332be9f16810045db0a79b4e58889185aa` |
| 82 | `def` | [μ_asymp](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/asymp.md) | 2017 | `declaration-track:cae785b93c249e6d039f11a418df6dde298e077e8c90bd979c4d66a6918b7973` |
| 83 | `lemma` | [admissible_bound_mul](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/admissible-bound-mul.md) | 2030 | `result-track:5840360e7abcbf2a6022f8674699abdbdcef78660426a4d856b5d1b4b0072cb2` |
| 84 | `lemma` | [ratio_eq_g](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/ratio-eq-g.md) | 2037 | `result-track:b00baaad51255dcaad7e97ab85133a6fcd1516872f55f90f4c187e753dfcc67e` |
| 85 | `lemma` | [ratio_mono](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/ratio-mono.md) | 2057 | `result-track:e41587adda8566831f3dbb54c1280577230f5696f69e76b1cf6e0b6352f57e37` |
| 86 | `lemma` | [m_simplify](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/m-simplify.md) | 2090 | `result-track:f7ff6d846716e537417a0f151fb9c6ffd5b3ff5b5b56c0b290c7f2b90cdd7921` |
| 87 | `lemma` | [admissible_bound_pos](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/admissible-bound-pos.md) | 2103 | `result-track:aa571e3bdc0779a1b6589c8e3af9c9d1c54b2bf4507aa2d6045a7d5f0ddd1c64` |
| 88 | `lemma` | [Eθ_nonneg](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/e-nonneg.md) | 2110 | `result-track:525e541b5a8fb83f817532e9c1c1251b66a11a489fbd456730258d980a14f2a6` |
| 89 | `lemma` | [delta_nonneg](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/delta-nonneg.md) | 2116 | `result-track:4c8d09f7b170bd59cdeace12312eb1842f6cf14975233a891c4fd8907efa7d2c` |
| 90 | `lemma` | [logx_over_x_bound](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/logx-over-x-bound.md) | 2122 | `result-track:204f06ed7855db50dd15ae53b452ed677f96392bdba27f7f16faf06383b7f808` |
| 91 | `lemma` | [delta_term_bound](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/delta-term-bound.md) | 2140 | `result-track:82a427c1afb8c64d2532d15576b46a0dcbe89dfea8a985abf29135799cedea08` |
| 92 | `lemma` | [dawson_antitoneOn](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/dawson-antitoneon.md) | 2158 | `result-track:02a390a7df83b22d6fdec37dc23afad98dc88d53b0e14d5a68eb848c2d7e772f` |
| 93 | `lemma` | [Eθ_eq_abs](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/e-eq-abs.md) | 2165 | `result-track:29145ba23ac5d60009ff29845accf8386e6cc1388df8626eed32285eece0a37c` |
| 94 | `lemma` | [integral_algebra](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/integral-algebra.md) | 2172 | `result-track:47e8ed3ac407cd3cee374a14bfaa0c671dabe1aaa9ba019a1feb91cad11d3cf1` |
| 95 | `lemma` | [dawson_mono_ge_one](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/dawson-mono-ge-one.md) | 2191 | `result-track:2e2779665408cd0025b0d3ed96765a87e9763e6cf07032f43e495d8155254bc8` |
| 96 | `lemma` | [sqrt_log_minus_ge_one](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/sqrt-log-minus-ge-one.md) | 2199 | `result-track:742312d96ed77bbec680c4bb6f04fbc30372b16b3d278f7c4fe76ef939858526` |
| 97 | `lemma` | [integral_term_bound](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/integral-term-bound.md) | 2223 | `result-track:e188f42d562218a12b3db7c191d6c4bdaaf182bfa3b5d6550e1d48b55dccf4d6` |
| 98 | `lemma` | [theorem_3_easy_preconditions](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/theorem-3-easy-preconditions.md) | 2276 | `result-track:e9d50944f982a987eb01c8fbabe90366602d3fae44981d1ac97053e5f868d7e3` |
| 99 | `theorem` | [theorem_3](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/theorem-3.md) | 2313 | `result-track:8b139a7ecee11b55837ee011b48f6ae54b945bec58beb38b2f0fa9efff3d41c9` |
| 100 | `def` | [εθ_from_εψ](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/from.md) | 2352 | `declaration-track:e1589a6d83b39ec4a6337309ca5ce8e53d0ca31ccd871bf95f81ce4ad21e4fd9` |
| 101 | `theorem` | [psi_le_bound_small](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/psi-le-bound-small.md) | 2357 | `result-track:7ec501c8862f02bc3450a6d6e6f9ae367c79b6674403b010d09dcdb0d69d20ee` |
| 102 | `theorem` | [psi_le_bound_medium](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/psi-le-bound-medium.md) | 2366 | `result-track:1f44a6dd05fad997dd5866471c9d2f991f3e83cf4c60714eaffeb8ba0408a99d` |
| 103 | `theorem` | [psi_le_bound_large](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/psi-le-bound-large.md) | 2377 | `result-track:dfa95179dfc492c9ea1a1c2e8c6ce3a530c9fc86e1d85ebdc4d176124eb5a243` |
| 104 | `theorem` | [psi_le_bound](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/psi-le-bound.md) | 2397 | `result-track:3c66ea65023dd6da1c27be592c3416cb1f01653a43799a82dcd70adf6ba2990d` |
| 105 | `theorem` | [proposition_17](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/proposition-17.md) | 2430 | `result-track:ae37efc760ebe517ad2116653dd030d1c6b3e1ae12741a6811f3a60baea795d1` |
| 106 | `theorem` | [Li_identity'](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/li-identity.md) | 2508 | `result-track:cbdf3a15c814baf17b7fb28d8f97a629bb05ab4eb52f3fc13115334e0abf8242` |
| 107 | `theorem` | [lemma_19](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/lemma-19.md) | 2545 | `result-track:04c8160f9f012a03c7b58eabbb95e7c8ca030151560c47a631d66d5640545d8a` |
| 108 | `lemma` | [hasDerivAt_Li](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/hasderivat-li.md) | 2600 | `result-track:dcfbd3860f9a4e8fbae184b6413d6df1217390bacc16b433d99ca07f94d0d1cd` |
| 109 | `theorem` | [lemma_20_a](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/lemma-20-a.md) | 2624 | `result-track:caaf054ac1c8119d7f3ecf41c46ed1241cb31ca24ac746aebb0eb859093a9822` |
| 110 | `lemma` | [Li_ibp](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/li-ibp.md) | 2635 | `result-track:e224784deaaeed056408bb6155e0688178ad2f1bd9977f143529ac3cdefd37bc` |
| 111 | `lemma` | [hasDerivAt_Li_sub_div_log](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/hasderivat-li-sub-div-log.md) | 2688 | `result-track:856b7adf76b5a611458459ff3e592b8d1b4cace277c673b2cf57ec2c1126234f` |
| 112 | `lemma` | [summable_li_series_658](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/summable-li-series-658.md) | 2700 | `result-track:be1f70a2483420316d71a7f862458b414a49460c08b862546034095fb2085d13` |
| 113 | `lemma` | [li_series_658_lower](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/li-series-658-lower.md) | 2710 | `result-track:0331dac3add1e27dbe045a014ad5b0913e1364487816677c9ec13c056f9afb89` |
| 114 | `theorem` | [Li_diff_pos_at_6_58](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/li-diff-pos-at-6-58.md) | 2737 | `result-track:5fd169649bf10b1bdd7e4f90474a44d1bbb03e268f999f766e798d8fc3c5e6f0` |
| 115 | `theorem` | [lemma_20_b](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/lemma-20-b.md) | 2764 | `result-track:7074d83268f260113e9955edbade25436617b0221d88c302248f67e2270f30e6` |
| 116 | `lemma` | [Eθ_integrable](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/e-integrable.md) | 2810 | `result-track:1d346181261338b9552cbc8656fb1870baa4dd32f69303b304699889f8a415c1` |
| 117 | `lemma` | [Eθ_bound_integral_last](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/e-bound-integral-last.md) | 2823 | `result-track:688878b6a74381fbf27a28f06ed61604a1d8bdaac76ce0bc7ae80b90c721ae57` |
| 118 | `lemma` | [bound_x0_x1](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/bound-x0-x1.md) | 2839 | `result-track:1bfdc8947d31ca6d34ea72566ff5225c76efbcc73d27e2145e10d9674469a50f` |
| 119 | `theorem` | [theorem_6_1](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/theorem-6-1.md) | 2950 | `result-track:86f5b78848401fcd2292ca93dbc0aff817a0de49605c22d7e4c191103b5181e5` |
| 120 | `lemma` | [integral_one_div_log_sq](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/integral-one-div-log-sq.md) | 3020 | `result-track:d848df693c1392290132c64358de6115fe879239b5a688112f529b5ee1de8694` |
| 121 | `lemma` | [integral_one_div_log_sq_le_const](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/integral-one-div-log-sq-le-const.md) | 3028 | `result-track:aa53831dffd4003af6c5137fd619ad50f50e0d6689d7603c6588a0272b4e4d28` |
| 122 | `lemma` | [log_gt_two_of_ge_14](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/log-gt-two-of-ge-14.md) | 3060 | `result-track:85318b0033cacb778e15a818a2bd99c94d643c1e40c3b14b5120b04d1cfeed57` |
| 123 | `lemma` | [hasDerivAt_id_div_log_sq](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/hasderivat-id-div-log-sq.md) | 3068 | `result-track:87f004055a5706fd88137b8a347757b0f3095ca95b854022f5acd6167631fc7b` |
| 124 | `lemma` | [integral_one_div_log_sq_le_of_ge](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/integral-one-div-log-sq-le-of-ge.md) | 3075 | `result-track:eff45a644704da2a2a8afdad53e9210f3650091b37f18ad39acba2510ff04a4b` |
| 125 | `lemma` | [log_div_self_mul_integral_le_of_ge](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/log-div-self-mul-integral-le-of-ge.md) | 3128 | `result-track:fe45e1e6657fed71895f8d96a007e65e7daf625133d9447a178a84a64838021c` |
| 126 | `lemma` | [log_gt_one_of_ge_14](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/log-gt-one-of-ge-14.md) | 3136 | `result-track:1ed29352c5c0dbfc7b8b282a03d561bf22fef92cc1809a06b5b83d8d183d7341` |
| 127 | `lemma` | [x1_le_x1_log_x1](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/x1-le-x1-log-x1.md) | 3141 | `result-track:5bbe8f4e572c7f55bff6c8cf786611816ef2280aedd5c429c65d29ff3989a42f` |
| 128 | `lemma` | [x1_lt_x1_log_x1](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/x1-lt-x1-log-x1.md) | 3144 | `result-track:041f343df2ec8dffac35a919a260a88eba9dfe75ea1132e6f31973bcff36b28a` |
| 129 | `lemma` | [log_div_self_mul_integral_nonneg](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/log-div-self-mul-integral-nonneg.md) | 3147 | `result-track:fa2d6a5ed03f65114badb2740294dd92a2f676aa4a8bfc79d011f2b2c8f2e9bc` |
| 130 | `lemma` | [tendsto_log_div_self_mul_integral_atTop_zero](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/tendsto-log-div-self-mul-integral-attop-zero.md) | 3155 | `result-track:8b15284305d55a1751066ca311c79879c6644dc8863905dad71691ba0d4c72cf` |
| 131 | `lemma` | [integral_sub_div_self](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/integral-sub-div-self.md) | 3170 | `result-track:0aa72c797cd7c4fa86eb6addb1ca1f0c0740926e5018f87e5a8fbebac5da0350` |
| 132 | `lemma` | [integral_I_div_self_le](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/integral-i-div-self-le.md) | 3181 | `result-track:c5f05a75386e985a478134b48d3607cb0a43d8283ef8275c2117b1e822cc0868` |
| 133 | `lemma` | [u_eq_sub_integral](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/u-eq-sub-integral.md) | 3207 | `result-track:7c742152973850595a27c4e2826baff88799bfe1150cc256ac6fc59eb5b92389` |
| 134 | `lemma` | [hu_simplify](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/hu-simplify.md) | 3239 | `result-track:42612c8af53ceaef831dfc8899c5826bb895da6a9ef9434a794c531bad882c99` |
| 135 | `lemma` | [continuousOn_one_div_log_sq_Ioi](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/continuouson-one-div-log-sq-ioi.md) | 3245 | `result-track:bc61afb6e278210890211b5521766089a22faf0bcf4994d7fc7d33623328e555` |
| 136 | `lemma` | [hasDerivAt_integral_one_div_log_sq](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/hasderivat-integral-one-div-log-sq.md) | 3256 | `result-track:ab07c48cfb4712de54468f3b64acb63476b9ef1ccfd92737593188cddeb73d81` |
| 137 | `lemma` | [hasDerivAt_log_div_self_mul_integral](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/hasderivat-log-div-self-mul-integral.md) | 3268 | `result-track:b243ae77960e75dc8e01fb333f11650d5a219fb70b217ab8ff6ef73ac21681f2` |
| 138 | `lemma` | [h_deriv_at](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/h-deriv-at.md) | 3280 | `result-track:e28bd937e71e7acba0217ab2913752c309051c580d18a818f8716b0097741f71` |
| 139 | `lemma` | [h_monotoneOn](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/h-monotoneon.md) | 3285 | `result-track:2eba9ab3f0ae1c16dbb5fb85182fcb99bc031b6b3fb0c15b01e04c0f430ba7ca` |
| 140 | `theorem` | [hasDerivAt_log_div_self_mul_integral_one_div_log_sq](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/hasderivat-log-div-self-mul-integral-one-div-log-sq.md) | 3313 | `result-track:6b0574d7d3bc64f506feb55f2d0a27c06233e647b9db7ebc9e9020ad641e3b93` |
| 141 | `lemma` | [deriv_log_div_self_mul_integral_one_div_log_sq_pos](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/deriv-log-div-self-mul-integral-one-div-log-sq-pos.md) | 3321 | `result-track:f060c382484d76159b328218d7d112a46c9e6422e9fdf5c5fb6ca9f24ee20ab4` |
| 142 | `lemma` | [exists_larger_than_boundary_val](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/exists-larger-than-boundary-val.md) | 3350 | `result-track:a371fed1683d9466ec1b067e812bad07df9880da2b6043c84a72191d44369652` |
| 143 | `lemma` | [exists_isMaxOn_Ici_log_div_self_mul_integral_one_div_log_sq](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/exists-ismaxon-ici-log-div-self-mul-integral-one-div-log-sq.md) | 3368 | `result-track:37f27dab577a98aced92f79de72942b465b09add23c85bd38ccacc3aee114971` |
| 144 | `theorem` | [theorem_6_2](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/theorem-6-2.md) | 3466 | `result-track:58efff785c1d8107b8e62bc1f2e7e748db99847f1abbb753edcf5a7452abaf07` |
| 145 | `theorem` | [theorem_6_3](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/theorem-6-3.md) | 3494 | `result-track:022360c1c9557371087084ec53ae708605d43dcba6fb172f7b89997f6abc99f0` |
| 146 | `def` | [μ_num_1](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/num-1.md) | 3526 | `declaration-track:a88c7f1c5217ec7538166a6b07750fd69097c166729a76cf3f6b6677c060394b` |
| 147 | `def` | [μ_num_2](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/num-2.md) | 3546 | `declaration-track:726f4ad6161e4a6d25eaf56a61df091c88c11bb3ba23824077bb64b44b299f8b` |
| 148 | `def` | [μ_num](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/num-source-edition-2.md) | 3558 | `declaration-track:d5b2502962cf88a6f0fb544e0c5769db15b5825559a01f8d3eff529a182625b9` |
| 149 | `def` | [επ_num](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/num.md) | 3571 | `declaration-track:c2bfbb522466a2a931bd24fd599bac4a779af144e84fe186191966ac6bc4487d` |
| 150 | `def` | [default_b](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/default-b.md) | 3575 | `declaration-track:24917dc755552bfd7a8f15e560c75250047a4dc21a6411e251ef39fbd8b62a09` |
| 151 | `theorem` | [remark_7](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/remark-7.md) | 3593 | `result-track:42f07a675d3d0fcf0a704ce5965c8c4866b3816bc6c554b79bbcbe81148903ae` |
| 152 | `theorem` | [theorem_6](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/theorem-6.md) | 3621 | `result-track:e3531161885e6e0863cc07da2ccbe2ed78af6d3676ac9a58a9be3698892cfcc5` |
| 153 | `theorem` | [theorem_6_alt](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/theorem-6-alt.md) | 3659 | `result-track:2b5b780d70cf85bf8c44df2b4f9b1eb57169703d6c1535ae86aca634bf2af91f` |
| 154 | `lemma` | [find_ereal_bin](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/find-ereal-bin.md) | 3687 | `result-track:dff42d0b2e141ec57fd2087a6e0aa7f90e0d889d587af02f581ee9c4142352e0` |
| 155 | `lemma` | [ereal_toReal_sub_mono](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/ereal-toreal-sub-mono.md) | 3706 | `result-track:f7372f135e8365cbfdd8416f7347bbdefc2eb8bd49813650a01dcb7a6cdf8a77` |
| 156 | `lemma` | [ereal_toReal_coe_log](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/ereal-toreal-coe-log.md) | 3725 | `result-track:113b293387c610f054961ea07f8d2f33874851d29bcb76a290d0cda8fe9c0370` |
| 157 | `lemma` | [ereal_exp_toReal_le](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/ereal-exp-toreal-le.md) | 3738 | `result-track:65fbd5e0281d1c386a1f457dc949464c85fefad4e1494dfadb9238865c31608b` |
| 158 | `lemma` | [ereal_exp_ge_max](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/ereal-exp-ge-max.md) | 3759 | `result-track:44ed2dc9e650bd4ca76eaf5b16719dff1b5d4a58236a95320e4ea262a0c9cbe8` |
| 159 | `lemma` | [corollary_8_apply_theorem_6](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/corollary-8-apply-theorem-6.md) | 3799 | `result-track:71f642ced453bb8e8a1eccbeca49b31eba1259ee9b6d04335b9154e622acbda6` |
| 160 | `theorem` | [corollary_8](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/corollary-8.md) | 3876 | `result-track:38a54a5688518ab162371be06a47f103f6c92c2462e2534fcf8629998189cc1d` |
| 161 | `theorem` | [corollary_21](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/corollary-21.md) | 3927 | `result-track:2e2a423f8bedb96c97371ee09ab2d86ae08e299b34a04b6f301c71abb578be18` |
| 162 | `def` | [Table_4](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/table-4.md) | 3974 | `declaration-track:817e6da2802aa33e434c232cb9cac39292ac9d9e2a32ed5e733787f2152f1ecf` |
| 163 | `def` | [Table_5](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/table-5.md) | 4020 | `declaration-track:178aa74e4cf607acad6aa92f305d588cf89c768b6991f5dd6d014f6ecb8c2753` |
| 164 | `theorem` | [corollary_22](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/corollary-22.md) | 4064 | `result-track:0e17129757d96877dfd8f0cfb3bd113b266f4bdf792e73a560f2030bf9dbb28e` |
| 165 | `def` | [table6](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/table6.md) | 4066 | `declaration-track:c6a01dfd0bb2a30063b0ba380f60eb97f20865f948a7bf9b402e8830f3192043` |
| 166 | `theorem` | [corollary_23](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/corollary-23.md) | 4086 | `result-track:4b238a4778973954b61145e7e9b110b471355ca6c0542fd9e478a3053567e96a` |
| 167 | `def` | [table7](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/table7.md) | 4089 | `declaration-track:ab2c1e3ff696778a541321e4f0fcaafe36d7bbd29df1bde17dd672cddca66075` |
| 168 | `theorem` | [corollary_24](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/corollary-24.md) | 4113 | `result-track:4377514855045a025b2c654a7120c5dfa4f2f94ff615d4bdf2f56445fc89412a` |
| 169 | `lemma` | [table6_mem](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/table6-mem.md) | 4119 | `result-track:8fc3a26d08920081a7702991dcf6bcd2335cc73984c89297fe7198e452c904f3` |
| 170 | `lemma` | [sqrt_exp_le_half](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/sqrt-exp-le-half.md) | 4122 | `result-track:406fff8fc11331d314b899556991b54a486b85107310a91a7059f16879b2d007` |
| 171 | `lemma` | [admissible_bound_le_0826](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/admissible-bound-le-0826.md) | 4133 | `result-track:226e3b9cc5af55b4028f68d7e7f342bfa6dffef1c6e8c234b96085664d62e63e` |
| 172 | `theorem` | [corollary_26](../../../../MeasureAndIntegration/FKS2Edition2.lean/declarations/corollary-26.md) | 4176 | `result-track:525c12fbcd389afa521f04c4ef8c9a332ad8fc486f391824b0e9627dff1df45c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5a96ece3a5813e020fe665e2cf1060939c42cc19e391d0021ca90ab377b2448a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/FKS2/Variante677b791cd8a3612859851d52d29bc8714a3844979df02a794d8fd4e87a9731a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
