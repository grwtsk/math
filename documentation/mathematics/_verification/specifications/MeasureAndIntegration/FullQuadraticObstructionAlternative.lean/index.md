# Verification target: Full Quadratic Obstruction Alternative

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fc18267dd11743dca9ba39a7cb7bdbae5065c10",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/43b9483b2d91df81bc17499b7e2297eeabbd985b566dd5ae51d6db95976abc63FullQuadraticObs/Variant43b9483b2d91df81bc17499b7e2297eeabbd985b566dd5ae51d6db95976abc63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FullQuadraticObstructionAlternative.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FullQuadraticObstructionAlternative.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fc18267dd11743dca9ba39a7cb7bdbae5065c10`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/43b9483b2d91df81bc17499b7e2297eeabbd985b566dd5ae51d6db95976abc63FullQuadraticObs/Variant43b9483b2d91df81bc17499b7e2297eeabbd985b566dd5ae51d6db95976abc63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/43b9483b2d91df81bc17499b7e2297eeabbd985b566dd5ae51d6db95976abc63FullQuadraticObs/Variant43b9483b2d91df81bc17499b7e2297eeabbd985b566dd5ae51d6db95976abc63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerPhaseDefect` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionDirect` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.FullQuadraticOperator` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.SumPrimeReciprocals` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prime_reciprocal_le_weight](../../../../MeasureAndIntegration/FullQuadraticObstructionAlternative.lean/declarations/prime-reciprocal-le-weight.md) | 31 | `result-track:7020765cf33332cea4cda1fd37041f3225e7da1d23153f0a221119f98c421dfc` |
| 2 | `theorem` | [finite_primes_mem_full_inventory](../../../../MeasureAndIntegration/FullQuadraticObstructionAlternative.lean/declarations/finite-primes-mem-full-inventory.md) | 47 | `result-track:ce390cc9a43cc8d65e77973e46e7ed68e85527978e880c8321ba45313470887c` |
| 3 | `theorem` | [total_weight_unbounded](../../../../MeasureAndIntegration/FullQuadraticObstructionAlternative.lean/declarations/total-weight-unbounded.md) | 69 | `result-track:5897b8ae05e617882b1cd2e9d1534513f145cdcf0a30db85d219abe96e965310` |
| 4 | `theorem` | [spectral_multiplier_continuous](../../../../MeasureAndIntegration/FullQuadraticObstructionAlternative.lean/declarations/spectral-multiplier-continuous.md) | 97 | `result-track:688286ab009924aaee32d0f305121c5afce81da5c0d15e27c3d3d36be02c665b` |
| 5 | `theorem` | [full_multiplier_zero_unbounded_below](../../../../MeasureAndIntegration/FullQuadraticObstructionAlternative.lean/declarations/full-multiplier-zero-unbounded-below.md) | 105 | `result-track:88bbc8e4f86689005170da663b1c9e98aed66e32dd417eb2f9a6b9a27b70a553` |
| 6 | `theorem` | [full_multiplier_negative_interval](../../../../MeasureAndIntegration/FullQuadraticObstructionAlternative.lean/declarations/full-multiplier-negative-interval.md) | 113 | `result-track:c04bba6e267c5b564303988e8e2d1fd86091cbcdc2d17740330d8516bd9f0f2b` |
| 7 | `theorem` | [no_uniform_full_multiplier_lower_bound](../../../../MeasureAndIntegration/FullQuadraticObstructionAlternative.lean/declarations/no-uniform-full-multiplier-lower-bound.md) | 126 | `result-track:e8165e36b60174d7bcd12ab1dc25cb3c25105a4d9677684f15b380952b05491f` |
| 8 | `theorem` | [normalized_negative_frequency_window](../../../../MeasureAndIntegration/FullQuadraticObstructionAlternative.lean/declarations/normalized-negative-frequency-window.md) | 134 | `result-track:f22be25011fb1745944656219d667760d9e71034a731a9fcdafa41a7875ad591` |
| 9 | `theorem` | [full_form_unit_values_unbounded_below](../../../../MeasureAndIntegration/FullQuadraticObstructionAlternative.lean/declarations/full-form-unit-values-unbounded-below.md) | 204 | `result-track:237fef501b7cd40a5ee8039ca2ddb36c275e2e8afdecf81bfc622b90a4050f16` |
| 10 | `theorem` | [no_uniform_global_full_form_lower_bound](../../../../MeasureAndIntegration/FullQuadraticObstructionAlternative.lean/declarations/no-uniform-global-full-form-lower-bound.md) | 244 | `result-track:aa52d9cf500322db5c65f9e4f8a96c8e922567c3ed1a11417f01d0a442d91566` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=519659dbc477e6531ecc168a00fde71e7cb7fc4b064fd755c927e6b26136b2ca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/43b9483b2d91df81bc17499b7e2297eeabbd985b566dd5ae51d6db95976abc63FullQuadraticObs/Variant43b9483b2d91df81bc17499b7e2297eeabbd985b566dd5ae51d6db95976abc63.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/43b9483b2d91df81bc17499b7e2297eeabbd985b566dd5ae51d6db95976abc63FullQuadraticObs/Variant43b9483b2d91df81bc17499b7e2297eeabbd985b566dd5ae51d6db95976abc63.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
