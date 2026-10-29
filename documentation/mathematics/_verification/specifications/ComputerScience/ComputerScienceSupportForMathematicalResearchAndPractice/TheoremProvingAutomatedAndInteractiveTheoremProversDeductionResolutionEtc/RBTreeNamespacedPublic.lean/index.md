# Verification target: RBTree Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b7d5ebf42384ffc849ea5787a7bd4dcece05d65",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RBTreeNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RBTreeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b7d5ebf42384ffc849ea5787a7bd4dcece05d65`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean.json)

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
| 1 | `def` | [RBTree](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RBTreeNamespacedPublic.lean/declarations/rbtree.md) | 25 | `declaration-track:359fa42d0880ee810a401e657a80e58efe3e2aacf46ae5596b584de74d38b19e` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RBTreeNamespacedPublic.lean/declarations/instance.md) | 28 | `declaration-track:22003aeefefca2817dad6c81c63c2cc5231459813b3d23864090df71e59ca730` |
| 3 | `def` | [mkRBTree](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RBTreeNamespacedPublic.lean/declarations/mkrbtree.md) | 31 | `declaration-track:b4046e2dfd1fffddd17c7b495478051679dbf4b0671ccfcc2144a0903cf63fb2` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RBTreeNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 34 | `declaration-track:7156ca8a909a6afcfa94b16e97093ea545229557920b5f35005e43d9ee3bc9c5` |
| 5 | `def` | [empty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RBTreeNamespacedPublic.lean/declarations/empty.md) | 40 | `declaration-track:902f001aaf1b70845a84ee0ec0cdd0fc8a14252d631479cfa6aa1702abbc92ec` |
| 6 | `def` | [depth](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RBTreeNamespacedPublic.lean/declarations/depth.md) | 43 | `declaration-track:c404ba43ac23e61b0ceb4a321fbbab9b4179898cb31ec59294a38681c82cffa3` |
| 7 | `def` | [fold](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RBTreeNamespacedPublic.lean/declarations/fold.md) | 46 | `declaration-track:e3de2b0aabd65bd57173cf0f5450263464bc6af4af8334904dc7a3fac3f8eaa8` |
| 8 | `def` | [revFold](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RBTreeNamespacedPublic.lean/declarations/revfold.md) | 49 | `declaration-track:f2449e293390cbb957b8394628ca6cac33b9d84beb5a401abed5bc5d0bc0e97d` |
| 9 | `def` | [foldM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RBTreeNamespacedPublic.lean/declarations/foldm.md) | 52 | `declaration-track:f6d512404a2156e1a7be240195a231c52b0eafc621a90629d7b52c8eea821aae` |
| 10 | `def` | [forM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RBTreeNamespacedPublic.lean/declarations/form.md) | 55 | `declaration-track:3c875d8f064d2eb8a2be8095fc5127af7210a2c157b6ec0894d9090c2bba5605` |
| 11 | `def` | [forIn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RBTreeNamespacedPublic.lean/declarations/forin.md) | 58 | `declaration-track:c1fdf14fe4176c7d113c0e64575b3dd71f013b2c9c4a6942dc935b07dac13097` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RBTreeNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 61 | `declaration-track:813a94287d951b6cfbda206b47c94dfa4c258302677e1dad54b146e84131b9ed` |
| 13 | `def` | [isEmpty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RBTreeNamespacedPublic.lean/declarations/isempty.md) | 64 | `declaration-track:6065255cedda603cce75acfbabf1c25259290f249e97108a85fa044a14a6722f` |
| 14 | `def` | [toList](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RBTreeNamespacedPublic.lean/declarations/tolist.md) | 67 | `declaration-track:84f3cf8174123685b6315511175d2bcb0e5f78d55a84bd8b46539b0eb167a02f` |
| 15 | `def` | [toArray](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RBTreeNamespacedPublic.lean/declarations/toarray.md) | 70 | `declaration-track:05babb5518f077dc8e12a115e87449508b6afcaf750f0f703260392fe3d23e9a` |
| 16 | `def` | [min](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RBTreeNamespacedPublic.lean/declarations/min.md) | 73 | `declaration-track:6771c38889a5976fc20b42538607ba126adfa424e441100e72b24ea9b1bd7b6b` |
| 17 | `def` | [max](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RBTreeNamespacedPublic.lean/declarations/max.md) | 78 | `declaration-track:730950731c33c733e65ac6e10770963107b540f36a6510ea69bb31f0a2633422` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RBTreeNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 83 | `declaration-track:42159d23f21971d7f8eee37b1faed542ea08bcf7234e9fbadb46c57967b5bf9f` |
| 19 | `def` | [insert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RBTreeNamespacedPublic.lean/declarations/insert.md) | 86 | `declaration-track:0b12edae9372c4284adba5bf8b6cd598d547f5240514204468c7c1dc438cc0bb` |
| 20 | `def` | [erase](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RBTreeNamespacedPublic.lean/declarations/erase.md) | 89 | `declaration-track:d7552c69c28c6dbb699993202d7ff2b643d6c8d4766ccdbd748c0d140144503f` |
| 21 | `def` | [ofList](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RBTreeNamespacedPublic.lean/declarations/oflist.md) | 92 | `declaration-track:3dcdd3819f7cf5dbb89dbe349167088ca5751de991ec8bbf58d4be708e79bc56` |
| 22 | `def` | [find?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RBTreeNamespacedPublic.lean/declarations/find.md) | 96 | `declaration-track:cbae282b28e407db4e4e7b780afc2368b2b664de3bbde6e6dffc807f95a0aded` |
| 23 | `def` | [contains](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RBTreeNamespacedPublic.lean/declarations/contains.md) | 101 | `declaration-track:517557d7f23a6334e372b3527b459e6d24b4fea32513c77f1f80dd185a787f82` |
| 24 | `def` | [fromList](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RBTreeNamespacedPublic.lean/declarations/fromlist.md) | 104 | `declaration-track:6509c2e5e0d609386ec93863681b6460c19a2cabd660f77f2fe13fd957dfefef` |
| 25 | `def` | [fromArray](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RBTreeNamespacedPublic.lean/declarations/fromarray.md) | 107 | `declaration-track:e6def69dca7ec5e38fc4b3dd5d6316a17aa505b7dcec148f4f735a73b0bb8404` |
| 26 | `def` | [all](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RBTreeNamespacedPublic.lean/declarations/all.md) | 110 | `declaration-track:e2e4a4bf929dd9f39b9d830409fa0acafab4985402bdbce052589eb1a3ac39ac` |
| 27 | `def` | [any](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RBTreeNamespacedPublic.lean/declarations/any.md) | 113 | `declaration-track:8a79ab9cc94a3c748794cec7682b0150f625437c63790ba6840c51b796e454ef` |
| 28 | `def` | [subset](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RBTreeNamespacedPublic.lean/declarations/subset.md) | 116 | `declaration-track:6c152742cd691c59142705038086f39f5362a0f41045ec772e43f50ccae4bcf4` |
| 29 | `def` | [seteq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RBTreeNamespacedPublic.lean/declarations/seteq.md) | 119 | `declaration-track:8a142cf0deebcb94ebef49ce811c8378dc3768eba6ec85d95bee34a79c949f21` |
| 30 | `def` | [union](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RBTreeNamespacedPublic.lean/declarations/union.md) | 122 | `declaration-track:ae0c98d074612144122470b676f8df69fea089f1563b5713e5c34a5b35205696` |
| 31 | `def` | [diff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RBTreeNamespacedPublic.lean/declarations/diff.md) | 128 | `declaration-track:1e368e8e426532a52d1c81d607387d2412637fe73853e728725f7675094a9012` |
| 32 | `def` | [filter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RBTreeNamespacedPublic.lean/declarations/filter.md) | 135 | `declaration-track:49baf0783afd0d4e8cc8340157c996ebaf1b02b9cb4d723efa4c3ff9a0e1a681` |
| 33 | `def` | [rbtreeOf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RBTreeNamespacedPublic.lean/declarations/rbtreeof.md) | 140 | `declaration-track:cc022c97f6ed80b3520ea6d63a522a185e9e7d2c6d585c7a526cf047c15b89f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eee55a30b5853a7b740d4e01bb5a66176021d4a83da0967fbefd63576c966f30 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RBTree/Variant78f64bfc87f1910a819463ed9d8e1902f0460f79bc2abe69baad0d06f7de1608.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
