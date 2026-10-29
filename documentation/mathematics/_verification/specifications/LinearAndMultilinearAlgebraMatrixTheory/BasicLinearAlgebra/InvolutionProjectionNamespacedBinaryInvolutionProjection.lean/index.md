# Verification target: Involution Projection Namespaced Binary Involution Projection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0244f2b58a282aee4829ea787f4312ae1a18399d",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/InvolutionProjection/Variant3a8dfe0c39fa2f52ae0e9ee2d346a3aaac77ce7a1af4b7ce3a1ef11fc432c44f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionNamespacedBinaryInvolutionProjection.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionNamespacedBinaryInvolutionProjection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0244f2b58a282aee4829ea787f4312ae1a18399d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/InvolutionProjection/Variant3a8dfe0c39fa2f52ae0e9ee2d346a3aaac77ce7a1af4b7ce3a1ef11fc432c44f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/InvolutionProjection/Variant3a8dfe0c39fa2f52ae0e9ee2d346a3aaac77ce7a1af4b7ce3a1ef11fc432c44f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BinaryMatrix.GlobalProjection` — import line 6; external provider; requires a separately pinned dependency.
- `BinaryMatrix.GaloisField` — import line 7; external provider; requires a separately pinned dependency.
- `DAF.FiniteDynamics.Involution` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BinaryInvolutionProjection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionNamespacedBinaryInvolutionProjection.lean/declarations/binaryinvolutionprojection.md) | 26 | `declaration-track:2e552ecc79309c2b7b8819e955715c085ba021602ba2fad74eb854a3271ebb65` |
| 2 | `def` | [ofCertified](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionNamespacedBinaryInvolutionProjection.lean/declarations/ofcertified.md) | 44 | `declaration-track:687f558e260e34d140e5be383d9bbbfa8935dfc7476525a580ed7ccf71ab740d` |
| 3 | `theorem` | [actionMatrix_eq_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionNamespacedBinaryInvolutionProjection.lean/declarations/actionmatrix-eq-iff.md) | 57 | `result-track:92a8f1705a417014c12fa92f8c238bbad0ea12248f8f191bfb43c7dd832c67c0` |
| 4 | `theorem` | [existsUnique_true_in_column](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionNamespacedBinaryInvolutionProjection.lean/declarations/existsunique-true-in-column.md) | 63 | `result-track:46bf972c400f626c697bcb5ac1eeeadfc71aae6e695189d1600af3331aa96748` |
| 5 | `theorem` | [existsUnique_true_in_row](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionNamespacedBinaryInvolutionProjection.lean/declarations/existsunique-true-in-row.md) | 71 | `result-track:8360fbc1848937cbe50962d24cce97ead50cfe4f88f574e062cf2bf8be33e785` |
| 6 | `theorem` | [actionMatrix_column](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionNamespacedBinaryInvolutionProjection.lean/declarations/actionmatrix-column.md) | 88 | `result-track:55bd89810c2cbc7c47defc8106ce218d14d0127b583b19053ca6d3d62b271382` |
| 7 | `theorem` | [f2Matrix_eq_ite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionNamespacedBinaryInvolutionProjection.lean/declarations/f2matrix-eq-ite.md) | 95 | `result-track:87de32aae38441ac699e2200386dd565d85b4a688ae2e08866dad977cae0f310` |
| 8 | `def` | [stateVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionNamespacedBinaryInvolutionProjection.lean/declarations/statevector.md) | 109 | `declaration-track:34d4a2edd8736297aaf5ff16af8b32b75b0e824359266aac1483989afff99776` |
| 9 | `theorem` | [stateVector_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionNamespacedBinaryInvolutionProjection.lean/declarations/statevector-apply.md) | 113 | `result-track:84fd407cf9b451bb83167f172386375b0da9e57695e73662d49e9d4ced7fdb9a` |
| 10 | `theorem` | [mulVec_stateVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionNamespacedBinaryInvolutionProjection.lean/declarations/mulvec-statevector.md) | 118 | `result-track:4ae4202e7f234afa3870142fd8f0da1c83798a2eddbdbc65751459a611630a48` |
| 11 | `theorem` | [f2Matrix_mul_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionNamespacedBinaryInvolutionProjection.lean/declarations/f2matrix-mul-self.md) | 133 | `result-track:afc7c6c512f559d00655c24cb42c078609af5e98a89035d764769b3740ad73d1` |
| 12 | `def` | [f2LinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionNamespacedBinaryInvolutionProjection.lean/declarations/f2linearmap.md) | 147 | `declaration-track:b8e99be14f8da284deb7c2f581c26d7aae00c60541ea8fa295b4f25fc8885393` |
| 13 | `theorem` | [f2LinearMap_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionNamespacedBinaryInvolutionProjection.lean/declarations/f2linearmap-apply.md) | 152 | `result-track:359b88e6b69f01be19662093224cb312a1cd7ce6c082b22e0602f8e6f2fda5fc` |
| 14 | `theorem` | [f2LinearMap_involutive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionNamespacedBinaryInvolutionProjection.lean/declarations/f2linearmap-involutive.md) | 157 | `result-track:df35e5d199e6bf4574f6dcb640e428ca05262adda6d24a76caf2f8681f1d5e27` |
| 15 | `def` | [f2LinearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionNamespacedBinaryInvolutionProjection.lean/declarations/f2linearequiv.md) | 164 | `declaration-track:176d5c0b95ee32e39678189283797d2bc58d89da2ec89a8bf0e32d83d92c1dd2` |
| 16 | `theorem` | [f2LinearMap_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionNamespacedBinaryInvolutionProjection.lean/declarations/f2linearmap-injective.md) | 173 | `result-track:ffcef9ea54695073ac1695f02806c82454e1dc7889b234238491f205f607b67d` |
| 17 | `theorem` | [f2LinearMap_ker](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/InvolutionProjectionNamespacedBinaryInvolutionProjection.lean/declarations/f2linearmap-ker.md) | 181 | `result-track:63360e5297250e8dcae43548a988eda4bdaf7ac472ca3c2ccab615a1421a5113` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=56221f730237df73cbf248e1aa08cca00fdd87405d2888b3e1890037449cfffb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/InvolutionProjection/Variant3a8dfe0c39fa2f52ae0e9ee2d346a3aaac77ce7a1af4b7ce3a1ef11fc432c44f.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/InvolutionProjection/Variant3a8dfe0c39fa2f52ae0e9ee2d346a3aaac77ce7a1af4b7ce3a1ef11fc432c44f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
