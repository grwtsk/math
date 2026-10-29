# Verification target: Explicit Schur Matrix Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8d2914c01d7a43f132b444858fa2115bace3520",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant79e186cf52bcdec7cafa116e40b09156c911aa3f919f3717d290082ac60ef1aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExplicitSchurMatrixNamespacedEdition2.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExplicitSchurMatrixNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8d2914c01d7a43f132b444858fa2115bace3520`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant79e186cf52bcdec7cafa116e40b09156c911aa3f919f3717d290082ac60ef1aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant79e186cf52bcdec7cafa116e40b09156c911aa3f919f3717d290082ac60ef1aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.MatrixBlockSchur` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Symmetric` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [provenanceMatrix_isSymm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExplicitSchurMatrixNamespacedEdition2.lean/declarations/provenancematrix-issymm.md) | 40 | `result-track:6dec29c5656428722b3831e99e52fd2dd46625ea867365b3b6002e0ada994a14` |
| 2 | `theorem` | [inverseProvenanceMatrix_isSymm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExplicitSchurMatrixNamespacedEdition2.lean/declarations/inverseprovenancematrix-issymm.md) | 54 | `result-track:18534dea442c47deade07c765b36096de7acd5651068f999664157714b29d3dd` |
| 3 | `def` | [schurMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExplicitSchurMatrixNamespacedEdition2.lean/declarations/schurmatrix.md) | 84 | `declaration-track:1f444e3d6d245b7e7cbed454f2693e97496752f735623d17af4949dd51b3deea` |
| 4 | `theorem` | [schurCorrection_pairing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExplicitSchurMatrixNamespacedEdition2.lean/declarations/schurcorrection-pairing.md) | 90 | `result-track:b35380811884d980d03fd5e309eb7088f391980999f18288264cab633e4c4061` |
| 5 | `theorem` | [schurForm_eq_schurMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExplicitSchurMatrixNamespacedEdition2.lean/declarations/schurform-eq-schurmatrix.md) | 112 | `result-track:8fe65730a89ba5601902a9abeb3d64d97e315b2761ba97b4b9493a5166eae544` |
| 6 | `theorem` | [schurMatrix_nonnegative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExplicitSchurMatrixNamespacedEdition2.lean/declarations/schurmatrix-nonnegative.md) | 121 | `result-track:c17f4b729682bf5f34bb455f6a51d60bbb07d64c76631d0ce5ad0d0eac2d9336` |
| 7 | `theorem` | [autonomous_energy_eq_explained_add_schurMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExplicitSchurMatrixNamespacedEdition2.lean/declarations/autonomous-energy-eq-explained-add-schurmatrix.md) | 129 | `result-track:3b233ca476b5dedb8d413a617feb6d35c845cdd958e1c7129737c5003937020c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=326b7df3800e0d43c1e42ced3c2c9516112eddc42ce746de64e254a89070e9a9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant79e186cf52bcdec7cafa116e40b09156c911aa3f919f3717d290082ac60ef1aa.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant79e186cf52bcdec7cafa116e40b09156c911aa3f919f3717d290082ac60ef1aa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
