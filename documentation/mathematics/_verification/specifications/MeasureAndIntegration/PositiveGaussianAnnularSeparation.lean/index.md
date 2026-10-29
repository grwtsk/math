# Verification target: GRWTSK.Analysis.MellinTransform.Checks.Positive.GaussianAnnularSeparation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b19e822cdecd5f3ca14528844b70317e5e1c9c22",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MellinTransform/Checks/Positive/GaussianAnnularSeparation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/PositiveGaussianAnnularSeparation.lean/index.md) · [Full source](../../../../MeasureAndIntegration/PositiveGaussianAnnularSeparation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b19e822cdecd5f3ca14528844b70317e5e1c9c22`.

Source path: `GRWTSK/Analysis/MellinTransform/Checks/Positive/GaussianAnnularSeparation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MellinTransform/Checks/Positive/GaussianAnnularSeparation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.MellinTransform.GaussianAnnularSeparation`](../../../../MeasureAndIntegration/MellinTransformGaussianAnnularSeparation.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [multiplicativeWindow](../../../../MeasureAndIntegration/PositiveGaussianAnnularSeparation.lean/declarations/multiplicativewindow.md) | 15 | `declaration-track:7f22fd0483b7eedf472b3ac0a10030a2b70400b96a58b28952090a86857b4259` |
| 2 | `lemma` | [multiplicativeWindow_log_support](../../../../MeasureAndIntegration/PositiveGaussianAnnularSeparation.lean/declarations/multiplicativewindow-log-support.md) | 18 | `result-track:0945ca49dc0c0e36e686642bc05f3ee5e51da93f3a230db477c41f2110c81ae4` |
| 3 | `lemma` | [actual_positive_quotient](../../../../MeasureAndIntegration/PositiveGaussianAnnularSeparation.lean/declarations/actual-positive-quotient.md) | 23 | `result-track:183267de24a01f4fcab69c99f90704e4ce5c5557278263691b54b74b0220dc2f` |
| 4 | `theorem` | [actual_single_slot](../../../../MeasureAndIntegration/PositiveGaussianAnnularSeparation.lean/declarations/actual-single-slot.md) | 32 | `result-track:d615c669860e09112e50d282582196dbd26017f320288fcbea12f255e30f6d71` |
| 5 | `theorem` | [actual_empty_slots](../../../../MeasureAndIntegration/PositiveGaussianAnnularSeparation.lean/declarations/actual-empty-slots.md) | 52 | `result-track:e2fbf900363f0a4ab4fa13f598376032c8ef6bcc20f6c6d73df31823dcd344d5` |
| 6 | `lemma` | [actual_twist_root_normalization](../../../../MeasureAndIntegration/PositiveGaussianAnnularSeparation.lean/declarations/actual-twist-root-normalization.md) | 64 | `result-track:ab0da5655f17655ec224087582a0acc31c53da7f3ff755b16e31e0e5b63cf8f5` |
| 7 | `lemma` | [actual_twist_compact](../../../../MeasureAndIntegration/PositiveGaussianAnnularSeparation.lean/declarations/actual-twist-compact.md) | 69 | `result-track:a139e3e145ad6377e3257c78ff8690890794b9f4abb7f07ef8ef905e128ce399` |
| 8 | `lemma` | [actual_positive_phase_quarter](../../../../MeasureAndIntegration/PositiveGaussianAnnularSeparation.lean/declarations/actual-positive-phase-quarter.md) | 72 | `result-track:5964529a0a28db3d8e30fb22b6399d018fe45d767cddd3f2d4d485919232e3aa` |
| 9 | `lemma` | [actual_negative_phase_quarter](../../../../MeasureAndIntegration/PositiveGaussianAnnularSeparation.lean/declarations/actual-negative-phase-quarter.md) | 79 | `result-track:3c9b7897c9faf23b3955db8fe811e5fbf9d93274ebb25c3e2bd1be5f8e418c24` |
| 10 | `theorem` | [actual_phase_sign_differs](../../../../MeasureAndIntegration/PositiveGaussianAnnularSeparation.lean/declarations/actual-phase-sign-differs.md) | 87 | `result-track:ae931fd691bc8fa8f45c5ba57d607a1a887811cb6b932402da28efe741be7d01` |
| 11 | `theorem` | [actual_zero_argument_false](../../../../MeasureAndIntegration/PositiveGaussianAnnularSeparation.lean/declarations/actual-zero-argument-false.md) | 94 | `result-track:ae43daf0a6a2ccfdb5219aa9cf920f1a9f0321bf6be11fad8abbc73d85bfeba4` |
| 12 | `theorem` | [actual_zero_denominator_false](../../../../MeasureAndIntegration/PositiveGaussianAnnularSeparation.lean/declarations/actual-zero-denominator-false.md) | 100 | `result-track:72a59141f85f9a66952489308f72962827057dcacbc104f8f9dc16cc5c783828` |
| 13 | `theorem` | [actual_zero_annulus_identity](../../../../MeasureAndIntegration/PositiveGaussianAnnularSeparation.lean/declarations/actual-zero-annulus-identity.md) | 106 | `result-track:bac45dbf90b08cb8529718f398d7ea91de182b082cb400ff36891759f83cc814` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=822486c7828fe9afc1dd09ea95d6f89984ac3509a6ca60611b7c21f17f02d152 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MellinTransform/Checks/Positive/GaussianAnnularSeparation.lean","GRWTSK/_verification/specifications/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/Checks/Positive/GaussianAnnularSeparation.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
