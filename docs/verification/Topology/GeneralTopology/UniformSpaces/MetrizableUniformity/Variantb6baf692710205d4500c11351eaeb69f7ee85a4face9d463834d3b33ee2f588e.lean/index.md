# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.MetrizableUniformity.Variantb6baf692710205d4500c11351eaeb69f7ee85a4face9d463834d3b33ee2f588e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62ad9c29d39807b27712f0f71abdc4fc7219f9dc",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/MetrizableUniformity/Variantb6baf692710205d4500c11351eaeb69f7ee85a4face9d463834d3b33ee2f588e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/MetrizableUniformity/Variantb6baf692710205d4500c11351eaeb69f7ee85a4face9d463834d3b33ee2f588e.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/MetrizableUniformity/Variantb6baf692710205d4500c11351eaeb69f7ee85a4face9d463834d3b33ee2f588e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62ad9c29d39807b27712f0f71abdc4fc7219f9dc`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/MetrizableUniformity/Variantb6baf692710205d4500c11351eaeb69f7ee85a4face9d463834d3b33ee2f588e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/MetrizableUniformity/Variantb6baf692710205d4500c11351eaeb69f7ee85a4face9d463834d3b33ee2f588e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Metrizable` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofPreNNDist](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/MetrizableUniformity/Variantb6baf692710205d4500c11351eaeb69f7ee85a4face9d463834d3b33ee2f588e.lean/declarations/ofprenndist--25bf584a6ecb5dfa46cd2415.md) | 65 | `declaration-track:25bf584a6ecb5dfa46cd24152375a89bbf02e7386c0367dab64878e62fe06f6a` |
| 2 | `theorem` | [dist_ofPreNNDist](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/MetrizableUniformity/Variantb6baf692710205d4500c11351eaeb69f7ee85a4face9d463834d3b33ee2f588e.lean/declarations/dist-ofprenndist--5c304aa77f1f79c62d0a3c70.md) | 95 | `result-track:5c304aa77f1f79c62d0a3c70ae82d673b63822951b258963dc6897ed1b71db8e` |
| 3 | `theorem` | [dist_ofPreNNDist_le](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/MetrizableUniformity/Variantb6baf692710205d4500c11351eaeb69f7ee85a4face9d463834d3b33ee2f588e.lean/declarations/dist-ofprenndist-le--59695edb52e371bc94152e06.md) | 103 | `result-track:59695edb52e371bc94152e065b119ecb34941110d5bdad6a0c80a627f1748090` |
| 4 | `theorem` | [le_two_mul_dist_ofPreNNDist](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/MetrizableUniformity/Variantb6baf692710205d4500c11351eaeb69f7ee85a4face9d463834d3b33ee2f588e.lean/declarations/le-two-mul-dist-ofprenndist--090e422b310fc9bcb23ff60f.md) | 116 | `result-track:090e422b310fc9bcb23ff60ff7d7cf8d8562487a1b86f1dea648aefc9a1f029e` |
| 5 | `theorem` | [UniformSpace.metrizable_uniformity](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/MetrizableUniformity/Variantb6baf692710205d4500c11351eaeb69f7ee85a4face9d463834d3b33ee2f588e.lean/declarations/uniformspace-metrizable-uniformity--e50d2ef8cba20e72b733e8e5.md) | 194 | `result-track:e50d2ef8cba20e72b733e8e5bf1db175e00c1ec2695c9324f7e4c1ccc72f0163` |
| 6 | `def` | [UniformSpace.pseudoMetricSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/MetrizableUniformity/Variantb6baf692710205d4500c11351eaeb69f7ee85a4face9d463834d3b33ee2f588e.lean/declarations/uniformspace-pseudometricspace--1080e3216000e9295506afa2.md) | 265 | `declaration-track:1080e3216000e9295506afa219160a02f4519e4d9a24a600e6dc5e3d50e32783` |
| 7 | `def` | [UniformSpace.metricSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/MetrizableUniformity/Variantb6baf692710205d4500c11351eaeb69f7ee85a4face9d463834d3b33ee2f588e.lean/declarations/uniformspace-metricspace--d88585a6028fad052824a3d6.md) | 272 | `declaration-track:d88585a6028fad052824a3d6bd296219b6e51be5f2fe4d81fa1c19fe5a36f515` |
| 8 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/MetrizableUniformity/Variantb6baf692710205d4500c11351eaeb69f7ee85a4face9d463834d3b33ee2f588e.lean/declarations/instance--33ccf1c52f9eda1342f94e70.md) | 278 | `declaration-track:33ccf1c52f9eda1342f94e70292788fe590a387c8ec4a68c5254dda2fba5d108` |
| 9 | `theorem` | [UniformSpace.metrizableSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/MetrizableUniformity/Variantb6baf692710205d4500c11351eaeb69f7ee85a4face9d463834d3b33ee2f588e.lean/declarations/uniformspace-metrizablespace--c8ad93c04b5d8cf9b70aaad1.md) | 286 | `result-track:c8ad93c04b5d8cf9b70aaad11b501759ad163f23f6af20930c3dc0ab10619051` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
