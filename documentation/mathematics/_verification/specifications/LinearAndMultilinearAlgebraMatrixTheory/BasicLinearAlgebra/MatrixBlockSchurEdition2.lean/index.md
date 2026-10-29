# Verification target: Matrix Block Schur Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b481ee4eca17732aad1656ff6d9ea1124acc3d1",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixBlockSchur/Variantf276f83840901e4640edeab4d098ae892dea3f50dcb03a5b65e0d788161bd513.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBlockSchurEdition2.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBlockSchurEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b481ee4eca17732aad1656ff6d9ea1124acc3d1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixBlockSchur/Variantf276f83840901e4640edeab4d098ae892dea3f50dcb03a5b65e0d788161bd513.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixBlockSchur/Variantf276f83840901e4640edeab4d098ae892dea3f50dcb03a5b65e0d788161bd513.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.InvertibleBlockSchur` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MatrixBlockRealization](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBlockSchurEdition2.lean/declarations/matrixblockrealization.md) | 33 | `declaration-track:441b4ffd137255fdd9daeed9fabc75958fb2ae50ddc4cd7a8953a2fb82975845` |
| 2 | `def` | [solve](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBlockSchurEdition2.lean/declarations/solve.md) | 60 | `declaration-track:0c7deb491f981f54ee28490ab8057223713a57a1f73e689d383d4b6d0ce5294f` |
| 3 | `theorem` | [solve_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBlockSchurEdition2.lean/declarations/solve-apply.md) | 65 | `result-track:55b80180dfa680b808398a41ad2f725ed60506e40fd1742f5e2cd2a7daa8cc84` |
| 4 | `theorem` | [provenance_mulVec_solve](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBlockSchurEdition2.lean/declarations/provenance-mulvec-solve.md) | 71 | `result-track:fb92f7562ec492462c42af9c5269312183c43524164dabda91f31b8c3c83429d` |
| 5 | `theorem` | [form_sub_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBlockSchurEdition2.lean/declarations/form-sub-right.md) | 80 | `result-track:9ec8bc7bdc4aaa282fdb3584d26ac45a3a4722fcd4622b5ffc13e35b144cf3ef` |
| 6 | `def` | [blockSchurSolver](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBlockSchurEdition2.lean/declarations/blockschursolver.md) | 91 | `declaration-track:3ec6c0d20a9a9cd46bf546765434d673dcbace67dd2e9fb1a12136628261056b` |
| 7 | `theorem` | [blockSchurSolver_solve](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBlockSchurEdition2.lean/declarations/blockschursolver-solve.md) | 102 | `result-track:002eba1f2e1264217d13d2a450b077e905e8e94f8dad25251a919dfb2233669f` |
| 8 | `theorem` | [schur_eq_matrix_coordinates](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBlockSchurEdition2.lean/declarations/schur-eq-matrix-coordinates.md) | 108 | `result-track:5183e259f642b607fcd56dabe9970f91c4e2cd6f043a8bd9db94919e5b31359d` |
| 9 | `theorem` | [matrix_schur_diagonal_nonnegative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBlockSchurEdition2.lean/declarations/matrix-schur-diagonal-nonnegative.md) | 119 | `result-track:8dc4808a621c8816efcf9902f76fa189ab7014f5c8a18bd75207d09bbc9378ed` |
| 10 | `theorem` | [matrix_autonomous_energy_decomposition](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixBlockSchurEdition2.lean/declarations/matrix-autonomous-energy-decomposition.md) | 130 | `result-track:031f9a8979e0fa43e162be6d2991d5cd891da853581b061d9fded2bb17b7b355` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2a774ce1c7c81a5cbdd66eff7010b7c8ebd204b9d1ad61b9183de97a085eec7c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/MatrixBlockSchur/Variantf276f83840901e4640edeab4d098ae892dea3f50dcb03a5b65e0d788161bd513.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/MatrixBlockSchur/Variantf276f83840901e4640edeab4d098ae892dea3f50dcb03a5b65e0d788161bd513.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
