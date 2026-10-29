# Verification target: Alpha Share Common Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ed2c94e9a7f5b43f4d9fee21372c3675b5afcc1",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variantba55fb34eedf735d8a412d81f27cf5c1d7c3fd6257e31f2712db3852bfcd81bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AlphaShareCommonNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AlphaShareCommonNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ed2c94e9a7f5b43f4d9fee21372c3675b5afcc1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variantba55fb34eedf735d8a412d81f27cf5c1d7c3fd6257e31f2712db3852bfcd81bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variantba55fb34eedf735d8a412d81f27cf5c1d7c3fd6257e31f2712db3852bfcd81bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind.Util` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.ReducibilityAttrs` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.ProjFns` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hashChild](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AlphaShareCommonNamespacedPublic.lean/declarations/hashchild.md) | 24 | `declaration-track:579da860cbb2db522e25693887c2d53d147d6b6e53d97cde6ec5c2a76d0137a5` |
| 2 | `def` | [alphaHash](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AlphaShareCommonNamespacedPublic.lean/declarations/alphahash.md) | 31 | `declaration-track:9fd71dbc3f143d09727d59696bdbf48a6cb7ce472740322b94dba112902aaeed` |
| 3 | `def` | [alphaEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AlphaShareCommonNamespacedPublic.lean/declarations/alphaeq.md) | 41 | `declaration-track:43a67c31aaff5bc6140ae780f217ecab97839dab2f5d2d30cbad509df185df18` |
| 4 | `def` | [isGrindGadget](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AlphaShareCommonNamespacedPublic.lean/declarations/isgrindgadget.md) | 70 | `declaration-track:8ea25c5f1e41851796dfb700c8941b420f3a6d975c8c2032d840c0e794eb6399` |
| 5 | `def` | [isUnfoldReducibleCandidate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AlphaShareCommonNamespacedPublic.lean/declarations/isunfoldreduciblecandidate.md) | 81 | `declaration-track:dac4616366bd0fdb5e8d9b0b5a2eda93cb3075a7c0659a2d38e82827c686cedf` |
| 6 | `structure` | [AlphaKey](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AlphaShareCommonNamespacedPublic.lean/declarations/alphakey.md) | 85 | `declaration-track:7723dd200fc022c532f76befbddac3628e863667c187d95297984dfa25eb0839` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AlphaShareCommonNamespacedPublic.lean/declarations/instance.md) | 88 | `declaration-track:bab09bcf9b42de06833e5fc1d7b413d694e80d5a983b750037fc4f03917d1cfd` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AlphaShareCommonNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 91 | `declaration-track:f1c90aa8d5ae4a0660bfc7890576aa8b994493c7cd191d95ad02aa2ecdac3757` |
| 9 | `structure` | [Context](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AlphaShareCommonNamespacedPublic.lean/declarations/context.md) | 97 | `declaration-track:af17d4ad8c8c5bb21babfcffe94b29c25c8d116e6cfa4af7d109334aaafbdd16` |
| 10 | `structure` | [State](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AlphaShareCommonNamespacedPublic.lean/declarations/state-source-edition-2.md) | 112 | `declaration-track:c35de8abb942571cbe925c7c1171aa5564a71b3e1e43f43d997037928db20378` |
| 11 | `abbrev` | [Cache](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AlphaShareCommonNamespacedPublic.lean/declarations/cache.md) | 121 | `declaration-track:3dd5089d400fb2d2ca0e0188796002736be4de77216bdd4ebba79c6f59d2389c` |
| 12 | `abbrev` | [AlphaShareCommonM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AlphaShareCommonNamespacedPublic.lean/declarations/alphasharecommonm.md) | 138 | `declaration-track:3667e0a6d736073c82dde93645faa09a366646f2174cef7fa895b08f17a66835` |
| 13 | `def` | [isReducible](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AlphaShareCommonNamespacedPublic.lean/declarations/isreducible.md) | 144 | `declaration-track:558475c159f88a732e97a405d5b8e313b3c4237acd721086d77e3ffe0a2c5813` |
| 14 | `structure` | [State](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AlphaShareCommonNamespacedPublic.lean/declarations/state.md) | 147 | `declaration-track:705e118e963beb6ebf6c05e32643d1d9074ea34ad97e6754c16bc5804ac176c6` |
| 15 | `abbrev` | [M](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AlphaShareCommonNamespacedPublic.lean/declarations/m.md) | 151 | `declaration-track:c5abc7869230b331bba05bb8f7d83e44bbc4074f551425bc8cbdbe17f5eafdc8` |
| 16 | `def` | [dummy](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AlphaShareCommonNamespacedPublic.lean/declarations/dummy.md) | 153 | `declaration-track:110021f2fc58988366fd51c7ccd6662c5cc8bb9061cb7370aea8ba1106b00f03` |
| 17 | `def` | [save](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AlphaShareCommonNamespacedPublic.lean/declarations/save.md) | 155 | `declaration-track:903b97f4b2357780662aadf4c7e9f930dddcf8b20f5099ad066159fb15e16bb7` |
| 18 | `abbrev` | [visit](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AlphaShareCommonNamespacedPublic.lean/declarations/visit.md) | 172 | `declaration-track:643a2123d7942beb2a4ae5103e9f7d184621b3951d9ada9649d97f3a2668047f` |
| 19 | `def` | [go](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AlphaShareCommonNamespacedPublic.lean/declarations/go.md) | 191 | `declaration-track:069ed048a0658497e2f7583749c86c20ea36c7ea41783baa040ecb95d149dea0` |
| 20 | `def` | [shareCommonAlpha](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AlphaShareCommonNamespacedPublic.lean/declarations/sharecommonalpha.md) | 222 | `declaration-track:427d2cfb423b61e82d36699ee43209cd25bc62ce1b9f641344393e039846f319` |
| 21 | `def` | [saveInc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AlphaShareCommonNamespacedPublic.lean/declarations/saveinc.md) | 233 | `declaration-track:8b5c9a1011c413dc81f1766cbd6e261c5a49f91243c71e7f1b012bd189959cd0` |
| 22 | `def` | [visitInc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AlphaShareCommonNamespacedPublic.lean/declarations/visitinc.md) | 242 | `declaration-track:d4c2e200b83830893d4157b5d6c75c544ddcdb779c50a2931f3eaf36ce939d2d` |
| 23 | `def` | [shareCommonAlphaInc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AlphaShareCommonNamespacedPublic.lean/declarations/sharecommonalphainc.md) | 270 | `declaration-track:441aefab97187c2f772371132177ff951e9e7d5eda8af4a3c5e8e8ac46ad6cb9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d8e9f8920dcfde85a0e5b535cf3cc79ada9de0af42b89a28dc03fb03a2f6f31e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variantba55fb34eedf735d8a412d81f27cf5c1d7c3fd6257e31f2712db3852bfcd81bb.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AlphaShareCommon/Variantba55fb34eedf735d8a412d81f27cf5c1d7c3fd6257e31f2712db3852bfcd81bb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
