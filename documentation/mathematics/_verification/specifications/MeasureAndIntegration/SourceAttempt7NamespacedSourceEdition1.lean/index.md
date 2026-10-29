# Verification target: Source Attempt7 Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d16060fa3f2a65e8caf18857f6576a90bf0c0a54",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt7/Variant60474e1ff7ea39e3488e86a7ba316791dbbccda953f63fb48851d3fbf85deef4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d16060fa3f2a65e8caf18857f6576a90bf0c0a54`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt7/Variant60474e1ff7ea39e3488e86a7ba316791dbbccda953f63fb48851d3fbf85deef4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt7/Variant60474e1ff7ea39e3488e86a7ba316791dbbccda953f63fb48851d3fbf85deef4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CompensatedGammaIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [P](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/p.md) | 23 | `declaration-track:01eb18aab216407b099eb065a1417ab4a73767f9030f5702c9f8b5f05d6dc462` |
| 2 | `abbrev` | [a](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/a.md) | 24 | `declaration-track:e0ffe7a685262f0b7a81e06de4606782772da5a359961bf3f9a4b94deb3b3e4e` |
| 3 | `def` | [firstTerm](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/firstterm.md) | 26 | `declaration-track:1b4999b5b5a8972561d1f842361543f2902e8ba78e6acd366614664e3165feb6` |
| 4 | `def` | [secondTerm](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/secondterm.md) | 28 | `declaration-track:53794350de97f6bfe7c639b8c142ddee11c5bee675a83c3e884a48cd0dfc35a2` |
| 5 | `def` | [firstSeries](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/firstseries.md) | 30 | `declaration-track:60e8ac6710826f68c1a4e982e56c81afaf91a2bc0751eb614ee0d742d0103329` |
| 6 | `def` | [secondSeries](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/secondseries.md) | 32 | `declaration-track:766dd8fb98b96a04f663a32496d1b6936cef2f40fe0f5e9ca429b2003120e8ab` |
| 7 | `def` | [weight](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/weight.md) | 34 | `declaration-track:eb18fcd2a0e0c6fa6cf901342dcf9c131a1f7c2eabc4f91e5c62eb6e9aa4f5c4` |
| 8 | `theorem` | [weight_eq](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/weight-eq.md) | 36 | `result-track:b6074ccf48f4dc4713fcea4bf265f9617deee0d75640cbcf6cb02dc5b4fe3484` |
| 9 | `theorem` | [weight_summable](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/weight-summable.md) | 41 | `result-track:eba38603de024039f1498eebef0cd0c506cf82aae7023b630c10f156ebc20c7a` |
| 10 | `theorem` | [pairedTerm_hasDerivAt](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/pairedterm-hasderivat.md) | 46 | `result-track:76db22fbd73573127ba92ef07da81d7872aeb08213a4000e9446f282fd0a1055` |
| 11 | `theorem` | [firstTerm_hasDerivAt](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/firstterm-hasderivat.md) | 63 | `result-track:ea2f923c16588f183b603cd223277eda07317dc1e19b782157e830b95aef8bfe` |
| 12 | `def` | [lowerCoefficient](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/lowercoefficient.md) | 81 | `declaration-track:8d721e3077a527e6a3d6ea2b667af37d78b00a77ebba969d33a326c4a3e0bf58` |
| 13 | `theorem` | [lowerCoefficient_pos](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/lowercoefficient-pos.md) | 83 | `result-track:c1f151a7c7b68debe4ea695afc353822e76efecc0fd15ffb276e469043a08557` |
| 14 | `theorem` | [rate_lower](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/rate-lower.md) | 86 | `result-track:0bbc88a6dcffab8933f4c55b8a7f3a628b7763f614b3cfe9ba86db64d8ee5328` |
| 15 | `theorem` | [firstTerm_bound](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/firstterm-bound.md) | 95 | `result-track:122a7706c844811f2ad983819d0ddb125b0999d1c5268b22c662ca22221f3c86` |
| 16 | `theorem` | [secondTerm_bound](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/secondterm-bound.md) | 124 | `result-track:3547334f4549b24f2b91de5381d402eb22d41e14aa365939f00ed0832af20a9d` |
| 17 | `theorem` | [firstTerm_summable](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/firstterm-summable.md) | 141 | `result-track:69413a921978b624cd242a2f7297009aa4fcd1fa8bbc2542ae5415eda3e4c982` |
| 18 | `theorem` | [secondTerm_summable](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/secondterm-summable.md) | 148 | `result-track:725a513559b342085f321da2e3c62081ede17d98d70f2deebac647f62a2ee13a` |
| 19 | `theorem` | [actualProfile_hasDerivAt](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/actualprofile-hasderivat.md) | 154 | `result-track:61235116fc93c2c4d9c3fdadff001116c4261efa9dbcc0e3b2ac1e2549459443` |
| 20 | `theorem` | [actualProfile_deriv](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/actualprofile-deriv.md) | 169 | `result-track:1b57a75be201e5090be4497bb5ba1401b6af3170b8b8a72457e542206d734378` |
| 21 | `theorem` | [firstSeries_hasDerivAt](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/firstseries-hasderivat.md) | 172 | `result-track:914083c62845fb87d0b24e275a805384541cdf17af8d6d458d6d41e4b3f0ada7` |
| 22 | `theorem` | [actualProfile_second_hasDerivAt](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/actualprofile-second-hasderivat.md) | 184 | `result-track:b9c180cfc189da33ddcb8038d582430c3b3e431f5e26a85fb5d67a0ae5b855dd` |
| 23 | `theorem` | [actualProfile_second_deriv](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/actualprofile-second-deriv.md) | 190 | `result-track:d69e86b778ebc96df0c61ee8c09368534b896345dc5859ae68d03b09acec3759` |
| 24 | `theorem` | [secondTerm_nonneg](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/secondterm-nonneg.md) | 194 | `result-track:aed245f05a93d9b33861c83ce5c31fb861f3169e878f674d12c0ebbc022220f3` |
| 25 | `theorem` | [exponential_firstMoment_integrable](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/exponential-firstmoment-integrable.md) | 198 | `result-track:57782650eaa1a52ce6fe7766c5a00b11e9f1c54fe69133930b2fdd48c7a5dc9a` |
| 26 | `theorem` | [exponential_firstMoment_integral](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/exponential-firstmoment-integral.md) | 211 | `result-track:8e0645fa39a30d115f55f72f389cef1e18b9a3909dc3e55d8216873e7f8d3d6e` |
| 27 | `def` | [momentTerm](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/momentterm.md) | 219 | `declaration-track:ce64d5cafa5b4d2633f47ff4344f9490ff79bcf85291e3532fdd5ce6c09641b2` |
| 28 | `def` | [curvatureKernel](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/curvaturekernel.md) | 221 | `declaration-track:eeb769ccbaaddeb4be47998d5678569bc945781510c73e2e91d3d220533c7fd4` |
| 29 | `theorem` | [momentTerm_nonneg](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/momentterm-nonneg.md) | 223 | `result-track:6b833cfc61a05a58be4c0060699d98c7dfa454f0638cc2cc7c438ee2800eb181` |
| 30 | `theorem` | [momentTerm_integrable](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/momentterm-integrable.md) | 228 | `result-track:408ebf2f54a3561a746093545f8ee7addcf4890e3eca6d41fd4ffbf20094daaa` |
| 31 | `theorem` | [momentTerm_integral](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/momentterm-integral.md) | 233 | `result-track:7812575c2f1dad8a2fc987d797b9671452507c5f480ed3cbf21d0191c7993c40` |
| 32 | `theorem` | [momentTerm_hasSum](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/momentterm-hassum.md) | 238 | `result-track:ea98bfc51ea54abe3c19dad7910f777eaed215059a49e9b5d7952b05f3b1c1ee` |
| 33 | `theorem` | [curvatureKernel_continuousOn](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/curvaturekernel-continuouson.md) | 254 | `result-track:16b602aaf84bb926e7a85567c0b6e7f646502ba606a5d18469d3da6d43b97f23` |
| 34 | `theorem` | [momentTerm_integral_norm](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/momentterm-integral-norm.md) | 261 | `result-track:84dbf98c562cf02990d80d81e943d0acc228f4bd60235e1fe4a41c04314d7489` |
| 35 | `theorem` | [momentTerm_integral_norm_summable](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/momentterm-integral-norm-summable.md) | 269 | `result-track:bd4fbb92aecc2e2096be406e6928c55beb5b03b74433f50d54dd24e21be84ec6` |
| 36 | `theorem` | [momentTerm_lintegral_enorm_tsum_lt_top](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/momentterm-lintegral-enorm-tsum-lt-top.md) | 277 | `result-track:c23351b8460d9957fe9ace0b3f0c8719f3e072254c1b9f7d0b0fa1ef578e876c` |
| 37 | `theorem` | [curvatureKernel_integrable](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/curvaturekernel-integrable.md) | 289 | `result-track:55baf8c9dadd7ef901edb720317f47f25770cbd7001829d01e7bce16004cb7c9` |
| 38 | `theorem` | [secondSeries_eq_curvatureIntegral](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/secondseries-eq-curvatureintegral.md) | 303 | `result-track:a69fb68d72b2701d4a82e7854039765834c4e8fe4864320a7db9ef4409f89be4` |
| 39 | `theorem` | [actualProfile_second_integral](../../../../MeasureAndIntegration/SourceAttempt7NamespacedSourceEdition1.lean/declarations/actualprofile-second-integral.md) | 314 | `result-track:63d3ede0d3ba6fe377d61ffe0d756311a6f254628e0fea109056aaaf12030184` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf7588a8dc60dd78be9d4eb7ffd0bc9fb29791ad661345468f5b141ac2522513 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt7/Variant60474e1ff7ea39e3488e86a7ba316791dbbccda953f63fb48851d3fbf85deef4.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt7/Variant60474e1ff7ea39e3488e86a7ba316791dbbccda953f63fb48851d3fbf85deef4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
