# Verification target: Congr Lean

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3c4de23449c1822e987fa2b2b16809b1de82fe2",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant6b8d4d5ea8cfcd239ed9c39e5deb11e2ecbf115a51e18b974f3c071547833128.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3c4de23449c1822e987fa2b2b16809b1de82fe2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant6b8d4d5ea8cfcd239ed9c39e5deb11e2ecbf115a51e18b974f3c071547833128.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant6b8d4d5ea8cfcd239ed9c39e5deb11e2ecbf115a51e18b974f3c071547833128.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Relation.Rfl` — import line 7; external provider; requires a separately pinned dependency.
- `Std.Logic` — import line 8; external provider; requires a separately pinned dependency.
- `Std.Tactic.RCases` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/initialize.md) | 26 | `declaration-track:06d3006bbcd27d7ef3a77291c9c0e56ae30013b42244262531b5bd4e5a7575b8` |
| 2 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/initialize-source-edition-2.md) | 27 | `declaration-track:5438f03671ca12147e5024ed8eeacace1c1a6c7bf9cb765bc23645d663263e4e` |
| 3 | `structure` | [Congr!.Config](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/congr-config.md) | 30 | `declaration-track:b02cde3619b5afb2378223e7fa20cfc4505b28d8cb2943ab31f2f6295502bebb` |
| 4 | `def` | [Congr!.Config.unfoldSameFun](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/congr-config-unfoldsamefun.md) | 113 | `declaration-track:6725ac35d4276fd2c4012c348ed4a4c6065298f0b154ebdfd7bd91b91fd5913c` |
| 5 | `def` | [Congr!.Config.numArgsOk](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/congr-config-numargsok.md) | 120 | `declaration-track:9d0e67ae6ec1de8e4afcd363d4707f0fe51851bee20022a8f85770b780499cd4` |
| 6 | `def` | [Congr!.Config.maxArgsFor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/congr-config-maxargsfor.md) | 124 | `declaration-track:372a6d5c0e477929be84ef4fa708abfc2288269319dda73c054388b80db09c20` |
| 7 | `def` | [Lean.MVarId.iffOfEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/lean-mvarid-iffofeq.md) | 133 | `declaration-track:0ab2ea0b1aab1bb0df4b1ac7e2cd3ca21bf2d91c26ed77853d457ead68affa69` |
| 8 | `def` | [Lean.MVarId.propext](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/lean-mvarid-propext.md) | 143 | `declaration-track:1f9301608a19fc2617121118406090d4f875f53c281745ae3acfa2c14053e8d6` |
| 9 | `def` | [Lean.MVarId.proofIrrelHeq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/lean-mvarid-proofirrelheq.md) | 160 | `declaration-track:a9fdfb5107aceb4a529f177c4fa3e4b6628bc88f956546eb14b466977bc4b28e` |
| 10 | `def` | [Lean.MVarId.subsingletonElim](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/lean-mvarid-subsingletonelim.md) | 179 | `declaration-track:1dcbc25f6e38cf1f4a82f926c5dff564df3f9890af40ff803bf489cbc4d74305` |
| 11 | `def` | [applyCongrThm?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/applycongrthm.md) | 197 | `declaration-track:4ed33d7fc058dcf17d3dba658bb3331ce6eb4614f066b522cf57da03ba76ddba` |
| 12 | `def` | [Congr!.mkHCongrThm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/congr-mkhcongrthm.md) | 236 | `declaration-track:1a3891968a5d7aba8040ea3c4b571a7846c5c8dd8d84e20ad85bae03c469011e` |
| 13 | `def` | [Congr!.plausiblyEqualTypes](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/congr-plausiblyequaltypes.md) | 383 | `declaration-track:799a72b712d6525a6803fbf145b5ed9034a95767b3ad023780da003107d846c7` |
| 14 | `def` | [Lean.MVarId.smartHCongr?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/lean-mvarid-smarthcongr.md) | 420 | `declaration-track:dbe4cca5653fd193190c509a2be76548c300e874562045bc22fceeee1d41b411` |
| 15 | `def` | [Lean.MVarId.congrSimp?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/lean-mvarid-congrsimp.md) | 529 | `declaration-track:4049d68947f707316838827ec98773659c0a9828d3bc04b6fb4054712e268065` |
| 16 | `def` | [Lean.MVarId.userCongr?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/lean-mvarid-usercongr.md) | 569 | `declaration-track:fdb2567fbd01727f20a7c15c88c05685544415e235e3a045f929005c6040a550` |
| 17 | `theorem` | [Lean.MVarId.rel_of_eq_and_refl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/lean-mvarid-rel-of-eq-and-refl.md) | 600 | `result-track:16beef908e9989cc0342f87e54bfeed239f8aad32cb39393467b3903ed1389f2` |
| 18 | `def` | [Lean.MVarId.liftReflToEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/lean-mvarid-liftrefltoeq.md) | 607 | `declaration-track:ccf14134139d6db08a21a6308b71ee06ac2f7efe3759f02bd0dfd4bf5adf08c0` |
| 19 | `def` | [Lean.MVarId.congrPi?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/lean-mvarid-congrpi.md) | 632 | `declaration-track:20a196336ac8dc2e51be3b151b6984761c74b639a0e6d88aa7e1436dce2c34ac` |
| 20 | `def` | [Lean.MVarId.obviousFunext?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/lean-mvarid-obviousfunext.md) | 642 | `declaration-track:4a35ce6bebc02472150a29d7d0a76e0a4fb33cbca27a00c7d6a5c10c859dec5b` |
| 21 | `def` | [Lean.MVarId.obviousHfunext?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/lean-mvarid-obvioushfunext.md) | 655 | `declaration-track:fbc77429cf17d7ce2e39f498fc2aef4433de412e812413856d74dde718495b23` |
| 22 | `theorem` | [implies_congr'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/implies-congr.md) | 663 | `result-track:ea50f4b42552d6adb9c2f195282e32f47352c6d7b30160b0245055c587446aac` |
| 23 | `def` | [Lean.MVarId.congrImplies?'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/lean-mvarid-congrimplies.md) | 671 | `declaration-track:c227d41835070fbc244dffbcc0848e7a1aa9b01af65f876ade4e81f130cd3ad5` |
| 24 | `def` | [Lean.MVarId.subsingletonHelim?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/lean-mvarid-subsingletonhelim.md) | 683 | `declaration-track:63442fd22f6165356c4d90decc57998ed1b57e5cbc7be5fbfb5ed370f722fec8` |
| 25 | `def` | [Lean.MVarId.congrPasses!](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/lean-mvarid-congrpasses.md) | 702 | `declaration-track:f1c3bafb9d52669c85d3d23e8e7ef59436ea785af18f4b9481d6030ab24f7f7e` |
| 26 | `structure` | [CongrState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/congrstate.md) | 713 | `declaration-track:4baa8d5154d2746d3cc38860795fe0edc02751d6af151d34b41bdf0dddfe5061` |
| 27 | `abbrev` | [CongrMetaM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/congrmetam.md) | 719 | `declaration-track:d694266eb2f4633a437163c830966aa593324cefa70fa46433bf35e4e4ba713b` |
| 28 | `def` | [CongrMetaM.nextPattern](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/congrmetam-nextpattern.md) | 722 | `declaration-track:cf638ad0f1b3adf9f1824e4188b0735ad7a0571e22349600fe55f319077f51e1` |
| 29 | `theorem` | [heq_imp_of_eq_imp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/heq-imp-of-eq-imp.md) | 729 | `result-track:1f60c4e4e3870fd43d97b66a3aba281d89c4b5976ecd5f9f4ea94c75667af158` |
| 30 | `theorem` | [eq_imp_of_iff_imp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/eq-imp-of-iff-imp.md) | 734 | `result-track:1c52995df9c0d2bad4ad23a2d94bbf11e4178afeaa0d2fcf16c4f496bf61f0d7` |
| 31 | `def` | [Lean.MVarId.introsClean](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/lean-mvarid-introsclean.md) | 751 | `declaration-track:8664938ffab0ba5fd2900f57c146a7717e6228ba9002ac37889af937d0fd3f30` |
| 32 | `def` | [Lean.MVarId.preCongr!](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/lean-mvarid-precongr.md) | 801 | `declaration-track:2a3bf5ca65861750d73bb92860d180c1da0e19c173dde6adf07955a7d5c16645` |
| 33 | `def` | [Lean.MVarId.congrCore!](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/lean-mvarid-congrcore.md) | 818 | `declaration-track:3656e9451922a744da2b5395b75607d67e0d6b0d4a4df7c9be905154fdbf7e2c` |
| 34 | `def` | [Lean.MVarId.postCongr!](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/lean-mvarid-postcongr.md) | 841 | `declaration-track:fc5b59680234af5d8e613f5781b06959ba64910e9400467c848a6ec2727d18e7` |
| 35 | `def` | [Lean.MVarId.congrN!](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/lean-mvarid-congrn.md) | 860 | `declaration-track:66d4872255adfd44d32dd02fae1d68f974cde577cac28f05551adcc3a0e98b84` |
| 36 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/syntax.md) | 963 | `declaration-track:d9c27035c4c73b365958e1e6b5bc36d2f46d6fe1f3e342da300af65a638c03c0` |
| 37 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrLean.lean/declarations/elab-rules.md) | 966 | `declaration-track:5b4966ba65af3d819c1c755dd683a8234936a358c2850851d48e6e1ed1128fe9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ea757d20d7ca50fa9514b4a1671691e44ba4ba27582581a45a8349f62f20647 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant6b8d4d5ea8cfcd239ed9c39e5deb11e2ecbf115a51e18b974f3c071547833128.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant6b8d4d5ea8cfcd239ed9c39e5deb11e2ecbf115a51e18b974f3c071547833128.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
