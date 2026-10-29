# Verification target: Continuous Continuity Certificate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2596162afc09af4da1cc682190952ccb5dfbbcd7",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuous/Varianta0170dc2be99a1c61168f1ea9a8c6cf05151ff4e721c666bc898270d8775d29d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContinuousContinuityCertificate.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContinuousContinuityCertificate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2596162afc09af4da1cc682190952ccb5dfbbcd7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuous/Varianta0170dc2be99a1c61168f1ea9a8c6cf05151ff4e721c666bc898270d8775d29d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuous/Varianta0170dc2be99a1c61168f1ea9a8c6cf05151ff4e721c666bc898270d8775d29d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Logic.Structures` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuityCertificate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContinuousContinuityCertificate.lean/declarations/continuitycertificate.md) | 7 | `declaration-track:5044dd7f1e574b0934cbbe0407fb181835658a2f149c5b2b2d072b62299029c7` |
| 2 | `structure` | [ContinuousKnowledgeLogicBridge](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContinuousContinuityCertificate.lean/declarations/continuousknowledgelogicbridge.md) | 17 | `declaration-track:da32a8a90b20bbaa54261d11292f02224840667b7b7aed0a8a2852fe13f1c50e` |
| 3 | `theorem` | [ContinuousKnowledgeLogicBridge.injective](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContinuousContinuityCertificate.lean/declarations/continuousknowledgelogicbridge-injective.md) | 34 | `result-track:85607482a0d0ba2ea4a467da48c0cc82d9ea7be4fc12ed0e80d8b9e0b42b65bc` |
| 4 | `theorem` | [ContinuousKnowledgeLogicBridge.surjective](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContinuousContinuityCertificate.lean/declarations/continuousknowledgelogicbridge-surjective.md) | 44 | `result-track:5251ab060dd6ed08f8393e8921b8db36903142e0d076ad42a696035279c055ca` |
| 5 | `theorem` | [ContinuousKnowledgeLogicBridge.bijective](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContinuousContinuityCertificate.lean/declarations/continuousknowledgelogicbridge-bijective.md) | 51 | `result-track:9635cf6cd9e2c7bb39543db5c85afac4eda60c9adf0166e0f18a9b029cfff628` |
| 6 | `structure` | [ThinkContinuousBijectionCertificate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContinuousContinuityCertificate.lean/declarations/thinkcontinuousbijectioncertificate.md) | 58 | `declaration-track:e6d86afe76b0d9348146ea25f7c5b7518bc70ea14f614642e244bc9c9a51a4d8` |
| 7 | `theorem` | [ThinkContinuousBijectionCertificate.sound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ContinuousContinuityCertificate.lean/declarations/thinkcontinuousbijectioncertificate-sound.md) | 71 | `result-track:eb8872867aa34003db34bf688ad786da6bf7a1b16aef58753d2fe68264b6df80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=01cce639c2342977523a1f2c0775a4c7bc785cc0e942a7eca589ce3d9af53372 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuous/Varianta0170dc2be99a1c61168f1ea9a8c6cf05151ff4e721c666bc898270d8775d29d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Continuous/Varianta0170dc2be99a1c61168f1ea9a8c6cf05151ff4e721c666bc898270d8775d29d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
