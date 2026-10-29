# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWOrbitClosure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8fa2c24daedd33d74b00c6b253bca2b6668c2cb",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCWOrbitClosure.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/SurfacePolygonCWOrbitClosure.lean/index.md) · [Full source](../../../../AlgebraicTopology/SurfacePolygonCWOrbitClosure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8fa2c24daedd33d74b00c6b253bca2b6668c2cb`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCWOrbitClosure.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonCWOrbitClosure.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCWInteriorOrbit`](../../../../AlgebraicTopology/SurfacePolygonCWInteriorOrbit.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [oppositeBoundaryPoint_involutive](../../../../AlgebraicTopology/SurfacePolygonCWOrbitClosure.lean/declarations/oppositeboundarypoint-involutive.md) | 29 | `result-track:b4ef98ab2011b629f705efdc967c82ab9fdef3d732bd5069510da41b633ac177` |
| 2 | `def` | [InteriorOrbit](../../../../AlgebraicTopology/SurfacePolygonCWOrbitClosure.lean/declarations/interiororbit.md) | 37 | `declaration-track:55503b2f7cb2a45440248e873c40d1a52d1d1491c55f8186de165f2f19e93479` |
| 3 | `theorem` | [interior_step_orbit](../../../../AlgebraicTopology/SurfacePolygonCWOrbitClosure.lean/declarations/interior-step-orbit.md) | 42 | `result-track:a863e45cf102e942ab428be28038d253c1656cccde9951c46b194b22e8b079cb` |
| 4 | `theorem` | [interiorOrbit_symm](../../../../AlgebraicTopology/SurfacePolygonCWOrbitClosure.lean/declarations/interiororbit-symm.md) | 50 | `result-track:ae10b180d0d149059e7b9166cdcf2f33864693fb2d3803988e939002990e987b` |
| 5 | `theorem` | [interiorOrbit_trans](../../../../AlgebraicTopology/SurfacePolygonCWOrbitClosure.lean/declarations/interiororbit-trans.md) | 60 | `result-track:de989ea42ec2c6dd84edfb10d9797ec604a36db19320108d841c1e081511f9f1` |
| 6 | `theorem` | [interior_connected_orbit](../../../../AlgebraicTopology/SurfacePolygonCWOrbitClosure.lean/declarations/interior-connected-orbit.md) | 75 | `result-track:94025332784779277505248c91e4b054383b9dda00a0fad3d1e74c324e72ece4` |
| 7 | `theorem` | [interior_projection_eq_orbit](../../../../AlgebraicTopology/SurfacePolygonCWOrbitClosure.lean/declarations/interior-projection-eq-orbit.md) | 99 | `result-track:16fd4370d123e9c43f4c11ace5e0ff2601eaaab90e368080a5dd4442b6a480c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f01630184c7f953074c0bb2c924c265acc62a12b5b3712550c60f4e12a26f5d3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCWOrbitClosure.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/SurfacePolygonCWOrbitClosure.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
