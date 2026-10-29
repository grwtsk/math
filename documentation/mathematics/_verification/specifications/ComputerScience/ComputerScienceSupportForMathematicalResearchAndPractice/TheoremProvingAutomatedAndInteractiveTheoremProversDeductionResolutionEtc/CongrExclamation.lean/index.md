# Verification target: Congr Exclamation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43e8ba19f043c5b47163c53387cde93eab4a6123",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantbdcbdf2a7953b2bb20b1501d28aca80c51db2e61b4b76d26c23765b7735a1c9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrExclamation.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrExclamation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43e8ba19f043c5b47163c53387cde93eab4a6123`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantbdcbdf2a7953b2bb20b1501d28aca80c51db2e61b4b76d26c23765b7735a1c9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantbdcbdf2a7953b2bb20b1501d28aca80c51db2e61b4b76d26c23765b7735a1c9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Tactic.Config` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.RCases` — import line 7; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Assumption` — import line 8; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Rfl` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Meta.CongrTheorems` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrExclamation.lean/declarations/initialize.md) | 28 | `declaration-track:246088cb2623a997e5ee7ffc987dc9af6ee55cb5ff892a0711dce14f9754e769` |
| 2 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrExclamation.lean/declarations/initialize-source-edition-2.md) | 29 | `declaration-track:ecbf866ae6b6e5383da847c788aae658b50081bcc546114cefe7b52333166fc9` |
| 3 | `structure` | [Congr!.Config](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrExclamation.lean/declarations/congr-config.md) | 32 | `declaration-track:83183091d5dfd55afd8fa87a28da80dd736ba12a7ce5afa1bc18b9d9b117ebfe` |
| 4 | `def` | [Congr!.Config.unfoldSameFun](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrExclamation.lean/declarations/congr-config-unfoldsamefun.md) | 118 | `declaration-track:a2ad1450300efb8377226a51a2e173d1f8dc0d3636b161ca7dfd3284076455c3` |
| 5 | `def` | [Congr!.Config.numArgsOk](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrExclamation.lean/declarations/congr-config-numargsok.md) | 125 | `declaration-track:8a1c6e221af4686937924bb9bec5ba0ac99b94acc5a6542c0a2943d65a052297` |
| 6 | `def` | [Congr!.Config.maxArgsFor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrExclamation.lean/declarations/congr-config-maxargsfor.md) | 129 | `declaration-track:7fd6decb34013cd8d93d6e390518f5435bf7c4457171f65d672b8f024ab21050` |
| 7 | `def` | [applyCongrThm?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrExclamation.lean/declarations/applycongrthm.md) | 138 | `declaration-track:5e62920f7c2501f329d5cc07aa6c0f8e1368137ef5cf6b60cc9863554a124d9d` |
| 8 | `def` | [Congr!.plausiblyEqualTypes](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrExclamation.lean/declarations/congr-plausiblyequaltypes.md) | 165 | `declaration-track:500f09a34596d21f14bc2f0268862be246013a798674097be5733641ef2ffe6d` |
| 9 | `def` | [Lean.MVarId.smartHCongr?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrExclamation.lean/declarations/lean-mvarid-smarthcongr.md) | 202 | `declaration-track:7d548acbce10680521c0c2b78b91596059aec262b9cdca505e163047dce39a5b` |
| 10 | `def` | [Lean.MVarId.congrSimp?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrExclamation.lean/declarations/lean-mvarid-congrsimp.md) | 311 | `declaration-track:a0191f814478451fcb5c167f844fa1fcee04152bf7b0e97163e902dedacded9b` |
| 11 | `def` | [Lean.MVarId.userCongr?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrExclamation.lean/declarations/lean-mvarid-usercongr.md) | 350 | `declaration-track:cbdd331fa8885efa51755c31880732e8a6665783bb9d50ecbed6ab82b1d6f275` |
| 12 | `def` | [Lean.MVarId.congrPi?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrExclamation.lean/declarations/lean-mvarid-congrpi.md) | 383 | `declaration-track:b10e9f3a430dd17b8c8ecf45ba4a42923fb6b1bd3c5dfeb8a9ccb5aab0cd43fa` |
| 13 | `def` | [Lean.MVarId.obviousFunext?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrExclamation.lean/declarations/lean-mvarid-obviousfunext.md) | 393 | `declaration-track:1029a15914b79313d09d4ea177f6ad15f0f4290031981da680965eeadb05b20e` |
| 14 | `def` | [Lean.MVarId.obviousHfunext?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrExclamation.lean/declarations/lean-mvarid-obvioushfunext.md) | 406 | `declaration-track:395f23ea341f19d5ab3b803cbc4b63c41ddf3d9e98acd22d87e4893c18a81ad4` |
| 15 | `theorem` | [implies_congr'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrExclamation.lean/declarations/implies-congr.md) | 414 | `result-track:00622968596bf49866b79b20a3ac0a90d359f4c004f77371c5e7c29b6beb3324` |
| 16 | `def` | [Lean.MVarId.congrImplies?'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrExclamation.lean/declarations/lean-mvarid-congrimplies.md) | 422 | `declaration-track:d1dfe08890887b2f7d9d2421d7dc3aa089e5515f25f5f5fd5b1ce751092eabf3` |
| 17 | `def` | [Lean.MVarId.subsingletonHelim?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrExclamation.lean/declarations/lean-mvarid-subsingletonhelim.md) | 434 | `declaration-track:cd6e1059bbfc44d037269ce2fe36e6439037bdb46460df324e54c074e829cc2c` |
| 18 | `def` | [Lean.MVarId.beqInst?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrExclamation.lean/declarations/lean-mvarid-beqinst.md) | 455 | `declaration-track:c6563d940ce2955e963c71ed1efe24297769433eb5318c37f532bf206bc33ad9` |
| 19 | `def` | [Lean.MVarId.congrPasses!](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrExclamation.lean/declarations/lean-mvarid-congrpasses.md) | 461 | `declaration-track:7c2112178fec769d485443becd67a94771937a22d4dbd782a2b3cc5db6824c15` |
| 20 | `structure` | [CongrState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrExclamation.lean/declarations/congrstate.md) | 481 | `declaration-track:773911ecfdbd3c7825b2a681e5082362610c0005658a3e2f97d29f5c915e2b27` |
| 21 | `abbrev` | [CongrMetaM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrExclamation.lean/declarations/congrmetam.md) | 487 | `declaration-track:815bffeec8401d29c6e8445c104fdec438e2f0452805945bde448a04227faa94` |
| 22 | `def` | [CongrMetaM.nextPattern](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrExclamation.lean/declarations/congrmetam-nextpattern.md) | 490 | `declaration-track:a08f7b31eda517d3b8d1193384e5c6a7801df43a611c4323f0dceab4bf0283f3` |
| 23 | `theorem` | [heq_imp_of_eq_imp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrExclamation.lean/declarations/heq-imp-of-eq-imp.md) | 497 | `result-track:95bbcae8cf2b44f7240da2777d25193302f9181e727e968dd586676bacbd242d` |
| 24 | `theorem` | [eq_imp_of_iff_imp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrExclamation.lean/declarations/eq-imp-of-iff-imp.md) | 502 | `result-track:d1ab56ace86c9d7fbcdc3bdea22f5f6829b15f92c530d3f49d85a7f3c31b086a` |
| 25 | `def` | [Lean.MVarId.introsClean](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrExclamation.lean/declarations/lean-mvarid-introsclean.md) | 519 | `declaration-track:8f4993dccc12e81fa7505bffcb24cdc9d7ad7659b67a9660658f9db9b61db8d0` |
| 26 | `def` | [Lean.MVarId.preCongr!](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrExclamation.lean/declarations/lean-mvarid-precongr.md) | 569 | `declaration-track:19097418774dbd9570dad395afe8ce4e1dbbc5d66d2b24366459e2e801183039` |
| 27 | `def` | [Lean.MVarId.congrCore!](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrExclamation.lean/declarations/lean-mvarid-congrcore.md) | 586 | `declaration-track:c0628005299b5ce3e5fafc8ea825f3e9cd5b78039dfa81c2a7490355ce59cc0d` |
| 28 | `def` | [Lean.MVarId.postCongr!](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrExclamation.lean/declarations/lean-mvarid-postcongr.md) | 609 | `declaration-track:bb42cb1fa4ab1f34f2044f210ba91814c0a6ded730bd659d69d155c3297f760b` |
| 29 | `def` | [Lean.MVarId.congrN!](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrExclamation.lean/declarations/lean-mvarid-congrn.md) | 628 | `declaration-track:ff6a450cb77e4095e82d07996dd2ab221361e06cad8fd3a4ccfaa2419c73ac47` |
| 30 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrExclamation.lean/declarations/syntax.md) | 731 | `declaration-track:164f97b70c198d30d5ec9e6c513e6646c7d7336d08e327173abe12927baaddbe` |
| 31 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrExclamation.lean/declarations/elab-rules.md) | 734 | `declaration-track:e290a8279e881b1bd206519af55c361068946d1a662455498d601f62c1a7c5c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4a0d9ca69eafb464fc431b633129f751c0f165174e2ea9e9dbd83be2f9a5c3d8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantbdcbdf2a7953b2bb20b1501d28aca80c51db2e61b4b76d26c23765b7735a1c9e.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CongrExclamation/Variantbdcbdf2a7953b2bb20b1501d28aca80c51db2e61b4b76d26c23765b7735a1c9e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
