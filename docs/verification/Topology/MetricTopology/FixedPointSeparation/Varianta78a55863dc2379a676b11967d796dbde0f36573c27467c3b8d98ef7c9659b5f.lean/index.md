# Verification target: GRWTSK.Topology.MetricTopology.FixedPointSeparation.Varianta78a55863dc2379a676b11967d796dbde0f36573c27467c3b8d98ef7c9659b5f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "834e2704fd24e905adbd67bde5b0b75009891faa",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/FixedPointSeparation/Varianta78a55863dc2379a676b11967d796dbde0f36573c27467c3b8d98ef7c9659b5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/FixedPointSeparation/Varianta78a55863dc2379a676b11967d796dbde0f36573c27467c3b8d98ef7c9659b5f.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/FixedPointSeparation/Varianta78a55863dc2379a676b11967d796dbde0f36573c27467c3b8d98ef7c9659b5f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `834e2704fd24e905adbd67bde5b0b75009891faa`.

Source path: `GRWTSK/Topology/MetricTopology/FixedPointSeparation/Varianta78a55863dc2379a676b11967d796dbde0f36573c27467c3b8d98ef7c9659b5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/FixedPointSeparation/Varianta78a55863dc2379a676b11967d796dbde0f36573c27467c3b8d98ef7c9659b5f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Operational.DiscreteFixedPoint` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SeparationClassification](../../../../../mathematics/Topology/MetricTopology/FixedPointSeparation/Varianta78a55863dc2379a676b11967d796dbde0f36573c27467c3b8d98ef7c9659b5f.lean/declarations/separationclassification--63b79d0310d82f07545b549f.md) | 24 | `declaration-track:63b79d0310d82f07545b549fa6a200385e9ba2463dff26fbc76a86fbcc4c26f5` |
| 2 | `structure` | [FixedFamilySeparationCertificate](../../../../../mathematics/Topology/MetricTopology/FixedPointSeparation/Varianta78a55863dc2379a676b11967d796dbde0f36573c27467c3b8d98ef7c9659b5f.lean/declarations/fixedfamilyseparationcertificate--2b350be6087fae761d872393.md) | 36 | `declaration-track:2b350be6087fae761d872393b59cd56ab9912ec10dc9aebdd44f9825c154a40a` |
| 3 | `structure` | [UniformFixedFamilySeparationCertificate](../../../../../mathematics/Topology/MetricTopology/FixedPointSeparation/Varianta78a55863dc2379a676b11967d796dbde0f36573c27467c3b8d98ef7c9659b5f.lean/declarations/uniformfixedfamilyseparationcertificate--3797c998af6a176d2d960f19.md) | 52 | `declaration-track:3797c998af6a176d2d960f19ddd9d8ef19e00401d766dc3125096a075858ae45` |
| 4 | `structure` | [ProfileUniformSeparationCertificate](../../../../../mathematics/Topology/MetricTopology/FixedPointSeparation/Varianta78a55863dc2379a676b11967d796dbde0f36573c27467c3b8d98ef7c9659b5f.lean/declarations/profileuniformseparationcertificate--aeddf0a2ad43624570aa44ba.md) | 69 | `declaration-track:aeddf0a2ad43624570aa44ba60813cd03e08a2d60056e251622473268f0acffb` |
| 5 | `theorem` | [dist_positive](../../../../../mathematics/Topology/MetricTopology/FixedPointSeparation/Varianta78a55863dc2379a676b11967d796dbde0f36573c27467c3b8d98ef7c9659b5f.lean/declarations/dist-positive--3de5b4057123e8e7db6fcb64.md) | 84 | `result-track:3de5b4057123e8e7db6fcb642dc09e4b9fdfacbaa6ad4402ce0cbe33260f6082` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
