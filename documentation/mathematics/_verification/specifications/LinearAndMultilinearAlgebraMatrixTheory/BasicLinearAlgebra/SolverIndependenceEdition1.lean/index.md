# Verification target: Solver Independence Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b310c74b0070f38efd163e3d684bc7324dae7d66",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SolverIndependence/Variant8879db451e084886f9a9d85a8a1b2c72ca16a2db36a74ca1fe67d11c36373d1c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SolverIndependenceEdition1.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SolverIndependenceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b310c74b0070f38efd163e3d684bc7324dae7d66`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SolverIndependence/Variant8879db451e084886f9a9d85a8a1b2c72ca16a2db36a74ca1fe67d11c36373d1c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SolverIndependence/Variant8879db451e084886f9a9d85a8a1b2c72ca16a2db36a74ca1fe67d11c36373d1c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.SingularLinearSolver` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [form_sub_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SolverIndependenceEdition1.lean/declarations/form-sub-right.md) | 30 | `result-track:f7dc6c83a784697f45b583c226e1a1dba75d6ffabb21e7f504cef722b0a5e1be` |
| 2 | `theorem` | [provenance_pairing_eq_cross](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SolverIndependenceEdition1.lean/declarations/provenance-pairing-eq-cross.md) | 41 | `result-track:357599930589db2813ccdc5021107ec040f8415523562deb50d5d2623658130e` |
| 3 | `theorem` | [solver_difference_null](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SolverIndependenceEdition1.lean/declarations/solver-difference-null.md) | 51 | `result-track:88a8220cb1f54140952f5e8ce25f43cb3014c72ad648c0e721c1d3f557742f03` |
| 4 | `theorem` | [solver_difference_orthogonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SolverIndependenceEdition1.lean/declarations/solver-difference-orthogonal.md) | 73 | `result-track:dc474b960ad1c8305a650478cc19293f1082b4ef5955fd5596b666f1a82d7706` |
| 5 | `theorem` | [provenance_energy_independent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SolverIndependenceEdition1.lean/declarations/provenance-energy-independent.md) | 80 | `result-track:7ed029cc3786280f81a365232f794072b64130379a0b14c846c0a4b3f63a2e21` |
| 6 | `theorem` | [schur_pairing_independent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SolverIndependenceEdition1.lean/declarations/schur-pairing-independent.md) | 114 | `result-track:ac2f4e4561adac9cf8854150342139a2f4e3e51388a47512356d13548a38ce2d` |
| 7 | `theorem` | [schurForm_form_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SolverIndependenceEdition1.lean/declarations/schurform-form-eq.md) | 121 | `result-track:3cdb1f96a84a7fcaeccb5b0bf35269041427c22c6ca620d57bd1983c1c72b80c` |
| 8 | `theorem` | [schur_visible_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SolverIndependenceEdition1.lean/declarations/schur-visible-iff.md) | 128 | `result-track:c524a7fc4d5329006c9af06970dfd1a5ab3f98dbe4e6d2814c53b7de65f95bdc` |
| 9 | `theorem` | [schur_isNull_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SolverIndependenceEdition1.lean/declarations/schur-isnull-iff.md) | 135 | `result-track:ca3ee00abdfad0f6abfa777ee28fc01eb2b24aee92979683029fe8b5eab825c0` |
| 10 | `theorem` | [singular_schur_pairing_canonical](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SolverIndependenceEdition1.lean/declarations/singular-schur-pairing-canonical.md) | 151 | `result-track:be909adf6030931fa043f426fcf76692e80be3bf5e7ef0a0c326c80caea41f9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1c448b0afe55d974a9a5111380a8e0e57e1e13a02403091a6e10cbc7bf8c8283 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SolverIndependence/Variant8879db451e084886f9a9d85a8a1b2c72ca16a2db36a74ca1fe67d11c36373d1c.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/SolverIndependence/Variant8879db451e084886f9a9d85a8a1b2c72ca16a2db36a74ca1fe67d11c36373d1c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
