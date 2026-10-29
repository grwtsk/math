# Verification target: Of Nat Module Namespaced Public Of Nat Module M

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb142c49a56fa0a8159c1cf20eec98ab5ef27968",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf47b6ea58b0e891fd503c139819ed03f75dd60842cf7fc5cbcc45c7dcde0dc43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/OfNatModuleNamespacedPublicOfNatModuleM.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/OfNatModuleNamespacedPublicOfNatModuleM.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb142c49a56fa0a8159c1cf20eec98ab5ef27968`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf47b6ea58b0e891fd503c139819ed03f75dd60842cf7fc5cbcc45c7dcde0dc43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf47b6ea58b0e891fd503c139819ed03f75dd60842cf7fc5cbcc45c7dcde0dc43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind.Module.OfNatModule` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Grind.Module.NatModuleNorm` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Diseq` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.ToExpr` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Order` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Order.Lemmas` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Data.RArray` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OfNatModuleM.Context](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/OfNatModuleNamespacedPublicOfNatModuleM.lean/declarations/ofnatmodulem-context.md) | 27 | `declaration-track:326bd08a01ec3afafc6941398c5d13170b6df65b04ca5f33e4ef22199998e31d` |
| 2 | `abbrev` | [OfNatModuleM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/OfNatModuleNamespacedPublicOfNatModuleM.lean/declarations/ofnatmodulem.md) | 30 | `declaration-track:03a7d835c87d2e5fe651a30c4eaecb36c1092d0953e82fa6783ac980fed08b92` |
| 3 | `abbrev` | [OfNatModuleM.run](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/OfNatModuleNamespacedPublicOfNatModuleM.lean/declarations/ofnatmodulem-run.md) | 32 | `declaration-track:ebac788b2602cc2ef11d12b7f9869a6b1d93880ba7f368d2093f0a4d578eae76` |
| 4 | `abbrev` | [getNatStructId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/OfNatModuleNamespacedPublicOfNatModuleM.lean/declarations/getnatstructid.md) | 35 | `declaration-track:56b6d39ab08b544f9d86fc06ec97911c2207540765381c34eb47ee5ed8d588ea` |
| 5 | `def` | [getNatStruct](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/OfNatModuleNamespacedPublicOfNatModuleM.lean/declarations/getnatstruct.md) | 38 | `declaration-track:f5757b0d65487228bfe0d0e44616d040942b391db04f486558e59753d913ef60` |
| 6 | `def` | [OfNatModuleM.getStruct](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/OfNatModuleNamespacedPublicOfNatModuleM.lean/declarations/ofnatmodulem-getstruct.md) | 46 | `declaration-track:655f053806edb0f0faab55d31916314aa4acb546395fddccd6866f0080886154` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/OfNatModuleNamespacedPublicOfNatModuleM.lean/declarations/instance.md) | 50 | `declaration-track:dfefd151cad1105b931abd939619f618362c2f7e58e159d995a4048a726ed87e` |
| 8 | `def` | [modifyNatStruct](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/OfNatModuleNamespacedPublicOfNatModuleM.lean/declarations/modifynatstruct.md) | 53 | `declaration-track:d0f973ae60acfce77879f23ccc74b059610ef6896658da9dcf372e9d54c240e0` |
| 9 | `def` | [getTermNatStructId?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/OfNatModuleNamespacedPublicOfNatModuleM.lean/declarations/gettermnatstructid.md) | 57 | `declaration-track:9cf4094fdf7d754a396555b6440e67c59010d9c3f7a67cba520e29b7409e57ec` |
| 10 | `def` | [inSameNatStruct?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/OfNatModuleNamespacedPublicOfNatModuleM.lean/declarations/insamenatstruct.md) | 61 | `declaration-track:e0aa21f6a0ad7a92e90ad9984d8b1ff4ee40b66a086dfe0279e22f75b43cd466` |
| 11 | `def` | [setTermNatStructId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/OfNatModuleNamespacedPublicOfNatModuleM.lean/declarations/settermnatstructid.md) | 67 | `declaration-track:d54e4aafc41d48515acc88d40dce71e64289770349a8a7445eee2c55edb79739` |
| 12 | `def` | [mkOfNatModuleVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/OfNatModuleNamespacedPublicOfNatModuleM.lean/declarations/mkofnatmodulevar.md) | 75 | `declaration-track:c51a6bd9a1df6c00ee19b572f1f81ec38021c699eb8116cb57ceb0f2ae933728` |
| 13 | `def` | [isAddInst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/OfNatModuleNamespacedPublicOfNatModuleM.lean/declarations/isaddinst.md) | 88 | `declaration-track:4a3a724d5f562b9cc9f03bcc5f3d643793a655d70f079a187bdc3fbdcfb9ad7d` |
| 14 | `def` | [isZeroInst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/OfNatModuleNamespacedPublicOfNatModuleM.lean/declarations/iszeroinst.md) | 90 | `declaration-track:851125dfab6a2515dccd03dd491302b723b09661b52fd07713c4cd37f3c4cb9d` |
| 15 | `def` | [isSMulInst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/OfNatModuleNamespacedPublicOfNatModuleM.lean/declarations/issmulinst.md) | 92 | `declaration-track:cc63409b7ba0d826320458ceeb34c2ca407afc72c2979ee16787e3efa64c40ba` |
| 16 | `def` | [ofNatModule'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/OfNatModuleNamespacedPublicOfNatModuleM.lean/declarations/ofnatmodule.md) | 95 | `declaration-track:1879739277b62644da8c8285712162a812a01589bdab7cfe5cbf0c7e60227fe6` |
| 17 | `def` | [ofNatModule](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/OfNatModuleNamespacedPublicOfNatModuleM.lean/declarations/ofnatmodule-source-edition-2.md) | 132 | `declaration-track:a0a2bc2d3531af1796e462140897e8bdff7139363008e6d4d19c6a3b5b24e21c` |
| 18 | `structure` | [ReifyM.State](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/OfNatModuleNamespacedPublicOfNatModuleM.lean/declarations/reifym-state.md) | 146 | `declaration-track:eb263f22c445163f3967589ef226f35e9f5f7cd7af9736451e49470c4173bb1e` |
| 19 | `abbrev` | [ReifyM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/OfNatModuleNamespacedPublicOfNatModuleM.lean/declarations/reifym.md) | 150 | `declaration-track:756ab4259edd66e84ef4d5c11895c5c968ed3bf26e99584685cf014c1254dbc6` |
| 20 | `abbrev` | [ReifyM.run](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/OfNatModuleNamespacedPublicOfNatModuleM.lean/declarations/reifym-run.md) | 152 | `declaration-track:4bb25f3ca1357e75581a864626ca914f6bf509f3be19a3a4684328c87d5673a2` |
| 21 | `def` | [reifyVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/OfNatModuleNamespacedPublicOfNatModuleM.lean/declarations/reifyvar.md) | 155 | `declaration-track:fbb9f3835f8b92df11b2318b351707227c7e6fef1523c2842875f4e00c5d8493` |
| 22 | `def` | [reify](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/OfNatModuleNamespacedPublicOfNatModuleM.lean/declarations/reify.md) | 163 | `declaration-track:ee1a0744c5f05c939e85758fd589c044034b04ffb9d6f1eca6dc8c422245c9fb` |
| 23 | `def` | [normNatModuleDiseq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/OfNatModuleNamespacedPublicOfNatModuleM.lean/declarations/normnatmodulediseq.md) | 189 | `declaration-track:e7f96db9ee0ff05705a2dc38a1ff3fe5e19cac4bbf6f652ede20a7acfbbb6327` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b354d9a574f08d61338e62dff303e4734a22449c0443ce91db289b49d2b0f3d3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf47b6ea58b0e891fd503c139819ed03f75dd60842cf7fc5cbcc45c7dcde0dc43.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OfNatModule/Variantf47b6ea58b0e891fd503c139819ed03f75dd60842cf7fc5cbcc45c7dcde0dc43.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
