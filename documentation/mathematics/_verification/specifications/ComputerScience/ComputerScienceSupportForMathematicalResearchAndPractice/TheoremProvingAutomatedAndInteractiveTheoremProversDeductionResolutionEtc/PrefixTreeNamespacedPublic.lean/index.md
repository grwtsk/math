# Verification target: Prefix Tree Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d15698943c2c947ed63ab304e52fbba629a844f",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Variantaaa18c913abfd16f3bd9fc9f836c71ba77949b43c9996468e7039a45a90ef0ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrefixTreeNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrefixTreeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d15698943c2c947ed63ab304e52fbba629a844f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Variantaaa18c913abfd16f3bd9fc9f836c71ba77949b43c9996468e7039a45a90ef0ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Variantaaa18c913abfd16f3bd9fc9f836c71ba77949b43c9996468e7039a45a90ef0ad.lean.json)

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
| 1 | `inductive` | [PrefixTreeNode](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrefixTreeNamespacedPublic.lean/declarations/prefixtreenode.md) | 24 | `declaration-track:9d38f234a6e692022a087f256d0f7273d276b2bd2e95c684f14eb478327bdd75` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrefixTreeNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 27 | `declaration-track:703d517f0b6227827d1a2185470f3707aa1a9f2cca95ae9d17d01d94f91cd7c4` |
| 3 | `def` | [empty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrefixTreeNamespacedPublic.lean/declarations/empty.md) | 32 | `declaration-track:56cd7fdbeab18f827ab28d03dc596b1c4104f00a3bc500c4da74815f5c3c2621` |
| 4 | `def` | [insert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrefixTreeNamespacedPublic.lean/declarations/insert.md) | 36 | `declaration-track:f85fe55c12c928312d603aa6d82aa977c5f52b2b808595b719d607a420d768cd` |
| 5 | `def` | [find?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrefixTreeNamespacedPublic.lean/declarations/find.md) | 54 | `declaration-track:28da840cc92de42bc65cae9819fe6d2cae0f05889acec72ffe2760b62c49ae4d` |
| 6 | `def` | [findLongestPrefix?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrefixTreeNamespacedPublic.lean/declarations/findlongestprefix.md) | 65 | `declaration-track:8a83ffd2454eea936196ab28d65f0c1261aefb46a3fabce27d1a9e09d1f38df7` |
| 7 | `def` | [foldMatchingM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrefixTreeNamespacedPublic.lean/declarations/foldmatchingm.md) | 75 | `declaration-track:4aeb8ec687855b06f7a62192c3ed3a06b99d5edc76bf749720b2b3591973ad51` |
| 8 | `inductive` | [WellFormed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrefixTreeNamespacedPublic.lean/declarations/wellformed.md) | 90 | `declaration-track:ca11f37baee3c844e0d9f6f38dee5f480c7f2cc8aaec86550716f9a6599c0fa6` |
| 9 | `def` | [PrefixTree](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrefixTreeNamespacedPublic.lean/declarations/prefixtree.md) | 96 | `declaration-track:71e2e39d52c21ca4774850e31581a6f82c104965edc73461d089f7b65c3db368` |
| 10 | `def` | [PrefixTree.empty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrefixTreeNamespacedPublic.lean/declarations/prefixtree-empty.md) | 101 | `declaration-track:ee12473e4a9123df24ecb62aa4a7981f374765d86d0d95c740d83aa40b522e10` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrefixTreeNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 104 | `declaration-track:7e2351986c8ec627ae5a50bcdca07c78ddbc61b75996dd1d29ab64706fd67a70` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrefixTreeNamespacedPublic.lean/declarations/instance.md) | 107 | `declaration-track:13d4f331c3d7866a235a3a83c90491ba754d36572cca13dfa92c0562c69306d9` |
| 13 | `def` | [PrefixTree.insert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrefixTreeNamespacedPublic.lean/declarations/prefixtree-insert.md) | 111 | `declaration-track:207162182957e0f258a69632fa6ae6ba5875156d8cce18899b637f163d9b5aea` |
| 14 | `def` | [PrefixTree.find?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrefixTreeNamespacedPublic.lean/declarations/prefixtree-find.md) | 115 | `declaration-track:5a5e021355615a9b0da13d50cd1fa723547f61b3726e1f9d0f68812321642d62` |
| 15 | `def` | [PrefixTree.findLongestPrefix?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrefixTreeNamespacedPublic.lean/declarations/prefixtree-findlongestprefix.md) | 119 | `declaration-track:280931bd9411cefbd0ab1c07b96182d24bc71fd8a3629e8e4421e726db7f6c6b` |
| 16 | `def` | [PrefixTree.foldMatchingM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrefixTreeNamespacedPublic.lean/declarations/prefixtree-foldmatchingm.md) | 123 | `declaration-track:df633fbb02c38d758e6cae561ae33fc5a7acd3968bd0d553c2ac65bb0882e167` |
| 17 | `def` | [PrefixTree.foldM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrefixTreeNamespacedPublic.lean/declarations/prefixtree-foldm.md) | 127 | `declaration-track:68131db39791e18b43552003deec68e25f8760af46185f61ffdfbe0fe4c1c0e5` |
| 18 | `def` | [PrefixTree.forMatchingM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrefixTreeNamespacedPublic.lean/declarations/prefixtree-formatchingm.md) | 131 | `declaration-track:784161830626ad130420ae3791671274336e1d849ef500fdb3944c2af51f09d7` |
| 19 | `def` | [PrefixTree.forM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PrefixTreeNamespacedPublic.lean/declarations/prefixtree-form.md) | 135 | `declaration-track:b11f38e5d0df37899d4b1d6cddf7106c33c11f49d8fe72e9a5b04c43073c45e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=430c359b86d8c2e24ffc7cb425ed84bf52ed998564fa3dce4a676897fd9be990 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Variantaaa18c913abfd16f3bd9fc9f836c71ba77949b43c9996468e7039a45a90ef0ad.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrefixTree/Variantaaa18c913abfd16f3bd9fc9f836c71ba77949b43c9996468e7039a45a90ef0ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
