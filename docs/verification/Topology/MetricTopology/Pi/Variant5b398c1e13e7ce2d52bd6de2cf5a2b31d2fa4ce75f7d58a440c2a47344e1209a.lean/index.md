# Verification target: GRWTSK.Topology.MetricTopology.Pi.Variant5b398c1e13e7ce2d52bd6de2cf5a2b31d2fa4ce75f7d58a440c2a47344e1209a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37a82f951e7eefb3834aba9c408eda57cb9e6fca",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Pi/Variant5b398c1e13e7ce2d52bd6de2cf5a2b31d2fa4ce75f7d58a440c2a47344e1209a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Pi/Variant5b398c1e13e7ce2d52bd6de2cf5a2b31d2fa4ce75f7d58a440c2a47344e1209a.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Pi/Variant5b398c1e13e7ce2d52bd6de2cf5a2b31d2fa4ce75f7d58a440c2a47344e1209a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37a82f951e7eefb3834aba9c408eda57cb9e6fca`.

Source path: `GRWTSK/Topology/MetricTopology/Pi/Variant5b398c1e13e7ce2d52bd6de2cf5a2b31d2fa4ce75f7d58a440c2a47344e1209a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Pi/Variant5b398c1e13e7ce2d52bd6de2cf5a2b31d2fa4ce75f7d58a440c2a47344e1209a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.EMetricSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Pi` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Pi/Variant5b398c1e13e7ce2d52bd6de2cf5a2b31d2fa4ce75f7d58a440c2a47344e1209a.lean/declarations/instance--06fbf31fa2e19e07840dd81f.md) | 39 | `declaration-track:06fbf31fa2e19e07840dd81ffdc59a70f52410dc51d0b39ff640d268612e5701` |
| 2 | `theorem` | [edist_pi_def](../../../../../mathematics/Topology/MetricTopology/Pi/Variant5b398c1e13e7ce2d52bd6de2cf5a2b31d2fa4ce75f7d58a440c2a47344e1209a.lean/declarations/edist-pi-def--f3ad434f8331051a54011cf0.md) | 42 | `result-track:f3ad434f8331051a54011cf06e5d2c1e2f7cc8d66ec597b875b157572ac50e2e` |
| 3 | `theorem` | [edist_le_pi_edist](../../../../../mathematics/Topology/MetricTopology/Pi/Variant5b398c1e13e7ce2d52bd6de2cf5a2b31d2fa4ce75f7d58a440c2a47344e1209a.lean/declarations/edist-le-pi-edist--df3d85f392b410b1f0f773b5.md) | 46 | `result-track:df3d85f392b410b1f0f773b5d5aca579e4fdfb37d84cfb8869afd07fdbc80f33` |
| 4 | `theorem` | [edist_pi_le_iff](../../../../../mathematics/Topology/MetricTopology/Pi/Variant5b398c1e13e7ce2d52bd6de2cf5a2b31d2fa4ce75f7d58a440c2a47344e1209a.lean/declarations/edist-pi-le-iff--ddab288840205673f534c84f.md) | 50 | `result-track:ddab288840205673f534c84fec587ffe62240c2e22fb7e0b199ff77efdc7f8ce` |
| 5 | `theorem` | [edist_pi_const_le](../../../../../mathematics/Topology/MetricTopology/Pi/Variant5b398c1e13e7ce2d52bd6de2cf5a2b31d2fa4ce75f7d58a440c2a47344e1209a.lean/declarations/edist-pi-const-le--a13c211ab84fbd0f6e645578.md) | 54 | `result-track:a13c211ab84fbd0f6e6455784caf9f09af0b28156fdfbd1111efdbf7224a6158` |
| 6 | `theorem` | [edist_pi_const](../../../../../mathematics/Topology/MetricTopology/Pi/Variant5b398c1e13e7ce2d52bd6de2cf5a2b31d2fa4ce75f7d58a440c2a47344e1209a.lean/declarations/edist-pi-const--582bcdf1b8eb9e41e24bbfa9.md) | 58 | `result-track:582bcdf1b8eb9e41e24bbfa97d4b893bcb376d2c99bfa07d3ff88027d31a8b1e` |
| 7 | `instance` | [pseudoEMetricSpacePi](../../../../../mathematics/Topology/MetricTopology/Pi/Variant5b398c1e13e7ce2d52bd6de2cf5a2b31d2fa4ce75f7d58a440c2a47344e1209a.lean/declarations/pseudoemetricspacepi--b1b3072842eb349637161844.md) | 66 | `declaration-track:b1b3072842eb349637161844150019eb59e7702a3e96a4403890d09443edb869` |
| 8 | `instance` | [emetricSpacePi](../../../../../mathematics/Topology/MetricTopology/Pi/Variant5b398c1e13e7ce2d52bd6de2cf5a2b31d2fa4ce75f7d58a440c2a47344e1209a.lean/declarations/emetricspacepi--db96b64346e1f43851585eda.md) | 94 | `declaration-track:db96b64346e1f43851585eda1e7c08e3f4f2c02f2a0c54e5cbfdadcf5f7a3479` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
