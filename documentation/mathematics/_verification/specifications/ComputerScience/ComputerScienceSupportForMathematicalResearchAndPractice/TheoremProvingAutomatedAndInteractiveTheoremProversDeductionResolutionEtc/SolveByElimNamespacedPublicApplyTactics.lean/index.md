# Verification target: Solve By Elim Namespaced Public Apply Tactics

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f99627f8a8f32c2902e0f28b72f6879c5b302ece",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantf7092784d4ed149e493c3219ec51f7d716c31b7f9f7db561729611ab06d969c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolveByElimNamespacedPublicApplyTactics.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolveByElimNamespacedPublicApplyTactics.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f99627f8a8f32c2902e0f28b72f6879c5b302ece`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantf7092784d4ed149e493c3219ec51f7d716c31b7f9f7db561729611ab06d969c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantf7092784d4ed149e493c3219ec51f7d716c31b7f9f7db561729611ab06d969c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolveByElimNamespacedPublicApplyTactics.lean/declarations/initialize.md) | 49 | `declaration-track:4627b3aa8d822a591d361871e2ca0157f7166183856ccfdbd583f475be749adb` |
| 2 | `def` | [applyTactics](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolveByElimNamespacedPublicApplyTactics.lean/declarations/applytactics.md) | 61 | `declaration-track:ef9cf32dd49dd5b9738625e5369c28309952123921ed6f566d000b8f24350706` |
| 3 | `def` | [applyFirst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolveByElimNamespacedPublicApplyTactics.lean/declarations/applyfirst.md) | 80 | `declaration-track:65383e88a7f37410319011b5ce2e941a43f4748ea62ec89dcab47d9eea8ae579` |
| 4 | `structure` | [ApplyRulesConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolveByElimNamespacedPublicApplyTactics.lean/declarations/applyrulesconfig.md) | 87 | `declaration-track:77c3656e887b6802ccf70e443d398c65d4903ac48f2eb4e03d551f0a0e90130c` |
| 5 | `structure` | [SolveByElimConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolveByElimNamespacedPublicApplyTactics.lean/declarations/solvebyelimconfig.md) | 103 | `declaration-track:a4a03591de5e74de1c7532859c98300d8fe5c7bc771dba819fd5b54ae113aaef` |
| 6 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolveByElimNamespacedPublicApplyTactics.lean/declarations/instance.md) | 120 | `declaration-track:e472a96e9d7d502b5e1e4b42cdd9cf9f4c20b40395797e6b4f381c9cb6fe03ee` |
| 7 | `def` | [accept](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolveByElimNamespacedPublicApplyTactics.lean/declarations/accept.md) | 123 | `declaration-track:fea7daa8edc4fbae6780dfcdf2155fd7be3dddd0529973e17d5321776e10e270` |
| 8 | `def` | [mainGoalProc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolveByElimNamespacedPublicApplyTactics.lean/declarations/maingoalproc.md) | 135 | `declaration-track:bced9944978159fc16681f85eb42902ca768e4b92025b52bb39fd0cfaa257902` |
| 9 | `def` | [intros](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolveByElimNamespacedPublicApplyTactics.lean/declarations/intros.md) | 147 | `declaration-track:3eaa557b9f03d90e84be14dd655f52edfa83da10d6ba0809226c3d66878494d0` |
| 10 | `def` | [synthInstance](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolveByElimNamespacedPublicApplyTactics.lean/declarations/synthinstance.md) | 154 | `declaration-track:c1a3a6af433a92964b4f73f2601ccf473b44400941b326821acbb34b634b8fed` |
| 11 | `def` | [withDischarge](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolveByElimNamespacedPublicApplyTactics.lean/declarations/withdischarge.md) | 161 | `declaration-track:99d0ad33e3751278fc136c96c39544301856d3e8b2358f97aeab0eb7962370c5` |
| 12 | `def` | [introsAfter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolveByElimNamespacedPublicApplyTactics.lean/declarations/introsafter.md) | 167 | `declaration-track:59ee74f8a2c0175fe7e9ff53b6bfc678e1728e977e2b1bacdfc31f03187c6601` |
| 13 | `def` | [constructorAfter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolveByElimNamespacedPublicApplyTactics.lean/declarations/constructorafter.md) | 171 | `declaration-track:17ed0a5d220139f4f813d6d06ad0f23b3a917e3d6b1a9bc5cf2f78ec86d0a8c5` |
| 14 | `def` | [synthInstanceAfter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolveByElimNamespacedPublicApplyTactics.lean/declarations/synthinstanceafter.md) | 176 | `declaration-track:0463ad7a61afa65765e87ac12b82167d96a787e0b789a3a13817f2b99a6c7cb3` |
| 15 | `def` | [testPartialSolutions](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolveByElimNamespacedPublicApplyTactics.lean/declarations/testpartialsolutions.md) | 185 | `declaration-track:b4b3f9b8d5639ad0ce3d1243d9e53c1fde5e0dd680afb58f803b349cd4b2a432` |
| 16 | `def` | [testSolutions](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolveByElimNamespacedPublicApplyTactics.lean/declarations/testsolutions.md) | 195 | `declaration-track:888818adacf84c963094151e0bc25df82da6ee49abee2597062f08232e6ada02` |
| 17 | `def` | [requireUsingAll](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolveByElimNamespacedPublicApplyTactics.lean/declarations/requireusingall.md) | 206 | `declaration-track:c2d0d90b90afc54b5af7392695d3daff3d98dc80d8563c34dd4423a9d66ba892` |
| 18 | `def` | [processOptions](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolveByElimNamespacedPublicApplyTactics.lean/declarations/processoptions.md) | 213 | `declaration-track:2d095e2e19290773ecf3455508b398c2028b0d37c719cb7fb995af5cc77ca7e0` |
| 19 | `def` | [elabContextLemmas](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolveByElimNamespacedPublicApplyTactics.lean/declarations/elabcontextlemmas.md) | 224 | `declaration-track:7a00b9699ed9809c1201c630a37528668f3a91127efae2099ac8ed5ee0470af8` |
| 20 | `def` | [applyLemmas](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolveByElimNamespacedPublicApplyTactics.lean/declarations/applylemmas.md) | 230 | `declaration-track:3508906993d6d4db988116481c61283996644d56d03f66fd4324e0384db1452a` |
| 21 | `def` | [applyFirstLemma](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolveByElimNamespacedPublicApplyTactics.lean/declarations/applyfirstlemma.md) | 237 | `declaration-track:45e6a22afbf10a0f1c5713a9738aaea222ab8a32198e8f90d1b33942bf72d6c9` |
| 22 | `def` | [solveByElim](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolveByElimNamespacedPublicApplyTactics.lean/declarations/solvebyelim.md) | 259 | `declaration-track:d8e05f7217deb7d3390ecdb130bd84a9e6e659300ee65476741008b8ffefa4ee` |
| 23 | `def` | [saturateSymm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolveByElimNamespacedPublicApplyTactics.lean/declarations/saturatesymm.md) | 285 | `declaration-track:7725fb8f248a65ea5d84d55b484588fb33afed3aaf65b5baf882a9445c6f4cc9` |
| 24 | `def` | [Solve By Elim Namespaced Public Apply Tactics](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolveByElimNamespacedPublicApplyTactics.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-apply.md) | 301 | `declaration-track:61bcfc88ae41205a82ca985929076197232f064dc71adf9a79105cdff8a5eb9b` |
| 25 | `def` | [mkAssumptionSet](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SolveByElimNamespacedPublicApplyTactics.lean/declarations/mkassumptionset.md) | 358 | `declaration-track:ef400c19ae49e4385416566e768b739c48bc1e70fdcbb0bad631d00ec6789d5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f31e02738c849e39dc5d2a0cb080770e683e9a7209fb242b42787f1da9f8a68e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantf7092784d4ed149e493c3219ec51f7d716c31b7f9f7db561729611ab06d969c3.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantf7092784d4ed149e493c3219ec51f7d716c31b7f9f7db561729611ab06d969c3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
