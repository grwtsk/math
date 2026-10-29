# Verification target: GRWTSK.Analysis.MellinTransform.Checks.Positive.GaussianCoupledSeparation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ad6ad015243c25205c4a8e23730c72e790d4692",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MellinTransform/Checks/Positive/GaussianCoupledSeparation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/PositiveGaussianCoupledSeparation.lean/index.md) · [Full source](../../../../MeasureAndIntegration/PositiveGaussianCoupledSeparation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ad6ad015243c25205c4a8e23730c72e790d4692`.

Source path: `GRWTSK/Analysis/MellinTransform/Checks/Positive/GaussianCoupledSeparation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MellinTransform/Checks/Positive/GaussianCoupledSeparation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.MellinTransform.GaussianCoupledSeparation`](../../../../MeasureAndIntegration/MellinTransformGaussianCoupledSeparation.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [actual_cutoff_center](../../../../MeasureAndIntegration/PositiveGaussianCoupledSeparation.lean/declarations/actual-cutoff-center.md) | 12 | `result-track:ae371afc174e492c33672bb3a93234685c79f66496db58e5810b248f2f64debd` |
| 2 | `lemma` | [actual_cutoff_boundary](../../../../MeasureAndIntegration/PositiveGaussianCoupledSeparation.lean/declarations/actual-cutoff-boundary.md) | 15 | `result-track:3f36a4cab0140a109859ea6ad315b162325799f0bbda536533e478ba2f878153` |
| 3 | `lemma` | [actual_negative_radius_compact](../../../../MeasureAndIntegration/PositiveGaussianCoupledSeparation.lean/declarations/actual-negative-radius-compact.md) | 18 | `result-track:122ca684d80a7407cd9eb266da70d342ed486e3c08b8a71e69019b95edec93b6` |
| 4 | `def` | [boxWindow](../../../../MeasureAndIntegration/PositiveGaussianCoupledSeparation.lean/declarations/boxwindow.md) | 21 | `declaration-track:048f34deb3f207147b95a1610cebc85988d368fc04c5595afb32f6c14c951060` |
| 5 | `def` | [boxWeight](../../../../MeasureAndIntegration/PositiveGaussianCoupledSeparation.lean/declarations/boxweight.md) | 22 | `declaration-track:a1e10b4c85ec506e8c5e0d3fef343a8b9ed5dfc33e3adf10471469418eed1afc` |
| 6 | `def` | [boxPoint](../../../../MeasureAndIntegration/PositiveGaussianCoupledSeparation.lean/declarations/boxpoint.md) | 23 | `declaration-track:a327f08c930f38974b99506f2249d97b97f624d62009767c76b2a1377588d09b` |
| 7 | `lemma` | [boxWindow_support](../../../../MeasureAndIntegration/PositiveGaussianCoupledSeparation.lean/declarations/boxwindow-support.md) | 25 | `result-track:25759aeb66773e102979ece362b441159ea83d1ab35ad953265642bd96cda367` |
| 8 | `theorem` | [actual_two_factor_family](../../../../MeasureAndIntegration/PositiveGaussianCoupledSeparation.lean/declarations/actual-two-factor-family.md) | 30 | `result-track:43cb6542fde26f9d598cda8e1bc3ec2127d4eec8805e131b35e3ff286b000c0a` |
| 9 | `theorem` | [actual_two_factor_integral](../../../../MeasureAndIntegration/PositiveGaussianCoupledSeparation.lean/declarations/actual-two-factor-integral.md) | 42 | `result-track:0a33a193eafe9c2d3e7f60839473450c1d0bb08a410452c2cd256d32b25c3162` |
| 10 | `theorem` | [actual_empty_family](../../../../MeasureAndIntegration/PositiveGaussianCoupledSeparation.lean/declarations/actual-empty-family.md) | 55 | `result-track:492a0b6e5022fb7527a4ffc821e6d1a21d4c7234d8b0774440788b21f0d5c150` |
| 11 | `lemma` | [zero_cutoff_compact](../../../../MeasureAndIntegration/PositiveGaussianCoupledSeparation.lean/declarations/zero-cutoff-compact.md) | 64 | `result-track:1f4a9b8e9685fc7295eaab03c59f6a2b96dfa26b74fe5022d876f4d30d2df05f` |
| 12 | `theorem` | [actual_zero_product](../../../../MeasureAndIntegration/PositiveGaussianCoupledSeparation.lean/declarations/actual-zero-product.md) | 69 | `result-track:a3d4f6dacf94e73df1ebfb08fa10d3c65a8bfd74242f230b58db74dad8bfff94` |
| 13 | `lemma` | [zero_cutoff_density](../../../../MeasureAndIntegration/PositiveGaussianCoupledSeparation.lean/declarations/zero-cutoff-density.md) | 76 | `result-track:bf6477f50c18a24f03b4151c12387392b987197b6946ffdb14cb3b109c101ee2` |
| 14 | `lemma` | [profile_one_ne_zero](../../../../MeasureAndIntegration/PositiveGaussianCoupledSeparation.lean/declarations/profile-one-ne-zero.md) | 85 | `result-track:69aa6890de3c845d0114ac04441462e6009eda958b012ce7a4ef1d16f6756de0` |
| 15 | `theorem` | [actual_missing_active_false](../../../../MeasureAndIntegration/PositiveGaussianCoupledSeparation.lean/declarations/actual-missing-active-false.md) | 95 | `result-track:3d87a05951a67b7ed26f53ecd954f6922ad0fb892329322b155098859a8d9c83` |
| 16 | `lemma` | [actual_zero_cutoff_not_active](../../../../MeasureAndIntegration/PositiveGaussianCoupledSeparation.lean/declarations/actual-zero-cutoff-not-active.md) | 101 | `result-track:47b08a24f292a1f9c6f8ff38c08889abbb51385e4e02f143919110d7946c70ad` |
| 17 | `lemma` | [actual_empty_phase](../../../../MeasureAndIntegration/PositiveGaussianCoupledSeparation.lean/declarations/actual-empty-phase.md) | 106 | `result-track:e44efff916af31e76dc88585f341882d6eeef89a6b908570a6cbeff496c07146` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=462a3cee649b124665a940de857c3f4904f0f2addf72d42bb63acce08a699ad5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MellinTransform/Checks/Positive/GaussianCoupledSeparation.lean","GRWTSK/_verification/specifications/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianCoupledSeparation.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
