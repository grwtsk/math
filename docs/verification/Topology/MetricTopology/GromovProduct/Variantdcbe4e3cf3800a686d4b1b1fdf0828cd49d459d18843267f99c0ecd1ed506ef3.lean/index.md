# Verification target: GRWTSK.Topology.MetricTopology.GromovProduct.Variantdcbe4e3cf3800a686d4b1b1fdf0828cd49d459d18843267f99c0ecd1ed506ef3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ddacda0e47266937be92fdb21aa63f4929d9e520",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/GromovProduct/Variantdcbe4e3cf3800a686d4b1b1fdf0828cd49d459d18843267f99c0ecd1ed506ef3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/GromovProduct/Variantdcbe4e3cf3800a686d4b1b1fdf0828cd49d459d18843267f99c0ecd1ed506ef3.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/GromovProduct/Variantdcbe4e3cf3800a686d4b1b1fdf0828cd49d459d18843267f99c0ecd1ed506ef3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ddacda0e47266937be92fdb21aa63f4929d9e520`.

Source path: `GRWTSK/Topology/MetricTopology/GromovProduct/Variantdcbe4e3cf3800a686d4b1b1fdf0828cd49d459d18843267f99c0ecd1ed506ef3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/GromovProduct/Variantdcbe4e3cf3800a686d4b1b1fdf0828cd49d459d18843267f99c0ecd1ed506ef3.lean.json)

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
| 1 | `def` | [gromovProduct](../../../../../mathematics/Topology/MetricTopology/GromovProduct/Variantdcbe4e3cf3800a686d4b1b1fdf0828cd49d459d18843267f99c0ecd1ed506ef3.lean/declarations/gromovproduct--a32884b290c8af0470f52e5d.md) | 39 | `declaration-track:a32884b290c8af0470f52e5d5b5f1dc6c3bc71bb76e4bfd93348e04bcf0c683a` |
| 2 | `lemma` | [gromovProduct_eq](../../../../../mathematics/Topology/MetricTopology/GromovProduct/Variantdcbe4e3cf3800a686d4b1b1fdf0828cd49d459d18843267f99c0ecd1ed506ef3.lean/declarations/gromovproduct-eq--c8c454383f48df116911a03f.md) | 41 | `result-track:c8c454383f48df116911a03ffe5519c7be546ce3c55b44834c63fb0ee20e65c8` |
| 3 | `lemma` | [gromovProduct_comm](../../../../../mathematics/Topology/MetricTopology/GromovProduct/Variantdcbe4e3cf3800a686d4b1b1fdf0828cd49d459d18843267f99c0ecd1ed506ef3.lean/declarations/gromovproduct-comm--6d7ce927587489ec396c7707.md) | 43 | `result-track:6d7ce927587489ec396c770794e203422b9ac87a880992739430c464a832a78b` |
| 4 | `lemma` | [gromovProduct_nonneg](../../../../../mathematics/Topology/MetricTopology/GromovProduct/Variantdcbe4e3cf3800a686d4b1b1fdf0828cd49d459d18843267f99c0ecd1ed506ef3.lean/declarations/gromovproduct-nonneg--a5e88274dd936d969b0900fe.md) | 49 | `result-track:a5e88274dd936d969b0900fe062868df46e45220b8b18b8a18e6627eccf0427c` |
| 5 | `lemma` | [gromovProduct_le_dist_left](../../../../../mathematics/Topology/MetricTopology/GromovProduct/Variantdcbe4e3cf3800a686d4b1b1fdf0828cd49d459d18843267f99c0ecd1ed506ef3.lean/declarations/gromovproduct-le-dist-left--b937557c101a6766c6276651.md) | 52 | `result-track:b937557c101a6766c62766518e57dc4c33e1d428e714e62d7f4e18fe6804f9ed` |
| 6 | `lemma` | [gromovProduct_le_dist_right](../../../../../mathematics/Topology/MetricTopology/GromovProduct/Variantdcbe4e3cf3800a686d4b1b1fdf0828cd49d459d18843267f99c0ecd1ed506ef3.lean/declarations/gromovproduct-le-dist-right--714b33c62a28bf0124c9a8b8.md) | 55 | `result-track:714b33c62a28bf0124c9a8b8ff4e84be250bfef19540d761bdde7c066b958f34` |
| 7 | `lemma` | [gromovProduct_self_left](../../../../../mathematics/Topology/MetricTopology/GromovProduct/Variantdcbe4e3cf3800a686d4b1b1fdf0828cd49d459d18843267f99c0ecd1ed506ef3.lean/declarations/gromovproduct-self-left--a85803f8288851dabc4e6c88.md) | 59 | `result-track:a85803f8288851dabc4e6c8847b49e6654483920dc374bd765ff30b2f0e7b75b` |
| 8 | `lemma` | [gromovProduct_self_right](../../../../../mathematics/Topology/MetricTopology/GromovProduct/Variantdcbe4e3cf3800a686d4b1b1fdf0828cd49d459d18843267f99c0ecd1ed506ef3.lean/declarations/gromovproduct-self-right--dc5d61a152d4583c6b8858d7.md) | 63 | `result-track:dc5d61a152d4583c6b8858d767cf9a480a6e58d311ed656b1f47b741b7cbaf63` |
| 9 | `lemma` | [gromovProduct_self](../../../../../mathematics/Topology/MetricTopology/GromovProduct/Variantdcbe4e3cf3800a686d4b1b1fdf0828cd49d459d18843267f99c0ecd1ed506ef3.lean/declarations/gromovproduct-self--277b89b5c00333fb14ff9aa4.md) | 67 | `result-track:277b89b5c00333fb14ff9aa4bd79c925f53ab44a8b0ad39dc224682c89ac94a6` |
| 10 | `lemma` | [gromovProduct_add_gromovProduct₁₃](../../../../../mathematics/Topology/MetricTopology/GromovProduct/Variantdcbe4e3cf3800a686d4b1b1fdf0828cd49d459d18843267f99c0ecd1ed506ef3.lean/declarations/gromovproduct-add-gromovproduct--b0b36e6d46f5ea726caf3cf4.md) | 70 | `result-track:b0b36e6d46f5ea726caf3cf4b67f80a06e9be41cbdb78c7c99211e122879d56d` |
| 11 | `lemma` | [gromovProduct_add_gromovProduct₁₂](../../../../../mathematics/Topology/MetricTopology/GromovProduct/Variantdcbe4e3cf3800a686d4b1b1fdf0828cd49d459d18843267f99c0ecd1ed506ef3.lean/declarations/gromovproduct-add-gromovproduct--80fb86106d07e47f188335a6.md) | 73 | `result-track:80fb86106d07e47f188335a6afe0e50f2eb36fee2437963eca4e47cdaea9f92a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
