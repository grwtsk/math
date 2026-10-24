# Verification target: GRWTSK.Topology.MetricTopology.Equicontinuity.Variant851b68847074317e1c8e3bf98bd81fae61494990e542ca54a2eb416e27ac1450

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6b57e7e49085dd2eab56ec16de386e54f4a2901",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Equicontinuity/Variant851b68847074317e1c8e3bf98bd81fae61494990e542ca54a2eb416e27ac1450.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant851b68847074317e1c8e3bf98bd81fae61494990e542ca54a2eb416e27ac1450.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant851b68847074317e1c8e3bf98bd81fae61494990e542ca54a2eb416e27ac1450.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6b57e7e49085dd2eab56ec16de386e54f4a2901`.

Source path: `GRWTSK/Topology/MetricTopology/Equicontinuity/Variant851b68847074317e1c8e3bf98bd81fae61494990e542ca54a2eb416e27ac1450.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Equicontinuity/Variant851b68847074317e1c8e3bf98bd81fae61494990e542ca54a2eb416e27ac1450.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.Equicontinuity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Pseudo.Lemmas` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [equicontinuousAt_iff_right](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant851b68847074317e1c8e3bf98bd81fae61494990e542ca54a2eb416e27ac1450.lean/declarations/equicontinuousat-iff-right--2cf254a40fd1b788a43568fb.md) | 43 | `result-track:2cf254a40fd1b788a43568fbe959139630ab20e78ea9b8b8d09b9d96494069c6` |
| 2 | `theorem` | [equicontinuousAt_iff](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant851b68847074317e1c8e3bf98bd81fae61494990e542ca54a2eb416e27ac1450.lean/declarations/equicontinuousat-iff--5240dc7beecd115df72fa694.md) | 48 | `result-track:5240dc7beecd115df72fa6940e24b9cb25e92301d5a97fe752a4b17908b44b7e` |
| 3 | `theorem` | [equicontinuousAt_iff_pair](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant851b68847074317e1c8e3bf98bd81fae61494990e542ca54a2eb416e27ac1450.lean/declarations/equicontinuousat-iff-pair--6c0eca7197d01c30dc3c5cb1.md) | 54 | `result-track:6c0eca7197d01c30dc3c5cb1632353edf0ce32a1fd3f7ec7554b44dd12134df2` |
| 4 | `theorem` | [uniformEquicontinuous_iff_right](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant851b68847074317e1c8e3bf98bd81fae61494990e542ca54a2eb416e27ac1450.lean/declarations/uniformequicontinuous-iff-right--d65ecb4e46fac45f685662b3.md) | 69 | `result-track:d65ecb4e46fac45f685662b3e9e95799e3ad5299f83f572e5d6755311590f4d6` |
| 5 | `theorem` | [uniformEquicontinuous_iff](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant851b68847074317e1c8e3bf98bd81fae61494990e542ca54a2eb416e27ac1450.lean/declarations/uniformequicontinuous-iff--6e031f68d77a5eb8ac8f25fd.md) | 75 | `result-track:6e031f68d77a5eb8ac8f25fdaab35e9e2c9b4328778faf3dc84a89e81c4bea64` |
| 6 | `theorem` | [equicontinuousAt_of_continuity_modulus](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant851b68847074317e1c8e3bf98bd81fae61494990e542ca54a2eb416e27ac1450.lean/declarations/equicontinuousat-of-continuity-modulus--581531fdcdc23d706df9d481.md) | 83 | `result-track:581531fdcdc23d706df9d481bd1f09ff7c5c6cfcfd9649aae0ec50be017a2bb5` |
| 7 | `theorem` | [uniformEquicontinuous_of_continuity_modulus](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant851b68847074317e1c8e3bf98bd81fae61494990e542ca54a2eb416e27ac1450.lean/declarations/uniformequicontinuous-of-continuity-modulus--1fe40b5305361cf9057b5d5b.md) | 95 | `result-track:1fe40b5305361cf9057b5d5b38c5b331a115d6d54003e6a7757ce9960a155dd1` |
| 8 | `theorem` | [equicontinuous_of_continuity_modulus](../../../../../mathematics/Topology/MetricTopology/Equicontinuity/Variant851b68847074317e1c8e3bf98bd81fae61494990e542ca54a2eb416e27ac1450.lean/declarations/equicontinuous-of-continuity-modulus--734b5caaa5ab97d9ba80273d.md) | 110 | `result-track:734b5caaa5ab97d9ba80273d73cd16df379d66f4310aded827aa2c3bca600574` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
