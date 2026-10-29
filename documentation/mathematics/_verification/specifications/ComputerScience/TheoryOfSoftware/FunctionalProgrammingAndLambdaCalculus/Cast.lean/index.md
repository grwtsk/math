# Verification target: Cast

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3404fbc488bea4f1ba053446a6f7490e046b0e73",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cast/Variant51a55ea3a9c0ee686cb3e0a648fbc4562ea2fcb821d12c38a42a110cea39daee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Cast.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Cast.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3404fbc488bea4f1ba053446a6f7490e046b0e73`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cast/Variant51a55ea3a9c0ee686cb3e0a648fbc4562ea2fcb821d12c38a42a110cea39daee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cast/Variant51a55ea3a9c0ee686cb3e0a648fbc4562ea2fcb821d12c38a42a110cea39daee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Tactic.CoeExt` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Util.LibraryNote` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NatCast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Cast.lean/declarations/natcast.md) | 10 | `declaration-track:9f44cfee8cd101069a85f580ae950a17dd14d4e833cf0c813613a1eec857808f` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Cast.lean/declarations/instance-source-edition-5.md) | 14 | `declaration-track:aa4c0a15c47ca39fce17385a04c2952acf4de044704e5ac844328aa7ceb127fc` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Cast.lean/declarations/instance.md) | 15 | `declaration-track:3070c44e37c2982a2b025879c579c14840e12a148c47a527fccd5faa43e0e966` |
| 4 | `def` | [Nat.cast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Cast.lean/declarations/nat-cast.md) | 19 | `declaration-track:c3c5bf869c73d63dc79440c7cc3c5031f4649a7337c8ec93adeb880fa807d0a9` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Cast.lean/declarations/instance-source-edition-4.md) | 23 | `declaration-track:6a201f86d26595a3b1d5c3525ac1f8d3ac8bb2ab871950a2b781285bce44adde` |
| 6 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Cast.lean/declarations/instance-source-edition-8.md) | 26 | `declaration-track:fe70be07b4d1e6a0a2ed0962e5acb0be6969640d603a9c0f185815186766549b` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Cast.lean/declarations/instance-source-edition-7.md) | 29 | `declaration-track:dc632d6df13d57c783434246cb7bae10a913197086795de759b57ce640a7d599` |
| 8 | `class` | [IntCast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Cast.lean/declarations/intcast.md) | 32 | `declaration-track:1d4ad0d06082c2630488e98a6ca0fdadfc06c4de2f44c41e97acd190c302342d` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Cast.lean/declarations/instance-source-edition-3.md) | 36 | `declaration-track:4e1d80466427d6731674d5692b17278f5279a8db89cbc69c41cee35136edbbdf` |
| 10 | `def` | [Int.cast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Cast.lean/declarations/int-cast.md) | 40 | `declaration-track:995e1457ac19cb20ae936da9464b69647706b631e73f8fc3424aa240222da77f` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Cast.lean/declarations/instance-source-edition-6.md) | 44 | `declaration-track:c11be77c0d2f1d34709df8a85f59f47f22298631cc65fce72ca575df7f7c5510` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Cast.lean/declarations/instance-source-edition-2.md) | 47 | `declaration-track:3eae2baf6a6ef25121d4ed6688ba7ca07d52c409510b5be259e8ee5d8aeef0c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e0ea963c66f00822ccd67e8132499a7795efcadd0bb7be82650acc76e0dd9540 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cast/Variant51a55ea3a9c0ee686cb3e0a648fbc4562ea2fcb821d12c38a42a110cea39daee.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cast/Variant51a55ea3a9c0ee686cb3e0a648fbc4562ea2fcb821d12c38a42a110cea39daee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
