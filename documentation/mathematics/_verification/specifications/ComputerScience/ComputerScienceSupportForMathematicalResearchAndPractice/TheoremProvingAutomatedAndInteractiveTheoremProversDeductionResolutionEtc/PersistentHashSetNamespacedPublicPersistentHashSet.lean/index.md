# Verification target: Persistent Hash Set Namespaced Public Persistent Hash Set

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f4ee97702c1158a4ba26e73fc6a2468411264a1",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashSet/Variant02d6f7435d954afd82e586e04e456bfeb1585778c18fffb412d504d9a4f67dee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PersistentHashSetNamespacedPublicPersistentHashSet.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PersistentHashSetNamespacedPublicPersistentHashSet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f4ee97702c1158a4ba26e73fc6a2468411264a1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashSet/Variant02d6f7435d954afd82e586e04e456bfeb1585778c18fffb412d504d9a4f67dee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashSet/Variant02d6f7435d954afd82e586e04e456bfeb1585778c18fffb412d504d9a4f67dee.lean.json)

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
| 1 | `structure` | [PersistentHashSet](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PersistentHashSetNamespacedPublicPersistentHashSet.lean/declarations/persistenthashset.md) | 24 | `declaration-track:30f9eea991fcdaf75e7eb5b8285a73e9c25be385f9117b71523a54e0bd351a31` |
| 2 | `abbrev` | [PHashSet](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PersistentHashSetNamespacedPublicPersistentHashSet.lean/declarations/phashset.md) | 27 | `declaration-track:399aedf7eaee16006b33ecec30959544ef4c03a5ba6adada314edc8517ac9689` |
| 3 | `def` | [empty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PersistentHashSetNamespacedPublicPersistentHashSet.lean/declarations/empty.md) | 31 | `declaration-track:8d949b2c130171ed9284f365a8e19a6b8793af14b53c9917515e37d810831977` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PersistentHashSetNamespacedPublicPersistentHashSet.lean/declarations/instance.md) | 34 | `declaration-track:1291942cb8f9350bf47acf4be8e8e8abed3880b96340198c230c0f5705478395` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PersistentHashSetNamespacedPublicPersistentHashSet.lean/declarations/instance-source-edition-2.md) | 37 | `declaration-track:5c20c79e8da0d3945e3c127249dd0a7b71e82be29ecdb8a2a7820bc4617ac4b2` |
| 6 | `def` | [isEmpty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PersistentHashSetNamespacedPublicPersistentHashSet.lean/declarations/isempty.md) | 42 | `declaration-track:1618b1eab7265872660a5cfef4734f07c57e1e9b1cc5d66bf2837408dc9b69b6` |
| 7 | `def` | [insert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PersistentHashSetNamespacedPublicPersistentHashSet.lean/declarations/insert.md) | 45 | `declaration-track:9950999842501d361c6a2db77ca95f3958454cdec6d2045f10b2d0938a9703d2` |
| 8 | `def` | [erase](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PersistentHashSetNamespacedPublicPersistentHashSet.lean/declarations/erase.md) | 48 | `declaration-track:285cf5e1efe7cd933e28532c8f0430bf94d22d1fc3c20f2125af7ed7dc4060ef` |
| 9 | `def` | [find?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PersistentHashSetNamespacedPublicPersistentHashSet.lean/declarations/find.md) | 51 | `declaration-track:93f4ff3bf0a70355c1831e592e64b9c5a2dd9792190171502a88734c5beffe43` |
| 10 | `def` | [findD](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PersistentHashSetNamespacedPublicPersistentHashSet.lean/declarations/findd.md) | 56 | `declaration-track:e1b1f0b035d53057cda2f8facd868447982e5fc8f0344a7a1320ce6740d45eb2` |
| 11 | `def` | [contains](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PersistentHashSetNamespacedPublicPersistentHashSet.lean/declarations/contains.md) | 59 | `declaration-track:c9acc7b68de1df12e0f96c85056af04242e8283e245ad8aec2cec1e96256b192` |
| 12 | `def` | [foldM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PersistentHashSetNamespacedPublicPersistentHashSet.lean/declarations/foldm.md) | 62 | `declaration-track:0c9ff0064c8187b589ef84689bbac19841501c73af35d88a0efcccd43b6b21e3` |
| 13 | `def` | [fold](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PersistentHashSetNamespacedPublicPersistentHashSet.lean/declarations/fold.md) | 65 | `declaration-track:4b4421a78039d3c36ee63c3d46d720a835e71665eab3ac81217000165be3dcf4` |
| 14 | `def` | [toList](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PersistentHashSetNamespacedPublicPersistentHashSet.lean/declarations/tolist.md) | 68 | `declaration-track:31d4ea369badd550d72e2f77af36f13b077779e815552f9f5e06a2983e758cc3` |
| 15 | `def` | [forIn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PersistentHashSetNamespacedPublicPersistentHashSet.lean/declarations/forin.md) | 71 | `declaration-track:0d75c08392ec96b775def430b0b7fb75fc4a2ed034128f206848aa95df3e2f32` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PersistentHashSetNamespacedPublicPersistentHashSet.lean/declarations/instance-source-edition-3.md) | 75 | `declaration-track:be431ac5975897aaf359bfecdfff29716ec1b6cf10356e4beae4eb7c36e1a8f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f9757cd915850b181fe7731421592d39fc954a4f3625d4d61fba0bff6224dbc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashSet/Variant02d6f7435d954afd82e586e04e456bfeb1585778c18fffb412d504d9a4f67dee.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentHashSet/Variant02d6f7435d954afd82e586e04e456bfeb1585778c18fffb412d504d9a4f67dee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
