# Verification target: Sigma Lex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa61f988ea26b02c90e854adb1d57dee815cfea2",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variant572723da518251cd4e7a7e7e41459d29f9f21d4fa72244665da13f39cc805eb7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLex.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa61f988ea26b02c90e854adb1d57dee815cfea2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variant572723da518251cd4e7a7e7e41459d29f9f21d4fa72244665da13f39cc805eb7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variant572723da518251cd4e7a7e7e41459d29f9f21d4fa72244665da13f39cc805eb7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Defs.Unbundled` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Lex](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLex.lean/declarations/lex.md) | 39 | `declaration-track:14b884396fbcbf78b629ad5cb80dc76688e8ae7676c96dfeec3d3edaf43d60bd` |
| 2 | `theorem` | [lex_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLex.lean/declarations/lex-iff-source-edition-2.md) | 43 | `result-track:5868be943e0e44a0117d3235be8869f0c3d6998d255da9306f78222e1c84ac32` |
| 3 | `instance` | [Lex.decidable](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLex.lean/declarations/lex-decidable-source-edition-2.md) | 55 | `declaration-track:bd7bb7f1351e5b1b183380391808a68937c95df109b233e3cee25b86be37afdc` |
| 4 | `theorem` | [Lex.mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLex.lean/declarations/lex-mono-source-edition-2.md) | 59 | `result-track:9e91cf7c62e0e55acf74ccc589d9b30beedfd2eff016bf8d6d67a6376742dc9a` |
| 5 | `theorem` | [Lex.mono_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLex.lean/declarations/lex-mono-left.md) | 65 | `result-track:01635b72a48b121dedab6b135fa5cbd656a683e4408c5f3ce5906841b8583b18` |
| 6 | `theorem` | [Lex.mono_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLex.lean/declarations/lex-mono-right-source-edition-2.md) | 69 | `result-track:e69b2b36c3859680e717f27727ed8b7e11fa82765bd19595237cf9056658e445` |
| 7 | `theorem` | [lex_swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLex.lean/declarations/lex-swap.md) | 73 | `result-track:e83cf635cf5409094e67a1681b4aa04c334fb2972dfc42ad6eddd7ab26d034d4` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLex.lean/declarations/instance-source-edition-2.md) | 79 | `declaration-track:43375d85fca21ec58338e9228ea8616844ebc4358e47aa04c3923fa7820b70e4` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLex.lean/declarations/instance-source-edition-7.md) | 82 | `declaration-track:f2a58d75a282f772906780a4dd1a159d4768e3a44218440b518fe5254f014faa` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLex.lean/declarations/instance-source-edition-4.md) | 89 | `declaration-track:6151634c65800bcc19204ea59f1406717c7315aac97abc401272c38f780f6bf7` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLex.lean/declarations/instance-source-edition-3.md) | 97 | `declaration-track:6037d33c029b828483b0ec77bb769dd2261f918d3d16391e9b4877ae6b2d57d2` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLex.lean/declarations/instance.md) | 106 | `declaration-track:005a974f56725a17b67da1e85ff13fe5d6dedc83738a416aab963bf1b65abaec` |
| 13 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLex.lean/declarations/instance-source-edition-5.md) | 114 | `declaration-track:967c398851a0afaa44bc3a7393a89bf6d0d938934d8e66f9f6d5880304c5bead` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLex.lean/declarations/instance-source-edition-6.md) | 124 | `declaration-track:ae06ce93bfe2b0cf57a134c8d419b08851e8c5b3ff03cf16b0ee54f72b4ae57d` |
| 15 | `theorem` | [lex_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLex.lean/declarations/lex-iff.md) | 144 | `result-track:1e4e224f05bc141e05dab493e09a3d7e71751c386dd752b5870de7f2c04d2891` |
| 16 | `instance` | [Lex.decidable](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLex.lean/declarations/lex-decidable.md) | 157 | `declaration-track:90921e9e0f6a8bfd5d18483dfd4c5b2c20850f2d2e49525ab60965dfdd5760cf` |
| 17 | `theorem` | [Lex.mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLex.lean/declarations/lex-mono.md) | 161 | `result-track:3d9b25ed1bf0ebd66defce106ca11e7b4f9b920a11e32bc969849a917ac8edd0` |
| 18 | `theorem` | [Lex.mono_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLex.lean/declarations/lex-mono-left-source-edition-2.md) | 168 | `result-track:21da9af02ffe3cce4e5c2fba9d155de6e42a0e2ca46572dbf554f770b4b01677` |
| 19 | `theorem` | [Lex.mono_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLex.lean/declarations/lex-mono-right.md) | 172 | `result-track:8cb0802a55375828d2bed0f211622e324d9bf2bf7df91ad494bb279882b2ee29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dacad5162bd5096ca94634ead65f8397cbeb813c4e3bc4ef0d8b81f170bc3a9b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variant572723da518251cd4e7a7e7e41459d29f9f21d4fa72244665da13f39cc805eb7.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variant572723da518251cd4e7a7e7e41459d29f9f21d4fa72244665da13f39cc805eb7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
