# Verification target: GRWTSK.Analysis.MellinTransform.Checks.Positive.GaussianDyadicSummation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6e9a7a5ab6a0da7ba850f6307176abaa4b4d29f",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MellinTransform/Checks/Positive/GaussianDyadicSummation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianDyadicSummation.lean/index.md) · [Full source](../../../../../../../../../Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianDyadicSummation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6e9a7a5ab6a0da7ba850f6307176abaa4b4d29f`.

Source path: `GRWTSK/Analysis/MellinTransform/Checks/Positive/GaussianDyadicSummation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MellinTransform/Checks/Positive/GaussianDyadicSummation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.MellinTransform.GaussianDyadicSummation`](../../../../../../../../../Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/GaussianDyadicSummation.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Topology.Algebra.InfiniteSum.Group` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [gaussian_weighted_generic](../../../../../../../../../Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianDyadicSummation.lean/declarations/gaussian-weighted-generic--ccd1d302db9df894571c050d.md) | 12 | `result-track:ccd1d302db9df894571c050d66f8cd7c91b66ae30c9466bea5a89c8ac24b3339` |
| 2 | `theorem` | [gaussian_values_one](../../../../../../../../../Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianDyadicSummation.lean/declarations/gaussian-values-one--73dcca9831fd5e16b73c97d1.md) | 18 | `result-track:73dcca9831fd5e16b73c97d1e8e3d51eb7c024ed824f62cc2fcf4c2cda0626a3` |
| 3 | `theorem` | [gaussian_zero_scale_nonzero](../../../../../../../../../Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianDyadicSummation.lean/declarations/gaussian-zero-scale-nonzero--a2b35df754385a833d775122.md) | 23 | `result-track:a2b35df754385a833d77512214fe469cf3d3d1f01d652d4b09d4641c1e8ef5b9` |
| 4 | `theorem` | [gaussian_zero_scale_values_not_summable](../../../../../../../../../Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianDyadicSummation.lean/declarations/gaussian-zero-scale-values-not-summable--49c21f845d42ea316ed4b250.md) | 46 | `result-track:49c21f845d42ea316ed4b25084e4638f550efb3da707a36e444cdba0823d2c04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7e51bdae833847b224f7afd82511f6c39287f704825a994fb43839c20c449433 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MellinTransform/Checks/Positive/GaussianDyadicSummation.lean","GRWTSK/_verification/specifications/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianDyadicSummation.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
