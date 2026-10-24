# Verification target: GRWTSK.Topology.GeneralTopology.SubboxInduction.Variant17cb6fbdc1419885f2225c3e16892ecacb2707e48657c0fb6e343aa87f152035

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d99499ceebc8c3699fbeef6362261b6a3d32bbb",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SubboxInduction/Variant17cb6fbdc1419885f2225c3e16892ecacb2707e48657c0fb6e343aa87f152035.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant17cb6fbdc1419885f2225c3e16892ecacb2707e48657c0fb6e343aa87f152035.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant17cb6fbdc1419885f2225c3e16892ecacb2707e48657c0fb6e343aa87f152035.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d99499ceebc8c3699fbeef6362261b6a3d32bbb`.

Source path: `GRWTSK/Topology/GeneralTopology/SubboxInduction/Variant17cb6fbdc1419885f2225c3e16892ecacb2707e48657c0fb6e343aa87f152035.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SubboxInduction/Variant17cb6fbdc1419885f2225c3e16892ecacb2707e48657c0fb6e343aa87f152035.lean.json)

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
| 1 | `def` | [splitCenterBox](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant17cb6fbdc1419885f2225c3e16892ecacb2707e48657c0fb6e343aa87f152035.lean/declarations/splitcenterbox--bcba98bc8009ad02a58fb87c.md) | 57 | `declaration-track:bcba98bc8009ad02a58fb87cd905303b61930aed7b5e01c2fa7383c322b89e75` |
| 2 | `theorem` | [mem_splitCenterBox](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant17cb6fbdc1419885f2225c3e16892ecacb2707e48657c0fb6e343aa87f152035.lean/declarations/mem-splitcenterbox--60be62d6aa36f1eaf3ce7b2c.md) | 64 | `result-track:60be62d6aa36f1eaf3ce7b2c7212044474d3d8bf3053e98c98774c13fdf59c01` |
| 3 | `theorem` | [splitCenterBox_le](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant17cb6fbdc1419885f2225c3e16892ecacb2707e48657c0fb6e343aa87f152035.lean/declarations/splitcenterbox-le--21d6256df235e7639ef42623.md) | 75 | `result-track:21d6256df235e7639ef42623d9966047d17c057cffa7536dadc47677d1338f16` |
| 4 | `theorem` | [disjoint_splitCenterBox](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant17cb6fbdc1419885f2225c3e16892ecacb2707e48657c0fb6e343aa87f152035.lean/declarations/disjoint-splitcenterbox--b1695420c2c770514982135d.md) | 78 | `result-track:b1695420c2c770514982135d0176584f6a8d44ee8fd56747630d1cc725e38ec6` |
| 5 | `theorem` | [injective_splitCenterBox](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant17cb6fbdc1419885f2225c3e16892ecacb2707e48657c0fb6e343aa87f152035.lean/declarations/injective-splitcenterbox--f3e296cb3ef74682d933de17.md) | 86 | `result-track:f3e296cb3ef74682d933de170b062be28a3c54b92c5fe670c2aa8d034271e1e9` |
| 6 | `theorem` | [exists_mem_splitCenterBox](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant17cb6fbdc1419885f2225c3e16892ecacb2707e48657c0fb6e343aa87f152035.lean/declarations/exists-mem-splitcenterbox--f657a65fec273c29d2183155.md) | 90 | `result-track:f657a65fec273c29d21831553627cce218f6b9fe77a653a25fc3b6bb6c033bfb` |
| 7 | `def` | [splitCenterBoxEmb](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant17cb6fbdc1419885f2225c3e16892ecacb2707e48657c0fb6e343aa87f152035.lean/declarations/splitcenterboxemb--0aa5ad708288511e196a6f34.md) | 96 | `declaration-track:0aa5ad708288511e196a6f34df9c10c76a7c5d17ecfd9d53694b43317555f2ef` |
| 8 | `theorem` | [iUnion_coe_splitCenterBox](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant17cb6fbdc1419885f2225c3e16892ecacb2707e48657c0fb6e343aa87f152035.lean/declarations/iunion-coe-splitcenterbox--52361fb741a08e22e5c180aa.md) | 100 | `result-track:52361fb741a08e22e5c180aac6538b56671e9d6bb65385b8ecf66bd3cb262df6` |
| 9 | `theorem` | [upper_sub_lower_splitCenterBox](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant17cb6fbdc1419885f2225c3e16892ecacb2707e48657c0fb6e343aa87f152035.lean/declarations/upper-sub-lower-splitcenterbox--bd2817538036f7ccf68b77d7.md) | 105 | `result-track:bd2817538036f7ccf68b77d7bac9848a033c7215f38ee407fe10a0b21e986748` |
| 10 | `theorem` | [subbox_induction_on'](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant17cb6fbdc1419885f2225c3e16892ecacb2707e48657c0fb6e343aa87f152035.lean/declarations/subbox-induction-on--9beb35935ad118fbed7c41d2.md) | 125 | `result-track:9beb35935ad118fbed7c41d28f1dbbb08f8c5caea7d1d78f9f114a6d209e944e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
