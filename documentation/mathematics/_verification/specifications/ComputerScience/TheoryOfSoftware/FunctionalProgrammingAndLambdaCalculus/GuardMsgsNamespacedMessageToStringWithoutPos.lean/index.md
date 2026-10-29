# Verification target: Guard Msgs Namespaced Message To String Without Pos

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ab77092545fa1ea57f37c3aff587a942fce34c6",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variante740bd7a62832b2bd314e4a807ac2673e5dd593c625dfd5f453854e25f4da4a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GuardMsgsNamespacedMessageToStringWithoutPos.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GuardMsgsNamespacedMessageToStringWithoutPos.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ab77092545fa1ea57f37c3aff587a942fce34c6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variante740bd7a62832b2bd314e4a807ac2673e5dd593c625dfd5f453854e25f4da4a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variante740bd7a62832b2bd314e4a807ac2673e5dd593c625dfd5f453854e25f4da4a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Command` — import line 11; external provider; requires a separately pinned dependency.
- `Std.CodeAction.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Std.Lean.Position` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GuardMsgsNamespacedMessageToStringWithoutPos.lean/declarations/syntax.md) | 29 | `declaration-track:2340eb76e1b1b532b1542ca2aa6a5ae164658832fef7460128a9c8828d7b0cab` |
| 2 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GuardMsgsNamespacedMessageToStringWithoutPos.lean/declarations/syntax-source-edition-2.md) | 32 | `declaration-track:3fc2696ffc2ed635fdf2583cb0be1458c82249ae67e05bc097f72831ee1c6cc3` |
| 3 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GuardMsgsNamespacedMessageToStringWithoutPos.lean/declarations/syntax-source-edition-3.md) | 87 | `declaration-track:5e7b8ba79a97b2e62a7a33d7797e21b53b4413f6528634430a3014c350264c2a` |
| 4 | `def` | [messageToStringWithoutPos](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GuardMsgsNamespacedMessageToStringWithoutPos.lean/declarations/messagetostringwithoutpos.md) | 92 | `declaration-track:682821f9a37e591fad3cf4e54921e64162c4eb39ecf050ac176a4d3601140a4e` |
| 5 | `inductive` | [SpecResult](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GuardMsgsNamespacedMessageToStringWithoutPos.lean/declarations/specresult.md) | 105 | `declaration-track:a8a9611941e75df3e4226c8fc2ff02cf798872a4d9d9fee809c6b8612a7fc0f9` |
| 6 | `def` | [parseGuardMsgsSpec](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GuardMsgsNamespacedMessageToStringWithoutPos.lean/declarations/parseguardmsgsspec.md) | 116 | `declaration-track:7006eafcd43d641ccabc04250c970b71eabf450a7c3f0e1e643b7e75c62fd235` |
| 7 | `structure` | [GuardMsgFailure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GuardMsgsNamespacedMessageToStringWithoutPos.lean/declarations/guardmsgfailure.md) | 141 | `declaration-track:80e7851777d65708b6bbd753349783fec69b7a465b40252cfa08af5f52153709` |
| 8 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GuardMsgsNamespacedMessageToStringWithoutPos.lean/declarations/elab-rules.md) | 146 | `declaration-track:c36209eec3b31d880728c07026104c410d4a1f1afa45fc23096a5eb94144ff28` |
| 9 | `def` | [guardMsgsCodeAction](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GuardMsgsNamespacedMessageToStringWithoutPos.lean/declarations/guardmsgscodeaction.md) | 174 | `declaration-track:cab2014864895c8b49ef256e61c02ff92548b116c58e8a40f6238a95d20ba23c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8706a469274cedd507822c11e8800d0147f6b409a5805589c1bc98ba3828b723 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variante740bd7a62832b2bd314e4a807ac2673e5dd593c625dfd5f453854e25f4da4a5.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variante740bd7a62832b2bd314e4a807ac2673e5dd593c625dfd5f453854e25f4da4a5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
