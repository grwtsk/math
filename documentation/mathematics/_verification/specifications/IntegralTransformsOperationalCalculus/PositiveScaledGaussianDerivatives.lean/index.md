# Verification target: GRWTSK.Analysis.MellinTransform.Checks.Positive.ScaledGaussianDerivatives

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69f0397481c0f6014ffe7beb61b74277b1b3e198",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MellinTransform/Checks/Positive/ScaledGaussianDerivatives.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../IntegralTransformsOperationalCalculus/PositiveScaledGaussianDerivatives.lean/index.md) · [Full source](../../../../IntegralTransformsOperationalCalculus/PositiveScaledGaussianDerivatives.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69f0397481c0f6014ffe7beb61b74277b1b3e198`.

Source path: `GRWTSK/Analysis/MellinTransform/Checks/Positive/ScaledGaussianDerivatives.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MellinTransform/Checks/Positive/ScaledGaussianDerivatives.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.MellinTransform.ScaledGaussianDerivatives`](../../../../IntegralTransformsOperationalCalculus/MellinTransformScaledGaussianDerivatives.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [scaledGaussian_generic](../../../../IntegralTransformsOperationalCalculus/PositiveScaledGaussianDerivatives.lean/declarations/scaledgaussian-generic.md) | 10 | `result-track:a060b70f94aff5068fd7d2aa67261803a7ac2c7ef52c9169209917e66f065117` |
| 2 | `theorem` | [scaledGaussian_first_derivative](../../../../IntegralTransformsOperationalCalculus/PositiveScaledGaussianDerivatives.lean/declarations/scaledgaussian-first-derivative.md) | 15 | `result-track:bad204292a3572f5276f0ff0e38efae54f1466bce0623e9cf3fb2273b34f36b8` |
| 3 | `theorem` | [gaussianMellinProfile_zero_eq_coefficient](../../../../IntegralTransformsOperationalCalculus/PositiveScaledGaussianDerivatives.lean/declarations/gaussianmellinprofile-zero-eq-coefficient.md) | 23 | `result-track:435c3f3c3f971228eb9f0b9303cbf9ea22bfe1ef40857ba301b30f9c768a23d7` |
| 4 | `theorem` | [gaussianMellinProfile_zero_ne_zero](../../../../IntegralTransformsOperationalCalculus/PositiveScaledGaussianDerivatives.lean/declarations/gaussianmellinprofile-zero-ne-zero.md) | 27 | `result-track:37781bcb516e157222a8e11e88322f81dbd4acfd97e5a22995e469cfe80c5e5d` |
| 5 | `theorem` | [scaledGaussian_zero_no_uniform_bound](../../../../IntegralTransformsOperationalCalculus/PositiveScaledGaussianDerivatives.lean/declarations/scaledgaussian-zero-no-uniform-bound.md) | 36 | `result-track:9a58be7580623fa7e10490c85a68bc3cb47267cde614a8e99216ffa5fded4e55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c6c7290b0d39453a3210bb471f200f3b511921bd22933f083a852eb2ef559cf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MellinTransform/Checks/Positive/ScaledGaussianDerivatives.lean","GRWTSK/_verification/specifications/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/ScaledGaussianDerivatives.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
