# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialGlobalComparison

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fa92865d11d2b8a63f32cb7fda38cb701615e9a",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonRadialGlobalComparison.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/SurfacePolygonRadialGlobalComparison.lean/index.md) · [Full source](../../../../AlgebraicTopology/SurfacePolygonRadialGlobalComparison.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fa92865d11d2b8a63f32cb7fda38cb701615e9a`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonRadialGlobalComparison.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonRadialGlobalComparison.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAdjunctionRadius`](../../../../GeneralTopology/SurfacePolygonAdjunctionRadius.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [forward_preserves_radius](../../../../AlgebraicTopology/SurfacePolygonRadialGlobalComparison.lean/declarations/forward-preserves-radius.md) | 28 | `result-track:d6f130c94f05027a6c87a06705ef52da94beced0f6dbb739feed72953b519da5` |
| 2 | `theorem` | [reverse_preserves_radius](../../../../AlgebraicTopology/SurfacePolygonRadialGlobalComparison.lean/declarations/reverse-preserves-radius.md) | 40 | `result-track:bf4893eba4b22757d6c2f8bd42e6ba5e4964771c911b355d82cebeb965e617c7` |
| 3 | `theorem` | [homeomorph_preserves_radius](../../../../AlgebraicTopology/SurfacePolygonRadialGlobalComparison.lean/declarations/homeomorph-preserves-radius.md) | 47 | `result-track:3d9d3ba46769b58a176cb00d2270a437c2262bb038043c52289d6c699e2eaae3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4554c57ac296a5b9797598d198b91e589d1349a1a46e2ce78e1a9909390e973e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/SurfacePolygonRadialGlobalComparison.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/SurfacePolygonRadialGlobalComparison.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
