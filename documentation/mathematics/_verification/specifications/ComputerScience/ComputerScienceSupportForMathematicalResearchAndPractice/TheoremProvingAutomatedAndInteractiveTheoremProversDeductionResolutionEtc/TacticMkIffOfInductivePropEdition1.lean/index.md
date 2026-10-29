# Verification target: Tactic Mk Iff Of Inductive Prop Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d1cde6ec90f81dff0899d0aba353cae044540d3",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant042d13528e16b8155de3057b9212e4a7503cec87c331c1b99c42a8881f455cfc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropEdition1.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d1cde6ec90f81dff0899d0aba353cae044540d3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant042d13528e16b8155de3057b9212e4a7503cec87c331c1b99c42a8881f455cfc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant042d13528e16b8155de3057b9212e4a7503cec87c331c1b99c42a8881f455cfc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.DeclarationRange` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Cases` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Meta` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Name` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [select](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropEdition1.lean/declarations/select.md) | 34 | `declaration-track:dce6c655fce1f24cea7c7773a821c4e698c55300ac81732e3886f9186183f26b` |
| 2 | `def` | [compactRelation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropEdition1.lean/declarations/compactrelation.md) | 54 | `declaration-track:e5dd4123e32878c84028cde9f436a929d05ce323fb5472a59a12adae6364bd6b` |
| 3 | `def` | [updateLambdaBinderInfoD!](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropEdition1.lean/declarations/updatelambdabinderinfod.md) | 68 | `declaration-track:d2ce74f2e3f0449cb585b73d46ca1002672a334f7fb3e548b62baa0149e852e3` |
| 4 | `def` | [mkExistsList](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropEdition1.lean/declarations/mkexistslist.md) | 75 | `declaration-track:3a4935fa65a412054c1472fe66167a60401d85c4043e0ccf86c249c4e9cb495d` |
| 5 | `def` | [mkOpList](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropEdition1.lean/declarations/mkoplist.md) | 88 | `declaration-track:6f8cd2d8fed9ef1e1f0142404c1ddca9d4619706df893a19cdd35241cf3d18a4` |
| 6 | `def` | [mkAndList](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropEdition1.lean/declarations/mkandlist.md) | 94 | `declaration-track:d21f7baadff93ca28f23512d5c23eb89a25474ed6b361c62e1b4b7e26f8e5b7e` |
| 7 | `def` | [mkOrList](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropEdition1.lean/declarations/mkorlist.md) | 97 | `declaration-track:90e1379fe98d24d7182d3de050a29d6e87359c9e6bb393de8ead9345c9f77a0b` |
| 8 | `def` | [List.init](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropEdition1.lean/declarations/list-init.md) | 100 | `declaration-track:4683835765daefcbcbade50642d98f1d0da5abce34774b4d01c903c771186c7f` |
| 9 | `structure` | [Shape](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropEdition1.lean/declarations/shape.md) | 107 | `declaration-track:219659ab8b61c50c1eeb3ed3f99221a4d9cec2c62b0c9035384747cc522fa48b` |
| 10 | `def` | [constrToProp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropEdition1.lean/declarations/constrtoprop.md) | 136 | `declaration-track:86a450a517474381a4660b5d902d54a8616ad65953676b819a4a46938461e06c` |
| 11 | `def` | [splitThenConstructor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropEdition1.lean/declarations/splitthenconstructor.md) | 171 | `declaration-track:09e81085dcd04d08c0666050b323a68e72a5dc276a358b4e15e14705d69b4238` |
| 12 | `def` | [toCases](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropEdition1.lean/declarations/tocases.md) | 190 | `declaration-track:1582ebd0e0f1abd000153bf140a753943744ce689adbd61782b282e4884467e0` |
| 13 | `def` | [nCasesSum](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropEdition1.lean/declarations/ncasessum.md) | 211 | `declaration-track:bfcfdd88d6cfac708285f0cb53ea6a18cab635d2ed8e86586fe1e6084469076d` |
| 14 | `def` | [nCasesProd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropEdition1.lean/declarations/ncasesprod.md) | 224 | `declaration-track:6f9d0b8d2d79df26d536a324ff02795a6d618604f0879d329ca358c7489d39f7` |
| 15 | `def` | [listBoolMerge](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropEdition1.lean/declarations/listboolmerge.md) | 243 | `declaration-track:e307374fdef2166a6aa28f40dc2bbb8964e8121bc509710e542a0162f9ee2a07` |
| 16 | `def` | [toInductive](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropEdition1.lean/declarations/toinductive.md) | 251 | `declaration-track:d39c802d457c2a499a6442079ba2eb0dbf2c9706947545939e8dabe75ea1aec6` |
| 17 | `def` | [mkIffOfInductivePropImpl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropEdition1.lean/declarations/mkiffofinductivepropimpl.md) | 295 | `declaration-track:d869dd1ed228caebc1ebfeaf561cf8767eb44ce9b1887c61a13b7ad8866bfb57` |
| 18 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropEdition1.lean/declarations/syntax.md) | 373 | `declaration-track:52a41b8a82d955d432bbf366c97c421411a6b984f70987326d52b8753bf793a7` |
| 19 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropEdition1.lean/declarations/syntax-source-edition-2.md) | 394 | `declaration-track:9e2223ce5b6f0c22ae10f99e2862a42c1f1504e6090d7c1d1d88db19f6469010` |
| 20 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropEdition1.lean/declarations/elab-rules.md) | 396 | `declaration-track:3d02563cdd6277ed42b1973d3b5e0de6729f4d43616fbecb58c8744e4be5957d` |
| 21 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropEdition1.lean/declarations/initialize.md) | 401 | `declaration-track:f6b8cb6ebfdc48e193d7063c128e2d4d032c85163b81652890f992b3ced7f8bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce827dc8a2823e3b2138e038d08dc47420e2ad9dee82f0cd96596e6412103598 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant042d13528e16b8155de3057b9212e4a7503cec87c331c1b99c42a8881f455cfc.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant042d13528e16b8155de3057b9212e4a7503cec87c331c1b99c42a8881f455cfc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
