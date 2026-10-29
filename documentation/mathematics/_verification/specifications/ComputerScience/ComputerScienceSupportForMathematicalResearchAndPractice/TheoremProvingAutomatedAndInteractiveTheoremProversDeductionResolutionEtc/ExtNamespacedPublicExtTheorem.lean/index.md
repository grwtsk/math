# Verification target: Ext Namespaced Public Ext Theorem

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ff5e8fcbd983c7eadf27f4263fc82fb28ff16a0",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant0e125018ddecc98163adeb8982b627006309ed904bd6a68cea59d543286d20d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtNamespacedPublicExtTheorem.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtNamespacedPublicExtTheorem.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ff5e8fcbd983c7eadf27f4263fc82fb28ff16a0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant0e125018ddecc98163adeb8982b627006309ed904bd6a68cea59d543286d20d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant0e125018ddecc98163adeb8982b627006309ed904bd6a68cea59d543286d20d7.lean.json)

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
| 1 | `structure` | [ExtTheorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtNamespacedPublicExtTheorem.lean/declarations/exttheorem.md) | 26 | `declaration-track:5e69fc5b059c563726b640cf0e65c16b88a05cb375d7b42288e265d15d1d2a37` |
| 2 | `structure` | [ExtTheorems](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtNamespacedPublicExtTheorem.lean/declarations/exttheorems.md) | 39 | `declaration-track:8bfdb872bd209477eec70065e372d4c1e02f0308695fdb83729e6df978c20911` |
| 3 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtNamespacedPublicExtTheorem.lean/declarations/builtin-initialize.md) | 47 | `declaration-track:f4aa796bae72cd1635c6f53c06151b9963f63c510285d32abedb33bf22ae0831` |
| 4 | `def` | [getExtTheorems](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtNamespacedPublicExtTheorem.lean/declarations/getexttheorems.md) | 57 | `declaration-track:76ea258c36b990ea9c1108c363859414344c7a9162e9b346b91f27fa58e54b66` |
| 5 | `def` | [ExtTheorems.eraseCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtNamespacedPublicExtTheorem.lean/declarations/exttheorems-erasecore.md) | 71 | `declaration-track:0b3a1d046d5a15491f624f1e46aa13908fb3f10f603c55f608d4edc46cebf120` |
| 6 | `def` | [ExtTheorems.contains](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtNamespacedPublicExtTheorem.lean/declarations/exttheorems-contains.md) | 75 | `declaration-track:3e1adfc55a4a7b5033500bd6a712773fc3c0d42acdd3ed8ba854f52c70e334f6` |
| 7 | `def` | [isExtTheorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtNamespacedPublicExtTheorem.lean/declarations/isexttheorem.md) | 79 | `declaration-track:6ce63a6beae818afc9a7d3e506fc0abfdadd400121e54a64651c30ce614bf300` |
| 8 | `def` | [ExtTheorems.erase](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtNamespacedPublicExtTheorem.lean/declarations/exttheorems-erase.md) | 88 | `declaration-track:e65e6514bf5547187a13d2ed3f7f3b9ac11a81232c77c90d07a70c9c645f7118` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6906c252cbb88b41ab3a53acacf206334958988dd1004e4cb76ca648d074b620 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant0e125018ddecc98163adeb8982b627006309ed904bd6a68cea59d543286d20d7.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variant0e125018ddecc98163adeb8982b627006309ed904bd6a68cea59d543286d20d7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
