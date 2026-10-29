# Verification target: Cancellation Context Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b5ecc29c3f8cac782895de0c83572e43b06e618",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationContext/Variantb1338b6e333adba2059b86ffcb1b405b56bba9d098069cf159ef7e0e00be010a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CancellationContextNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CancellationContextNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b5ecc29c3f8cac782895de0c83572e43b06e618`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationContext/Variantb1338b6e333adba2059b86ffcb1b405b56bba9d098069cf159ef7e0e00be010a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationContext/Variantb1338b6e333adba2059b86ffcb1b405b56bba9d098069cf159ef7e0e00be010a.lean.json)

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
| 1 | `structure` | [CancellationContext.State](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CancellationContextNamespacedPublic.lean/declarations/cancellationcontext-state.md) | 30 | `declaration-track:05bbacce573a56f1b62f659cd238a57900f13a9eb4a2d7e1c57ce617adf1c4b9` |
| 2 | `structure` | [CancellationContext](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CancellationContextNamespacedPublic.lean/declarations/cancellationcontext.md) | 45 | `declaration-track:d0792928359373fc961882020b8f44c0896c34d71b0fb10c5438698bcc7234d5` |
| 3 | `def` | [new](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CancellationContextNamespacedPublic.lean/declarations/new.md) | 55 | `declaration-track:2d0d1c4deb879353c6439c6d09fa6f2abd5d3d27d96378b1b05ed9dfeffaf597` |
| 4 | `def` | [fork](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CancellationContextNamespacedPublic.lean/declarations/fork.md) | 67 | `declaration-track:26176d0854236fe8fb50592e1c49695cf0684ca9c0432392e6c19f84ebc97283` |
| 5 | `def` | [cancelChildren](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CancellationContextNamespacedPublic.lean/declarations/cancelchildren.md) | 88 | `declaration-track:ce55c94194c917bcea1c3d99abcff6c352f3af663ccb8a2f6c93bbfdab1e030a` |
| 6 | `def` | [cancel](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CancellationContextNamespacedPublic.lean/declarations/cancel.md) | 104 | `declaration-track:ee6f6d33d6cbee9616f762614a68cc899323da08e6830a2399360372f5a5738a` |
| 7 | `def` | [isCancelled](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CancellationContextNamespacedPublic.lean/declarations/iscancelled.md) | 117 | `declaration-track:6c5a63ff3cfde47fc7eed86141fa6abf95385d9a8afe59c9757d887bc1737c94` |
| 8 | `def` | [getCancellationReason](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CancellationContextNamespacedPublic.lean/declarations/getcancellationreason.md) | 124 | `declaration-track:0b39b24f77d88549760e35723d6fed105daa7dbb6fbe1c8ac2059444c358dbd8` |
| 9 | `def` | [done](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CancellationContextNamespacedPublic.lean/declarations/done.md) | 131 | `declaration-track:6c88a4e1b3c6050ae737a4958a5a1a8895a2e718efa9d4f68264937df51c11bb` |
| 10 | `def` | [doneSelector](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CancellationContextNamespacedPublic.lean/declarations/doneselector.md) | 138 | `declaration-track:0bb6f1d6485e195b1f478fec0214531bd0078f493b618f16bdaef2f973d9c894` |
| 11 | `def` | [countAliveTokensRec](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CancellationContextNamespacedPublic.lean/declarations/countalivetokensrec.md) | 141 | `declaration-track:31d60a4e33cdac37a717d29398bf9e30495607e1674cbd13ebbaaeb6d50d9cd8` |
| 12 | `def` | [countAliveTokens](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CancellationContextNamespacedPublic.lean/declarations/countalivetokens.md) | 150 | `declaration-track:720783b57c1a55d943a0cc60e3299049770ccc91c1d0ee76c1e1c27652ef917d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=196eb388d27530e1728d2f062c3a8170a09c7912137d1007ee48a52c8be5de4e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationContext/Variantb1338b6e333adba2059b86ffcb1b405b56bba9d098069cf159ef7e0e00be010a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CancellationContext/Variantb1338b6e333adba2059b86ffcb1b405b56bba9d098069cf159ef7e0e00be010a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
