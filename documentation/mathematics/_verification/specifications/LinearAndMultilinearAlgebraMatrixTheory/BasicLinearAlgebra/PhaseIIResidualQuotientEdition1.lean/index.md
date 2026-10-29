# Verification target: Phase IIResidual Quotient Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ee3c3416fa40c8757c3fa08da9c1d48c9da8a87",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseIIResidualQuotient/Variant13426d0e560f649fa07d0980aac0c19909d2513db4ebdc6fffd7e8ba15b21f39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition1.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ee3c3416fa40c8757c3fa08da9c1d48c9da8a87`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseIIResidualQuotient/Variant13426d0e560f649fa07d0980aac0c19909d2513db4ebdc6fffd7e8ba15b21f39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseIIResidualQuotient/Variant13426d0e560f649fa07d0980aac0c19909d2513db4ebdc6fffd7e8ba15b21f39.lean.json)

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
| 1 | `def` | [phaseIIResidualization](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition1.lean/declarations/phaseiiresidualization.md) | 37 | `declaration-track:18057f254e9a7b205112a032963512b3bd32e40920583dc42c87a1e5af2fa481` |
| 2 | `theorem` | [phaseIIResidualization_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition1.lean/declarations/phaseiiresidualization-apply.md) | 44 | `result-track:e320326335fb0525d3c221b8a62539e67aae8f36bb3645341ae8bffdc8370c20` |
| 3 | `theorem` | [phaseIIResidualization_form_eq_schur](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition1.lean/declarations/phaseiiresidualization-form-eq-schur.md) | 52 | `result-track:765e6ae223441a9563f3357599ca5bdef52bd5a3ebcca746fca4621a8206b354` |
| 4 | `def` | [phaseIIResidualCertificateFamily](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition1.lean/declarations/phaseiiresidualcertificatefamily.md) | 68 | `declaration-track:d127bfeb65adb630dc8fb2d8cda34a3808820457e7b8d42347865f33577811aa` |
| 5 | `theorem` | [phaseIIResidualCertificate_equivalent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition1.lean/declarations/phaseiiresidualcertificate-equivalent.md) | 77 | `result-track:5621e7df57896775067ca1461defd12a491d432af3af2e8112de151388f26db4` |
| 6 | `structure` | [PhaseIIResidualQuotient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition1.lean/declarations/phaseiiresidualquotient.md) | 85 | `declaration-track:3eb045cadd5a0cd65d4fec021223d09a52d54f19ceaf7581c041947e37014a14` |
| 7 | `def` | [geometry](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition1.lean/declarations/geometry.md) | 93 | `declaration-track:953ff8827868e5bd90e87bf194a17938c6fefddd36a21a44cee2506417ea210c` |
| 8 | `def` | [residualization](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition1.lean/declarations/residualization.md) | 98 | `declaration-track:d3335cf3f8c8e8ae4269c41d706cd03a8c643a1537c365a62acf286896a29aaa` |
| 9 | `theorem` | [residualization_form_eq_geometry](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition1.lean/declarations/residualization-form-eq-geometry.md) | 103 | `result-track:56343c1e710d4a593a308ea24bd251c1c60bc76e3b8653192cdd227536f0361d` |
| 10 | `theorem` | [geometry_form_eq_solver](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition1.lean/declarations/geometry-form-eq-solver.md) | 111 | `result-track:173fb1a41de0b223eeaea6291d7868d02525a7a07c37fa084b1930e7cc16acc4` |
| 11 | `theorem` | [geometry_form_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition1.lean/declarations/geometry-form-eq.md) | 118 | `result-track:4fcac9afbe7d825c1247129561c8f18b3b18b53a86415e4c501b284f8dee8f99` |
| 12 | `theorem` | [visible_iff_solver](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition1.lean/declarations/visible-iff-solver.md) | 124 | `result-track:aadb14efdf8fdb098af88a32a95317da5a89bc34425540b9677096ecfaf69b84` |
| 13 | `theorem` | [isNull_iff_solver](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition1.lean/declarations/isnull-iff-solver.md) | 130 | `result-track:07b240207a988fb7ae4cefcd89655192b7217e607ed461d3ec4030994be9cacb` |
| 14 | `def` | [solverChoiceRepresentation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition1.lean/declarations/solverchoicerepresentation.md) | 137 | `declaration-track:74c6ca5f25efb0501aa8f9802f8d7697e3dba1817978ddc404b17d919d31ed52` |
| 15 | `theorem` | [solverChoiceRepresentation_minimal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition1.lean/declarations/solverchoicerepresentation-minimal.md) | 149 | `result-track:6ed0a65a88ac9bdd65acb0b19f3bc19640b3783e579bb566e3c7b54279680c04` |
| 16 | `def` | [solverChoiceStructuralQuine](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition1.lean/declarations/solverchoicestructuralquine.md) | 160 | `declaration-track:f0e01ae603f3a689841c79516ea44a6311edb27294aeb9e3968b75cf600663d7` |
| 17 | `def` | [singularPhaseIIResidualQuotient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition1.lean/declarations/singularphaseiiresidualquotient.md) | 184 | `declaration-track:adbd1e10464d18089bbe3599e07945153281645a0270ba6ff51687bca2cb7314` |
| 18 | `theorem` | [singularPhaseIIResidualQuotient_nonnegative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PhaseIIResidualQuotientEdition1.lean/declarations/singularphaseiiresidualquotient-nonnegative.md) | 197 | `result-track:6a5af63be55ca26a5e10b99a273b5474e62e9da8ba3bc28b6f0ce8f2bec7e623` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a7654599c53af5f3e5460c49e0c520b861f256caaec17d0e6eb526e58e625e36 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseIIResidualQuotient/Variant13426d0e560f649fa07d0980aac0c19909d2513db4ebdc6fffd7e8ba15b21f39.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseIIResidualQuotient/Variant13426d0e560f649fa07d0980aac0c19909d2513db4ebdc6fffd7e8ba15b21f39.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
