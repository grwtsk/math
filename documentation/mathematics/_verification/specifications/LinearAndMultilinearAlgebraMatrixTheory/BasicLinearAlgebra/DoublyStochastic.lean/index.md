# Verification target: Doubly Stochastic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13ae47ed2f9920fbbea178c36e9ba01803c8a78e",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/DoublyStochastic/Variant3fdae561a318210c61f47dd66b67ce2deeee4c569d49b899e6b028133c342576.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DoublyStochastic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DoublyStochastic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13ae47ed2f9920fbbea178c36e9ba01803c8a78e`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/DoublyStochastic/Variant3fdae561a318210c61f47dd66b67ce2deeee4c569d49b899e6b028133c342576.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/DoublyStochastic/Variant3fdae561a318210c61f47dd66b67ce2deeee4c569d49b899e6b028133c342576.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Permutation` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [doublyStochastic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DoublyStochastic.lean/declarations/doublystochastic.md) | 45 | `declaration-track:76393b87b4fc34c3840c20c73eb883487b985077623a97314faf137fc4bea41d` |
| 2 | `lemma` | [mem_doublyStochastic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DoublyStochastic.lean/declarations/mem-doublystochastic.md) | 55 | `result-track:fe38a69946dbb7bd017bc30cfa45bdc8717cc3508b5f427ff92122c1ced983f8` |
| 3 | `lemma` | [mem_doublyStochastic_iff_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DoublyStochastic.lean/declarations/mem-doublystochastic-iff-sum.md) | 59 | `result-track:76a6daecab64be027597458dbfcabf5ab31ea5867307afd4cf1a0db34793f574` |
| 4 | `lemma` | [nonneg_of_mem_doublyStochastic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DoublyStochastic.lean/declarations/nonneg-of-mem-doublystochastic.md) | 65 | `result-track:f529ff9905921659b17e5cfa9042097133c24576480e44200fc62815c1084e5f` |
| 5 | `lemma` | [sum_row_of_mem_doublyStochastic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DoublyStochastic.lean/declarations/sum-row-of-mem-doublystochastic.md) | 69 | `result-track:f216d9b6f0c98e8f043eb5169085c222443e446554ba733075726185e5243a94` |
| 6 | `lemma` | [sum_col_of_mem_doublyStochastic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DoublyStochastic.lean/declarations/sum-col-of-mem-doublystochastic.md) | 73 | `result-track:7dfb12ea1d1a313d0d385f4e251fce6309e3ea029710696d373d7802f7b5935a` |
| 7 | `lemma` | [mulVec_one_of_mem_doublyStochastic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DoublyStochastic.lean/declarations/mulvec-one-of-mem-doublystochastic.md) | 77 | `result-track:8b3a8704a36bda198aaf3745debb37043216576ede0397d91ca26be3ab66b6c5` |
| 8 | `lemma` | [one_vecMul_of_mem_doublyStochastic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DoublyStochastic.lean/declarations/one-vecmul-of-mem-doublystochastic.md) | 81 | `result-track:dd397427c2ae3596ac9cb0f3b9082920840ad5dd952066fb594808c785bfc15d` |
| 9 | `lemma` | [le_one_of_mem_doublyStochastic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DoublyStochastic.lean/declarations/le-one-of-mem-doublystochastic.md) | 85 | `result-track:44b2667df98bf4c3db7609d526d856f9305adab83453eb812fbc59a727cc6761` |
| 10 | `lemma` | [convex_doublyStochastic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DoublyStochastic.lean/declarations/convex-doublystochastic.md) | 91 | `result-track:9ceefe445fc225c1ff25df84a5287e9e3ac693576ea039e81a57edecd4c142db` |
| 11 | `lemma` | [permMatrix_mem_doublyStochastic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DoublyStochastic.lean/declarations/permmatrix-mem-doublystochastic.md) | 97 | `result-track:ebc08015c5fbdd29f6e9afffd323542aff50c14c10b35c2076aca48e51a31a8f` |
| 12 | `lemma` | [exists_mem_doublyStochastic_eq_smul_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DoublyStochastic.lean/declarations/exists-mem-doublystochastic-eq-smul-iff.md) | 118 | `result-track:50c1da8d89b81537e569c45a099ada1f226ab2e15adacb2f1a774d4fdb799b63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=747cb909b3daa7f9aa9e7989c088d71ce1cb3bac82b99c28e152b4701e20cd28 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/DoublyStochastic/Variant3fdae561a318210c61f47dd66b67ce2deeee4c569d49b899e6b028133c342576.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/DoublyStochastic/Variant3fdae561a318210c61f47dd66b67ce2deeee4c569d49b899e6b028133c342576.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
