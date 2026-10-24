# Verification target: GRWTSK.Topology.GeneralTopology.Pi.Variant2ba73ebeab395ac7c6fc3eb26ad694ebaf64ab95c205eb3716cfadfcccc82432

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9d8dfa762b889a904022ebf981a55c75a8f070bf",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Pi/Variant2ba73ebeab395ac7c6fc3eb26ad694ebaf64ab95c205eb3716cfadfcccc82432.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant2ba73ebeab395ac7c6fc3eb26ad694ebaf64ab95c205eb3716cfadfcccc82432.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant2ba73ebeab395ac7c6fc3eb26ad694ebaf64ab95c205eb3716cfadfcccc82432.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9d8dfa762b889a904022ebf981a55c75a8f070bf`.

Source path: `GRWTSK/Topology/GeneralTopology/Pi/Variant2ba73ebeab395ac7c6fc3eb26ad694ebaf64ab95c205eb3716cfadfcccc82432.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Pi/Variant2ba73ebeab395ac7c6fc3eb26ad694ebaf64ab95c205eb3716cfadfcccc82432.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Unique` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Spectrum.Pi` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.StarAlgHom` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [cfcₙ_map_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant2ba73ebeab395ac7c6fc3eb26ad694ebaf64ab95c205eb3716cfadfcccc82432.lean/declarations/cfc-map-pi--e7c4763aea78bc116764d4c0.md) | 38 | `result-track:e7c4763aea78bc116764d4c074864cf4c1f7694e1d37afe8c157923f0450875a` |
| 2 | `lemma` | [cfcₙ_map_prod](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant2ba73ebeab395ac7c6fc3eb26ad694ebaf64ab95c205eb3716cfadfcccc82432.lean/declarations/cfc-map-prod--3c5dac1e072d91373ea67e9b.md) | 69 | `result-track:3c5dac1e072d91373ea67e9b6ea3a11df8500178d52d8ae60e7c8a50a50dc5e0` |
| 3 | `lemma` | [cfc_map_pi](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant2ba73ebeab395ac7c6fc3eb26ad694ebaf64ab95c205eb3716cfadfcccc82432.lean/declarations/cfc-map-pi--8a4403c96d594ef4695bacbb.md) | 100 | `result-track:8a4403c96d594ef4695bacbb48b6bc5d0854cb4850b68c1a675e355218c90222` |
| 4 | `lemma` | [cfc_map_prod](../../../../../mathematics/Topology/GeneralTopology/Pi/Variant2ba73ebeab395ac7c6fc3eb26ad694ebaf64ab95c205eb3716cfadfcccc82432.lean/declarations/cfc-map-prod--35c11e93e4c81e2ee724437b.md) | 123 | `result-track:35c11e93e4c81e2ee724437b165d738c300d974ff71b0ce2d46296a0af87bf66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
