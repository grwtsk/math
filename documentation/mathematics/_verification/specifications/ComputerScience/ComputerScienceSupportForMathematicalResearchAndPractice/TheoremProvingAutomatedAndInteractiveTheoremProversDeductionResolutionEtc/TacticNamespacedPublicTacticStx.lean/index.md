# Verification target: Tactic Namespaced Public Tactic Stx

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab6a388471377dcb6fe308458b2abd34281f7a47",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant9b476faa879438ce9133d6329397469847de803542757292785aab3298279ca3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticNamespacedPublicTacticStx.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticNamespacedPublicTacticStx.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab6a388471377dcb6fe308458b2abd34281f7a47`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant9b476faa879438ce9133d6329397469847de803542757292785aab3298279ca3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant9b476faa879438ce9133d6329397469847de803542757292785aab3298279ca3.lean.json)

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
| 1 | `def` | [tacticMImpl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticNamespacedPublicTacticStx.lean/declarations/tacticmimpl.md) | 26 | `declaration-track:76279b5a48bd716a7ad478a10d2f01e2a7d902b050489dc46886a5a6e680afc5` |
| 2 | `opaque` | [tacticM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticNamespacedPublicTacticStx.lean/declarations/tacticm.md) | 35 | `declaration-track:a4273db028c394bec5dcbc79be0b9f2f45d8402cd9250ea75528e49d96dfa0ba` |
| 3 | `def` | [ruleTacImpl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticNamespacedPublicTacticStx.lean/declarations/ruletacimpl.md) | 38 | `declaration-track:6e01dbed7207b5da378688dedaf5cb4befc144bcbdf18695107cc6f5132814fc` |
| 4 | `opaque` | [ruleTac](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticNamespacedPublicTacticStx.lean/declarations/ruletac.md) | 44 | `declaration-track:fd5a66f59643f8b62b48cd176002e15d531e5a96076d9d0109233eaa48672440` |
| 5 | `def` | [singleRuleTacImpl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticNamespacedPublicTacticStx.lean/declarations/singleruletacimpl.md) | 47 | `declaration-track:2528190c6e4f140abeb1365153bb84c14b2e55084b4f8a5597bd7d00caac6d23` |
| 6 | `opaque` | [singleRuleTac](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticNamespacedPublicTacticStx.lean/declarations/singleruletac.md) | 54 | `declaration-track:d45d08d953b7158bd2d81402c1c1635fb4c3bebed2e8a32d6478134085594444` |
| 7 | `def` | [tacticStx](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticNamespacedPublicTacticStx.lean/declarations/tacticstx.md) | 60 | `declaration-track:bbbeacff20c30c3c1c92b835ed35221ef37929742d796efdbddb8aa3b45820e8` |
| 8 | `def` | [tacGenImpl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticNamespacedPublicTacticStx.lean/declarations/tacgenimpl.md) | 84 | `declaration-track:b2dcc44fcec25ef10dcd8b3a7758b7cb0c514d00f10e671e0cfc38e0fae02320` |
| 9 | `opaque` | [tacGen](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticNamespacedPublicTacticStx.lean/declarations/tacgen.md) | 126 | `declaration-track:a4c6a04106611800756f948955c41f7fe21e94c5606e0e428522bb5b1905c2e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cb2f8e54e97ff9eafd9e159e083ca4538a335a3a9b3cd558fda14c52e2a5e0d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant9b476faa879438ce9133d6329397469847de803542757292785aab3298279ca3.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant9b476faa879438ce9133d6329397469847de803542757292785aab3298279ca3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
