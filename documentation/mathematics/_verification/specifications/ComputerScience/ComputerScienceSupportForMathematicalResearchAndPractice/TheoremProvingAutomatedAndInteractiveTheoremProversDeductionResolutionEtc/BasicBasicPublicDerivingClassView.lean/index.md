# Verification target: Basic Basic Public Deriving Class View

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4caf2bf736132d9585b78818ee95b24c530edc8",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6955abc52f06be487701fa4713a1a74ce124cd722c89b4c8b1c2380e3686d069.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicDerivingClassView.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicDerivingClassView.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4caf2bf736132d9585b78818ee95b24c530edc8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6955abc52f06be487701fa4713a1a74ce124cd722c89b4c8b1c2380e3686d069.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6955abc52f06be487701fa4713a1a74ce124cd722c89b4c8b1c2380e3686d069.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.NoncomputableAttr` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.WrapInstance` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DerivingClassView](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicDerivingClassView.lean/declarations/derivingclassview.md) | 19 | `declaration-track:7f2b06409eed2f26ae0797d970f968c13bdb5221b0364efcc9e277361afb08d3` |
| 2 | `structure` | [MkInstResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicDerivingClassView.lean/declarations/mkinstresult.md) | 28 | `declaration-track:5c5aafa7f80a6eef8e05a09a83f93269a40bdcf096499bf5b2a9312275f3a9d7` |
| 3 | `def` | [throwDeltaDeriveFailure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicDerivingClassView.lean/declarations/throwdeltaderivefailure.md) | 32 | `declaration-track:1d8fbc5053cec40894213bb1778f90660a63e634ab072b81f040c82412032558` |
| 4 | `def` | [mkInst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicDerivingClassView.lean/declarations/mkinst.md) | 59 | `declaration-track:2d773eea9511919bb208063288722803822201c3c2906658be234788eabc9281` |
| 5 | `def` | [processDefDeriving](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicDerivingClassView.lean/declarations/processdefderiving.md) | 178 | `declaration-track:3524fc6981af08ced0fe3f4b2da3f7fefbc5d1112375da34865412fd6fbdc5c2` |
| 6 | `def` | [DerivingHandler](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicDerivingClassView.lean/declarations/derivinghandler.md) | 276 | `declaration-track:e896e4e0fd3a5678b15cc2bf41bedce561cbad45877b15ee943fcbb90d9428ca` |
| 7 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicDerivingClassView.lean/declarations/builtin-initialize.md) | 278 | `declaration-track:2eca2efc9dbbd97053731e972cedb603dd9594228f2fdfc83cfd6cf3f622d2ae` |
| 8 | `def` | [registerDerivingHandler](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicDerivingClassView.lean/declarations/registerderivinghandler.md) | 286 | `declaration-track:2813e49df8a93d454c9ac17a217ecefbd9f4a2067aa62c6dc6d2053996ba5eb7` |
| 9 | `def` | [applyDerivingHandlers](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicDerivingClassView.lean/declarations/applyderivinghandlers.md) | 294 | `declaration-track:8deea00c2d64e2638c9a91b8ca86d630bb197530759b8c6ef1eb4ebbd2a583e2` |
| 10 | `def` | [DerivingClassView.getClassName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicDerivingClassView.lean/declarations/derivingclassview-getclassname.md) | 314 | `declaration-track:af631e200de5204925e953bbc4e3c08a746fe422d1e19ee1da98a8c39f1cc964` |
| 11 | `def` | [DerivingClassView.ofSyntax](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicDerivingClassView.lean/declarations/derivingclassview-ofsyntax.md) | 317 | `declaration-track:11040fd940664d2612d220b4d013efae65131f3c085545be221700cca9170863` |
| 12 | `def` | [getOptDerivingClasses](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicDerivingClassView.lean/declarations/getoptderivingclasses.md) | 322 | `declaration-track:1fc18b7aac97fd43be6bc255044d38d0e63629010f3f348d8e1b5d1ca291797b` |
| 13 | `def` | [DerivingClassView.applyHandlers](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicDerivingClassView.lean/declarations/derivingclassview-applyhandlers.md) | 327 | `declaration-track:79b09d1a54cda7420d3e5cf0221a18ba68da2f69b796f5b635a412440a490880` |
| 14 | `def` | [elabDefDeriving](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicDerivingClassView.lean/declarations/elabdefderiving.md) | 333 | `declaration-track:f35dc137bc1d81bc1a99f9454571b83c01cdc2dd9b6a54608c1eaa635cc67526` |
| 15 | `def` | [elabDeriving](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicDerivingClassView.lean/declarations/elabderiving.md) | 356 | `declaration-track:5f557618b54af135d7a788959bc1eebcf2a7879ca0923ed498337077226d3f9a` |
| 16 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicDerivingClassView.lean/declarations/builtin-initialize-source-edition-2.md) | 380 | `declaration-track:8b540f71e16226c48c0131a657ca1a0748036590893323f2a51a50bbd1567b02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5e6b53b26966a26e5c20a6e53ce496187b05bc65cb6e10791256960bcb0582c7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6955abc52f06be487701fa4713a1a74ce124cd722c89b4c8b1c2380e3686d069.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant6955abc52f06be487701fa4713a1a74ce124cd722c89b4c8b1c2380e3686d069.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
