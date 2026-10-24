# Verification target: GRWTSK.Topology.MetricTopology.Irrational.Variant937c5f73b39a2f8cfef28b2baa18b27b97dc2f900e12eb448d42cf9650214cd0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "274edd0906bb5f992e1ce531d595855b7cc84c31",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Irrational/Variant937c5f73b39a2f8cfef28b2baa18b27b97dc2f900e12eb448d42cf9650214cd0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Irrational/Variant937c5f73b39a2f8cfef28b2baa18b27b97dc2f900e12eb448d42cf9650214cd0.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Irrational/Variant937c5f73b39a2f8cfef28b2baa18b27b97dc2f900e12eb448d42cf9650214cd0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `274edd0906bb5f992e1ce531d595855b7cc84c31`.

Source path: `GRWTSK/Topology/MetricTopology/Irrational/Variant937c5f73b39a2f8cfef28b2baa18b27b97dc2f900e12eb448d42cf9650214cd0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Irrational/Variant937c5f73b39a2f8cfef28b2baa18b27b97dc2f900e12eb448d42cf9650214cd0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Irrational` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Encodable` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.GDelta` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Real.Lemmas` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsGδ.setOf_irrational](../../../../../mathematics/Topology/MetricTopology/Irrational/Variant937c5f73b39a2f8cfef28b2baa18b27b97dc2f900e12eb448d42cf9650214cd0.lean/declarations/isg-setof-irrational--b60baf81679ae2fa7229810e.md) | 37 | `result-track:b60baf81679ae2fa7229810e202c3ffb894db220143ed323b6046905956f1671` |
| 2 | `theorem` | [dense_irrational](../../../../../mathematics/Topology/MetricTopology/Irrational/Variant937c5f73b39a2f8cfef28b2baa18b27b97dc2f900e12eb448d42cf9650214cd0.lean/declarations/dense-irrational--3e4123b84fd4f97d58aa85bd.md) | 41 | `result-track:3e4123b84fd4f97d58aa85bd3acf69fb9d3c1a964d8b921f207287c5d9a065e2` |
| 3 | `theorem` | [eventually_residual_irrational](../../../../../mathematics/Topology/MetricTopology/Irrational/Variant937c5f73b39a2f8cfef28b2baa18b27b97dc2f900e12eb448d42cf9650214cd0.lean/declarations/eventually-residual-irrational--78505b229407fe72b03294f4.md) | 48 | `result-track:78505b229407fe72b03294f4b43e4c4b09bbda4d8461336221b7e381df52c503` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Irrational/Variant937c5f73b39a2f8cfef28b2baa18b27b97dc2f900e12eb448d42cf9650214cd0.lean/declarations/instance--9eb96deaacd6ccb298ef4f24.md) | 55 | `declaration-track:9eb96deaacd6ccb298ef4f24d177de458d18faea2de49c7249f08a40c8cb97f5` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Irrational/Variant937c5f73b39a2f8cfef28b2baa18b27b97dc2f900e12eb448d42cf9650214cd0.lean/declarations/instance--e9448eeab4374aa46b12f161.md) | 60 | `declaration-track:e9448eeab4374aa46b12f16110737357ff7bd1b1cbccbe457d36b16e9d5526b4` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Irrational/Variant937c5f73b39a2f8cfef28b2baa18b27b97dc2f900e12eb448d42cf9650214cd0.lean/declarations/instance--aaeed1d618764e5ace4f0b05.md) | 63 | `declaration-track:aaeed1d618764e5ace4f0b05077b80f6bb73cfec4527c3052df4d8b83203583e` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Irrational/Variant937c5f73b39a2f8cfef28b2baa18b27b97dc2f900e12eb448d42cf9650214cd0.lean/declarations/instance--8a77838d06c1462721753508.md) | 66 | `declaration-track:8a77838d06c146272175350890b28c34e610bc222a9ca80fe10aeb2e6823adf0` |
| 8 | `theorem` | [eventually_forall_le_dist_cast_div](../../../../../mathematics/Topology/MetricTopology/Irrational/Variant937c5f73b39a2f8cfef28b2baa18b27b97dc2f900e12eb448d42cf9650214cd0.lean/declarations/eventually-forall-le-dist-cast-div--191fb1809e0688984787e63f.md) | 71 | `result-track:191fb1809e0688984787e63f29c87c21c9888428edbdae6290e1a3a68d2a483d` |
| 9 | `theorem` | [eventually_forall_le_dist_cast_div_of_denom_le](../../../../../mathematics/Topology/MetricTopology/Irrational/Variant937c5f73b39a2f8cfef28b2baa18b27b97dc2f900e12eb448d42cf9650214cd0.lean/declarations/eventually-forall-le-dist-cast-div-of-denom-le--6a6a6ff9956e2b0818cb5a84.md) | 84 | `result-track:6a6a6ff9956e2b0818cb5a84d1d41d6a1c106795636516315dfba385002b5e24` |
| 10 | `theorem` | [eventually_forall_le_dist_cast_rat_of_den_le](../../../../../mathematics/Topology/MetricTopology/Irrational/Variant937c5f73b39a2f8cfef28b2baa18b27b97dc2f900e12eb448d42cf9650214cd0.lean/declarations/eventually-forall-le-dist-cast-rat-of-den-le--62bebc37ee89b0b630c070ae.md) | 88 | `result-track:62bebc37ee89b0b630c070aec61daa6715e85872e44ebffce482b1a65ed9c7b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
