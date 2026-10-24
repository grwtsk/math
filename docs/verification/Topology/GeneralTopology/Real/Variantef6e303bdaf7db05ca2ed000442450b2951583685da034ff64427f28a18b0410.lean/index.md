# Verification target: GRWTSK.Topology.GeneralTopology.Real.Variantef6e303bdaf7db05ca2ed000442450b2951583685da034ff64427f28a18b0410

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6400f3365ac01ac8dfd5791a4c7cd104298c6b5d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Real/Variantef6e303bdaf7db05ca2ed000442450b2951583685da034ff64427f28a18b0410.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Real/Variantef6e303bdaf7db05ca2ed000442450b2951583685da034ff64427f28a18b0410.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Real/Variantef6e303bdaf7db05ca2ed000442450b2951583685da034ff64427f28a18b0410.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6400f3365ac01ac8dfd5791a4c7cd104298c6b5d`.

Source path: `GRWTSK/Topology/GeneralTopology/Real/Variantef6e303bdaf7db05ca2ed000442450b2951583685da034ff64427f28a18b0410.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Real/Variantef6e303bdaf7db05ca2ed000442450b2951583685da034ff64427f28a18b0410.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ContinuousMap.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Cauchy` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Real.instCompleteSpace](../../../../../mathematics/Topology/GeneralTopology/Real/Variantef6e303bdaf7db05ca2ed000442450b2951583685da034ff64427f28a18b0410.lean/declarations/real-instcompletespace--3e1e6b2650ba4aea80eb7447.md) | 23 | `declaration-track:3e1e6b2650ba4aea80eb74472938dbc3f02e45afd0ac8230bb17995923ae57d5` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variantef6e303bdaf7db05ca2ed000442450b2951583685da034ff64427f28a18b0410.lean/declarations/instance--fffff826c5c51462cee58df7.md) | 41 | `declaration-track:fffff826c5c51462cee58df76cfbe90b09cf88802f439fe78c2bcb484f433a4a` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variantef6e303bdaf7db05ca2ed000442450b2951583685da034ff64427f28a18b0410.lean/declarations/instance--075410cf77269b9aa0e2b4f2.md) | 43 | `declaration-track:075410cf77269b9aa0e2b4f2d2d519f72be55683839d124999723a43877a271f` |
| 4 | `theorem` | [continuous_coe](../../../../../mathematics/Topology/GeneralTopology/Real/Variantef6e303bdaf7db05ca2ed000442450b2951583685da034ff64427f28a18b0410.lean/declarations/continuous-coe--2288ce910a95fafce893e12e.md) | 46 | `result-track:2288ce910a95fafce893e12e00d4636f2df290c7a438f01a9a6a8cf84cabfb82` |
| 5 | `def` | [_root_.ContinuousMap.coeNNRealReal](../../../../../mathematics/Topology/GeneralTopology/Real/Variantef6e303bdaf7db05ca2ed000442450b2951583685da034ff64427f28a18b0410.lean/declarations/root-continuousmap-coennrealreal--4525d0380575ba45369b7518.md) | 51 | `declaration-track:4525d0380575ba45369b7518178b6786bb7a4205ba8a12634faa516853820cd4` |
| 6 | `lemma` | [coeNNRealReal_zero](../../../../../mathematics/Topology/GeneralTopology/Real/Variantef6e303bdaf7db05ca2ed000442450b2951583685da034ff64427f28a18b0410.lean/declarations/coennrealreal-zero--4b8a65a1a4cc4f1c52d46e13.md) | 55 | `result-track:4b8a65a1a4cc4f1c52d46e13d66973971d49e2f19b77b882c73345fad780da40` |
| 7 | `instance` | [ContinuousMap.canLift](../../../../../mathematics/Topology/GeneralTopology/Real/Variantef6e303bdaf7db05ca2ed000442450b2951583685da034ff64427f28a18b0410.lean/declarations/continuousmap-canlift--3f3322ad94fdf1c8798233d5.md) | 57 | `declaration-track:3f3322ad94fdf1c8798233d5ca78de2fb1c70c9b710395b6a2bed6548973388a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
