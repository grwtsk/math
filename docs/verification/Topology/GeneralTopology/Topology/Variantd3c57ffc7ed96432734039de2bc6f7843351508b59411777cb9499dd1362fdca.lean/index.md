# Verification target: GRWTSK.Topology.GeneralTopology.Topology.Variantd3c57ffc7ed96432734039de2bc6f7843351508b59411777cb9499dd1362fdca

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20c19259dffce930af22380cc21f80205920b68c",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Topology/Variantd3c57ffc7ed96432734039de2bc6f7843351508b59411777cb9499dd1362fdca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantd3c57ffc7ed96432734039de2bc6f7843351508b59411777cb9499dd1362fdca.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantd3c57ffc7ed96432734039de2bc6f7843351508b59411777cb9499dd1362fdca.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20c19259dffce930af22380cc21f80205920b68c`.

Source path: `GRWTSK/Topology/GeneralTopology/Topology/Variantd3c57ffc7ed96432734039de2bc6f7843351508b59411777cb9499dd1362fdca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Topology/Variantd3c57ffc7ed96432734039de2bc6f7843351508b59411777cb9499dd1362fdca.lean.json)

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
| 1 | `abbrev` | [topologicalSpaceInduced](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantd3c57ffc7ed96432734039de2bc6f7843351508b59411777cb9499dd1362fdca.lean/declarations/topologicalspaceinduced--3aa2c0ad6b48dc39c2d7dbaa.md) | 34 | `declaration-track:3aa2c0ad6b48dc39c2d7dbaac19771194fbf3daee1c6f9aebcd50aa9adf91358` |
| 2 | `lemma` | [continuous_iff](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantd3c57ffc7ed96432734039de2bc6f7843351508b59411777cb9499dd1362fdca.lean/declarations/continuous-iff--9825dd99ec749c2eb10514f6.md) | 41 | `result-track:9825dd99ec749c2eb10514f6fdf20e046a1c9d1b855725bbd2c48d18823fa811` |
| 3 | `lemma` | [continuous_weights_apply](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantd3c57ffc7ed96432734039de2bc6f7843351508b59411777cb9499dd1362fdca.lean/declarations/continuous-weights-apply--76e5fa88cbb0fb081a86f691.md) | 47 | `result-track:76e5fa88cbb0fb081a86f691a1140674914c17fe8b9402ab2ef36e9f7dba0e62` |
| 4 | `lemma` | [continuous_map_weights_apply](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantd3c57ffc7ed96432734039de2bc6f7843351508b59411777cb9499dd1362fdca.lean/declarations/continuous-map-weights-apply--e47bb8b1760fa2946634f64b.md) | 53 | `result-track:e47bb8b1760fa2946634f64b9e2e32ef4fe56c6008aa5b39921da54af31566f5` |
| 5 | `lemma` | [continuous_map](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantd3c57ffc7ed96432734039de2bc6f7843351508b59411777cb9499dd1362fdca.lean/declarations/continuous-map--2eeb28cbe151d3d5bc7bff81.md) | 70 | `result-track:2eeb28cbe151d3d5bc7bff816e69cb6e2e788deb706cb2a2090dde977d031794` |
| 6 | `instance` | [topologicalSpace](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantd3c57ffc7ed96432734039de2bc6f7843351508b59411777cb9499dd1362fdca.lean/declarations/topologicalspace--ff4f4b4c461ffa57ae470ab0.md) | 89 | `declaration-track:ff4f4b4c461ffa57ae470ab03e3bc9f147ca92233bcb4e2220819fbbabdb6690` |
| 7 | `lemma` | [topologicalSpace_eq](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantd3c57ffc7ed96432734039de2bc6f7843351508b59411777cb9499dd1362fdca.lean/declarations/topologicalspace-eq--791dee2aa3ca523bbc890c71.md) | 93 | `result-track:791dee2aa3ca523bbc890c7184fb19c58d31fc1bd9e3a6c1299586bd889ae31c` |
| 8 | `lemma` | [continuous_iff](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantd3c57ffc7ed96432734039de2bc6f7843351508b59411777cb9499dd1362fdca.lean/declarations/continuous-iff--453fa042739723905df064b3.md) | 105 | `result-track:453fa042739723905df064b37b585fb904f9fd33d6afa4bd42721151a25ac05e` |
| 9 | `lemma` | [continuous_map](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantd3c57ffc7ed96432734039de2bc6f7843351508b59411777cb9499dd1362fdca.lean/declarations/continuous-map--24508b0d3cf3c57d6a88313d.md) | 118 | `result-track:24508b0d3cf3c57d6a88313dd1b1c4a6ac5b70024ce8cbadc5e60a2caaecb5dd` |
| 10 | `lemma` | [continuous_iff'](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantd3c57ffc7ed96432734039de2bc6f7843351508b59411777cb9499dd1362fdca.lean/declarations/continuous-iff--c0059d49a65a866243010006.md) | 142 | `result-track:c0059d49a65a866243010006e489d1a49c8b9464e0f34c30532ab4620e0522c3` |
| 11 | `lemma` | [continuous_weights_apply](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantd3c57ffc7ed96432734039de2bc6f7843351508b59411777cb9499dd1362fdca.lean/declarations/continuous-weights-apply--7eda06ec3c3661db95c39416.md) | 153 | `result-track:7eda06ec3c3661db95c39416697f0bc6aad62fda16022c9d8415d7da0022d772` |
| 12 | `lemma` | [isEmbedding_toFun_comp_weights](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantd3c57ffc7ed96432734039de2bc6f7843351508b59411777cb9499dd1362fdca.lean/declarations/isembedding-tofun-comp-weights--cc0409796903244c88a5c301.md) | 160 | `result-track:cc0409796903244c88a5c3011a6aaabc8ff9b304d2c62f4f83769337d2fc19e7` |
| 13 | `lemma` | [isClosedEmbedding_toFun_comp_weights](../../../../../mathematics/Topology/GeneralTopology/Topology/Variantd3c57ffc7ed96432734039de2bc6f7843351508b59411777cb9499dd1362fdca.lean/declarations/isclosedembedding-tofun-comp-weights--e21e37009c5f75283f0a3b32.md) | 165 | `result-track:e21e37009c5f75283f0a3b3277f2b492ec22b3af1e7a81cd537a7e6b39912016` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
