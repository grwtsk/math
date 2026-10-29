# Verification target: Source Centered Mobius Norm Namespaced Edition4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d4e90cdf46d2564b891ccf453980bd4acc159b4",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variant1440d21547cc73e17c4050c8b5df6eebf1d458f4f3ff0c8f96c367d438a7c6f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceCenteredMobiusNormNamespacedEdition4.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceCenteredMobiusNormNamespacedEdition4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d4e90cdf46d2564b891ccf453980bd4acc159b4`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variant1440d21547cc73e17c4050c8b5df6eebf1d458f4f3ff0c8f96c367d438a7c6f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variant1440d21547cc73e17c4050c8b5df6eebf1d458f4f3ff0c8f96c367d438a7c6f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceVaughanHankel` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceCorrelationCurvature` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realSource](../../../../MeasureAndIntegration/SourceCenteredMobiusNormNamespacedEdition4.lean/declarations/realsource.md) | 35 | `declaration-track:681b6b163a563335e82c91a3c94b62ad82e5c7c0afab560ed998699b2d13306c` |
| 2 | `theorem` | [realSource_coe](../../../../MeasureAndIntegration/SourceCenteredMobiusNormNamespacedEdition4.lean/declarations/realsource-coe.md) | 38 | `result-track:9c18af0e56075567926217853c7683adec9a9ead762dbe634676b24fb99a8150` |
| 3 | `theorem` | [realSource_norm](../../../../MeasureAndIntegration/SourceCenteredMobiusNormNamespacedEdition4.lean/declarations/realsource-norm.md) | 45 | `result-track:fdc746def976b9ddf2c2da7e7f6d4f33369715f2ebf9e5e687351452f6ecd406` |
| 4 | `def` | [shift](../../../../MeasureAndIntegration/SourceCenteredMobiusNormNamespacedEdition4.lean/declarations/shift.md) | 54 | `declaration-track:da3123b324d2ae11afb94d3f5e446f2d243c93cbffbc23e207ddc6351d7ba7fc` |
| 5 | `theorem` | [shift_coe](../../../../MeasureAndIntegration/SourceCenteredMobiusNormNamespacedEdition4.lean/declarations/shift-coe.md) | 58 | `result-track:4c604d434ed439ebdde885bcb031005f032a0328351029b8607ae17e968a02ad` |
| 6 | `theorem` | [shift_norm](../../../../MeasureAndIntegration/SourceCenteredMobiusNormNamespacedEdition4.lean/declarations/shift-norm.md) | 66 | `result-track:21a87304ffc1eb96e2fe1787bbe16ccdcb57d2c45e73193479a88ab5c0806d77` |
| 7 | `theorem` | [shift_inner](../../../../MeasureAndIntegration/SourceCenteredMobiusNormNamespacedEdition4.lean/declarations/shift-inner.md) | 70 | `result-track:a9068cf638c5a82ec10c2220d59c766cfd3737c1bac9d0c2bb012e6771c2684c` |
| 8 | `theorem` | [correlation_deriv_zero](../../../../MeasureAndIntegration/SourceCenteredMobiusNormNamespacedEdition4.lean/declarations/correlation-deriv-zero.md) | 90 | `result-track:6d3d989797508b1c55b783f837d809bf9355d637d9751811267fc4ddc4a3e344` |
| 9 | `theorem` | [shift_sub_norm_le](../../../../MeasureAndIntegration/SourceCenteredMobiusNormNamespacedEdition4.lean/declarations/shift-sub-norm-le.md) | 106 | `result-track:b320838c24dd3637968af72f2222c478e7559eac6a78e58c206a000011f806b6` |
| 10 | `def` | [atom](../../../../MeasureAndIntegration/SourceCenteredMobiusNormNamespacedEdition4.lean/declarations/atom.md) | 127 | `declaration-track:96c60656f2b7a07b8a6a2432c287e1d7d66da039a36b3140e9a60decc975580c` |
| 11 | `theorem` | [atom_norm](../../../../MeasureAndIntegration/SourceCenteredMobiusNormNamespacedEdition4.lean/declarations/atom-norm.md) | 130 | `result-track:d42f4c9f7fac2c92a888e483e6b7ee2fa525f87c343c121f23c9fa2b864de12e` |
| 12 | `theorem` | [log_step_le](../../../../MeasureAndIntegration/SourceCenteredMobiusNormNamespacedEdition4.lean/declarations/log-step-le.md) | 135 | `result-track:1bb85c7079a399afa7a5ac3be20ddc5bace018462a38a84be3413dab0094e901` |
| 13 | `theorem` | [atom_step_norm_le](../../../../MeasureAndIntegration/SourceCenteredMobiusNormNamespacedEdition4.lean/declarations/atom-step-norm-le.md) | 160 | `result-track:23ae18a6f21b9e98638c874c3112dc457b4991191fca17faf7f8a6b11afe8ee9` |
| 14 | `theorem` | [finite_abel](../../../../MeasureAndIntegration/SourceCenteredMobiusNormNamespacedEdition4.lean/declarations/finite-abel.md) | 206 | `result-track:075c9c5716f5cc79601a4a3b1460cdfde98bfb5bfd6e0150d6b4a61627b417b9` |
| 15 | `theorem` | [inverse_sqrt_telescope](../../../../MeasureAndIntegration/SourceCenteredMobiusNormNamespacedEdition4.lean/declarations/inverse-sqrt-telescope.md) | 224 | `result-track:a3b3cb87136fb3500fb18a541e068455b9a478e4e5458231437a43f68cb49ead` |
| 16 | `theorem` | [centeredMobiusReflectedL2_norm_le_scale_add_ten](../../../../MeasureAndIntegration/SourceCenteredMobiusNormNamespacedEdition4.lean/declarations/centeredmobiusreflectedl2-norm-le-scale-add-ten.md) | 235 | `result-track:ba9d7e08fe43ce974efc03af53f280b06b632d44a8621d2ca51e72e9c0978581` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7373f0350e5876c0bc18a6ffd87c000cc4a73efcd9c0aba9bcccec50c1437c6d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variant1440d21547cc73e17c4050c8b5df6eebf1d458f4f3ff0c8f96c367d438a7c6f2.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variant1440d21547cc73e17c4050c8b5df6eebf1d458f4f3ff0c8f96c367d438a7c6f2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
