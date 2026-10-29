# Verification target: Directed Circle Endpoints

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b71becf9ef773eaef05a26cc1aa191ac50b77694",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SuppliedCircleAndHalfTurn/Variant4e2379377c9ff955/DirectedCircleEndpoints.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Geometry/DirectedCircleEndpoints.lean/index.md) · [Full source](../../../../Geometry/DirectedCircleEndpoints.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b71becf9ef773eaef05a26cc1aa191ac50b77694`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SuppliedCircleAndHalfTurn/Variant4e2379377c9ff955/DirectedCircleEndpoints.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/SuppliedCircleAndHalfTurn/Variant4e2379377c9ff955/DirectedCircleEndpoints.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 20; external provider; requires a separately pinned dependency.
- [Supplied Circle Incidence](../../../../Geometry/SuppliedCircleIncidence.lean/index.md) — import line 22; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ArcOrientation](../../../../Geometry/DirectedCircleEndpoints.lean/declarations/arcorientation.md) | 38 | `declaration-track:a84dc5bc2e2499a38128de96e9b49a994d505d78541aeb64b3a2f7c4734ab9fd` |
| 2 | `structure` | [DirectedArc](../../../../Geometry/DirectedCircleEndpoints.lean/declarations/directedarc.md) | 45 | `declaration-track:810db6ed03a43133987f784d209ef7709a4a459fd0f914a2397dd91963a94f41` |
| 3 | `abbrev` | [WindingNumber](../../../../Geometry/DirectedCircleEndpoints.lean/declarations/windingnumber.md) | 55 | `declaration-track:644e81bde7a12ce19504679d9282720dc0bf82f575b5a97db61a65e768dbb1d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b3dcc0e28ad3078e8cd73dbd847a2321220f66e5dd51092e3ee7712d4eaa165b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SuppliedCircleAndHalfTurn/Variant4e2379377c9ff955/DirectedCircleEndpoints.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/SuppliedCircleAndHalfTurn/Variant4e2379377c9ff955/DirectedCircleEndpoints.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
