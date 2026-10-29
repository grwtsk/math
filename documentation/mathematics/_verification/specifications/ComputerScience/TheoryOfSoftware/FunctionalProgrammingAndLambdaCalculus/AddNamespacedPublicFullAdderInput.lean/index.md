# Verification target: Add Namespaced Public Full Adder Input

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c984bf195e9edec3a88add2f6d31b78195ab314",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variantef648e3c18c8246dfc44eda95d5f7c227bc1d13f4b9ee88294151f72e4e97ce9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AddNamespacedPublicFullAdderInput.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AddNamespacedPublicFullAdderInput.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c984bf195e9edec3a88add2f6d31b78195ab314`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variantef648e3c18c8246dfc44eda95d5f7c227bc1d13f4b9ee88294151f72e4e97ce9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variantef648e3c18c8246dfc44eda95d5f7c227bc1d13f4b9ee88294151f72e4e97ce9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FullAdderInput](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AddNamespacedPublicFullAdderInput.lean/declarations/fulladderinput.md) | 37 | `declaration-track:3b716226225f5e6c362250e658fddf333a56256c5b73a0b6da024ca8dfe3c0d9` |
| 2 | `def` | [cast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AddNamespacedPublicFullAdderInput.lean/declarations/cast.md) | 44 | `declaration-track:61f71d1804481f1ce5550da1f7b253ca06d385d0d08c93ddc8c54aa26423616f` |
| 3 | `theorem` | [lhs_cast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AddNamespacedPublicFullAdderInput.lean/declarations/lhs-cast.md) | 50 | `result-track:69d308b17f4424b527a70cc39b1bbf5bf9746a4d9c3ea14889b4afced2592f6e` |
| 4 | `theorem` | [rhs_cast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AddNamespacedPublicFullAdderInput.lean/declarations/rhs-cast.md) | 56 | `result-track:677d8c05c7e16248d12b3ed48866147341c6452d31f694c328c68439983a8696` |
| 5 | `theorem` | [cin_cast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AddNamespacedPublicFullAdderInput.lean/declarations/cin-cast.md) | 62 | `result-track:70dbb8029bd5df2475a49891b733c42a19125f4cc5b157ffa35ef54f565c0da8` |
| 6 | `def` | [mkFullAdderOut](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AddNamespacedPublicFullAdderInput.lean/declarations/mkfulladderout.md) | 70 | `declaration-track:c9eb051c38792448670c8d1818ff05bd71b1b1c390c44c71c12e854c300f0faa` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AddNamespacedPublicFullAdderInput.lean/declarations/instance-source-edition-3.md) | 82 | `declaration-track:c3f158d2fd4b81d82387d92a31856f78e9163ec4831d9d8605e99702c88cef70` |
| 8 | `def` | [mkFullAdderCarry](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AddNamespacedPublicFullAdderInput.lean/declarations/mkfulladdercarry.md) | 96 | `declaration-track:dfc3e8a0cca8557dbc219cf38ebf976b8e8a714032e2bdded0c63fc07328e38a` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AddNamespacedPublicFullAdderInput.lean/declarations/instance-source-edition-4.md) | 122 | `declaration-track:ca8fbb2d8e4190f2165aa4bd07b3286cf3372ef0085911744d04d96b3f99275c` |
| 10 | `structure` | [FullAdderOutput](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AddNamespacedPublicFullAdderInput.lean/declarations/fulladderoutput.md) | 148 | `declaration-track:b776851d4351d36b33c7a17a053d72c9180051d1efb62a7164e566512c079561` |
| 11 | `def` | [mkFullAdder](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AddNamespacedPublicFullAdderInput.lean/declarations/mkfulladder.md) | 154 | `declaration-track:e1660056fc26ce67a2aca00cb9f00b34cf38ae0243e2dbb27bbc478aa675d509` |
| 12 | `def` | [blastAdd](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AddNamespacedPublicFullAdderInput.lean/declarations/blastadd.md) | 171 | `declaration-track:ed935eb2a93aec9c84a9d2c0e4756c24171b41825f2e5d57029c38d606ff489f` |
| 13 | `theorem` | [go_le_size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AddNamespacedPublicFullAdderInput.lean/declarations/go-le-size.md) | 205 | `result-track:c8a087ad08a1265cf4437cb6d645fae24c2e8ea09deeda8263b2ce7b5e5ed1ae` |
| 14 | `theorem` | [go_decl_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AddNamespacedPublicFullAdderInput.lean/declarations/go-decl-eq.md) | 219 | `result-track:add823ede42fedcf8a8a4bed7ce51f4d44a2c7cc42bb4c50b8767c2f3acda0f1` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AddNamespacedPublicFullAdderInput.lean/declarations/instance.md) | 243 | `declaration-track:1bf7ee8bb690a891daa23311d0c81ff897cddf47439c8e1ee9d68621a7be1fcc` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AddNamespacedPublicFullAdderInput.lean/declarations/instance-source-edition-2.md) | 255 | `declaration-track:3333eaf641e8f22b62904f26cad10070865e58fe753d3a793623276be2e5ffb3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ddc85cf6c591c73208095a3e89d58c9c0d4628cc72fd54b156c5ae13aa1c063 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variantef648e3c18c8246dfc44eda95d5f7c227bc1d13f4b9ee88294151f72e4e97ce9.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variantef648e3c18c8246dfc44eda95d5f7c227bc1d13f4b9ee88294151f72e4e97ce9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
