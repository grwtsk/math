# Verification target: GRWTSK.Topology.MetricTopology.Completion.Variant80b62fbd65b3ef9bb6d188071640bda4bd8a53005b1cd1d34a6e4479e16f393a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46fd8550d223dc731b01c1b25445ccd71665991a",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Completion/Variant80b62fbd65b3ef9bb6d188071640bda4bd8a53005b1cd1d34a6e4479e16f393a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Completion/Variant80b62fbd65b3ef9bb6d188071640bda4bd8a53005b1cd1d34a6e4479e16f393a.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Completion/Variant80b62fbd65b3ef9bb6d188071640bda4bd8a53005b1cd1d34a6e4479e16f393a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46fd8550d223dc731b01c1b25445ccd71665991a`.

Source path: `GRWTSK/Topology/MetricTopology/Completion/Variant80b62fbd65b3ef9bb6d188071640bda4bd8a53005b1cd1d34a6e4479e16f393a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Completion/Variant80b62fbd65b3ef9bb6d188071640bda4bd8a53005b1cd1d34a6e4479e16f393a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.GroupCompletion` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Real` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Algebra` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Isometry` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Completion` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Completion/Variant80b62fbd65b3ef9bb6d188071640bda4bd8a53005b1cd1d34a6e4479e16f393a.lean/declarations/instance--811394958ef281a413cb855c.md) | 45 | `declaration-track:811394958ef281a413cb855c37bb2969bc21fb501b70690fbd98bc72d65277f9` |
| 2 | `theorem` | [uniformContinuous_dist](../../../../../mathematics/Topology/MetricTopology/Completion/Variant80b62fbd65b3ef9bb6d188071640bda4bd8a53005b1cd1d34a6e4479e16f393a.lean/declarations/uniformcontinuous-dist--8553a67fc3d0a897cf2a9824.md) | 49 | `result-track:8553a67fc3d0a897cf2a982431790b01a95192864df517802cd1e60387689e51` |
| 3 | `theorem` | [continuous_dist](../../../../../mathematics/Topology/MetricTopology/Completion/Variant80b62fbd65b3ef9bb6d188071640bda4bd8a53005b1cd1d34a6e4479e16f393a.lean/declarations/continuous-dist--536afd7f53180e633048be13.md) | 54 | `result-track:536afd7f53180e633048be13460ff98cc174426e5880b0e44e2f9a63b08d2876` |
| 4 | `theorem` | [dist_eq](../../../../../mathematics/Topology/MetricTopology/Completion/Variant80b62fbd65b3ef9bb6d188071640bda4bd8a53005b1cd1d34a6e4479e16f393a.lean/declarations/dist-eq--5e25890f6f2ccf0df6bd1a3c.md) | 60 | `result-track:5e25890f6f2ccf0df6bd1a3c682d7d9a2884ef804094c97623f4610fc752966b` |
| 5 | `theorem` | [dist_self](../../../../../mathematics/Topology/MetricTopology/Completion/Variant80b62fbd65b3ef9bb6d188071640bda4bd8a53005b1cd1d34a6e4479e16f393a.lean/declarations/dist-self--2a21e11b34062581585372de.md) | 65 | `result-track:2a21e11b34062581585372de0afcc9e7e6af6fbc8b7a65f36daa3ac97913fa9a` |
| 6 | `theorem` | [dist_comm](../../../../../mathematics/Topology/MetricTopology/Completion/Variant80b62fbd65b3ef9bb6d188071640bda4bd8a53005b1cd1d34a6e4479e16f393a.lean/declarations/dist-comm--97766c33a3f48c6e0ed6cbf5.md) | 72 | `result-track:97766c33a3f48c6e0ed6cbf5e42bee41e752fbc9b943b4f4a3b78952bc3f57ef` |
| 7 | `theorem` | [dist_triangle](../../../../../mathematics/Topology/MetricTopology/Completion/Variant80b62fbd65b3ef9bb6d188071640bda4bd8a53005b1cd1d34a6e4479e16f393a.lean/declarations/dist-triangle--52227f84ccab8b60fb0d4aba.md) | 79 | `result-track:52227f84ccab8b60fb0d4abaeb7cf5974096cbc875167e8106637f4af448bf2f` |
| 8 | `theorem` | [mem_uniformity_dist](../../../../../mathematics/Topology/MetricTopology/Completion/Variant80b62fbd65b3ef9bb6d188071640bda4bd8a53005b1cd1d34a6e4479e16f393a.lean/declarations/mem-uniformity-dist--605c615a2618d7d4fa89f588.md) | 89 | `result-track:605c615a2618d7d4fa89f58869f93f33d98484a09a44e42aeaa0eab068d4fb42` |
| 9 | `theorem` | [uniformity_dist'](../../../../../mathematics/Topology/MetricTopology/Completion/Variant80b62fbd65b3ef9bb6d188071640bda4bd8a53005b1cd1d34a6e4479e16f393a.lean/declarations/uniformity-dist--70ff1b7a3ff2c252210fa463.md) | 148 | `result-track:70ff1b7a3ff2c252210fa4637c5e21ec0d31e2490a0ae2a7221d3483d99a7114` |
| 10 | `theorem` | [uniformity_dist](../../../../../mathematics/Topology/MetricTopology/Completion/Variant80b62fbd65b3ef9bb6d188071640bda4bd8a53005b1cd1d34a6e4479e16f393a.lean/declarations/uniformity-dist--884f3a38611eb729fde4bfb0.md) | 156 | `result-track:884f3a38611eb729fde4bfb07623810cea514627d6b6d7ea0b33b51916efa9e6` |
| 11 | `instance` | [instMetricSpace](../../../../../mathematics/Topology/MetricTopology/Completion/Variant80b62fbd65b3ef9bb6d188071640bda4bd8a53005b1cd1d34a6e4479e16f393a.lean/declarations/instmetricspace--6baa8a36058da14869b0e378.md) | 160 | `declaration-track:6baa8a36058da14869b0e37811d56244d53fd7cc865c83034736bce871d13b22` |
| 12 | `theorem` | [coe_isometry](../../../../../mathematics/Topology/MetricTopology/Completion/Variant80b62fbd65b3ef9bb6d188071640bda4bd8a53005b1cd1d34a6e4479e16f393a.lean/declarations/coe-isometry--22dac5ea7e4bb450f6a25836.md) | 170 | `result-track:22dac5ea7e4bb450f6a2583604f3a3de97094d3a35190eab8a933b9b59c30797` |
| 13 | `theorem` | [edist_eq](../../../../../mathematics/Topology/MetricTopology/Completion/Variant80b62fbd65b3ef9bb6d188071640bda4bd8a53005b1cd1d34a6e4479e16f393a.lean/declarations/edist-eq--7a5dae6060177363dc5283ad.md) | 174 | `result-track:7a5dae6060177363dc5283adf85768c1e013d22677fd7997091d834b10b2052b` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Completion/Variant80b62fbd65b3ef9bb6d188071640bda4bd8a53005b1cd1d34a6e4479e16f393a.lean/declarations/instance--f1de9611f853238499f4831b.md) | 177 | `declaration-track:f1de9611f853238499f4831bd6877f043f31523017f2a819220785184d98bb9d` |
| 15 | `theorem` | [LipschitzWith.completion_extension](../../../../../mathematics/Topology/MetricTopology/Completion/Variant80b62fbd65b3ef9bb6d188071640bda4bd8a53005b1cd1d34a6e4479e16f393a.lean/declarations/lipschitzwith-completion-extension--adf00940245d0fd55d31a122.md) | 202 | `result-track:adf00940245d0fd55d31a1220122898264be1c23774d0f08da7dfbf48beafdcf` |
| 16 | `theorem` | [LipschitzWith.completion_map](../../../../../mathematics/Topology/MetricTopology/Completion/Variant80b62fbd65b3ef9bb6d188071640bda4bd8a53005b1cd1d34a6e4479e16f393a.lean/declarations/lipschitzwith-completion-map--271d596101df6a3c1c48dee5.md) | 208 | `result-track:271d596101df6a3c1c48dee5a00384fe3c737467e865f9187f5db431dfe959d6` |
| 17 | `theorem` | [Isometry.completion_extension](../../../../../mathematics/Topology/MetricTopology/Completion/Variant80b62fbd65b3ef9bb6d188071640bda4bd8a53005b1cd1d34a6e4479e16f393a.lean/declarations/isometry-completion-extension--2b187b1057001be29b910171.md) | 212 | `result-track:2b187b1057001be29b910171e22be7e27b8dba591197a1dbf80d7b5924627cf8` |
| 18 | `theorem` | [Isometry.completion_map](../../../../../mathematics/Topology/MetricTopology/Completion/Variant80b62fbd65b3ef9bb6d188071640bda4bd8a53005b1cd1d34a6e4479e16f393a.lean/declarations/isometry-completion-map--0981c337627f49989249c25a.md) | 218 | `result-track:0981c337627f49989249c25a70d958a6861cb88c8e7b663eb45386b43c1efdbf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
