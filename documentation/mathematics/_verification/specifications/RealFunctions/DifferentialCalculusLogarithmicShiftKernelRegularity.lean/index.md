# Verification target: GRWTSK.Analysis.Calculus.LogarithmicShiftKernelRegularity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cfcf6ea846f715c762e06858836371ff8929902f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Calculus/LogarithmicShiftKernelRegularity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/DifferentialCalculusLogarithmicShiftKernelRegularity.lean/index.md) · [Full source](../../../../RealFunctions/DifferentialCalculusLogarithmicShiftKernelRegularity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cfcf6ea846f715c762e06858836371ff8929902f`.

Source path: `GRWTSK/Analysis/Calculus/LogarithmicShiftKernelRegularity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Calculus/LogarithmicShiftKernelRegularity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Convolution.CompactProfileSupportEdge`](../../../../MeasureAndIntegration/CompactProfileSupportEdge.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.FiniteShiftedDerivativeBounds`](../../../../RealFunctions/InequalitiesInRealAnalysis/InequalitiesFiniteShiftedDerivativeBounds.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [edgeReading](../../../../RealFunctions/DifferentialCalculusLogarithmicShiftKernelRegularity.lean/declarations/edgereading.md) | 33 | `declaration-track:c5c6bc8ba37254c3f2e96575c803dae16aa6df889b7e1dd50ba6278893a9b65c` |
| 2 | `theorem` | [edge_reading_strict_inside](../../../../RealFunctions/DifferentialCalculusLogarithmicShiftKernelRegularity.lean/declarations/edge-reading-strict-inside.md) | 35 | `result-track:ef6726dd1d7829a6ca83f16a037e22629a1c932567d5783a72241a07a04c49db` |
| 3 | `theorem` | [two_mem_inventory](../../../../RealFunctions/DifferentialCalculusLogarithmicShiftKernelRegularity.lean/declarations/two-mem-inventory.md) | 44 | `result-track:aae4bb2d0eb6c3bf5d9f4dff12588073bce5c1fc027a9a84e5d4c84163b1ed60` |
| 4 | `theorem` | [correlation_third_zero_of_two_mul_lt](../../../../RealFunctions/DifferentialCalculusLogarithmicShiftKernelRegularity.lean/declarations/correlation-third-zero-of-two-mul-lt.md) | 51 | `result-track:16da3262d32b1b49306ac31dbb721ab84d2b98cddae2326ccf4fddc527098be2` |
| 5 | `theorem` | [correlation_fourth_zero_of_two_mul_le](../../../../RealFunctions/DifferentialCalculusLogarithmicShiftKernelRegularity.lean/declarations/correlation-fourth-zero-of-two-mul-le.md) | 56 | `result-track:d6bb0be757505c3123dfe2cff04972d670d363ee417a46038cd751df7a73067f` |
| 6 | `theorem` | [kernel_second_deriv_eventually_eq_label_two](../../../../RealFunctions/DifferentialCalculusLogarithmicShiftKernelRegularity.lean/declarations/kernel-second-deriv-eventually-eq-label-two.md) | 61 | `result-track:3f6e87de3a33329074a9d900993a9233d35706217498f0966d8cff32ee4a96bf` |
| 7 | `theorem` | [kernel_second_deriv_not_differentiable_at_edge](../../../../RealFunctions/DifferentialCalculusLogarithmicShiftKernelRegularity.lean/declarations/kernel-second-deriv-not-differentiable-at-edge.md) | 87 | `result-track:e1ac513e99c233b2ae36de334c58d5d3ac3207c2ec4332ed909d8a1c2f007a3d` |
| 8 | `theorem` | [polarity_kernel_not_contDiff_three](../../../../RealFunctions/DifferentialCalculusLogarithmicShiftKernelRegularity.lean/declarations/polarity-kernel-not-contdiff-three.md) | 123 | `result-track:6e6b6ce3ea819e63f0a21efd000448b7614c6f88971869980f10214fabd3981d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ab2554acc3d8e7867409a73bad474ab09f8ceb9abd1737efb099e86253be9f6a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Calculus/LogarithmicShiftKernelRegularity.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/LogarithmicShiftKernelRegularity.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
