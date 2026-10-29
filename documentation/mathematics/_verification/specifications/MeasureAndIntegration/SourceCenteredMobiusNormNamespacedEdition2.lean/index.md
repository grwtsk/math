# Verification target: Source Centered Mobius Norm Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5a8875a9fd3bc306df92f57132d7e0754f11298",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variant3b735d45b9f559597d10890de7b70e3a482314ed74a766807f7126c48987a9f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceCenteredMobiusNormNamespacedEdition2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceCenteredMobiusNormNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5a8875a9fd3bc306df92f57132d7e0754f11298`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variant3b735d45b9f559597d10890de7b70e3a482314ed74a766807f7126c48987a9f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variant3b735d45b9f559597d10890de7b70e3a482314ed74a766807f7126c48987a9f8.lean.json)

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
| 1 | `def` | [realSource](../../../../MeasureAndIntegration/SourceCenteredMobiusNormNamespacedEdition2.lean/declarations/realsource.md) | 35 | `declaration-track:94b835d9f16efc0e5a9dade97a45b2d19ca831c7bc811b50d16cba4a8965f7c0` |
| 2 | `theorem` | [realSource_coe](../../../../MeasureAndIntegration/SourceCenteredMobiusNormNamespacedEdition2.lean/declarations/realsource-coe.md) | 38 | `result-track:8ddcb7f1cb4cf5918174693dee1c5b2bc495a93d3d4170bc1776514a7fa1c5ac` |
| 3 | `theorem` | [realSource_norm](../../../../MeasureAndIntegration/SourceCenteredMobiusNormNamespacedEdition2.lean/declarations/realsource-norm.md) | 43 | `result-track:3b9b87ad1c16b31abfeeb70128ed888d82f9ce68e95617fd522cd223e903d0f0` |
| 4 | `def` | [shift](../../../../MeasureAndIntegration/SourceCenteredMobiusNormNamespacedEdition2.lean/declarations/shift.md) | 51 | `declaration-track:be840c67e950f9929761fc774a3e436a87399fa73d1fec03bd6ed22235e90f6e` |
| 5 | `theorem` | [shift_coe](../../../../MeasureAndIntegration/SourceCenteredMobiusNormNamespacedEdition2.lean/declarations/shift-coe.md) | 55 | `result-track:f45df2bdaf43efc261827d8c8a1dc144e6cc4793ca0123ec1fa7dd90e2e3d10e` |
| 6 | `theorem` | [shift_norm](../../../../MeasureAndIntegration/SourceCenteredMobiusNormNamespacedEdition2.lean/declarations/shift-norm.md) | 63 | `result-track:54370485b92d4bedea268a18cd2fe8d6c0e9b217bd68ce8090c2aca281d66d98` |
| 7 | `theorem` | [shift_inner](../../../../MeasureAndIntegration/SourceCenteredMobiusNormNamespacedEdition2.lean/declarations/shift-inner.md) | 67 | `result-track:a3a41b3ba9e9d56bb47316be5ed6b0b052fbf554f390e398ea5ef794fa8e0be9` |
| 8 | `theorem` | [correlation_deriv_zero](../../../../MeasureAndIntegration/SourceCenteredMobiusNormNamespacedEdition2.lean/declarations/correlation-deriv-zero.md) | 88 | `result-track:b8d2bf3bf2e763f2128828f0508581bf4f0e59ea9f536abaeada50da19d73f85` |
| 9 | `theorem` | [shift_sub_norm_le](../../../../MeasureAndIntegration/SourceCenteredMobiusNormNamespacedEdition2.lean/declarations/shift-sub-norm-le.md) | 104 | `result-track:8b38e6536e6b2c7a48f584eb47fa3b0e345a3b934b21b6b4ceac3c594cb90965` |
| 10 | `def` | [atom](../../../../MeasureAndIntegration/SourceCenteredMobiusNormNamespacedEdition2.lean/declarations/atom.md) | 125 | `declaration-track:c5e1378a9e60189410b9b528f05a4d41db9e5773b8112eaf7dae44418218fc62` |
| 11 | `theorem` | [atom_norm](../../../../MeasureAndIntegration/SourceCenteredMobiusNormNamespacedEdition2.lean/declarations/atom-norm.md) | 128 | `result-track:c2e5ec0ce5c6ffdb3ddbb775714012ed86ff0f70e5b2ca6eea6b884e02366171` |
| 12 | `theorem` | [log_step_le](../../../../MeasureAndIntegration/SourceCenteredMobiusNormNamespacedEdition2.lean/declarations/log-step-le.md) | 133 | `result-track:a5a9ee78c949a29326f2c8da245bd5c757dcf51452c1131fbfeea99a2bf680c5` |
| 13 | `theorem` | [atom_step_norm_le](../../../../MeasureAndIntegration/SourceCenteredMobiusNormNamespacedEdition2.lean/declarations/atom-step-norm-le.md) | 157 | `result-track:35caa1c0c48810e65698ec830bdcd01d7ee7d19d1e6e0fc04d1ea14af1097e4a` |
| 14 | `theorem` | [finite_abel](../../../../MeasureAndIntegration/SourceCenteredMobiusNormNamespacedEdition2.lean/declarations/finite-abel.md) | 201 | `result-track:c22d8d2dc24b3c5be2cdcd45ab2144aff67fb2a659992261b6aa73838bbe63ee` |
| 15 | `theorem` | [inverse_sqrt_telescope](../../../../MeasureAndIntegration/SourceCenteredMobiusNormNamespacedEdition2.lean/declarations/inverse-sqrt-telescope.md) | 219 | `result-track:67588befa6d90353b53e6459f98aecd9260cb98d23c91cc6be828165f32acd68` |
| 16 | `theorem` | [centeredMobiusReflectedL2_norm_le_scale_add_ten](../../../../MeasureAndIntegration/SourceCenteredMobiusNormNamespacedEdition2.lean/declarations/centeredmobiusreflectedl2-norm-le-scale-add-ten.md) | 230 | `result-track:764d76763900b71006bd59e8b83fbb75691dc1abf9630451f91f3d253eb4a091` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=68da7d8782a4698d4dd6090fbb6ba32eaf97bfefc31394efdd684e166427e18a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variant3b735d45b9f559597d10890de7b70e3a482314ed74a766807f7126c48987a9f8.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCenteredMobiusNorm/Variant3b735d45b9f559597d10890de7b70e3a482314ed74a766807f7126c48987a9f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
