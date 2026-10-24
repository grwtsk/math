# Verification target: GRWTSK.Topology.GeneralTopology.Prod.Variant32e6d26b909df8796c2d231d3bdf423550d5c98d06e590ec74727b6b4ba54ee6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4111c12d0256cb4fc3bd291433a41b29817dade",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Prod/Variant32e6d26b909df8796c2d231d3bdf423550d5c98d06e590ec74727b6b4ba54ee6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant32e6d26b909df8796c2d231d3bdf423550d5c98d06e590ec74727b6b4ba54ee6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant32e6d26b909df8796c2d231d3bdf423550d5c98d06e590ec74727b6b4ba54ee6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4111c12d0256cb4fc3bd291433a41b29817dade`.

Source path: `GRWTSK/Topology/GeneralTopology/Prod/Variant32e6d26b909df8796c2d231d3bdf423550d5c98d06e590ec74727b6b4ba54ee6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Prod/Variant32e6d26b909df8796c2d231d3bdf423550d5c98d06e590ec74727b6b4ba54ee6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.OperatorNorm.Bilinear` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [norm_fst_le](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant32e6d26b909df8796c2d231d3bdf423550d5c98d06e590ec74727b6b4ba54ee6.lean/declarations/norm-fst-le--6d1c34704cf5d405a95605dd.md) | 39 | `result-track:6d1c34704cf5d405a95605ddb65589b3c0187b6314919f53c1493e4436cb057d` |
| 2 | `lemma` | [norm_snd_le](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant32e6d26b909df8796c2d231d3bdf423550d5c98d06e590ec74727b6b4ba54ee6.lean/declarations/norm-snd-le--e8098c3e18a1bd6cb0387fdf.md) | 44 | `result-track:e8098c3e18a1bd6cb0387fdf0515bfd2b8642e31359853d9d7865ea934c63804` |
| 3 | `theorem` | [opNorm_prod](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant32e6d26b909df8796c2d231d3bdf423550d5c98d06e590ec74727b6b4ba54ee6.lean/declarations/opnorm-prod--d81437b24613fa0ce8be410a.md) | 52 | `result-track:d81437b24613fa0ce8be410a4928c276a6c27bbc23f6a98e8456343474d3d088` |
| 4 | `theorem` | [opNNNorm_prod](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant32e6d26b909df8796c2d231d3bdf423550d5c98d06e590ec74727b6b4ba54ee6.lean/declarations/opnnnorm-prod--2203397ea65f1025b024c6fd.md) | 65 | `result-track:2203397ea65f1025b024c6fdb358ced88346f076ea7f88b7540d2adf615d6b0f` |
| 5 | `def` | [prodₗᵢ](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant32e6d26b909df8796c2d231d3bdf423550d5c98d06e590ec74727b6b4ba54ee6.lean/declarations/prod--47e6aec0e14df6d418063096.md) | 70 | `declaration-track:47e6aec0e14df6d41806309652d7fa5a4c1f726e3c31dd7e9b2a18f40882fe4f` |
| 6 | `def` | [prodMapL](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant32e6d26b909df8796c2d231d3bdf423550d5c98d06e590ec74727b6b4ba54ee6.lean/declarations/prodmapl--176cd81f874bac399b9576b9.md) | 89 | `declaration-track:176cd81f874bac399b9576b970f7bce3700d124f2c56e9b21230dca962b04ff9` |
| 7 | `theorem` | [prodMapL_apply](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant32e6d26b909df8796c2d231d3bdf423550d5c98d06e590ec74727b6b4ba54ee6.lean/declarations/prodmapl-apply--8112026bea0b9b4b7c0a4ff3.md) | 114 | `result-track:8112026bea0b9b4b7c0a4ff3440e80cbdbf8839acfe1e29bc8f4af66ec6bc792` |
| 8 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.NormFstLe.Variantba61b8c5e0ece12e6a80bdabfbc93221e57fcba5e51618d4bd34771b61f00842.Continuous.prod_mapL](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant32e6d26b909df8796c2d231d3bdf423550d5c98d06e590ec74727b6b4ba54ee6.lean/declarations/root-grwtsk-topology-generaltopology-normfstle-variantba61b8c5e0ece12e6a--47d48da6655860b55e36a887.md) | 120 | `result-track:47d48da6655860b55e36a88727ba75737f2494fe4cd44882d5562fcafe320cec` |
| 9 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.NormFstLe.Variantba61b8c5e0ece12e6a80bdabfbc93221e57fcba5e51618d4bd34771b61f00842.Continuous.prod_map_equivL](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant32e6d26b909df8796c2d231d3bdf423550d5c98d06e590ec74727b6b4ba54ee6.lean/declarations/root-grwtsk-topology-generaltopology-normfstle-variantba61b8c5e0ece12e6a--038686fc81a5e2952e25998b.md) | 124 | `result-track:038686fc81a5e2952e25998ba7fd6e4a8fbad45b78bd52804cc7fc9e9cc2fd54` |
| 10 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.NormFstLe.Variantba61b8c5e0ece12e6a80bdabfbc93221e57fcba5e51618d4bd34771b61f00842.ContinuousOn.prod_mapL](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant32e6d26b909df8796c2d231d3bdf423550d5c98d06e590ec74727b6b4ba54ee6.lean/declarations/root-grwtsk-topology-generaltopology-normfstle-variantba61b8c5e0ece12e6a--45db02e5b3388c5ef97096f7.md) | 129 | `result-track:45db02e5b3388c5ef97096f7803e6b153d5fd7ae3460921a9836fa246924558c` |
| 11 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.NormFstLe.Variantba61b8c5e0ece12e6a80bdabfbc93221e57fcba5e51618d4bd34771b61f00842.ContinuousOn.prod_map_equivL](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant32e6d26b909df8796c2d231d3bdf423550d5c98d06e590ec74727b6b4ba54ee6.lean/declarations/root-grwtsk-topology-generaltopology-normfstle-variantba61b8c5e0ece12e6a--5406ce6279ad6c2e28b20f9d.md) | 134 | `result-track:5406ce6279ad6c2e28b20f9d23f7cc55d0321de7bd98ab233798aa28ab5bc91d` |
| 12 | `lemma` | [norm_fst](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant32e6d26b909df8796c2d231d3bdf423550d5c98d06e590ec74727b6b4ba54ee6.lean/declarations/norm-fst--2ccf4d3edc7b4b95a1a19364.md) | 155 | `result-track:2ccf4d3edc7b4b95a1a19364a5f46bddc6353cd105dcb5489a71903c56cafe93` |
| 13 | `lemma` | [norm_snd](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant32e6d26b909df8796c2d231d3bdf423550d5c98d06e590ec74727b6b4ba54ee6.lean/declarations/norm-snd--1c9cea3a67550b85d06bec83.md) | 165 | `result-track:1c9cea3a67550b85d06bec83039c561794678dba752caea12772f0891a31b5af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
