# Verification target: Base Case Index Namespaced Base Case Derived Index

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47c2eef41d86e8dfd96d553b320e17624e0dbda1",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCaseIndex/Variant925072daa0f819208f7b89c7581dd30ef0d7f533ebfe8dbd16906e3ab538f0af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BaseCaseIndexNamespacedBaseCaseDerivedIndex.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BaseCaseIndexNamespacedBaseCaseDerivedIndex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47c2eef41d86e8dfd96d553b320e17624e0dbda1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCaseIndex/Variant925072daa0f819208f7b89c7581dd30ef0d7f533ebfe8dbd16906e3ab538f0af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCaseIndex/Variant925072daa0f819208f7b89c7581dd30ef0d7f533ebfe8dbd16906e3ab538f0af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.DerivedSheaf.BaseCaseSectionComplex` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.DerivedSheaf.DerivedIndex` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BaseCaseDerivedIndex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BaseCaseIndexNamespacedBaseCaseDerivedIndex.lean/declarations/basecasederivedindex.md) | 27 | `declaration-track:2142299bbc3074d1d2fe94fb711c24e11f5298a8dc75340f13554b63489a926f` |
| 2 | `theorem` | [base_case_derived_index_euler_nonzero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BaseCaseIndexNamespacedBaseCaseDerivedIndex.lean/declarations/base-case-derived-index-euler-nonzero.md) | 36 | `result-track:9e5e6af06ed53beeb3a790f7b2de6ad9593075eb54554192f714fac23b0be138` |
| 3 | `theorem` | [base_case_derived_index_same_complex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BaseCaseIndexNamespacedBaseCaseDerivedIndex.lean/declarations/base-case-derived-index-same-complex.md) | 44 | `result-track:5ebec91023b2153f5b2c78fa58a11a13b0036c630029c4f56dafa92dd8d9ad25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73f08c0e43881a665c1e60af748ea429cb247f5eaf613f48cc1538f3ca1f9e15 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCaseIndex/Variant925072daa0f819208f7b89c7581dd30ef0d7f533ebfe8dbd16906e3ab538f0af.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCaseIndex/Variant925072daa0f819208f7b89c7581dd30ef0d7f533ebfe8dbd16906e3ab538f0af.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
