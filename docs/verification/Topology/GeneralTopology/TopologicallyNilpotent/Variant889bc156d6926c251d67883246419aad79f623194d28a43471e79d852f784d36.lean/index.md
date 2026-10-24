# Verification target: GRWTSK.Topology.GeneralTopology.TopologicallyNilpotent.Variant889bc156d6926c251d67883246419aad79f623194d28a43471e79d852f784d36

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2cddf0e05fddaab8cfb22faca8ff245d01e3623",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TopologicallyNilpotent/Variant889bc156d6926c251d67883246419aad79f623194d28a43471e79d852f784d36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/TopologicallyNilpotent/Variant889bc156d6926c251d67883246419aad79f623194d28a43471e79d852f784d36.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/TopologicallyNilpotent/Variant889bc156d6926c251d67883246419aad79f623194d28a43471e79d852f784d36.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2cddf0e05fddaab8cfb22faca8ff245d01e3623`.

Source path: `GRWTSK/Topology/GeneralTopology/TopologicallyNilpotent/Variant889bc156d6926c251d67883246419aad79f623194d28a43471e79d852f784d36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TopologicallyNilpotent/Variant889bc156d6926c251d67883246419aad79f623194d28a43471e79d852f784d36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsTopologicallyNilpotent](../../../../../mathematics/Topology/GeneralTopology/TopologicallyNilpotent/Variant889bc156d6926c251d67883246419aad79f623194d28a43471e79d852f784d36.lean/declarations/istopologicallynilpotent--96d8ce0e111f5a2459a6ad82.md) | 54 | `declaration-track:96d8ce0e111f5a2459a6ad82c041938fa07de6b119f12a62feb43cf0a0efd3b7` |
| 2 | `theorem` | [map](../../../../../mathematics/Topology/GeneralTopology/TopologicallyNilpotent/Variant889bc156d6926c251d67883246419aad79f623194d28a43471e79d852f784d36.lean/declarations/map--47549ca4b05886b989db630e.md) | 67 | `result-track:47549ca4b05886b989db630ecd1bc334d11192af001920de37a9a64650cb6ec1` |
| 3 | `theorem` | [zero](../../../../../mathematics/Topology/GeneralTopology/TopologicallyNilpotent/Variant889bc156d6926c251d67883246419aad79f623194d28a43471e79d852f784d36.lean/declarations/zero--e13f7de61ee4748f0b0bbb02.md) | 75 | `result-track:e13f7de61ee4748f0b0bbb027b8b5b9eabedf1825591db9f140b6152560ce4a9` |
| 4 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.IsTopologicallyNilpotent.Variant3dae93da7dae4d79c7ce6c10b5369b16f0a2961c57f17c0234656f4c8f35807f.IsNilpotent.isTopologicallyNilpotent](../../../../../mathematics/Topology/GeneralTopology/TopologicallyNilpotent/Variant889bc156d6926c251d67883246419aad79f623194d28a43471e79d852f784d36.lean/declarations/root-grwtsk-topology-generaltopology-istopologicallynilpotent-variant3da--63ee7c498ff9b31bec22b624.md) | 79 | `result-track:63ee7c498ff9b31bec22b6246184e22e7ee1172cfa9ee830799423a543fbe5a4` |
| 5 | `theorem` | [exists_pow_mem_of_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/TopologicallyNilpotent/Variant889bc156d6926c251d67883246419aad79f623194d28a43471e79d852f784d36.lean/declarations/exists-pow-mem-of-mem-nhds--7e08be49153a695dafa2dbf9.md) | 86 | `result-track:7e08be49153a695dafa2dbf94395475edf256c9bd818b4cd0672ddd80fe02a67` |
| 6 | `theorem` | [mul_right_of_commute](../../../../../mathematics/Topology/GeneralTopology/TopologicallyNilpotent/Variant889bc156d6926c251d67883246419aad79f623194d28a43471e79d852f784d36.lean/declarations/mul-right-of-commute--d09e0dc22fe16e32bac6da50.md) | 99 | `result-track:d09e0dc22fe16e32bac6da50a28947f0c8ec9f534f7fc7ccf315e2adb7f85af0` |
| 7 | `theorem` | [mul_left_of_commute](../../../../../mathematics/Topology/GeneralTopology/TopologicallyNilpotent/Variant889bc156d6926c251d67883246419aad79f623194d28a43471e79d852f784d36.lean/declarations/mul-left-of-commute--c2389729c12850e0443ab609.md) | 107 | `result-track:c2389729c12850e0443ab6090674bc7731e87df5619355f1111089bd877d8883` |
| 8 | `theorem` | [add_of_commute](../../../../../mathematics/Topology/GeneralTopology/TopologicallyNilpotent/Variant889bc156d6926c251d67883246419aad79f623194d28a43471e79d852f784d36.lean/declarations/add-of-commute--249ffbb4e050a314a2927d9c.md) | 115 | `result-track:249ffbb4e050a314a2927d9cb5981dbf189a5280c11942da47a8d1413fee8c8d` |
| 9 | `theorem` | [mul_right](../../../../../mathematics/Topology/GeneralTopology/TopologicallyNilpotent/Variant889bc156d6926c251d67883246419aad79f623194d28a43471e79d852f784d36.lean/declarations/mul-right--0154c0ec0770524fbb3b11c3.md) | 133 | `result-track:0154c0ec0770524fbb3b11c334751b86cf19e9a3200e98a718c93faa6133b2a2` |
| 10 | `theorem` | [mul_left](../../../../../mathematics/Topology/GeneralTopology/TopologicallyNilpotent/Variant889bc156d6926c251d67883246419aad79f623194d28a43471e79d852f784d36.lean/declarations/mul-left--8e1a8cd3741fedd422c0deac.md) | 138 | `result-track:8e1a8cd3741fedd422c0deac6368d0c3978c7e9c2fb9e06c230b6d35271bcd49` |
| 11 | `theorem` | [add](../../../../../mathematics/Topology/GeneralTopology/TopologicallyNilpotent/Variant889bc156d6926c251d67883246419aad79f623194d28a43471e79d852f784d36.lean/declarations/add--43eeb8064b79d5fa8f9317b9.md) | 143 | `result-track:43eeb8064b79d5fa8f9317b9c9693f31a22cc244183d3d0b84ffb3eb472facd5` |
| 12 | `def` | [_root_.GRWTSK.Topology.GeneralTopology.IsTopologicallyNilpotent.Variant3dae93da7dae4d79c7ce6c10b5369b16f0a2961c57f17c0234656f4c8f35807f.topologicalNilradical](../../../../../mathematics/Topology/GeneralTopology/TopologicallyNilpotent/Variant889bc156d6926c251d67883246419aad79f623194d28a43471e79d852f784d36.lean/declarations/root-grwtsk-topology-generaltopology-istopologicallynilpotent-variant3da--7d304691d836ac9502605fbc.md) | 150 | `declaration-track:7d304691d836ac9502605fbcedfdf8d51ca12243f9cce00d1db4eab88b82647a` |
| 13 | `theorem` | [mem_topologicalNilradical_iff](../../../../../mathematics/Topology/GeneralTopology/TopologicallyNilpotent/Variant889bc156d6926c251d67883246419aad79f623194d28a43471e79d852f784d36.lean/declarations/mem-topologicalnilradical-iff--73a9e5ee28ffc53cca372c92.md) | 156 | `result-track:73a9e5ee28ffc53cca372c921be88d0c597e8cd199d47a31c0bdea66dc6b3259` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
