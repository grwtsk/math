# Verification target: Zero Smoothing Moments Probe Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d62234dd52486b18705bce054cfb11be2920917",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingMomentsProbe/Variant6ba8284eb7307508b88917d02c7d3540f012b5581669f90dfc413d47f26eb121.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ZeroSmoothingMomentsProbeNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ZeroSmoothingMomentsProbeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d62234dd52486b18705bce054cfb11be2920917`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingMomentsProbe/Variant6ba8284eb7307508b88917d02c7d3540f012b5581669f90dfc413d47f26eb121.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ZeroSmoothingMomentsProbe/Variant6ba8284eb7307508b88917d02c7d3540f012b5581669f90dfc413d47f26eb121.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingL2Core` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeAdmissibility` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_common_bound](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ZeroSmoothingMomentsProbeNamespaced.lean/declarations/exists-common-bound.md) | 23 | `result-track:a4227045e9b8a29d445884dc107c70001136fcb28d6e4b27d6baa616f9dd8d65` |
| 2 | `theorem` | [smoothedTest_zero_outside_common](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ZeroSmoothingMomentsProbeNamespaced.lean/declarations/smoothedtest-zero-outside-common.md) | 35 | `result-track:1abc99fe137695beefc084a8ee5ea945540559f2f9b0e7a5b02cde84bb8b61a5` |
| 3 | `theorem` | [actual_weighted_integrable](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ZeroSmoothingMomentsProbeNamespaced.lean/declarations/actual-weighted-integrable.md) | 43 | `result-track:f88a904b2caf3f8a459fa30535f238f93e2e6ee7359216b0aefd5076e66289c3` |
| 4 | `theorem` | [smoothed_weighted_integrable](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ZeroSmoothingMomentsProbeNamespaced.lean/declarations/smoothed-weighted-integrable.md) | 50 | `result-track:f1077a997704a96a8229a7e8b4e4d24049065592cc60b6eacc20eb51ec9c534c` |
| 5 | `theorem` | [weighted_integral_tendsto](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ZeroSmoothingMomentsProbeNamespaced.lean/declarations/weighted-integral-tendsto.md) | 58 | `result-track:f2a7a3727632a49323f5dda668bb6a46c6afa313b3b852554bbb93b772d6c120` |
| 6 | `theorem` | [exponential_moment_tendsto](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ZeroSmoothingMomentsProbeNamespaced.lean/declarations/exponential-moment-tendsto.md) | 94 | `result-track:8a838601508d802a45e4e671ca3419a30a166fb268a12bd4d6901c11d64e126b` |
| 7 | `theorem` | [actual_correlation_integrable](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ZeroSmoothingMomentsProbeNamespaced.lean/declarations/actual-correlation-integrable.md) | 108 | `result-track:159b37f75209bdfe68dd098b0f65fa5cde216bc25247566e74cd161711520c71` |
| 8 | `theorem` | [smoothed_correlation_integrable](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ZeroSmoothingMomentsProbeNamespaced.lean/declarations/smoothed-correlation-integrable.md) | 115 | `result-track:825a3432de25940dff16b676d5cb6982517280c0df4911fd49239d30ca3cefb1` |
| 9 | `theorem` | [correlation_tendsto](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ZeroSmoothingMomentsProbeNamespaced.lean/declarations/correlation-tendsto.md) | 123 | `result-track:2979060680bbdc34436ffe314f9647ffdd48fbc17da5048213338f0a17797079` |
| 10 | `theorem` | [poleContribution_tendsto](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ZeroSmoothingMomentsProbeNamespaced.lean/declarations/polecontribution-tendsto.md) | 159 | `result-track:6710f2f58a2c5ba70e60efe74139a9520396f77ad8811bb23a1007345da61fb6` |
| 11 | `theorem` | [primeContribution_tendsto](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ZeroSmoothingMomentsProbeNamespaced.lean/declarations/primecontribution-tendsto.md) | 173 | `result-track:ebd77efd61dc466a8ceb58388cfb2ccc924318f66f85965537124ccdf94037ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ac552e1aa53d0ed30a5fe2e44c8db27db482751547479b4eb8ad2ba1b78045ed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingMomentsProbe/Variant6ba8284eb7307508b88917d02c7d3540f012b5581669f90dfc413d47f26eb121.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ZeroSmoothingMomentsProbe/Variant6ba8284eb7307508b88917d02c7d3540f012b5581669f90dfc413d47f26eb121.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
