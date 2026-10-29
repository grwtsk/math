# Verification target: Linear Algebra Matrix LDL

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0549ea6fea953e0681eeaf90528af3aade07f530",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LDL/Variante41ce77c5aab6b5746200b0f7d90fee5a95f2a612692871c1bb1e7dc607c2d5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixLDL.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixLDL.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0549ea6fea953e0681eeaf90528af3aade07f530`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LDL/Variante41ce77c5aab6b5746200b0f7d90fee5a95f2a612692871c1bb1e7dc607c2d5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LDL/Variante41ce77c5aab6b5746200b0f7d90fee5a95f2a612692871c1bb1e7dc607c2d5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.GramSchmidtOrtho` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.PosDef` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LDL.lowerInv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixLDL.lean/declarations/ldl-lowerinv.md) | 49 | `declaration-track:6d709ea03311493a8166e9e7b676f983e510bdb32764cd5ba6de5fe8115dd455` |
| 2 | `theorem` | [LDL.lowerInv_eq_gramSchmidtBasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixLDL.lean/declarations/ldl-lowerinv-eq-gramschmidtbasis.md) | 53 | `result-track:739af4ec53d8885c408837d607516e0e9ff216c033ed8199c71dfb0ebf41eac6` |
| 3 | `instance` | [LDL.invertibleLowerInv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixLDL.lean/declarations/ldl-invertiblelowerinv.md) | 64 | `declaration-track:323ebee75599e8cff8fe58efefa5a845e81f17d431413d9406ef7a74216e4f36` |
| 4 | `theorem` | [LDL.lowerInv_orthogonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixLDL.lean/declarations/ldl-lowerinv-orthogonal.md) | 72 | `result-track:f7e6bc1bbfb114a9d715be805a30dee0d4c1822451e9e4ec165c92bb416d5edb` |
| 5 | `def` | [LDL.diagEntries](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixLDL.lean/declarations/ldl-diagentries.md) | 77 | `declaration-track:8e2d430fb3e4a859be627cc635797bbd0e278187f3363ebb586e50126083cd02` |
| 6 | `def` | [LDL.diag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixLDL.lean/declarations/ldl-diag.md) | 81 | `declaration-track:dc48aad1e828cd3210154c0d974cf8e8219b58b7ea1301dda3cee9e42b74dea1` |
| 7 | `theorem` | [LDL.lowerInv_triangular](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixLDL.lean/declarations/ldl-lowerinv-triangular.md) | 84 | `result-track:417d4a76b05eb22c45a086dbae880a993e03268f770af7b2b5aa9cde97037fa8` |
| 8 | `theorem` | [LDL.diag_eq_lowerInv_conj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixLDL.lean/declarations/ldl-diag-eq-lowerinv-conj.md) | 92 | `result-track:79d045a4eda3d402c0373b3d698e84936a1756001948155ca9b53e7938d7d95b` |
| 9 | `def` | [LDL.lower](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixLDL.lean/declarations/ldl-lower.md) | 106 | `declaration-track:7a94547fa4f8823a31cd13013c8b07a394c429aee4e3c5f02d543175b9ddd679` |
| 10 | `theorem` | [LDL.lower_conj_diag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraMatrixLDL.lean/declarations/ldl-lower-conj-diag.md) | 111 | `result-track:874d464aca597c4b5759053d3385e5b174fa2dcb7a4e32a46aafd403746d572e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5002869e34bc8a8e917af79a681adb9f43140965e7cd2c1753fac75c23a71b1f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/LDL/Variante41ce77c5aab6b5746200b0f7d90fee5a95f2a612692871c1bb1e7dc607c2d5b.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/LDL/Variante41ce77c5aab6b5746200b0f7d90fee5a95f2a612692871c1bb1e7dc607c2d5b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
