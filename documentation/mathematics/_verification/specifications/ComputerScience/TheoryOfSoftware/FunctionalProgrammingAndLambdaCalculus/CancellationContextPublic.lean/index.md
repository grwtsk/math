# Verification target: Cancellation Context Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a3c710b68077c459790e88dceed38c396a458ec",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationContext/Variant83ea4f7e5ea604ff0f44c04a6a57b6c1ecb0304ed37d15963df147742f5435cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CancellationContextPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CancellationContextPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a3c710b68077c459790e88dceed38c396a458ec`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationContext/Variant83ea4f7e5ea604ff0f44c04a6a57b6c1ecb0304ed37d15963df147742f5435cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationContext/Variant83ea4f7e5ea604ff0f44c04a6a57b6c1ecb0304ed37d15963df147742f5435cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CancellationContext.State](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CancellationContextPublic.lean/declarations/cancellationcontext-state.md) | 22 | `declaration-track:1304c291a7aae9221ffe7f7d444035b1d32171b9a5182d13d8879c13fb202562` |
| 2 | `structure` | [CancellationContext](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CancellationContextPublic.lean/declarations/cancellationcontext.md) | 37 | `declaration-track:c794675e76968dec874b3a9b226426177da966f7e052d187b121df681052eb40` |
| 3 | `def` | [new](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CancellationContextPublic.lean/declarations/new.md) | 47 | `declaration-track:41b44fad28b5c99002d22ab603b7a1304a0ecca6307f725ab636d179cd9cf640` |
| 4 | `def` | [fork](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CancellationContextPublic.lean/declarations/fork.md) | 59 | `declaration-track:56c4336e5014c969e94ea7d4e993a997b023d9f81300cca21e6a2eb55b9fb55c` |
| 5 | `def` | [cancelChildren](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CancellationContextPublic.lean/declarations/cancelchildren.md) | 80 | `declaration-track:9a7d5b4030ed56a8bfd2680b9607768c2378ca352cd35864b95b7639105f96b1` |
| 6 | `def` | [cancel](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CancellationContextPublic.lean/declarations/cancel.md) | 96 | `declaration-track:34ef7403fce2c51db4fc5284e383e0f286f58b3d0d60d8fca7ce4f7d5f597ea4` |
| 7 | `def` | [isCancelled](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CancellationContextPublic.lean/declarations/iscancelled.md) | 109 | `declaration-track:9fc701d9a09f8da6351af6a57b7023ae7ab7c802b90eaa8ed68548ae927c4c9b` |
| 8 | `def` | [getCancellationReason](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CancellationContextPublic.lean/declarations/getcancellationreason.md) | 116 | `declaration-track:93bc18e31a8acb3fa147f4bb375bf80fb113f03a61ea95809398b0c1506d266d` |
| 9 | `def` | [done](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CancellationContextPublic.lean/declarations/done.md) | 123 | `declaration-track:9342e8d0f63b283a5ad178f4665a56a49182efcec3f600573c777f7480da6dc1` |
| 10 | `def` | [doneSelector](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CancellationContextPublic.lean/declarations/doneselector.md) | 130 | `declaration-track:da39687a47bcaae3f404394daeb06ed60f21538d36aa84dda943d00fd1f9d8f5` |
| 11 | `def` | [countAliveTokensRec](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CancellationContextPublic.lean/declarations/countalivetokensrec.md) | 133 | `declaration-track:45d629c00b401a22ba76e1482b35ac4dbf32ab22d401c7cc46d96310445b61e5` |
| 12 | `def` | [countAliveTokens](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CancellationContextPublic.lean/declarations/countalivetokens.md) | 142 | `declaration-track:1b79a953a21058a0691807681da1cf452c7b7eff4322d7729ab8411ad2e001dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c9cfe70f5e541549a2b3b90938e931e0dd4106e826e689b1603b8a9ee9e2038 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationContext/Variant83ea4f7e5ea604ff0f44c04a6a57b6c1ecb0304ed37d15963df147742f5435cd.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationContext/Variant83ea4f7e5ea604ff0f44c04a6a57b6c1ecb0304ed37d15963df147742f5435cd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
