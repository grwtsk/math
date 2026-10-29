# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarJointContinuity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29d9e8022635fa700e344c412e7f9e10a53c8760",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarJointContinuity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SurfacePolygonPolarJointContinuity.lean/index.md) · [Full source](../../../../GeneralTopology/SurfacePolygonPolarJointContinuity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29d9e8022635fa700e344c412e7f9e10a53c8760`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarJointContinuity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonPolarJointContinuity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarUnitCircleLift`](../../../../AlgebraicTopology/SurfacePolygonPolarUnitCircleLift.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Topology.Constructions` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Maps.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactness.Compact` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realPolarProduct](../../../../GeneralTopology/SurfacePolygonPolarJointContinuity.lean/declarations/realpolarproduct.md) | 39 | `declaration-track:79ecfcccdccfa170239e4621233af1b36531e324040bab1c01b9603986a7ee29` |
| 2 | `theorem` | [realPolarProduct_continuous](../../../../GeneralTopology/SurfacePolygonPolarJointContinuity.lean/declarations/realpolarproduct-continuous.md) | 44 | `result-track:5a6ef9d12a66333a0265d0db006ea5950430c710bde475c879bbc50e3e562661` |
| 3 | `def` | [polarProductProjection](../../../../GeneralTopology/SurfacePolygonPolarJointContinuity.lean/declarations/polarproductprojection.md) | 54 | `declaration-track:e770642f5b8aa43f0243b620f4658876bd1084913b34244319e4d30afd2c1294` |
| 4 | `theorem` | [polarProductProjection_continuous](../../../../GeneralTopology/SurfacePolygonPolarJointContinuity.lean/declarations/polarproductprojection-continuous.md) | 60 | `result-track:66608c118395d4a997803420e48dcc0af382c5a46723a6aed12a6daff85e7b58` |
| 5 | `theorem` | [polarProductProjection_surjective](../../../../GeneralTopology/SurfacePolygonPolarJointContinuity.lean/declarations/polarproductprojection-surjective.md) | 67 | `result-track:5c5e443898bf95d1a09383e5824e548bdeb709b36a368c3f151599ec1b03687a` |
| 6 | `def` | [unitCircleJointPolar](../../../../GeneralTopology/SurfacePolygonPolarJointContinuity.lean/declarations/unitcirclejointpolar.md) | 74 | `declaration-track:34b7d01059c9fd7086ce86e3a96ecf4d53b783cbd85b0d06eecaa9e928e8c8f0` |
| 7 | `theorem` | [unitCircleJointPolar_source](../../../../GeneralTopology/SurfacePolygonPolarJointContinuity.lean/declarations/unitcirclejointpolar-source.md) | 79 | `result-track:f252e58803501b47ed0d9607d53c0f17156494a754f809ef0b4d44dd4ac1a481` |
| 8 | `theorem` | [unitCircleJointPolar_continuous_of_quotient](../../../../GeneralTopology/SurfacePolygonPolarJointContinuity.lean/declarations/unitcirclejointpolar-continuous-of-quotient.md) | 87 | `result-track:6721b9ef37e10aed1dc5e8f6a3b768a0c412e1985ea36f0d99eeb1e6ef042247` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7f6bdb1a9e7c3fa24f5ecf8f8876b47cb7bf2e2ce1c893e0988895642aca7157 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarJointContinuity.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/SurfacePolygonPolarJointContinuity.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
