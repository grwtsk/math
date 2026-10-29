# Verification target: Tactic Mk Iff Of Inductive Prop Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "347ac836871184a96643b8e7844ccad55c05d801",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant3b000ec587e4a004097747d50c2ef913a84650b4c6edd8cf295012aa1c5326ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropNamespacedEdition1.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `347ac836871184a96643b8e7844ccad55c05d801`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant3b000ec587e4a004097747d50c2ef913a84650b4c6edd8cf295012aa1c5326ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant3b000ec587e4a004097747d50c2ef913a84650b4c6edd8cf295012aa1c5326ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.DeclarationRange` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Cases` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Meta` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Name` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [select](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropNamespacedEdition1.lean/declarations/select.md) | 42 | `declaration-track:e5697c94d4fb1001cdd7069214745f732e490771d61c8594a09622795724fd66` |
| 2 | `def` | [compactRelation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropNamespacedEdition1.lean/declarations/compactrelation.md) | 62 | `declaration-track:113b33466c075cc56c56647034414677bd08d61b59821f805ab3e3247191bb5a` |
| 3 | `def` | [updateLambdaBinderInfoD!](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropNamespacedEdition1.lean/declarations/updatelambdabinderinfod.md) | 76 | `declaration-track:0db846c9a6aa036bf7d99bbc846f22a0eb81da3c7cae92e83c1c057cb3eb36c1` |
| 4 | `def` | [mkExistsList](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropNamespacedEdition1.lean/declarations/mkexistslist.md) | 83 | `declaration-track:ef33d96e0e141c6b7c2afe8b902e3dd086f6509cf21d83a2f37e5bbbf786b185` |
| 5 | `def` | [mkOpList](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropNamespacedEdition1.lean/declarations/mkoplist.md) | 96 | `declaration-track:46dd1cd551b0f339f2b230a171d223314b309db7e7cb704eed7195b3354976d8` |
| 6 | `def` | [mkAndList](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropNamespacedEdition1.lean/declarations/mkandlist.md) | 102 | `declaration-track:be5bb2f98eed696a0175a3c1dd5cd7fc0daaa521eaea23ae5e1d7b56dadceb24` |
| 7 | `def` | [mkOrList](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropNamespacedEdition1.lean/declarations/mkorlist.md) | 105 | `declaration-track:b64ed06b0bd5b7393527828efd6dc2c16f8a9c55d6954269067f59cc3e5488dc` |
| 8 | `def` | [List.init](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropNamespacedEdition1.lean/declarations/list-init.md) | 108 | `declaration-track:da9511acc986566ea3ba26d2413c75391edd563e4ab5fe9b38b2a58f9c6eda8e` |
| 9 | `structure` | [Shape](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropNamespacedEdition1.lean/declarations/shape.md) | 115 | `declaration-track:d53166688edd6b2e7f17d73bbc88702db97c3bc87d21948de8b3910c3090601e` |
| 10 | `def` | [constrToProp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropNamespacedEdition1.lean/declarations/constrtoprop.md) | 144 | `declaration-track:518b34ef82aed064d4c6a79361e00ae64140666bf8fd750cec0d82f79fd11bac` |
| 11 | `def` | [splitThenConstructor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropNamespacedEdition1.lean/declarations/splitthenconstructor.md) | 179 | `declaration-track:3f50e026a576b619a698cab947d983ed7a1b376703a89bc3c186679829b34336` |
| 12 | `def` | [toCases](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropNamespacedEdition1.lean/declarations/tocases.md) | 198 | `declaration-track:dd9c2148710f955f11add5366e7ac0cc5e8ec99dddaaa9b9b14e07d24eb4edae` |
| 13 | `def` | [nCasesSum](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropNamespacedEdition1.lean/declarations/ncasessum.md) | 219 | `declaration-track:a4527ccd2df1690cc8f70be82ebf1cf9ba6681acac71c3435bdfd7b7a24d34db` |
| 14 | `def` | [nCasesProd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropNamespacedEdition1.lean/declarations/ncasesprod.md) | 232 | `declaration-track:04ec5461ff0fc921694bc5ecd8560fe327006058bf6afe6cc5a0d5a38d5ee601` |
| 15 | `def` | [listBoolMerge](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropNamespacedEdition1.lean/declarations/listboolmerge.md) | 251 | `declaration-track:9ab7860aac878d0500e03122a833c464e286bc665a07e22e89f3e9476cfa5b2e` |
| 16 | `def` | [toInductive](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropNamespacedEdition1.lean/declarations/toinductive.md) | 259 | `declaration-track:6021767f4a031cfeb62571ca5e2cddff06830835088ff18338f53efac18c08b9` |
| 17 | `def` | [mkIffOfInductivePropImpl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropNamespacedEdition1.lean/declarations/mkiffofinductivepropimpl.md) | 303 | `declaration-track:fbd308cfe3ca98d32ab4ac7daa6c85ffcb91b8ca8e29224d71fed14d97f8fd25` |
| 18 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropNamespacedEdition1.lean/declarations/syntax-source-edition-2.md) | 381 | `declaration-track:7487b494338b9e189ceac08598a4efb472da749d871618e7e91f40de7c04dc6b` |
| 19 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropNamespacedEdition1.lean/declarations/syntax.md) | 402 | `declaration-track:6f999418214ba400b12173a4f1e834dc1be890770b84834097498cd50c594adb` |
| 20 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropNamespacedEdition1.lean/declarations/elab-rules.md) | 404 | `declaration-track:975e39a6750ca44196cf30f77a58a6b4b8af752f225c8f61c7623308d6b0866d` |
| 21 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticMkIffOfInductivePropNamespacedEdition1.lean/declarations/initialize.md) | 409 | `declaration-track:e9010c45c109f7604f8e62cf32ba10608cfb0e30cca2b40e6a3e4a945fe51a17` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b707f1be5cc42a70105616661b8a1f6aa4f77b78c79d3ddd3811b379e1835020 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant3b000ec587e4a004097747d50c2ef913a84650b4c6edd8cf295012aa1c5326ae.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MkIffOfInductiveProp/Variant3b000ec587e4a004097747d50c2ef913a84650b4c6edd8cf295012aa1c5326ae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
