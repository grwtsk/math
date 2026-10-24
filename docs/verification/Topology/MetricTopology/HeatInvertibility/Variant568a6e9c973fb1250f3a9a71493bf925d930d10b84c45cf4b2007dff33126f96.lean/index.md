# Verification target: GRWTSK.Topology.MetricTopology.HeatInvertibility.Variant568a6e9c973fb1250f3a9a71493bf925d930d10b84c45cf4b2007dff33126f96

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a18e497d7bc4e34599e5ab688accb2b3b409794",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/HeatInvertibility/Variant568a6e9c973fb1250f3a9a71493bf925d930d10b84c45cf4b2007dff33126f96.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/HeatInvertibility/Variant568a6e9c973fb1250f3a9a71493bf925d930d10b84c45cf4b2007dff33126f96.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/HeatInvertibility/Variant568a6e9c973fb1250f3a9a71493bf925d930d10b84c45cf4b2007dff33126f96.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a18e497d7bc4e34599e5ab688accb2b3b409794`.

Source path: `GRWTSK/Topology/MetricTopology/HeatInvertibility/Variant568a6e9c973fb1250f3a9a71493bf925d930d10b84c45cf4b2007dff33126f96.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/HeatInvertibility/Variant568a6e9c973fb1250f3a9a71493bf925d930d10b84c45cf4b2007dff33126f96.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Spectral.Heat` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Residual` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.Theorem.Spectral.HeatResidual` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HasTwoSidedInverse](../../../../../mathematics/Topology/MetricTopology/HeatInvertibility/Variant568a6e9c973fb1250f3a9a71493bf925d930d10b84c45cf4b2007dff33126f96.lean/declarations/hastwosidedinverse--1811f63361c6df486620391c.md) | 22 | `declaration-track:1811f63361c6df486620391cc6e1520bf088d0b9095268b782685ec77f32786f` |
| 2 | `structure` | [StableInverse](../../../../../mathematics/Topology/MetricTopology/HeatInvertibility/Variant568a6e9c973fb1250f3a9a71493bf925d930d10b84c45cf4b2007dff33126f96.lean/declarations/stableinverse--6cea24e803fb09dad03f90c5.md) | 29 | `declaration-track:6cea24e803fb09dad03f90c5a0abc6e89ecbf86339f13eef6aeaf3939b4935c8` |
| 3 | `structure` | [LiftedHeatInverse](../../../../../mathematics/Topology/MetricTopology/HeatInvertibility/Variant568a6e9c973fb1250f3a9a71493bf925d930d10b84c45cf4b2007dff33126f96.lean/declarations/liftedheatinverse--d09b745da452d6de75f68f0b.md) | 37 | `declaration-track:d09b745da452d6de75f68f0bbd33056a76a6b0e7f20d8ba17bc07e54da0c98c6` |
| 4 | `def` | [spectralLiftedHeatInverse](../../../../../mathematics/Topology/MetricTopology/HeatInvertibility/Variant568a6e9c973fb1250f3a9a71493bf925d930d10b84c45cf4b2007dff33126f96.lean/declarations/spectralliftedheatinverse--e0330d1506e1657ddb42d37c.md) | 45 | `declaration-track:e0330d1506e1657ddb42d37cd6e3503cde4050a992ab1f8290d7c694419eab95` |
| 5 | `theorem` | [lifted_heat_reconstructs](../../../../../mathematics/Topology/MetricTopology/HeatInvertibility/Variant568a6e9c973fb1250f3a9a71493bf925d930d10b84c45cf4b2007dff33126f96.lean/declarations/lifted-heat-reconstructs--eecb25d1a364fe315ead6744.md) | 59 | `result-track:eecb25d1a364fe315ead6744868e246e3582286c4283b744f72548acc262ff3f` |
| 6 | `theorem` | [ordinary_heat_left_inverse](../../../../../mathematics/Topology/MetricTopology/HeatInvertibility/Variant568a6e9c973fb1250f3a9a71493bf925d930d10b84c45cf4b2007dff33126f96.lean/declarations/ordinary-heat-left-inverse--4c35af981e4d9bd4ec47f25a.md) | 67 | `result-track:4c35af981e4d9bd4ec47f25ada8259bcb271f4118ef4aa2e9cadd1baf4ee5f60` |
| 7 | `theorem` | [ordinary_heat_right_inverse](../../../../../mathematics/Topology/MetricTopology/HeatInvertibility/Variant568a6e9c973fb1250f3a9a71493bf925d930d10b84c45cf4b2007dff33126f96.lean/declarations/ordinary-heat-right-inverse--633243ce2325fb18fb170c2a.md) | 75 | `result-track:633243ce2325fb18fb170c2a507db171685cad7bd951208aeeafa6d34065cdad` |
| 8 | `theorem` | [stable_inverse_has_lipschitz_bound](../../../../../mathematics/Topology/MetricTopology/HeatInvertibility/Variant568a6e9c973fb1250f3a9a71493bf925d930d10b84c45cf4b2007dff33126f96.lean/declarations/stable-inverse-has-lipschitz-bound--0e5e10f156e94abab709cc58.md) | 83 | `result-track:0e5e10f156e94abab709cc589a5f05349f225701ba0912042aa84e206c9acc53` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
