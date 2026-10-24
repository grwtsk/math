# Verification target: GRWTSK.Topology.GeneralTopology.ProperSpace.Variant93851fda7d7e943af0ccd6b52465c7c599e140616b922d8d5d55ad36be0f52b7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c771cac44ca0d00c9ef1e4f078d8b8be470c271",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ProperSpace/Variant93851fda7d7e943af0ccd6b52465c7c599e140616b922d8d5d55ad36be0f52b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variant93851fda7d7e943af0ccd6b52465c7c599e140616b922d8d5d55ad36be0f52b7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variant93851fda7d7e943af0ccd6b52465c7c599e140616b922d8d5d55ad36be0f52b7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c771cac44ca0d00c9ef1e4f078d8b8be470c271`.

Source path: `GRWTSK/Topology/GeneralTopology/ProperSpace/Variant93851fda7d7e943af0ccd6b52465c7c599e140616b922d8d5d55ad36be0f52b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ProperSpace/Variant93851fda7d7e943af0ccd6b52465c7c599e140616b922d8d5d55ad36be0f52b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Pseudo.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Pseudo.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Pseudo.Pi` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.IsLUB` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ProperSpace](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variant93851fda7d7e943af0ccd6b52465c7c599e140616b922d8d5d55ad36be0f52b7.lean/declarations/properspace--a4de557a804356ea8cfcac45.md) | 44 | `declaration-track:a4de557a804356ea8cfcac456c9f1d7a29a8ed5512b3470898315040f711fb21` |
| 2 | `theorem` | [isCompact_sphere](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variant93851fda7d7e943af0ccd6b52465c7c599e140616b922d8d5d55ad36be0f52b7.lean/declarations/iscompact-sphere--06c03576e476846ed9be8e4b.md) | 50 | `result-track:06c03576e476846ed9be8e4b9d64e206f76176f44fc1ea6090ce54a2a5bef79b` |
| 3 | `instance` | [Metric.sphere.compactSpace](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variant93851fda7d7e943af0ccd6b52465c7c599e140616b922d8d5d55ad36be0f52b7.lean/declarations/metric-sphere-compactspace--4e9c677d90cf44b9a5ed0c0c.md) | 55 | `declaration-track:4e9c677d90cf44b9a5ed0c0c78089adffa7aab35f2d9bf3e79f841b7499d27a8` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variant93851fda7d7e943af0ccd6b52465c7c599e140616b922d8d5d55ad36be0f52b7.lean/declarations/instance--0a7f92554096a2c4710e9325.md) | 63 | `declaration-track:0a7f92554096a2c4710e9325cf82de58d05800cda830a5facd12911030db30c0` |
| 5 | `theorem` | [ProperSpace.of_isCompact_closedBall_of_le](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variant93851fda7d7e943af0ccd6b52465c7c599e140616b922d8d5d55ad36be0f52b7.lean/declarations/properspace-of-iscompact-closedball-of-le--b92de3c82bfd5dbf5bde513a.md) | 74 | `result-track:b92de3c82bfd5dbf5bde513a0eacba606c88eb95fce4ee3bdbdd9fc824b1993f` |
| 6 | `theorem` | [ProperSpace.of_seq_closedBall](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variant93851fda7d7e943af0ccd6b52465c7c599e140616b922d8d5d55ad36be0f52b7.lean/declarations/properspace-of-seq-closedball--2060e2adf71ef7409d91c50a.md) | 81 | `result-track:2060e2adf71ef7409d91c50a65c05ee8f7590ad38d25a29809bbf43224f136a0` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variant93851fda7d7e943af0ccd6b52465c7c599e140616b922d8d5d55ad36be0f52b7.lean/declarations/instance--78890790b9c1b995cd57b999.md) | 90 | `declaration-track:78890790b9c1b995cd57b9992fa948c0e9657c7963e69b19406e12a6ba93165f` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variant93851fda7d7e943af0ccd6b52465c7c599e140616b922d8d5d55ad36be0f52b7.lean/declarations/instance--2b9a594d47d4d3f445fc0ab6.md) | 95 | `declaration-track:2b9a594d47d4d3f445fc0ab6d4df3234e5b688c86a2809a9732835967a059c20` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variant93851fda7d7e943af0ccd6b52465c7c599e140616b922d8d5d55ad36be0f52b7.lean/declarations/instance--c7f79df94936e2aa320af5d5.md) | 105 | `declaration-track:c7f79df94936e2aa320af5d5c0695b3b3bfce0d591c1c3e92811e1f9ae10cf25` |
| 10 | `instance` | [prod_properSpace](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variant93851fda7d7e943af0ccd6b52465c7c599e140616b922d8d5d55ad36be0f52b7.lean/declarations/prod-properspace--0065f63f574bdc8f8be19c34.md) | 119 | `declaration-track:0065f63f574bdc8f8be19c3437ff2c087b581a2c0d9ce88aef515976cac243ab` |
| 11 | `instance` | [pi_properSpace](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variant93851fda7d7e943af0ccd6b52465c7c599e140616b922d8d5d55ad36be0f52b7.lean/declarations/pi-properspace--d4a60dcb0ce30e7318cdb94b.md) | 127 | `declaration-track:d4a60dcb0ce30e7318cdb94b1857f8983d3f8258eac1b50011ea43969d3c0625` |
| 12 | `lemma` | [ProperSpace.of_isClosed](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variant93851fda7d7e943af0ccd6b52465c7c599e140616b922d8d5d55ad36be0f52b7.lean/declarations/properspace-of-isclosed--8a6e4f245f0dd2de30961be0.md) | 135 | `result-track:8a6e4f245f0dd2de30961be01ad4cbc18ce36310abdf6c451622bba2137c57ec` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variant93851fda7d7e943af0ccd6b52465c7c599e140616b922d8d5d55ad36be0f52b7.lean/declarations/instance--9bb32c04150e3bcbc9f8f534.md) | 144 | `declaration-track:9bb32c04150e3bcbc9f8f534c0f6d5f0eb0a636f39f91f81e189ed3062bd7c6c` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variant93851fda7d7e943af0ccd6b52465c7c599e140616b922d8d5d55ad36be0f52b7.lean/declarations/instance--33e652798c91cf0b92849a59.md) | 145 | `declaration-track:33e652798c91cf0b92849a59756bbc467216b7e0b03bc4f130b0a2ef12e87496` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ProperSpace/Variant93851fda7d7e943af0ccd6b52465c7c599e140616b922d8d5d55ad36be0f52b7.lean/declarations/instance--a7895d7575e9b97aa4df759d.md) | 146 | `declaration-track:a7895d7575e9b97aa4df759dc1e09f4591add3f841508c5fd5dfc1668ae571f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
