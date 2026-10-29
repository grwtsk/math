# Verification target: GRWTSK.NumberTheory.PrimeCounting.ReciprocalPrimeLogBound

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a414f4c9b65172ee88f81e297e55c2c4077c4c32",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/PrimeCounting/ReciprocalPrimeLogBound.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ReciprocalPrimeLogBound.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ReciprocalPrimeLogBound.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a414f4c9b65172ee88f81e297e55c2c4077c4c32`.

Source path: `GRWTSK/NumberTheory/PrimeCounting/ReciprocalPrimeLogBound.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/PrimeCounting/ReciprocalPrimeLogBound.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.PrimeCounting.ReciprocalPrimeIntervalBounds`](../../../../NumberTheory/MultiplicativeNumberTheory/ReciprocalPrimeIntervalBounds.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.NumberTheory.AbelSummation` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeIndicator](../../../../MeasureAndIntegration/ReciprocalPrimeLogBound.lean/declarations/primeindicator.md) | 16 | `declaration-track:4865d80a718a3a0c2c8c7a34abbc13202fc3cabfb6658dedad5cf7e08ed9d346` |
| 2 | `theorem` | [indicator_sum_is_count](../../../../MeasureAndIntegration/ReciprocalPrimeLogBound.lean/declarations/indicator-sum-is-count.md) | 18 | `result-track:e7184c697289809977531ae03c5b818faa5fac43a39cb93a92c075e0679a49c5` |
| 3 | `def` | [countConstant](../../../../MeasureAndIntegration/ReciprocalPrimeLogBound.lean/declarations/countconstant.md) | 24 | `declaration-track:f79a51a71062037afdd9fb8c2a1efb5a53cf56b525f5427de4365ffeafbe9464` |
| 4 | `theorem` | [countConstant_positive](../../../../MeasureAndIntegration/ReciprocalPrimeLogBound.lean/declarations/countconstant-positive.md) | 26 | `result-track:abfe6e06773fcd4ecdbfb5d31e7cb70b1e60e73f13043cb6338d62e83f052bcf` |
| 5 | `theorem` | [prime_count_bound](../../../../MeasureAndIntegration/ReciprocalPrimeLogBound.lean/declarations/prime-count-bound.md) | 32 | `result-track:05db285c6b17642da0140e39d40f79d1afc6163550568af325f3b3b87b69cf85` |
| 6 | `theorem` | [prime_reciprocal_abel](../../../../MeasureAndIntegration/ReciprocalPrimeLogBound.lean/declarations/prime-reciprocal-abel.md) | 60 | `result-track:1879b5548a8b55c46feb06633d83b6bd946e3afed09860161136943010703b92` |
| 7 | `theorem` | [count_integrand_intervalIntegrable](../../../../MeasureAndIntegration/ReciprocalPrimeLogBound.lean/declarations/count-integrand-intervalintegrable.md) | 99 | `result-track:5074be598dfe62420e54c8330ee40e0b9c05ecb7d13b12cb96d4429daac57ff4` |
| 8 | `theorem` | [comparison_integrand_intervalIntegrable](../../../../MeasureAndIntegration/ReciprocalPrimeLogBound.lean/declarations/comparison-integrand-intervalintegrable.md) | 112 | `result-track:cd5e8efc26412f9785ff12cd5464c7dda60d2f074191fd3399998d12451e21b7` |
| 9 | `theorem` | [prime_harmonic_bound_at_x](../../../../MeasureAndIntegration/ReciprocalPrimeLogBound.lean/declarations/prime-harmonic-bound-at-x.md) | 124 | `result-track:6742d69258791684c6d3852c7f1250c4f8b51b8620527e187b144d91bf79e645` |
| 10 | `def` | [offsetConstant](../../../../MeasureAndIntegration/ReciprocalPrimeLogBound.lean/declarations/offsetconstant.md) | 166 | `declaration-track:892d023e9fbd5e4ff6aab95d55da795c4bfb8edd84de4e678682639bc1ede069` |
| 11 | `def` | [primeHarmonicConstant](../../../../MeasureAndIntegration/ReciprocalPrimeLogBound.lean/declarations/primeharmonicconstant.md) | 168 | `declaration-track:4805ff9ba27d94dd513ac4de4160ddd7b84bb87b2d4d9b69c7ff56867a65dbe2` |
| 12 | `theorem` | [offsetConstant_nonnegative](../../../../MeasureAndIntegration/ReciprocalPrimeLogBound.lean/declarations/offsetconstant-nonnegative.md) | 171 | `result-track:50035f2c94df2844ed977064c743a8302d4a1651dac7f4a16f5f79f70979cbc9` |
| 13 | `theorem` | [primeHarmonicConstant_nonnegative](../../../../MeasureAndIntegration/ReciprocalPrimeLogBound.lean/declarations/primeharmonicconstant-nonnegative.md) | 176 | `result-track:73f8a1f3d732f292a40ea13f9174289efa7b08522b6b966856f7ef49706c3e89` |
| 14 | `theorem` | [inventory_harmonic_log_bound](../../../../MeasureAndIntegration/ReciprocalPrimeLogBound.lean/declarations/inventory-harmonic-log-bound.md) | 183 | `result-track:9d52230eb6cbab2d77a03692b6b6cd81c3cf18002d02a79921857dac36a2448d` |
| 15 | `theorem` | [prime_harmonic_logarithmic_estimate](../../../../MeasureAndIntegration/ReciprocalPrimeLogBound.lean/declarations/prime-harmonic-logarithmic-estimate.md) | 250 | `result-track:90aa6d3e2a526c498e065447426058b519f6b1caabb8700d0d4d1e37d467e4bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cf5d90bb4c32a28b2c98947eb281cf76f2fc27a77cf0d60918ca6155c6db645b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/PrimeCounting/ReciprocalPrimeLogBound.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/ReciprocalPrimeLogBound.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
