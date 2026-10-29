# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAdjunctionRadius

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf2faf5bf87aecb427e4d7335d25663c4922888a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonAdjunctionRadius.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SurfacePolygonAdjunctionRadius.lean/index.md) · [Full source](../../../../GeneralTopology/SurfacePolygonAdjunctionRadius.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf2faf5bf87aecb427e4d7335d25663c4922888a`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonAdjunctionRadius.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonAdjunctionRadius.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialAdjunctionRadius`](../../../../AlgebraicTopology/SurfacePolygonRadialAdjunctionRadius.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cornerProductTopology_eq_bot](../../../../GeneralTopology/SurfacePolygonAdjunctionRadius.lean/declarations/cornerproducttopology-eq-bot.md) | 28 | `result-track:8a14ca9b901adec94705bb8c0e031f556f89f1f72cfcf4e2f5e34a77661d8f5c` |
| 2 | `def` | [attachedRadialCoordinate](../../../../GeneralTopology/SurfacePolygonAdjunctionRadius.lean/declarations/attachedradialcoordinate.md) | 35 | `declaration-track:d11fd2c606d0310bf1c45d25172850e087f959f568ec7296bd2b85c6d163d14c` |
| 3 | `theorem` | [attachedRadialCoordinate_continuous](../../../../GeneralTopology/SurfacePolygonAdjunctionRadius.lean/declarations/attachedradialcoordinate-continuous.md) | 41 | `result-track:9118bb2d4380ac567058011e12405218a04db3e43d551d8e7fdc845d26a74582` |
| 4 | `theorem` | [attachedRadialCoordinate_skeleton](../../../../GeneralTopology/SurfacePolygonAdjunctionRadius.lean/declarations/attachedradialcoordinate-skeleton.md) | 53 | `result-track:e580cc549304e1de2d2ecc83de4c6be143f973e7c1a7bf6e08e73bab9b680f5f` |
| 5 | `theorem` | [attachedRadialCoordinate_disk_source](../../../../GeneralTopology/SurfacePolygonAdjunctionRadius.lean/declarations/attachedradialcoordinate-disk-source.md) | 66 | `result-track:05e12e2428e50e7030dfe8d5829c7f92acb986e00eba13e7bca9ed5947c90ff9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2b7211cf5ab65e11ee1e25dcf8025c2bbb544561f19f24011b8a0654d6211352 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/SurfacePolygonAdjunctionRadius.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/SurfacePolygonAdjunctionRadius.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
