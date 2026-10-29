# Verification target: Correlation Moment Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0456be24f8e1eefcaeca5db11de119e10b162448",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant022240764844d6df480cbb5243f4ee64dc3545915dfddf3a7aa2cabe9a782336.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CorrelationMomentNamespacedEdition2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CorrelationMomentNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0456be24f8e1eefcaeca5db11de119e10b162448`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant022240764844d6df480cbb5243f4ee64dc3545915dfddf3a7aa2cabe9a782336.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant022240764844d6df480cbb5243f4ee64dc3545915dfddf3a7aa2cabe9a782336.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convolution` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [polePrimitive](../../../../MeasureAndIntegration/CorrelationMomentNamespacedEdition2.lean/declarations/poleprimitive.md) | 32 | `declaration-track:ea2fef99da7858e0e63f457e29c6ed387b01402781391674ee08e7e5835b64c1` |
| 2 | `theorem` | [polePrimitive_hasDerivAt](../../../../MeasureAndIntegration/CorrelationMomentNamespacedEdition2.lean/declarations/poleprimitive-hasderivat.md) | 36 | `result-track:a0fef75d33a9b7787179eb91c1c62df75ac403e929991b952205662e1b20a862` |
| 3 | `theorem` | [polePrimitive_endpoints](../../../../MeasureAndIntegration/CorrelationMomentNamespacedEdition2.lean/declarations/poleprimitive-endpoints.md) | 48 | `result-track:98c352c8170d9a3a8595d7097b15f85e4c773d9aa0e581109dc9a3fcbb3f3f75` |
| 4 | `theorem` | [weighted_dilationTest_eq_indicator](../../../../MeasureAndIntegration/CorrelationMomentNamespacedEdition2.lean/declarations/weighted-dilationtest-eq-indicator.md) | 55 | `result-track:ef9b9bcf4c5af5bd07e01b8ba5950ebdc73fee69e57afe66843759d515bcbef5` |
| 5 | `theorem` | [weighted_dilationTest_integrable](../../../../MeasureAndIntegration/CorrelationMomentNamespacedEdition2.lean/declarations/weighted-dilationtest-integrable.md) | 65 | `result-track:004ddc748dea2e7225468517e44b6eda31237488639e18976b16076dab231aaf` |
| 6 | `theorem` | [weighted_dilationTest_integral_zero](../../../../MeasureAndIntegration/CorrelationMomentNamespacedEdition2.lean/declarations/weighted-dilationtest-integral-zero.md) | 74 | `result-track:e56cc1e45566cbbf26d363a32dd347c83599340298370dcb7b1bd8c284501ecc` |
| 7 | `theorem` | [weighted_normalizedTest_integrable](../../../../MeasureAndIntegration/CorrelationMomentNamespacedEdition2.lean/declarations/weighted-normalizedtest-integrable.md) | 92 | `result-track:9c9d8a6d767a69f0c990411a8fabf8411a0e7da1b7d27716eebce11b8a40814c` |
| 8 | `theorem` | [weighted_normalizedTest_integral_zero](../../../../MeasureAndIntegration/CorrelationMomentNamespacedEdition2.lean/declarations/weighted-normalizedtest-integral-zero.md) | 98 | `result-track:945893bfacefea9eeb36d98d6820c7454bc37c0de4ac836fd9d7468b2f58d439` |
| 9 | `def` | [correlation](../../../../MeasureAndIntegration/CorrelationMomentNamespacedEdition2.lean/declarations/correlation.md) | 105 | `declaration-track:bcf645b095245026b10591841a2a52a338bf40bbeb1f9b49bc4f39485034fa18` |
| 10 | `theorem` | [weighted_correlation_eq_convolution](../../../../MeasureAndIntegration/CorrelationMomentNamespacedEdition2.lean/declarations/weighted-correlation-eq-convolution.md) | 108 | `result-track:bad8f8701333d11941975d8233d8f30a96db363c80a214cdcdc1c87583b00ea0` |
| 11 | `theorem` | [reflected_weight_integrable](../../../../MeasureAndIntegration/CorrelationMomentNamespacedEdition2.lean/declarations/reflected-weight-integrable.md) | 126 | `result-track:dcae1ddfadd7e299c8fb49aa3b51cfa1426e2d06ce4092c54c4a747c941bc6cc` |
| 12 | `theorem` | [weighted_correlation_integrable](../../../../MeasureAndIntegration/CorrelationMomentNamespacedEdition2.lean/declarations/weighted-correlation-integrable.md) | 133 | `result-track:f3a46798844dd61b29a377c5f85b34ee803af3b34bcc451f77036d9582c4627a` |
| 13 | `theorem` | [weighted_correlation_integral](../../../../MeasureAndIntegration/CorrelationMomentNamespacedEdition2.lean/declarations/weighted-correlation-integral.md) | 148 | `result-track:4d25fab513b43ed62c7bef64bf12ec7440ec9aa99cdb1d86b3eda3476e3f0537` |
| 14 | `theorem` | [half_interval_moment_of_even](../../../../MeasureAndIntegration/CorrelationMomentNamespacedEdition2.lean/declarations/half-interval-moment-of-even.md) | 163 | `result-track:3c81ed27703d4cc18595bf40dfe4d4d10698c5597e7a041f3dc338d9385fb848` |
| 15 | `theorem` | [positive_pole_integrable](../../../../MeasureAndIntegration/CorrelationMomentNamespacedEdition2.lean/declarations/positive-pole-integrable.md) | 199 | `result-track:57ff19c687ee788d4f1756039cdba796f344ef82439fba482e84f4402cbf231a` |
| 16 | `theorem` | [negative_pole_integrable](../../../../MeasureAndIntegration/CorrelationMomentNamespacedEdition2.lean/declarations/negative-pole-integrable.md) | 205 | `result-track:dc0fb84c38329e893b2638c468ac0895982e61ac5d8b608bacb31784514bff0f` |
| 17 | `theorem` | [positive_pole_zero](../../../../MeasureAndIntegration/CorrelationMomentNamespacedEdition2.lean/declarations/positive-pole-zero.md) | 212 | `result-track:9abda93c2685528f2162630225f7952326f33e6f7bfe1d770ca2fa6f8cb21a42` |
| 18 | `theorem` | [negative_pole_zero](../../../../MeasureAndIntegration/CorrelationMomentNamespacedEdition2.lean/declarations/negative-pole-zero.md) | 218 | `result-track:7a4d191d2488f275b8923804cc62753e5102a963c34d6e19ad8808b958830af6` |
| 19 | `theorem` | [full_correlation_moment_zero](../../../../MeasureAndIntegration/CorrelationMomentNamespacedEdition2.lean/declarations/full-correlation-moment-zero.md) | 224 | `result-track:1e5412b6a4e80429d66f0859a9b73160674c27c87dfd2276894452907bbed3b4` |
| 20 | `theorem` | [pole_correlation_certificate](../../../../MeasureAndIntegration/CorrelationMomentNamespacedEdition2.lean/declarations/pole-correlation-certificate.md) | 236 | `result-track:cb73ff0568a5261de7b57eb1179c75c365fa6bd76c7131018f843160d30d004b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6d2261d849f182bbdb4be630e40f2572383fe91159cc331c5006fdcc62e9ddd5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant022240764844d6df480cbb5243f4ee64dc3545915dfddf3a7aa2cabe9a782336.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/CorrelationMoment/Variant022240764844d6df480cbb5243f4ee64dc3545915dfddf3a7aa2cabe9a782336.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
