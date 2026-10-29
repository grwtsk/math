# Verification target: Lambda Lifting Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5ca6858c8881172ea7cd6dcb4e5fad2ab81d703",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LambdaLifting/Variant123b92d08e881c315a383fa7152821aa1f61fe4628b4bd0d74b250bdd9fdd80e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LambdaLiftingNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LambdaLiftingNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5ca6858c8881172ea7cd6dcb4e5fad2ab81d703`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LambdaLifting/Variant123b92d08e881c315a383fa7152821aa1f61fe4628b4bd0d74b250bdd9fdd80e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LambdaLifting/Variant123b92d08e881c315a383fa7152821aa1f61fe4628b4bd0d74b250bdd9fdd80e.lean.json)

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
| 1 | `structure` | [Context](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LambdaLiftingNamespacedPublic.lean/declarations/context.md) | 28 | `declaration-track:6d4c1ed50c6be964540dca15c180c0809532def1f0b1c79813b7e3130a578e8a` |
| 2 | `structure` | [State](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LambdaLiftingNamespacedPublic.lean/declarations/state.md) | 58 | `declaration-track:16696fdf38ba1717b338cb95bd66f4d9f3418faead39dc354a222613618e3dd6` |
| 3 | `abbrev` | [LiftM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LambdaLiftingNamespacedPublic.lean/declarations/liftm.md) | 69 | `declaration-track:60cc1db79f1652687999b5702a06a99f1e4edc9ce382a77cc1e1fcf26e6c2874` |
| 4 | `def` | [hasInstParam](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LambdaLiftingNamespacedPublic.lean/declarations/hasinstparam.md) | 75 | `declaration-track:2abbd9471bfbffb8b2983b1bfb646a430384e59258429f84ce8f482ed39d3ead` |
| 5 | `def` | [shouldLift](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LambdaLiftingNamespacedPublic.lean/declarations/shouldlift.md) | 81 | `declaration-track:0a42f235f3c5805840c3a073c02488e3704d109fe36d88d603021272cb3da0d2` |
| 6 | `def` | [mkAuxDeclName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LambdaLiftingNamespacedPublic.lean/declarations/mkauxdeclname.md) | 90 | `declaration-track:276ee6c08caf0c1e6222b315c6d0ec07eda73aab872dc1f5ac8aed8f80fa480a` |
| 7 | `def` | [replaceFunDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LambdaLiftingNamespacedPublic.lean/declarations/replacefundecl.md) | 96 | `declaration-track:bc1d622126481d6f74c50e5b9de55bf4d954c4e005af795f663ac768819fc6c1` |
| 8 | `def` | [mkAuxDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LambdaLiftingNamespacedPublic.lean/declarations/mkauxdecl.md) | 108 | `declaration-track:182b4ffeba99610808bf7be779ef59718d3b13632a6be5dc856500f089e700bb` |
| 9 | `def` | [etaContractibleDecl?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LambdaLiftingNamespacedPublic.lean/declarations/etacontractibledecl.md) | 133 | `declaration-track:b75b7af762ae870ad839ea444417548fd590c5f55becdde514a50ec58f9d3535` |
| 10 | `def` | [visitFunDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LambdaLiftingNamespacedPublic.lean/declarations/visitfundecl.md) | 148 | `declaration-track:fc6da86a72aa11a9ccf843c6981f8b4de3498e3a83efa010d1694ed89e13d771` |
| 11 | `def` | [visitCode](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LambdaLiftingNamespacedPublic.lean/declarations/visitcode.md) | 152 | `declaration-track:9a45b004c6c8ddfb08bc39aa25280b5c71fe3cc4810575e2a0d8de39aad28dcb` |
| 12 | `def` | [main](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LambdaLiftingNamespacedPublic.lean/declarations/main.md) | 185 | `declaration-track:2ccb9965d572ddd8a771958fc21da72272d91b8f15bed6a237be0c501bbc7f35` |
| 13 | `def` | [Decl.lambdaLifting](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LambdaLiftingNamespacedPublic.lean/declarations/decl-lambdalifting.md) | 191 | `declaration-track:3e66e06b62cc0c1efc995cc4261da99994289bd4fcfad3fda752ee00f0dcfa36` |
| 14 | `def` | [lambdaLifting](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LambdaLiftingNamespacedPublic.lean/declarations/lambdalifting.md) | 207 | `declaration-track:b9fe48918fb30e9218e5410734f7add00c7b576aedba26667050d5c81e0d0234` |
| 15 | `def` | [eagerLambdaLifting](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LambdaLiftingNamespacedPublic.lean/declarations/eagerlambdalifting.md) | 221 | `declaration-track:8cff30d6ba0fe8730b88393d933bcade588e5be2c30be5e742c48e57cf87aa3e` |
| 16 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LambdaLiftingNamespacedPublic.lean/declarations/builtin-initialize.md) | 232 | `declaration-track:8b48913ddd9ac3bc2827b37de10b4d47e9f6633a14e520b8b114848d2250c4aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3ca604ec093f980b633d08685030d05ac57ffc4e159c8d3a45afd761079c4f08 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LambdaLifting/Variant123b92d08e881c315a383fa7152821aa1f61fe4628b4bd0d74b250bdd9fdd80e.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LambdaLifting/Variant123b92d08e881c315a383fa7152821aa1f61fe4628b4bd0d74b250bdd9fdd80e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
