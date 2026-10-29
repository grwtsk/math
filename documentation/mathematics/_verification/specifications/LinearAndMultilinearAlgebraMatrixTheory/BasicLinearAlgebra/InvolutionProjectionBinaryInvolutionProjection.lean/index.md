# Verification target: Involution Projection Binary Involution Projection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49dde925f88b40b584b090b9ce46113e79a23046",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/InvolutionProjection/Variant0f4c8ce78a01b31e16965b6de8717f08e0e0895812d5794a87090def95804866.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionBinaryInvolutionProjection.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionBinaryInvolutionProjection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49dde925f88b40b584b090b9ce46113e79a23046`.

Source path: `GRWTSK/Algebra/LinearAlgebra/InvolutionProjection/Variant0f4c8ce78a01b31e16965b6de8717f08e0e0895812d5794a87090def95804866.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/InvolutionProjection/Variant0f4c8ce78a01b31e16965b6de8717f08e0e0895812d5794a87090def95804866.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BinaryMatrix.GlobalProjection` — import line 1; external provider; requires a separately pinned dependency.
- `BinaryMatrix.GaloisField` — import line 2; external provider; requires a separately pinned dependency.
- `DAF.FiniteDynamics.Involution` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BinaryInvolutionProjection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionBinaryInvolutionProjection.lean/declarations/binaryinvolutionprojection.md) | 18 | `declaration-track:d8adca6b9f57cfd2840ef740818a357ace77e7b370837afa33e4b2f882eb461e` |
| 2 | `def` | [ofCertified](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionBinaryInvolutionProjection.lean/declarations/ofcertified.md) | 36 | `declaration-track:b39d143b6c7216ecca45f6908c05c9bdc5c21a8cae3ae4e3d710ab74ebea2652` |
| 3 | `theorem` | [actionMatrix_eq_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionBinaryInvolutionProjection.lean/declarations/actionmatrix-eq-iff.md) | 49 | `result-track:18450bd45e4b5e34145aebb85a99c04a8edd0fd278cca7d65085831baacf28e1` |
| 4 | `theorem` | [existsUnique_true_in_column](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionBinaryInvolutionProjection.lean/declarations/existsunique-true-in-column.md) | 55 | `result-track:f41f08122888cc00f405d2982ac4c05e16e35382ba6468fd9df3b148e56f8d21` |
| 5 | `theorem` | [existsUnique_true_in_row](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionBinaryInvolutionProjection.lean/declarations/existsunique-true-in-row.md) | 63 | `result-track:f146cc74a76bc9916654bd4f6579bbf633155b9187505d545ed3c2432cbe8a24` |
| 6 | `theorem` | [actionMatrix_column](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionBinaryInvolutionProjection.lean/declarations/actionmatrix-column.md) | 80 | `result-track:f4ebbc6b83557138f407130103740a625a588dc2df3066ff4cd815fae0012d15` |
| 7 | `theorem` | [f2Matrix_eq_ite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionBinaryInvolutionProjection.lean/declarations/f2matrix-eq-ite.md) | 87 | `result-track:0c0c8e1abdbb7af5d4ac358accfe6b6a2b25306817bce1a656d9567451d8cc7e` |
| 8 | `def` | [stateVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionBinaryInvolutionProjection.lean/declarations/statevector.md) | 101 | `declaration-track:01679ecd5d405ba9fe355b14b47d1eea9d1a3d8ce7123dbad67f2ec5ea8eea20` |
| 9 | `theorem` | [stateVector_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionBinaryInvolutionProjection.lean/declarations/statevector-apply.md) | 105 | `result-track:228b4de953417a2cb810ad26955d04a6a758be17226ca1d3f6fdf1620223a4db` |
| 10 | `theorem` | [mulVec_stateVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionBinaryInvolutionProjection.lean/declarations/mulvec-statevector.md) | 110 | `result-track:1aba484036d99de219ddbad1b62021af6b41d55e50067a46b49baea170e28221` |
| 11 | `theorem` | [f2Matrix_mul_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionBinaryInvolutionProjection.lean/declarations/f2matrix-mul-self.md) | 125 | `result-track:1650c65aa1e445fc46cb9f74660843f383273a5e7c3f45e7dd7d603dc9f70c01` |
| 12 | `def` | [f2LinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionBinaryInvolutionProjection.lean/declarations/f2linearmap.md) | 139 | `declaration-track:c39ba58ef68d9eb14caf0253025d6213e614b5df5a1da93455cfe3981f48b003` |
| 13 | `theorem` | [f2LinearMap_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionBinaryInvolutionProjection.lean/declarations/f2linearmap-apply.md) | 144 | `result-track:f8f1dc5972dc7adae530a62bbd6f5640a46b8221bc04f237490792373a4e55bc` |
| 14 | `theorem` | [f2LinearMap_involutive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionBinaryInvolutionProjection.lean/declarations/f2linearmap-involutive.md) | 149 | `result-track:15d42de18750cb6cb30d8a9503d64aadf52e029492dff4fe9824c77ac8cffdf2` |
| 15 | `def` | [f2LinearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionBinaryInvolutionProjection.lean/declarations/f2linearequiv.md) | 156 | `declaration-track:7f15ffb8383ff878931e72af59b48e525cc322c0b526ce98003e512e55169466` |
| 16 | `theorem` | [f2LinearMap_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionBinaryInvolutionProjection.lean/declarations/f2linearmap-injective.md) | 165 | `result-track:804ae454f0f53aa926ed792253020f3f3c2f954c77690ce6300ba005183bfcba` |
| 17 | `theorem` | [f2LinearMap_ker](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionBinaryInvolutionProjection.lean/declarations/f2linearmap-ker.md) | 173 | `result-track:3571ebd29ff3e73b2a8c6aaab6ea77c3e705dbfa1f5f4433e42602845a04feb0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2dae976cd35a5c5c7bac53f935d999cdc8b600660abedb750a7960d0ec839491 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/InvolutionProjection/Variant0f4c8ce78a01b31e16965b6de8717f08e0e0895812d5794a87090def95804866.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/InvolutionProjection/Variant0f4c8ce78a01b31e16965b6de8717f08e0e0895812d5794a87090def95804866.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
