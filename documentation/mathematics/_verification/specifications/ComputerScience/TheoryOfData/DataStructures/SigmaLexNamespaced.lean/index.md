# Verification target: Sigma Lex Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3728cecb5833d5b1169454fba20b4cca2eb4a42",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variant15a1603b83c6f688d6295f43ffedfc0e34fd659d6a98d70b232882d094463903.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3728cecb5833d5b1169454fba20b4cca2eb4a42`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variant15a1603b83c6f688d6295f43ffedfc0e34fd659d6a98d70b232882d094463903.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variant15a1603b83c6f688d6295f43ffedfc0e34fd659d6a98d70b232882d094463903.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Defs.Unbundled` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Lex](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexNamespaced.lean/declarations/lex.md) | 47 | `declaration-track:4007067b10b99b1c420d986e219534f47bea6f6fd5f0ab593254b5020e6af5f3` |
| 2 | `theorem` | [lex_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexNamespaced.lean/declarations/lex-iff-source-edition-2.md) | 51 | `result-track:bba8bfb2e6c4593bb77cabb76549ed1c1caa48fe17869d039a2d7e9be06620ee` |
| 3 | `instance` | [Lex.decidable](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexNamespaced.lean/declarations/lex-decidable-source-edition-2.md) | 63 | `declaration-track:9e8b80f46e990e0ff8f0c0bbf433d8b53ea4a3080075beaaf293eec56bf35879` |
| 4 | `theorem` | [Lex.mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexNamespaced.lean/declarations/lex-mono.md) | 67 | `result-track:498491364f90ec29beee5c9e858f4bfc62bdf0eaac466db24747c774fcb58e6b` |
| 5 | `theorem` | [Lex.mono_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexNamespaced.lean/declarations/lex-mono-left-source-edition-2.md) | 73 | `result-track:635d3d881816904b397878c7168fe4390e1d3a4153349619b141672a01adb2bd` |
| 6 | `theorem` | [Lex.mono_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexNamespaced.lean/declarations/lex-mono-right-source-edition-2.md) | 77 | `result-track:efc3e34b5db90db39616ad5249595775b952545f9eb3342d8f9ad71df79efcdf` |
| 7 | `theorem` | [lex_swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexNamespaced.lean/declarations/lex-swap.md) | 81 | `result-track:2655c4e0908239103986ad47396ab26cb40dd13680bb673c8cf7c498b2250a14` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexNamespaced.lean/declarations/instance-source-edition-3.md) | 87 | `declaration-track:23919bb5b2829f3f336a1ac09b9148ef6739ab9b756ec2a32fb31b0b02587611` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexNamespaced.lean/declarations/instance-source-edition-4.md) | 90 | `declaration-track:745d5f0ecf6f5ec8349d356ba591681f0a36034dac94e22570a618380faf5cf1` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexNamespaced.lean/declarations/instance-source-edition-5.md) | 97 | `declaration-track:7cb97e4ec6910b0167086976e1528d7a87df57c9b3c844b03233157bd7f67f94` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexNamespaced.lean/declarations/instance-source-edition-6.md) | 105 | `declaration-track:93524d7d816b926c72fb685d64bedbc7a52ec6a03fbfd6e05bb55a2f8b3ffc26` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexNamespaced.lean/declarations/instance.md) | 114 | `declaration-track:07709e3bc9223e5d0495bd9de8c9f561998393e4ed012d2a566bef89df8a3f27` |
| 13 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexNamespaced.lean/declarations/instance-source-edition-2.md) | 122 | `declaration-track:1b1c708df5a10482ac2d115d607d75844d9dfdb6638f78e5fc380d43192ef15a` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexNamespaced.lean/declarations/instance-source-edition-7.md) | 132 | `declaration-track:99931e14ebbbeba20fedff60d14f701ef4d972b7200cb15e56b1d9037feb665e` |
| 15 | `theorem` | [lex_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexNamespaced.lean/declarations/lex-iff.md) | 152 | `result-track:a3468ab609e00628fba641dfc998bcb8cb07766504ab22f3aef6dea310669c16` |
| 16 | `instance` | [Lex.decidable](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexNamespaced.lean/declarations/lex-decidable.md) | 165 | `declaration-track:0c0c1af00271777dff627bdf0f78acbda5d9e39a7d5a876ed57f5da456213fcb` |
| 17 | `theorem` | [Lex.mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexNamespaced.lean/declarations/lex-mono-source-edition-2.md) | 169 | `result-track:f9907e8089816eb3b736a49cec78484a62eece75ea682a67d53295c8928f9add` |
| 18 | `theorem` | [Lex.mono_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexNamespaced.lean/declarations/lex-mono-left.md) | 176 | `result-track:475f45186cf4c7297f454360e70cde85498ab76d40a753c8a5e5bdc01c1b06cf` |
| 19 | `theorem` | [Lex.mono_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexNamespaced.lean/declarations/lex-mono-right.md) | 180 | `result-track:69cf14d1216e3d291eb3a9e5c86fc028ecfca85b3018cd19b6f12827ed52cbbb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=081a0c7579bfdac606e6cf73cd4a4361e9199c40809257e9de8b3fd9121a83aa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variant15a1603b83c6f688d6295f43ffedfc0e34fd659d6a98d70b232882d094463903.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variant15a1603b83c6f688d6295f43ffedfc0e34fd659d6a98d70b232882d094463903.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
