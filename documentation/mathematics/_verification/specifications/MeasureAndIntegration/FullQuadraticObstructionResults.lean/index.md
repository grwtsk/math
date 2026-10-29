# Verification target: Full Quadratic Obstruction Results

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36018f03848dedab38ef57a3563230130bff9cbf",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticObstruction/Variant74b52d87644253f49273a300f3cfb9b581aedd120dacfaf3bbcb688fdf788ab1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FullQuadraticObstructionResults.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FullQuadraticObstructionResults.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36018f03848dedab38ef57a3563230130bff9cbf`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticObstruction/Variant74b52d87644253f49273a300f3cfb9b581aedd120dacfaf3bbcb688fdf788ab1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticObstruction/Variant74b52d87644253f49273a300f3cfb9b581aedd120dacfaf3bbcb688fdf788ab1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerPhaseDefect` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionDirect` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.FullQuadraticOperator` — import line 3; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.FullQuadraticAudit` — import line 4; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceLaplaceDetection` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.SumPrimeReciprocals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prime_reciprocal_le_weight](../../../../MeasureAndIntegration/FullQuadraticObstructionResults.lean/declarations/prime-reciprocal-le-weight.md) | 36 | `result-track:8845d431cab82713bc550bdfa0aa45bfcd13d70b90627eeacf6d4db956cb384e` |
| 2 | `theorem` | [finite_primes_mem_full_inventory](../../../../MeasureAndIntegration/FullQuadraticObstructionResults.lean/declarations/finite-primes-mem-full-inventory.md) | 52 | `result-track:61e150ab5d6780025ab1181d7373d419b05e95130f52fe2a761c324b5b994ef4` |
| 3 | `theorem` | [total_weight_unbounded](../../../../MeasureAndIntegration/FullQuadraticObstructionResults.lean/declarations/total-weight-unbounded.md) | 74 | `result-track:18af22890688f14b8b4e75ebca47898e7bdf4576d835a789f9acf42061860fab` |
| 4 | `theorem` | [spectral_multiplier_continuous](../../../../MeasureAndIntegration/FullQuadraticObstructionResults.lean/declarations/spectral-multiplier-continuous.md) | 102 | `result-track:cb036fe614cdc1d66eff0564f626a4dcb2288c3ad7a31ddabb7108f02dc78e01` |
| 5 | `theorem` | [full_multiplier_zero_unbounded_below](../../../../MeasureAndIntegration/FullQuadraticObstructionResults.lean/declarations/full-multiplier-zero-unbounded-below.md) | 110 | `result-track:a75697b01e76170917d121caf9d47521f7f10df1f1db3b936537b6f0cceefeb6` |
| 6 | `theorem` | [full_multiplier_negative_interval](../../../../MeasureAndIntegration/FullQuadraticObstructionResults.lean/declarations/full-multiplier-negative-interval.md) | 118 | `result-track:073798c566f96ab20a0bd12ce4549a5976c90b256f30d378fd099873b770801a` |
| 7 | `theorem` | [no_uniform_full_multiplier_lower_bound](../../../../MeasureAndIntegration/FullQuadraticObstructionResults.lean/declarations/no-uniform-full-multiplier-lower-bound.md) | 131 | `result-track:cdc83f46e24fc52c569162515916e3e2051c5c69f018ad750cba906f64be6b71` |
| 8 | `theorem` | [normalized_negative_frequency_window](../../../../MeasureAndIntegration/FullQuadraticObstructionResults.lean/declarations/normalized-negative-frequency-window.md) | 139 | `result-track:073d8796f104a9818f5984eaca2c27e1e47124b324187c752080497b9bbf6442` |
| 9 | `theorem` | [full_form_unit_values_unbounded_below](../../../../MeasureAndIntegration/FullQuadraticObstructionResults.lean/declarations/full-form-unit-values-unbounded-below.md) | 209 | `result-track:f01269833c67e1de9f11e3e472a4375eb7e7c42b7deffb5e872f72918c99f7c0` |
| 10 | `theorem` | [no_uniform_global_full_form_lower_bound](../../../../MeasureAndIntegration/FullQuadraticObstructionResults.lean/declarations/no-uniform-global-full-form-lower-bound.md) | 249 | `result-track:2e9ed1b1479936a18c695566d4ac3cf929cc6eb00be4c2171aa15bfb4835cc25` |
| 11 | `def` | [negativeMultiplier](../../../../MeasureAndIntegration/FullQuadraticObstructionResults.lean/declarations/negativemultiplier.md) | 258 | `declaration-track:f584b68138631624a848febc9739359062097e7cac43a3aa214e25a42679c746` |
| 12 | `def` | [sourceNegativeValue](../../../../MeasureAndIntegration/FullQuadraticObstructionResults.lean/declarations/sourcenegativevalue.md) | 261 | `declaration-track:f0d988f7481949ddeb1d8c3ea70c30ce645f4f22ee4be7c63db5caab53d7d30e` |
| 13 | `theorem` | [negative_multiplier_nonneg](../../../../MeasureAndIntegration/FullQuadraticObstructionResults.lean/declarations/negative-multiplier-nonneg.md) | 265 | `result-track:f20055f0d62417ea320029f2a9c919cf54f53317e4bb18f9f1a8e6af04944f1d` |
| 14 | `theorem` | [source_negative_integrable](../../../../MeasureAndIntegration/FullQuadraticObstructionResults.lean/declarations/source-negative-integrable.md) | 269 | `result-track:bb4039e7545f9bfb9e83b966ba4e3a74866cebb0a63398bfd7f4a46c1d2a671a` |
| 15 | `theorem` | [rescaled_source_negative_integrable](../../../../MeasureAndIntegration/FullQuadraticObstructionResults.lean/declarations/rescaled-source-negative-integrable.md) | 288 | `result-track:96aa31704084a7d97caa895ce34d5ea68952f3fd12a1d6be39f45e06c8dcef6e` |
| 16 | `theorem` | [source_negative_eq_rescaled](../../../../MeasureAndIntegration/FullQuadraticObstructionResults.lean/declarations/source-negative-eq-rescaled.md) | 297 | `result-track:e18e94985d596a5b4d6f745ac68e1246a38df896f1fa7f44aca4359cc1547601` |
| 17 | `theorem` | [full_multiplier_small_scaled_upper](../../../../MeasureAndIntegration/FullQuadraticObstructionResults.lean/declarations/full-multiplier-small-scaled-upper.md) | 310 | `result-track:055dbe1684e429c8f30eab9049e626d6f92179bec41e24342316fcfe0e0c2087` |
| 18 | `theorem` | [source_normalization_le_radius_one](../../../../MeasureAndIntegration/FullQuadraticObstructionResults.lean/declarations/source-normalization-le-radius-one.md) | 342 | `result-track:1fb627539e55f31ff620de6aa5b32981af04fa0603064ea4a8ecfcf2656448ea` |
| 19 | `theorem` | [rescaled_density_fixed_lower](../../../../MeasureAndIntegration/FullQuadraticObstructionResults.lean/declarations/rescaled-density-fixed-lower.md) | 356 | `result-track:682fe1b1b37459694f564a14b3161169671508e5e26f7f292b05940627e97eae` |
| 20 | `theorem` | [bump_density_at_zero_pos](../../../../MeasureAndIntegration/FullQuadraticObstructionResults.lean/declarations/bump-density-at-zero-pos.md) | 377 | `result-track:90852e8223fa48cd4ccb1321ae74f27a0b97de2fb6b4ac04351f72cdfb3a356f` |
| 21 | `theorem` | [actual_density_fixed_scaled_window](../../../../MeasureAndIntegration/FullQuadraticObstructionResults.lean/declarations/actual-density-fixed-scaled-window.md) | 387 | `result-track:be8bd660a3309f89a7d6c5b1427402083e32e9806ad798f3d619042100a52da4` |
| 22 | `theorem` | [source_negative_value_unbounded](../../../../MeasureAndIntegration/FullQuadraticObstructionResults.lean/declarations/source-negative-value-unbounded.md) | 416 | `result-track:550bd2b88c9216bcb75c845566f0a8a40a5cdd7d98826e0105c7b555aafb22cd` |
| 23 | `theorem` | [source_negative_value_eq_vector](../../../../MeasureAndIntegration/FullQuadraticObstructionResults.lean/declarations/source-negative-value-eq-vector.md) | 450 | `result-track:d03f0208997a61c0010d6c033c93cc8b7a2a5ade46900988b873e913c4b7d0d7` |
| 24 | `theorem` | [source_negative_vector_integrable](../../../../MeasureAndIntegration/FullQuadraticObstructionResults.lean/declarations/source-negative-vector-integrable.md) | 458 | `result-track:64e4d0be82684cc9428fa1f46d32dfd38140d28a5f56e990fb15e6e10f72b0cf` |
| 25 | `theorem` | [no_uniform_source_negative_upper_bound](../../../../MeasureAndIntegration/FullQuadraticObstructionResults.lean/declarations/no-uniform-source-negative-upper-bound.md) | 466 | `result-track:2fcd56acfa003bb11c25ad7d1a4081f38dd69e016d974b2359378927e98082ed` |
| 26 | `theorem` | [no_uniform_actual_vector_negative_overlap_bound](../../../../MeasureAndIntegration/FullQuadraticObstructionResults.lean/declarations/no-uniform-actual-vector-negative-overlap-bound.md) | 474 | `result-track:16dfe1f7fde0ac8fed8459abd694cf08a5e6d299e496722a0286b05a4ab461e0` |
| 27 | `def` | [sourcePositiveValue](../../../../MeasureAndIntegration/FullQuadraticObstructionResults.lean/declarations/sourcepositivevalue.md) | 486 | `declaration-track:c177518f12a16288e98a901c3308042012a9941e185210a6d97317000af14d66` |
| 28 | `theorem` | [source_positive_integrable](../../../../MeasureAndIntegration/FullQuadraticObstructionResults.lean/declarations/source-positive-integrable.md) | 490 | `result-track:3a55206cae4b195e6c7e8e07cfa84bb75e7e990bfe68f42ed421e78a3580ca6b` |
| 29 | `theorem` | [source_quadratic_eq_positive_sub_negative](../../../../MeasureAndIntegration/FullQuadraticObstructionResults.lean/declarations/source-quadratic-eq-positive-sub-negative.md) | 511 | `result-track:afabaadce05cbe8e8d7ddbedfe7aab7653e8989e079ffaa2d5f34c9866d52e2e` |
| 30 | `theorem` | [source_positive_value_unbounded_of_estimate](../../../../MeasureAndIntegration/FullQuadraticObstructionResults.lean/declarations/source-positive-value-unbounded-of-estimate.md) | 526 | `result-track:6ed91df8350bf8d0e3d8ea3c95ef7b82eef3f83d56386630c6bd6e70baf65054` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=13f4bf046b084863ed87459e7be7a9e2fa553929a3211ed383226fbc63642b20 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticObstruction/Variant74b52d87644253f49273a300f3cfb9b581aedd120dacfaf3bbcb688fdf788ab1.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticObstruction/Variant74b52d87644253f49273a300f3cfb9b581aedd120dacfaf3bbcb688fdf788ab1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
