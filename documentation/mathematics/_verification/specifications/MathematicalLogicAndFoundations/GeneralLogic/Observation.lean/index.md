# Verification target: Observation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1e3b2bcdba00028650d8aa11dc157178245742a",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/Variant0971b0d3752e524572ff1fafc53918403ac805892028ec5f6f90a0ca349776ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Observation.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Observation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1e3b2bcdba00028650d8aa11dc157178245742a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/Variant0971b0d3752e524572ff1fafc53918403ac805892028ec5f6f90a0ca349776ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/Variant0971b0d3752e524572ff1fafc53918403ac805892028ec5f6f90a0ca349776ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.ControlledPlane.Foundations` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ControlledObservation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Observation.lean/declarations/controlledobservation.md) | 8 | `declaration-track:57203e039ca6ad391d3861252ab6445fc5f01da6fd8afd53f34f7f0c5ee3788e` |
| 2 | `def` | [combinedObservation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Observation.lean/declarations/combinedobservation.md) | 16 | `declaration-track:b31ba2b8ebaa7644875f907a76213a563d331178f646eac12c8422fa6d6d536b` |
| 3 | `def` | [Separating](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Observation.lean/declarations/separating.md) | 23 | `declaration-track:764c2a87a45df2fd32a4d99b3ad0f27b5e6ac5160ffdc060cf170f32b3cbbb72` |
| 4 | `structure` | [LosslessDecoder](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Observation.lean/declarations/losslessdecoder.md) | 32 | `declaration-track:b539fbf9a02a53d09455c47b4ea7c96aaec5cb4f9a4b753897831b678c72316f` |
| 5 | `def` | [ControlledLossless](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Observation.lean/declarations/controlledlossless.md) | 43 | `declaration-track:e8bf2a3e2e13884a7a39fe22fb9911e87af1d8f959e588a90982cd0552bf3a53` |
| 6 | `theorem` | [separating_of_leftInverseDecoder](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Observation.lean/declarations/separating-of-leftinversedecoder.md) | 49 | `result-track:764d9f6e660b265b03de726f8a6d1f2c5609947961ec7aa9aa5101782fdd4e12` |
| 7 | `theorem` | [controlled_observation_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Observation.lean/declarations/controlled-observation-injective.md) | 62 | `result-track:830a7f4543fd13723875e09db1e9dfe937cb85e839c3a67436cd7d6a4a5e1aa3` |
| 8 | `structure` | [ControlTransitionData](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Observation.lean/declarations/controltransitiondata.md) | 73 | `declaration-track:fae1cfaee671c0da8d4b7065c05c2bede2e2d2bb81ccdf70352925475d87aec3` |
| 9 | `structure` | [DeterministicControlContract](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Observation.lean/declarations/deterministiccontrolcontract.md) | 83 | `declaration-track:c66957889e6384b4ff7a7836d7de04004fcb97b01b92b307ec3fbbf2b7c9047a` |
| 10 | `theorem` | [control_differs_at_distinct_collision](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Observation.lean/declarations/control-differs-at-distinct-collision.md) | 93 | `result-track:2577a0b80122bf09c8f1feab60d1c707cea01db4b66eb3dff9ab9a89c69f5d60` |
| 11 | `def` | [OperationHomomorphic](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Observation.lean/declarations/operationhomomorphic.md) | 105 | `declaration-track:48b7905e0889a7b737785e05ec31ebb69e340be9ac321fa903ba1b112a2ed9b0` |
| 12 | `def` | [decodeObserved](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Observation.lean/declarations/decodeobserved.md) | 115 | `declaration-track:dbc654697fac71bcd5ebfb043a963fc31fa7e4495f2fef7db551a351e178f75a` |
| 13 | `theorem` | [decode_operation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Observation.lean/declarations/decode-operation.md) | 122 | `result-track:996c5d3edb851dfccff48e51394a32353d71828fc275b73e5fc1f706ffc87a08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cfd210ac8c016c1553ed0daabdf6716c3e1a7d8f2aa6c74e30b82e0ce9e84fb0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/Variant0971b0d3752e524572ff1fafc53918403ac805892028ec5f6f90a0ca349776ce.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/Variant0971b0d3752e524572ff1fafc53918403ac805892028ec5f6f90a0ca349776ce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
