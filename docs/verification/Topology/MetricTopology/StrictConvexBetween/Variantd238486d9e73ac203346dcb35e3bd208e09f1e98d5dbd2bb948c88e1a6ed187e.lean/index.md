# Verification target: GRWTSK.Topology.MetricTopology.StrictConvexBetween.Variantd238486d9e73ac203346dcb35e3bd208e09f1e98d5dbd2bb948c88e1a6ed187e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "761fe07019548317b67945db2c99996515abf65b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/StrictConvexBetween/Variantd238486d9e73ac203346dcb35e3bd208e09f1e98d5dbd2bb948c88e1a6ed187e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variantd238486d9e73ac203346dcb35e3bd208e09f1e98d5dbd2bb948c88e1a6ed187e.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variantd238486d9e73ac203346dcb35e3bd208e09f1e98d5dbd2bb948c88e1a6ed187e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `761fe07019548317b67945db2c99996515abf65b`.

Source path: `GRWTSK/Topology/MetricTopology/StrictConvexBetween/Variantd238486d9e73ac203346dcb35e3bd208e09f1e98d5dbd2bb948c88e1a6ed187e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/StrictConvexBetween/Variantd238486d9e73ac203346dcb35e3bd208e09f1e98d5dbd2bb948c88e1a6ed187e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Between` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.StrictConvexSpace` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Sbtw.dist_lt_max_dist](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variantd238486d9e73ac203346dcb35e3bd208e09f1e98d5dbd2bb948c88e1a6ed187e.lean/declarations/sbtw-dist-lt-max-dist--32fff0698f9f0f0cc4b02b21.md) | 24 | `result-track:32fff0698f9f0f0cc4b02b21c7fe1a5d4e0fda98307de1a1e14f7ebd64d9a755` |
| 2 | `theorem` | [Wbtw.dist_le_max_dist](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variantd238486d9e73ac203346dcb35e3bd208e09f1e98d5dbd2bb948c88e1a6ed187e.lean/declarations/wbtw-dist-le-max-dist--baa18e72cdce8be1a9d205ef.md) | 41 | `result-track:baa18e72cdce8be1a9d205ef3aacc468f09ae09f9c1884997243f602b5984267` |
| 3 | `theorem` | [Collinear.wbtw_of_dist_eq_of_dist_le](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variantd238486d9e73ac203346dcb35e3bd208e09f1e98d5dbd2bb948c88e1a6ed187e.lean/declarations/collinear-wbtw-of-dist-eq-of-dist-le--1b79f750fd2e032aa7a38f89.md) | 51 | `result-track:1b79f750fd2e032aa7a38f89ddd593fa7980bdcb1c9bcee3b825d35268c2511e` |
| 4 | `theorem` | [Collinear.sbtw_of_dist_eq_of_dist_lt](../../../../../mathematics/Topology/MetricTopology/StrictConvexBetween/Variantd238486d9e73ac203346dcb35e3bd208e09f1e98d5dbd2bb948c88e1a6ed187e.lean/declarations/collinear-sbtw-of-dist-eq-of-dist-lt--e769fc4dde2d1f9e0a23a565.md) | 72 | `result-track:e769fc4dde2d1f9e0a23a5656c2458945a23ad865b8c8ff3df3b5e879f6fb0f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
