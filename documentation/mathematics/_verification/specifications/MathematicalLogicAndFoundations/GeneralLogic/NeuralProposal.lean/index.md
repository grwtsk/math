# Verification target: Neural Proposal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bba13246058e731cb3854221fa846c98d5ffec3",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/NeuralProposal/Variantcf13b2f7cfabf4fbad82a799003d76592f3aed4a2e297db4ed3b9cc88b8051ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposal.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bba13246058e731cb3854221fa846c98d5ffec3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/NeuralProposal/Variantcf13b2f7cfabf4fbad82a799003d76592f3aed4a2e297db4ed3b9cc88b8051ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/NeuralProposal/Variantcf13b2f7cfabf4fbad82a799003d76592f3aed4a2e297db4ed3b9cc88b8051ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.Defs` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.Claim` — import line 2; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.WorldModel.AssumptionContext` — import line 3; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.WorldModel.Translation` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [NeuralProposalKind](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposal.lean/declarations/neuralproposalkind.md) | 18 | `declaration-track:d31c7886c58fe0b3a9aba5501ba92666d8675c4ddb12d8082d07ba80300cb5a7` |
| 2 | `structure` | [CalibratedScore](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposal.lean/declarations/calibratedscore.md) | 34 | `declaration-track:43f210c70326e210fd36c528cbf9b690fb4457895429d801d0c9552072816f85` |
| 3 | `structure` | [UncertaintyRecord](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposal.lean/declarations/uncertaintyrecord.md) | 39 | `declaration-track:e82a9fcf3702df77c0bd4305d890e06bc04dd0b9aaada0966144597a705e7e7a` |
| 4 | `structure` | [CheckerRoute](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposal.lean/declarations/checkerroute.md) | 46 | `declaration-track:df6a93e8b54755d85f9b1b379258db852dcb6b4a69721b6594370e10c3baff1c` |
| 5 | `def` | [CheckerRoute.Supports](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposal.lean/declarations/checkerroute-supports.md) | 54 | `declaration-track:9e742560e96c6e13b3d6ed374f88774aec6d3acfb37e8ca9d355de64c516c3ec` |
| 6 | `structure` | [NeuralProposal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposal.lean/declarations/neuralproposal.md) | 60 | `declaration-track:e6d5c65e5a9a1202b6575f30a19a202ed2eeef4cd12f77ecb375b2c6d11a8047` |
| 7 | `theorem` | [NeuralProposal.authority_is_external](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposal.lean/declarations/neuralproposal-authority-is-external.md) | 80 | `result-track:65e404783841833d4a48ea8005588deabbf1c83f64a1c8a1a51e1be0861ca306` |
| 8 | `theorem` | [neural_proposal_cannot_uniformly_certify](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposal.lean/declarations/neural-proposal-cannot-uniformly-certify.md) | 86 | `result-track:4ad149c9d186aeae87273bc6a787c5cd978d0809f3e1d0650ed8e34d005be79c` |
| 9 | `structure` | [DatasetLicense](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposal.lean/declarations/datasetlicense.md) | 94 | `declaration-track:a84f37900f45eeddfdbfcfc205ab5a6d81c587876b2577718c9142d28c58b918` |
| 10 | `inductive` | [DatasetProofStatus](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposal.lean/declarations/datasetproofstatus.md) | 99 | `declaration-track:f51715240913b10011211d41f68c9d524e0e1014bb1ab2b46fecae180febc704` |
| 11 | `inductive` | [NegativeExampleStatus](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposal.lean/declarations/negativeexamplestatus.md) | 107 | `declaration-track:0bb55352b3379d7abbe1dcb1863aaf17d6142970a5ec1601a108874f85abe5d3` |
| 12 | `inductive` | [DatasetGenerationMethod](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposal.lean/declarations/datasetgenerationmethod.md) | 114 | `declaration-track:d52dd63403235b66092b1562f5320f6d44a9e2ac506a0804ed9d72f834008bc0` |
| 13 | `structure` | [DatasetItem](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposal.lean/declarations/datasetitem.md) | 122 | `declaration-track:bfc3a300e4327045bbaf993b849a137f3a7efd25b046218e5f5cb4a49b9b33a7` |
| 14 | `def` | [DatasetItem.AuthorshipLabelValid](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposal.lean/declarations/datasetitem-authorshiplabelvalid.md) | 142 | `declaration-track:7eb3dd7af2523bf939adaf478b06992316de5749c18600ab83b5e1b7126a328a` |
| 15 | `inductive` | [NeuralAdvisoryComponent](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposal.lean/declarations/neuraladvisorycomponent.md) | 146 | `declaration-track:7110dc3b301c0e50f7fb412e98ee23845dfc943975d8ae7745f5fcad5c8f27e5` |
| 16 | `inductive` | [AdvisoryExecutionStatus](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposal.lean/declarations/advisoryexecutionstatus.md) | 155 | `declaration-track:20e17ae74bb26317734a86850e077326c3ae4dd1b628c308370485bda1f85bfa` |
| 17 | `structure` | [AdvisoryComponentRecord](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposal.lean/declarations/advisorycomponentrecord.md) | 161 | `declaration-track:650cd36ff4c5284bcecd769b05f75781bbcc84e391b2c1fce79d30cd25a0d8ec` |
| 18 | `structure` | [NeuralEvaluationPolicy](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposal.lean/declarations/neuralevaluationpolicy.md) | 170 | `declaration-track:d4424d8be6f93aab50d39d262d5072819511c0e7ba45b47056cd926464382226` |
| 19 | `structure` | [NeuralEvaluationReport](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposal.lean/declarations/neuralevaluationreport.md) | 184 | `declaration-track:7144f522cd35dba767f29c5b8216b9e81ab2d1d0beb922de5b3e019b4d028fc2` |
| 20 | `inductive` | [NeuralEvaluationRunStatus](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposal.lean/declarations/neuralevaluationrunstatus.md) | 200 | `declaration-track:8503af3b968d3178afabf8508b90b732c214d06eb8c56f5d96b7ea195188eb87` |
| 21 | `structure` | [NeuralEvaluationSubmission](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposal.lean/declarations/neuralevaluationsubmission.md) | 207 | `declaration-track:52b905d8b10b20a76392aad6cf85e544c9e10611d519b43ff428967fb36e0750` |
| 22 | `theorem` | [report_absent_when_not_run](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposal.lean/declarations/report-absent-when-not-run.md) | 217 | `result-track:720fba8748ba6fb6ce6ed4a9e5137a8c5dad44923faad4f3414b0849f51aa3fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c5a94654790245f382470fe1bacb5ee56f1d414b330f9dc2f1c8be22952a72b4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/NeuralProposal/Variantcf13b2f7cfabf4fbad82a799003d76592f3aed4a2e297db4ed3b9cc88b8051ea.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/NeuralProposal/Variantcf13b2f7cfabf4fbad82a799003d76592f3aed4a2e297db4ed3b9cc88b8051ea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
