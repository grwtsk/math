# Verification target: Hadamard Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c870679cf91ca1ef0f8474a05f29675802513df0",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Hadamard/Varianteaee901500bb3ea0c04f397759ad35c60e869b595614cee74f373094b4529209.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HadamardNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HadamardNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c870679cf91ca1ef0f8474a05f29675802513df0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Hadamard/Varianteaee901500bb3ea0c04f397759ad35c60e869b595614cee74f373094b4529209.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Hadamard/Varianteaee901500bb3ea0c04f397759ad35c60e869b595614cee74f373094b4529209.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Trace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hadamard](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HadamardNamespaced.lean/declarations/hadamard.md) | 48 | `declaration-track:c54d95c02c30874cdb6e15a234aa155ed1f3a845452bcfc37852fef07652b1b1` |
| 2 | `theorem` | [hadamard_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HadamardNamespaced.lean/declarations/hadamard-apply.md) | 53 | `result-track:ab184511734029a9816a736e0713842b199b777eb50ff4884a5ed78c782fa411` |
| 3 | `theorem` | [hadamard_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HadamardNamespaced.lean/declarations/hadamard-comm.md) | 64 | `result-track:443c66187aec0540061d1777ae3ab2a5a3b652b6d85e134dda3ff0e6a14b6369` |
| 4 | `theorem` | [hadamard_assoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HadamardNamespaced.lean/declarations/hadamard-assoc.md) | 68 | `result-track:27b8f0e4e2d10287e7f5850728ad75760b56cc764e49ef0cec361cad2f6f33ca` |
| 5 | `theorem` | [hadamard_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HadamardNamespaced.lean/declarations/hadamard-add.md) | 72 | `result-track:ecac5b77e0fd941b17a567c8c7733e2357d0606287e6c3da0f35e6d3aee60386` |
| 6 | `theorem` | [add_hadamard](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HadamardNamespaced.lean/declarations/add-hadamard.md) | 75 | `result-track:f05749d70503f36406aa14c4eb6e7d7b92a2db790f22af53dbc95da780597caf` |
| 7 | `theorem` | [smul_hadamard](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HadamardNamespaced.lean/declarations/smul-hadamard.md) | 82 | `result-track:a53b775c05b99894080b6ed45eb76620ca8f01ddd20d76700f6ca3ffdc356e72` |
| 8 | `theorem` | [hadamard_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HadamardNamespaced.lean/declarations/hadamard-smul.md) | 86 | `result-track:4df6c49a5630c154df9945f76ffac60be9abed2cc36effdf3e84082fc5882dbf` |
| 9 | `theorem` | [hadamard_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HadamardNamespaced.lean/declarations/hadamard-zero.md) | 96 | `result-track:6344028ea36dc44cfc3019299b298544704255dbadad45ae8fa689123f31415c` |
| 10 | `theorem` | [zero_hadamard](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HadamardNamespaced.lean/declarations/zero-hadamard.md) | 100 | `result-track:b6ab7c8caa1860babb5d7e56fd2ec9b419f3715eda440be3f8fbb9e4c4f8b1ff` |
| 11 | `theorem` | [hadamard_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HadamardNamespaced.lean/declarations/hadamard-one.md) | 110 | `result-track:e5e44c59d7a10fa6f3c6c98f8420524d04babb7073598de79999da6d2bee4e49` |
| 12 | `theorem` | [one_hadamard](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HadamardNamespaced.lean/declarations/one-hadamard.md) | 114 | `result-track:66d94d4d214b639b2b4defd103f37942a180e374d46bc7b8839fb1f8d0abbebf` |
| 13 | `theorem` | [single_hadamard_single_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HadamardNamespaced.lean/declarations/single-hadamard-single-eq.md) | 124 | `result-track:45d663939f44c33ca5102e6a8ad22f6daaea16e4334f5baeadb69e55d5fcf3b2` |
| 14 | `theorem` | [single_hadamard_single_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HadamardNamespaced.lean/declarations/single-hadamard-single-of-ne.md) | 131 | `result-track:ff98ae54e6f8e2c4c810c9d50f415aa909a0bb4eb35e672d45bf418f0707a150` |
| 15 | `theorem` | [diagonal_hadamard_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HadamardNamespaced.lean/declarations/diagonal-hadamard-diagonal.md) | 143 | `result-track:9cfe27fb258f64c390e25d917527dc604fa63dd54d02b4a840ae4544bf2ee4e9` |
| 16 | `theorem` | [sum_hadamard_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HadamardNamespaced.lean/declarations/sum-hadamard-eq.md) | 154 | `result-track:0b73417cf24840c2aba481a34ec7640b9f44c2def1420dfcb1a855f4c5822328` |
| 17 | `theorem` | [dotProduct_vecMul_hadamard](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HadamardNamespaced.lean/declarations/dotproduct-vecmul-hadamard.md) | 157 | `result-track:7b0bc968c977bb932a30263275fa4f6bba700e085f1ab42825429d606728ac96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e78a9988c72b9bdc205188155df6e52433aa5a3698805a874e1c06505fe14d26 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Hadamard/Varianteaee901500bb3ea0c04f397759ad35c60e869b595614cee74f373094b4529209.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Hadamard/Varianteaee901500bb3ea0c04f397759ad35c60e869b595614cee74f373094b4529209.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
