# Verification target: GRWTSK.DynamicalSystems.TransitionSystems.AnchoredVerificationReachability

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b08f7bf9e8ed2ebc027a075b7c390c1611cf86db",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DynamicalSystems/TransitionSystems/AnchoredVerificationReachability.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DynamicalSystemsAndErgodicTheory/AnchoredVerificationReachability.lean/index.md) · [Full source](../../../../DynamicalSystemsAndErgodicTheory/AnchoredVerificationReachability.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b08f7bf9e8ed2ebc027a075b7c390c1611cf86db`.

Source path: `GRWTSK/DynamicalSystems/TransitionSystems/AnchoredVerificationReachability.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DynamicalSystems/TransitionSystems/AnchoredVerificationReachability.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.Certificates.AnchoredBatchVerification`](../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredBatchVerification.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Logic.Certificates.AnchoredDependencyRevision`](../../../../MathematicalLogicAndFoundations/GeneralLogic/AnchoredDependencyRevision.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ReplayWorkflow](../../../../DynamicalSystemsAndErgodicTheory/AnchoredVerificationReachability.lean/declarations/replayworkflow.md) | 40 | `declaration-track:a92d3622e7536e08fe291459c56540e7c038585adb83aa92155d758353950741` |
| 2 | `theorem` | [replay_workflow_safe](../../../../DynamicalSystemsAndErgodicTheory/AnchoredVerificationReachability.lean/declarations/replay-workflow-safe.md) | 54 | `result-track:c419ee19aeb39ddceaeb0d0c6e19e63ba4870a25d9b9eebec93a66bb89dccf1c` |
| 3 | `theorem` | [replay_workflow_issued_preserved](../../../../DynamicalSystemsAndErgodicTheory/AnchoredVerificationReachability.lean/declarations/replay-workflow-issued-preserved.md) | 65 | `result-track:48b91c1af602558a07afa87487cc5c6069ca30c081313c9d74f55844c5b92a35` |
| 4 | `theorem` | [replay_workflow_global_archive_preserved](../../../../DynamicalSystemsAndErgodicTheory/AnchoredVerificationReachability.lean/declarations/replay-workflow-global-archive-preserved.md) | 78 | `result-track:549b33201e8433dc66c0867a85fd840039e847fe1c92a0b9804ff0f824943f6a` |
| 5 | `theorem` | [replay_workflow_archive_prefix](../../../../DynamicalSystemsAndErgodicTheory/AnchoredVerificationReachability.lean/declarations/replay-workflow-archive-prefix.md) | 90 | `result-track:86aabf07074cb7ba41963b501c2936dc2de42dd45591cffebef3aacb50535001` |
| 6 | `theorem` | [replay_workflow_receipts_preserved](../../../../DynamicalSystemsAndErgodicTheory/AnchoredVerificationReachability.lean/declarations/replay-workflow-receipts-preserved.md) | 103 | `result-track:084b0cb87da46472f194be072d7658b7e863ad8c71b8850d9511edf9728f85e1` |
| 7 | `theorem` | [replay_workflow_correction_prefix](../../../../DynamicalSystemsAndErgodicTheory/AnchoredVerificationReachability.lean/declarations/replay-workflow-correction-prefix.md) | 116 | `result-track:841fb0366756c45e7010a5f36a4bd730420245b07018b9c91c4442bc57ccdb02` |
| 8 | `theorem` | [replay_workflow_obligation_retained](../../../../DynamicalSystemsAndErgodicTheory/AnchoredVerificationReachability.lean/declarations/replay-workflow-obligation-retained.md) | 133 | `result-track:0ae2c0c944548a6639fcbc3beeb6c0e71e208ccf74adc08de582b1d5e86d1e2d` |
| 9 | `theorem` | [replay_workflow_prior_status_accounted](../../../../DynamicalSystemsAndErgodicTheory/AnchoredVerificationReachability.lean/declarations/replay-workflow-prior-status-accounted.md) | 144 | `result-track:fe4618f356e95ee6f7164f17d7f610e3f8c1558e11d43c4fa5307ab71c21b894` |
| 10 | `theorem` | [replay_workflow_verified_target](../../../../DynamicalSystemsAndErgodicTheory/AnchoredVerificationReachability.lean/declarations/replay-workflow-verified-target.md) | 156 | `result-track:a54113eb5b149094287d253a2b0b78fad056597972f25bf74a048e0343428d2d` |
| 11 | `theorem` | [replay_workflow_verified_to_terminal](../../../../DynamicalSystemsAndErgodicTheory/AnchoredVerificationReachability.lean/declarations/replay-workflow-verified-to-terminal.md) | 165 | `result-track:1eb9934691968ac4eff0ba8d3cbef43927458140d149db6d96a5c218993b77a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c5eae67c9066fe386920757c3e40a6b2213302fa5a0ed5d131db783f117c603f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/DynamicalSystems/TransitionSystems/AnchoredVerificationReachability.lean","GRWTSK/_verification/specifications/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/AnchoredVerificationReachability.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
