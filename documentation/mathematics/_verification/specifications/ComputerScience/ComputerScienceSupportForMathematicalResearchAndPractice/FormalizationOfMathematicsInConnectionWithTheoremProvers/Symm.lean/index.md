# Verification target: Symm

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "636aa6099432bc53151ad7459dcc07028ff87c27",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symm/Variant7431fbe3977663f3eeb2995ebdd983e466fbc0f091a4e3fc9b8b0a0dbae55a72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Symm.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Symm.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `636aa6099432bc53151ad7459dcc07028ff87c27`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symm/Variant7431fbe3977663f3eeb2995ebdd983e466fbc0f091a4e3fc9b8b0a0dbae55a72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variant7431fbe3977663f3eeb2995ebdd983e466fbc0f091a4e3fc9b8b0a0dbae55a72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Tactic.Relation.Symm` — import line 1; external provider; requires a separately pinned dependency.
- `Std.Tactic.RCases` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [eq_symm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Symm.lean/declarations/eq-symm.md) | 8 | `declaration-track:87a732d003c1eac75d9d30dd0c0d8bd11d97c8be4b07ace23b83efb3ac74cc5e` |
| 2 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Symm.lean/declarations/example-source-edition-2.md) | 10 | `declaration-track:4a39557fe0135abf2cee1fed21bba353bac448ebb9137d87448554716d844af0` |
| 3 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Symm.lean/declarations/example.md) | 11 | `declaration-track:2b7ebda52565d7ecc20e9c0568e8f44f89cbd92af4b5e3db3531842a803cc4e0` |
| 4 | `def` | [sameParity](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Symm.lean/declarations/sameparity.md) | 13 | `declaration-track:6cb6d433ef7a3c9b0bb3e2a8e6e703c7160a793e46176352e7c3e7a15757f93a` |
| 5 | `def` | [sameParity_symm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Symm.lean/declarations/sameparity-symm.md) | 16 | `declaration-track:fd515e7eb328af898346fad611dde0d5d7349d2b720031ecec8d70c08008a0b8` |
| 6 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Symm.lean/declarations/example-source-edition-4.md) | 18 | `declaration-track:5fdb2cee749e6a7d4167cd465328a399c90b3320b049baba60b472f7bb61b7ba` |
| 7 | `def` | [MyEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Symm.lean/declarations/myeq.md) | 20 | `declaration-track:c218357ae8863934854dec545987ac23203ef7277f4a4afbc40aa8d18bf39b28` |
| 8 | `theorem` | [MyEq.symm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Symm.lean/declarations/myeq-symm.md) | 22 | `result-track:665e390418af33b5c6bb439ba69974a32347ce9ca417d92632a506514da53294` |
| 9 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Symm.lean/declarations/example-source-edition-3.md) | 26 | `declaration-track:51cdbe43c6f89a98a0f303dbb72e691229af64114994cc06775ef8499ad3fca8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b32fb5b4d2681634d6cfdca8eab1ef7d3654a7680981dddd94b7f0c7d68cbada -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Symm/Variant7431fbe3977663f3eeb2995ebdd983e466fbc0f091a4e3fc9b8b0a0dbae55a72.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SymM/Variant7431fbe3977663f3eeb2995ebdd983e466fbc0f091a4e3fc9b8b0a0dbae55a72.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
