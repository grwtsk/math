# Verification target: GRWTSK.Topology.GeneralTopology.SubboxInduction.Variant6089e087ac779da3034823e7926f9df9108a74ac07a29a7ce05b97bd32cfbf1b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd51ef5d552d25eb8cbe81b7988084ffca96986f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SubboxInduction/Variant6089e087ac779da3034823e7926f9df9108a74ac07a29a7ce05b97bd32cfbf1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant6089e087ac779da3034823e7926f9df9108a74ac07a29a7ce05b97bd32cfbf1b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant6089e087ac779da3034823e7926f9df9108a74ac07a29a7ce05b97bd32cfbf1b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd51ef5d552d25eb8cbe81b7988084ffca96986f`.

Source path: `GRWTSK/Topology/GeneralTopology/SubboxInduction/Variant6089e087ac779da3034823e7926f9df9108a74ac07a29a7ce05b97bd32cfbf1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SubboxInduction/Variant6089e087ac779da3034823e7926f9df9108a74ac07a29a7ce05b97bd32cfbf1b.lean.json)

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
| 1 | `def` | [splitCenterBox](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant6089e087ac779da3034823e7926f9df9108a74ac07a29a7ce05b97bd32cfbf1b.lean/declarations/splitcenterbox--4c056720b8b0f8234d65d484.md) | 49 | `declaration-track:4c056720b8b0f8234d65d48473be86403ee2e0e9229b94c6d7fbf43bc0d08711` |
| 2 | `theorem` | [mem_splitCenterBox](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant6089e087ac779da3034823e7926f9df9108a74ac07a29a7ce05b97bd32cfbf1b.lean/declarations/mem-splitcenterbox--27ea7c42bae3fbc49a4f6cb5.md) | 56 | `result-track:27ea7c42bae3fbc49a4f6cb50c7ee453f59937ba2f84272a62687b4ea58a993c` |
| 3 | `theorem` | [splitCenterBox_le](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant6089e087ac779da3034823e7926f9df9108a74ac07a29a7ce05b97bd32cfbf1b.lean/declarations/splitcenterbox-le--371b1d8920c2b0298b7fc6da.md) | 67 | `result-track:371b1d8920c2b0298b7fc6da2a4031a9192433860e21293e04f980a0b8b092d6` |
| 4 | `theorem` | [disjoint_splitCenterBox](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant6089e087ac779da3034823e7926f9df9108a74ac07a29a7ce05b97bd32cfbf1b.lean/declarations/disjoint-splitcenterbox--75c7ac52c1a5a30c500f4f1d.md) | 70 | `result-track:75c7ac52c1a5a30c500f4f1d026dca765a5523cd0fdfe3494f278c533a5d90dd` |
| 5 | `theorem` | [injective_splitCenterBox](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant6089e087ac779da3034823e7926f9df9108a74ac07a29a7ce05b97bd32cfbf1b.lean/declarations/injective-splitcenterbox--6b7cac932957f82e6761d5b7.md) | 78 | `result-track:6b7cac932957f82e6761d5b70eed2713f7225a3690bb6195e25d45ddbd21d253` |
| 6 | `theorem` | [exists_mem_splitCenterBox](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant6089e087ac779da3034823e7926f9df9108a74ac07a29a7ce05b97bd32cfbf1b.lean/declarations/exists-mem-splitcenterbox--25894758392895b76621696f.md) | 82 | `result-track:25894758392895b76621696fc3cf5de333425c7ebc3449e0e03121229bda0d29` |
| 7 | `def` | [splitCenterBoxEmb](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant6089e087ac779da3034823e7926f9df9108a74ac07a29a7ce05b97bd32cfbf1b.lean/declarations/splitcenterboxemb--55d8e7965d6cac932df2cea7.md) | 88 | `declaration-track:55d8e7965d6cac932df2cea76f7d3afad0493837a90298b1dc7a385ec358e270` |
| 8 | `theorem` | [iUnion_coe_splitCenterBox](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant6089e087ac779da3034823e7926f9df9108a74ac07a29a7ce05b97bd32cfbf1b.lean/declarations/iunion-coe-splitcenterbox--bc324184def13ca262324069.md) | 92 | `result-track:bc324184def13ca2623240695ccd9651b4779035205295c078d0c58aa4a68171` |
| 9 | `theorem` | [upper_sub_lower_splitCenterBox](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant6089e087ac779da3034823e7926f9df9108a74ac07a29a7ce05b97bd32cfbf1b.lean/declarations/upper-sub-lower-splitcenterbox--fa21441d736bfe2948f7d740.md) | 97 | `result-track:fa21441d736bfe2948f7d740beed6def8d7d77e20f7f29dff8ac4f2c0454785d` |
| 10 | `theorem` | [subbox_induction_on'](../../../../../mathematics/Topology/GeneralTopology/SubboxInduction/Variant6089e087ac779da3034823e7926f9df9108a74ac07a29a7ce05b97bd32cfbf1b.lean/declarations/subbox-induction-on--b3a49c6b7f50384294c326b2.md) | 117 | `result-track:b3a49c6b7f50384294c326b21f98693edbaf713bb864d34d77a40290ab98e723` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
