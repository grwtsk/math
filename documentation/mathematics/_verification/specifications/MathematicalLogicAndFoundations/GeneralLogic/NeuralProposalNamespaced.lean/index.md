# Verification target: Neural Proposal Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42d2b6e6a83d00adc22b0afffb3ba262e131bb0e",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/NeuralProposal/Variant642d22802e209dc9c434150c7012638171bf1a50e7ee505bc99965e91424f974.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposalNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposalNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42d2b6e6a83d00adc22b0afffb3ba262e131bb0e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/NeuralProposal/Variant642d22802e209dc9c434150c7012638171bf1a50e7ee505bc99965e91424f974.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/NeuralProposal/Variant642d22802e209dc9c434150c7012638171bf1a50e7ee505bc99965e91424f974.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.Claim` — import line 7; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.WorldModel.AssumptionContext` — import line 8; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.WorldModel.Translation` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [NeuralProposalKind](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposalNamespaced.lean/declarations/neuralproposalkind.md) | 26 | `declaration-track:94a739394f21ee53bc05c04fd87d0f3b2e8bdb9724e7d8980d5177e65a25ccbf` |
| 2 | `structure` | [CalibratedScore](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposalNamespaced.lean/declarations/calibratedscore.md) | 42 | `declaration-track:b2a1566cededa8c906deb7211e40deb86eca3bbe34db19db8a9cfeca9f599ca9` |
| 3 | `structure` | [UncertaintyRecord](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposalNamespaced.lean/declarations/uncertaintyrecord.md) | 47 | `declaration-track:87e191c79c575b0433fe9399e83a7f042d1e71c0d85cb33b94261831adf4d390` |
| 4 | `structure` | [CheckerRoute](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposalNamespaced.lean/declarations/checkerroute.md) | 54 | `declaration-track:de0d0ab66f9dfdb652f87eeaa620f12e1fd21cdd739871954a7bbc9cc2b5e730` |
| 5 | `def` | [CheckerRoute.Supports](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposalNamespaced.lean/declarations/checkerroute-supports.md) | 62 | `declaration-track:cc5a6a56640d279333df4fb03a4730a06f59e77cb820647e1bfcf78a401a7899` |
| 6 | `structure` | [NeuralProposal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposalNamespaced.lean/declarations/neuralproposal.md) | 68 | `declaration-track:b116cdda7b8df055179fb2281291dd5f9a9a4246f7cb90dce84311172cc799c9` |
| 7 | `theorem` | [NeuralProposal.authority_is_external](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposalNamespaced.lean/declarations/neuralproposal-authority-is-external.md) | 88 | `result-track:e87e85ee1c70d9dcd0709f761981463a4b3afd3e1c3cf436584a38e3d559063d` |
| 8 | `theorem` | [neural_proposal_cannot_uniformly_certify](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposalNamespaced.lean/declarations/neural-proposal-cannot-uniformly-certify.md) | 94 | `result-track:ae0299a0b7f8f72d46a6ebe0063513849799b47d60f41171a47404d7b31177f2` |
| 9 | `structure` | [DatasetLicense](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposalNamespaced.lean/declarations/datasetlicense.md) | 102 | `declaration-track:15dea1684eaee1de78ee9b2144dac35d9d27331fac14cea020e088aa58b7a586` |
| 10 | `inductive` | [DatasetProofStatus](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposalNamespaced.lean/declarations/datasetproofstatus.md) | 107 | `declaration-track:0fd29db1b69299ba281adcd51cf38ec75937d647647f4dd9c5abd72cbcb2d6f9` |
| 11 | `inductive` | [NegativeExampleStatus](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposalNamespaced.lean/declarations/negativeexamplestatus.md) | 115 | `declaration-track:7df092bfb40513a31277c0cff6391f35f642577898087e699f451d0d0f65e7fc` |
| 12 | `inductive` | [DatasetGenerationMethod](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposalNamespaced.lean/declarations/datasetgenerationmethod.md) | 122 | `declaration-track:30ff97c9e84ccf093f3ad72d9ac4bd2637e6f8edee095a4f565aa4bcdfb68b6e` |
| 13 | `structure` | [DatasetItem](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposalNamespaced.lean/declarations/datasetitem.md) | 130 | `declaration-track:5aada70d37c76b01c6061b806b43d12ba9acb2d2670b3574f47181984a893a42` |
| 14 | `def` | [DatasetItem.AuthorshipLabelValid](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposalNamespaced.lean/declarations/datasetitem-authorshiplabelvalid.md) | 150 | `declaration-track:56683e02fb149fe2809c822de02db27a6974f0b749ebdadafa9ed251f9c58f68` |
| 15 | `inductive` | [NeuralAdvisoryComponent](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposalNamespaced.lean/declarations/neuraladvisorycomponent.md) | 154 | `declaration-track:01846412825ec3883433d992bf01194bc87f99d1b090e84d17b371b9fab4dfe1` |
| 16 | `inductive` | [AdvisoryExecutionStatus](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposalNamespaced.lean/declarations/advisoryexecutionstatus.md) | 163 | `declaration-track:d37da46b32354233ba1d0d98961115491bfb157d466d003da1c2ab6ccc685f18` |
| 17 | `structure` | [AdvisoryComponentRecord](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposalNamespaced.lean/declarations/advisorycomponentrecord.md) | 169 | `declaration-track:5404c91fa65a5663eff71f75c5adbba0629f6646ca892b3e4c9626d008363feb` |
| 18 | `structure` | [NeuralEvaluationPolicy](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposalNamespaced.lean/declarations/neuralevaluationpolicy.md) | 178 | `declaration-track:50190dd750d7d280d543dc86e34a5acf3fbe2c7442dc1585cf388faf7954d36e` |
| 19 | `structure` | [NeuralEvaluationReport](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposalNamespaced.lean/declarations/neuralevaluationreport.md) | 192 | `declaration-track:1693fb8520a3825a12931240c1440e8a5651166b30427fdc040c14bd2aa7cd75` |
| 20 | `inductive` | [NeuralEvaluationRunStatus](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposalNamespaced.lean/declarations/neuralevaluationrunstatus.md) | 208 | `declaration-track:c8c3e7d51330f0e59db381b35849dbf8d6c3d6f491c4b54cc44e17707b3720b2` |
| 21 | `structure` | [NeuralEvaluationSubmission](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposalNamespaced.lean/declarations/neuralevaluationsubmission.md) | 215 | `declaration-track:6af7f5257147986c42ffbb9a1370a5cf6e66fb1d1d5210170693f4e1fb3da0ae` |
| 22 | `theorem` | [report_absent_when_not_run](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NeuralProposalNamespaced.lean/declarations/report-absent-when-not-run.md) | 225 | `result-track:161d5f49f5ddeecca628c89c8977163b62c334c6ce648294ba6c64298c372b7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b91a1b4df9c3275801801f53c28712e90348ee3e7bb34fbf80980415ca9030c8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/NeuralProposal/Variant642d22802e209dc9c434150c7012638171bf1a50e7ee505bc99965e91424f974.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/NeuralProposal/Variant642d22802e209dc9c434150c7012638171bf1a50e7ee505bc99965e91424f974.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
