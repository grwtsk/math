# Verification target: Nat Log Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abe71f5f7ab7ca995a61f10b693cf6566913f248",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variant941632a44805e206b6e10d332c63807cfc05bfc19b267f9c0e3866096c710ce8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NatLogPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NatLogPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abe71f5f7ab7ca995a61f10b693cf6566913f248`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variant941632a44805e206b6e10d332c63807cfc05bfc19b267f9c0e3866096c710ce8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variant941632a44805e206b6e10d332c63807cfc05bfc19b267f9c0e3866096c710ce8.lean.json)

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
| 1 | `lemma` | [nat_log_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NatLogPublic.lean/declarations/nat-log-zero.md) | 24 | `result-track:cb55b8bb8f9bb6fc2587ed98635bce080ea02fef998e48c88fc9511d0bb88c54` |
| 2 | `lemma` | [nat_log_one](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NatLogPublic.lean/declarations/nat-log-one.md) | 25 | `result-track:80228e784b053134d304eddd7f744bf4d392947e94d376ba7b887c14f7d657d4` |
| 3 | `lemma` | [nat_log_helper0](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NatLogPublic.lean/declarations/nat-log-helper0.md) | 27 | `result-track:17eaede95e96e333eaa6fde821db95a05b7f16a99d61e77c93d4d179b1114054` |
| 4 | `lemma` | [nat_log_helper](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NatLogPublic.lean/declarations/nat-log-helper.md) | 32 | `result-track:9d182d5ec602c4e0b22cb6e64801df46728bf3b1ef5f9f7ff3b35ff93c630204` |
| 5 | `theorem` | [isNat_log](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NatLogPublic.lean/declarations/isnat-log.md) | 37 | `result-track:ed4e60f53cfc7671a766895cef0c9bf2fc8ceb1385cb520d3b7754454662dfa0` |
| 6 | `def` | [proveNatLog](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NatLogPublic.lean/declarations/provenatlog.md) | 46 | `declaration-track:e417f51f4373023fc92e94fca738490fe902d4ac6c99653559ced74923ab0608` |
| 7 | `def` | [evalNatLog](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NatLogPublic.lean/declarations/evalnatlog.md) | 65 | `declaration-track:58cc57511a13ee1c258b52046d7f581dbae5c25a7423c9c78b783d5c7744d64c` |
| 8 | `lemma` | [nat_clog_zero_left](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NatLogPublic.lean/declarations/nat-clog-zero-left.md) | 74 | `result-track:3398fe855ceb42a221e8ebdea306b1927001f31302b046263b0a0c653c6f8de7` |
| 9 | `lemma` | [nat_clog_zero_right](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NatLogPublic.lean/declarations/nat-clog-zero-right.md) | 76 | `result-track:154e8f35a01f2e36da60e6bfedf15eddb17d70d0d67a3dbfd07248453b5a3c85` |
| 10 | `theorem` | [nat_clog_helper](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NatLogPublic.lean/declarations/nat-clog-helper.md) | 79 | `result-track:a055ff0ac377684c8343e05567262ee0ee306eb91f4e71dd694f7f604ce51669` |
| 11 | `theorem` | [isNat_clog](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NatLogPublic.lean/declarations/isnat-clog.md) | 87 | `result-track:c2b0de8ca43a263b52d11fa3783d234a3ca9352cccfb50e5da3865dccad102d0` |
| 12 | `def` | [proveNatClog](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NatLogPublic.lean/declarations/provenatclog.md) | 96 | `declaration-track:8877275c4d5b7be03ad8042eba71757a1b3f330e4a0144ad01a9149bb196c1df` |
| 13 | `def` | [evalNatClog](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NatLogPublic.lean/declarations/evalnatclog.md) | 122 | `declaration-track:b6024f4a23db7d765e2bdb036049673119014b9a3f960105e0b1e5bdf1008837` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=759072d4c4edb16981f8d331a719cddfdcd54ec16ddc8969317dd439fd8f2f22 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variant941632a44805e206b6e10d332c63807cfc05bfc19b267f9c0e3866096c710ce8.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatLog/Variant941632a44805e206b6e10d332c63807cfc05bfc19b267f9c0e3866096c710ce8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
