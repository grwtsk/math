# Verification target: Termination Hint Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7cbb5cc1bc9ff02bbbfef812bd1e12a488aec8ab",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variant2df0021659e53d518496b54162ef5d1a5a2d0c52bd29ee951f4e96814c24748a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationHintNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationHintNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7cbb5cc1bc9ff02bbbfef812bd1e12a488aec8ab`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variant2df0021659e53d518496b54162ef5d1a5a2d0c52bd29ee951f4e96814c24748a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variant2df0021659e53d518496b54162ef5d1a5a2d0c52bd29ee951f4e96814c24748a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TerminationBy](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationHintNamespacedPublic.lean/declarations/terminationby.md) | 30 | `declaration-track:52875b215e7b606d6b3e4b73657da102b775c02704dba71dd711929597f3ef44` |
| 2 | `structure` | [DecreasingBy](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationHintNamespacedPublic.lean/declarations/decreasingby.md) | 45 | `declaration-track:740091a17a83086c21455fb4bb4753d00eda37519ebba450ed0cb7e8d7874be0` |
| 3 | `inductive` | [PartialFixpointType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationHintNamespacedPublic.lean/declarations/partialfixpointtype.md) | 50 | `declaration-track:681b418495a8807e3aa1051968de05bc52cbe563e14067da58fe6ddbe5437847` |
| 4 | `structure` | [PartialFixpoint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationHintNamespacedPublic.lean/declarations/partialfixpoint.md) | 57 | `declaration-track:4ed57d344a7e1902a18bd3f96390d1c735860eb5098009414bcf28d1625c705c` |
| 5 | `structure` | [TerminationHints](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationHintNamespacedPublic.lean/declarations/terminationhints.md) | 68 | `declaration-track:87efd993feb45430bc4bf0b6384949d5d581a9a1a22ba018acd571366a1bd679` |
| 6 | `def` | [isInductiveFixpoint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationHintNamespacedPublic.lean/declarations/isinductivefixpoint.md) | 86 | `declaration-track:499433e2396d3128bab8335d279cc9eb79a92c10675b99e174cf37e4758375e5` |
| 7 | `def` | [isCoinductiveFixpoint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationHintNamespacedPublic.lean/declarations/iscoinductivefixpoint.md) | 90 | `declaration-track:f06a69a43ad06d00914678a91085ee45dc77fbc4c285be5a4cf44e99ca7a7152` |
| 8 | `def` | [isPartialFixpoint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationHintNamespacedPublic.lean/declarations/ispartialfixpoint.md) | 94 | `declaration-track:f32d6ef4c1180b26bc0b090334d31ceb0129eedcb7eae1f8a43a26820a0658e5` |
| 9 | `def` | [isLatticeTheoretic](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationHintNamespacedPublic.lean/declarations/islatticetheoretic.md) | 98 | `declaration-track:247a1e6c3ebf18d24325379ea32109a44e0782ffd043cfdf18d5300f8254f22c` |
| 10 | `def` | [TerminationHints.none](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationHintNamespacedPublic.lean/declarations/terminationhints-none.md) | 101 | `declaration-track:0e1871296acf47ef7c24e529c0bbdaf5a6fb8eb5233e07b327da427eaf2a31f4` |
| 11 | `def` | [TerminationHints.ensureNone](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationHintNamespacedPublic.lean/declarations/terminationhints-ensurenone.md) | 104 | `declaration-track:e8ee76f84fe55cbd3e1a1f04f4e39772b054998068c7ace8ec45f505b5c750e7` |
| 12 | `def` | [TerminationHints.isNotNone](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationHintNamespacedPublic.lean/declarations/terminationhints-isnotnone.md) | 122 | `declaration-track:91ee7a89209a3f2003a5742e4ea4b30823918b5a1678e8397ef416f680429af5` |
| 13 | `def` | [TerminationHints.rememberExtraParams](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationHintNamespacedPublic.lean/declarations/terminationhints-rememberextraparams.md) | 132 | `declaration-track:cf61c4dd7e680f13cbb8f78124e92be24b28109733b5f6bcda855ab472b27c22` |
| 14 | `def` | [TerminationBy.checkVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationHintNamespacedPublic.lean/declarations/terminationby-checkvars.md) | 140 | `declaration-track:575eb6f583ae39643d1e2d5ed15a9834107b547ac375fe63c7cebc4c06001ba9` |
| 15 | `def` | [elabTerminationHints](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationHintNamespacedPublic.lean/declarations/elabterminationhints.md) | 158 | `declaration-track:08924772741c7d7c5ce2f31e24a46d5ffe7db2e0c605c62631e7dbc1a1e50e14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f1123d8f15133f40a68f218d9cc26d01b9cc471fe393e03fc24a02893803e9e0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variant2df0021659e53d518496b54162ef5d1a5a2d0c52bd29ee951f4e96814c24748a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variant2df0021659e53d518496b54162ef5d1a5a2d0c52bd29ee951f4e96814c24748a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
