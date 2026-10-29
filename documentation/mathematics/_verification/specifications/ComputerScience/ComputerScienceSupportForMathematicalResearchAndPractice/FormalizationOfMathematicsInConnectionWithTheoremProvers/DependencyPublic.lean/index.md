# Verification target: Dependency Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "340b120ed7f8955012bcdea22a9987abfcae0da5",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dependency/Variantb3436721183a545e21e59d94b0843c9b5c806b4224edc3bd1f993d97da848a53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DependencyPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DependencyPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `340b120ed7f8955012bcdea22a9987abfcae0da5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dependency/Variantb3436721183a545e21e59d94b0843c9b5c806b4224edc3bd1f993d97da848a53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dependency/Variantb3436721183a545e21e59d94b0843c9b5c806b4224edc3bd1f993d97da848a53.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.TakeDrop` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.ToString.Macro` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [InputVer](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DependencyPublic.lean/declarations/inputver.md) | 29 | `declaration-track:737351854e7998abad2b33a1b27e82f573a3d1432ecb5310306803a04f1aec7d` |
| 2 | `def` | [parse](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DependencyPublic.lean/declarations/parse.md) | 48 | `declaration-track:6ad0f8f0366ea90a51a599a889324d41e2337da8be61d59bb80f3dad7b08a3ec` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DependencyPublic.lean/declarations/instance.md) | 56 | `declaration-track:e674bc2a1a37c7b3cf8348190d6d4e26b4803413f9d08644ddef6ef34a7b1640` |
| 4 | `def` | [toString?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DependencyPublic.lean/declarations/tostring.md) | 58 | `declaration-track:36e680ab485baee351e932390dd3acd3dc7ddefacbe27780410933f40a0ca334` |
| 5 | `inductive` | [DependencySrc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DependencyPublic.lean/declarations/dependencysrc.md) | 70 | `declaration-track:fba5238d9f38ce51081bda47b63eacc72efc52c2f09124b18a20615d48ae188e` |
| 6 | `structure` | [Dependency](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DependencyPublic.lean/declarations/dependency.md) | 82 | `declaration-track:83e1a87a2ccce30be887ca377b41c8a7d32d0d486bccba392d8a05cce303c4d8` |
| 7 | `def` | [dirName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DependencyPublic.lean/declarations/dirname.md) | 114 | `declaration-track:6dc41680b83753802945215339e22af6bdca477f5e59394497ba483025611bdb` |
| 8 | `def` | [prettyName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DependencyPublic.lean/declarations/prettyname.md) | 118 | `declaration-track:49a265c95d424237d51060b36967bd73121922a8eabac2dad053ad7c628785f2` |
| 9 | `def` | [reservoirName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DependencyPublic.lean/declarations/reservoirname.md) | 122 | `declaration-track:76db6d84097f65b79aba9eee10c5e2f2afc6af5771530a65c2b24e7f98097d4c` |
| 10 | `def` | [fullName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DependencyPublic.lean/declarations/fullname.md) | 126 | `declaration-track:03a6a8c9ff8a4b406876bd642654b2d251e36b7e25a8977df39e91ba585b42a7` |
| 11 | `def` | [resolverDescr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/DependencyPublic.lean/declarations/resolverdescr.md) | 130 | `declaration-track:1c35fd765e0e5809485fd9923b61d99ad8f7b552a0ef6d3592bbb54ffb001c06` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1460ea1a4b945b1b447d52f0939112e00aa013ccfcc4f8fe8aee8034fec73567 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dependency/Variantb3436721183a545e21e59d94b0843c9b5c806b4224edc3bd1f993d97da848a53.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dependency/Variantb3436721183a545e21e59d94b0843c9b5c806b4224edc3bd1f993d97da848a53.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
