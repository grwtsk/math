# Verification target: Empty Public Recv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d8883dafe0dfd61cfc49ca088514a06184aa972",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Empty/Variant57e0bc7246c82f05ad46c86a13bcd508a6296acc38789f00f74a0ed53b86f564.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EmptyPublicRecv.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EmptyPublicRecv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d8883dafe0dfd61cfc49ca088514a06184aa972`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Empty/Variant57e0bc7246c82f05ad46c86a13bcd508a6296acc38789f00f74a0ed53b86f564.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Empty/Variant57e0bc7246c82f05ad46c86a13bcd508a6296acc38789f00f74a0ed53b86f564.lean.json)

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
| 1 | `structure` | [Empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EmptyPublicRecv.lean/declarations/empty-source-edition-2.md) | 29 | `declaration-track:6a6d8b859aabebca54fcca9912291913a7be303de674f243736ce0da9f0929db` |
| 2 | `def` | [recv](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EmptyPublicRecv.lean/declarations/recv.md) | 38 | `declaration-track:ed0405c851e9eca678794396453aeca508a14599394a305632f42939453aeaf3` |
| 3 | `def` | [close](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EmptyPublicRecv.lean/declarations/close.md) | 45 | `declaration-track:ec857bca06ab2c5bc645a27c425e77e0815c7a1680e7e3aa176ddbc6dfe99753` |
| 4 | `def` | [isClosed](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EmptyPublicRecv.lean/declarations/isclosed.md) | 52 | `declaration-track:aec1549c7dcc429e39187501ec7f3ce8ab74b95d1cccec48971f460db8584f1c` |
| 5 | `def` | [tryRecv](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EmptyPublicRecv.lean/declarations/tryrecv.md) | 59 | `declaration-track:5e1d592a7fd5b638c6452d1a6521ee9559bb379fb4a4ed2ad97819477613e001` |
| 6 | `def` | [recvSelector](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EmptyPublicRecv.lean/declarations/recvselector.md) | 66 | `declaration-track:470d8b763c602d197ceecd5c77b4b136261b5e93ef8495ef8140f6a345cff5e1` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EmptyPublicRecv.lean/declarations/instance-source-edition-5.md) | 77 | `declaration-track:60f9516e697e9ef2348618da72583c36ae13e52044e2e720ce57625c9b05a9d1` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EmptyPublicRecv.lean/declarations/instance.md) | 87 | `declaration-track:0e26c1b6c72f15b2ae2484d21b4dcab620f54d81f0b4f0d5c883ae6e0cc58274` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EmptyPublicRecv.lean/declarations/instance-source-edition-3.md) | 89 | `declaration-track:4c8578a1ccb7fd60e58af82358ebb416c5212bfc209f2ba2ae32583d2004de14` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EmptyPublicRecv.lean/declarations/instance-source-edition-4.md) | 92 | `declaration-track:5245406390f8a0d1b0b9f929cad9c8b7932dad17bd90ee0095b504270503cf88` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EmptyPublicRecv.lean/declarations/instance-source-edition-2.md) | 97 | `declaration-track:4b7f97d6181a0ba93a180527f016ad3b151b40ab799e539d1abc2eaeb94898e2` |
| 12 | `def` | [empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EmptyPublicRecv.lean/declarations/empty-source-edition-3.md) | 110 | `declaration-track:805ed839af550f60430930a5e3e193d99dfd44d7fbeac3709c9dce3955d78cdb` |
| 13 | `def` | [empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EmptyPublicRecv.lean/declarations/empty.md) | 121 | `declaration-track:512651857ce72fd332f2adac5417a083b92b4d61acdff45aa812f8b9f19b8da7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aaee4181f8898b7d7dfbdfa66c6c53b599308fa22b37fe3ea009dfc590e34b93 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Empty/Variant57e0bc7246c82f05ad46c86a13bcd508a6296acc38789f00f74a0ed53b86f564.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Empty/Variant57e0bc7246c82f05ad46c86a13bcd508a6296acc38789f00f74a0ed53b86f564.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
