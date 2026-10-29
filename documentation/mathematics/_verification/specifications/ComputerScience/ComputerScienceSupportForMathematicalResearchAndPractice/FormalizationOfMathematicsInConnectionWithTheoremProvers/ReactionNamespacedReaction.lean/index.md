# Verification target: Reaction Namespaced Reaction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a347a86cd9199860bdb794717b228955e0c32d1",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reaction/Variant11b20432f35f7f2e46bc9dbc36e6a9c4e9566b2ff6bef9e9c6f4f768976603ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReactionNamespacedReaction.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReactionNamespacedReaction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a347a86cd9199860bdb794717b228955e0c32d1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reaction/Variant11b20432f35f7f2e46bc9dbc36e6a9c4e9566b2ff6bef9e9c6f4f768976603ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reaction/Variant11b20432f35f7f2e46bc9dbc36e6a9c4e9566b2ff6bef9e9c6f4f768976603ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Fabric.Simplicial` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Reaction](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReactionNamespacedReaction.lean/declarations/reaction.md) | 17 | `declaration-track:9ce95ecc403d3fd91affe2894a113eaee126dd7298a9a1394aeef218c5f39fe6` |
| 2 | `def` | [identity](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReactionNamespacedReaction.lean/declarations/identity.md) | 22 | `declaration-track:d50e47a0184289429b7bc2c9fa826201c301bc8611ea414ea0ab4a3b370b0f88` |
| 3 | `def` | [comp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReactionNamespacedReaction.lean/declarations/comp.md) | 24 | `declaration-track:7e15bc96584d4114ea09ea92a38b8a75245268498aa5c12f26e332a1e445323a` |
| 4 | `theorem` | [id_comp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReactionNamespacedReaction.lean/declarations/id-comp.md) | 27 | `result-track:d20e60ee347cfdcfd019c4f0f9c247829130f2242bda0ccc942220ce00fe4433` |
| 5 | `theorem` | [comp_id](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReactionNamespacedReaction.lean/declarations/comp-id.md) | 32 | `result-track:67990e36e48a34aa97bbf869d25aa6e63350e5a34d1a889a7e643ab6209ac17a` |
| 6 | `theorem` | [comp_assoc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReactionNamespacedReaction.lean/declarations/comp-assoc.md) | 37 | `result-track:c724d26dc4ef411df10b95a8bd97324dccb2792dbd24840b8dcf30a217311643` |
| 7 | `structure` | [LocalPatch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ReactionNamespacedReaction.lean/declarations/localpatch.md) | 47 | `declaration-track:1fbc458021d84e2027e52a4baf6748b028afe642434c484020541a19a7648732` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e291fe4494d72c84b77082974e2ae321bc56e55f5ae6a71eff8c9d7bfea291f8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reaction/Variant11b20432f35f7f2e46bc9dbc36e6a9c4e9566b2ff6bef9e9c6f4f768976603ff.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reaction/Variant11b20432f35f7f2e46bc9dbc36e6a9c4e9566b2ff6bef9e9c6f4f768976603ff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
