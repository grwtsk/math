# Verification target: GRWTSK.Topology.MetricTopology.Tube.Variant0fb4ba8e7a2227ce0a3f19f29ab5675b1673cfdc05f2ea47ebe70c686cc703c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67353e3be291ff2a90785ca59461be38c66b7dbe",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Tube/Variant0fb4ba8e7a2227ce0a3f19f29ab5675b1673cfdc05f2ea47ebe70c686cc703c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Tube/Variant0fb4ba8e7a2227ce0a3f19f29ab5675b1673cfdc05f2ea47ebe70c686cc703c6.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Tube/Variant0fb4ba8e7a2227ce0a3f19f29ab5675b1673cfdc05f2ea47ebe70c686cc703c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67353e3be291ff2a90785ca59461be38c66b7dbe`.

Source path: `GRWTSK/Topology/MetricTopology/Tube/Variant0fb4ba8e7a2227ce0a3f19f29ab5675b1673cfdc05f2ea47ebe70c686cc703c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Tube/Variant0fb4ba8e7a2227ce0a3f19f29ab5675b1673cfdc05f2ea47ebe70c686cc703c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Geometry.Kakeya.Direction` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Geometry.Kakeya.Scale` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Tube](../../../../../mathematics/Topology/MetricTopology/Tube/Variant0fb4ba8e7a2227ce0a3f19f29ab5675b1673cfdc05f2ea47ebe70c686cc703c6.lean/declarations/tube--7e3b29b04f17d9114016fc53.md) | 14 | `declaration-track:7e3b29b04f17d9114016fc5382757575f1550ad7da9ddabb1e52ddf840987040` |
| 2 | `def` | [axisPoint](../../../../../mathematics/Topology/MetricTopology/Tube/Variant0fb4ba8e7a2227ce0a3f19f29ab5675b1673cfdc05f2ea47ebe70c686cc703c6.lean/declarations/axispoint--19df187cf74ed240b4fda304.md) | 22 | `declaration-track:19df187cf74ed240b4fda3044ce3ca15b3b84817d9d05f7851577ca5b21e2713` |
| 3 | `def` | [Contains](../../../../../mathematics/Topology/MetricTopology/Tube/Variant0fb4ba8e7a2227ce0a3f19f29ab5675b1673cfdc05f2ea47ebe70c686cc703c6.lean/declarations/contains--b0ee4eb094e0db8180ace20f.md) | 28 | `declaration-track:b0ee4eb094e0db8180ace20f3fe9fc625abc402e04a448b9416dca0371e13cb5` |
| 4 | `def` | [carrier](../../../../../mathematics/Topology/MetricTopology/Tube/Variant0fb4ba8e7a2227ce0a3f19f29ab5675b1673cfdc05f2ea47ebe70c686cc703c6.lean/declarations/carrier--6dd17fd524824a394b5a5b1c.md) | 35 | `declaration-track:6dd17fd524824a394b5a5b1c0b10ca0dc4f7f2f6290c49e34bfdeb6a00787a6e` |
| 5 | `theorem` | [mem_carrier_iff](../../../../../mathematics/Topology/MetricTopology/Tube/Variant0fb4ba8e7a2227ce0a3f19f29ab5675b1673cfdc05f2ea47ebe70c686cc703c6.lean/declarations/mem-carrier-iff--14bbaa37a18342a1cba96592.md) | 39 | `result-track:14bbaa37a18342a1cba96592422ef42985fe7cf23241ee7d51be1371aa58f71a` |
| 6 | `theorem` | [center_mem](../../../../../mathematics/Topology/MetricTopology/Tube/Variant0fb4ba8e7a2227ce0a3f19f29ab5675b1673cfdc05f2ea47ebe70c686cc703c6.lean/declarations/center-mem--cfc9721ee0058d30bdcea694.md) | 45 | `result-track:cfc9721ee0058d30bdcea69490962a5cf08ce927ebbff0fe97c5585df5b538a0` |
| 7 | `theorem` | [carrier_nonempty](../../../../../mathematics/Topology/MetricTopology/Tube/Variant0fb4ba8e7a2227ce0a3f19f29ab5675b1673cfdc05f2ea47ebe70c686cc703c6.lean/declarations/carrier-nonempty--85379b7628c10cf96c71754c.md) | 52 | `result-track:85379b7628c10cf96c71754c29b866c8f55fc1ef05096461123d26ca2fe6fb63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
