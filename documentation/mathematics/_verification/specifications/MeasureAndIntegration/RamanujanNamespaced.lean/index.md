# Verification target: Ramanujan Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1497488f027732033fe8af0a05024403d34b5d20",
  "lexical_observation_count": 83,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1497488f027732033fe8af0a05024403d34b5d20`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `PrimeNumberTheoremAnd.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.ChebyshevTheta` — import line 7; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.SecondarySummary` — import line 8; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.Ramanujan.RamanujanCalculations` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ε](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/anonymous-source-edition-2.md) | 27 | `declaration-track:a7f19071548efe290fd564f40dc51055fff2ed5cc23e20a69764c333d22fbe5b` |
| 2 | `def` | [ε'](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/anonymous.md) | 29 | `declaration-track:94108a404c789016e19186594382f2eecdd8f900d869e03879f60e4e507c4956` |
| 3 | `theorem` | [sq_pi_lt](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/sq-pi-lt.md) | 51 | `result-track:3ad4e2c5012f60d40fd7c9f90d07b8a7a24cea3a87f3b16157b06850b8e46513` |
| 4 | `def` | [εneg](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/neg.md) | 77 | `declaration-track:3dd6c3bd36adf83abf7f402b22edfd42fab3ce4c83442763b7909ac2b2767c4f` |
| 5 | `def` | [εlower](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/lower.md) | 86 | `declaration-track:25e716947ad25f59f1ba8b22a454a990e0cfca93c4ec04112c9a8f08a8bbb66f` |
| 6 | `lemma` | [shift_factorial_lower](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/shift-factorial-lower.md) | 89 | `result-track:7c20ac72693a878735620b56770c4f2e54d93840bfd147ae1fba25a3d2c17b41` |
| 7 | `lemma` | [shift_m_lower_of_nonpos](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/shift-m-lower-of-nonpos.md) | 128 | `result-track:78bd30573a5859cb56356afe178971a2e3b32119cfa98e9ce67b21e48ec8588b` |
| 8 | `theorem` | [ex_pi_gt_neg](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/ex-pi-gt-neg.md) | 153 | `result-track:7e13c8fa1da8a0846718cc143b9759dba2ec748cbcaab0d782543ebb8fdf291d` |
| 9 | `lemma` | [shift_m_lower_of_nonneg](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/shift-m-lower-of-nonneg.md) | 269 | `result-track:f5d8a1aded16debb233d8bca33e5deae516385a055a26cf54b56905fa3e83f41` |
| 10 | `theorem` | [ex_pi_gt_nonneg](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/ex-pi-gt-nonneg.md) | 286 | `result-track:c94302c6773b048c4d161c42874f40ba9d315ecf5455614e744dddc45a937a34` |
| 11 | `theorem` | [ex_pi_gt](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/ex-pi-gt.md) | 426 | `result-track:5812c3a83e937cdd5469ce1f1a788376bc10d41979e13d10859b2f7dc895b8eb` |
| 12 | `theorem` | [criterion](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/criterion.md) | 459 | `result-track:c94f67b9e38342ad0db48c021675ba965f187aecdf536bf83c051ce0915075a3` |
| 13 | `theorem` | [allThetaChecks_3_599](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/allthetachecks-3-599.md) | 504 | `result-track:71d6c1a7385efbf72224611ef7accf809ad185ca39075c221a0d43f5c910697e` |
| 14 | `theorem` | [thetaCheck599](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/thetacheck599.md) | 509 | `result-track:99c3bd4a42477ad452829a02846400f97f9e4517da204a114dc5d4885c93e261` |
| 15 | `theorem` | [pi_bound_1](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/pi-bound-1.md) | 525 | `result-track:ab91154de1b0d9f7a85c93c56b711315a2caeabba646dd5513356d88be8e619a` |
| 16 | `theorem` | [pi_bound_2](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/pi-bound-2.md) | 569 | `result-track:bd7db37cccfb05e4abe8f156beafde114a63454ec40f2dfc2fb66a0ed11debe0` |
| 17 | `theorem` | [pi_bound_3](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/pi-bound-3.md) | 681 | `result-track:9b906893af04e7dfed8b761f1b20313fcd8548625e0f4a7289c4a5c200fb836d` |
| 18 | `theorem` | [pi_bound_4](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/pi-bound-4.md) | 795 | `result-track:cf7c3ffe9b81ea572d6620902effb0d8242453a6d9ec66359046f1701b9b1b0f` |
| 19 | `theorem` | [pi_bound_5](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/pi-bound-5.md) | 817 | `result-track:ba4136c38c391bbe8afa8ef81229fcb77d046c23277ebc519e3c3713314a5a5c` |
| 20 | `theorem` | [pi_bound_6](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/pi-bound-6.md) | 833 | `result-track:cccf4ff819725f56ffbe78bc1fa55172c763caddb4b3eaca8217ec7e031751a6` |
| 21 | `def` | [a](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/a.md) | 841 | `declaration-track:288e408960b3fcd5ecc257ae2a31233c44ba8bb5c0354d3e3de17b76525915e9` |
| 22 | `theorem` | [pi_bound](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/pi-bound.md) | 857 | `result-track:c677a003fcdbcf1e1572688429c5fb9d04f74d6e9c7b3a2a743ad118cb7d76b9` |
| 23 | `lemma` | [pi_bound_abs_mul](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/pi-bound-abs-mul.md) | 898 | `result-track:26b608417fd5248829c9f6e5a97059273b010b9687e5166e25557b26e9b35d25` |
| 24 | `def` | [xₐ](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/x.md) | 910 | `declaration-track:1051ce10b84fc034e5ba8db774f848284ab1a403875cdf3f3bb08092ee22801b` |
| 25 | `theorem` | [a_mono](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/a-mono.md) | 919 | `result-track:e29dc6cd7a71fd0dceede2647cf3f2f368bd374a2019b3b3493cc6c8e2f191b2` |
| 26 | `def` | [C₁](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/c.md) | 956 | `declaration-track:2b4f4e990a86b208efc743400a3d55baec6e8014a87e0dc9531609eb23669a9c` |
| 27 | `def` | [C₂](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/c-source-edition-3.md) | 958 | `declaration-track:b9ad51f30dbbf9ca805e7bf3b91d8fd1e69b7cdfc51104ba2d90b1ed5655e0ba` |
| 28 | `def` | [C₃](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/c-source-edition-2.md) | 960 | `declaration-track:b1b9b107ea7aa3f8c275be38801549dbe81080975665ed3029e3220a70034861` |
| 29 | `def` | [B](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/b.md) | 962 | `declaration-track:e833e0d9c6c3a7176d2a8a6951820d0063e17bcf36421d65fd8656aa6ba9ccd7` |
| 30 | `def` | [Mₐ](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/m-source-edition-2.md) | 965 | `declaration-track:468ca808c75680edc8a3a610134e48c7be31ddac82f0c38ba30e4e04988df7de` |
| 31 | `def` | [mₐ](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/m.md) | 967 | `declaration-track:084e159e643de4ae8b131128ca29b638910db608a345b8a4d24feb4a54f063e6` |
| 32 | `def` | [mLower](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/mlower.md) | 969 | `declaration-track:d4c5fe4fbe843ac7aeebd64f0d30c5eff91fe4c0f876bea1a7d79b6d94bedcd3` |
| 33 | `def` | [exₐ](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/ex.md) | 971 | `declaration-track:8563e7ba36151f1100477b0a3be18ea6f92c4ae0069147544726ce144cca10b7` |
| 34 | `theorem` | [log_xₐ_val](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/log-x-val.md) | 973 | `result-track:9b3206553839d44ec85218aac747ae7ddc6f54f4c6f172448af598df6fc4dfa9` |
| 35 | `lemma` | [xₐ_pos](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/x-pos.md) | 975 | `result-track:53d577b2d7daf56985c8c592206b3af91bd0fbfa60133e017265070eef8aab62` |
| 36 | `lemma` | [one_lt_xₐ](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/one-lt-x.md) | 979 | `result-track:bffca73278a235025db7ea24aef4b602818df1c63d67f114980cc9940926717f` |
| 37 | `lemma` | [two_le_xₐ](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/two-le-x.md) | 983 | `result-track:bbe8c0580ade0e47673eb3b01c58fcc79ca96fc7cc4bdbea10ed2fa1a3146704` |
| 38 | `lemma` | [log_xₐ_pos](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/log-x-pos.md) | 987 | `result-track:f9c97e6566ee4bdfbe0a88ef2dc37402040a73f59cb3650f05c7e0cb6f908e43` |
| 39 | `lemma` | [exp3000_le_xₐ](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/exp3000-le-x.md) | 990 | `result-track:63e1e119492a9f4c6b2a836de34a14697212c32badffc21a3b503c496d13b2a6` |
| 40 | `lemma` | [xₐ_le_exₐ](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/x-le-ex.md) | 994 | `result-track:561f6d20ba07ceeb743e8f2d242e659d1f6d9c1b64565343ea2fc647906706fb` |
| 41 | `lemma` | [two_le_exₐ](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/two-le-ex.md) | 998 | `result-track:21697ac507bb853b9cc24c81ea5df6b7f4e6a70e929b8cd8f9f89c55c01d4212` |
| 42 | `theorem` | [exₐ_eq](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/ex-eq.md) | 1001 | `result-track:07ae6b7ac2bb28f02e62623ed56d5183479067455bd7135fd451546c2ab29748` |
| 43 | `lemma` | [exₐ_pos](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/ex-pos.md) | 1006 | `result-track:45e89b8c7852290a8ff3dc2116837cfdda91335fcebd626825d2951422f6a4d9` |
| 44 | `lemma` | [integrable_a_over_log7_piecewise](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/integrable-a-over-log7-piecewise.md) | 1010 | `result-track:30268d0dd4bf2f0bd1c94e01081d4d3722a70ca58aa875389d9f303831b93580` |
| 45 | `lemma` | [log_6_IBP_t](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/log-6-ibp-t.md) | 1172 | `result-track:bb1e63e34dd1880d125bbf473598206946830b17b8f6175624c82e73692d52d7` |
| 46 | `lemma` | [log_5_IBP_t](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/log-5-ibp-t.md) | 1223 | `result-track:5eacca88030a77c8b82d82e69b84a901cdb18103ef94f6aeab869bd724c3a776` |
| 47 | `lemma` | [log_4_IBP_t](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/log-4-ibp-t.md) | 1274 | `result-track:597b34a28ee3dbc8741ebdc358938dd8a8b0a0a61d7457694a84b53f98341607` |
| 48 | `lemma` | [log_3_IBP_t](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/log-3-ibp-t.md) | 1325 | `result-track:7b27a650ef96f8d3659fc280b9c22f84b47beed33a1dc85ef78a9da1f96b84d1` |
| 49 | `lemma` | [log_2_IBP_t](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/log-2-ibp-t.md) | 1376 | `result-track:076ce7dd6e520fad0af3528057125743cb31945b1f8c8056f4bad0348d7ffc15` |
| 50 | `lemma` | [log_2_expansion_t](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/log-2-expansion-t.md) | 1427 | `result-track:4323d7f0e09dd2a8957809de9e5c278bbe1eee26429c23678a6731f4c684c538` |
| 51 | `lemma` | [integral_Icc_split_at_xa](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/integral-icc-split-at-xa.md) | 1440 | `result-track:8ee6551612b2be2a174b69e446ad6b3cb15fd7d44c708107ffd157206a3cebe6` |
| 52 | `lemma` | [h_monotone_aux](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/h-monotone-aux.md) | 1463 | `result-track:1e0ce5367fac014f3f4563c07a908b2c7c7cff92263d347901e3d7b6f7495ee5` |
| 53 | `lemma` | [ratio_bound_xa](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/ratio-bound-xa.md) | 1485 | `result-track:77b8263f5a278524d13bd87885ac1d688415b21c7a5e37609bf54946da4d7091` |
| 54 | `lemma` | [ratio6_bound_xa](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/ratio6-bound-xa.md) | 1509 | `result-track:a4047e830f978ed1fc0c9c81324a5a498549bafbc03c150fbc0b160d018fb8b1` |
| 55 | `lemma` | [sqrt_bound_xa](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/sqrt-bound-xa.md) | 1556 | `result-track:872512cc4edbde87087a5c9d44a1cc47447bc4b33ba9aa7e9a4b5e4149042ebf` |
| 56 | `lemma` | [sqrt_term_bound_xa](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/sqrt-term-bound-xa.md) | 1593 | `result-track:1a72fb8534e5db5c66f40648ababd61ef4f9928c0b51aa34496b1237bb058dba` |
| 57 | `lemma` | [pi_upper_specific_h720Ia](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/pi-upper-specific-h720ia.md) | 1599 | `result-track:bd472623aeff9e535433501e2c6619251c24e98e6904bccb8afb30e7d2eb0216` |
| 58 | `lemma` | [pi_lower_specific_h720Ia](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/pi-lower-specific-h720ia.md) | 1615 | `result-track:5228e76da1c08868197e66bd121fd869a37f38b233680b5186b4d952a8e5c1f6` |
| 59 | `lemma` | [pi_upper_specific_main_le](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/pi-upper-specific-main-le.md) | 1631 | `result-track:b7801f61ffd05e445c926dac437f1014d9fc1562a9194cc34c268455a911439d` |
| 60 | `theorem` | [pi_upper_specific](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/pi-upper-specific.md) | 1728 | `result-track:ce09b0b022aa998fae6e5b1b4231f7e8468cc395bafca9b8dc2e2df776cff51f` |
| 61 | `theorem` | [a_eq_admissible_ge_3000](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/a-eq-admissible-ge-3000.md) | 1965 | `result-track:2c4533e126d30afa48cc84006ed445c2ed86582b6d4ec025c3d2ba37582612fc` |
| 62 | `theorem` | [a_exp_upper](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/a-exp-upper.md) | 1986 | `result-track:54c6a6eb11d211a023314e8894de625bee0118f1ac5ecbdf82ba3d73d336ee87` |
| 63 | `theorem` | [a_xa_upper](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/a-xa-upper.md) | 1998 | `result-track:b189ed5860468b811a931449522001412711c3daf7b90695c89ce72bfbb90ed4` |
| 64 | `theorem` | [a_xa_pos](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/a-xa-pos.md) | 2003 | `result-track:da195d2580add8054fa57ceacc61b031a4bf09fe3273c8a995619bd4b773221f` |
| 65 | `theorem` | [a_3870_upper](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/a-3870-upper.md) | 2009 | `result-track:bde1797115c1e281ec2bef2e8048020473a93bfbdf7af7b555e39e5d7d83ccf6` |
| 66 | `theorem` | [B_nonneg](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/b-nonneg.md) | 2014 | `result-track:6990aebf706dc61098dfe1d7fdca545b8472130d699175f63b2cecfce3586521` |
| 67 | `theorem` | [B_le_small](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/b-le-small.md) | 2019 | `result-track:898de71bca0e2402159b18ef1f021644ddc962b10fdfaac12643a5e8f73cbce4` |
| 68 | `theorem` | [a_nonneg](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/a-nonneg.md) | 2022 | `result-track:210c25ddce306ada20904ecd052171067bfca52e8171ef26cc1c5ea6a49d871f` |
| 69 | `theorem` | [a_mono_3000](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/a-mono-3000.md) | 2040 | `result-track:cfae5eb878e86a32ac7c8da7877d9cd8fc6dbf3f2ceda409f98443eaeacdfe74` |
| 70 | `theorem` | [C₁_nonneg](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/c-nonneg.md) | 2053 | `result-track:be50a142297431c6a429879ccfcd56680902460812daf2c38848c0aec7338f64` |
| 71 | `theorem` | [C₂_abs_le_C₁](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/c-abs-le-c.md) | 2067 | `result-track:10279a6e6f13b57a6b998cf45e00f6ea459365c2a09c366f10e2e68e2242a743` |
| 72 | `theorem` | [C₃_nonneg](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/c-nonneg-source-edition-2.md) | 2128 | `result-track:ca22a4ed08afffb76833b470683ad03ab5baec92d150f5f7c3c412b2c0536717` |
| 73 | `theorem` | [C₃_le_one](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/c-le-one.md) | 2134 | `result-track:30be0a4a2959e55ab6b3eac727b14798da683537b7902fea1783c389a9b72fab` |
| 74 | `theorem` | [a_le_low_huge](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/a-le-low-huge.md) | 2138 | `result-track:d1acc4d98024462d58debca5390e4885d2f305741d3e55703dcfe17e922ab4ba` |
| 75 | `theorem` | [C₁_le_one](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/c-le-one-source-edition-2.md) | 2190 | `result-track:915a3ebf1eab240ac14c79faec58de4821707b6116aebd2278d6a0130151b6ed` |
| 76 | `theorem` | [a_exa_upper_tight](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/a-exa-upper-tight.md) | 2209 | `result-track:9ca80676ffdec97816744fe7caa709af54b6374e21f0b4116fcb14a4cc9d1aec` |
| 77 | `theorem` | [mₐ_xₐ_le_121](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/m-x-le-121.md) | 2215 | `result-track:b303892f9f3d146f1ee2b60d0c72ba2e92dabe2707899dc5f5b26797fa776d13` |
| 78 | `theorem` | [Mₐ_exₐ_nonneg](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/m-ex-nonneg.md) | 2220 | `result-track:ab1243c5f615bc77aa30e27e998608652444806deaacbfb5fd723472179f081e` |
| 79 | `theorem` | [Mₐ_exₐ_le_1426](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/m-ex-le-1426.md) | 2225 | `result-track:9a85310ee2419d263ddc1584f90a41e36e784cc01cce2e6719e6e4e969dd78fe` |
| 80 | `theorem` | [mₐ_xₐ_ge_neg1194](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/m-x-ge-neg1194.md) | 2229 | `result-track:7ca738f9016d7d5191a24df1ef967bcfc04150456a98d0ce0c0878e5882183dc` |
| 81 | `theorem` | [pi_lower_specific](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/pi-lower-specific.md) | 2242 | `result-track:26064d6f4e16a29810551ebd1f201f9dc9a4a3ca9780404c10d869a5d7e5d892` |
| 82 | `theorem` | [epsilon_bound](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/epsilon-bound.md) | 2395 | `result-track:dafe0fced9811e40ab9e0cb8f9325146ec96ab27f28c54d41793037671779efb` |
| 83 | `theorem` | [ramanujan_final](../../../../MeasureAndIntegration/RamanujanNamespaced.lean/declarations/ramanujan-final.md) | 2441 | `result-track:4f7e8c4049cd075d31058ce76a92279ff3d8c166ec89498b1958c04df88f296b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bece836867ef6fc13384b60193a03493b4ae2143fe0625e5edc843e6e0127d19 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Ramanujan/Varianta18d14250a1e8aef6688590efa8158696b1db9a13215705c4d3ee5363ac6e7ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
