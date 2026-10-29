# Verification target: Inv Public Poly

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9429c275c8943bbfddd7161478a190d36d59d25f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant730721ff9fa54256252ba1856ed6a9ff0c5d7299655bf4904efb1670cd0a6845.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InvPublicPoly.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InvPublicPoly.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9429c275c8943bbfddd7161478a190d36d59d25f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant730721ff9fa54256252ba1856ed6a9ff0c5d7299655bf4904efb1670cd0a6845.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant730721ff9fa54256252ba1856ed6a9ff0c5d7299655bf4904efb1670cd0a6845.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Util` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Poly.checkCoeffs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InvPublicPoly.lean/declarations/poly-checkcoeffs.md) | 13 | `declaration-track:50bb1987c748bfeb26ae929862d6a9a630188fa2ecdb1b3bca198a06bf27e9d4` |
| 2 | `def` | [_root_.Int.Internal.Linear.Poly.checkNoElimVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InvPublicPoly.lean/declarations/root-int-internal-linear-poly-checknoelimvars.md) | 21 | `declaration-track:0aa40c951b48935ea6f7f211f985ada41bf3b8b1b2e128de0ff3400b5c201167` |
| 3 | `def` | [_root_.Int.Internal.Linear.Poly.checkOccs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InvPublicPoly.lean/declarations/root-int-internal-linear-poly-checkoccs.md) | 26 | `declaration-track:74486fff9320d9a399190b480ec267b7b1069e86e5638f97ba6e769b4b9a230b` |
| 4 | `def` | [_root_.Int.Internal.Linear.Poly.checkCnstrOf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InvPublicPoly.lean/declarations/root-int-internal-linear-poly-checkcnstrof.md) | 34 | `declaration-track:1218017955258738f7f743855e3e7247d1a0e564aff9abfbcc13dedd69473aaa` |
| 5 | `def` | [checkLeCnstrs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InvPublicPoly.lean/declarations/checklecnstrs.md) | 43 | `declaration-track:b68153dec05eaedc8e1aa7fa9fbdca6c9d21fed14fb10e78cbd8912a794a9381` |
| 6 | `def` | [checkLowers](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InvPublicPoly.lean/declarations/checklowers.md) | 53 | `declaration-track:8620fcdae80cb8b6ca5c1e3d2b5c9de2daa4bd07021f3ac50d31c2592a52a160` |
| 7 | `def` | [checkUppers](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InvPublicPoly.lean/declarations/checkuppers.md) | 58 | `declaration-track:a05e7234204052d8f9d739b2d068428fabb6badde0bab6302f9bd25ffa673189` |
| 8 | `def` | [checkDvds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InvPublicPoly.lean/declarations/checkdvds.md) | 63 | `declaration-track:8f38165b587ed2bb64c493d17492a929fecb2d3d78b9d6c7eba9b19ccb58dcdc` |
| 9 | `def` | [checkVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InvPublicPoly.lean/declarations/checkvars.md) | 73 | `declaration-track:6d5ae54ac506e28bad5eb1396d11f0ead2f30954f60ad9f3426fd7bb04db0cdb` |
| 10 | `def` | [checkElimEqs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InvPublicPoly.lean/declarations/checkelimeqs.md) | 85 | `declaration-track:f2b4d05852b806e3de5e004115b4ddfe40665a4317687f4b0b11566b6bfde1ce` |
| 11 | `def` | [checkElimStack](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InvPublicPoly.lean/declarations/checkelimstack.md) | 97 | `declaration-track:2662251c09465e1bc1126141210fa34e709efea44dc1e0a131c952d65ee849bb` |
| 12 | `def` | [checkDiseqCnstrs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InvPublicPoly.lean/declarations/checkdiseqcnstrs.md) | 101 | `declaration-track:1ee9b54257dd1cd04a2cc1caeca41d20a860277abf85604a4e799a04f2e69731` |
| 13 | `def` | [checkInvariants](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InvPublicPoly.lean/declarations/checkinvariants.md) | 111 | `declaration-track:0c4874a9775984753345cf67e5c38eb30289aafe1b4200990d2226cfd845f48e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=96a647a4054bf93ec2a90944fc27d8e8add9873427d0c19d595c7d234bd2cd74 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant730721ff9fa54256252ba1856ed6a9ff0c5d7299655bf4904efb1670cd0a6845.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variant730721ff9fa54256252ba1856ed6a9ff0c5d7299655bf4904efb1670cd0a6845.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
