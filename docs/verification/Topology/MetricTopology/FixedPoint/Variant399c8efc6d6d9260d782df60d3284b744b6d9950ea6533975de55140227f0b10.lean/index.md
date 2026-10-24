# Verification target: GRWTSK.Topology.MetricTopology.FixedPoint.Variant399c8efc6d6d9260d782df60d3284b744b6d9950ea6533975de55140227f0b10

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79ff3835f6b1b007bd13cbaaba65db325d23037a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/FixedPoint/Variant399c8efc6d6d9260d782df60d3284b744b6d9950ea6533975de55140227f0b10.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/FixedPoint/Variant399c8efc6d6d9260d782df60d3284b744b6d9950ea6533975de55140227f0b10.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/FixedPoint/Variant399c8efc6d6d9260d782df60d3284b744b6d9950ea6533975de55140227f0b10.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79ff3835f6b1b007bd13cbaaba65db325d23037a`.

Source path: `GRWTSK/Topology/MetricTopology/FixedPoint/Variant399c8efc6d6d9260d782df60d3284b744b6d9950ea6533975de55140227f0b10.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/FixedPoint/Variant399c8efc6d6d9260d782df60d3284b744b6d9950ea6533975de55140227f0b10.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HasFixedPoint](../../../../../mathematics/Topology/MetricTopology/FixedPoint/Variant399c8efc6d6d9260d782df60d3284b744b6d9950ea6533975de55140227f0b10.lean/declarations/hasfixedpoint--caa181ad971c9b15befb5028.md) | 19 | `declaration-track:caa181ad971c9b15befb502896227dc411ee9aa7d5e1d8bb7ccb812ba8cde826` |
| 2 | `structure` | [HasUniqueFixedPoint](../../../../../mathematics/Topology/MetricTopology/FixedPoint/Variant399c8efc6d6d9260d782df60d3284b744b6d9950ea6533975de55140227f0b10.lean/declarations/hasuniquefixedpoint--482683be58ae662bf0f414a2.md) | 23 | `declaration-track:482683be58ae662bf0f414a2d5cd7338542b4edaf37e78c41eb24520bda080fb` |
| 3 | `structure` | [ContractiveFixedPointContract](../../../../../mathematics/Topology/MetricTopology/FixedPoint/Variant399c8efc6d6d9260d782df60d3284b744b6d9950ea6533975de55140227f0b10.lean/declarations/contractivefixedpointcontract--b56990cac423f64eb341b378.md) | 27 | `declaration-track:b56990cac423f64eb341b378a4f63337d3b0943abb1353ce05a86f3db91b4617` |
| 4 | `theorem` | [fixed_point_is_fixed](../../../../../mathematics/Topology/MetricTopology/FixedPoint/Variant399c8efc6d6d9260d782df60d3284b744b6d9950ea6533975de55140227f0b10.lean/declarations/fixed-point-is-fixed--80b8f5e4b5edff14aac75166.md) | 35 | `result-track:80b8f5e4b5edff14aac75166b26c03d9d4846d9736f8a2b477427a50099d1267` |
| 5 | `theorem` | [unique_fixed_point_eq](../../../../../mathematics/Topology/MetricTopology/FixedPoint/Variant399c8efc6d6d9260d782df60d3284b744b6d9950ea6533975de55140227f0b10.lean/declarations/unique-fixed-point-eq--4abd80af77c2629b318e9b81.md) | 40 | `result-track:4abd80af77c2629b318e9b81fcf398a0f228eeefb224fa7e00bddbfe962bd12b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
