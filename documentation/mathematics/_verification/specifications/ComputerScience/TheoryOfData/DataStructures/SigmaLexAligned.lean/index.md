# Verification target: Sigma Lex Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "069a61d61e0997ee54a12fcc45a4760e39f7ebef",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variantf90f649f4be6645269738da93485a0a73e1d5c4c811a3f32563e7a1493bc56e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexAligned.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `069a61d61e0997ee54a12fcc45a4760e39f7ebef`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variantf90f649f4be6645269738da93485a0a73e1d5c4c811a3f32563e7a1493bc56e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variantf90f649f4be6645269738da93485a0a73e1d5c4c811a3f32563e7a1493bc56e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Sigma.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelClasses` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Lex](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexAligned.lean/declarations/lex.md) | 41 | `declaration-track:3819f8376212d1332e69ce8e299770181f363f950c0560420a507b2ebf6ab737` |
| 2 | `theorem` | [lex_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexAligned.lean/declarations/lex-iff-source-edition-2.md) | 46 | `result-track:666acc8c85832d25f2733eb480eda7ebfc5288e09213da3b0e853af0837c3be0` |
| 3 | `instance` | [Lex.decidable](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexAligned.lean/declarations/lex-decidable.md) | 59 | `declaration-track:5668ad93b212a7c0146c1112d417e5f716e8638d1e6166c549da099cf9715b09` |
| 4 | `theorem` | [Lex.mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexAligned.lean/declarations/lex-mono-source-edition-2.md) | 64 | `result-track:ce65a77b3b9a04824625f19ddbc54d10b22f86b93c873e8ae2f7dfb9dbf955fc` |
| 5 | `theorem` | [Lex.mono_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexAligned.lean/declarations/lex-mono-left-source-edition-2.md) | 71 | `result-track:b3096335cd37322fe20f6fe33e514a4217db096f675ce4d65af77d64691378b9` |
| 6 | `theorem` | [Lex.mono_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexAligned.lean/declarations/lex-mono-right-source-edition-2.md) | 76 | `result-track:da1eb430ac9a604b6abb4d7478fadf4bcfca6ab4ce981f12153712bc837731e7` |
| 7 | `theorem` | [lex_swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexAligned.lean/declarations/lex-swap.md) | 81 | `result-track:de8de89c11dc1c95947f1f8a4a6be2af18159940e6c001c04054b69518ef8613` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexAligned.lean/declarations/instance-source-edition-3.md) | 87 | `declaration-track:585a9d00b5072432e0f994b805e8b2aa427f76d19cb414a91b2b7b02bb768808` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexAligned.lean/declarations/instance-source-edition-7.md) | 90 | `declaration-track:e23dea26261c6ff7e4c68c0dd59ca825330779ff4ee40657d58450b366820d40` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexAligned.lean/declarations/instance-source-edition-6.md) | 97 | `declaration-track:c7921d9031ee12f15ee2e5696b74ebf918347bd26a53525614ef6c7d12e006a7` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexAligned.lean/declarations/instance-source-edition-4.md) | 105 | `declaration-track:5c0dfec408d7d27047e5cb7837b09582defe1b5079f85c3f823424da4c572892` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexAligned.lean/declarations/instance-source-edition-5.md) | 114 | `declaration-track:95e89ab44e72d2324158b0043da2206745bf6c1ff4822d8a33c3263b6ed59326` |
| 13 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexAligned.lean/declarations/instance.md) | 122 | `declaration-track:000c17e002f6691ff871be2d9a0bac891934a489efb61119312f7c1d7a7ce58c` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexAligned.lean/declarations/instance-source-edition-2.md) | 132 | `declaration-track:401ba2cc65e7446d873fd69448a7081b8eae54d3f20ff63b4b88a288eb0c58c9` |
| 15 | `theorem` | [lex_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexAligned.lean/declarations/lex-iff.md) | 152 | `result-track:4bdbc769a36fb331e37ed7329fa90e98dc1fc21c74a2c0bc4fff9d1505818293` |
| 16 | `instance` | [Lex.decidable](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexAligned.lean/declarations/lex-decidable-source-edition-2.md) | 166 | `declaration-track:a1e46c91b6742fbd14498aa393ba9c7acc7321e69428bf16584876bfcae2018a` |
| 17 | `theorem` | [Lex.mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexAligned.lean/declarations/lex-mono.md) | 171 | `result-track:184d62ec961d2ee1b693051c6c74f3ce30c70123ccbe97636b70128da1d2209b` |
| 18 | `theorem` | [Lex.mono_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexAligned.lean/declarations/lex-mono-left.md) | 179 | `result-track:5444cb63d949884feb785cac1e7f1942794ac5f5f7fa0aed84e81a0cd728a567` |
| 19 | `theorem` | [Lex.mono_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/SigmaLexAligned.lean/declarations/lex-mono-right.md) | 184 | `result-track:2fb981f44a24a9d441033f72fdad4951e1bce9c2dc6ba3bfd01cda32ea9215ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=14a0ab403c1110e0279824177d9cf41c94deb89903def79870fdb2a168b8f575 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variantf90f649f4be6645269738da93485a0a73e1d5c4c811a3f32563e7a1493bc56e4.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Lex/Variantf90f649f4be6645269738da93485a0a73e1d5c4c811a3f32563e7a1493bc56e4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
