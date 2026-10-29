# Verification target: Actual Curvature Resolution Attempt03 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eab3e859c5cd7962f853f55d8bdcb3c409656e20",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt03/Variantd23b01095853c04ced15c90b4a3eedbe7146ab136190492c93624d505ccd5643.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ActualCurvatureResolutionAttempt03Namespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ActualCurvatureResolutionAttempt03Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eab3e859c5cd7962f853f55d8bdcb3c409656e20`.

Source path: `GRWTSK/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt03/Variantd23b01095853c04ced15c90b4a3eedbe7146ab136190492c93624d505ccd5643.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt03/Variantd23b01095853c04ced15c90b4a3eedbe7146ab136190492c93624d505ccd5643.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualCurvatureBudget` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sampledCurvatureWork](../../../../MeasureAndIntegration/ActualCurvatureResolutionAttempt03Namespaced.lean/declarations/sampledcurvaturework.md) | 24 | `declaration-track:95005320f857922a7f52a67500f6d4365b5a431dbad917821c36c4d07a3b1e4a` |
| 2 | `theorem` | [sampled_integrand_intervalIntegrable](../../../../MeasureAndIntegration/ActualCurvatureResolutionAttempt03Namespaced.lean/declarations/sampled-integrand-intervalintegrable.md) | 27 | `result-track:3d530fc0b89b9fd434d4c0fc45d7f65e6956f568065e6bdfffc32e77dc49a89d` |
| 3 | `theorem` | [sampled_work_error](../../../../MeasureAndIntegration/ActualCurvatureResolutionAttempt03Namespaced.lean/declarations/sampled-work-error.md) | 47 | `result-track:1d8df08f529da801cd063699dffb0a02f08fcbc2f8c805fbb8a213175b49c1cc` |
| 4 | `def` | [leftGridSample](../../../../MeasureAndIntegration/ActualCurvatureResolutionAttempt03Namespaced.lean/declarations/leftgridsample.md) | 74 | `declaration-track:4f7c8a8d81bc370a43e17c7ab5d9fb7f3ea423b83a8f6aa5552ea66b45330479` |
| 5 | `theorem` | [leftGridSample_measurable](../../../../MeasureAndIntegration/ActualCurvatureResolutionAttempt03Namespaced.lean/declarations/leftgridsample-measurable.md) | 77 | `result-track:5fa781a778c41ed915c619990348b32e8cb6940ca180a35e934db5e3b3cb83fe` |
| 6 | `theorem` | [leftGridSample_range_mesh](../../../../MeasureAndIntegration/ActualCurvatureResolutionAttempt03Namespaced.lean/declarations/leftgridsample-range-mesh.md) | 81 | `result-track:cabda61c97f0359f0c05af754202b80d0f0c5e863d36c6413264a6cfc3e43866` |
| 7 | `theorem` | [actual_grid_work_error](../../../../MeasureAndIntegration/ActualCurvatureResolutionAttempt03Namespaced.lean/declarations/actual-grid-work-error.md) | 103 | `result-track:dc6ae38a4540c6075783fedc07320dff309d93d6a1b08c062cedb83d6dd4b545` |
| 8 | `def` | [curvatureResolutionCount](../../../../MeasureAndIntegration/ActualCurvatureResolutionAttempt03Namespaced.lean/declarations/curvatureresolutioncount.md) | 120 | `declaration-track:9bc9ffe5ebe41b8b30e0bea0225ca765c102bcde3670319e1be3894229efb680` |
| 9 | `theorem` | [curvatureResolutionCount_pos](../../../../MeasureAndIntegration/ActualCurvatureResolutionAttempt03Namespaced.lean/declarations/curvatureresolutioncount-pos.md) | 122 | `result-track:127bd81e140b847e3fd8718952df7766f277b3a693093a59ecbe41a5817a263b` |
| 10 | `theorem` | [curvatureResolutionCount_mono](../../../../MeasureAndIntegration/ActualCurvatureResolutionAttempt03Namespaced.lean/declarations/curvatureresolutioncount-mono.md) | 126 | `result-track:1acf80dcdd15400fc9ebea20dbf9fe2e283abedb9ee6c5fdcaf147b35561199f` |
| 11 | `theorem` | [actual_joint_grid_work_accuracy](../../../../MeasureAndIntegration/ActualCurvatureResolutionAttempt03Namespaced.lean/declarations/actual-joint-grid-work-accuracy.md) | 133 | `result-track:918bba50c722e61c889c16f6e809bf32137d0c13d91edb380519527c66adcdec` |
| 12 | `def` | [CurvatureGridTailLowerBound](../../../../MeasureAndIntegration/ActualCurvatureResolutionAttempt03Namespaced.lean/declarations/curvaturegridtaillowerbound.md) | 147 | `declaration-track:596bc7c804e8a6019242d9a5e42bbcf84cea40b600df1139f83b159c940d8574` |
| 13 | `theorem` | [actual_tail_iff_grid_tail](../../../../MeasureAndIntegration/ActualCurvatureResolutionAttempt03Namespaced.lean/declarations/actual-tail-iff-grid-tail.md) | 152 | `result-track:531eaabab865fa593c66cf864bf66630494ad28754a2889f1ff7f3a5ad1a4176` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=88fc7ccc7c4820f5f97ba1eef86344e720b86835441a6c162d51d7ed2749e05d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt03/Variantd23b01095853c04ced15c90b4a3eedbe7146ab136190492c93624d505ccd5643.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/ActualCurvatureResolutionAttempt03/Variantd23b01095853c04ced15c90b4a3eedbe7146ab136190492c93624d505ccd5643.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
