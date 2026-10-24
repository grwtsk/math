# Verification target: GRWTSK.Topology.GeneralTopology.Visible.Variant5587c90c834107c6ee56e0541b8c76550a01bf134b4c1e60e2e7753263eba46d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d475f297a2126b3e48a4bd14aa076a12e6906bf",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Visible/Variant5587c90c834107c6ee56e0541b8c76550a01bf134b4c1e60e2e7753263eba46d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Visible/Variant5587c90c834107c6ee56e0541b8c76550a01bf134b4c1e60e2e7753263eba46d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Visible/Variant5587c90c834107c6ee56e0541b8c76550a01bf134b4c1e60e2e7753263eba46d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d475f297a2126b3e48a4bd14aa076a12e6906bf`.

Source path: `GRWTSK/Topology/GeneralTopology/Visible/Variant5587c90c834107c6ee56e0541b8c76550a01bf134b4c1e60e2e7753263eba46d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Visible/Variant5587c90c834107c6ee56e0541b8c76550a01bf134b4c1e60e2e7753263eba46d.lean.json)

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
| 1 | `def` | [IsVisible](../../../../../mathematics/Topology/GeneralTopology/Visible/Variant5587c90c834107c6ee56e0541b8c76550a01bf134b4c1e60e2e7753263eba46d.lean/declarations/isvisible--aa573e66ade06a56dfd39b2c.md) | 46 | `declaration-track:aa573e66ade06a56dfd39b2ce1b7cae69b62a4cfc99c7e1682ba7e94ee0bef60` |
| 2 | `lemma` | [IsVisible.rfl](../../../../../mathematics/Topology/GeneralTopology/Visible/Variant5587c90c834107c6ee56e0541b8c76550a01bf134b4c1e60e2e7753263eba46d.lean/declarations/isvisible-rfl--def12e5991fe11e75ae377ad.md) | 49 | `result-track:def12e5991fe11e75ae377ad4e76f7c9c301e1b2461e722594113346cd02d2dd` |
| 3 | `lemma` | [isVisible_comm](../../../../../mathematics/Topology/GeneralTopology/Visible/Variant5587c90c834107c6ee56e0541b8c76550a01bf134b4c1e60e2e7753263eba46d.lean/declarations/isvisible-comm--f75b124fecfbeaeaaf4e2d21.md) | 51 | `result-track:f75b124fecfbeaeaaf4e2d21c7feb48bea0bbe540c8b5a709b0380072a420580` |
| 4 | `lemma` | [IsVisible.mono](../../../../../mathematics/Topology/GeneralTopology/Visible/Variant5587c90c834107c6ee56e0541b8c76550a01bf134b4c1e60e2e7753263eba46d.lean/declarations/isvisible-mono--b33678f0735be66234a5442f.md) | 57 | `result-track:b33678f0735be66234a5442f0c3048379cfdb665c3106a0af4581f79865b3888` |
| 5 | `lemma` | [isVisible_iff_lineMap](../../../../../mathematics/Topology/GeneralTopology/Visible/Variant5587c90c834107c6ee56e0541b8c76550a01bf134b4c1e60e2e7753263eba46d.lean/declarations/isvisible-iff-linemap--f532e9c092d57bac27fc5cb5.md) | 60 | `result-track:f532e9c092d57bac27fc5cb5c015c76af4ea90b00f49ef67160a53b276ac27b7` |
| 6 | `lemma` | [IsVisible.of_convexHull_of_pos](../../../../../mathematics/Topology/GeneralTopology/Visible/Variant5587c90c834107c6ee56e0541b8c76550a01bf134b4c1e60e2e7753263eba46d.lean/declarations/isvisible-of-convexhull-of-pos--e035ec606d0012309bd43163.md) | 75 | `result-track:e035ec606d0012309bd43163eb6ddd188ea9d21d9d5a6dbda4388cd1e44741bb` |
| 7 | `lemma` | [IsVisible.eq_of_mem_interior](../../../../../mathematics/Topology/GeneralTopology/Visible/Variant5587c90c834107c6ee56e0541b8c76550a01bf134b4c1e60e2e7753263eba46d.lean/declarations/isvisible-eq-of-mem-interior--6902788236ad2f8f5f5e499e.md) | 123 | `result-track:6902788236ad2f8f5f5e499e5cb04611368cf19199129e6c232bddde896612be` |
| 8 | `lemma` | [IsOpen.eq_of_isVisible_of_left_mem](../../../../../mathematics/Topology/GeneralTopology/Visible/Variant5587c90c834107c6ee56e0541b8c76550a01bf134b4c1e60e2e7753263eba46d.lean/declarations/isopen-eq-of-isvisible-of-left-mem--60d4aac74b1b5f46f02063b8.md) | 133 | `result-track:60d4aac74b1b5f46f02063b8016a6419ec4f99f97a73de560ec17a03e478514d` |
| 9 | `lemma` | [IsVisible.mem_convexHull_isVisible](../../../../../mathematics/Topology/GeneralTopology/Visible/Variant5587c90c834107c6ee56e0541b8c76550a01bf134b4c1e60e2e7753263eba46d.lean/declarations/isvisible-mem-convexhull-isvisible--d40e7a9d6dd9566820ea1fce.md) | 146 | `result-track:d40e7a9d6dd9566820ea1fce21a90d8332f6c66f5ac720818f3de4cf87b56885` |
| 10 | `lemma` | [IsClosed.exists_wbtw_isVisible](../../../../../mathematics/Topology/GeneralTopology/Visible/Variant5587c90c834107c6ee56e0541b8c76550a01bf134b4c1e60e2e7753263eba46d.lean/declarations/isclosed-exists-wbtw-isvisible--ee8335a644fbaef3cfc8c153.md) | 160 | `result-track:ee8335a644fbaef3cfc8c15305096364bd3cec4915af1e1aea7aff3761a679a7` |
| 11 | `lemma` | [IsClosed.convexHull_subset_affineSpan_isVisible](../../../../../mathematics/Topology/GeneralTopology/Visible/Variant5587c90c834107c6ee56e0541b8c76550a01bf134b4c1e60e2e7753263eba46d.lean/declarations/isclosed-convexhull-subset-affinespan-isvisible--91cd4b4135c8327763ba4314.md) | 180 | `result-track:91cd4b4135c8327763ba4314c6c90bbdea40da11a3e1f6e66ef7f13183461238` |
| 12 | `lemma` | [rank_le_card_isVisible](../../../../../mathematics/Topology/GeneralTopology/Visible/Variant5587c90c834107c6ee56e0541b8c76550a01bf134b4c1e60e2e7753263eba46d.lean/declarations/rank-le-card-isvisible--e6b6039d432d4c67f6d34f32.md) | 193 | `result-track:e6b6039d432d4c67f6d34f327315539665bfcd6d44d37a7172cde3b5b9355812` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
