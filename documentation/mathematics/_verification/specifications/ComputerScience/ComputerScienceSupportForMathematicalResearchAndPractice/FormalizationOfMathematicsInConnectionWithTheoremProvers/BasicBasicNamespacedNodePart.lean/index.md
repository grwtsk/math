# Verification target: Basic Basic Namespaced Node Part

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35bad40450c6fc638538688ca9fc3972ba4d3917",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3d0a6511495f1b8f47c901dfcd71fd45fc3878d1ff0dc1da804584ea533ffa3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedNodePart.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedNodePart.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35bad40450c6fc638538688ca9fc3972ba4d3917`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3d0a6511495f1b8f47c901dfcd71fd45fc3878d1ff0dc1da804584ea533ffa3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3d0a6511495f1b8f47c901dfcd71fd45fc3878d1ff0dc1da804584ea533ffa3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 6; external provider; requires a separately pinned dependency.
- `Batteries.Lean.NameMapAttribute` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedNodePart.lean/declarations/initialize-source-edition-2.md) | 17 | `declaration-track:1eff34c73970dd630de569eac911c3d8dea16a34a2331680b9228bc03e3d131f` |
| 2 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedNodePart.lean/declarations/initialize-source-edition-3.md) | 18 | `declaration-track:f3548ff64320a9d6a4e130464ce0be4e8c8f570d1db90c34c2f934f25ca0b7cf` |
| 3 | `structure` | [NodePart](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedNodePart.lean/declarations/nodepart.md) | 21 | `declaration-track:dab8869a02de85d527b617bc1ed63d0b53d08d17d37555cb3fe4046cdf1c895d` |
| 4 | `structure` | [Node](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedNodePart.lean/declarations/node.md) | 37 | `declaration-track:5c1707aa6c70e6dd8451e4c94b66495d80fb51e54818712d5b88b1668d8a6bce` |
| 5 | `structure` | [NodeWithPos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedNodePart.lean/declarations/nodewithpos.md) | 54 | `declaration-track:bd80c657dedb377dce8e999c1f7f8c4dbef8cf51366498c4cf0d71edac86d460` |
| 6 | `def` | [Node.toNodeWithPos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedNodePart.lean/declarations/node-tonodewithpos.md) | 66 | `declaration-track:eaee1fe252c0ac743779d002f50116486c6fa4146644206c18dfefbb86c9b50a` |
| 7 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedNodePart.lean/declarations/initialize.md) | 80 | `declaration-track:10c868619001b73c2679efb271cc32a7f5898046cc79c4d8ff37e49e068faa51` |
| 8 | `abbrev` | [State](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedNodePart.lean/declarations/state.md) | 85 | `declaration-track:17f09786eb950e76f62454cfae8698bdf5ad11cd8d6c9fa643a9aac546b57961` |
| 9 | `abbrev` | [Entry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedNodePart.lean/declarations/entry.md) | 86 | `declaration-track:2a4807306873148753fb3379df16860834d51de1d51b04b861beb19816625317` |
| 10 | `def` | [addEntryFn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedNodePart.lean/declarations/addentryfn.md) | 88 | `declaration-track:566b365f336d56c2edebec9dc1158fc7f8309a8475dacfb349350e81b4738e3d` |
| 11 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedNodePart.lean/declarations/initialize-source-edition-4.md) | 96 | `declaration-track:fe2ad410f4f3ba24613e972acbcf28355c8bd6455313b66396eeda1d2675e12f` |
| 12 | `def` | [addLeanNameOfLatexLabel](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedNodePart.lean/declarations/addleannameoflatexlabel.md) | 102 | `declaration-track:fdf53b9ddeaac46be47e7401902dfb98fde4c0fcf6615fb87b6d8778339c264e` |
| 13 | `def` | [getLeanNamesOfLatexLabel](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedNodePart.lean/declarations/getleannamesoflatexlabel.md) | 105 | `declaration-track:bfc76c1f0aeecedd6fddd3c5d873b71537ca595af0440884cc6182a948c60f19` |
| 14 | `register_option` | [blueprint.ignoreUnknownConstants](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedNodePart.lean/declarations/blueprint-ignoreunknownconstants.md) | 110 | `declaration-track:21d2e7463c00137dbc5d301160f1a5035a0c331abeef88620bb829dfa4a840b5` |
| 15 | `def` | [tryResolveConst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedNodePart.lean/declarations/tryresolveconst.md) | 119 | `declaration-track:477a205f5bd5a8cd342d9129cdcea60aaf4a6275cac6cc3f3054499ec2f6c1ea` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/BasicBasicNamespacedNodePart.lean/declarations/instance.md) | 133 | `declaration-track:e9229df4779db5bc9836e20669378f045c899b73d5061cb606a0ca2e44feadc0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=332eb3b6f2529de509c005c3f955f21cbb5275851b77aa56b9a595ba00bc9c81 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3d0a6511495f1b8f47c901dfcd71fd45fc3878d1ff0dc1da804584ea533ffa3c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant3d0a6511495f1b8f47c901dfcd71fd45fc3878d1ff0dc1da804584ea533ffa3c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
