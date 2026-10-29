# Verification target: Internalize Public Is Congruent Check

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30785a5302abff1277a64edfeba73f2859bb7cb5",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantf5e4051cc5f6fc8c0c4350ecd6b5f43de3709190a32abdab1faad8b7b1c85d2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizePublicIsCongruentCheck.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizePublicIsCongruentCheck.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30785a5302abff1277a64edfeba73f2859bb7cb5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantf5e4051cc5f6fc8c0c4350ecd6b5f43de3709190a32abdab1faad8b7b1c85d2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantf5e4051cc5f6fc8c0c4350ecd6b5f43de3709190a32abdab1faad8b7b1c85d2f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Arith.IsRelevant` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Util` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Beta` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.MatchCond` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Simp` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.MarkNestedSubsingletons` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.PropagateInj` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Util.CollectLevelParams` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Grind.Util` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isCongruentCheck](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizePublicIsCongruentCheck.lean/declarations/iscongruentcheck.md) | 25 | `declaration-track:13c10359e62ea6c84d02cd18b163992310006edb56a13e312728ee03a8fd89fd` |
| 2 | `def` | [addCongrTable](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizePublicIsCongruentCheck.lean/declarations/addcongrtable.md) | 43 | `declaration-track:7bf4203575067f0c900a706c016dc22d1ca2308b71190af2bed833fe943833ea` |
| 3 | `def` | [updateIndicesFound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizePublicIsCongruentCheck.lean/declarations/updateindicesfound.md) | 89 | `declaration-track:7282700ab373444463912e0d06b8d3d8984898e96814479ce4fe8debea936717` |
| 4 | `def` | [updateAppMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizePublicIsCongruentCheck.lean/declarations/updateappmap.md) | 97 | `declaration-track:0a9f58e54b91c6cb008fe53e4d64e56d32b0651292141815237745b0ff57310a` |
| 5 | `def` | [forbiddenSplitTypes](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizePublicIsCongruentCheck.lean/declarations/forbiddensplittypes.md) | 109 | `declaration-track:60c446580a24cfc9bab99f9a928f2b8bcad96efc83ada79eb80ae7478b9a8e9e` |
| 6 | `def` | [isMorallyIff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizePublicIsCongruentCheck.lean/declarations/ismorallyiff.md) | 112 | `declaration-track:f2020159ab3b6ba76560105700efa553ada6db6bdc562a274a56fb208cf8a647` |
| 7 | `def` | [mkDefaultSplitInfo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizePublicIsCongruentCheck.lean/declarations/mkdefaultsplitinfo.md) | 116 | `declaration-track:036253633e223c61a80ccf14c3992e8c7e2729adea8bf730b26e05a82f775a6c` |
| 8 | `def` | [addDefaultSplitCandidate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizePublicIsCongruentCheck.lean/declarations/adddefaultsplitcandidate.md) | 119 | `declaration-track:bfac4e61a582df552ebefb8007cc48e49f407a94f1f263da267d113f767ca1ed` |
| 9 | `def` | [checkAndAddSplitCandidate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizePublicIsCongruentCheck.lean/declarations/checkandaddsplitcandidate.md) | 123 | `declaration-track:0f5d2cc91f65871ad4ee1376d56b3a954ece5f3a0813835a46412a75eb3cc964` |
| 10 | `def` | [pushCastHEqs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizePublicIsCongruentCheck.lean/declarations/pushcastheqs.md) | 173 | `declaration-track:4d47005de2f7dc2459bc677a65631bafeb521a98a6770a849454f07d76db2fef` |
| 11 | `def` | [mkENode'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizePublicIsCongruentCheck.lean/declarations/mkenode.md) | 181 | `declaration-track:b303e3d35d301ec14f468c4f36f331843e5583907a95a1531125d6276f1b7687` |
| 12 | `def` | [internalizePattern](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizePublicIsCongruentCheck.lean/declarations/internalizepattern.md) | 185 | `declaration-track:74eb045b8fe9235e21aea85c1c82c962a904580fd0ed7d76cbdf4137f3bcfe8d` |
| 13 | `def` | [internalizeMatchCond](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizePublicIsCongruentCheck.lean/declarations/internalizematchcond.md) | 217 | `declaration-track:96b2a78ab4e18d3e08c0eacb717247462615e63d2a8933082047fe60a8f75d75` |
| 14 | `def` | [preprocessTheorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizePublicIsCongruentCheck.lean/declarations/preprocesstheorem.md) | 249 | `declaration-track:413263abd195c094cfe9ecd10f78dac0e01f8dc3bccb4dfc4f0db4fe7a93b3d5` |
| 15 | `def` | [activateTheorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizePublicIsCongruentCheck.lean/declarations/activatetheorem.md) | 255 | `declaration-track:0e8b7adf3f4d292b8a830f005b804ad290737a9f389d104f5772800cfa925937` |
| 16 | `def` | [addMatchEqns](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizePublicIsCongruentCheck.lean/declarations/addmatcheqns.md) | 264 | `declaration-track:d38ff6ef28a7f0f08a1d996955df9544b63c2610fb0e29a79913e28cc18684fb` |
| 17 | `def` | [activateTheoremsCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizePublicIsCongruentCheck.lean/declarations/activatetheoremscore.md) | 276 | `declaration-track:d038f50a041e7631b9033372a3c7b538c3c19d37a5ffde1b26eb0b50cac548d9` |
| 18 | `def` | [activateTheoremPatterns](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizePublicIsCongruentCheck.lean/declarations/activatetheorempatterns.md) | 299 | `declaration-track:c829f60641626dc99e259e750dd95e3e4b126b12323738459dcc0af64365f97d` |
| 19 | `def` | [mkEMatchTheoremWithKind'?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizePublicIsCongruentCheck.lean/declarations/mkematchtheoremwithkind.md) | 305 | `declaration-track:294cca01c85ba0a948929ea4000da2a69b6bc5f1dafb5ce2c635d32fadf70d59` |
| 20 | `def` | [activateInjectiveTheorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizePublicIsCongruentCheck.lean/declarations/activateinjectivetheorem.md) | 312 | `declaration-track:bcc123eb2d7b855c95ec85f71500856d635897e67c771cf3aee5e1e377bb1c01` |
| 21 | `def` | [activateInjectiveTheorems](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizePublicIsCongruentCheck.lean/declarations/activateinjectivetheorems.md) | 324 | `declaration-track:aa7997b8bdd3befd7adc23a01f1c5c4939fba9ac3d5dbc75f9a6a89c1618bbf0` |
| 22 | `def` | [activateTheorems](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizePublicIsCongruentCheck.lean/declarations/activatetheorems.md) | 331 | `declaration-track:5f737bed95a60def46ce40242016a64bc5929f89a6d336f07db4f924bcae8a6f` |
| 23 | `def` | [propagateEtaStruct](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizePublicIsCongruentCheck.lean/declarations/propagateetastruct.md) | 348 | `declaration-track:86c0ab78c63e1b600907eee512c4fe0d475035cfa60aa5464840379b4c02b979` |
| 24 | `def` | [extParentsToIgnore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizePublicIsCongruentCheck.lean/declarations/extparentstoignore.md) | 369 | `declaration-track:6ec95c426f0caf6253428d790ffa85b0d7c22de49754a28b922492e0c6e1099b` |
| 25 | `def` | [addSplitCandidatesForExt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizePublicIsCongruentCheck.lean/declarations/addsplitcandidatesforext.md) | 388 | `declaration-track:edd9f00f757866605eff301c04150c1ecf49bacf746f219c1371568c765f1cc5` |
| 26 | `def` | [addSplitCandidatesForFunext](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizePublicIsCongruentCheck.lean/declarations/addsplitcandidatesforfunext.md) | 427 | `declaration-track:b95b00282855b5389d3878c11aa2ddb2b59755616ad6e1e2fe98f25b8a744a99` |
| 27 | `def` | [tryEta](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizePublicIsCongruentCheck.lean/declarations/tryeta.md) | 435 | `declaration-track:90e8d4301765224ccf209ca0fcccc3cec4ef2ce87051214a984f7ad5e975fc1b` |
| 28 | `def` | [useFunCongrAtDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizePublicIsCongruentCheck.lean/declarations/usefuncongratdecl.md) | 445 | `declaration-track:df598f29e3d0026c232753807ef8869d5b952ec48cc78b16a0bffce923fe9300` |
| 29 | `def` | [useFunCongrAtFn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizePublicIsCongruentCheck.lean/declarations/usefuncongratfn.md) | 466 | `declaration-track:829c17ef4b6a3e30e20c37cfefb5278199644f7bbbf6aecf8f62a0d606ce630d` |
| 30 | `def` | [isNonParametricLitValue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizePublicIsCongruentCheck.lean/declarations/isnonparametriclitvalue.md) | 475 | `declaration-track:234d9dbcedbfc1939f619c23343f94d8f10bec4456a33bf7451d85dd91327803` |
| 31 | `def` | [internalizeNonParametricLiteral](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizePublicIsCongruentCheck.lean/declarations/internalizenonparametricliteral.md) | 501 | `declaration-track:7dfb3e44920c1784ea70585c91b9fbac092c00d9735edf97259070257e5de5c0` |
| 32 | `def` | [isOfNatFinBitVecLiteral](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizePublicIsCongruentCheck.lean/declarations/isofnatfinbitvecliteral.md) | 508 | `declaration-track:5c2e7b96e9949883d6227b5608ffe8679320ad66160c7fbe3adfaa3bb04cfb32` |
| 33 | `def` | [internalizeOfNatFinBitVecLiteral](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizePublicIsCongruentCheck.lean/declarations/internalizeofnatfinbitvecliteral.md) | 525 | `declaration-track:e35e20e23e063223daaeaf63230fa7c377035fc998bd66139eb2e98b27ce795f` |
| 34 | `def` | [internalizeImpl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/InternalizePublicIsCongruentCheck.lean/declarations/internalizeimpl.md) | 542 | `declaration-track:3c5a296ad809817c7e4b9e214e56e421968bde2d64fe394d22e46588a79397ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0fb56dd0f7a2583858e5a9394ed03ef05fe0602d736d0386a8ed8acba8000731 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantf5e4051cc5f6fc8c0c4350ecd6b5f43de3709190a32abdab1faad8b7b1c85d2f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantf5e4051cc5f6fc8c0c4350ecd6b5f43de3709190a32abdab1faad8b7b1c85d2f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
