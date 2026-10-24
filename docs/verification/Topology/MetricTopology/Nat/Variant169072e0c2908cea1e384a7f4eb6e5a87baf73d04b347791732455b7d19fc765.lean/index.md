# Verification target: GRWTSK.Topology.MetricTopology.Nat.Variant169072e0c2908cea1e384a7f4eb6e5a87baf73d04b347791732455b7d19fc765

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed3df965ce241fbe7b26fa8d0d01c882124e619b",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Nat/Variant169072e0c2908cea1e384a7f4eb6e5a87baf73d04b347791732455b7d19fc765.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Nat/Variant169072e0c2908cea1e384a7f4eb6e5a87baf73d04b347791732455b7d19fc765.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Nat/Variant169072e0c2908cea1e384a7f4eb6e5a87baf73d04b347791732455b7d19fc765.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed3df965ce241fbe7b26fa8d0d01c882124e619b`.

Source path: `GRWTSK/Topology/MetricTopology/Nat/Variant169072e0c2908cea1e384a7f4eb6e5a87baf73d04b347791732455b7d19fc765.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Nat/Variant169072e0c2908cea1e384a7f4eb6e5a87baf73d04b347791732455b7d19fc765.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Instances.Int` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Lattice` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Nat/Variant169072e0c2908cea1e384a7f4eb6e5a87baf73d04b347791732455b7d19fc765.lean/declarations/instance--3ac64e2c906dd9ac06002bb9.md) | 29 | `declaration-track:3ac64e2c906dd9ac06002bb94d94ad91136085777eee991d373b869d107135bb` |
| 2 | `theorem` | [dist_eq](../../../../../mathematics/Topology/MetricTopology/Nat/Variant169072e0c2908cea1e384a7f4eb6e5a87baf73d04b347791732455b7d19fc765.lean/declarations/dist-eq--333aabac6309a157959de126.md) | 32 | `result-track:333aabac6309a157959de126337f254fd10139b383f58c19f0a19b52c81fdb58` |
| 3 | `theorem` | [dist_coe_int](../../../../../mathematics/Topology/MetricTopology/Nat/Variant169072e0c2908cea1e384a7f4eb6e5a87baf73d04b347791732455b7d19fc765.lean/declarations/dist-coe-int--6b523b5777953fd8dbc40b1f.md) | 34 | `result-track:6b523b5777953fd8dbc40b1f2ecdcc6c1dca07a797db3052c56ed4da7e4773ac` |
| 4 | `theorem` | [dist_cast_real](../../../../../mathematics/Topology/MetricTopology/Nat/Variant169072e0c2908cea1e384a7f4eb6e5a87baf73d04b347791732455b7d19fc765.lean/declarations/dist-cast-real--634bb67c88732c6c274e1b6e.md) | 37 | `result-track:634bb67c88732c6c274e1b6ed36fb2384ed9d9f15077666175e81102ec4f03b9` |
| 5 | `theorem` | [pairwise_one_le_dist](../../../../../mathematics/Topology/MetricTopology/Nat/Variant169072e0c2908cea1e384a7f4eb6e5a87baf73d04b347791732455b7d19fc765.lean/declarations/pairwise-one-le-dist--ca05205a07031f5415b80576.md) | 39 | `result-track:ca05205a07031f5415b8057607a8f997214e101205842ccdfe75a696a58a029d` |
| 6 | `theorem` | [isUniformEmbedding_coe_real](../../../../../mathematics/Topology/MetricTopology/Nat/Variant169072e0c2908cea1e384a7f4eb6e5a87baf73d04b347791732455b7d19fc765.lean/declarations/isuniformembedding-coe-real--379f3fe3147c2a3970437a88.md) | 42 | `result-track:379f3fe3147c2a3970437a88c95208cb157c48c781a40ef072f38128ea59c741` |
| 7 | `theorem` | [isClosedEmbedding_coe_real](../../../../../mathematics/Topology/MetricTopology/Nat/Variant169072e0c2908cea1e384a7f4eb6e5a87baf73d04b347791732455b7d19fc765.lean/declarations/isclosedembedding-coe-real--8a3e3463d165741eccd9abe4.md) | 45 | `result-track:8a3e3463d165741eccd9abe416818faf891385682e92f08c7af1d9fe26e6a511` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Nat/Variant169072e0c2908cea1e384a7f4eb6e5a87baf73d04b347791732455b7d19fc765.lean/declarations/instance--e5f93bfb43759cecaaaa2dc8.md) | 48 | `declaration-track:e5f93bfb43759cecaaaa2dc82a8aad8450005dcafc64174a1223fc33cc4e06d6` |
| 9 | `theorem` | [preimage_ball](../../../../../mathematics/Topology/MetricTopology/Nat/Variant169072e0c2908cea1e384a7f4eb6e5a87baf73d04b347791732455b7d19fc765.lean/declarations/preimage-ball--d375d42074a9c8c867b54998.md) | 50 | `result-track:d375d42074a9c8c867b54998475a77569fb999da00b98f25b50017a5dd1356fe` |
| 10 | `theorem` | [preimage_closedBall](../../../../../mathematics/Topology/MetricTopology/Nat/Variant169072e0c2908cea1e384a7f4eb6e5a87baf73d04b347791732455b7d19fc765.lean/declarations/preimage-closedball--9a813a36ced80f2eeee00c03.md) | 52 | `result-track:9a813a36ced80f2eeee00c037414833d2ca33f35910986b8a74cf284192339e2` |
| 11 | `theorem` | [closedBall_eq_Icc](../../../../../mathematics/Topology/MetricTopology/Nat/Variant169072e0c2908cea1e384a7f4eb6e5a87baf73d04b347791732455b7d19fc765.lean/declarations/closedball-eq-icc--481bc23462f66b428fcd7727.md) | 54 | `result-track:481bc23462f66b428fcd77276ac5e5b68777cd35860b43dc15fe81199bc0cf52` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Nat/Variant169072e0c2908cea1e384a7f4eb6e5a87baf73d04b347791732455b7d19fc765.lean/declarations/instance--5be5e833a29c05be56c8d370.md) | 64 | `declaration-track:5be5e833a29c05be56c8d370420241edc01a6e0dce746d97d98cf1fe39ca948e` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Nat/Variant169072e0c2908cea1e384a7f4eb6e5a87baf73d04b347791732455b7d19fc765.lean/declarations/instance--0f455c9f2cb4cc4750d9a54d.md) | 69 | `declaration-track:0f455c9f2cb4cc4750d9a54dcfc052d5659fd1a82c267bebb111c56b61f624c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
