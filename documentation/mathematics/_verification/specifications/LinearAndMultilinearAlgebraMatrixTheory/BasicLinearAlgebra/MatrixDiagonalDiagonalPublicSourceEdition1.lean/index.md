# Verification target: Matrix Diagonal Diagonal Public Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a584e3074f9251a32bb4c4e2d4edf800f0d16cc",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Diagonal/Variant4134f64fdb7a43917faa628ee01ea47b01d78f8f80d63b04457462d43ab4ca14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDiagonalDiagonalPublicSourceEdition1.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDiagonalDiagonalPublicSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a584e3074f9251a32bb4c4e2d4edf800f0d16cc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Diagonal/Variant4134f64fdb7a43917faa628ee01ea47b01d78f8f80d63b04457462d43ab4ca14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Diagonal/Variant4134f64fdb7a43917faa628ee01ea47b01d78f8f80d63b04457462d43ab4ca14.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [proj_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDiagonalDiagonalPublicSourceEdition1.lean/declarations/proj-diagonal.md) | 38 | `result-track:3edaebd208acdefa755f9f7071c212e77c0869c97455d7535442a04d7fde5789` |
| 2 | `theorem` | [diagonal_comp_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDiagonalDiagonalPublicSourceEdition1.lean/declarations/diagonal-comp-single.md) | 41 | `result-track:2d3d2280561b68ee3f9dddbf475e9e447274ec04a4fe5641aa3cd85e1882276c` |
| 3 | `theorem` | [diagonal_toLin'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDiagonalDiagonalPublicSourceEdition1.lean/declarations/diagonal-tolin.md) | 46 | `result-track:5b98e283e94949c6a57e842ea4c9ff7ddc6911ab7c8cd8ffc72ead1bfa7b6c21` |
| 4 | `theorem` | [ker_diagonal_toLin'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDiagonalDiagonalPublicSourceEdition1.lean/declarations/ker-diagonal-tolin.md) | 57 | `result-track:8130a2219a8665e490376fb61e17411fa59be1504cd9ff2169602a4c3152f57c` |
| 5 | `theorem` | [range_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDiagonalDiagonalPublicSourceEdition1.lean/declarations/range-diagonal.md) | 64 | `result-track:fb8c7c6458f27c9d98ac4758cdad69c3888b0b6839f9a1f2629467691a654254` |
| 6 | `theorem` | [rank_diagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixDiagonalDiagonalPublicSourceEdition1.lean/declarations/rank-diagonal.md) | 82 | `result-track:bdf9f8052f31794eaa05365a9b61ec6b2a8b7a921b38a52cd9c068cb78a1a43e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d9b3eb4e5c396f58d6e5a3e7e2cf0862eb7f07f39259cf433d6fef4411bfa2e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Diagonal/Variant4134f64fdb7a43917faa628ee01ea47b01d78f8f80d63b04457462d43ab4ca14.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Diagonal/Variant4134f64fdb7a43917faa628ee01ea47b01d78f8f80d63b04457462d43ab4ca14.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
