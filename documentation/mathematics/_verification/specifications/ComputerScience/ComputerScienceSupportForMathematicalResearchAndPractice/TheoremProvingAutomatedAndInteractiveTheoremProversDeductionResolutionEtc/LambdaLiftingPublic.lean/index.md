# Verification target: Lambda Lifting Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7e83a06899c59c442d1c3c1746763ef0ed1505f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LambdaLifting/Variant9c41fd97cac5d581486f4661da8273c1cb416f7a1b1f89132fc5fa961aed3a9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LambdaLiftingPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LambdaLiftingPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7e83a06899c59c442d1c3c1746763ef0ed1505f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LambdaLifting/Variant9c41fd97cac5d581486f4661da8273c1cb416f7a1b1f89132fc5fa961aed3a9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LambdaLifting/Variant9c41fd97cac5d581486f4661da8273c1cb416f7a1b1f89132fc5fa961aed3a9b.lean.json)

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
| 1 | `structure` | [Context](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LambdaLiftingPublic.lean/declarations/context.md) | 20 | `declaration-track:2c028d26e120d2862c329d40a1cb7481879bcca2f07917ae488a44bc1b51c0e9` |
| 2 | `structure` | [State](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LambdaLiftingPublic.lean/declarations/state.md) | 50 | `declaration-track:9079c6c939b982453929cd45640c0b6a3a5f8312e13228d5d8577de4267817ea` |
| 3 | `abbrev` | [LiftM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LambdaLiftingPublic.lean/declarations/liftm.md) | 61 | `declaration-track:9c087b3f8607bbf0308228b60432c974c63fe22a7f05cc738d1b1ab94d587e31` |
| 4 | `def` | [hasInstParam](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LambdaLiftingPublic.lean/declarations/hasinstparam.md) | 67 | `declaration-track:d55e5129a54ed6f9e1fe6ff35127429821b21aedf75eb4b9976afdfac3edbe72` |
| 5 | `def` | [shouldLift](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LambdaLiftingPublic.lean/declarations/shouldlift.md) | 73 | `declaration-track:36d425a71af8af72832b8ef624ce2c8074f58b51fb63298d28764b17d0221ff1` |
| 6 | `def` | [mkAuxDeclName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LambdaLiftingPublic.lean/declarations/mkauxdeclname.md) | 82 | `declaration-track:afb449b5b53963e87016e0a95a69fcb0aea16a4d49adad254ed0c1694a6708cf` |
| 7 | `def` | [replaceFunDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LambdaLiftingPublic.lean/declarations/replacefundecl.md) | 88 | `declaration-track:ba1685dd471d0697840f20cb2ae182d64b59b446d46d4fbb6de747f95338f512` |
| 8 | `def` | [mkAuxDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LambdaLiftingPublic.lean/declarations/mkauxdecl.md) | 100 | `declaration-track:ad9a38930461c7ae3407573659be2b01dd6de8c1e19f1796aa03d2eb28f585de` |
| 9 | `def` | [etaContractibleDecl?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LambdaLiftingPublic.lean/declarations/etacontractibledecl.md) | 125 | `declaration-track:1ebc6c6a51a322faeb9070c047e9db05e2dfd07cac46cb9bd098352d9abeae51` |
| 10 | `def` | [visitFunDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LambdaLiftingPublic.lean/declarations/visitfundecl.md) | 140 | `declaration-track:0d370613bdea36a6291cffc47afe10663292ebd693f063ed66d9caf5efc6a6d4` |
| 11 | `def` | [visitCode](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LambdaLiftingPublic.lean/declarations/visitcode.md) | 144 | `declaration-track:16d14a84fa19f21001396bfe6bae0b9cf9b4cbb5d502c7203cf9fc156b426ec7` |
| 12 | `def` | [main](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LambdaLiftingPublic.lean/declarations/main.md) | 177 | `declaration-track:8a29447708b30c9244e1516130c5deac668ea7999a14384e6054b48bb313ad06` |
| 13 | `def` | [Decl.lambdaLifting](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LambdaLiftingPublic.lean/declarations/decl-lambdalifting.md) | 183 | `declaration-track:b18371b29389eee5ee7ddf440528ed9ba27fea813eda9f7b7125113a3cc1da2b` |
| 14 | `def` | [lambdaLifting](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LambdaLiftingPublic.lean/declarations/lambdalifting.md) | 199 | `declaration-track:96c623e55128022cdb9f2942b1a9d42746f7a034fa7ecc0785c12929f8e2e934` |
| 15 | `def` | [eagerLambdaLifting](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LambdaLiftingPublic.lean/declarations/eagerlambdalifting.md) | 213 | `declaration-track:37ed65f38ce63f1b5db29a47b98168ca5536f0597401be82825db8fe75b58104` |
| 16 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LambdaLiftingPublic.lean/declarations/builtin-initialize.md) | 224 | `declaration-track:77440443aa4a4ceb4d0bad663899e12e074e0a477e3f3396fd90cc832e343071` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=35ca1ac946268a43257389220af34b241ea7dca26ba593528cab3f10fcadab53 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LambdaLifting/Variant9c41fd97cac5d581486f4661da8273c1cb416f7a1b1f89132fc5fa961aed3a9b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LambdaLifting/Variant9c41fd97cac5d581486f4661da8273c1cb416f7a1b1f89132fc5fa961aed3a9b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
