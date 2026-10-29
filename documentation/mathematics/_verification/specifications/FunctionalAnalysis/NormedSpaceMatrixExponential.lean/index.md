# Verification target: Normed Space Matrix Exponential

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bfb8819bc84e5484d54cf62878e855dcc8eeee44",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixExponential/Varianta2e9e93acb8d8cfaba1d99e7a884d394abf9629f78f8f57a69fae5d257660f26.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/NormedSpaceMatrixExponential.lean/index.md) · [Full source](../../../../FunctionalAnalysis/NormedSpaceMatrixExponential.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bfb8819bc84e5484d54cf62878e855dcc8eeee44`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixExponential/Varianta2e9e93acb8d8cfaba1d99e7a884d394abf9629f78f8f57a69fae5d257660f26.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixExponential/Varianta2e9e93acb8d8cfaba1d99e7a884d394abf9629f78f8f57a69fae5d257660f26.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Exponential` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ZPow` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Hermitian` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Symmetric` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Matrix` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exp_diagonal](../../../../FunctionalAnalysis/NormedSpaceMatrixExponential.lean/declarations/exp-diagonal.md) | 77 | `result-track:1e68b93ecd611cc9a2b01099d3f2b7276cd1627e14bbf3a9a58683ac96ea76bd` |
| 2 | `theorem` | [exp_blockDiagonal](../../../../FunctionalAnalysis/NormedSpaceMatrixExponential.lean/declarations/exp-blockdiagonal-source-edition-2.md) | 81 | `result-track:afa498d81ab3417264e6fc88f0633eefb90d926d50db6a6dd1475ec8c1cd0d95` |
| 3 | `theorem` | [exp_blockDiagonal'](../../../../FunctionalAnalysis/NormedSpaceMatrixExponential.lean/declarations/exp-blockdiagonal.md) | 86 | `result-track:1d99567ef11691d6da92a641bc898b957523df996d4152bc8cfca9247daf5f3e` |
| 4 | `theorem` | [exp_conjTranspose](../../../../FunctionalAnalysis/NormedSpaceMatrixExponential.lean/declarations/exp-conjtranspose.md) | 91 | `result-track:effd657a5385073ebb87da388b45cbf26972096f9dd13e6ffd6f70f8c6247867` |
| 5 | `theorem` | [IsHermitian.exp](../../../../FunctionalAnalysis/NormedSpaceMatrixExponential.lean/declarations/ishermitian-exp.md) | 96 | `result-track:738f1d0d51c5fa73cb85619639b43c31c73b53d1743a9ab0b27a2ef99dcbb92a` |
| 6 | `theorem` | [exp_transpose](../../../../FunctionalAnalysis/NormedSpaceMatrixExponential.lean/declarations/exp-transpose.md) | 108 | `result-track:50b1cc80e4646876a066b82f9bc67927d2f4f3dea175187db52026fdf6f801b0` |
| 7 | `theorem` | [IsSymm.exp](../../../../FunctionalAnalysis/NormedSpaceMatrixExponential.lean/declarations/issymm-exp.md) | 112 | `result-track:deba3df85cd271226e184cc3c0f7c3ef06b4abc50e4e67f264af2c572154a60d` |
| 8 | `theorem` | [exp_add_of_commute](../../../../FunctionalAnalysis/NormedSpaceMatrixExponential.lean/declarations/exp-add-of-commute.md) | 125 | `result-track:9d266abd71c30f6646040af23499b69673f3be5b7facd5ab3e04c4d636e5b124` |
| 9 | `theorem` | [exp_sum_of_commute](../../../../FunctionalAnalysis/NormedSpaceMatrixExponential.lean/declarations/exp-sum-of-commute.md) | 133 | `result-track:c6bf73121ce6a575cdc851cfbb383c69c08c2a50a2549bd9c1fc1e4e914442ae` |
| 10 | `theorem` | [exp_nsmul](../../../../FunctionalAnalysis/NormedSpaceMatrixExponential.lean/declarations/exp-nsmul.md) | 143 | `result-track:8aff3cf63b292e406e43a5e544b90fdee5324e36d949b0a4b6c8100c34749667` |
| 11 | `theorem` | [isUnit_exp](../../../../FunctionalAnalysis/NormedSpaceMatrixExponential.lean/declarations/isunit-exp.md) | 150 | `result-track:6cb69429f15c94f37234203a2e233b0d914557606aec3f99f6598268a4045188` |
| 12 | `theorem` | [exp_units_conj](../../../../FunctionalAnalysis/NormedSpaceMatrixExponential.lean/declarations/exp-units-conj-source-edition-2.md) | 158 | `result-track:fbb1ca25b14b102fd05db3a461ac3fa12537e4a6a785c82f759262e0a9f1931f` |
| 13 | `theorem` | [exp_units_conj'](../../../../FunctionalAnalysis/NormedSpaceMatrixExponential.lean/declarations/exp-units-conj.md) | 167 | `result-track:c6dd3cdfaf33e32d91afb5a7a5781c2d7e8af9c06f1586e1f63dc8459c0e1ac4` |
| 14 | `theorem` | [exp_neg](../../../../FunctionalAnalysis/NormedSpaceMatrixExponential.lean/declarations/exp-neg.md) | 179 | `result-track:5b3ab8ff19b827dd3d8fe288f54d5df294892cbf04306d120d7cba9cf263713f` |
| 15 | `theorem` | [exp_zsmul](../../../../FunctionalAnalysis/NormedSpaceMatrixExponential.lean/declarations/exp-zsmul.md) | 187 | `result-track:35c7f382ad3a790ff4c38b4eab35977255fc96099d3a3774f61344a762aa4215` |
| 16 | `theorem` | [exp_conj](../../../../FunctionalAnalysis/NormedSpaceMatrixExponential.lean/declarations/exp-conj.md) | 194 | `result-track:96c9638790571c8944de4d4a3f633fb3d06968eeaf0231db89da7437122aeee7` |
| 17 | `theorem` | [exp_conj'](../../../../FunctionalAnalysis/NormedSpaceMatrixExponential.lean/declarations/exp-conj-source-edition-2.md) | 200 | `result-track:bdb13f7812b98a946d2604a933a96334cba58fd0dd68b04a3a891d0585e2d1af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=423e8477a1c086f206b4b353fa8b9949aafa1f84b87be789b040f574e2b50655 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/MatrixExponential/Varianta2e9e93acb8d8cfaba1d99e7a884d394abf9629f78f8f57a69fae5d257660f26.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/MatrixExponential/Varianta2e9e93acb8d8cfaba1d99e7a884d394abf9629f78f8f57a69fae5d257660f26.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
