# Verification target: GRWTSK.Topology.MetricTopology.ShrinkingLemma.Varianteb54a84fa51a432de386de9b0198dcd89ac798a543329f57146b922e8a29f924

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dee16f8ed7dab77217176904667d16907730e734",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/ShrinkingLemma/Varianteb54a84fa51a432de386de9b0198dcd89ac798a543329f57146b922e8a29f924.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/ShrinkingLemma/Varianteb54a84fa51a432de386de9b0198dcd89ac798a543329f57146b922e8a29f924.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/ShrinkingLemma/Varianteb54a84fa51a432de386de9b0198dcd89ac798a543329f57146b922e8a29f924.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dee16f8ed7dab77217176904667d16907730e734`.

Source path: `GRWTSK/Topology/MetricTopology/ShrinkingLemma/Varianteb54a84fa51a432de386de9b0198dcd89ac798a543329f57146b922e8a29f924.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/ShrinkingLemma/Varianteb54a84fa51a432de386de9b0198dcd89ac798a543329f57146b922e8a29f924.lean.json)

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
| 1 | `theorem` | [exists_subset_iUnion_ball_radius_lt](../../../../../mathematics/Topology/MetricTopology/ShrinkingLemma/Varianteb54a84fa51a432de386de9b0198dcd89ac798a543329f57146b922e8a29f924.lean/declarations/exists-subset-iunion-ball-radius-lt--35e07e3dca2a2ee07f7a3ad5.md) | 41 | `result-track:35e07e3dca2a2ee07f7a3ad57036c3c1cee365ee248aba22ac438e6f179f1fc5` |
| 2 | `theorem` | [exists_iUnion_ball_eq_radius_lt](../../../../../mathematics/Topology/MetricTopology/ShrinkingLemma/Varianteb54a84fa51a432de386de9b0198dcd89ac798a543329f57146b922e8a29f924.lean/declarations/exists-iunion-ball-eq-radius-lt--b5dd4a6c3dd9fded223763d0.md) | 53 | `result-track:b5dd4a6c3dd9fded223763d0f5c45b5e4cde0e756a8915600f58a4cc4db216bf` |
| 3 | `theorem` | [exists_subset_iUnion_ball_radius_pos_lt](../../../../../mathematics/Topology/MetricTopology/ShrinkingLemma/Varianteb54a84fa51a432de386de9b0198dcd89ac798a543329f57146b922e8a29f924.lean/declarations/exists-subset-iunion-ball-radius-pos-lt--0e2b1f35d6b26b78811b3c57.md) | 62 | `result-track:0e2b1f35d6b26b78811b3c575c471f0175b1fcc7437014fadc685f5995d6e003` |
| 4 | `theorem` | [exists_iUnion_ball_eq_radius_pos_lt](../../../../../mathematics/Topology/MetricTopology/ShrinkingLemma/Varianteb54a84fa51a432de386de9b0198dcd89ac798a543329f57146b922e8a29f924.lean/declarations/exists-iunion-ball-eq-radius-pos-lt--e906ddde6d6c9d7432cac9b6.md) | 74 | `result-track:e906ddde6d6c9d7432cac9b6d4ba73fc4d287139dce584e7871029b9b4ab43ba` |
| 5 | `theorem` | [exists_locallyFinite_subset_iUnion_ball_radius_lt](../../../../../mathematics/Topology/MetricTopology/ShrinkingLemma/Varianteb54a84fa51a432de386de9b0198dcd89ac798a543329f57146b922e8a29f924.lean/declarations/exists-locallyfinite-subset-iunion-ball-radius-lt--f9aff4ac826b579f898a4586.md) | 92 | `result-track:f9aff4ac826b579f898a458637913f9c388ccb62d38ef8f51db605c3566b0569` |
| 6 | `theorem` | [exists_locallyFinite_iUnion_eq_ball_radius_lt](../../../../../mathematics/Topology/MetricTopology/ShrinkingLemma/Varianteb54a84fa51a432de386de9b0198dcd89ac798a543329f57146b922e8a29f924.lean/declarations/exists-locallyfinite-iunion-eq-ball-radius-lt--901ae565bc796ab11facb004.md) | 116 | `result-track:901ae565bc796ab11facb00401e853183a00116f16f96d11052ed2f88e4ee063` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
