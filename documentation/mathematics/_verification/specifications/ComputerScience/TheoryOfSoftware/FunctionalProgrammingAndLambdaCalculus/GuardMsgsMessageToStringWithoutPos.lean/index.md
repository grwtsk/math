# Verification target: Guard Msgs Message To String Without Pos

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59aa964e5bd4edfe5a2809c9864ce9b8aa8c193d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variant811c0a9d1189433ec519e60a0fe972031189f7529c923aa078dd9dc38169735a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GuardMsgsMessageToStringWithoutPos.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GuardMsgsMessageToStringWithoutPos.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59aa964e5bd4edfe5a2809c9864ce9b8aa8c193d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variant811c0a9d1189433ec519e60a0fe972031189f7529c923aa078dd9dc38169735a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variant811c0a9d1189433ec519e60a0fe972031189f7529c923aa078dd9dc38169735a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Command` — import line 6; external provider; requires a separately pinned dependency.
- `Std.CodeAction.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Std.Lean.Position` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GuardMsgsMessageToStringWithoutPos.lean/declarations/syntax.md) | 21 | `declaration-track:7ad66302b5c062fdaf5613cf3c0d56a59874e13f780f4584ff667e8065df5fd4` |
| 2 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GuardMsgsMessageToStringWithoutPos.lean/declarations/syntax-source-edition-2.md) | 24 | `declaration-track:a57b0666eea2e83e46d96215a3ef439a6a9c75d6b6737ce92bd72f21851ce53b` |
| 3 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GuardMsgsMessageToStringWithoutPos.lean/declarations/syntax-source-edition-3.md) | 79 | `declaration-track:af3f957026ad1adcd046509f4dc23c9dd8cd571b19d0112babd43b0b69610652` |
| 4 | `def` | [messageToStringWithoutPos](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GuardMsgsMessageToStringWithoutPos.lean/declarations/messagetostringwithoutpos.md) | 84 | `declaration-track:1552f279219518f640f390a0fddd3083cb78aa799ac5041f82f77e1758aaa049` |
| 5 | `inductive` | [SpecResult](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GuardMsgsMessageToStringWithoutPos.lean/declarations/specresult.md) | 97 | `declaration-track:6752b267c9ac71c49ff03885786df170540d69f4326bfdcc50c6b56ebabe2828` |
| 6 | `def` | [parseGuardMsgsSpec](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GuardMsgsMessageToStringWithoutPos.lean/declarations/parseguardmsgsspec.md) | 108 | `declaration-track:b7c566302d4b5ae0003098fda149b2b1728f00f37d4aee6c6b4ef9138348e7cd` |
| 7 | `structure` | [GuardMsgFailure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GuardMsgsMessageToStringWithoutPos.lean/declarations/guardmsgfailure.md) | 133 | `declaration-track:c5801602814cb733cca80910fff0d8580869d1c0de44a57f14d3efa3370e3ab7` |
| 8 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GuardMsgsMessageToStringWithoutPos.lean/declarations/elab-rules.md) | 138 | `declaration-track:118f3621a48f1984304c76c122ec6816628f085cdbb32226c5925bc9496b6aec` |
| 9 | `def` | [guardMsgsCodeAction](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/GuardMsgsMessageToStringWithoutPos.lean/declarations/guardmsgscodeaction.md) | 166 | `declaration-track:40655e9506afe31961613a980ad3598bc8f0b9a8fe42cc1cf414a38c40ec1065` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ab166fe2fce60ba2e0d26e1492d28ee3b2e987a49b152ea881b25720847902f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variant811c0a9d1189433ec519e60a0fe972031189f7529c923aa078dd9dc38169735a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuardMsgs/Variant811c0a9d1189433ec519e60a0fe972031189f7529c923aa078dd9dc38169735a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
