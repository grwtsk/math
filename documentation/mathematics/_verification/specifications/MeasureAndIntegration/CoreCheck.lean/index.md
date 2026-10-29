# Verification target: Core Check

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "709ec6c111bb2404fa2ce71d75a23150fda9886a",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/59e373ad8076b94eaaa44cf23c5b13fce10dd364511baff402fcb12fc9ae558eCoreCheck/Variant59e373ad8076b94eaaa44cf23c5b13fce10dd364511baff402fcb12fc9ae558e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CoreCheck.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CoreCheck.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `709ec6c111bb2404fa2ce71d75a23150fda9886a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/59e373ad8076b94eaaa44cf23c5b13fce10dd364511baff402fcb12fc9ae558eCoreCheck/Variant59e373ad8076b94eaaa44cf23c5b13fce10dd364511baff402fcb12fc9ae558e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/59e373ad8076b94eaaa44cf23c5b13fce10dd364511baff402fcb12fc9ae558eCoreCheck/Variant59e373ad8076b94eaaa44cf23c5b13fce10dd364511baff402fcb12fc9ae558e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Landau.Bridge` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourceMeasure](../../../../MeasureAndIntegration/CoreCheck.lean/declarations/sourcemeasure.md) | 36 | `declaration-track:5295189f426a073db0ea78dcd4f751be01b902e5fc48189a8385cbff9e57eeed` |
| 2 | `theorem` | [corrected_source_aemeasurable](../../../../MeasureAndIntegration/CoreCheck.lean/declarations/corrected-source-aemeasurable.md) | 42 | `result-track:d5640833c10141e6d935a0249ac0b1d5ad7cfd5c1dd50befd9b1ad1da74c9153` |
| 3 | `theorem` | [density_aemeasurable](../../../../MeasureAndIntegration/CoreCheck.lean/declarations/density-aemeasurable.md) | 65 | `result-track:fac99353e8f5541fa640b7d33c6f4f030c718ddac27c988e9cc831f23858e57b` |
| 4 | `theorem` | [density_lt_top](../../../../MeasureAndIntegration/CoreCheck.lean/declarations/density-lt-top.md) | 72 | `result-track:2b5b03b3088f048f26765d6b128fb56f8eab7c24edd50c05d0c8efa378f3bc77` |
| 5 | `theorem` | [density_toReal_ae](../../../../MeasureAndIntegration/CoreCheck.lean/declarations/density-toreal-ae.md) | 81 | `result-track:4c48ed83e94692d38226a77732e59f0ea82c9f2bce781e30945b1ff9d40b72d8` |
| 6 | `theorem` | [one_lt_ae](../../../../MeasureAndIntegration/CoreCheck.lean/declarations/one-lt-ae.md) | 92 | `result-track:04f38348b08feb507d9da01d9fd75f70c104e8bf9bbfbe3b411abb5e1f88e23e` |
| 7 | `theorem` | [id_nonneg_ae](../../../../MeasureAndIntegration/CoreCheck.lean/declarations/id-nonneg-ae.md) | 99 | `result-track:6f7e3029e27e499962ba211d34017bc0a84f1bc56cf02ab4443fe9aff41acb06` |
| 8 | `theorem` | [exp_integrable](../../../../MeasureAndIntegration/CoreCheck.lean/declarations/exp-integrable.md) | 107 | `result-track:60f6475b3844bcfbac8662b7806dc0b00325e16b1d6308e2a06fead7af8d7994` |
| 9 | `theorem` | [integral_exp_eq_correctedTransform](../../../../MeasureAndIntegration/CoreCheck.lean/declarations/integral-exp-eq-correctedtransform.md) | 126 | `result-track:75e47430ca643a42b6c35593622b6e6cd34d8433e7a23d4dde18e162e0cb72a6` |
| 10 | `theorem` | [complexMGF_eq_correctedTransform](../../../../MeasureAndIntegration/CoreCheck.lean/declarations/complexmgf-eq-correctedtransform.md) | 149 | `result-track:d32d18dc68f0509c7b3ad80ce14085f06d55725585ec46fd00bc283915b18663` |
| 11 | `theorem` | [real_laplace_integrable](../../../../MeasureAndIntegration/CoreCheck.lean/declarations/real-laplace-integrable.md) | 158 | `result-track:6560912eb5af17b7ab04a0c97d274c60a36ce0e9debf1396ad5a9bd7e9952c6e` |
| 12 | `theorem` | [correction_at_shifted_center_analytic](../../../../MeasureAndIntegration/CoreCheck.lean/declarations/correction-at-shifted-center-analytic.md) | 174 | `result-track:48fa5f6b1a3e2925341555d7e1b7dd41056729b75ffd921af3cc9a490c2a473d` |
| 13 | `theorem` | [corrected_transform_cleared_tendsto](../../../../MeasureAndIntegration/CoreCheck.lean/declarations/corrected-transform-cleared-tendsto.md) | 200 | `result-track:0e2c02c1ad8297e2d806a719c9b730e1a462369b5172f3e0a6caef62b0a448ab` |
| 14 | `theorem` | [correctedTransform_punctured_differentiable](../../../../MeasureAndIntegration/CoreCheck.lean/declarations/correctedtransform-punctured-differentiable.md) | 220 | `result-track:0131399afd6811c06458ab50f485a1ff6b292f16110e1d416e7e9985ae09bc43` |
| 15 | `theorem` | [corrected_transform_exact_pole](../../../../MeasureAndIntegration/CoreCheck.lean/declarations/corrected-transform-exact-pole.md) | 242 | `result-track:2a4f3795f5c8d62542b542a92a067b5b949df72d872cec9eb487692c5cf8fb4b` |
| 16 | `theorem` | [corrected_order_nonneg](../../../../MeasureAndIntegration/CoreCheck.lean/declarations/corrected-order-nonneg.md) | 281 | `result-track:2830d0eb982785689803e3fac4942dca2ffe5fd4492fa72bba47f1d8addef3a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=095eef9bc04b4158728ef07f3d8936f7b01d3a1c538b08711fb648a5142b166d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/59e373ad8076b94eaaa44cf23c5b13fce10dd364511baff402fcb12fc9ae558eCoreCheck/Variant59e373ad8076b94eaaa44cf23c5b13fce10dd364511baff402fcb12fc9ae558e.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/59e373ad8076b94eaaa44cf23c5b13fce10dd364511baff402fcb12fc9ae558eCoreCheck/Variant59e373ad8076b94eaaa44cf23c5b13fce10dd364511baff402fcb12fc9ae558e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
