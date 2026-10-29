# Verification target: Cut Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a492db1bc09e6a20983b00d966784b3fbdb4054a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cut/Variant5ebf91799f2c6e6f1a276f4ec4b5129a68f1db955f3aebb285585cf45f7bcef5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CutNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CutNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a492db1bc09e6a20983b00d966784b3fbdb4054a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cut/Variant5ebf91799f2c6e6f1a276f4ec4b5129a68f1db955f3aebb285585cf45f7bcef5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cut/Variant5ebf91799f2c6e6f1a276f4ec4b5129a68f1db955f3aebb285585cf45f7bcef5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.RCases` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsCut](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CutNamespacedPublic.lean/declarations/iscut.md) | 28 | `declaration-track:0a1529586f8e90a7e316c68fb56adacb245eb0768989551090a19491ca6b8622` |
| 2 | `class` | [IsStrictCut](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CutNamespacedPublic.lean/declarations/isstrictcut.md) | 32 | `declaration-track:82989c579caafddf0e13c726af9a33e4be8fb670be7cbee08a097040b7f36940` |
| 3 | `theorem` | [IsStrictCut.gt_of_isGE_of_gt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CutNamespacedPublic.lean/declarations/isstrictcut-gt-of-isge-of-gt.md) | 37 | `result-track:5cf5425062b60f1a0dcf9e72696497ff9e1cd24f7a2bc078e9a067cfca02b522` |
| 4 | `theorem` | [IsStrictCut.lt_of_isLE_of_lt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CutNamespacedPublic.lean/declarations/isstrictcut-lt-of-isle-of-lt.md) | 44 | `result-track:ba7c900f447ea083b25c29a5ad7af68bc8e21a6ad01611fd9c828890e91822f4` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CutNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 51 | `declaration-track:6ab355da7d7b7dfd87b7ede9d4eb3d9faf85b8453700fc425cd87f6826a9529f` |
| 6 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CutNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 57 | `declaration-track:816e66a5f1341f0882accebe55683cdc4adc0d7629ea56b891b62751904e5550` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CutNamespacedPublic.lean/declarations/instance.md) | 62 | `declaration-track:4f4631910d9deafa83ad5cbf31d2acd7df79274a2fcc070c6ea5f4c01e4c4339` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=36dc3d3e86eab9c4eb0188710ebf8e8d9bc4b151221370a76331526f3ccb2e68 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cut/Variant5ebf91799f2c6e6f1a276f4ec4b5129a68f1db955f3aebb285585cf45f7bcef5.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cut/Variant5ebf91799f2c6e6f1a276f4ec4b5129a68f1db955f3aebb285585cf45f7bcef5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
