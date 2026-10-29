# Verification target: Module Linear PMap Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93b69d7fc2404afddcc1406380077f06bb81a0d6",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LinearPMap/Variantdd4581e05eaf668a1a214be34c75af98f8d7ee57f19823a0570db84996138b38.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMapNamespacedPublic.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMapNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93b69d7fc2404afddcc1406380077f06bb81a0d6`.

Source path: `GRWTSK/Topology/GeneralTopology/LinearPMap/Variantdd4581e05eaf668a1a214be34c75af98f8d7ee57f19823a0570db84996138b38.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LinearPMap/Variantdd4581e05eaf668a1a214be34c75af98f8d7ee57f19823a0570db84996138b38.lean.json)

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
| 1 | `def` | [IsClosed](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMapNamespacedPublic.lean/declarations/isclosed.md) | 68 | `declaration-track:e0f9202afffdbcab5f956035212d4a0297fd1f9e61032fae11c554b4e8c1bedc` |
| 2 | `def` | [IsClosable](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMapNamespacedPublic.lean/declarations/isclosable.md) | 75 | `declaration-track:f755d05c867166670d6f653b900f54fe56d4d374699aa783eea7fb3301341c37` |
| 3 | `theorem` | [IsClosed.isClosable](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMapNamespacedPublic.lean/declarations/isclosed-isclosable.md) | 79 | `result-track:62ef14e05327bef2f2aaee6635a9685039fae5e8daa4856456b6bc9b1dfcfba9` |
| 4 | `theorem` | [IsClosable.leIsClosable](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMapNamespacedPublic.lean/declarations/isclosable-leisclosable.md) | 83 | `result-track:677569100e05542c8e243456ea393a781badc4269326a6b325e148af796c72b9` |
| 5 | `theorem` | [IsClosable.existsUnique](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMapNamespacedPublic.lean/declarations/isclosable-existsunique.md) | 94 | `result-track:d9f8a40b512dde585cd2cddc05eb6200622909a3514e94a9f8114a06d526e735` |
| 6 | `def` | [closure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMapNamespacedPublic.lean/declarations/closure.md) | 102 | `declaration-track:51a3f9c804a8b7b81065a5b3b8c1b008d43abc66d6fb5ef6c634d01641f52777` |
| 7 | `theorem` | [closure_def](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMapNamespacedPublic.lean/declarations/closure-def.md) | 105 | `result-track:22abba58e83fe7a79b339f8b613c65075a4020f2c38ea704593bd5ed7827752b` |
| 8 | `theorem` | [closure_def'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMapNamespacedPublic.lean/declarations/closure-def-source-edition-2.md) | 108 | `result-track:51f663183cbf33d8841370268e737bf59d9f0b63141158e341c1e43f98329610` |
| 9 | `theorem` | [IsClosable.graph_closure_eq_closure_graph](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMapNamespacedPublic.lean/declarations/isclosable-graph-closure-eq-closure-graph.md) | 112 | `result-track:7e9cb7d9844977afd54e49e874abe29484b30b8afd9616bafe9d19503978a046` |
| 10 | `theorem` | [le_closure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMapNamespacedPublic.lean/declarations/le-closure.md) | 118 | `result-track:7ad99bcf982a5160440fd05901c435c20f18fe562ab4129b79e3e21df193a063` |
| 11 | `theorem` | [IsClosable.closure_mono](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMapNamespacedPublic.lean/declarations/isclosable-closure-mono.md) | 125 | `result-track:76043e22df015a4fbfc3b83306673cda5f608235794c1d1bbf5b616e71acf71c` |
| 12 | `theorem` | [IsClosable.closure_isClosed](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMapNamespacedPublic.lean/declarations/isclosable-closure-isclosed.md) | 133 | `result-track:a1bac8e7392cdcc0d7179ad7966e5ec8b5d12186c8050430fd26a27ee1879bbc` |
| 13 | `theorem` | [IsClosable.closureIsClosable](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMapNamespacedPublic.lean/declarations/isclosable-closureisclosable.md) | 138 | `result-track:0646276d9138fe0b79ebf399f855f2302bf52124a1f23904a8383e1dcfe9ae61` |
| 14 | `theorem` | [isClosable_iff_exists_closed_extension](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMapNamespacedPublic.lean/declarations/isclosable-iff-exists-closed-extension.md) | 141 | `result-track:7a7a29d3bfcfa24d2455bf8cd049eb1d76df1b58c2150398fa9c15934c1fae1e` |
| 15 | `structure` | [HasCore](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMapNamespacedPublic.lean/declarations/hascore.md) | 150 | `declaration-track:8af345092d50ae9e029a07dc61143aabc71cbdc1f4f76ae6edf00f5b6598b69f` |
| 16 | `theorem` | [hasCore_def](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMapNamespacedPublic.lean/declarations/hascore-def.md) | 154 | `result-track:87037c1b18c0122368839af97d1449ce20912ef092645cc0271ee66ce8e0ad93` |
| 17 | `theorem` | [closureHasCore](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMapNamespacedPublic.lean/declarations/closurehascore.md) | 161 | `result-track:441bcbd4049bbb1aef88d1e7604f7d174738e636fdbe2f6ef43d4427ca4c0c9e` |
| 18 | `theorem` | [inverse_closed_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMapNamespacedPublic.lean/declarations/inverse-closed-iff.md) | 182 | `result-track:556ae824785cb43b19172099b4a18660f0852687a81d6bcae558cd9929a760b2` |
| 19 | `theorem` | [closure_inverse_graph](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMapNamespacedPublic.lean/declarations/closure-inverse-graph.md) | 191 | `result-track:36e64e20c965757569177610a50c071b9563b9337afac4eb5df2c6cfdca8e7d2` |
| 20 | `theorem` | [inverse_isClosable_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMapNamespacedPublic.lean/declarations/inverse-isclosable-iff.md) | 206 | `result-track:dfbca16337fa5ce7e600bde6a2cf79cd0e9ca1ba6fe5c85a5451333953bb9c3b` |
| 21 | `theorem` | [inverse_closure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleLinearPMapNamespacedPublic.lean/declarations/inverse-closure.md) | 227 | `result-track:c1ff06c8cc3c029357a03d99d30ab5e8a0e9e97e3dee32f644491e134d7d97af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=89d708d5f51d3a468e64f553bd97915d689286a8b5473a46d0a4aba66a96d9fa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LinearPMap/Variantdd4581e05eaf668a1a214be34c75af98f8d7ee57f19823a0570db84996138b38.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LinearPMap/Variantdd4581e05eaf668a1a214be34c75af98f8d7ee57f19823a0570db84996138b38.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
