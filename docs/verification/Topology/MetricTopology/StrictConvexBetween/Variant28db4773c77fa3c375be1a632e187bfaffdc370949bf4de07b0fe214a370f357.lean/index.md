# Verification target: GRWTSK.Topology.MetricTopology.StrictConvexBetween.Variant28db4773c77fa3c375be1a632e187bfaffdc370949bf4de07b0fe214a370f357

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e03dc2e463bc31147d9792cf9629e39e52e33c8b",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/StrictConvexBetween/Variant28db4773c77fa3c375be1a632e187bfaffdc370949bf4de07b0fe214a370f357.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variant28db4773c77fa3c375be1a632e187bfaffdc370949bf4de07b0fe214a370f357.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variant28db4773c77fa3c375be1a632e187bfaffdc370949bf4de07b0fe214a370f357.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e03dc2e463bc31147d9792cf9629e39e52e33c8b`.

Source path: `GRWTSK/Topology/MetricTopology/StrictConvexBetween/Variant28db4773c77fa3c375be1a632e187bfaffdc370949bf4de07b0fe214a370f357.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/StrictConvexBetween/Variant28db4773c77fa3c375be1a632e187bfaffdc370949bf4de07b0fe214a370f357.lean.json)

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
| 1 | `theorem` | [Sbtw.dist_lt_max_dist](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variant28db4773c77fa3c375be1a632e187bfaffdc370949bf4de07b0fe214a370f357.lean/declarations/sbtw-dist-lt-max-dist--bb73b7f7b2f9f84f5d96031c.md) | 39 | `result-track:bb73b7f7b2f9f84f5d96031c1784a9787fbdc7dc71210176dad9d7d3c02500fd` |
| 2 | `theorem` | [Wbtw.dist_le_max_dist](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variant28db4773c77fa3c375be1a632e187bfaffdc370949bf4de07b0fe214a370f357.lean/declarations/wbtw-dist-le-max-dist--a393bb0f2cf3cc7424ba48d5.md) | 55 | `result-track:a393bb0f2cf3cc7424ba48d50b29ecaa2378658cc90ed07288fb4c31ab17b733` |
| 3 | `theorem` | [Collinear.wbtw_of_dist_eq_of_dist_le](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variant28db4773c77fa3c375be1a632e187bfaffdc370949bf4de07b0fe214a370f357.lean/declarations/collinear-wbtw-of-dist-eq-of-dist-le--e3ab8e6909122762669bf227.md) | 64 | `result-track:e3ab8e6909122762669bf2275108cac98edb7828b03f7f520e02319d2b949d19` |
| 4 | `theorem` | [Collinear.sbtw_of_dist_eq_of_dist_lt](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variant28db4773c77fa3c375be1a632e187bfaffdc370949bf4de07b0fe214a370f357.lean/declarations/collinear-sbtw-of-dist-eq-of-dist-lt--0b8612208cef8aa183eb7ce0.md) | 84 | `result-track:0b8612208cef8aa183eb7ce0a1dee015d6464bdf0f1b869460f64f9fef1f378b` |
| 5 | `lemma` | [dist_add_dist_eq_iff](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variant28db4773c77fa3c375be1a632e187bfaffdc370949bf4de07b0fe214a370f357.lean/declarations/dist-add-dist-eq-iff--a98db968f95c31051cd35ba9.md) | 100 | `result-track:a98db968f95c31051cd35ba9fed300da5d5a772f20df87ad6b4671e7ce1ea9b0` |
| 6 | `theorem` | [dist_lt_dist_add_dist_iff](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variant28db4773c77fa3c375be1a632e187bfaffdc370949bf4de07b0fe214a370f357.lean/declarations/dist-lt-dist-add-dist-iff--ca8326a4ee79dfbf7815dab0.md) | 111 | `result-track:ca8326a4ee79dfbf7815dab0668525da66feccb23c15975008a39d3e24329915` |
| 7 | `lemma` | [eq_lineMap_of_dist_eq_mul_of_dist_eq_mul](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variant28db4773c77fa3c375be1a632e187bfaffdc370949bf4de07b0fe214a370f357.lean/declarations/eq-linemap-of-dist-eq-mul-of-dist-eq-mul--b56a99aad069ed988159f58b.md) | 121 | `result-track:b56a99aad069ed988159f58b436323256eb97cf25acd459e742f38a16704bc83` |
| 8 | `lemma` | [eq_midpoint_of_dist_eq_half](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variant28db4773c77fa3c375be1a632e187bfaffdc370949bf4de07b0fe214a370f357.lean/declarations/eq-midpoint-of-dist-eq-half--be06068f591d85b9159c6e68.md) | 138 | `result-track:be06068f591d85b9159c6e68ccfb9e8b127f8c0d1a183c33b44cecdefc92b141` |
| 9 | `def` | [affineIsometryOfStrictConvexSpace](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variant28db4773c77fa3c375be1a632e187bfaffdc370949bf4de07b0fe214a370f357.lean/declarations/affineisometryofstrictconvexspace--1868b80e16cbc386210544fd.md) | 149 | `declaration-track:1868b80e16cbc386210544fd408e1f648877f91a4c88611f3d446c108b54846d` |
| 10 | `lemma` | [coe_affineIsometryOfStrictConvexSpace](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variant28db4773c77fa3c375be1a632e187bfaffdc370949bf4de07b0fe214a370f357.lean/declarations/coe-affineisometryofstrictconvexspace--6b7d0e1ebb77be2b4c36a3e6.md) | 160 | `result-track:6b7d0e1ebb77be2b4c36a3e6708ad72aef4e30b48b3fd95d3e00a3bac4659275` |
| 11 | `lemma` | [affineIsometryOfStrictConvexSpace_apply](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variant28db4773c77fa3c375be1a632e187bfaffdc370949bf4de07b0fe214a370f357.lean/declarations/affineisometryofstrictconvexspace-apply--d5c0d6c7bd77aa4f75643bc4.md) | 163 | `result-track:d5c0d6c7bd77aa4f75643bc465d3b12db5622a875e69978cfdba71889751829b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
