# Verification target: GRWTSK.Geometry.Hodge.FiniteEdgeRealization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1eaa1bc0782ae174fde464760af1d813923bd72",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/Hodge/FiniteEdgeRealization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteEdgeRealization.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteEdgeRealization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1eaa1bc0782ae174fde464760af1d813923bd72`.

Source path: `GRWTSK/Geometry/Hodge/FiniteEdgeRealization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/Hodge/FiniteEdgeRealization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Geometry.Hodge.RationalCycleCellular`](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RationalCycleCellular.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [vertexPairing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteEdgeRealization.lean/declarations/vertexpairing.md) | 8 | `declaration-track:b2cb06a75f33a34bf06f95673b9fb350b10b53c869249e3b30f4da97111be353` |
| 2 | `def` | [edgePairing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteEdgeRealization.lean/declarations/edgepairing.md) | 12 | `declaration-track:533e25cea6ae656d47cd3f1ec85f4d6be12e02716a2fd502ec9e7a1e72edc3c6` |
| 3 | `def` | [edgeDelta](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteEdgeRealization.lean/declarations/edgedelta.md) | 16 | `declaration-track:2ca998bbf5a7c527402bd8df35dfe6f6260ad75bfa0e2c7c6bf173324b3994f2` |
| 4 | `def` | [edgeDeltaStar](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteEdgeRealization.lean/declarations/edgedeltastar.md) | 26 | `declaration-track:38afff0cd055defff5756caf3e7b710f4253b85e2050be7da5d30c824c4e3934` |
| 5 | `theorem` | [edgeDelta_adjoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteEdgeRealization.lean/declarations/edgedelta-adjoint.md) | 34 | `result-track:ae5da591fdb9d359aa7e0310b506be1aaf904cb8d42676b2de72faacaf644fae` |
| 6 | `def` | [edgeHodge](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteEdgeRealization.lean/declarations/edgehodge.md) | 40 | `declaration-track:abff3991a37ceef722e13d0d3c073f57a03d0c13b5eb7448d2a0031f38ba003b` |
| 7 | `def` | [constantRepresentative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteEdgeRealization.lean/declarations/constantrepresentative.md) | 45 | `declaration-track:d4e30520c34ff2b2517d8c50b68d66eb3f2dac48e94db9a7b1259c2a5e977d01` |
| 8 | `theorem` | [constantRepresentative_harmonic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteEdgeRealization.lean/declarations/constantrepresentative-harmonic.md) | 53 | `result-track:e00c7e81c0e9ff8a2329d5255d187c40265833016a615f7fbca33b754380dc6a` |
| 9 | `def` | [pointCycleClass](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteEdgeRealization.lean/declarations/pointcycleclass.md) | 60 | `declaration-track:3f0827df4f1eb8c79888465d3bdf6fb6e11e7044256a5eeaeaad1b6566c5222c` |
| 10 | `theorem` | [pointCycleClass_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteEdgeRealization.lean/declarations/pointcycleclass-surjective.md) | 64 | `result-track:33cb76bc61f2c84fc30201a3b1c2b1052d8a8784248b7a2a895815de716c0439` |
| 11 | `def` | [pointSourceTheorem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteEdgeRealization.lean/declarations/pointsourcetheorem.md) | 69 | `declaration-track:263b4bf31f6bce17a3efe0707d89ad037433436e1fdc4cd6655fce6775c59f80` |
| 12 | `def` | [pointEdgeComparison](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteEdgeRealization.lean/declarations/pointedgecomparison.md) | 81 | `declaration-track:65da4785f86489a59e9e0b88ef9382dab84737d4beec6a2781c8c62428f5fe4a` |
| 13 | `def` | [pointEdgeHarmonicRealization](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteEdgeRealization.lean/declarations/pointedgeharmonicrealization.md) | 87 | `declaration-track:1e561af814f646e6169ac85fc4700382858f4c1d2c31063f55194f2b2a369f3d` |
| 14 | `def` | [pointEdgeAdapter](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteEdgeRealization.lean/declarations/pointedgeadapter.md) | 93 | `declaration-track:3a764587baa70face35b64c8cbbde4aa6238b5aeb1fe5d202f4f805dc513b2ca` |
| 15 | `theorem` | [pointEdgeAdapter_realizes](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteEdgeRealization.lean/declarations/pointedgeadapter-realizes.md) | 101 | `result-track:16dcb2aad27c12f20d96ba04ff663c23980e7637c24876c13b97391b8e3e4b03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0f263b5776f74aa4359c92ba659b99716994293abc43923f9682b3023bf0e964 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/Hodge/FiniteEdgeRealization.lean","GRWTSK/_verification/specifications/Geometry/Hodge/FiniteEdgeRealization.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
