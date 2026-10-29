# Verification target: Init Set

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f5c2fda08f43c917d1d66bb5e863d637c607c6b",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variant3f275a93a73c30efb3cdc70844a11bc47eba5502d095b890218597edf2b3445d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSet.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f5c2fda08f43c917d1d66bb5e863d637c607c6b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variant3f275a93a73c30efb3cdc70844a11bc47eba5502d095b890218597edf2b3445d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variant3f275a93a73c30efb3cdc70844a11bc47eba5502d095b890218597edf2b3445d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Parser.Term` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Classes.SetNotation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Mathport.Rename` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Set](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSet.lean/declarations/set.md) | 38 | `declaration-track:0039987ed92f962bae629bf98b77a4930e5c632fb02b93f35b1e00bca7639170` |
| 2 | `def` | [setOf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSet.lean/declarations/setof.md) | 41 | `declaration-track:72dfc5829e929e996555f6081d6fba08be58c23ded7e49215a81c9e4c47e0646` |
| 3 | `def` | [Mem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSet.lean/declarations/mem.md) | 48 | `declaration-track:50bf28931e65b6e9c8005b5d61b652da272ed7054106072ba1acb4b44825e1ee` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSet.lean/declarations/instance-source-edition-7.md) | 51 | `declaration-track:cdc97fd820da27492be5a742d52d5d3faabeee705333037b5efeb49f7540aa1a` |
| 5 | `theorem` | [ext](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSet.lean/declarations/ext.md) | 54 | `result-track:ab8715f652795253afc9933cab855fe474905fb27ab9f40a9ce9201f29e5eba0` |
| 6 | `def` | [Subset](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSet.lean/declarations/subset.md) | 57 | `declaration-track:0a924ce08c53a590db46c521efe5b125ab6b3c47a993e3b55c061ac4637e39e2` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSet.lean/declarations/instance-source-edition-5.md) | 62 | `declaration-track:7a2eb7e5b38f1440331950eea8def3bab864c9109fcd31f17bb06a20fa0b72ac` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSet.lean/declarations/instance-source-edition-6.md) | 65 | `declaration-track:960f0dce1c1bb1c12ccc6a8be8361f98783d8fa049b4cb88e66571411de78a1d` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSet.lean/declarations/instance-source-edition-2.md) | 68 | `declaration-track:23e985dd5fa9c4cf2ef03674888d071f89f69672cef9ccf8c5ae0f6558ae0ed1` |
| 10 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSet.lean/declarations/syntax.md) | 72 | `declaration-track:cd64ac6bca38a15e4449d35c37dd1ce8e9ada021883ef24874eea02d52415dd7` |
| 11 | `macro_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSet.lean/declarations/macro-rules.md) | 74 | `declaration-track:8f282a1391773c9451fa0692fe6cc221c7513071688555c3b08049757effadc1` |
| 12 | `def` | [setOf.unexpander](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSet.lean/declarations/setof-unexpander.md) | 81 | `declaration-track:f1274cfd13329fb3f6793016b07c1513a840ffbb955cef950231ef48fa18147f` |
| 13 | `macro` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSet.lean/declarations/macro.md) | 87 | `declaration-track:51207765d61236a3033a6547810499af8a515e8c5430351af70bbe9bf01b8cc5` |
| 14 | `def` | [univ](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSet.lean/declarations/univ.md) | 90 | `declaration-track:d182e44de8b6784a99f1d2405bf8aed5a78a1fb750bd92917150e89db2faf79f` |
| 15 | `def` | [insert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSet.lean/declarations/insert.md) | 93 | `declaration-track:1e86f7ce0bdfa2967c3c4e30aa888cc081699473cccf69c68745c913460a4259` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSet.lean/declarations/instance-source-edition-8.md) | 95 | `declaration-track:d7472d9c28d2ffbb059cd8f30f71a547fe75fa643091de8ed18d44f69af74473` |
| 17 | `def` | [singleton](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSet.lean/declarations/singleton.md) | 97 | `declaration-track:5f369a3f095d44c4ece095dff566f6c82c1e7ebc057041f9d78496192e9a3d4e` |
| 18 | `instance` | [instSingletonSet](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSet.lean/declarations/instsingletonset.md) | 99 | `declaration-track:d676d35b6d6681a5fc5288f5f79c1963fb6a2bba50bdec57feeb1e042e8fc75c` |
| 19 | `def` | [union](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSet.lean/declarations/union.md) | 101 | `declaration-track:4e31275fbb318e077ae50ac63d18202bb955e433fe03a4dcbc59e9b4ff8e3a01` |
| 20 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSet.lean/declarations/instance-source-edition-10.md) | 103 | `declaration-track:f804e2f9e00a12f041d8fa70b9adb2de2c27f2c8cc95736db3daa80c2f6ac675` |
| 21 | `def` | [inter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSet.lean/declarations/inter.md) | 105 | `declaration-track:8b3d5b25b3bd9acecdced6b0648499660204ea61d312db16531a66ac47a9751a` |
| 22 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSet.lean/declarations/instance-source-edition-3.md) | 107 | `declaration-track:24af3e97e867bc796b3f550d7439222837a05c042f48e79b7a4f7f928ab6a560` |
| 23 | `def` | [compl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSet.lean/declarations/compl.md) | 109 | `declaration-track:0ae567b750684d4c1d6b455e303c35ebebef7a3666108d28e9b3325630e93261` |
| 24 | `def` | [diff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSet.lean/declarations/diff.md) | 111 | `declaration-track:5930fd21b7e8b1c91624df00ed28c04c352163731baa2409d85b6b4ddbb08838` |
| 25 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSet.lean/declarations/instance-source-edition-9.md) | 113 | `declaration-track:e69ee8c96ce778e10a2254ddabc02365f530c7614ef60a9cc17311a6b076ec3b` |
| 26 | `def` | [powerset](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSet.lean/declarations/powerset.md) | 115 | `declaration-track:5bd31a3805dd7cca4a22764a7b686102bf3a62ad4865669d66f56623a4276aa8` |
| 27 | `def` | [image](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSet.lean/declarations/image.md) | 119 | `declaration-track:dc1f9efef157baa1eec2603b5ac43ae4333221a6a09245a410f50f7becbe51a3` |
| 28 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSet.lean/declarations/instance.md) | 121 | `declaration-track:0424c94bccd18df33895194cea6c302566b50baac181c1934d2aeb8aa62ca05e` |
| 29 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InitSet.lean/declarations/instance-source-edition-4.md) | 123 | `declaration-track:60c138991eb752a73b9099f5c1be76b7dcc003525718945fb148aa4aff3eb07e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=39e924460f614da2d48937c6a2ab6c9d2edd9a2207be8ab09b81bcd04937434e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variant3f275a93a73c30efb3cdc70844a11bc47eba5502d095b890218597edf2b3445d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Set/Variant3f275a93a73c30efb3cdc70844a11bc47eba5502d095b890218597edf2b3445d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
