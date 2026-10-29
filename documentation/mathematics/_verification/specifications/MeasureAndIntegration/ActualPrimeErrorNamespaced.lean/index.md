# Verification target: Actual Prime Error Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52fd69a70b5f126acf9e2bb07932acce27692c09",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualPrimeError/Variantaf1aa34e68b8b8cf21a8d559c75744538d63608c0935d5f5e10b2db33792954d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ActualPrimeErrorNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ActualPrimeErrorNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52fd69a70b5f126acf9e2bb07932acce27692c09`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualPrimeError/Variantaf1aa34e68b8b8cf21a8d559c75744538d63608c0935d5f5e10b2db33792954d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualPrimeError/Variantaf1aa34e68b8b8cf21a8d559c75744538d63608c0935d5f5e10b2db33792954d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.WeightedPrimeAbel` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourcePairedPrimeAverages` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.GeomSum` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Summable` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [mangoldtError](../../../../MeasureAndIntegration/ActualPrimeErrorNamespaced.lean/declarations/mangoldterror.md) | 37 | `declaration-track:2ae27d49bad79a09e451033df04904720a0234c4ea0a9347faac9ad40c7a2bf6` |
| 2 | `abbrev` | [primeError](../../../../MeasureAndIntegration/ActualPrimeErrorNamespaced.lean/declarations/primeerror.md) | 39 | `declaration-track:9620cd47197ac248eee60221a0b654ba94335f5c70b3e5db44adcfe42883a29d` |
| 3 | `abbrev` | [E₁](../../../../MeasureAndIntegration/ActualPrimeErrorNamespaced.lean/declarations/e.md) | 42 | `declaration-track:66be1e44af4499759804dcbb9b3b9f8cb1c8784b90fbe6230d2445c5d5a139ce` |
| 4 | `lemma` | [E₁.summand_nonneg](../../../../MeasureAndIntegration/ActualPrimeErrorNamespaced.lean/declarations/e-summand-nonneg.md) | 44 | `result-track:19f2befeeadd777ffc8d023740f3248bdea77c30e5e7c053bde592c93ee7a7c1` |
| 5 | `theorem` | [E₁.summable](../../../../MeasureAndIntegration/ActualPrimeErrorNamespaced.lean/declarations/e-summable.md) | 51 | `result-track:19c3f03922b33cb15fdcf9dc81d93f5cc9e581fea3cadea845b19551c8aad5eb` |
| 6 | `lemma` | [antitoneOn_log_div_sq](../../../../MeasureAndIntegration/ActualPrimeErrorNamespaced.lean/declarations/antitoneon-log-div-sq.md) | 75 | `result-track:4d2c25cd7100712824fc43f2096e118a6c1e564e62f531c118c021ff17fef8ae` |
| 7 | `lemma` | [log_div_sq_nonneg](../../../../MeasureAndIntegration/ActualPrimeErrorNamespaced.lean/declarations/log-div-sq-nonneg.md) | 96 | `result-track:e893a7fcf1e89f41254d899f6fd656c870404451ea476f7cda645647a9be764b` |
| 8 | `lemma` | [log_div_sq_is_deriv](../../../../MeasureAndIntegration/ActualPrimeErrorNamespaced.lean/declarations/log-div-sq-is-deriv.md) | 100 | `result-track:9943fc0ac550bdc8d8316f365d75181e985b74f2b4da6fe4491ffadb166eb261` |
| 9 | `lemma` | [tendsto_antideriv_log_div_sq](../../../../MeasureAndIntegration/ActualPrimeErrorNamespaced.lean/declarations/tendsto-antideriv-log-div-sq.md) | 113 | `result-track:5d9ccc88d96b4e0ea324ad38d2a779414432a1e321138b550d56b4f6d50a70b5` |
| 10 | `lemma` | [integrableOn_log_div_sq](../../../../MeasureAndIntegration/ActualPrimeErrorNamespaced.lean/declarations/integrableon-log-div-sq.md) | 124 | `result-track:e2ff4e511ff72a1c8c0daa94299e3ab23eba83ca9ead0f9480d51285a249b1b1` |
| 11 | `lemma` | [integral_log_div_sq](../../../../MeasureAndIntegration/ActualPrimeErrorNamespaced.lean/declarations/integral-log-div-sq.md) | 128 | `result-track:2302408c1140bfde4f4e5467d5df371dd66be8eda9cc5e16d6a745db924287f5` |
| 12 | `lemma` | [summable_log_div_sq](../../../../MeasureAndIntegration/ActualPrimeErrorNamespaced.lean/declarations/summable-log-div-sq.md) | 133 | `result-track:84e618a51e70cff6efef8168dc2f1290f372071b822df4803813311f91a365a4` |
| 13 | `lemma` | [sum_log_div_sq_le](../../../../MeasureAndIntegration/ActualPrimeErrorNamespaced.lean/declarations/sum-log-div-sq-le.md) | 143 | `result-track:46d50deba104b9c73a4907c1c6448859b5790c5094c06fbf970cba211fff4bf1` |
| 14 | `theorem` | [E₁.le](../../../../MeasureAndIntegration/ActualPrimeErrorNamespaced.lean/declarations/e-le.md) | 157 | `result-track:06c170f60c2a0f49b961660bd4006cb6dee9bafdde1f745c61f45f3b92db3d5d` |
| 15 | `theorem` | [E₁.nonneg](../../../../MeasureAndIntegration/ActualPrimeErrorNamespaced.lean/declarations/e-nonneg.md) | 183 | `result-track:51c69a68fb0a7469d485938f9869ffc9bd0be623f57453c7755fc5a2c469f949` |
| 16 | `theorem` | [mangoldtError.le_primeError_add_E₁](../../../../MeasureAndIntegration/ActualPrimeErrorNamespaced.lean/declarations/mangoldterror-le-primeerror-add-e.md) | 186 | `result-track:56735f887786470cb2acb87efa7d4947e73ee44e7a87d432f383bf489671d137` |
| 17 | `theorem` | [mangoldtError_bounds](../../../../MeasureAndIntegration/ActualPrimeErrorNamespaced.lean/declarations/mangoldterror-bounds.md) | 232 | `result-track:cfc3c1221dc86519d459037fd42404ad1915fe57093f013bb6da3122ea48e5f5` |
| 18 | `theorem` | [primeError_le_mangoldtError](../../../../MeasureAndIntegration/ActualPrimeErrorNamespaced.lean/declarations/primeerror-le-mangoldterror.md) | 244 | `result-track:a30549ee2c9912ba56097766005a790790319eb5096deadbc2524321b81f7499` |
| 19 | `theorem` | [primeError_bounds](../../../../MeasureAndIntegration/ActualPrimeErrorNamespaced.lean/declarations/primeerror-bounds.md) | 251 | `result-track:0b7492583921d50dac7345bcdaae768f5b9a907f78a16f0b4efd10197bd4226d` |
| 20 | `theorem` | [log_four_eq](../../../../MeasureAndIntegration/ActualPrimeErrorNamespaced.lean/declarations/log-four-eq.md) | 257 | `result-track:a173b38ea0c417f14793ba97361046fd798493295f7c0f08168120152096fcf6` |
| 21 | `theorem` | [primeError_abs_le](../../../../MeasureAndIntegration/ActualPrimeErrorNamespaced.lean/declarations/primeerror-abs-le.md) | 262 | `result-track:fcb53e6813e61d9cf2f712d570796b1fb73d34a49fee259171c825ba3b12aadc` |
| 22 | `theorem` | [actual_primeLogError_eq](../../../../MeasureAndIntegration/ActualPrimeErrorNamespaced.lean/declarations/actual-primelogerror-eq.md) | 270 | `result-track:f6ec86f51adfe25a21711fb3267ee7bdf41d0dc97711baaf52880c8fcff4a3d6` |
| 23 | `theorem` | [actual_primeLogError_bounds](../../../../MeasureAndIntegration/ActualPrimeErrorNamespaced.lean/declarations/actual-primelogerror-bounds.md) | 274 | `result-track:b31ea00ce07ff7ca3e6e75cbfee2801bcc37fb652d3ff2b0471e279f742ef3ac` |
| 24 | `theorem` | [actual_primeLogError_abs_le](../../../../MeasureAndIntegration/ActualPrimeErrorNamespaced.lean/declarations/actual-primelogerror-abs-le.md) | 279 | `result-track:826c42d76d93358529b95692137c305e9cbea75cc6aa9acb250ef0da8c1e622a` |
| 25 | `theorem` | [explicit_prime_budget_lt](../../../../MeasureAndIntegration/ActualPrimeErrorNamespaced.lean/declarations/explicit-prime-budget-lt.md) | 284 | `result-track:fe853a765dee6fa54170efe2d3b03df0d6201b15ec30094b2fff7c008a69b07b` |
| 26 | `theorem` | [actual_primeLogError_abs_lt](../../../../MeasureAndIntegration/ActualPrimeErrorNamespaced.lean/declarations/actual-primelogerror-abs-lt.md) | 288 | `result-track:718989f216ac5fe4fa2b367390df3e7fab2588765ba018aaf26849e079a8b25d` |
| 27 | `theorem` | [actual_negativeErrorMean_abs_le](../../../../MeasureAndIntegration/ActualPrimeErrorNamespaced.lean/declarations/actual-negativeerrormean-abs-le.md) | 293 | `result-track:06c02cd61520aced02090f1511456fb9e2f77eaa4e28663371707234e2bd5c2d` |
| 28 | `theorem` | [actual_negativeErrorMean_abs_lt](../../../../MeasureAndIntegration/ActualPrimeErrorNamespaced.lean/declarations/actual-negativeerrormean-abs-lt.md) | 297 | `result-track:17379e6fdc0d35fa82f2f83dc5c23c0866ac662603465c00c20981bcfc437f6d` |
| 29 | `theorem` | [actual_negativeErrorMean_lower](../../../../MeasureAndIntegration/ActualPrimeErrorNamespaced.lean/declarations/actual-negativeerrormean-lower.md) | 302 | `result-track:61ceb256c3f5df5fc50a10f6bb1ad0eb3797506d2de642e9314a0c9a4da9cd86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=38844bfbcdaaed1b6c7a3a0c04970ae36213d780769461037099c5219cc2cbee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ActualPrimeError/Variantaf1aa34e68b8b8cf21a8d559c75744538d63608c0935d5f5e10b2db33792954d.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ActualPrimeError/Variantaf1aa34e68b8b8cf21a8d559c75744538d63608c0935d5f5e10b2db33792954d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
