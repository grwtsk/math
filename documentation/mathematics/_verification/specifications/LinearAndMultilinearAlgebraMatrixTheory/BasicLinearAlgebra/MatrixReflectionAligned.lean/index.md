# Verification target: Matrix Reflection Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3e362e20aeea17f51f008288020b704237172a2",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Reflection/Variantf0f07e969c1e44728faa42c9b039a6ce1e1fcd1463782c16020c4a186f522496.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixReflectionAligned.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixReflectionAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3e362e20aeea17f51f008288020b704237172a2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Reflection/Variantf0f07e969c1e44728faa42c9b039a6ce1e1fcd1463782c16020c4a186f522496.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Reflection/Variantf0f07e969c1e44728faa42c9b039a6ce1e1fcd1463782c16020c4a186f522496.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Notation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Tuple.Reflection` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Forall](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixReflectionAligned.lean/declarations/forall.md) | 44 | `declaration-track:2551711f3f4a035cd180ef6bf007af40f56a18c2b4d85c1f230b5a3a8ffdeb2e` |
| 2 | `theorem` | [forall_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixReflectionAligned.lean/declarations/forall-iff.md) | 56 | `result-track:f789021806c44ef6cbe59763f891b2f075f1df9bf09afec9cc1b33b62e726b3b` |
| 3 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixReflectionAligned.lean/declarations/example-source-edition-6.md) | 63 | `declaration-track:b0ce4b89268d519e34cdd1ea3a0f7e616ce3081e8965992f19ef1be21c237200` |
| 4 | `def` | [Exists](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixReflectionAligned.lean/declarations/exists.md) | 68 | `declaration-track:58ed5bc0f38113cdd29dc29e73dc7395e90171366ef8e357cf8d1b5c02df2bd5` |
| 5 | `theorem` | [exists_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixReflectionAligned.lean/declarations/exists-iff.md) | 80 | `result-track:bcdf736505143f6c4b25cb130b452e60a407896b845f20799c717e4ef1ce9e62` |
| 6 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixReflectionAligned.lean/declarations/example-source-edition-3.md) | 87 | `declaration-track:8f3416ce27adb5786c0284cd7344f8cc34064127a5e95b6e76a55a604c38d74f` |
| 7 | `def` | [transposeᵣ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixReflectionAligned.lean/declarations/transpose.md) | 92 | `declaration-track:6eec8ab48090e078d3267cf310b3b0764d898710e682be3726a2b671abcf4598` |
| 8 | `theorem` | [transposeᵣ_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixReflectionAligned.lean/declarations/transpose-eq.md) | 104 | `result-track:cd19b0db046646eba090f53589fe88b63a41984c04ce7b687abb3a36f8cad3d5` |
| 9 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixReflectionAligned.lean/declarations/example-source-edition-2.md) | 116 | `declaration-track:16f7b8e80c7db1f7b9acfe7aa2f064b83e3343ab78836810e5af8308abbe793c` |
| 10 | `def` | [dotProductᵣ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixReflectionAligned.lean/declarations/dotproduct.md) | 120 | `declaration-track:74a4afb21ac406634f2cab59e146f3281618d598df60c0e47d65f9b4f837e715` |
| 11 | `theorem` | [dotProductᵣ_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixReflectionAligned.lean/declarations/dotproduct-eq.md) | 132 | `result-track:fc4e8532988bb68b8c1c15906ca6b2341989c0e8bc5487e075a3118ed04d623b` |
| 12 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixReflectionAligned.lean/declarations/example.md) | 138 | `declaration-track:0d2aa4fd3ffedb176443aea2f01a770e988fc56116a853efe99dfa0a36659016` |
| 13 | `def` | [mulᵣ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixReflectionAligned.lean/declarations/mul.md) | 142 | `declaration-track:b6a983a0605644d74c5d871e194c6f2dd9aa43d34aa4f166a1319cea90f56661` |
| 14 | `theorem` | [mulᵣ_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixReflectionAligned.lean/declarations/mul-eq.md) | 159 | `result-track:f76cc0c4e9a0a282691769d9301d789eaf085ef308ecb54c88ae208f47e60342` |
| 15 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixReflectionAligned.lean/declarations/example-source-edition-5.md) | 165 | `declaration-track:99b788c59fa7dc950df49d87660be99896599ba3f253eb631ae9ed29116f0a94` |
| 16 | `def` | [mulVecᵣ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixReflectionAligned.lean/declarations/mulvec.md) | 172 | `declaration-track:f7b69c8da1077a35baea770562cd44f52f6ecdcdcaff98274800a8dee52dfd7d` |
| 17 | `theorem` | [mulVecᵣ_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixReflectionAligned.lean/declarations/mulvec-eq.md) | 185 | `result-track:ac4865d7c67880e9a03a180891804b4977adfb0cbc507b85ddc7d1e777fdc56c` |
| 18 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixReflectionAligned.lean/declarations/example-source-edition-8.md) | 191 | `declaration-track:df9a221a71a33dbe12d15620df58c19ca28406acae7c02a7ba669876f7a4e313` |
| 19 | `def` | [vecMulᵣ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixReflectionAligned.lean/declarations/vecmul.md) | 196 | `declaration-track:bff8f1ce349faf0bf6dc1be041c728e3916703e7955dfcf8b8c1dc2d28af8069` |
| 20 | `theorem` | [vecMulᵣ_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixReflectionAligned.lean/declarations/vecmul-eq.md) | 209 | `result-track:05328fcadffe671f116b91250e1f28f1804d83c73c106d5454d47f549c840a68` |
| 21 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixReflectionAligned.lean/declarations/example-source-edition-7.md) | 215 | `declaration-track:d85faf2b73709b5d4497d701f15400412e34221347ee82cf9bf881eb32c1285d` |
| 22 | `def` | [etaExpand](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixReflectionAligned.lean/declarations/etaexpand.md) | 220 | `declaration-track:d4960330ab666f2fb58b665ca39b0944ac091b33bdd7a4f9804f6c3a68785c29` |
| 23 | `theorem` | [etaExpand_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixReflectionAligned.lean/declarations/etaexpand-eq.md) | 232 | `result-track:c4f8cd5467291244389552cf7eda6ec04bf71e1444026a8730ad0f9ec36960de` |
| 24 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixReflectionAligned.lean/declarations/example-source-edition-4.md) | 236 | `declaration-track:9913406fb286d50715f98b4ebcfbc3b8dd05a9c0c813e20d021de10a1f1b51df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6fddb3c5dbdab2ba9e9d07c80f612decf8de016baec3729433fdbf91f72fe1e5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Reflection/Variantf0f07e969c1e44728faa42c9b039a6ce1e1fcd1463782c16020c4a186f522496.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Reflection/Variantf0f07e969c1e44728faa42c9b039a6ce1e1fcd1463782c16020c4a186f522496.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
