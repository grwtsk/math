# Verification target: GRWTSK.Analysis.MellinTransform.Checks.Positive.GaussianFourierMoments

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90360a18613fabda141f7a9dda70ad57f40d4205",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MellinTransform/Checks/Positive/GaussianFourierMoments.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/PositiveGaussianFourierMoments.lean/index.md) · [Full source](../../../../MeasureAndIntegration/PositiveGaussianFourierMoments.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90360a18613fabda141f7a9dda70ad57f40d4205`.

Source path: `GRWTSK/Analysis/MellinTransform/Checks/Positive/GaussianFourierMoments.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MellinTransform/Checks/Positive/GaussianFourierMoments.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.MellinTransform.GaussianFourierMoments`](../../../../MeasureAndIntegration/MellinTransformGaussianFourierMoments.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [all_real_power_bound](../../../../MeasureAndIntegration/PositiveGaussianFourierMoments.lean/declarations/all-real-power-bound.md) | 10 | `result-track:8db7d147e5df24687bda39dfe585f948122dd38da8cfb5c0a44d13becf4a8887` |
| 2 | `theorem` | [actual_moment_integrable](../../../../MeasureAndIntegration/PositiveGaussianFourierMoments.lean/declarations/actual-moment-integrable.md) | 15 | `result-track:6fe303e4b50d01670ab3581f59a841cb03c45e74d043786799d0e12c771bca3f` |
| 3 | `theorem` | [actual_moment_bound](../../../../MeasureAndIntegration/PositiveGaussianFourierMoments.lean/declarations/actual-moment-bound.md) | 19 | `result-track:c57bd93e2f197f6e747ffb8d1ed853b384a3accfbd888bdbe33d0dbca7fa9d14` |
| 4 | `theorem` | [actual_positive_scale_cancel](../../../../MeasureAndIntegration/PositiveGaussianFourierMoments.lean/declarations/actual-positive-scale-cancel.md) | 24 | `result-track:ba60c169c1e777236d2319500faf491bffd14e13fc989af5b3e09b2e677471b6` |
| 5 | `theorem` | [actual_zero_scale_cancel_false](../../../../MeasureAndIntegration/PositiveGaussianFourierMoments.lean/declarations/actual-zero-scale-cancel-false.md) | 29 | `result-track:b6091372d340ec49345b2ba4da96f8a48c04f5e3ce027d4b6887294bf064a2b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed61fe86d2a7df31a5e1968703a22d1d7cdb57d8bbf7eb0629833fc0069d118f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MellinTransform/Checks/Positive/GaussianFourierMoments.lean","GRWTSK/_verification/specifications/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianFourierMoments.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
