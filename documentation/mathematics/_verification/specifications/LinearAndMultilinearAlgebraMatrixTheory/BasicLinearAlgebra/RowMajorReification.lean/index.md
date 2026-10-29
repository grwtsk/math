# Verification target: Row Major Reification

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de1646c610ba5e168069d07b62f98edbe2a655b8",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/MatrixTheory/LocalSubmatrixReplacement/Variantd80cb774da3fc91b/RowMajorReification.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RowMajorReification.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RowMajorReification.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de1646c610ba5e168069d07b62f98edbe2a655b8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/MatrixTheory/LocalSubmatrixReplacement/Variantd80cb774da3fc91b/RowMajorReification.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/MatrixTheory/LocalSubmatrixReplacement/Variantd80cb774da3fc91b/RowMajorReification.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Geometry.GlobalProjection` — import line 19; external provider; requires a separately pinned dependency.
- [Locus Operations And Support](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LocusOperationsAndSupport.lean/index.md) — import line 21; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RowMajorReification.lean/declarations/ofmatrix.md) | 46 | `declaration-track:979dab0a933680e381c31f4c2609b43021e1f9488a6f2bbdbb909ccaad65306f` |
| 2 | `theorem` | [toMatrix_ofMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RowMajorReification.lean/declarations/tomatrix-ofmatrix.md) | 50 | `result-track:01dcb7c31a26c841ce424a0567c19a46a7ef5b4a3d9e1cf9ce7149b799e8caba` |
| 3 | `def` | [implantSubmatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RowMajorReification.lean/declarations/implantsubmatrix.md) | 61 | `declaration-track:5efc0a20b3c78660c77e39b8725392e059d6ba85911e1c5b3c272c55d8f2c19b` |
| 4 | `theorem` | [implantSubmatrix_spec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RowMajorReification.lean/declarations/implantsubmatrix-spec.md) | 68 | `result-track:3bdbfd3c09aa2f27b60b69778236111b9da99be29366a92824ebcedd97742c2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=55c718da5c9734fdfe9a699858a99f8b4bd6c1c99599b2c3e671dc250d83a038 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/MatrixTheory/LocalSubmatrixReplacement/Variantd80cb774da3fc91b/RowMajorReification.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/MatrixTheory/LocalSubmatrixReplacement/Variantd80cb774da3fc91b/RowMajorReification.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
