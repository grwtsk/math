# Verification target: GRWTSK.Geometry.Hodge.FiniteEdgeScalarExtension

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d36437077bf8b36cd8202bdd1770600517e4e50b",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/Hodge/FiniteEdgeScalarExtension.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Geometry/FiniteEdgeScalarExtension.lean/index.md) · [Full source](../../../../Geometry/FiniteEdgeScalarExtension.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d36437077bf8b36cd8202bdd1770600517e4e50b`.

Source path: `GRWTSK/Geometry/Hodge/FiniteEdgeScalarExtension.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/Hodge/FiniteEdgeScalarExtension.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Geometry.Hodge.FiniteEdgeRealization`](../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteEdgeRealization.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.LinearAlgebra.FinitePositiveHodgeHeat`](../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinitePositiveHodgeHeat.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realVertexPairing](../../../../Geometry/FiniteEdgeScalarExtension.lean/declarations/realvertexpairing.md) | 10 | `declaration-track:08b6d5370204fff66159d91a03628b123c7e4bdbbc84f1e2a71032720044e9e1` |
| 2 | `def` | [realEdgePairing](../../../../Geometry/FiniteEdgeScalarExtension.lean/declarations/realedgepairing.md) | 14 | `declaration-track:74068d728f76f6dbc7fe5786ca161d3453fb3956870d2d5635fb8d5dc2eec64c` |
| 3 | `def` | [realEdgeDelta](../../../../Geometry/FiniteEdgeScalarExtension.lean/declarations/realedgedelta.md) | 18 | `declaration-track:591bf7871489f84a77293d9e5a1016f81fa1ac5b5e7b1c1515b19e732bb3f63a` |
| 4 | `def` | [realEdgeDeltaStar](../../../../Geometry/FiniteEdgeScalarExtension.lean/declarations/realedgedeltastar.md) | 28 | `declaration-track:b44aeb0d5a335b65fddf9aea97a301acf72bfa256938d269e88ceed567edb2f8` |
| 5 | `def` | [realEdgeHodge](../../../../Geometry/FiniteEdgeScalarExtension.lean/declarations/realedgehodge.md) | 36 | `declaration-track:7508bb309a01d5a2a81576be6f36f76653662fa8f6c4cfa78f525251851cc333` |
| 6 | `theorem` | [realEdgeDelta_adjoint](../../../../Geometry/FiniteEdgeScalarExtension.lean/declarations/realedgedelta-adjoint.md) | 41 | `result-track:bc92f2fb67acb6f414d6c006df3245f2d0f2a4ad7a62ecf251efd71568fa1627` |
| 7 | `def` | [realEdgeEnergy](../../../../Geometry/FiniteEdgeScalarExtension.lean/declarations/realedgeenergy.md) | 48 | `declaration-track:26a95b00802f58ae8080f01bb14942dacc877c3006bf68837bb13f98ff17de3f` |
| 8 | `theorem` | [realEdgeEnergy_nonneg](../../../../Geometry/FiniteEdgeScalarExtension.lean/declarations/realedgeenergy-nonneg.md) | 52 | `result-track:273b7fb4722f6b3138d0f4874c0f554572932da8ea3631ee9656be9e620021bd` |
| 9 | `theorem` | [realEdgeEnergy_eq_zero_iff](../../../../Geometry/FiniteEdgeScalarExtension.lean/declarations/realedgeenergy-eq-zero-iff.md) | 58 | `result-track:0916ad09638a01ab02787d3d339d107cf92aabda29c0352be195747537cc8e76` |
| 10 | `theorem` | [realEdgeHarmonic_iff](../../../../Geometry/FiniteEdgeScalarExtension.lean/declarations/realedgeharmonic-iff.md) | 63 | `result-track:b4a7ee750b452558751525ab1e75ec726af43315bc249ba8af2a7996226c673b` |
| 11 | `def` | [castVertex](../../../../Geometry/FiniteEdgeScalarExtension.lean/declarations/castvertex.md) | 74 | `declaration-track:95bf8cb5b507fc82c7b8dc8501ad09651bb3a82356f1144a0a1e3287f2c8bd9a` |
| 12 | `def` | [castEdge](../../../../Geometry/FiniteEdgeScalarExtension.lean/declarations/castedge.md) | 78 | `declaration-track:9a3013bdc820fc11cdb5597beca6a173ca7811d2f2334c703158035daafa3a72` |
| 13 | `theorem` | [cast_edgeDelta](../../../../Geometry/FiniteEdgeScalarExtension.lean/declarations/cast-edgedelta.md) | 82 | `result-track:ba5ba424e3458edc3c0c49a6ea943a195db5efd39f5f77ad32d5c1178bf95cc8` |
| 14 | `theorem` | [cast_edgeDeltaStar](../../../../Geometry/FiniteEdgeScalarExtension.lean/declarations/cast-edgedeltastar.md) | 87 | `result-track:19fd67883d8b02ddd836e0d33d0fa33ab322d412f550ab900bc10e5997b295a8` |
| 15 | `theorem` | [cast_harmonic](../../../../Geometry/FiniteEdgeScalarExtension.lean/declarations/cast-harmonic.md) | 93 | `result-track:93d123e5f1f7a2a42c1b9c987e2ffa18a7bdf9f26996b3ca4284b392c8b08bbf` |
| 16 | `theorem` | [cast_constantRepresentative](../../../../Geometry/FiniteEdgeScalarExtension.lean/declarations/cast-constantrepresentative.md) | 102 | `result-track:e047c7a190bbde5bb655eb9c52439412beaf7025f145d1963b4b6a7e04411e13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=56598ad6c6b0a1dec72c64b66f8c51d13fde6939edde24bbcb493945924e1e93 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/Hodge/FiniteEdgeScalarExtension.lean","GRWTSK/_verification/specifications/Geometry/Hodge/FiniteEdgeScalarExtension.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
