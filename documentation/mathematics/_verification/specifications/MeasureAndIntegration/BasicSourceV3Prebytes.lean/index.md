# Verification target: Basic Source V3 Prebytes

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "147dc23acd7098a21e93718d2064c473ec6f5a5b",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/BasicSourceV3Prebytes/Variantaf34ad0d5c01de47a9445bdab092a46dcb49d4e9343f250b615dc9c5c3645299.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/BasicSourceV3Prebytes.lean/index.md) · [Full source](../../../../MeasureAndIntegration/BasicSourceV3Prebytes.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `147dc23acd7098a21e93718d2064c473ec6f5a5b`.

Source path: `GRWTSK/Topology/GeneralTopology/BasicSourceV3Prebytes/Variantaf34ad0d5c01de47a9445bdab092a46dcb49d4e9343f250b615dc9c5c3645299.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/BasicSourceV3Prebytes/Variantaf34ad0d5c01de47a9445bdab092a46dcb49d4e9343f250b615dc9c5c3645299.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceScaleDerivative` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceCorrelationCurvature` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [spatialDerivative](../../../../MeasureAndIntegration/BasicSourceV3Prebytes.lean/declarations/spatialderivative.md) | 34 | `declaration-track:b485b93113ab862df64871a529e7a9b80891696341cb4bdc3ec58fa203ce82f4` |
| 2 | `theorem` | [normalizedSource_hasSpatialDerivAt](../../../../MeasureAndIntegration/BasicSourceV3Prebytes.lean/declarations/normalizedsource-hasspatialderivat.md) | 39 | `result-track:fa0912cae4d0af72de4108c14bc7095a009fa4a539392bf917ff092222ebbe3b` |
| 3 | `theorem` | [spatialDerivative_eq_deriv](../../../../MeasureAndIntegration/BasicSourceV3Prebytes.lean/declarations/spatialderivative-eq-deriv.md) | 58 | `result-track:916cbdca4ae7441d7cc49bc5d6f54dedca2836a634ce5b15a439a701d5ec4a67` |
| 4 | `theorem` | [spatialDerivative_continuousAt_joint](../../../../MeasureAndIntegration/BasicSourceV3Prebytes.lean/declarations/spatialderivative-continuousat-joint.md) | 63 | `result-track:41b349a4d677996df9cb96758de8d5d2ba5a530e862ec6d53376ef76ab2d332b` |
| 5 | `theorem` | [spatialDerivative_continuousOn_joint](../../../../MeasureAndIntegration/BasicSourceV3Prebytes.lean/declarations/spatialderivative-continuouson-joint.md) | 74 | `result-track:0867afa41e659764506b9ac8789018e9e72008818211ec043869c10dba98b1e7` |
| 6 | `theorem` | [spatialDerivative_continuous](../../../../MeasureAndIntegration/BasicSourceV3Prebytes.lean/declarations/spatialderivative-continuous.md) | 79 | `result-track:c79ca4b68afbb5977b279ee9aa8cd919efdc3254a018fa5477031cf5550ae009` |
| 7 | `theorem` | [spatialDerivative_zero_of_le_abs](../../../../MeasureAndIntegration/BasicSourceV3Prebytes.lean/declarations/spatialderivative-zero-of-le-abs.md) | 87 | `result-track:d58f30fe73c3766b849c6233cfa4e3b8baff1cd59afbdd6e986b362b90b58710` |
| 8 | `theorem` | [spatialDerivative_hasCompactSupport](../../../../MeasureAndIntegration/BasicSourceV3Prebytes.lean/declarations/spatialderivative-hascompactsupport.md) | 96 | `result-track:bccdecc2caa6408abec7282789cf61b1eef05ca224117f8e900c06b752ef8e4d` |
| 9 | `theorem` | [spatialDerivative_memLp](../../../../MeasureAndIntegration/BasicSourceV3Prebytes.lean/declarations/spatialderivative-memlp.md) | 111 | `result-track:eddb5a497721df116b294bdcd2fdc538a3ef4ae27694638d2c4b6ddab5ae86ea` |
| 10 | `def` | [spatialDerivativeL2](../../../../MeasureAndIntegration/BasicSourceV3Prebytes.lean/declarations/spatialderivativel2.md) | 117 | `declaration-track:46fa407a8cf79c8f991f60a54d6746dd05c0ec01e7540bac441a301b462871e4` |
| 11 | `theorem` | [spatialDerivativeL2_coe_ae](../../../../MeasureAndIntegration/BasicSourceV3Prebytes.lean/declarations/spatialderivativel2-coe-ae.md) | 121 | `result-track:b375ced47066f808c2ef133574b0b120783577e9ee2774ae4d9e3fe0a36f29f7` |
| 12 | `def` | [spatialDerivativeState](../../../../MeasureAndIntegration/BasicSourceV3Prebytes.lean/declarations/spatialderivativestate.md) | 131 | `declaration-track:6a5027b227491da6d3fdc327956878392e065c176ba0465a4e08b8149c9e8d21` |
| 13 | `theorem` | [spatialDerivativeState_eq](../../../../MeasureAndIntegration/BasicSourceV3Prebytes.lean/declarations/spatialderivativestate-eq.md) | 135 | `result-track:67e241d938b132a4e6d94650815269e29cc8aeb3ae44e09117ed41359a3699ab` |
| 14 | `theorem` | [spatialDerivativeState_coe_ae](../../../../MeasureAndIntegration/BasicSourceV3Prebytes.lean/declarations/spatialderivativestate-coe-ae.md) | 140 | `result-track:e973be799637db2c3f261babbe2e17c9fbf7d5be6b7e019a613b22109a7132b0` |
| 15 | `theorem` | [spatialDerivativeState_norm_sub_sq](../../../../MeasureAndIntegration/BasicSourceV3Prebytes.lean/declarations/spatialderivativestate-norm-sub-sq.md) | 146 | `result-track:21b44dd675d8738bf0893d2bb629a7a04ea586c0fe83fb6016bfa9b119437b13` |
| 16 | `theorem` | [spatialDerivative_differenceIntegral_continuousOn](../../../../MeasureAndIntegration/BasicSourceV3Prebytes.lean/declarations/spatialderivative-differenceintegral-continuouson.md) | 167 | `result-track:c857e535e5398b4a1dc5f68a060a360d8406d455bc2438163187c492a7a86408` |
| 17 | `theorem` | [spatialDerivativeState_continuousAt](../../../../MeasureAndIntegration/BasicSourceV3Prebytes.lean/declarations/spatialderivativestate-continuousat.md) | 191 | `result-track:178d9cb7601e76e5376a7d4a53359552b577b57856bedf997d89ef733ca26fd2` |
| 18 | `theorem` | [spatialDerivativeState_continuousOn](../../../../MeasureAndIntegration/BasicSourceV3Prebytes.lean/declarations/spatialderivativestate-continuouson.md) | 211 | `result-track:d18c125e512c4f0037fef08f39ac7ae510c35bc4c6af58a20a8495bd88a4cb70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b10df7ac77e5dc4de176e408dfee70f48d9babfe5e1ddb30a7c2ea874b3fd1a1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/BasicSourceV3Prebytes/Variantaf34ad0d5c01de47a9445bdab092a46dcb49d4e9343f250b615dc9c5c3645299.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/BasicSourceV3Prebytes/Variantaf34ad0d5c01de47a9445bdab092a46dcb49d4e9343f250b615dc9c5c3645299.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
