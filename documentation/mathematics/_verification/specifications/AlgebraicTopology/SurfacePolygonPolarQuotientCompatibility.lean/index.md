# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarQuotientCompatibility

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2a47ebbed2e17be642e9289da41ebd7eb752297",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarQuotientCompatibility.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/SurfacePolygonPolarQuotientCompatibility.lean/index.md) · [Full source](../../../../AlgebraicTopology/SurfacePolygonPolarQuotientCompatibility.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2a47ebbed2e17be642e9289da41ebd7eb752297`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarQuotientCompatibility.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonPolarQuotientCompatibility.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarAddCircleKernel`](../../../../AlgebraicTopology/SurfacePolygonPolarAddCircleKernel.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Topology.Instances.AddCircle.Real` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [realAnglePolarDisk_respects_unitAddCircle](../../../../AlgebraicTopology/SurfacePolygonPolarQuotientCompatibility.lean/declarations/realanglepolardisk-respects-unitaddcircle.md) | 30 | `result-track:2ca4f4672ec1212c102eeae242a489f5b9d1b4f097160c562a8f8bab7c3a645d` |
| 2 | `theorem` | [realAnglePolarDisk_zero_all_angles](../../../../AlgebraicTopology/SurfacePolygonPolarQuotientCompatibility.lean/declarations/realanglepolardisk-zero-all-angles.md) | 40 | `result-track:7c8279d2a5e884f1ec1a02369d6e2bd8131e11ea0dce6f0cc37fad1beb0e8b3d` |
| 3 | `theorem` | [realAnglePolarDisk_two_integer_shifts](../../../../AlgebraicTopology/SurfacePolygonPolarQuotientCompatibility.lean/declarations/realanglepolardisk-two-integer-shifts.md) | 47 | `result-track:261db216ed20799e35e0fe39de13edef40471cb66f45c5565da64413fa8d78c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=062944fb57fe76efd8b9dd5f7802c8d8495c31ba70a58e05528448542ee006de -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarQuotientCompatibility.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/SurfacePolygonPolarQuotientCompatibility.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
