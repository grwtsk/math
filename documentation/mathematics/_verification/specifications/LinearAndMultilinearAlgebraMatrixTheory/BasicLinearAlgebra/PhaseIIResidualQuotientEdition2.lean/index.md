# Verification target: Phase IIResidual Quotient Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e9cdda7a65069676d16fb773622b937a167d6dc",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseIIResidualQuotient/Variantc2343771dc55a9f42acf493fa50c7788144492384557958e92e6c9d2c6e9cece.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition2.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e9cdda7a65069676d16fb773622b937a167d6dc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseIIResidualQuotient/Variantc2343771dc55a9f42acf493fa50c7788144492384557958e92e6c9d2c6e9cece.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseIIResidualQuotient/Variantc2343771dc55a9f42acf493fa50c7788144492384557958e92e6c9d2c6e9cece.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.SolverIndependence` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [phaseIIResidualization](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition2.lean/declarations/phaseiiresidualization.md) | 37 | `declaration-track:d5de555458222bddc190d1bde1a08ed811b1a32fdce947cb6a2a4f7d9a888070` |
| 2 | `theorem` | [phaseIIResidualization_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition2.lean/declarations/phaseiiresidualization-apply.md) | 44 | `result-track:97e4e0de0b92e1c7650a6dfb0b1201157c4d72b1c0cc75deee4ed7e82932fb2d` |
| 3 | `theorem` | [phaseIIResidualization_form_eq_schur](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition2.lean/declarations/phaseiiresidualization-form-eq-schur.md) | 52 | `result-track:14c01248eb1425d803c8379e9f94761fc6bf9be867ff67c50929a6f4b754ca9a` |
| 4 | `def` | [phaseIIResidualCertificateFamily](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition2.lean/declarations/phaseiiresidualcertificatefamily.md) | 68 | `declaration-track:188169733c6ef025ab0a15f165cc4091cffdd75292c9b17d2bc94ab803b10c95` |
| 5 | `theorem` | [phaseIIResidualCertificate_equivalent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition2.lean/declarations/phaseiiresidualcertificate-equivalent.md) | 76 | `result-track:a79e81952083d4dd05872e92b6ef5dc7994a3df213fb078fef17e1286dadcf2a` |
| 6 | `structure` | [PhaseIIResidualQuotient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition2.lean/declarations/phaseiiresidualquotient.md) | 84 | `declaration-track:855eb181d382fc1410eb07e52be0a5b178ff1a66847a75291a258f2bcdf0803a` |
| 7 | `def` | [geometry](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition2.lean/declarations/geometry.md) | 93 | `declaration-track:94cb386a0c6551f2279d82f01f8e5e0d22d66e3fd5bdef30921267d002efda82` |
| 8 | `def` | [residualization](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition2.lean/declarations/residualization.md) | 98 | `declaration-track:45e9002159009214d1619ccf6748f62834ffaf2601a1018c5cd5cb393ab5c501` |
| 9 | `theorem` | [residualization_form_eq_geometry](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition2.lean/declarations/residualization-form-eq-geometry.md) | 103 | `result-track:b4ce725802bcd5edbe3c1066d1cc1d4ee02ab6acf5d92e4ae49607c1392fe8de` |
| 10 | `theorem` | [geometry_form_eq_solver](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition2.lean/declarations/geometry-form-eq-solver.md) | 111 | `result-track:71796ae7c088577e67608522e4c2478893d1851cae466417ba750e9227951559` |
| 11 | `theorem` | [geometry_form_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition2.lean/declarations/geometry-form-eq.md) | 118 | `result-track:20a2f98f74b80ed54245de511b2996229add1cef51d9a88770c98c8ba42eb097` |
| 12 | `theorem` | [visible_iff_solver](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition2.lean/declarations/visible-iff-solver.md) | 124 | `result-track:6ff49efd3cdaa7a134de3bc6f3aae623ffc311335064b8c19e01c304375258c3` |
| 13 | `theorem` | [isNull_iff_solver](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition2.lean/declarations/isnull-iff-solver.md) | 130 | `result-track:f93dcda8284be9d7f75aa46e3ef473c52b879dad41aba35242c23b42e5fbd76d` |
| 14 | `def` | [solverChoiceRepresentation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition2.lean/declarations/solverchoicerepresentation.md) | 137 | `declaration-track:2ecf7566bfb480307bc381e37e0d8d27bf247239b7a60a046139dfaea4b908c1` |
| 15 | `theorem` | [solverChoiceRepresentation_minimal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition2.lean/declarations/solverchoicerepresentation-minimal.md) | 149 | `result-track:7032fe64e8484b5af513c4b34b142af6ed2aee633c09b62f82c3f23d06130766` |
| 16 | `def` | [solverChoiceStructuralQuine](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition2.lean/declarations/solverchoicestructuralquine.md) | 161 | `declaration-track:07f4dc7be809dfb3319e0bb6807023136b72b58a75216428aff9dd72cf8bceba` |
| 17 | `def` | [singularPhaseIIResidualQuotient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition2.lean/declarations/singularphaseiiresidualquotient.md) | 185 | `declaration-track:3e35c9553b6213069fa0cca0501d6fc89929f2292dc5f5117f9a0bf216b14cec` |
| 18 | `theorem` | [singularPhaseIIResidualQuotient_nonnegative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition2.lean/declarations/singularphaseiiresidualquotient-nonnegative.md) | 198 | `result-track:6a63ad9c761c281a3eb51aa55d5790b08858bfcd3e1e9b3822f5865a17a3f1b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fbdf4a5e774ef7c1f13e7a65da3a758e99059c21ecddc4d80a51d29124c9fd2b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseIIResidualQuotient/Variantc2343771dc55a9f42acf493fa50c7788144492384557958e92e6c9d2c6e9cece.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseIIResidualQuotient/Variantc2343771dc55a9f42acf493fa50c7788144492384557958e92e6c9d2c6e9cece.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
