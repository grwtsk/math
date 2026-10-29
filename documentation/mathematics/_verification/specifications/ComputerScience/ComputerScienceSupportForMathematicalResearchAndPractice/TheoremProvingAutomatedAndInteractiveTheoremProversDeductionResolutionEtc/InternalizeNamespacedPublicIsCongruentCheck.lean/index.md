# Verification target: Internalize Namespaced Public Is Congruent Check

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33164ab9d00bfdda88417ea42e8846b49b9d596d",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant691362554417cf1861ebfa2a82838268673cf8054cd6e63e74d8567f5bea0787.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizeNamespacedPublicIsCongruentCheck.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizeNamespacedPublicIsCongruentCheck.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33164ab9d00bfdda88417ea42e8846b49b9d596d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant691362554417cf1861ebfa2a82838268673cf8054cd6e63e74d8567f5bea0787.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant691362554417cf1861ebfa2a82838268673cf8054cd6e63e74d8567f5bea0787.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Arith.IsRelevant` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Util` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Beta` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.MatchCond` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Simp` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.MarkNestedSubsingletons` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.PropagateInj` — import line 20; external provider; requires a separately pinned dependency.
- `Lean.Util.CollectLevelParams` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Grind.Util` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isCongruentCheck](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizeNamespacedPublicIsCongruentCheck.lean/declarations/iscongruentcheck.md) | 33 | `declaration-track:2130aaa127788f581f67186a916727cddd1d5f11ee79bf396debd692aeb2cbff` |
| 2 | `def` | [addCongrTable](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizeNamespacedPublicIsCongruentCheck.lean/declarations/addcongrtable.md) | 51 | `declaration-track:ff2b4346ce4f3aeb7de1bea5d7c5809e56b34b5f338928ce66f793614ca38734` |
| 3 | `def` | [updateIndicesFound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizeNamespacedPublicIsCongruentCheck.lean/declarations/updateindicesfound.md) | 97 | `declaration-track:5afa632a0dc465602367ea10b854faf3e5ae8ca63bbd2348ca92309278fe0e11` |
| 4 | `def` | [updateAppMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizeNamespacedPublicIsCongruentCheck.lean/declarations/updateappmap.md) | 105 | `declaration-track:e5d63adc9ce45e2740c4059c442471b912ad5b7cf1000bc4be43805b0e268b40` |
| 5 | `def` | [forbiddenSplitTypes](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizeNamespacedPublicIsCongruentCheck.lean/declarations/forbiddensplittypes.md) | 117 | `declaration-track:44693565e1c32d435841aa0b116e705fe3770721b2c5ab19a18fc0e0b29f69e7` |
| 6 | `def` | [isMorallyIff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizeNamespacedPublicIsCongruentCheck.lean/declarations/ismorallyiff.md) | 120 | `declaration-track:526a01293ee5178787975c6bf8beac3d240ff4278691ff5b8175d03b2702588d` |
| 7 | `def` | [mkDefaultSplitInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizeNamespacedPublicIsCongruentCheck.lean/declarations/mkdefaultsplitinfo.md) | 124 | `declaration-track:62f92fa832af5df340877c67ff495fa6252df3cee31bf954e66862c3ffc125a1` |
| 8 | `def` | [addDefaultSplitCandidate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizeNamespacedPublicIsCongruentCheck.lean/declarations/adddefaultsplitcandidate.md) | 127 | `declaration-track:d490d41b58d977895dcfb860a1de5bc90a305d0d4c36306e498f2e347d1f9d57` |
| 9 | `def` | [checkAndAddSplitCandidate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizeNamespacedPublicIsCongruentCheck.lean/declarations/checkandaddsplitcandidate.md) | 131 | `declaration-track:b74df6023c5d8d3d3b4eb14e0b35679f80f4cda5e852f5297c4e21ea131ea7ea` |
| 10 | `def` | [pushCastHEqs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizeNamespacedPublicIsCongruentCheck.lean/declarations/pushcastheqs.md) | 181 | `declaration-track:f806483d6b6f0a21d5bcdaac2bc4746d608eac574511f7534ae2e53cef87f051` |
| 11 | `def` | [mkENode'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizeNamespacedPublicIsCongruentCheck.lean/declarations/mkenode.md) | 189 | `declaration-track:cded1b0d9d34071a286d6900251bb3572f445989d7c39a7cc4de273850669678` |
| 12 | `def` | [internalizePattern](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizeNamespacedPublicIsCongruentCheck.lean/declarations/internalizepattern.md) | 193 | `declaration-track:137c87c92444b2ce12e928fc7a58e84bc511062aaeb9f918660bbc4a58abf28d` |
| 13 | `def` | [internalizeMatchCond](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizeNamespacedPublicIsCongruentCheck.lean/declarations/internalizematchcond.md) | 225 | `declaration-track:0213964c3fa3df599b5b9efdc50cd577ef3b0947e98629a613ae58405badbc5e` |
| 14 | `def` | [preprocessTheorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizeNamespacedPublicIsCongruentCheck.lean/declarations/preprocesstheorem.md) | 257 | `declaration-track:2a742c3e52b240f1adcfdd4b58b65153ee1446b25d1d592f89da0412e4eb310d` |
| 15 | `def` | [activateTheorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizeNamespacedPublicIsCongruentCheck.lean/declarations/activatetheorem.md) | 263 | `declaration-track:cf83feb4fe3ae72102d473a54a91cac186f39342ed393b38bb6b56a07450685b` |
| 16 | `def` | [addMatchEqns](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizeNamespacedPublicIsCongruentCheck.lean/declarations/addmatcheqns.md) | 272 | `declaration-track:c4426aef3bcef1ec049721e3a45d79264db94876f64ff2f11d7e45cea50fcfc2` |
| 17 | `def` | [activateTheoremsCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizeNamespacedPublicIsCongruentCheck.lean/declarations/activatetheoremscore.md) | 284 | `declaration-track:e347c61745bbc0662330575673ff5ba8a548ace30bead905d145405455a4b6ec` |
| 18 | `def` | [activateTheoremPatterns](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizeNamespacedPublicIsCongruentCheck.lean/declarations/activatetheorempatterns.md) | 307 | `declaration-track:b3ec9c3b0aeec2d6be64512890acac65f901cf737a8405bec8df40ca954fcff1` |
| 19 | `def` | [mkEMatchTheoremWithKind'?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizeNamespacedPublicIsCongruentCheck.lean/declarations/mkematchtheoremwithkind.md) | 313 | `declaration-track:28d9ddac2f6fa1b495d2ebdd6005ded735d475eccdc83180ee6d6cafcc132070` |
| 20 | `def` | [activateInjectiveTheorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizeNamespacedPublicIsCongruentCheck.lean/declarations/activateinjectivetheorem.md) | 320 | `declaration-track:9396de608c12bebcc930545a339e7f854450b3b74bafa2aa591dcf69d0be07fc` |
| 21 | `def` | [activateInjectiveTheorems](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizeNamespacedPublicIsCongruentCheck.lean/declarations/activateinjectivetheorems.md) | 332 | `declaration-track:29e77ebfc958c5e9530abe10e1e5b30366c6f61eacd56b34c1203e9b2f6ea717` |
| 22 | `def` | [activateTheorems](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizeNamespacedPublicIsCongruentCheck.lean/declarations/activatetheorems.md) | 339 | `declaration-track:99a41b605d92737e71d6bbba74239ade691a62116357dc4633f7bf154fef6892` |
| 23 | `def` | [propagateEtaStruct](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizeNamespacedPublicIsCongruentCheck.lean/declarations/propagateetastruct.md) | 356 | `declaration-track:21f6541d377028cb53af568f635bd0b96605670d9de18e49821a8efd9b41ab79` |
| 24 | `def` | [extParentsToIgnore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizeNamespacedPublicIsCongruentCheck.lean/declarations/extparentstoignore.md) | 377 | `declaration-track:f853c95b1ce477f4efc8aa7d5d3660f7f36b9cfe0e2320f9448857c3303418b3` |
| 25 | `def` | [addSplitCandidatesForExt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizeNamespacedPublicIsCongruentCheck.lean/declarations/addsplitcandidatesforext.md) | 396 | `declaration-track:82bdf8b81e3f88de0bf89aeee9c5867a91cd5cc4f3d2cff5fe8085fc8a25bf8f` |
| 26 | `def` | [addSplitCandidatesForFunext](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizeNamespacedPublicIsCongruentCheck.lean/declarations/addsplitcandidatesforfunext.md) | 435 | `declaration-track:da1de8ea3ca27960b30a621b9859fe75520270cca37943a77b959b4514959056` |
| 27 | `def` | [tryEta](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizeNamespacedPublicIsCongruentCheck.lean/declarations/tryeta.md) | 443 | `declaration-track:39b8bcba09d41b675d692ff3f68534cc7735244906dbe40ebb436293802869de` |
| 28 | `def` | [useFunCongrAtDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizeNamespacedPublicIsCongruentCheck.lean/declarations/usefuncongratdecl.md) | 453 | `declaration-track:2c62a5b50053ad21d8dc09cd92fb157e5358d732a7b45538503542ac09b699f6` |
| 29 | `def` | [useFunCongrAtFn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizeNamespacedPublicIsCongruentCheck.lean/declarations/usefuncongratfn.md) | 474 | `declaration-track:9c75547625489132c20608217b4d84975c1381f71b4de3ae640cbc993ef101b9` |
| 30 | `def` | [isNonParametricLitValue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizeNamespacedPublicIsCongruentCheck.lean/declarations/isnonparametriclitvalue.md) | 483 | `declaration-track:1b3f58c73fd100bc40833329cf141d293c73b3e4ae78fbae7a93fcfd6ebfc24b` |
| 31 | `def` | [internalizeNonParametricLiteral](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizeNamespacedPublicIsCongruentCheck.lean/declarations/internalizenonparametricliteral.md) | 509 | `declaration-track:2220c9dfc547e074f81923910b3d08cd0305972e85f3dec56e080bd913b90279` |
| 32 | `def` | [isOfNatFinBitVecLiteral](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizeNamespacedPublicIsCongruentCheck.lean/declarations/isofnatfinbitvecliteral.md) | 516 | `declaration-track:89b8adb062bb78cd68ad51c6b53caa7081be39983393bf8faecd5ef79ac2dd57` |
| 33 | `def` | [internalizeOfNatFinBitVecLiteral](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizeNamespacedPublicIsCongruentCheck.lean/declarations/internalizeofnatfinbitvecliteral.md) | 533 | `declaration-track:bbb0d30e9426e3867741e7f6c5601e056f1010598a669fa7f6a902c214d47aa0` |
| 34 | `def` | [internalizeImpl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizeNamespacedPublicIsCongruentCheck.lean/declarations/internalizeimpl.md) | 550 | `declaration-track:c31904484356ad12d1893f54ae2e78a80ae7412eaeb88332d735d793f2c5cd0d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ea1cd4729134f8a0c4e87a7d85dae893e34058bcbf521e076681db11319e8925 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant691362554417cf1861ebfa2a82838268673cf8054cd6e63e74d8567f5bea0787.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant691362554417cf1861ebfa2a82838268673cf8054cd6e63e74d8567f5bea0787.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
