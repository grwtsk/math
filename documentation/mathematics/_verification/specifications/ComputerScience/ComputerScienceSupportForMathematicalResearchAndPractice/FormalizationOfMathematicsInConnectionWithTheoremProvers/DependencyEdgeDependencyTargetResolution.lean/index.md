# Verification target: Dependency Edge Dependency Target Resolution

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f09749ceb0946e05135b9ce2b175f0dfb8728698",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DependencyEdge/Variantf9bbf260b22197c8e7ace6de5265fe2dbc172224ed02dd323a555cb0de46c7bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DependencyEdgeDependencyTargetResolution.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DependencyEdgeDependencyTargetResolution.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f09749ceb0946e05135b9ce2b175f0dfb8728698`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DependencyEdge/Variantf9bbf260b22197c8e7ace6de5265fe2dbc172224ed02dd323a555cb0de46c7bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DependencyEdge/Variantf9bbf260b22197c8e7ace6de5265fe2dbc172224ed02dd323a555cb0de46c7bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Extractor.Module` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Extractor.AuthorityElements.ExtractionAuthority` — import line 3; external provider; requires a separately pinned dependency.
- `Mathematics.Extractor.AuthorityElements.DependencyKind` — import line 4; external provider; requires a separately pinned dependency.
- `Mathematics.Extractor.Expr` — import line 5; external provider; requires a separately pinned dependency.
- `Mathematics.Extractor.SchemaElements.DependencyEdgeId` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Extractor.SchemaElements.DeclarationId` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [DependencyTargetResolution](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DependencyEdgeDependencyTargetResolution.lean/declarations/dependencytargetresolution.md) | 16 | `declaration-track:9a4f7c7c406042af09557bc47735d23fc9e618fd697ef6f2ccc9a0b1cc429ae4` |
| 2 | `structure` | [DependencyEdge](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DependencyEdgeDependencyTargetResolution.lean/declarations/dependencyedge.md) | 21 | `declaration-track:2b47d3748594cf565d4af02f01e422d2f80b85201ef124a5b651aab6c40fdfbd` |
| 3 | `def` | [IsLogical](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DependencyEdgeDependencyTargetResolution.lean/declarations/islogical.md) | 38 | `declaration-track:bef89e883bc69e5df00449c32305efcfbd9f73cb9d220c0f5b84eaf96afd2706` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1c3f9389fb4b0fbe1f628ffd9486983528a5c0bea57a5d517ecf29b32185bb1e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DependencyEdge/Variantf9bbf260b22197c8e7ace6de5265fe2dbc172224ed02dd323a555cb0de46c7bc.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DependencyEdge/Variantf9bbf260b22197c8e7ace6de5265fe2dbc172224ed02dd323a555cb0de46c7bc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
