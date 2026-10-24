# Verification target: GRWTSK.Topology.MetricTopology.Lyapunov.Variant22747df8921a82e05f88e5b1c367f0d7947d4169fdd2448842d8c033fbd8c0cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fb7650474b39fee0768ad121118d2ca76985c99",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Lyapunov/Variant22747df8921a82e05f88e5b1c367f0d7947d4169fdd2448842d8c033fbd8c0cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Lyapunov/Variant22747df8921a82e05f88e5b1c367f0d7947d4169fdd2448842d8c033fbd8c0cd.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Lyapunov/Variant22747df8921a82e05f88e5b1c367f0d7947d4169fdd2448842d8c033fbd8c0cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fb7650474b39fee0768ad121118d2ca76985c99`.

Source path: `GRWTSK/Topology/MetricTopology/Lyapunov/Variant22747df8921a82e05f88e5b1c367f0d7947d4169fdd2448842d8c033fbd8c0cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Lyapunov/Variant22747df8921a82e05f88e5b1c367f0d7947d4169fdd2448842d8c033fbd8c0cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Operational.Stability` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LocalQuadraticLyapunovCertificate](../../../../../mathematics/Topology/MetricTopology/Lyapunov/Variant22747df8921a82e05f88e5b1c367f0d7947d4169fdd2448842d8c033fbd8c0cd.lean/declarations/localquadraticlyapunovcertificate--73ef16f5ce758d5d87893a49.md) | 19 | `declaration-track:73ef16f5ce758d5d87893a49e72ab83662a685712bc3a733a363749e806315ce` |
| 2 | `theorem` | [iterate_mem](../../../../../mathematics/Topology/MetricTopology/Lyapunov/Variant22747df8921a82e05f88e5b1c367f0d7947d4169fdd2448842d8c033fbd8c0cd.lean/declarations/iterate-mem--ec7631b3e653d3633577354b.md) | 62 | `result-track:ec7631b3e653d3633577354b3973cec28ce482bec238673d9520216f8164ffd0` |
| 3 | `theorem` | [energy_iterate_le](../../../../../mathematics/Topology/MetricTopology/Lyapunov/Variant22747df8921a82e05f88e5b1c367f0d7947d4169fdd2448842d8c033fbd8c0cd.lean/declarations/energy-iterate-le--f1013ec54e095b0148bc6219.md) | 71 | `result-track:f1013ec54e095b0148bc621943bd481545d77dd7e6cb1e4bba2ac91906f92483` |
| 4 | `theorem` | [isLyapunovStable](../../../../../mathematics/Topology/MetricTopology/Lyapunov/Variant22747df8921a82e05f88e5b1c367f0d7947d4169fdd2448842d8c033fbd8c0cd.lean/declarations/islyapunovstable--84e4a181a29a816f2efbc4f7.md) | 91 | `result-track:84e4a181a29a816f2efbc4f799a6b2bcd90e376dbf5e61d10263bb51b6a84e98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
