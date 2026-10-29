# Verification target: Actual Prime Error

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8cac2ff236fdbba65bf266cb814fd5d412749a6",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualPrimeError/Variant39be11924a9af4e2dec853d46f82eef1f18f4b263f8700f28e9ae921fef171f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ActualPrimeError.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ActualPrimeError.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8cac2ff236fdbba65bf266cb814fd5d412749a6`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualPrimeError/Variant39be11924a9af4e2dec853d46f82eef1f18f4b263f8700f28e9ae921fef171f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualPrimeError/Variant39be11924a9af4e2dec853d46f82eef1f18f4b263f8700f28e9ae921fef171f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.WeightedPrimeAbel` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourcePairedPrimeAverages` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.GeomSum` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Summable` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [mangoldtError](../../../../MeasureAndIntegration/ActualPrimeError.lean/declarations/mangoldterror.md) | 29 | `declaration-track:044701b107235a07c1da78d7bcb677fe96362bc66bb0ea97cdd0300d46c361ad` |
| 2 | `abbrev` | [primeError](../../../../MeasureAndIntegration/ActualPrimeError.lean/declarations/primeerror.md) | 31 | `declaration-track:bff8475b0814523705a54278ba1c7179c62b968fcb5e5ae46bf630bc79c1608c` |
| 3 | `abbrev` | [E₁](../../../../MeasureAndIntegration/ActualPrimeError.lean/declarations/e.md) | 34 | `declaration-track:e4a78d53f1e61910ecd3eb425997e3c59e6540fc64d108aa810838f52004b6d4` |
| 4 | `lemma` | [E₁.summand_nonneg](../../../../MeasureAndIntegration/ActualPrimeError.lean/declarations/e-summand-nonneg.md) | 36 | `result-track:c90dd155f0a0cea8b4e03b0de9553314b2dcb21e83015ff3ee97bac715b8c87a` |
| 5 | `theorem` | [E₁.summable](../../../../MeasureAndIntegration/ActualPrimeError.lean/declarations/e-summable.md) | 43 | `result-track:a9a3107fa26dd6b36c7df51468e06cab3bd5e93b64052b71b87c106206e8aa5e` |
| 6 | `lemma` | [antitoneOn_log_div_sq](../../../../MeasureAndIntegration/ActualPrimeError.lean/declarations/antitoneon-log-div-sq.md) | 67 | `result-track:240cb130f6a4b2e3ae9d22894f61d49bfc5e10c19afd826dd8adadc7ef8c17aa` |
| 7 | `lemma` | [log_div_sq_nonneg](../../../../MeasureAndIntegration/ActualPrimeError.lean/declarations/log-div-sq-nonneg.md) | 88 | `result-track:c4da8d2675a761519830be7365b9e54b6fec8692e15469593e1835c79f8bb0e7` |
| 8 | `lemma` | [log_div_sq_is_deriv](../../../../MeasureAndIntegration/ActualPrimeError.lean/declarations/log-div-sq-is-deriv.md) | 92 | `result-track:40547a02e74e097864c2b665b5bd4dc45955369f92bd8e74431e0dd44bf29425` |
| 9 | `lemma` | [tendsto_antideriv_log_div_sq](../../../../MeasureAndIntegration/ActualPrimeError.lean/declarations/tendsto-antideriv-log-div-sq.md) | 105 | `result-track:ea7869d39894e2d80d7e6e38fec5ffb326e81685512cb3912670c83d54080cd8` |
| 10 | `lemma` | [integrableOn_log_div_sq](../../../../MeasureAndIntegration/ActualPrimeError.lean/declarations/integrableon-log-div-sq.md) | 116 | `result-track:4bcd7071be59e9332542d86c8bd2f3916c3b3a8fca0e1ee81702ed5bf0cb18f3` |
| 11 | `lemma` | [integral_log_div_sq](../../../../MeasureAndIntegration/ActualPrimeError.lean/declarations/integral-log-div-sq.md) | 120 | `result-track:1b6dca34a28f921eb77d724c872bedc8987a3d19e8d68da98ccf0a2564901188` |
| 12 | `lemma` | [summable_log_div_sq](../../../../MeasureAndIntegration/ActualPrimeError.lean/declarations/summable-log-div-sq.md) | 125 | `result-track:2ab9239bb2af604f6b25f17de1406e602f38b2e431a2e42c3919a8e297d734bb` |
| 13 | `lemma` | [sum_log_div_sq_le](../../../../MeasureAndIntegration/ActualPrimeError.lean/declarations/sum-log-div-sq-le.md) | 135 | `result-track:1ac9f728c269d73a813a7905a43a8cc4c6e2f41bce64ea307b4e00ca52702570` |
| 14 | `theorem` | [E₁.le](../../../../MeasureAndIntegration/ActualPrimeError.lean/declarations/e-le.md) | 149 | `result-track:80b8bb5c756016203cb190f4d412a71c3770280a96e8411008638a10e95056f6` |
| 15 | `theorem` | [E₁.nonneg](../../../../MeasureAndIntegration/ActualPrimeError.lean/declarations/e-nonneg.md) | 175 | `result-track:f84224b237c69f17db2fffc142d14f4486ffeddafd22cfc910738094ac2b90af` |
| 16 | `theorem` | [mangoldtError.le_primeError_add_E₁](../../../../MeasureAndIntegration/ActualPrimeError.lean/declarations/mangoldterror-le-primeerror-add-e.md) | 178 | `result-track:2e918e18358508f157a59328ebb202047b22fddfe162d10b687e6c222830a9ac` |
| 17 | `theorem` | [mangoldtError_bounds](../../../../MeasureAndIntegration/ActualPrimeError.lean/declarations/mangoldterror-bounds.md) | 224 | `result-track:3f49d5829f8511ffc7578f71689948e40b5cbe26126d3ec4fa8c53dadac5b99f` |
| 18 | `theorem` | [primeError_le_mangoldtError](../../../../MeasureAndIntegration/ActualPrimeError.lean/declarations/primeerror-le-mangoldterror.md) | 236 | `result-track:6c3d396f2e1a7e591af801abfe411e5fe3c33e8e6a2a3e0d0c14b960488157e5` |
| 19 | `theorem` | [primeError_bounds](../../../../MeasureAndIntegration/ActualPrimeError.lean/declarations/primeerror-bounds.md) | 243 | `result-track:a93ac5c342c82b6f6fdc6f21ee79b1af9af24c7f798e910ca4257a3459350dff` |
| 20 | `theorem` | [log_four_eq](../../../../MeasureAndIntegration/ActualPrimeError.lean/declarations/log-four-eq.md) | 249 | `result-track:b1e98b7902725304ec82098af111de32f71eca9e4e0632ef106033be6fb593a7` |
| 21 | `theorem` | [primeError_abs_le](../../../../MeasureAndIntegration/ActualPrimeError.lean/declarations/primeerror-abs-le.md) | 254 | `result-track:0caf308e218c0a9ae175608bfbd88d6ae5d4929026ec106140dec6f00fe4f903` |
| 22 | `theorem` | [actual_primeLogError_eq](../../../../MeasureAndIntegration/ActualPrimeError.lean/declarations/actual-primelogerror-eq.md) | 262 | `result-track:230447f5768ed4b4b2d3bbaf378ff72bb5bf87e097636cbf164b39493dd6e780` |
| 23 | `theorem` | [actual_primeLogError_bounds](../../../../MeasureAndIntegration/ActualPrimeError.lean/declarations/actual-primelogerror-bounds.md) | 266 | `result-track:d9472eec8655b5eb4068e16bd9997084cbb67aaca11bd16540f5b9be6c392c05` |
| 24 | `theorem` | [actual_primeLogError_abs_le](../../../../MeasureAndIntegration/ActualPrimeError.lean/declarations/actual-primelogerror-abs-le.md) | 271 | `result-track:de078a084f7364105c902b396eff1580093eed333fa308ae8671e74442df167c` |
| 25 | `theorem` | [explicit_prime_budget_lt](../../../../MeasureAndIntegration/ActualPrimeError.lean/declarations/explicit-prime-budget-lt.md) | 276 | `result-track:8e0db3ac19dcd923a2b36b170989f587003c461a2dc6d587af0e5a8535c4daf6` |
| 26 | `theorem` | [actual_primeLogError_abs_lt](../../../../MeasureAndIntegration/ActualPrimeError.lean/declarations/actual-primelogerror-abs-lt.md) | 280 | `result-track:6ee137978ecb7e8929ed754d8d85a4d3f885e356c77afb1023d66e4072df26a4` |
| 27 | `theorem` | [actual_negativeErrorMean_abs_le](../../../../MeasureAndIntegration/ActualPrimeError.lean/declarations/actual-negativeerrormean-abs-le.md) | 285 | `result-track:75034bc04979ed514a14939ff7705575673cd6f4f8bcd407b7e38422047be76c` |
| 28 | `theorem` | [actual_negativeErrorMean_abs_lt](../../../../MeasureAndIntegration/ActualPrimeError.lean/declarations/actual-negativeerrormean-abs-lt.md) | 289 | `result-track:bf8202b7e2edc15bfd6162f4df1e0a9f1bc0fa9a96617947dffbf7135442b9ef` |
| 29 | `theorem` | [actual_negativeErrorMean_lower](../../../../MeasureAndIntegration/ActualPrimeError.lean/declarations/actual-negativeerrormean-lower.md) | 294 | `result-track:39d9e806b8bf10ba7d4983eda034ce3cdb30b589e2c94664fbce899e9af41766` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b72dca8cba0035ce3ae1b0aed499377b0d215a15c9cb3bee70028bf810cf884 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ActualPrimeError/Variant39be11924a9af4e2dec853d46f82eef1f18f4b263f8700f28e9ae921fef171f5.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ActualPrimeError/Variant39be11924a9af4e2dec853d46f82eef1f18f4b263f8700f28e9ae921fef171f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
