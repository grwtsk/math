# Verification target: Scalar Schur Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42865c0b77b88c3ac10ea9b703b6357ddbd77877",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/E9a04d751ad2c97c940e41020bbfc0f424b862a30a4bdf8f9c7dcd9ea866be7dScalarSchur/Variant72a9325710f2213a92c11009bfc7c23253a3d039e4710b7b450d5f2d00f42d3a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ScalarSchurNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ScalarSchurNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42865c0b77b88c3ac10ea9b703b6357ddbd77877`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/E9a04d751ad2c97c940e41020bbfc0f424b862a30a4bdf8f9c7dcd9ea866be7dScalarSchur/Variant72a9325710f2213a92c11009bfc7c23253a3d039e4710b7b450d5f2d00f42d3a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/E9a04d751ad2c97c940e41020bbfc0f424b862a30a4bdf8f9c7dcd9ea866be7dScalarSchur/Variant72a9325710f2213a92c11009bfc7c23253a3d039e4710b7b450d5f2d00f42d3a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ProvenanceProjection` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [scalarBlockForm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ScalarSchurNamespaced.lean/declarations/scalarblockform.md) | 36 | `declaration-track:799b86472daa781cdb5e2dee97d2f49252f1fee4727d7f8728a3f448a7e71314` |
| 2 | `def` | [scalarBlockPositiveForm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ScalarSchurNamespaced.lean/declarations/scalarblockpositiveform.md) | 40 | `declaration-track:d5f461bb7cdb21c989196694d1b0fe0d45a0f6f403a48568a3c787f970b7f0fb` |
| 3 | `def` | [scalarProvenanceProject](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ScalarSchurNamespaced.lean/declarations/scalarprovenanceproject.md) | 62 | `declaration-track:99e27317d841162e2eb95fdabc0bba89a315aa394d93f64f361cbaad35467c35` |
| 4 | `theorem` | [scalarProvenanceProject_apply](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ScalarSchurNamespaced.lean/declarations/scalarprovenanceproject-apply.md) | 72 | `result-track:62c10c0ae15f2acfc5fbe3b7a214d10c6cc1fb4aecff8eed1d2d7a53677f447a` |
| 5 | `theorem` | [scalarProvenanceProject_idempotent](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ScalarSchurNamespaced.lean/declarations/scalarprovenanceproject-idempotent.md) | 77 | `result-track:0a5e9c6af94ef4940bce8d8e1845a1c7db968c34a8acf977eacef8e4f4015384` |
| 6 | `theorem` | [scalarProvenanceProject_orthogonal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ScalarSchurNamespaced.lean/declarations/scalarprovenanceproject-orthogonal.md) | 84 | `result-track:7c34b40751f54e971746abd4982bca2514bb2936cceb85d97c8fa7c1a21ed4e6` |
| 7 | `def` | [scalarProvenanceProjector](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ScalarSchurNamespaced.lean/declarations/scalarprovenanceprojector.md) | 94 | `declaration-track:809853fd11a2ab2a38c5deb6d3cd2b86b54d4580f9b00993927a25dc60208151` |
| 8 | `theorem` | [scalarProvenanceResidual_apply](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ScalarSchurNamespaced.lean/declarations/scalarprovenanceresidual-apply.md) | 105 | `result-track:e706656aed2df6990a341568d62e20e25399dd6380440cbb5eeafa225d3b46f5` |
| 9 | `theorem` | [scalarResidualForm_eq_schur](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ScalarSchurNamespaced.lean/declarations/scalarresidualform-eq-schur.md) | 117 | `result-track:a45b478f4c64521bffca3492f3f9bc03aad807acd36987d85c194e7bfea473d6` |
| 10 | `theorem` | [scalar_schur_complement_nonnegative](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ScalarSchurNamespaced.lean/declarations/scalar-schur-complement-nonnegative.md) | 134 | `result-track:2ee9ff2e7e31e64cafaa9bec1e7e7abe6b63c1b2f8bcaa3f003df51fb7c0fe12` |
| 11 | `theorem` | [scalar_quadratic_schur_decomposition](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ScalarSchurNamespaced.lean/declarations/scalar-quadratic-schur-decomposition.md) | 146 | `result-track:9dbe041c4f245f7971a2f10e052c4c25bb11ce64f6569a478493a68c9f7345cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2aa3cb70c4172cd20f7cd0ec0a022967c3dd564268f61ff88f3bbe20dfc2e071 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/E9a04d751ad2c97c940e41020bbfc0f424b862a30a4bdf8f9c7dcd9ea866be7dScalarSchur/Variant72a9325710f2213a92c11009bfc7c23253a3d039e4710b7b450d5f2d00f42d3a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/E9a04d751ad2c97c940e41020bbfc0f424b862a30a4bdf8f9c7dcd9ea866be7dScalarSchur/Variant72a9325710f2213a92c11009bfc7c23253a3d039e4710b7b450d5f2d00f42d3a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
