# Verification target: GRWTSK.Topology.MetricTopology.SharedStatement.Variantc9b709cdb29d6f01bcb729f4276fe10f4ed6cdd0d343a855e8b5e21f934f24de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d12c1ab4ee8ca3d843c0180f50888eabacd0a144",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/SharedStatement/Variantc9b709cdb29d6f01bcb729f4276fe10f4ed6cdd0d343a855e8b5e21f934f24de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/SharedStatement/Variantc9b709cdb29d6f01bcb729f4276fe10f4ed6cdd0d343a855e8b5e21f934f24de.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/SharedStatement/Variantc9b709cdb29d6f01bcb729f4276fe10f4ed6cdd0d343a855e8b5e21f934f24de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d12c1ab4ee8ca3d843c0180f50888eabacd0a144`.

Source path: `GRWTSK/Topology/MetricTopology/SharedStatement/Variantc9b709cdb29d6f01bcb729f4276fe10f4ed6cdd0d343a855e8b5e21f934f24de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/SharedStatement/Variantc9b709cdb29d6f01bcb729f4276fe10f4ed6cdd0d343a855e8b5e21f934f24de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Core.ComplexAnalysis.FiniteHoleGeometry` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OrderedComplexRectangle](../../../../../mathematics/Topology/MetricTopology/SharedStatement/Variantc9b709cdb29d6f01bcb729f4276fe10f4ed6cdd0d343a855e8b5e21f934f24de.lean/declarations/orderedcomplexrectangle--9502f3f3720582864638f06f.md) | 18 | `declaration-track:9502f3f3720582864638f06fd5a42d90a167b3096f28d651c57d91d97088b8ef` |
| 2 | `def` | [closed](../../../../../mathematics/Topology/MetricTopology/SharedStatement/Variantc9b709cdb29d6f01bcb729f4276fe10f4ed6cdd0d343a855e8b5e21f934f24de.lean/declarations/closed--513ba480d635b335c120b7f7.md) | 27 | `declaration-track:513ba480d635b335c120b7f7e0afd860a908a92842630f3f802881be944a75e3` |
| 3 | `def` | [openRect](../../../../../mathematics/Topology/MetricTopology/SharedStatement/Variantc9b709cdb29d6f01bcb729f4276fe10f4ed6cdd0d343a855e8b5e21f934f24de.lean/declarations/openrect--a6caae1540fd5b5764cdfd19.md) | 31 | `declaration-track:a6caae1540fd5b5764cdfd19ed20a07f098aecf72dbeac08f3d12958e2dac6ce` |
| 4 | `structure` | [SingleHoleConfiguration](../../../../../mathematics/Topology/MetricTopology/SharedStatement/Variantc9b709cdb29d6f01bcb729f4276fe10f4ed6cdd0d343a855e8b5e21f934f24de.lean/declarations/singleholeconfiguration--66763fad11e3dec892513b5e.md) | 37 | `declaration-track:66763fad11e3dec892513b5e45b90aa2fa155a8ff613895641cee9c19a8b7222` |
| 5 | `def` | [closedRegion](../../../../../mathematics/Topology/MetricTopology/SharedStatement/Variantc9b709cdb29d6f01bcb729f4276fe10f4ed6cdd0d343a855e8b5e21f934f24de.lean/declarations/closedregion--ffed3e55b38d1c8d64db4f3e.md) | 48 | `declaration-track:ffed3e55b38d1c8d64db4f3ef344324f926843f9e9eb244f28e02989625e469e` |
| 6 | `def` | [openRegion](../../../../../mathematics/Topology/MetricTopology/SharedStatement/Variantc9b709cdb29d6f01bcb729f4276fe10f4ed6cdd0d343a855e8b5e21f934f24de.lean/declarations/openregion--667953b0c65e81fdcb1e3d5f.md) | 52 | `declaration-track:667953b0c65e81fdcb1e3d5f5e0daaa2b7d657d8d6314203575eaf37083c95ae` |
| 7 | `def` | [singleHoleBoundaryIntegral](../../../../../mathematics/Topology/MetricTopology/SharedStatement/Variantc9b709cdb29d6f01bcb729f4276fe10f4ed6cdd0d343a855e8b5e21f934f24de.lean/declarations/singleholeboundaryintegral--026f686fbb27cb478edc6d5d.md) | 60 | `declaration-track:026f686fbb27cb478edc6d5d71cf5cb1f6f30ee678d1cf393b7d9c67213a6abf` |
| 8 | `def` | [SingleHoleExcisionStatement](../../../../../mathematics/Topology/MetricTopology/SharedStatement/Variantc9b709cdb29d6f01bcb729f4276fe10f4ed6cdd0d343a855e8b5e21f934f24de.lean/declarations/singleholeexcisionstatement--4d6248ecc310dcbe57cb564e.md) | 68 | `declaration-track:4d6248ecc310dcbe57cb564eb793000300b070da8ed2c700d8573b1ec79fe4f1` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/SharedStatement/Variantc9b709cdb29d6f01bcb729f4276fe10f4ed6cdd0d343a855e8b5e21f934f24de.lean/declarations/example--cc7845ce093f967564493270.md) | 79 | `declaration-track:cc7845ce093f967564493270446dbb1f4055f05467def7fc7505addbb0622242` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
