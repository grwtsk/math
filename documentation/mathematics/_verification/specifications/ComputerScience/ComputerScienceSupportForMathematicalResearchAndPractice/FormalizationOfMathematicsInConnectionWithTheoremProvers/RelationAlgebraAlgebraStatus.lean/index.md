# Verification target: Relation Algebra Algebra Status

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51227a30022b640507e9bb7a3b8824b1fb525f07",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelationAlgebra/Varianta7bb3b1ea22d754299633caed851f254206de8dc8caf685c5cad4e06d7261c23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RelationAlgebraAlgebraStatus.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RelationAlgebraAlgebraStatus.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51227a30022b640507e9bb7a3b8824b1fb525f07`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelationAlgebra/Varianta7bb3b1ea22d754299633caed851f254206de8dc8caf685c5cad4e06d7261c23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelationAlgebra/Varianta7bb3b1ea22d754299633caed851f254206de8dc8caf685c5cad4e06d7261c23.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemanticTokenization.IdiomConceptNetwork` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AlgebraStatus](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RelationAlgebraAlgebraStatus.lean/declarations/algebrastatus.md) | 7 | `declaration-track:8fd2ced85ce77c7af1fea92171cea0b3f4301895bd2f075603cd4e937ce19033` |
| 2 | `structure` | [RelationAlgebra](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RelationAlgebraAlgebraStatus.lean/declarations/relationalgebra.md) | 14 | `declaration-track:678b012ff36cd06525274717c12088ae500d1e19eb55bab936e841cc5d9ce17b` |
| 3 | `def` | [semanticRelationAlgebra](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RelationAlgebraAlgebraStatus.lean/declarations/semanticrelationalgebra.md) | 20 | `declaration-track:17a3314a4712cce90d8a9591aca3b535721210a65be7349fdc8fbe91ece312d6` |
| 4 | `theorem` | [near_synonym_is_not_transitive](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RelationAlgebraAlgebraStatus.lean/declarations/near-synonym-is-not-transitive.md) | 33 | `result-track:def6bdeddb42fe2219f8da3258aa04febd4c7f4f175878363398131ae5a3a48a` |
| 5 | `structure` | [TransportedSemanticEdge](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RelationAlgebraAlgebraStatus.lean/declarations/transportedsemanticedge.md) | 38 | `declaration-track:82ab30086e0e585aeb268db35b1805e92ebbc8379fc4ab47db1cf32e58373007` |
| 6 | `theorem` | [context_relation_requires_transport](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RelationAlgebraAlgebraStatus.lean/declarations/context-relation-requires-transport.md) | 45 | `result-track:1aec40bb952a5437818050642dd5454ea5997053f7d46a15c63b8fcd0aaf6b9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6adad307b06f6acbdfc01984591e694cfca79f5b18b5576d5ae26a0d612533c5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelationAlgebra/Varianta7bb3b1ea22d754299633caed851f254206de8dc8caf685c5cad4e06d7261c23.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RelationAlgebra/Varianta7bb3b1ea22d754299633caed851f254206de8dc8caf685c5cad4e06d7261c23.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
