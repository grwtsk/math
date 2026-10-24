# Verification target: GRWTSK.Topology.MetricTopology.Affine.Variantc61c029e876df3cf0735e16c0cc98ca10012a0347c3dc1db034abb02b9fb6296

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6aafe2e6b330acc721ef26cab53740cd188046bb",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Affine/Variantc61c029e876df3cf0735e16c0cc98ca10012a0347c3dc1db034abb02b9fb6296.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Affine/Variantc61c029e876df3cf0735e16c0cc98ca10012a0347c3dc1db034abb02b9fb6296.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Affine/Variantc61c029e876df3cf0735e16c0cc98ca10012a0347c3dc1db034abb02b9fb6296.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6aafe2e6b330acc721ef26cab53740cd188046bb`.

Source path: `GRWTSK/Topology/MetricTopology/Affine/Variantc61c029e876df3cf0735e16c0cc98ca10012a0347c3dc1db034abb02b9fb6296.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Affine/Variantc61c029e876df3cf0735e16c0cc98ca10012a0347c3dc1db034abb02b9fb6296.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.AddTorsor` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inner_vsub_left_eq_zero_symm](../../../../../mathematics/Topology/MetricTopology/Affine/Variantc61c029e876df3cf0735e16c0cc98ca10012a0347c3dc1db034abb02b9fb6296.lean/declarations/inner-vsub-left-eq-zero-symm--6da95ff02063870ba625e7de.md) | 28 | `result-track:6da95ff02063870ba625e7deac8bc16b72e7ddc47b4ea6c3a5da029944dae382` |
| 2 | `theorem` | [inner_vsub_right_eq_zero_symm](../../../../../mathematics/Topology/MetricTopology/Affine/Variantc61c029e876df3cf0735e16c0cc98ca10012a0347c3dc1db034abb02b9fb6296.lean/declarations/inner-vsub-right-eq-zero-symm--5360aa196fdcc77ffb8dfbb9.md) | 32 | `result-track:5360aa196fdcc77ffb8dfbb9465cdc555374a291a38e7188119226b41a64c2bf` |
| 3 | `theorem` | [inner_vsub_vsub_left_eq_dist_sq_left_iff](../../../../../mathematics/Topology/MetricTopology/Affine/Variantc61c029e876df3cf0735e16c0cc98ca10012a0347c3dc1db034abb02b9fb6296.lean/declarations/inner-vsub-vsub-left-eq-dist-sq-left-iff--1164d6e8efd2dc801261c010.md) | 51 | `result-track:1164d6e8efd2dc801261c0104820d6bce16f6ef221ea806a9751b96663fa5b90` |
| 4 | `theorem` | [inner_vsub_vsub_left_eq_dist_sq_right_iff](../../../../../mathematics/Topology/MetricTopology/Affine/Variantc61c029e876df3cf0735e16c0cc98ca10012a0347c3dc1db034abb02b9fb6296.lean/declarations/inner-vsub-vsub-left-eq-dist-sq-right-iff--ececf4516e76e36c16651d10.md) | 56 | `result-track:ececf4516e76e36c16651d106b3087cfb00756df3fde29b9a79c7257b8807ea8` |
| 5 | `theorem` | [inner_vsub_vsub_right_eq_dist_sq_left_iff](../../../../../mathematics/Topology/MetricTopology/Affine/Variantc61c029e876df3cf0735e16c0cc98ca10012a0347c3dc1db034abb02b9fb6296.lean/declarations/inner-vsub-vsub-right-eq-dist-sq-left-iff--681b88a2c1fa8b8e60d2ce48.md) | 60 | `result-track:681b88a2c1fa8b8e60d2ce488b1f11dd23a4823edeb5a07e6717eccb9cc941c8` |
| 6 | `theorem` | [inner_vsub_vsub_right_eq_dist_sq_right_iff](../../../../../mathematics/Topology/MetricTopology/Affine/Variantc61c029e876df3cf0735e16c0cc98ca10012a0347c3dc1db034abb02b9fb6296.lean/declarations/inner-vsub-vsub-right-eq-dist-sq-right-iff--f71a36dd1a82fe729c0ef4c7.md) | 65 | `result-track:f71a36dd1a82fe729c0ef4c70fa1f808a44e71f4826cc8ff3b53b0c408f3560a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
