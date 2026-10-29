# Verification target: Full Quadratic Audit Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1c502404cc4589f5ad7dd0e406decd666af5820",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FullQuadraticAudit/Variant8ff92237f820dd83cadab5435b4941239f0540de14772697a88704cee42a99a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FullQuadraticAuditNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FullQuadraticAuditNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1c502404cc4589f5ad7dd0e406decd666af5820`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FullQuadraticAudit/Variant8ff92237f820dd83cadab5435b4941239f0540de14772697a88704cee42a99a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FullQuadraticAudit/Variant8ff92237f820dd83cadab5435b4941239f0540de14772697a88704cee42a99a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.PoleCorrelationRegularity` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceCorrectionEstimate` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizationFloor](../../../../MeasureAndIntegration/FullQuadraticAuditNamespaced.lean/declarations/normalizationfloor.md) | 41 | `declaration-track:3df8ed78608aaca43377e7da18617a4bc7fe9416509dbf68ff236b1a539af3dc` |
| 2 | `def` | [secondMomentMajorant](../../../../MeasureAndIntegration/FullQuadraticAuditNamespaced.lean/declarations/secondmomentmajorant.md) | 44 | `declaration-track:6b1f1eafa6d843fe502094e5d9f6955dd009cc52315a9265a487e9a46db3997e` |
| 3 | `def` | [secondMomentBound](../../../../MeasureAndIntegration/FullQuadraticAuditNamespaced.lean/declarations/secondmomentbound.md) | 49 | `declaration-track:bf565b21a1c6efc98f9581dd2f8afea33c1bb1761a2b0cbf22ed921539f1a099` |
| 4 | `theorem` | [normalization_floor_pos](../../../../MeasureAndIntegration/FullQuadraticAuditNamespaced.lean/declarations/normalization-floor-pos.md) | 51 | `result-track:c150e3c043d31c74e61050547247af8cf73781d9fc146589925ef8d32c2be62d` |
| 5 | `theorem` | [normalization_floor_le](../../../../MeasureAndIntegration/FullQuadraticAuditNamespaced.lean/declarations/normalization-floor-le.md) | 54 | `result-track:e405392c1286a2aab531bf1dc9f435e13161c7f05f9c24b62ede256d3706a378` |
| 6 | `theorem` | [second_moment_majorant_nonneg](../../../../MeasureAndIntegration/FullQuadraticAuditNamespaced.lean/declarations/second-moment-majorant-nonneg.md) | 60 | `result-track:e6a913a3d651da47586cadc1612a469a844f0e8c14806dd8c697d45988f30f80` |
| 7 | `theorem` | [second_moment_majorant_integrable](../../../../MeasureAndIntegration/FullQuadraticAuditNamespaced.lean/declarations/second-moment-majorant-integrable.md) | 65 | `result-track:80392b13160bedca7b21217f20650829c094def9545bf5d9e97e4da0752f158c` |
| 8 | `theorem` | [second_moment_bound_nonneg](../../../../MeasureAndIntegration/FullQuadraticAuditNamespaced.lean/declarations/second-moment-bound-nonneg.md) | 70 | `result-track:fd2ccd045f80a5f87ab3820d96068429f05b52cb3b2013eeebab33a07c57f8ea` |
| 9 | `theorem` | [rescaled_second_moment_eq](../../../../MeasureAndIntegration/FullQuadraticAuditNamespaced.lean/declarations/rescaled-second-moment-eq.md) | 74 | `result-track:47948999c54595438af58dbea8e92a2be13194b07d837df11c7e87c43468d15b` |
| 10 | `theorem` | [rescaled_second_moment_integrable](../../../../MeasureAndIntegration/FullQuadraticAuditNamespaced.lean/declarations/rescaled-second-moment-integrable.md) | 85 | `result-track:7586b94771622e3a65619dbe48a97a8a05c1c3b9433f471672f712a41f6e5bc6` |
| 11 | `theorem` | [rescaled_second_moment_le](../../../../MeasureAndIntegration/FullQuadraticAuditNamespaced.lean/declarations/rescaled-second-moment-le.md) | 96 | `result-track:f5adfcfe71d6651a231e817f8827364098b8f70c9e66fb631f9993a89323f3cf` |
| 12 | `theorem` | [spectral_density_second_moment_integrable](../../../../MeasureAndIntegration/FullQuadraticAuditNamespaced.lean/declarations/spectral-density-second-moment-integrable.md) | 119 | `result-track:3941a72d657af5a0638cf4c2ef5fdf39dee9d6454c01a0ba7b2a65ac9304d04a` |
| 13 | `theorem` | [spectral_density_second_moment_eq_rescaled](../../../../MeasureAndIntegration/FullQuadraticAuditNamespaced.lean/declarations/spectral-density-second-moment-eq-rescaled.md) | 129 | `result-track:a6f289d2ea75377709652d263844067781316ab0f67c09abde7d9df1fe52a3e2` |
| 14 | `theorem` | [actual_second_moment_le](../../../../MeasureAndIntegration/FullQuadraticAuditNamespaced.lean/declarations/actual-second-moment-le.md) | 141 | `result-track:0690fce1eb3a33b1704f4b96dc83636e954cfd3f9ae697b7e0822e875d27f4eb` |
| 15 | `theorem` | [archimedean_multiplier_upper](../../../../MeasureAndIntegration/FullQuadraticAuditNamespaced.lean/declarations/archimedean-multiplier-upper.md) | 148 | `result-track:938f8480db329058aed392c9ad2dad009159fb07a3963d308fb967882a6f2e62` |
| 16 | `theorem` | [archimedean_value_eq_density_integral](../../../../MeasureAndIntegration/FullQuadraticAuditNamespaced.lean/declarations/archimedean-value-eq-density-integral.md) | 157 | `result-track:3f6b26b70b7bf8be51469ea2a84f9f0863db7730c4d56c2b3fb8e32b82722ee1` |
| 17 | `theorem` | [actual_archimedean_upper](../../../../MeasureAndIntegration/FullQuadraticAuditNamespaced.lean/declarations/actual-archimedean-upper.md) | 168 | `result-track:6ea4d781ef8b578acc2cdd87b42493f7664facfa6910501ff2102b72a83732c4` |
| 18 | `theorem` | [actual_archimedean_bounds](../../../../MeasureAndIntegration/FullQuadraticAuditNamespaced.lean/declarations/actual-archimedean-bounds.md) | 188 | `result-track:e168cb52e07ee5c9cc43973e813fe3a8baae5e4b162cbca1dd3c004b7aa66b47` |
| 19 | `theorem` | [actual_archimedean_abs_le](../../../../MeasureAndIntegration/FullQuadraticAuditNamespaced.lean/declarations/actual-archimedean-abs-le.md) | 195 | `result-track:021ca3709bb3fb64d231e73a873f91e2f192c7cec171f42cf9b8d41102c6232b` |
| 20 | `theorem` | [estimate_iff_full_prime_power_upper_bound](../../../../MeasureAndIntegration/FullQuadraticAuditNamespaced.lean/declarations/estimate-iff-full-prime-power-upper-bound.md) | 206 | `result-track:3260374aa4fdbed4b91469328cb83282513f4ab3ae8f6c30aecb30987dfa9366` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=06f87ebad5590e1df3a40ecd4fa262f55aa2a0e9e0ccf50cc64b69af81cc8e8c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/FullQuadraticAudit/Variant8ff92237f820dd83cadab5435b4941239f0540de14772697a88704cee42a99a0.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/FullQuadraticAudit/Variant8ff92237f820dd83cadab5435b4941239f0540de14772697a88704cee42a99a0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
