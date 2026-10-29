# Verification target: Matrix Trace Namespaced Trace Diagonal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8643645622477280f75afeef4c26b20668f5cbf",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Trace/Variant19eae28e26e2375f2400109d75c7a1f2171280647ea74367b4211344166094b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8643645622477280f75afeef4c26b20668f5cbf`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Trace/Variant19eae28e26e2375f2400109d75c7a1f2171280647ea74367b4211344166094b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Trace/Variant19eae28e26e2375f2400109d75c7a1f2171280647ea74367b4211344166094b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basis` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Block` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.RowCol` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Notation` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [trace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/declarations/trace.md) | 49 | `declaration-track:441ab7cbdeb3afac88c092b87f35b191b63ec230db4ac4573f990a467cc050ea` |
| 2 | `lemma` | [trace_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/declarations/trace-diagonal.md) | 52 | `result-track:3c3426415fe5ee2d4e4b071ce243156540c86a6772b9e19f5d5af7321a3cea9f` |
| 3 | `theorem` | [trace_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/declarations/trace-zero.md) | 59 | `result-track:bd553e21b8acf8882846420b8d9990d636a25ba06364ec5b32f8ed3749a71f37` |
| 4 | `lemma` | [trace_eq_zero_of_isEmpty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/declarations/trace-eq-zero-of-isempty.md) | 65 | `result-track:33895183a51d55650783a9298d4fbc486565f41e1dac8aebd58ab0b2bacbb167` |
| 5 | `theorem` | [trace_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/declarations/trace-add.md) | 68 | `result-track:89c6ec2d1e454de6e04ef50d60455633db89350b719b6960ef03c074d2aca530` |
| 6 | `theorem` | [trace_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/declarations/trace-smul.md) | 72 | `result-track:dc9a5a935bb7f69db716c7fe209a112a2f65ce4a4196b590e4c0395e8819b131` |
| 7 | `theorem` | [trace_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/declarations/trace-transpose.md) | 77 | `result-track:0056494943f004854daa0a08cedf1ffc6ac80fecaefe0169b603d9a0b8fe24e3` |
| 8 | `theorem` | [trace_conjTranspose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/declarations/trace-conjtranspose.md) | 81 | `result-track:5fc1973795c11bbf616fa47f027ee6d222c4e901207c08b6161996205efce934` |
| 9 | `def` | [traceAddMonoidHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/declarations/traceaddmonoidhom.md) | 88 | `declaration-track:a0fc1b389b8af60d2b04304c03f14b8f62368c1291d9703b978c26fea786f5d9` |
| 10 | `def` | [traceLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/declarations/tracelinearmap.md) | 95 | `declaration-track:d28b105dcc0a192fcf98de589e77f0af7db19723d6fe8bea4c600036073492e1` |
| 11 | `theorem` | [trace_list_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/declarations/trace-list-sum.md) | 103 | `result-track:8e66cd021c3b7ac8d9143d46e748c89f4a346fe52df817dc98475022d5eec5e1` |
| 12 | `theorem` | [trace_multiset_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/declarations/trace-multiset-sum.md) | 107 | `result-track:3f711e3dc9a9b267006329bb53104de54880f2768d33235220d3f5ef89df6a36` |
| 13 | `theorem` | [trace_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/declarations/trace-sum.md) | 111 | `result-track:86c392335795d00eb9ac587f9f7f3f4e3d8dfb8a7a0c22c3457bb058def42256` |
| 14 | `theorem` | [Matrix Trace Namespaced Trace Diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/declarations/map-trace.md) | 115 | `result-track:45d6aa0ac16d97f2615b048bf01cc69fc327b1c975b71f550e543a5a3bf35f95` |
| 15 | `lemma` | [trace_blockDiagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/declarations/trace-blockdiagonal-source-edition-2.md) | 120 | `result-track:ecdc4890be6cd9661f47383f2b77c59d67c7c7c434d841a54955eccfda1c2b33` |
| 16 | `lemma` | [trace_blockDiagonal'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/declarations/trace-blockdiagonal.md) | 124 | `result-track:9918a6ff4c3dcdfc24e6f3d86877ee7ecbfc86601e989cac1da4e85f242905eb` |
| 17 | `theorem` | [trace_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/declarations/trace-sub.md) | 136 | `result-track:6d6847b8a4bd59dfad57aef5ffcb47f2d87b7566ec82b164917936400f398dad` |
| 18 | `theorem` | [trace_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/declarations/trace-neg.md) | 140 | `result-track:1f490733a1cca58a3429b9cd4c984ab7ed71bf8f7bf39da179703d9f313301fd` |
| 19 | `theorem` | [trace_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/declarations/trace-one.md) | 150 | `result-track:2d73d57176d01476b8ac2448fb8b9c0d71da548da3db269b9a835f7d755d47cc` |
| 20 | `theorem` | [trace_transpose_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/declarations/trace-transpose-mul.md) | 158 | `result-track:6a5098c18f95622716876ac651408864335197eddad827cdf60e168f8d919e0b` |
| 21 | `theorem` | [trace_mul_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/declarations/trace-mul-comm.md) | 162 | `result-track:2edf284e71edc6063b860f3b82139206e464aeb696d6a3a9739746246f0b6d2f` |
| 22 | `theorem` | [trace_mul_cycle](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/declarations/trace-mul-cycle.md) | 165 | `result-track:5639d35dbc942c803ba0d4afa297e2535702eb67b69652a144d84bad22d5df36` |
| 23 | `theorem` | [trace_mul_cycle'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/declarations/trace-mul-cycle-source-edition-2.md) | 169 | `result-track:68070a8c5c95a88e6b7f1ce9b03911687a5548ab5be5adb949746435751365db` |
| 24 | `theorem` | [trace_replicateCol_mul_replicateRow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/declarations/trace-replicatecol-mul-replicaterow.md) | 174 | `result-track:617f784b72c45e3ba834166785214e460c9831502195b375eef32abbbd597634` |
| 25 | `lemma` | [trace_submatrix_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/declarations/trace-submatrix-succ.md) | 183 | `result-track:db332f0bea4d92e560543bb81998b0fb92c9efefddb58966f9534df1b8c04d0f` |
| 26 | `theorem` | [trace_units_conj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/declarations/trace-units-conj.md) | 195 | `result-track:81fef04448cec500af8d2ff2aa417dbc7ad413270163593501046b4c81aced3c` |
| 27 | `theorem` | [trace_units_conj'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/declarations/trace-units-conj-source-edition-2.md) | 201 | `result-track:d2926fcbd3fda42cf268f1a6e39bd23cdcd655fdb94e76f0c73f3425cf9e4fc8` |
| 28 | `theorem` | [trace_fin_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/declarations/trace-fin-zero.md) | 215 | `result-track:4e82923aded8c6f4329054c4d36136242a3edc99bba046be357b23507f071261` |
| 29 | `theorem` | [trace_fin_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/declarations/trace-fin-one.md) | 218 | `result-track:ccf95d061e09b8ed47a4c7deea81c4f747ea71308c8cdf348aabfb5199b1633c` |
| 30 | `theorem` | [trace_fin_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/declarations/trace-fin-two.md) | 221 | `result-track:94500920a50be080b7e322366333ee0d0331116f1038650d7c17b08a74d20130` |
| 31 | `theorem` | [trace_fin_three](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/declarations/trace-fin-three.md) | 224 | `result-track:385d1c14ed7afb4e1c89f2b90929582cdbc895906c42dc96d626b1c11e834261` |
| 32 | `theorem` | [trace_fin_one_of](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/declarations/trace-fin-one-of.md) | 229 | `result-track:ff0e29466f85053151963cb34e1e279811497fadae21076a8a91da2962df5f1c` |
| 33 | `theorem` | [trace_fin_two_of](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/declarations/trace-fin-two-of.md) | 233 | `result-track:f3d5810d59eecc3e09327b00e3f765b2f35d00ab76bc5f015c47f3e1e77fae83` |
| 34 | `theorem` | [trace_fin_three_of](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/declarations/trace-fin-three-of.md) | 237 | `result-track:f4f7948d087d65176657e9fcb2b9487b1af9661f0ecc6835519a2305ce5230a4` |
| 35 | `theorem` | [trace_single_eq_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/declarations/trace-single-eq-of-ne.md) | 249 | `result-track:050b6695c651bed9c2247c299960e90ba261e28cae922753c21c8757ddefc126` |
| 36 | `theorem` | [trace_single_eq_same](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixTraceNamespacedTraceDiagonal.lean/declarations/trace-single-eq-same.md) | 257 | `result-track:e6fae8acafa463fe2b82b66ad7083a6efe06300cb1d27b9bb7cf95afc532f553` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f062ffc641b775e058e9b8bc3cc0c7e1f2882c410d38b5c12b0d06bd7cfdd9cf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Trace/Variant19eae28e26e2375f2400109d75c7a1f2171280647ea74367b4211344166094b3.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Trace/Variant19eae28e26e2375f2400109d75c7a1f2171280647ea74367b4211344166094b3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
