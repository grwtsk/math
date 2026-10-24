# Verification target: GRWTSK.Topology.MetricTopology.Equicontinuity.Variantf45d9569f8fce93cb6cf08156546d8e6548057666d8c26698eef546e3fe159e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6eb1be3e684196a8c374c8e424b6ab768ea10bad",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Equicontinuity/Variantf45d9569f8fce93cb6cf08156546d8e6548057666d8c26698eef546e3fe159e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variantf45d9569f8fce93cb6cf08156546d8e6548057666d8c26698eef546e3fe159e7.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variantf45d9569f8fce93cb6cf08156546d8e6548057666d8c26698eef546e3fe159e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6eb1be3e684196a8c374c8e424b6ab768ea10bad`.

Source path: `GRWTSK/Topology/MetricTopology/Equicontinuity/Variantf45d9569f8fce93cb6cf08156546d8e6548057666d8c26698eef546e3fe159e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Equicontinuity/Variantf45d9569f8fce93cb6cf08156546d8e6548057666d8c26698eef546e3fe159e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Equicontinuity` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [equicontinuousAt_iff_right](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variantf45d9569f8fce93cb6cf08156546d8e6548057666d8c26698eef546e3fe159e7.lean/declarations/equicontinuousat-iff-right--59a17f5bdffa81174f2a5c27.md) | 45 | `result-track:59a17f5bdffa81174f2a5c27de68d1b38dc7fcc2e07c838741caf4e1adf2021e` |
| 2 | `theorem` | [equicontinuousAt_iff](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variantf45d9569f8fce93cb6cf08156546d8e6548057666d8c26698eef546e3fe159e7.lean/declarations/equicontinuousat-iff--f3cb04f7e5db30bf0730b50c.md) | 51 | `result-track:f3cb04f7e5db30bf0730b50c6454acbc7221be91dd02eb6c1a5fd112d0bade6d` |
| 3 | `theorem` | [equicontinuousAt_iff_pair](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variantf45d9569f8fce93cb6cf08156546d8e6548057666d8c26698eef546e3fe159e7.lean/declarations/equicontinuousat-iff-pair--cc817278be42313351aff230.md) | 58 | `result-track:cc817278be42313351aff2300f19991c3b93f88a717acee1a9578042b0aa601d` |
| 4 | `theorem` | [uniformEquicontinuous_iff_right](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variantf45d9569f8fce93cb6cf08156546d8e6548057666d8c26698eef546e3fe159e7.lean/declarations/uniformequicontinuous-iff-right--3fbf6cf67dd594ee87a274cf.md) | 74 | `result-track:3fbf6cf67dd594ee87a274cfeb93f094a97ac993422a119ee320f115abdd1292` |
| 5 | `theorem` | [uniformEquicontinuous_iff](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variantf45d9569f8fce93cb6cf08156546d8e6548057666d8c26698eef546e3fe159e7.lean/declarations/uniformequicontinuous-iff--d5b627f5a6ec3831ff1e682d.md) | 81 | `result-track:d5b627f5a6ec3831ff1e682db50d58c29a68024bcce1a5aeb886c54ad4080344` |
| 6 | `theorem` | [equicontinuousAt_of_continuity_modulus](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variantf45d9569f8fce93cb6cf08156546d8e6548057666d8c26698eef546e3fe159e7.lean/declarations/equicontinuousat-of-continuity-modulus--e6fd28ca39929f2f54b71fae.md) | 90 | `result-track:e6fd28ca39929f2f54b71faecd5a1f3760afad898bf992f951eb856e209dd8c5` |
| 7 | `theorem` | [uniformEquicontinuous_of_continuity_modulus](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variantf45d9569f8fce93cb6cf08156546d8e6548057666d8c26698eef546e3fe159e7.lean/declarations/uniformequicontinuous-of-continuity-modulus--ec786a3b132c539f3505c05b.md) | 103 | `result-track:ec786a3b132c539f3505c05ba3e411d3252486e5ff334e0b4acec693e866789d` |
| 8 | `theorem` | [equicontinuous_of_continuity_modulus](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variantf45d9569f8fce93cb6cf08156546d8e6548057666d8c26698eef546e3fe159e7.lean/declarations/equicontinuous-of-continuity-modulus--25a46665f68b31a5539e97dc.md) | 119 | `result-track:25a46665f68b31a5539e97dc03abdc7b2ee260d75a741cd60f3b0520e8b91284` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
