# Verification target: Finite Matrix

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc49290326666ba0d2ec3e075c388708fb7e3f43",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant3e1887dae61cda943d62e8439e0cd190c6d418b6a5b39ba5698487c039805f9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteMatrix.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteMatrix.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc49290326666ba0d2ec3e075c388708fb7e3f43`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variant3e1887dae61cda943d62e8439e0cd190c6d418b6a5b39ba5698487c039805f9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Matrix/Variant3e1887dae61cda943d62e8439e0cd190c6d418b6a5b39ba5698487c039805f9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dimension.LinearMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.StrongRankCondition` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [linearMapEquivFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteMatrix.lean/declarations/linearmapequivfun.md) | 37 | `declaration-track:4927237aedb83310b2f7bcbcea3610e16d008d41ef508c418e7d0516860b74a4` |
| 2 | `instance` | [Module.Free.linearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteMatrix.lean/declarations/module-free-linearmap.md) | 41 | `declaration-track:64e3432ac94e51be7d340fd6d1d06fa5a49288404c98f47844c3834a9c7a833d` |
| 3 | `instance` | [Module.Finite.linearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteMatrix.lean/declarations/module-finite-linearmap.md) | 44 | `declaration-track:f72ca479d0cf546e31a729623d0bca6350d77d30caf16033107b45cfbfa5529b` |
| 4 | `theorem` | [Module.rank_linearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteMatrix.lean/declarations/module-rank-linearmap.md) | 50 | `result-track:8f2a7b3ef1af983bcd3c0b940fcd5327927d024fcbd3f624999a7097bf756a8a` |
| 5 | `theorem` | [Module.finrank_linearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteMatrix.lean/declarations/module-finrank-linearmap.md) | 56 | `result-track:fcdaca1472ed63bd263b06325293051cde6881d4414ae295a9e3a8eddf913fe9` |
| 6 | `theorem` | [Module.rank_linearMap_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteMatrix.lean/declarations/module-rank-linearmap-self.md) | 62 | `result-track:ed85a3c01e80fcfa87534f92c6c24adedc6f37c0b6050cec3957ed34d95cb844` |
| 7 | `theorem` | [Module.finrank_linearMap_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteMatrix.lean/declarations/module-finrank-linearmap-self.md) | 66 | `result-track:afed0ac153c20031abc3f4874623262cbb08736b161b8693c56817bdd561f4fa` |
| 8 | `instance` | [Finite.algHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteMatrix.lean/declarations/finite-alghom.md) | 76 | `declaration-track:e7519f6143fcec0c76da9f03c86454dd106bb634b5492c6cbd5a32dfd0481b9d` |
| 9 | `theorem` | [cardinalMk_algHom_le_rank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteMatrix.lean/declarations/cardinalmk-alghom-le-rank.md) | 81 | `result-track:f1404a4f78154a862e5f166fd3406667e2e3db93c2dec55a6b19fd464763fce9` |
| 10 | `theorem` | [card_algHom_le_finrank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteMatrix.lean/declarations/card-alghom-le-finrank.md) | 90 | `result-track:c8c4653322d7f55127864f1dfa07f43326b2d406e5a11c745f3d1cc947aed344` |
| 11 | `instance` | [Module.Finite.addMonoidHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteMatrix.lean/declarations/module-finite-addmonoidhom.md) | 101 | `declaration-track:0b9dfbb33d6280171c69a6a5845acdefcdbed887d50a806b4859aff3847e666b` |
| 12 | `instance` | [Module.Free.addMonoidHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteMatrix.lean/declarations/module-free-addmonoidhom.md) | 104 | `declaration-track:f324f287dafe6cfc1b435139b56f15d5b95f23a234bcf530acb88295564d8759` |
| 13 | `theorem` | [Matrix.rank_vecMulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteMatrix.lean/declarations/matrix-rank-vecmulvec.md) | 110 | `result-track:fac5acd010ed343866f41b78970a6a7ec86228e6a4eda31798ede5bc0f74db4c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4b256b52420c09faf0f78d181a8a95aff9161be5e701c4eb862d0380d30048e5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Matrix/Variant3e1887dae61cda943d62e8439e0cd190c6d418b6a5b39ba5698487c039805f9b.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/MatrixTheory/Variant3e1887dae61cda943d62e8439e0cd190c6d418b6a5b39ba5698487c039805f9b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
