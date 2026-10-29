# Verification target: Random

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fc92a1077c12d0a8cc631be7a9a87c648f1eb6a",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variantfa7a432051c07d229178a92d7fbd4404f6bc3ca54331b45c8bbf454e824c51fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Random.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Random.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fc92a1077c12d0a8cc631be7a9a87c648f1eb6a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variantfa7a432051c07d229178a92d7fbd4404f6bc3ca54331b45c8bbf454e824c51fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variantfa7a432051c07d229178a92d7fbd4404f6bc3ca54331b45c8bbf454e824c51fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.ULiftable` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Fin.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RandGT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Random.lean/declarations/randgt.md) | 34 | `declaration-track:8710619198da9941681cc76c482e840a311ab2ef808b21cfed68da2f36c835c5` |
| 2 | `abbrev` | [RandG](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Random.lean/declarations/randg.md) | 36 | `declaration-track:1dc5186498fdefad656bb183d4879009207cc5ad45aa92907af70d4160fa5f9f` |
| 3 | `abbrev` | [RandT](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Random.lean/declarations/randt.md) | 40 | `declaration-track:5626d9a7c9a0948a67a777dde527370cacc5f92b67be2f98a6a6927fcd49cb30` |
| 4 | `abbrev` | [Rand](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Random.lean/declarations/rand.md) | 43 | `declaration-track:19c9ce7e49e2d62a4dc5da6739e869e605912d9e9d3b14c6c6d8dab5773d1f9e` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Random.lean/declarations/instance-source-edition-3.md) | 45 | `declaration-track:515bdcee813ea01f42140fee12ddfba556499b4fd7322d2cdd6034ae291c3d04` |
| 6 | `class` | [Random](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Random.lean/declarations/random.md) | 51 | `declaration-track:b9e75f0226fc85f8f517dae686a884a2b19fecb212e2aef6190286a78bea10bf` |
| 7 | `class` | [BoundedRandom](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Random.lean/declarations/boundedrandom.md) | 57 | `declaration-track:83e2e0e4ff2dc8a5d665ab3172212c66593b375b996ecae616b818c2cf588fd1` |
| 8 | `def` | [next](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Random.lean/declarations/next.md) | 63 | `declaration-track:db925beb7fa12c26e55730577a8b18ba44be566caa390fff919ae02219a9cfb9` |
| 9 | `def` | [split](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Random.lean/declarations/split.md) | 70 | `declaration-track:6e61572c2f219aee6f54bbfeacfca661d1198b6964559d040815dff37ce939c9` |
| 10 | `def` | [range](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Random.lean/declarations/range.md) | 77 | `declaration-track:10595d8a07e3f7aa759b02e0c98baf718121abf92c5f07f9ecc6e54615bc0ddd` |
| 11 | `def` | [rand](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Random.lean/declarations/rand-source-edition-2.md) | 89 | `declaration-track:b2349443adddbd103f814a4d499d9e3e763f4e50c73d0120dee6dcd192065919` |
| 12 | `def` | [randBound](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Random.lean/declarations/randbound.md) | 92 | `declaration-track:f4ef68db4cbbd6bba5a797a2966339c1e8d28a95bb4b229ed75a3f7f2c030034` |
| 13 | `def` | [randFin](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Random.lean/declarations/randfin.md) | 98 | `declaration-track:06feab5c8fe65891020e4caffb9a0e9fc83fca4f77b4786622f95125f84d299b` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Random.lean/declarations/instance-source-edition-2.md) | 101 | `declaration-track:36e186b284f7e4a2861c786791889f58b00f76fda528ebacf5f61aa7fbda332f` |
| 15 | `def` | [randBool](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Random.lean/declarations/randbool.md) | 105 | `declaration-track:dfb6563569987eb406105dff8cd9c09eef210222294b01920f7321f63b3ea3a3` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Random.lean/declarations/instance-source-edition-4.md) | 108 | `declaration-track:63441769298e631b496012b2e37c91956d0c227cfc0442acefc0ea46eb9df4fa` |
| 17 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Random.lean/declarations/instance-source-edition-8.md) | 111 | `declaration-track:fdcbeaccbb81db48daca9432ac532b80c0bfea8157ba0cc0faad396167014d8a` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Random.lean/declarations/instance-source-edition-5.md) | 114 | `declaration-track:84786a35f6a97a7850c004c43ecfe7aea954122fe00ede764010890e2279478c` |
| 19 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Random.lean/declarations/instance.md) | 122 | `declaration-track:22274c7030053dd1c5af96ad54f91b1904ee93e319f9ed247ff127dc7de989ee` |
| 20 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Random.lean/declarations/instance-source-edition-6.md) | 132 | `declaration-track:8e8ac64b986518a93c570bded721a4e711081eba4d7fb74ed464f14b761420aa` |
| 21 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Random.lean/declarations/instance-source-edition-7.md) | 137 | `declaration-track:c9946eb9a13b3d215dd12a872e189a1c41f4d472678e864cd903504666d08faa` |
| 22 | `def` | [runRand](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Random.lean/declarations/runrand.md) | 159 | `declaration-track:781e688ff51361b82660e32a44f275480965dc38b3fc9cf398101a46d96bdce3` |
| 23 | `def` | [runRandWith](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/Random.lean/declarations/runrandwith.md) | 166 | `declaration-track:3af7e15165541e1746628bcf5c8649f5fd1e866ffa4034a59790d2fd519a343b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1bb188f64e3ec035bc459973136c9b9454ae8c38bb530f2ea7895841d8f57a62 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variantfa7a432051c07d229178a92d7fbd4404f6bc3ca54331b45c8bbf454e824c51fb.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Random/Variantfa7a432051c07d229178a92d7fbd4404f6bc3ca54331b45c8bbf454e824c51fb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
