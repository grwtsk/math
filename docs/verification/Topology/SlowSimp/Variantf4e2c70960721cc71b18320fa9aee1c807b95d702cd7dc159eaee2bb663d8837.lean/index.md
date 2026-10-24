# Verification target: GRWTSK.Topology.SlowSimp.Variantf4e2c70960721cc71b18320fa9aee1c807b95d702cd7dc159eaee2bb663d8837

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08d1c8a284d07137776e55d0fa1e3254b1aa2495",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/SlowSimp/Variantf4e2c70960721cc71b18320fa9aee1c807b95d702cd7dc159eaee2bb663d8837.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/SlowSimp/Variantf4e2c70960721cc71b18320fa9aee1c807b95d702cd7dc159eaee2bb663d8837.lean/index.md) · [Full source](../../../../mathematics/Topology/SlowSimp/Variantf4e2c70960721cc71b18320fa9aee1c807b95d702cd7dc159eaee2bb663d8837.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08d1c8a284d07137776e55d0fa1e3254b1aa2495`.

Source path: `GRWTSK/Topology/SlowSimp/Variantf4e2c70960721cc71b18320fa9aee1c807b95d702cd7dc159eaee2bb663d8837.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/SlowSimp/Variantf4e2c70960721cc71b18320fa9aee1c807b95d702cd7dc159eaee2bb663d8837.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PointedSpace](../../../../mathematics/Topology/SlowSimp/Variantf4e2c70960721cc71b18320fa9aee1c807b95d702cd7dc159eaee2bb663d8837.lean/declarations/pointedspace--9987f67977dca2ea85c6108a.md) | 23 | `declaration-track:9987f67977dca2ea85c6108a703d41f4e3601759c8d750f508650662a618a40e` |
| 2 | `structure` | [Hom](../../../../mathematics/Topology/SlowSimp/Variantf4e2c70960721cc71b18320fa9aee1c807b95d702cd7dc159eaee2bb663d8837.lean/declarations/hom--69b7113cf76f5b4a1db12033.md) | 32 | `declaration-track:69b7113cf76f5b4a1db120337bbe02d6421cb6103e2814dc5270ddd4e611b75f` |
| 3 | `def` | [id](../../../../mathematics/Topology/SlowSimp/Variantf4e2c70960721cc71b18320fa9aee1c807b95d702cd7dc159eaee2bb663d8837.lean/declarations/id--040e296ffdd3c668879e34bd.md) | 40 | `declaration-track:040e296ffdd3c668879e34bd4d88868707eff67989afe280d0c44c0d9b2de97b` |
| 4 | `def` | [comp](../../../../mathematics/Topology/SlowSimp/Variantf4e2c70960721cc71b18320fa9aee1c807b95d702cd7dc159eaee2bb663d8837.lean/declarations/comp--d16c1e1f465c16eda283b1d5.md) | 42 | `declaration-track:d16c1e1f465c16eda283b1d5f0f6e1e9954172238119451145801449638f8e5d` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Topology/SlowSimp/Variantf4e2c70960721cc71b18320fa9aee1c807b95d702cd7dc159eaee2bb663d8837.lean/declarations/instance--74c8e4da008f6013223d584f.md) | 47 | `declaration-track:74c8e4da008f6013223d584f0a092e00be11bafb7bf214437b3026f1c70ccbba` |
| 6 | `def` | [PointedSpaceEquiv_inverse](../../../../mathematics/Topology/SlowSimp/Variantf4e2c70960721cc71b18320fa9aee1c807b95d702cd7dc159eaee2bb663d8837.lean/declarations/pointedspaceequiv-inverse--29abd2778ff9efa3a44d1ba7.md) | 55 | `declaration-track:29abd2778ff9efa3a44d1ba78a9de363c34e654998653b47e68974eed878af11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
