# Verification target: Have INamespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cddbcd385bbbe5c82a9822790e6ae6ea7dadd649",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveI/Variantc0200ef90188edb8467da8405228d83ddcb82660bffaa14942c0929c8cb790a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HaveINamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HaveINamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cddbcd385bbbe5c82a9822790e6ae6ea7dadd649`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveI/Variantc0200ef90188edb8467da8405228d83ddcb82660bffaa14942c0929c8cb790a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveI/Variantc0200ef90188edb8467da8405228d83ddcb82660bffaa14942c0929c8cb790a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.ElabRules` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [«haveI»](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HaveINamespaced.lean/declarations/havei.md) | 28 | `declaration-track:9e736281dc347a55178f8dcc4c4ce00e2203b00ec0dbc607c7b6d5814b69de52` |
| 2 | `def` | [«letI»](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HaveINamespaced.lean/declarations/leti.md) | 31 | `declaration-track:68fdfcbf891c4a8172a0b2ffe81f0b15285be7a3ae19978fd875e060c16e42a6` |
| 3 | `macro_rules` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HaveINamespaced.lean/declarations/macro-rules-source-edition-2.md) | 34 | `declaration-track:33d7a41ca470cbf600cd1bbdbf2d710a28fc00ad2a449ffa7659af196cf04de5` |
| 4 | `macro_rules` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HaveINamespaced.lean/declarations/macro-rules.md) | 42 | `declaration-track:1cf14d7f7058f842375d7d78c1804f3952ba72dcef1c5499b8314cc91498367e` |
| 5 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HaveINamespaced.lean/declarations/elab-rules-source-edition-2.md) | 50 | `declaration-track:c0264e398c0c58e021c05ccb5fc7eb53bca32fbf17352e02fcc88083b355d393` |
| 6 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HaveINamespaced.lean/declarations/elab-rules.md) | 59 | `declaration-track:368ccf850aa9e7eacfad48f00d18748403e43ce5f0908f1edd3be02afd98e51d` |
| 7 | `macro` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HaveINamespaced.lean/declarations/macro.md) | 69 | `declaration-track:09be03af1d27204fd864b98c2e14bc2539633f67106fdac62d0c53e28d45baec` |
| 8 | `macro` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/HaveINamespaced.lean/declarations/macro-source-edition-2.md) | 71 | `declaration-track:88557ea67e6a6aa35dca75823aacc6d3a097ff3d6c946b5637a6b601d1d4e0f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=afbd3a805f6685ba3399a87891775c65ac5f98e69d9260f862be0d6f5d214f14 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveI/Variantc0200ef90188edb8467da8405228d83ddcb82660bffaa14942c0929c8cb790a7.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveI/Variantc0200ef90188edb8467da8405228d83ddcb82660bffaa14942c0929c8cb790a7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
