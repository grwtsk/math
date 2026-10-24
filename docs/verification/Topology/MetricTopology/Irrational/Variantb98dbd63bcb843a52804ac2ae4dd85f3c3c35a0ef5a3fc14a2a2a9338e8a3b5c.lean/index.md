# Verification target: GRWTSK.Topology.MetricTopology.Irrational.Variantb98dbd63bcb843a52804ac2ae4dd85f3c3c35a0ef5a3fc14a2a2a9338e8a3b5c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75c8f7f539f9b49e69c1b1affac2c5d0b1ed3756",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Irrational/Variantb98dbd63bcb843a52804ac2ae4dd85f3c3c35a0ef5a3fc14a2a2a9338e8a3b5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Irrational/Variantb98dbd63bcb843a52804ac2ae4dd85f3c3c35a0ef5a3fc14a2a2a9338e8a3b5c.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Irrational/Variantb98dbd63bcb843a52804ac2ae4dd85f3c3c35a0ef5a3fc14a2a2a9338e8a3b5c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75c8f7f539f9b49e69c1b1affac2c5d0b1ed3756`.

Source path: `GRWTSK/Topology/MetricTopology/Irrational/Variantb98dbd63bcb843a52804ac2ae4dd85f3c3c35a0ef5a3fc14a2a2a9338e8a3b5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Irrational/Variantb98dbd63bcb843a52804ac2ae4dd85f3c3c35a0ef5a3fc14a2a2a9338e8a3b5c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Irrational` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Encodable` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.GDelta` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Real.Lemmas` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsGδ.setOf_irrational](../../../../../mathematics/Topology/MetricTopology/Irrational/Variantb98dbd63bcb843a52804ac2ae4dd85f3c3c35a0ef5a3fc14a2a2a9338e8a3b5c.lean/declarations/isg-setof-irrational--fb70feeca27a55a7ef61a0e8.md) | 45 | `result-track:fb70feeca27a55a7ef61a0e844bb493ec84a9f92e3d61a8e9e3154bf7c9fdd59` |
| 2 | `theorem` | [dense_irrational](../../../../../mathematics/Topology/MetricTopology/Irrational/Variantb98dbd63bcb843a52804ac2ae4dd85f3c3c35a0ef5a3fc14a2a2a9338e8a3b5c.lean/declarations/dense-irrational--f4dbd80ac38b539d954ccb32.md) | 49 | `result-track:f4dbd80ac38b539d954ccb327e5ee054958d82adf3b997dc3c9b2aca2a002887` |
| 3 | `theorem` | [eventually_residual_irrational](../../../../../mathematics/Topology/MetricTopology/Irrational/Variantb98dbd63bcb843a52804ac2ae4dd85f3c3c35a0ef5a3fc14a2a2a9338e8a3b5c.lean/declarations/eventually-residual-irrational--ed59e3b660f405f2258eb40a.md) | 56 | `result-track:ed59e3b660f405f2258eb40a45fdc09f04db441f801566dcd55b88de82d7ca07` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Irrational/Variantb98dbd63bcb843a52804ac2ae4dd85f3c3c35a0ef5a3fc14a2a2a9338e8a3b5c.lean/declarations/instance--d1d12bed5e398bb0d474b39d.md) | 63 | `declaration-track:d1d12bed5e398bb0d474b39db1838c1477235772cd16804402eee875b4b4ec26` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Irrational/Variantb98dbd63bcb843a52804ac2ae4dd85f3c3c35a0ef5a3fc14a2a2a9338e8a3b5c.lean/declarations/instance--fccaa9ca5a42a505e59be466.md) | 68 | `declaration-track:fccaa9ca5a42a505e59be4661984c1f9f144cb32f71ec8d2513afd166018e9e9` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Irrational/Variantb98dbd63bcb843a52804ac2ae4dd85f3c3c35a0ef5a3fc14a2a2a9338e8a3b5c.lean/declarations/instance--3d3be07c57dddbee57492b8c.md) | 71 | `declaration-track:3d3be07c57dddbee57492b8c7fe3918b2c95676ef66e5ebff27972b1ce151f73` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Irrational/Variantb98dbd63bcb843a52804ac2ae4dd85f3c3c35a0ef5a3fc14a2a2a9338e8a3b5c.lean/declarations/instance--6e78f1725fd8c214bdbf5a62.md) | 74 | `declaration-track:6e78f1725fd8c214bdbf5a621b0ac21f62bda0549ae5ea0b917d228ae7677a83` |
| 8 | `theorem` | [eventually_forall_le_dist_cast_div](../../../../../mathematics/Topology/MetricTopology/Irrational/Variantb98dbd63bcb843a52804ac2ae4dd85f3c3c35a0ef5a3fc14a2a2a9338e8a3b5c.lean/declarations/eventually-forall-le-dist-cast-div--f185d4f0a7316516d01afc63.md) | 79 | `result-track:f185d4f0a7316516d01afc63a2ab40eff666fe0a9ba410bf161989e64bbf26b0` |
| 9 | `theorem` | [eventually_forall_le_dist_cast_div_of_denom_le](../../../../../mathematics/Topology/MetricTopology/Irrational/Variantb98dbd63bcb843a52804ac2ae4dd85f3c3c35a0ef5a3fc14a2a2a9338e8a3b5c.lean/declarations/eventually-forall-le-dist-cast-div-of-denom-le--ba0cb1e778382367ac50672e.md) | 92 | `result-track:ba0cb1e778382367ac50672ee8794400ad9487bb61082a0ffc8faf4d13d93439` |
| 10 | `theorem` | [eventually_forall_le_dist_cast_rat_of_den_le](../../../../../mathematics/Topology/MetricTopology/Irrational/Variantb98dbd63bcb843a52804ac2ae4dd85f3c3c35a0ef5a3fc14a2a2a9338e8a3b5c.lean/declarations/eventually-forall-le-dist-cast-rat-of-den-le--18d7d5ffbf2074c0f3047c70.md) | 96 | `result-track:18d7d5ffbf2074c0f3047c70792c00a6160893ae207db87feaddb829fb99a059` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
