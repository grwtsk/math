# Verification target: Scalar Schur Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51b6c76e1fbdfdaefd6f1aa72439b2406b764dc8",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant2d56cd30d722f2b4dc85c05204456b3325084c0294b6cf047072c95b7795bad3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ScalarSchurNamespacedEdition2.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ScalarSchurNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51b6c76e1fbdfdaefd6f1aa72439b2406b764dc8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant2d56cd30d722f2b4dc85c05204456b3325084c0294b6cf047072c95b7795bad3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant2d56cd30d722f2b4dc85c05204456b3325084c0294b6cf047072c95b7795bad3.lean.json)

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
| 1 | `def` | [scalarBlockForm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ScalarSchurNamespacedEdition2.lean/declarations/scalarblockform.md) | 36 | `declaration-track:074decd5f1c2b8e70028b707c8f7f0f3ea65172b33a986179ed345af48acf428` |
| 2 | `def` | [scalarBlockPositiveForm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ScalarSchurNamespacedEdition2.lean/declarations/scalarblockpositiveform.md) | 40 | `declaration-track:618be29b8c7b12ba5cf7494bb06a2f7d2d019c019b48ef62b2991988875667eb` |
| 3 | `def` | [scalarProvenanceProject](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ScalarSchurNamespacedEdition2.lean/declarations/scalarprovenanceproject.md) | 62 | `declaration-track:b00c4f91649d4462013d9e2d570a094b2a15d46d5756bf1b6170cc24232642a3` |
| 4 | `theorem` | [scalarProvenanceProject_apply](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ScalarSchurNamespacedEdition2.lean/declarations/scalarprovenanceproject-apply.md) | 72 | `result-track:98eca414a9938cff3f38b6d203deab562d9f42a0266aa70c99c2eb60a3cc7d96` |
| 5 | `theorem` | [scalarProvenanceProject_idempotent](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ScalarSchurNamespacedEdition2.lean/declarations/scalarprovenanceproject-idempotent.md) | 77 | `result-track:0088abb1e8b1bcc17347898324db80c1ccda0f2d6a542ede03c3de0e2f6eee60` |
| 6 | `theorem` | [scalarProvenanceProject_orthogonal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ScalarSchurNamespacedEdition2.lean/declarations/scalarprovenanceproject-orthogonal.md) | 84 | `result-track:259f277b0c3ae89dfb805050a16c32afff99bea2a841940c4d15e4c7738fb096` |
| 7 | `def` | [scalarProvenanceProjector](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ScalarSchurNamespacedEdition2.lean/declarations/scalarprovenanceprojector.md) | 94 | `declaration-track:b46fd066bf49738b32075a545710840df63650b9ed2370e86fe8c325fcc25a14` |
| 8 | `theorem` | [scalarProvenanceResidual_apply](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ScalarSchurNamespacedEdition2.lean/declarations/scalarprovenanceresidual-apply.md) | 104 | `result-track:5ae8ef88fb53cad07084343d7248ae408c25352d7438f3f20638d6f700a0bf76` |
| 9 | `theorem` | [scalarResidualForm_eq_schur](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ScalarSchurNamespacedEdition2.lean/declarations/scalarresidualform-eq-schur.md) | 116 | `result-track:60c065b49d81148f96f8da46cee822989683e545b8e2f3e14aca71461a1bf7b4` |
| 10 | `theorem` | [scalar_schur_complement_nonnegative](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ScalarSchurNamespacedEdition2.lean/declarations/scalar-schur-complement-nonnegative.md) | 133 | `result-track:2c5d8333ac04e40e8dc4132f0b2b00a9fe68cb78cc70fca77398c10e174e2489` |
| 11 | `theorem` | [scalar_quadratic_schur_decomposition](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ScalarSchurNamespacedEdition2.lean/declarations/scalar-quadratic-schur-decomposition.md) | 145 | `result-track:b1495835325a7e11d4fe2e56bc1a85274bca2e5a4316ba8b8676ca9f95158bf4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=87e218f6f78717ebc260897a3904d0188eb90fe90b4a5fa3e35ee63ceaeaa57e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant2d56cd30d722f2b4dc85c05204456b3325084c0294b6cf047072c95b7795bad3.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScalarSchur/Variant2d56cd30d722f2b4dc85c05204456b3325084c0294b6cf047072c95b7795bad3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
