# Verification target: Constructed Singular Reconstruction Consumer Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "019425eb42950705037014f504bb4fe5e07efb6c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstructionFixtures/Variantf3cfe95ed05389bc042e494fbebfad3ade4b648d435abbeef653ecbf08ef2dbc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstructedSingularReconstructionConsumerEdition2.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstructedSingularReconstructionConsumerEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `019425eb42950705037014f504bb4fe5e07efb6c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstructionFixtures/Variantf3cfe95ed05389bc042e494fbebfad3ade4b648d435abbeef653ecbf08ef2dbc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstructionFixtures/Variantf3cfe95ed05389bc042e494fbebfad3ade4b648d435abbeef653ecbf08ef2dbc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.MathematicalTooling.Coverage.SingularReconstruction` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.MathematicalTooling.Coverage.BethCatalogue` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BethTarget](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstructedSingularReconstructionConsumerEdition2.lean/declarations/bethtarget.md) | 20 | `declaration-track:a47a7983f3d1fd1758a67023ac3ec474906ec83770a1dcefc21d6898850b6d83` |
| 2 | `def` | [bethSmallFamily](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstructedSingularReconstructionConsumerEdition2.lean/declarations/bethsmallfamily.md) | 22 | `declaration-track:066fb1436a1b1130349b3ec07f51e34b2231b6de64141f6cab6e372c3820a69f` |
| 3 | `theorem` | [beth_omega_singular](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstructedSingularReconstructionConsumerEdition2.lean/declarations/beth-omega-singular.md) | 25 | `result-track:ba45f9b66cb80e360e4042ec09d39bf24e907138d84cf3abf28b606f6c4d765b` |
| 4 | `theorem` | [bethSmallFamily_covers_small](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstructedSingularReconstructionConsumerEdition2.lean/declarations/bethsmallfamily-covers-small.md) | 29 | `result-track:5d6f77f7e9eb5728af30c65d889d3a60cf16db3edd5d10c2e3ad9b9faf17fde5` |
| 5 | `theorem` | [beth_target_exact_reconstruction](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstructedSingularReconstructionConsumerEdition2.lean/declarations/beth-target-exact-reconstruction.md) | 43 | `result-track:6cbe26ea2ec604c18e4e8c7e22e66e1d6082febe299f163c055c9b0162cb12df` |
| 6 | `theorem` | [bethPrefix_family_properties](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstructedSingularReconstructionConsumerEdition2.lean/declarations/bethprefix-family-properties.md) | 56 | `result-track:0460ef16450255991947b8a86b7920f86272db657485f01f29561e92690697ed` |
| 7 | `theorem` | [bethPrefix_family_covers](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstructedSingularReconstructionConsumerEdition2.lean/declarations/bethprefix-family-covers.md) | 68 | `result-track:31292a28345221f756e54acdd40850803a9f269a3cf9cf9754348778eabc51e6` |
| 8 | `theorem` | [beth_prefix_singular_reconstruction](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ConstructedSingularReconstructionConsumerEdition2.lean/declarations/beth-prefix-singular-reconstruction.md) | 80 | `result-track:88f8d7f9ecfad4a9d867f0b55d67c8d544d17bcbbf8e3d986a6f9039dd7a7e21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=76a81de10f7b30302a9cbb6d7db8b390a22912c5b401e0f0f913b3deb429872b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstructionFixtures/Variantf3cfe95ed05389bc042e494fbebfad3ade4b648d435abbeef653ecbf08ef2dbc.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SingularReconstructionFixtures/Variantf3cfe95ed05389bc042e494fbebfad3ade4b648d435abbeef653ecbf08ef2dbc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
