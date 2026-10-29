# Verification target: Linear Map Completion Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ebf6ab109022769c933d28838f2010e8dfc8ab9",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LinearMapCompletion/Varianta710506e45b695ee3bc5cab52600537e98d64b4799e7fa73f459c6f1e67e332a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapCompletionNamespacedPublic.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapCompletionNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ebf6ab109022769c933d28838f2010e8dfc8ab9`.

Source path: `GRWTSK/Topology/GeneralTopology/LinearMapCompletion/Varianta710506e45b695ee3bc5cab52600537e98d64b4799e7fa73f459c6f1e67e332a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LinearMapCompletion/Varianta710506e45b695ee3bc5cab52600537e98d64b4799e7fa73f459c6f1e67e332a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [completion](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapCompletionNamespacedPublic.lean/declarations/completion.md) | 53 | `declaration-track:c82a67fc7989395542118539df884816f45a246c58e4c181ba6657091132870f` |
| 2 | `lemma` | [toAddMonoidHom_completion](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapCompletionNamespacedPublic.lean/declarations/toaddmonoidhom-completion.md) | 63 | `result-track:fa82b168ec49024da809560e03287c5eb25bc3e29cb6eccee305b36ac31e8234` |
| 3 | `lemma` | [coe_completion](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapCompletionNamespacedPublic.lean/declarations/coe-completion.md) | 66 | `result-track:61e7d5620d8755952c8fe2b9ec8d2d14470c8dda222ff61be6ff8b9aa9006f4c` |
| 4 | `theorem` | [completion_apply_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapCompletionNamespacedPublic.lean/declarations/completion-apply-coe.md) | 70 | `result-track:02638eb46ba0994001be518b30f71180d179e2484527143bdf272ba222da3d8b` |
| 5 | `def` | [fromCompletion](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapCompletionNamespacedPublic.lean/declarations/fromcompletion.md) | 81 | `declaration-track:6e744f2883a18f1f6c48122fbe4afb35979dad1efb8dcf3ebb8cbb8b6c1c3760` |
| 6 | `lemma` | [toAddMonoidHom_fromCompletion](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapCompletionNamespacedPublic.lean/declarations/toaddmonoidhom-fromcompletion.md) | 89 | `result-track:33ad0c6cbcf834af7f062f32591aaf2302e9e44caf3027b179686c64ed7eae26` |
| 7 | `lemma` | [coe_fromCompletion](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapCompletionNamespacedPublic.lean/declarations/coe-fromcompletion.md) | 92 | `result-track:f9929307c1a691c4f21c1c5f1545c35e0d67561b5c30a1b6205180c60625abb9` |
| 8 | `lemma` | [fromCompletion_apply_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapCompletionNamespacedPublic.lean/declarations/fromcompletion-apply-coe.md) | 96 | `result-track:624dfbb23dae0b650623cfebeca4cdebf1faec79458805caed15791264cd013c` |
| 9 | `lemma` | [fromCompletion_unique](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapCompletionNamespacedPublic.lean/declarations/fromcompletion-unique.md) | 99 | `result-track:d9b54e1f4888e174784a8ed9c464165a22ef930f79eac146af08de406443de80` |
| 10 | `def` | [toComplL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapCompletionNamespacedPublic.lean/declarations/tocompll.md) | 110 | `declaration-track:cc5eb34169ab1a68d0348a7ec4482e207922884c20c72ea942f03063cd220148` |
| 11 | `lemma` | [coe_toComplL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapCompletionNamespacedPublic.lean/declarations/coe-tocompll.md) | 115 | `result-track:bccb348c995d69b65cb389c93c800f94f02012e4869d7b9ac3e44b873c6d8d68` |
| 12 | `lemma` | [toAddMonoidHom_toComplL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapCompletionNamespacedPublic.lean/declarations/toaddmonoidhom-tocompll.md) | 116 | `result-track:6f2714e7a177b3b03e23869d020f88488b82417f81f25d07e1e2c5f9c7490806` |
| 13 | `lemma` | [ContinuousLinearMap.extend_completionToComplL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/LinearMapCompletionNamespacedPublic.lean/declarations/continuouslinearmap-extend-completiontocompll.md) | 121 | `result-track:c45845103efd318b0492af28f90175f085b44f9186cef38af869dec49c8e1c93` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=481b36908622d6a6d124489397aeebf240d871312aecdc9984bf2d47716d57a5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LinearMapCompletion/Varianta710506e45b695ee3bc5cab52600537e98d64b4799e7fa73f459c6f1e67e332a.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LinearMapCompletion/Varianta710506e45b695ee3bc5cab52600537e98d64b4799e7fa73f459c6f1e67e332a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
