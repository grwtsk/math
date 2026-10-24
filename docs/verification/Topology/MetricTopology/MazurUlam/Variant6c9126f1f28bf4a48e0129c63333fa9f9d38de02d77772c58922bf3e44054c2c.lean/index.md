# Verification target: GRWTSK.Topology.MetricTopology.MazurUlam.Variant6c9126f1f28bf4a48e0129c63333fa9f9d38de02d77772c58922bf3e44054c2c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d79cf5246f5d2091d0844383b98d84ac5fa68c69",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/MazurUlam/Variant6c9126f1f28bf4a48e0129c63333fa9f9d38de02d77772c58922bf3e44054c2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/MazurUlam/Variant6c9126f1f28bf4a48e0129c63333fa9f9d38de02d77772c58922bf3e44054c2c.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/MazurUlam/Variant6c9126f1f28bf4a48e0129c63333fa9f9d38de02d77772c58922bf3e44054c2c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d79cf5246f5d2091d0844383b98d84ac5fa68c69`.

Source path: `GRWTSK/Topology/MetricTopology/MazurUlam/Variant6c9126f1f28bf4a48e0129c63333fa9f9d38de02d77772c58922bf3e44054c2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/MazurUlam/Variant6c9126f1f28bf4a48e0129c63333fa9f9d38de02d77772c58922bf3e44054c2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Instances.RealVectorSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Affine.Isometry` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [midpoint_fixed](../../../../../mathematics/Topology/MetricTopology/MazurUlam/Variant6c9126f1f28bf4a48e0129c63333fa9f9d38de02d77772c58922bf3e44054c2c.lean/declarations/midpoint-fixed--22290bdbb60ee67f9b2fbbc8.md) | 51 | `result-track:22290bdbb60ee67f9b2fbbc80072014df06fd3f060d3c79e51d692bdca67a905` |
| 2 | `theorem` | [map_midpoint](../../../../../mathematics/Topology/MetricTopology/MazurUlam/Variant6c9126f1f28bf4a48e0129c63333fa9f9d38de02d77772c58922bf3e44054c2c.lean/declarations/map-midpoint--ce33103daefb73ffaaea0bd1.md) | 92 | `result-track:ce33103daefb73ffaaea0bd141bf2bc18c18aa7be648b3a50b545a4b34be322c` |
| 3 | `def` | [toRealLinearIsometryEquivOfMapZero](../../../../../mathematics/Topology/MetricTopology/MazurUlam/Variant6c9126f1f28bf4a48e0129c63333fa9f9d38de02d77772c58922bf3e44054c2c.lean/declarations/toreallinearisometryequivofmapzero--7ab6f73d76fc4fc652ea52dc.md) | 111 | `declaration-track:7ab6f73d76fc4fc652ea52dc57fb7910bf3af16dcbc0b06b28838ece756d19b2` |
| 4 | `theorem` | [coe_toRealLinearIsometryEquivOfMapZero](../../../../../mathematics/Topology/MetricTopology/MazurUlam/Variant6c9126f1f28bf4a48e0129c63333fa9f9d38de02d77772c58922bf3e44054c2c.lean/declarations/coe-toreallinearisometryequivofmapzero--162e0baa4938ab6c24ae828b.md) | 116 | `result-track:162e0baa4938ab6c24ae828b2b187cce51d83829aa2ea4bb2b3f0a92eb92cb78` |
| 5 | `theorem` | [coe_toRealLinearIsometryEquivOfMapZero_symm](../../../../../mathematics/Topology/MetricTopology/MazurUlam/Variant6c9126f1f28bf4a48e0129c63333fa9f9d38de02d77772c58922bf3e44054c2c.lean/declarations/coe-toreallinearisometryequivofmapzero-symm--a89bd1a6473ad41937ba8035.md) | 121 | `result-track:a89bd1a6473ad41937ba8035332ca5dca3f4aaf3471a032ad6ffabd7ee904740` |
| 6 | `def` | [toRealLinearIsometryEquiv](../../../../../mathematics/Topology/MetricTopology/MazurUlam/Variant6c9126f1f28bf4a48e0129c63333fa9f9d38de02d77772c58922bf3e44054c2c.lean/declarations/toreallinearisometryequiv--61d7d46470df9d8736505556.md) | 127 | `declaration-track:61d7d46470df9d873650555684ee189f262e3d12446cfe7c6ff9bbed1d7dfdb0` |
| 7 | `theorem` | [toRealLinearIsometryEquiv_apply](../../../../../mathematics/Topology/MetricTopology/MazurUlam/Variant6c9126f1f28bf4a48e0129c63333fa9f9d38de02d77772c58922bf3e44054c2c.lean/declarations/toreallinearisometryequiv-apply--64fd5cc613b0ae3200145309.md) | 132 | `result-track:64fd5cc613b0ae3200145309110bdab3d9e4f5a9a3ca816f8652e449c556ac65` |
| 8 | `theorem` | [toRealLinearIsometryEquiv_symm_apply](../../../../../mathematics/Topology/MetricTopology/MazurUlam/Variant6c9126f1f28bf4a48e0129c63333fa9f9d38de02d77772c58922bf3e44054c2c.lean/declarations/toreallinearisometryequiv-symm-apply--bced307dbbd0e1223d10224f.md) | 137 | `result-track:bced307dbbd0e1223d10224f4dcef080e85042073d35ede04c3da868a3ad35b1` |
| 9 | `def` | [toRealAffineIsometryEquiv](../../../../../mathematics/Topology/MetricTopology/MazurUlam/Variant6c9126f1f28bf4a48e0129c63333fa9f9d38de02d77772c58922bf3e44054c2c.lean/declarations/torealaffineisometryequiv--f34616c9e9b5b927c1f93ba2.md) | 143 | `declaration-track:f34616c9e9b5b927c1f93ba2d11618bce7d21514ffec38790f40331bf06281fe` |
| 10 | `theorem` | [coeFn_toRealAffineIsometryEquiv](../../../../../mathematics/Topology/MetricTopology/MazurUlam/Variant6c9126f1f28bf4a48e0129c63333fa9f9d38de02d77772c58922bf3e44054c2c.lean/declarations/coefn-torealaffineisometryequiv--88ff84c7408e9c4c2f343755.md) | 150 | `result-track:88ff84c7408e9c4c2f343755b5da4f748a02b5768a2e985175817540f7904330` |
| 11 | `theorem` | [coe_toRealAffineIsometryEquiv](../../../../../mathematics/Topology/MetricTopology/MazurUlam/Variant6c9126f1f28bf4a48e0129c63333fa9f9d38de02d77772c58922bf3e44054c2c.lean/declarations/coe-torealaffineisometryequiv--cd116e0d839c38b0a54e4bcb.md) | 154 | `result-track:cd116e0d839c38b0a54e4bcb86fd6d993e7338d1fe9803498b2cbda8b227caa6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
