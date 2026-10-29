# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialAdjunctionInverse

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0b081e0c8dc9e080a49897cfa154a062f49158f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionInverse.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SurfacePolygonRadialAdjunctionInverse.lean/index.md) · [Full source](../../../../GeneralTopology/SurfacePolygonRadialAdjunctionInverse.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0b081e0c8dc9e080a49897cfa154a062f49158f`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionInverse.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionInverse.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonReverseAdjunction`](../../../../GeneralTopology/SurfacePolygonReverseAdjunction.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cornerProductTopology_eq_bot](../../../../GeneralTopology/SurfacePolygonRadialAdjunctionInverse.lean/declarations/cornerproducttopology-eq-bot.md) | 29 | `result-track:fcd64f6f58c1ea14f9392ebafae002c225245307a6c07ec37a63af3cd2e87f3f` |
| 2 | `theorem` | [reverse_forward_source](../../../../GeneralTopology/SurfacePolygonRadialAdjunctionInverse.lean/declarations/reverse-forward-source.md) | 36 | `result-track:d10d865dc452f7748f2b73b6b35c0d80567c48fbbbb3e07c6ff800e65ac005a8` |
| 3 | `theorem` | [reverse_forward](../../../../GeneralTopology/SurfacePolygonRadialAdjunctionInverse.lean/declarations/reverse-forward.md) | 55 | `result-track:395f701d52330a428fe8fbcfe9f1ab61a90676502ff6d39caa8fef0b9c67424e` |
| 4 | `theorem` | [forward_reverse_skeleton](../../../../GeneralTopology/SurfacePolygonRadialAdjunctionInverse.lean/declarations/forward-reverse-skeleton.md) | 64 | `result-track:640a25dcdd85173fa936414c2d2f35de3c9eb56c4ed5638df1edd224d1bae96c` |
| 5 | `theorem` | [forward_reverse_disk](../../../../GeneralTopology/SurfacePolygonRadialAdjunctionInverse.lean/declarations/forward-reverse-disk.md) | 82 | `result-track:60719cdfd2c6acb04feed2d02c96fbadf7d178b2d4baa67c45452e89cf50aa2a` |
| 6 | `theorem` | [forward_reverse](../../../../GeneralTopology/SurfacePolygonRadialAdjunctionInverse.lean/declarations/forward-reverse.md) | 111 | `result-track:5ba8848374ec2c8a264efb24e8c2c1a8e81cb74e01c5313ed41aef23a60904cb` |
| 7 | `def` | [filledPolygonHomeomorphAttachedDisk](../../../../GeneralTopology/SurfacePolygonRadialAdjunctionInverse.lean/declarations/filledpolygonhomeomorphattacheddisk.md) | 123 | `declaration-track:cd1188c4dee7e02508d1eaad0f9448f7ea4994d7bc6eaef4cf58cd1ceb45a6a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3b7aedb25782e217471405355c15cf29d8f9acab755e598408893c770040fd22 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionInverse.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionInverse.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
