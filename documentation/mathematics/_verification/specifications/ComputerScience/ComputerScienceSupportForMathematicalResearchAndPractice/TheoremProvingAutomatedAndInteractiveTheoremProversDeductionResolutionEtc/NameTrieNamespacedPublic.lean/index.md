# Verification target: Name Trie Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b88af8c7e25258df515466374f1018641d8a841e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameTrie/Variant53ff01b97f7e87a66857ec5b16c7d3f944b38eaa1c652c21498c897681f3cd23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameTrieNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameTrieNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b88af8c7e25258df515466374f1018641d8a841e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameTrie/Variant53ff01b97f7e87a66857ec5b16c7d3f944b38eaa1c652c21498c897681f3cd23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameTrie/Variant53ff01b97f7e87a66857ec5b16c7d3f944b38eaa1c652c21498c897681f3cd23.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Ord.String` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [NamePart](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameTrieNamespacedPublic.lean/declarations/namepart.md) | 24 | `declaration-track:263c0e42c6e1f38693b47c4acfbc60897fa1f70e4dc2e692e482c1bafe8524af` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameTrieNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 29 | `declaration-track:adc3b2441c18abe5fc6fef6ef705b3ff5bb41336dc92e9cc3940435dbde894a2` |
| 3 | `def` | [NamePart.cmp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameTrieNamespacedPublic.lean/declarations/namepart-cmp.md) | 34 | `declaration-track:00389cb276eba74e8df0c20a63859185a282e997b4f3989bd767e2f1bbd1416a` |
| 4 | `def` | [NamePart.lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameTrieNamespacedPublic.lean/declarations/namepart-lt.md) | 40 | `declaration-track:1e90d5c4e1986309df09082a277a8f9e4086fd6730e39172018238064a971e6d` |
| 5 | `def` | [NameTrie](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameTrieNamespacedPublic.lean/declarations/nametrie.md) | 46 | `declaration-track:8d8a420a814b59d759686c4cc7a96c8e9cc49d6e52af5afa64b1a90697b0525f` |
| 6 | `def` | [toKey](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameTrieNamespacedPublic.lean/declarations/tokey.md) | 48 | `declaration-track:b2dcc803866b9899b9d68246485a20e676303046d995ae039e5b49c8f28b9bce` |
| 7 | `def` | [NameTrie.insert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameTrieNamespacedPublic.lean/declarations/nametrie-insert.md) | 56 | `declaration-track:8a80c44872f99c4093fed32eef786ad7cc268c8ab9e29195734b359386825f8f` |
| 8 | `def` | [NameTrie.empty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameTrieNamespacedPublic.lean/declarations/nametrie-empty.md) | 59 | `declaration-track:f49436f20748e115211b11427675d95a5665cc1066aeaced2d26824a268d25b1` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameTrieNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 62 | `declaration-track:f7ad4ef15b4eee51f70210e59e1387da341d315536805f5269030076ea8d5212` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameTrieNamespacedPublic.lean/declarations/instance.md) | 65 | `declaration-track:40a5b9f9e0498bc7db8728875cc6748c5c27c38b4cb9648b927d8b65bd71a990` |
| 11 | `def` | [NameTrie.find?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameTrieNamespacedPublic.lean/declarations/nametrie-find.md) | 68 | `declaration-track:32ad8c6286b25273a7348a355d6d6128a64c55c4fd2f947aa8c5cc18ca9aafc7` |
| 12 | `def` | [NameTrie.findLongestPrefix?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameTrieNamespacedPublic.lean/declarations/nametrie-findlongestprefix.md) | 72 | `declaration-track:791985a9da9edd6d50bfd196721c9dcbd0b617ce3d7d556f399ffec8b32f295a` |
| 13 | `def` | [NameTrie.foldMatchingM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameTrieNamespacedPublic.lean/declarations/nametrie-foldmatchingm.md) | 76 | `declaration-track:e47545f69238a9777d3cecf9163d02dac8d60555ad694c67e6044c159ad4ed95` |
| 14 | `def` | [NameTrie.foldM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameTrieNamespacedPublic.lean/declarations/nametrie-foldm.md) | 80 | `declaration-track:d36b56fb78db1d34e6947f9a98b00a7bd5399ab97f032134f13478dea4dc174e` |
| 15 | `def` | [NameTrie.forMatchingM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameTrieNamespacedPublic.lean/declarations/nametrie-formatchingm.md) | 84 | `declaration-track:178469ca7d6c7bd15f45afce0356c8133c5fe1f794cbe7568746266e3b3e82b8` |
| 16 | `def` | [NameTrie.forM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameTrieNamespacedPublic.lean/declarations/nametrie-form.md) | 88 | `declaration-track:6c55eacb1cbe2d5e68f3388702ee026a141260ff759cdcd8b45d875b3ae53da2` |
| 17 | `def` | [NameTrie.matchingToArray](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameTrieNamespacedPublic.lean/declarations/nametrie-matchingtoarray.md) | 91 | `declaration-track:324df4af5d562ba77ab7b9358963d3c223c75fc7d6c9f5d91fa7087ea00f8a51` |
| 18 | `def` | [NameTrie.toArray](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NameTrieNamespacedPublic.lean/declarations/nametrie-toarray.md) | 94 | `declaration-track:d7c34b47b8ad66fc497ea580dd1ffb625c7c0553340f8df613ac8e0a823251eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1f30581265371c558a8b8f3bb327bfdd2d99959741583264739e30f4c814d1b6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameTrie/Variant53ff01b97f7e87a66857ec5b16c7d3f944b38eaa1c652c21498c897681f3cd23.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NameTrie/Variant53ff01b97f7e87a66857ec5b16c7d3f944b38eaa1c652c21498c897681f3cd23.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
