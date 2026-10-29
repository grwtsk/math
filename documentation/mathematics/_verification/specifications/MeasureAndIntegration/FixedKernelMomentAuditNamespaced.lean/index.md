# Verification target: Fixed Kernel Moment Audit Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2eb2984d7e46c1f16290651e4529364d9b71636c",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelMomentAudit/Variant8d826558595d24765381226ebd10466e6321b380e6ce4a874e75094728b046b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FixedKernelMomentAuditNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FixedKernelMomentAuditNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2eb2984d7e46c1f16290651e4529364d9b71636c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelMomentAudit/Variant8d826558595d24765381226ebd10466e6321b380e6ce4a874e75094728b046b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FixedKernelMomentAudit/Variant8d826558595d24765381226ebd10466e6321b380e6ce4a874e75094728b046b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeFourier` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SamplingError` — import line 8; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.InnerPrimitiveTransport` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logSample](../../../../MeasureAndIntegration/FixedKernelMomentAuditNamespaced.lean/declarations/logsample.md) | 26 | `declaration-track:44c398c1bbadccc100476951778175ed0e86fee6fe1fe367c85add74744230ff` |
| 2 | `def` | [sampleDerivativeProfile](../../../../MeasureAndIntegration/FixedKernelMomentAuditNamespaced.lean/declarations/samplederivativeprofile.md) | 29 | `declaration-track:dd88b01d23f0582b1113bd98a9dde5eda353478bb727a4a0948e3748d558f7d1` |
| 3 | `theorem` | [v_diff](../../../../MeasureAndIntegration/FixedKernelMomentAuditNamespaced.lean/declarations/v-diff.md) | 31 | `result-track:d2bda530c8cc1ac102b558cc4a6b6b0267145ca65d33e92904c7da9aeaf6b71a` |
| 4 | `theorem` | [v_cont](../../../../MeasureAndIntegration/FixedKernelMomentAuditNamespaced.lean/declarations/v-cont.md) | 34 | `result-track:9e09363070396192272b05325848bc7ff9ebaae0f99e9c6249678ecb90c29bf1` |
| 5 | `theorem` | [profile_cont](../../../../MeasureAndIntegration/FixedKernelMomentAuditNamespaced.lean/declarations/profile-cont.md) | 36 | `result-track:c41aaff7ad77e06fcacbfcfcb320d6e256978dc51fbb7d24eabc5436879373c9` |
| 6 | `theorem` | [profile_compact](../../../../MeasureAndIntegration/FixedKernelMomentAuditNamespaced.lean/declarations/profile-compact.md) | 40 | `result-track:f4fe757ca0aab5e291e931e2b3ce0dbb502ffad4a7aec0a821da50f0247ad7c0` |
| 7 | `theorem` | [logSample_hasDerivAt](../../../../MeasureAndIntegration/FixedKernelMomentAuditNamespaced.lean/declarations/logsample-hasderivat.md) | 48 | `result-track:1763c8aab6f2bd625075d5521ee94c2f885f73e68c4f1d0bd0a3d25ed1486fa0` |
| 8 | `theorem` | [logSample_eq](../../../../MeasureAndIntegration/FixedKernelMomentAuditNamespaced.lean/declarations/logsample-eq.md) | 58 | `result-track:9e6a6d3f19428b2dd3e6da33808f881adc1cb7d6661c65ec8235458b3ed65c18` |
| 9 | `theorem` | [logSample_exp](../../../../MeasureAndIntegration/FixedKernelMomentAuditNamespaced.lean/declarations/logsample-exp.md) | 63 | `result-track:609e594782f8e16a9638b3befae1afab6fe59d614189f15ee5f281a07b6c687a` |
| 10 | `theorem` | [translated_compact](../../../../MeasureAndIntegration/FixedKernelMomentAuditNamespaced.lean/declarations/translated-compact.md) | 70 | `result-track:ea3657837f8c34e5880d6b69e05023ed584c99c449ebb0b9c02584bf3a17fde3` |
| 11 | `theorem` | [logSample_integrableOn](../../../../MeasureAndIntegration/FixedKernelMomentAuditNamespaced.lean/declarations/logsample-integrableon.md) | 77 | `result-track:d7526ef6477486c97ef02bd0b8b1aff9ccd60a6cbe21e3dff7242d53882ce89d` |
| 12 | `theorem` | [logSample_deriv_exp](../../../../MeasureAndIntegration/FixedKernelMomentAuditNamespaced.lean/declarations/logsample-deriv-exp.md) | 88 | `result-track:c9d662a1c06a1422ceea165fcbe6c316831413e2b67c866106d449704dbbb53d` |
| 13 | `def` | [derivativeBudget](../../../../MeasureAndIntegration/FixedKernelMomentAuditNamespaced.lean/declarations/derivativebudget.md) | 96 | `declaration-track:955eb4ccbb3d3c6fb0f7d6fbb7e716aea95e84a17b9d374d20fa3e504ea18eb2` |
| 14 | `theorem` | [derivativeBudget_integrable](../../../../MeasureAndIntegration/FixedKernelMomentAuditNamespaced.lean/declarations/derivativebudget-integrable.md) | 99 | `result-track:b2165c40e38aca7f9f55e44572e60ba82cfcb0ee2a3cfde941f402c7d6ed3a16` |
| 15 | `theorem` | [derivativeBudget_nonneg](../../../../MeasureAndIntegration/FixedKernelMomentAuditNamespaced.lean/declarations/derivativebudget-nonneg.md) | 105 | `result-track:b09f2c04a080fc3abc5448393cbc37f9ba32d161d2091b2424c0a4712cd81414` |
| 16 | `theorem` | [derivative_translate](../../../../MeasureAndIntegration/FixedKernelMomentAuditNamespaced.lean/declarations/derivative-translate.md) | 108 | `result-track:e4194aaf050ef835efd8abff72b4ffa88b62e562811d988c8548a720bdb31c28` |
| 17 | `theorem` | [logSample_deriv_integrableOn](../../../../MeasureAndIntegration/FixedKernelMomentAuditNamespaced.lean/declarations/logsample-deriv-integrableon.md) | 117 | `result-track:d447ce6677c0c3fedbb8fec5f18be99152b479e1a1f214a1a60e9cb8d2963bf6` |
| 18 | `theorem` | [logSample_variation_le](../../../../MeasureAndIntegration/FixedKernelMomentAuditNamespaced.lean/declarations/logsample-variation-le.md) | 135 | `result-track:1730cdbb380ac6dad0a18af514b714786549bbff91ebf7aee2e6d65817ac15c0` |
| 19 | `theorem` | [weighted_translate](../../../../MeasureAndIntegration/FixedKernelMomentAuditNamespaced.lean/declarations/weighted-translate.md) | 167 | `result-track:6a7a31921a1b1bd041d50cf6b30964f9607f39dafafb7b78e9307912c4060fab` |
| 20 | `theorem` | [weighted_translated_integrable](../../../../MeasureAndIntegration/FixedKernelMomentAuditNamespaced.lean/declarations/weighted-translated-integrable.md) | 176 | `result-track:73199f681953c247890a2f06cbb6c8e913eb2a4f3feeb12d4f77de126ef8d32c` |
| 21 | `theorem` | [weighted_translated_integral_zero](../../../../MeasureAndIntegration/FixedKernelMomentAuditNamespaced.lean/declarations/weighted-translated-integral-zero.md) | 183 | `result-track:d053d68f2a84647274fffd97c8d94dc3b7798828d6190995b089ffd467f314fc` |
| 22 | `theorem` | [logSample_integral_zero](../../../../MeasureAndIntegration/FixedKernelMomentAuditNamespaced.lean/declarations/logsample-integral-zero.md) | 191 | `result-track:1c4c45ce4aa83221dbc9cae264f438d23f5f6794dcb7b7037a655746a9919120` |
| 23 | `theorem` | [logSample_integrableOn_and_integral_zero](../../../../MeasureAndIntegration/FixedKernelMomentAuditNamespaced.lean/declarations/logsample-integrableon-and-integral-zero.md) | 205 | `result-track:c191fad8a0a28b512068fc9d940b0ea3bc60bbdcfcb6714e9a3a8491f12c10a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a3ed9df4f0f70b5c54da72b31b95bbf43f8cd09529ed95888ea5a4ba61cae48b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/FixedKernelMomentAudit/Variant8d826558595d24765381226ebd10466e6321b380e6ce4a874e75094728b046b5.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/FixedKernelMomentAudit/Variant8d826558595d24765381226ebd10466e6321b380e6ce4a874e75094728b046b5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
