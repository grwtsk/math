# Verification target: Private Name Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd2224d8e7ecae721685cb6cb12f42a9909112ed",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrivateName/Variant325e7c37f5dee0b13c72797b348037569f7e808768864db6bfe78de0ae399861.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrivateNameNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrivateNameNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd2224d8e7ecae721685cb6cb12f42a9909112ed`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrivateName/Variant325e7c37f5dee0b13c72797b348037569f7e808768864db6bfe78de0ae399861.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrivateName/Variant325e7c37f5dee0b13c72797b348037569f7e808768864db6bfe78de0ae399861.lean.json)

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
| 1 | `def` | [privateHeader](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrivateNameNamespacedPublic.lean/declarations/privateheader.md) | 35 | `declaration-track:9a164f4d040d660e93201781d8fbf289a8b15ba2d777ea1800f7991ca45a25b7` |
| 2 | `def` | [mkPrivateNameCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrivateNameNamespacedPublic.lean/declarations/mkprivatenamecore.md) | 37 | `declaration-track:d41a6ffadca83c923eb7b98f696921d1f8e37a875b6eead5898bbec2f5b22462` |
| 3 | `def` | [isPrivateName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrivateNameNamespacedPublic.lean/declarations/isprivatename.md) | 40 | `declaration-track:409f7257a403e15159d29be39739e8761669d274b8a4620fb09d8883a9404371` |
| 4 | `def` | [isPrivatePrefix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrivateNameNamespacedPublic.lean/declarations/isprivateprefix.md) | 49 | `declaration-track:4938f0ced6172be0445931367104684dafcd53f9ea07172d5f12685940800d85` |
| 5 | `def` | [privateToUserNameAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrivateNameNamespacedPublic.lean/declarations/privatetousernameaux.md) | 60 | `declaration-track:d83225ea4408cd2ac1e2884dc1644fbdb6559be1314974ba053a8ed17d2a6f8f` |
| 6 | `def` | [privateToUserName?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrivateNameNamespacedPublic.lean/declarations/privatetousername.md) | 66 | `declaration-track:db34b2844080c6defc6d8e25dec55c9f717f39dc19b7bd46c1e4cfd362e8f9fe` |
| 7 | `def` | [privateToUserName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrivateNameNamespacedPublic.lean/declarations/privatetousername-source-edition-2.md) | 70 | `declaration-track:f88a6b4edeb68118de85329b55bb7bb5a875ef9eb362753bee1468d9544df811` |
| 8 | `def` | [privatePrefixAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrivateNameNamespacedPublic.lean/declarations/privateprefixaux.md) | 74 | `declaration-track:55fe9fe4805e9629cd68cc680de1a3e5b60aa80cb112624fff7db0b0a1b5d3a1` |
| 9 | `def` | [privatePrefix?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrivateNameNamespacedPublic.lean/declarations/privateprefix.md) | 78 | `declaration-track:7dd33ce6b6fa3bff6a6d50effa8bc729c099251c54bc0b878e14e859ec7d4501` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=61f7f661762c4e2bcc773aa0c9cb63c15958dafa734efe4cbe4c663cc2a6cd38 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrivateName/Variant325e7c37f5dee0b13c72797b348037569f7e808768864db6bfe78de0ae399861.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrivateName/Variant325e7c37f5dee0b13c72797b348037569f7e808768864db6bfe78de0ae399861.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
