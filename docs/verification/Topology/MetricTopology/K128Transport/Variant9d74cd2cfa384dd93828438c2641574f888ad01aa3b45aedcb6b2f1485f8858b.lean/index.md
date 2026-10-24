# Verification target: GRWTSK.Topology.MetricTopology.K128Transport.Variant9d74cd2cfa384dd93828438c2641574f888ad01aa3b45aedcb6b2f1485f8858b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7a9546831e2d5c4f98f70a28021c895435875c0",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/K128Transport/Variant9d74cd2cfa384dd93828438c2641574f888ad01aa3b45aedcb6b2f1485f8858b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/K128Transport/Variant9d74cd2cfa384dd93828438c2641574f888ad01aa3b45aedcb6b2f1485f8858b.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/K128Transport/Variant9d74cd2cfa384dd93828438c2641574f888ad01aa3b45aedcb6b2f1485f8858b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7a9546831e2d5c4f98f70a28021c895435875c0`.

Source path: `GRWTSK/Topology/MetricTopology/K128Transport/Variant9d74cd2cfa384dd93828438c2641574f888ad01aa3b45aedcb6b2f1485f8858b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/K128Transport/Variant9d74cd2cfa384dd93828438c2641574f888ad01aa3b45aedcb6b2f1485f8858b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Kakeya.HasseWeil.Torsion` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [torsion_residue_heat_nonnegative](../../../../../mathematics/Topology/MetricTopology/K128Transport/Variant9d74cd2cfa384dd93828438c2641574f888ad01aa3b45aedcb6b2f1485f8858b.lean/declarations/torsion-residue-heat-nonnegative--af9378948d868bd686f6cf2a.md) | 13 | `result-track:af9378948d868bd686f6cf2a4fd537512e4db2d1eb9c0e725ca783b4fa442e59` |
| 2 | `def` | [k128_torsion_iff_zero_residue](../../../../../mathematics/Topology/MetricTopology/K128Transport/Variant9d74cd2cfa384dd93828438c2641574f888ad01aa3b45aedcb6b2f1485f8858b.lean/declarations/k128-torsion-iff-zero-residue--5898201d6a334de964adb145.md) | 21 | `declaration-track:5898201d6a334de964adb14523422fdf918902b928a21cb50ae38109222ecac5` |
| 3 | `theorem` | [exact_torsion_transports_to_k128](../../../../../mathematics/Topology/MetricTopology/K128Transport/Variant9d74cd2cfa384dd93828438c2641574f888ad01aa3b45aedcb6b2f1485f8858b.lean/declarations/exact-torsion-transports-to-k128--f35c0ee414f8f5ed87f389d7.md) | 24 | `result-track:f35c0ee414f8f5ed87f389d764f5d5ffac880e4002aa5eb9d4634e0eee4e8bfd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
