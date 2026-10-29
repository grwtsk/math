# Verification target: Algebra Group Subgroup Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b801d4b5def72a8a0a656ca097a0e244d44b190",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Subgroup/Variant48483b2fe977dea03679bd54cbb0a592f66e4f3e0c6d6fbd02de37272fe72a4f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupSubgroupNamespacedPublic.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupSubgroupNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b801d4b5def72a8a0a656ca097a0e244d44b190`.

Source path: `GRWTSK/Algebra/GroupTheory/Subgroup/Variant48483b2fe977dea03679bd54cbb0a592f66e4f3e0c6d6fbd02de37272fe72a4f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Subgroup/Variant48483b2fe977dea03679bd54cbb0a592f66e4f3e0c6d6fbd02de37272fe72a4f.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupSubgroupNamespacedPublic.lean/declarations/instance.md) | 38 | `declaration-track:5b677e33db001054429d3d659bf5029b217f39dfb5c0fb4fad46f035ebb98b3e` |
| 2 | `def` | [Subgroup.topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupSubgroupNamespacedPublic.lean/declarations/subgroup-topologicalclosure.md) | 48 | `declaration-track:7b69c9b6e837d5b48377aef3f479fccc1737ff6dc55918939a0561f1217fd003` |
| 3 | `theorem` | [Subgroup.topologicalClosure_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupSubgroupNamespacedPublic.lean/declarations/subgroup-topologicalclosure-coe.md) | 54 | `result-track:88f2ae44051f2ac63a0cb79eb08d9da306299adce18774a09252559ff5732c80` |
| 4 | `theorem` | [Subgroup.le_topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupSubgroupNamespacedPublic.lean/declarations/subgroup-le-topologicalclosure.md) | 59 | `result-track:236d1513427f5716573b045c4f554001864923f75d37c2c4649bf23beb46a56e` |
| 5 | `theorem` | [Subgroup.isClosed_topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupSubgroupNamespacedPublic.lean/declarations/subgroup-isclosed-topologicalclosure.md) | 63 | `result-track:2760c9afa543d8bc2b75f4b1092c48b72d0fb66004c903a1d2591984fbdef78e` |
| 6 | `theorem` | [Subgroup.topologicalClosure_minimal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupSubgroupNamespacedPublic.lean/declarations/subgroup-topologicalclosure-minimal.md) | 67 | `result-track:8bc1811de8ed221c6429173f07ebf3bd28d34aa65cfd2893eb47dfdc794002ac` |
| 7 | `theorem` | [Subgroup.topologicalClosure_mono](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupSubgroupNamespacedPublic.lean/declarations/subgroup-topologicalclosure-mono.md) | 72 | `result-track:eb714f91303af1c43aed14ea95465b27a389fa066a824266cbd9c54aca6199ea` |
| 8 | `theorem` | [DenseRange.topologicalClosure_map_subgroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupSubgroupNamespacedPublic.lean/declarations/denserange-topologicalclosure-map-subgroup.md) | 77 | `result-track:40e82cd5468c956b1b99f13a99cb0462f9132d92e0c1c17092509ffc1db6143c` |
| 9 | `theorem` | [Subgroup.is_normal_topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupSubgroupNamespacedPublic.lean/declarations/subgroup-is-normal-topologicalclosure.md) | 86 | `result-track:c8b9aeb9bffa8820c6c8fa44923708f3bab657ed18bf7aa0bc2920a5b178bada` |
| 10 | `theorem` | [mul_mem_connectedComponent_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupSubgroupNamespacedPublic.lean/declarations/mul-mem-connectedcomponent-one.md) | 94 | `result-track:48a3d5d729e27bba650c3f90ec4506b31510c7dc648ece9fbfde50e53a635e92` |
| 11 | `theorem` | [inv_mem_connectedComponent_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupSubgroupNamespacedPublic.lean/declarations/inv-mem-connectedcomponent-one.md) | 105 | `result-track:ab3c2597e4e760f96f5039fc2f6028c40f2030e6ff7df50bbf4d6b147c7d205e` |
| 12 | `def` | [Subgroup.connectedComponentOfOne](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupSubgroupNamespacedPublic.lean/declarations/subgroup-connectedcomponentofone.md) | 115 | `declaration-track:54ffe4a846a2e304f522ffc60fd1a7c368ea474381ebd928f18cdad6ecda6531` |
| 13 | `instance` | [Subgroup.isMulCommutative_topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupSubgroupNamespacedPublic.lean/declarations/subgroup-ismulcommutative-topologicalclosure.md) | 126 | `declaration-track:1f689f8d70e0fa2c20fde95cb6ad2accad366c95b5db457fbbcfd70fc0303021` |
| 14 | `abbrev` | [Subgroup.commGroupTopologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupSubgroupNamespacedPublic.lean/declarations/subgroup-commgrouptopologicalclosure.md) | 140 | `declaration-track:65d9f2c66adff40ffdb44b6d9910514bcc46c86eab8672e40ecb7073e3062157` |
| 15 | `lemma` | [Subgroup.coe_topologicalClosure_bot](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupSubgroupNamespacedPublic.lean/declarations/subgroup-coe-topologicalclosure-bot.md) | 147 | `result-track:88b0da15cb75d210fcc13c4008ee3831178f3facab4b8ffec89433b8d9612134` |
| 16 | `theorem` | [Subgroup.properlyDiscontinuousSMul_of_tendsto_cofinite](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupSubgroupNamespacedPublic.lean/declarations/subgroup-properlydiscontinuoussmul-of-tendsto-cofinite.md) | 163 | `result-track:7cdb912804770d37e2d2af5ab8fc15e29c150a00a60e0cad05476c7916057ea8` |
| 17 | `theorem` | [Subgroup.properlyDiscontinuousSMul_opposite_of_tendsto_cofinite](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraGroupSubgroupNamespacedPublic.lean/declarations/subgroup-properlydiscontinuoussmul-opposite-of-tendsto-cofinite.md) | 187 | `result-track:43de7f5861458e49b110375ef8cae3d8f2abe096728cc8b29b49a3a165345e89` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dd2da008b068d1e8db6751c5a7924cd9138b110532c2d93c05c81651d5d9c04a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Subgroup/Variant48483b2fe977dea03679bd54cbb0a592f66e4f3e0c6d6fbd02de37272fe72a4f.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Subgroup/Variant48483b2fe977dea03679bd54cbb0a592f66e4f3e0c6d6fbd02de37272fe72a4f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
