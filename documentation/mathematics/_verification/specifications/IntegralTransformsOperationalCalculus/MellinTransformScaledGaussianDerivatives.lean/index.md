# Verification target: GRWTSK.Analysis.MellinTransform.ScaledGaussianDerivatives

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40dc27846be5127f03ff440eb84ac0c927c1a4a0",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MellinTransform/ScaledGaussianDerivatives.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../IntegralTransformsOperationalCalculus/MellinTransformScaledGaussianDerivatives.lean/index.md) · [Full source](../../../../IntegralTransformsOperationalCalculus/MellinTransformScaledGaussianDerivatives.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40dc27846be5127f03ff440eb84ac0c927c1a4a0`.

Source path: `GRWTSK/Analysis/MellinTransform/ScaledGaussianDerivatives.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MellinTransform/ScaledGaussianDerivatives.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.MellinTransform.NormalizedGaussian`](../../../../MeasureAndIntegration/MellinTransformNormalizedGaussian.lean/index.md) — import line 20; pinned internal source present.
- `Mathlib.Analysis.Complex.Liouville` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RealDeriv` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.Analytic` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gaussianLog](../../../../IntegralTransformsOperationalCalculus/MellinTransformScaledGaussianDerivatives.lean/declarations/gaussianlog.md) | 31 | `declaration-track:2718861328a8f0355635c462af35cc2c42b121ce2021a9997045e473886d0171` |
| 2 | `lemma` | [gaussianLog_ofReal](../../../../IntegralTransformsOperationalCalculus/MellinTransformScaledGaussianDerivatives.lean/declarations/gaussianlog-ofreal.md) | 34 | `result-track:13568e2928a7312210da306b5f3a0d742f78d4e3d40166379b7f3d4dd731eaa7` |
| 3 | `lemma` | [gaussianLog_power_bound](../../../../IntegralTransformsOperationalCalculus/MellinTransformScaledGaussianDerivatives.lean/declarations/gaussianlog-power-bound.md) | 36 | `result-track:85c07ac5e50f2122e25e920fd2707b7dcd02f7f874dec4cd325631edec4db540` |
| 4 | `lemma` | [iteratedDeriv_restrict_positive](../../../../IntegralTransformsOperationalCalculus/MellinTransformScaledGaussianDerivatives.lean/declarations/iteratedderiv-restrict-positive.md) | 54 | `result-track:da021a3b0f2a601d45831f10ab4d1516402de0b28bcffabb8b35dd8ee6fdb502` |
| 5 | `lemma` | [gaussianLog_analytic](../../../../IntegralTransformsOperationalCalculus/MellinTransformScaledGaussianDerivatives.lean/declarations/gaussianlog-analytic.md) | 67 | `result-track:9be3b39e0ea43a2c9b24dcbe21bcd2a398a8f1f4b23dc7192a5998d882c60f75` |
| 6 | `lemma` | [gaussianLog_scaled_analytic](../../../../IntegralTransformsOperationalCalculus/MellinTransformScaledGaussianDerivatives.lean/declarations/gaussianlog-scaled-analytic.md) | 72 | `result-track:c0d46562d03f782804cf7adec6d3b95189dc31064feeb39169cd0fcdbce3dba9` |
| 7 | `lemma` | [gaussianLog_scaled_disk_bound](../../../../IntegralTransformsOperationalCalculus/MellinTransformScaledGaussianDerivatives.lean/declarations/gaussianlog-scaled-disk-bound.md) | 77 | `result-track:4810a99c16eea3606103d7664f88fb15cbf307a94fb24921000b95b1dcf14567` |
| 8 | `lemma` | [gaussianLog_scaled_derivative_bound](../../../../IntegralTransformsOperationalCalculus/MellinTransformScaledGaussianDerivatives.lean/declarations/gaussianlog-scaled-derivative-bound.md) | 110 | `result-track:7df1f2dc52ffe3f4b441febf840e8e659d90bec8b57da4be3a4d0ad3043a1222` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ef187c9726c6b8bbc88fcec61f4e26245180af62c111ad1c61758b40a5aa3608 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MellinTransform/ScaledGaussianDerivatives.lean","GRWTSK/_verification/specifications/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ScaledGaussianDerivatives.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
