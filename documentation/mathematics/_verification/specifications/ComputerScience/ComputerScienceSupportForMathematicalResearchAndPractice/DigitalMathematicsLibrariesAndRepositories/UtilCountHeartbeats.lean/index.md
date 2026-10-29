# Verification target: Util Count Heartbeats

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "677e6962677f87071b4941fcf2f306b3486a20f6",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variantc054904b91de3dd99836913b935947f3bf374756491e5a3b43769da0cc5f7141.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilCountHeartbeats.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilCountHeartbeats.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `677e6962677f87071b4941fcf2f306b3486a20f6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variantc054904b91de3dd99836913b935947f3bf374756491e5a3b43769da0cc5f7141.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variantc054904b91de3dd99836913b935947f3bf374756491e5a3b43769da0cc5f7141.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Util.Heartbeats` — import line 7; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.TryThis` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [runTacForHeartbeats](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilCountHeartbeats.lean/declarations/runtacforheartbeats.md) | 35 | `declaration-track:a531616c8fecb385b60ca1e1926cc146a8fa313baf06bd4543a520b475a6b0cd` |
| 2 | `def` | [variation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilCountHeartbeats.lean/declarations/variation.md) | 46 | `declaration-track:f82855fd8e4733509432adf4352764b649a0665af4015cce680c13ffc8997f84` |
| 3 | `def` | [logVariation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilCountHeartbeats.lean/declarations/logvariation.md) | 60 | `declaration-track:01dc31cb79452d8fa1c5a8fd801cb919da0eea58aed9d475a7483710451bfbae` |
| 4 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilCountHeartbeats.lean/declarations/elab-source-edition-3.md) | 67 | `declaration-track:6bf21713884e271dc2eed41cc980a2a4b5d412b121f6799576f001350b36b1a1` |
| 5 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilCountHeartbeats.lean/declarations/elab-source-edition-4.md) | 74 | `declaration-track:9b9cb93260cb688f22a012ad8cb3d31f073462b895ef7462686fd12d397fd3ce` |
| 6 | `def` | [roundDownIf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilCountHeartbeats.lean/declarations/rounddownif.md) | 87 | `declaration-track:d4a98d4fc1a701a18f062015a7c2873c7814fc3872c05c2c1e210a72dd39e0e2` |
| 7 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilCountHeartbeats.lean/declarations/elab.md) | 113 | `declaration-track:1bdca258558d12837128576ab4db2bccb7333895c93ec2d3aab1f9be179822e4` |
| 8 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilCountHeartbeats.lean/declarations/elab-source-edition-5.md) | 137 | `declaration-track:c684d1cd7b70636893207ef10cb10f9c34529f690d94b4fe51ecf59144e32f02` |
| 9 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilCountHeartbeats.lean/declarations/elab-source-edition-2.md) | 141 | `declaration-track:43d9d17d623732ce6f0e296a2b78912fee1232302c15cc61611e94657c720b70` |
| 10 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilCountHeartbeats.lean/declarations/elab-source-edition-6.md) | 160 | `declaration-track:e53db3a01e4115197eb880374cbd3e19cb08f8eea1b5dd3af6048f5920822b73` |
| 11 | `def` | [elabForHeartbeats](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilCountHeartbeats.lean/declarations/elabforheartbeats.md) | 180 | `declaration-track:508d49606eb33f037ae70ad59b934af038bb9b938ad367256b90549d85847e27` |
| 12 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilCountHeartbeats.lean/declarations/elab-source-edition-7.md) | 198 | `declaration-track:e63aad0887ef39f1b2e81b39de798651f407bae25f0a43e1834d700d5d4c4862` |
| 13 | `register_option` | [linter.countHeartbeats](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilCountHeartbeats.lean/declarations/linter-countheartbeats.md) | 233 | `declaration-track:9c1969f1580e791ddf98d3258e228b570aa658ce635934d3dfde002e7b30e208` |
| 14 | `register_option` | [linter.countHeartbeatsApprox](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilCountHeartbeats.lean/declarations/linter-countheartbeatsapprox.md) | 242 | `declaration-track:6e6566654f430e4226158825615c190b255729a28b2222c08bcbb70f3fb8978f` |
| 15 | `def` | [countHeartbeatsLinter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilCountHeartbeats.lean/declarations/countheartbeatslinter.md) | 251 | `declaration-track:fdc4a449bfe3843f19c7073a8dc6ab8e708dc2fe56b2b991f769295629ba3f9d` |
| 16 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilCountHeartbeats.lean/declarations/initialize.md) | 271 | `declaration-track:65c4bb4649e65018b1b459eb2e403848f8e135f2cb634b948151b2bac6cc7dac` |
| 17 | `macro` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/UtilCountHeartbeats.lean/declarations/macro.md) | 274 | `declaration-track:4d9e56e63ad81ee6700ba9c1152b87756a0274e62e6fc405095b94b0ba9b0c11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a3ec932784f132399b557a3622d7ba987c6419ab2366de4ffea7d7340e94ac97 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variantc054904b91de3dd99836913b935947f3bf374756491e5a3b43769da0cc5f7141.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CountHeartbeats/Variantc054904b91de3dd99836913b935947f3bf374756491e5a3b43769da0cc5f7141.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
