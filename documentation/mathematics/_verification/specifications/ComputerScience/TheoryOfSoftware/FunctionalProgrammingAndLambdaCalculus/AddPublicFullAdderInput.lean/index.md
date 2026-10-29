# Verification target: Add Public Full Adder Input

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb7b95e6449d2041e6cf5012b20a3858fbd816c6",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant60b61e5ccfc86a03648920ac6688df6d35597f65d80fee4e4276522702ac536b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AddPublicFullAdderInput.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AddPublicFullAdderInput.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb7b95e6449d2041e6cf5012b20a3858fbd816c6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant60b61e5ccfc86a03648920ac6688df6d35597f65d80fee4e4276522702ac536b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant60b61e5ccfc86a03648920ac6688df6d35597f65d80fee4e4276522702ac536b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FullAdderInput](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AddPublicFullAdderInput.lean/declarations/fulladderinput.md) | 29 | `declaration-track:23a6afbddfee9e79f54eef8e1f63aff370a0d0fb8fb9ed917ba04ffffedc4ed3` |
| 2 | `def` | [cast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AddPublicFullAdderInput.lean/declarations/cast.md) | 36 | `declaration-track:ed5efe6e7d77fd38126d2127e9890361f894b23697eab9bcaeb569ba48cdf64f` |
| 3 | `theorem` | [lhs_cast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AddPublicFullAdderInput.lean/declarations/lhs-cast.md) | 42 | `result-track:14b9c7e7b785a7015ec9ff615fbb02a899fe04dddf89dbeef553140b96c93373` |
| 4 | `theorem` | [rhs_cast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AddPublicFullAdderInput.lean/declarations/rhs-cast.md) | 48 | `result-track:158748a76199381548091a3d32d1ae552c1a2e5d45bb97276024f22db7bd726d` |
| 5 | `theorem` | [cin_cast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AddPublicFullAdderInput.lean/declarations/cin-cast.md) | 54 | `result-track:9344a2a36d8600f84e7c9dafe143a8d8b0cfb8a4eeb88d2dac7a1100fdd2b166` |
| 6 | `def` | [mkFullAdderOut](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AddPublicFullAdderInput.lean/declarations/mkfulladderout.md) | 62 | `declaration-track:257e96d150543e0110cd9939c3e5824a8753ec690251266073d339161925aeb3` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AddPublicFullAdderInput.lean/declarations/instance-source-edition-4.md) | 74 | `declaration-track:756f1f6b73b9a30004b6b4e451f9ab997190fcaaecb85e1f765db3623b253cf9` |
| 8 | `def` | [mkFullAdderCarry](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AddPublicFullAdderInput.lean/declarations/mkfulladdercarry.md) | 88 | `declaration-track:fb0970f812e4633e7ffa70a14daa41192a0dd6c6f908758bcbf9d9e4591f3f9e` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AddPublicFullAdderInput.lean/declarations/instance.md) | 114 | `declaration-track:15a1c3589a90783a3f3eac3e1b0c6aed972eedc0e5d0f442b9b16f2ebbf6edbe` |
| 10 | `structure` | [FullAdderOutput](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AddPublicFullAdderInput.lean/declarations/fulladderoutput.md) | 140 | `declaration-track:9c7550d58c3afc61c0e5d01a90c83587bada8c6d923e2d34dc34efe3c168d41e` |
| 11 | `def` | [mkFullAdder](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AddPublicFullAdderInput.lean/declarations/mkfulladder.md) | 146 | `declaration-track:9965f7e58bc18ef7b164005e695e1a63de8184030ef935f517fabf784ce10b21` |
| 12 | `def` | [blastAdd](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AddPublicFullAdderInput.lean/declarations/blastadd.md) | 163 | `declaration-track:ccd4dd2e852f8a74669c0e3b79e8698b3499e1abd6cea389ade51e4ede3ce5e3` |
| 13 | `theorem` | [go_le_size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AddPublicFullAdderInput.lean/declarations/go-le-size.md) | 197 | `result-track:624eb1a237484541250f8f5ed32a2a7d6f2563ec76fe684068c3de9f81f4cf03` |
| 14 | `theorem` | [go_decl_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AddPublicFullAdderInput.lean/declarations/go-decl-eq.md) | 211 | `result-track:840aca286a169569fc4d31c078d89452af1e1ba2269e7f2aae3fc62e0da18926` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AddPublicFullAdderInput.lean/declarations/instance-source-edition-3.md) | 235 | `declaration-track:4b45adadac957adf59fc668ec28ca8e81cde9eaaae06f3d16b7dc12aae7046df` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AddPublicFullAdderInput.lean/declarations/instance-source-edition-2.md) | 247 | `declaration-track:364eed6087a9336ba211c8b0c4dcebafea17b5e287d2766d6fb6ccc4fbb19613` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=075f784ede7d7c1276a6b63b8129ce56b2f2f0aff1b1b79b11c2d3e28b9cf2c5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant60b61e5ccfc86a03648920ac6688df6d35597f65d80fee4e4276522702ac536b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant60b61e5ccfc86a03648920ac6688df6d35597f65d80fee4e4276522702ac536b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
