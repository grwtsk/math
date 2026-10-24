# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.Uniformity.Variant57cd395dfc2492244906b4cd136ca48bf553fca053e5fdb3033132f105a7d265

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79e68cd4e8e930ab7b13e9b4e96e35b8a0101d55",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant57cd395dfc2492244906b4cd136ca48bf553fca053e5fdb3033132f105a7d265.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant57cd395dfc2492244906b4cd136ca48bf553fca053e5fdb3033132f105a7d265.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant57cd395dfc2492244906b4cd136ca48bf553fca053e5fdb3033132f105a7d265.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79e68cd4e8e930ab7b13e9b4e96e35b8a0101d55`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant57cd395dfc2492244906b4cd136ca48bf553fca053e5fdb3033132f105a7d265.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant57cd395dfc2492244906b4cd136ca48bf553fca053e5fdb3033132f105a7d265.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofPreNNDist](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant57cd395dfc2492244906b4cd136ca48bf553fca053e5fdb3033132f105a7d265.lean/declarations/ofprenndist--d9828ee51142812b81255ada.md) | 62 | `declaration-track:d9828ee51142812b81255ada181779418a2b4a5a87c6de3f50ad1a1c75aeccab` |
| 2 | `theorem` | [dist_ofPreNNDist](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant57cd395dfc2492244906b4cd136ca48bf553fca053e5fdb3033132f105a7d265.lean/declarations/dist-ofprenndist--243a19e4bbf17525219bca27.md) | 86 | `result-track:243a19e4bbf17525219bca2715dc5578b48899e866bc82b343ae219aa473e2b5` |
| 3 | `theorem` | [dist_ofPreNNDist_le](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant57cd395dfc2492244906b4cd136ca48bf553fca053e5fdb3033132f105a7d265.lean/declarations/dist-ofprenndist-le--612649382bb48d080943bedc.md) | 93 | `result-track:612649382bb48d080943bedc036ea151c17cce985430ac7d2528c15240f05418` |
| 4 | `theorem` | [le_two_mul_dist_ofPreNNDist](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant57cd395dfc2492244906b4cd136ca48bf553fca053e5fdb3033132f105a7d265.lean/declarations/le-two-mul-dist-ofprenndist--b636d8eb0fc00d76fe5919f3.md) | 105 | `result-track:b636d8eb0fc00d76fe5919f3581dce9b5230aed2d61ed3e776c3c72584a926ef` |
| 5 | `theorem` | [UniformSpace.metrizable_uniformity](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant57cd395dfc2492244906b4cd136ca48bf553fca053e5fdb3033132f105a7d265.lean/declarations/uniformspace-metrizable-uniformity--448db47b6d1f4bd690b8430b.md) | 181 | `result-track:448db47b6d1f4bd690b8430bcc2cd3df6379d07cbc2c9be65d0679e915c93406` |
| 6 | `abbrev` | [UniformSpace.pseudoMetricSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant57cd395dfc2492244906b4cd136ca48bf553fca053e5fdb3033132f105a7d265.lean/declarations/uniformspace-pseudometricspace--8e0dc8aa2e6f643e12cb2651.md) | 247 | `declaration-track:8e0dc8aa2e6f643e12cb265126f8016d6e75a82e6e179854443af8d0644a1ea0` |
| 7 | `abbrev` | [UniformSpace.metricSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant57cd395dfc2492244906b4cd136ca48bf553fca053e5fdb3033132f105a7d265.lean/declarations/uniformspace-metricspace--9a0381b3e5a8a9550657be90.md) | 254 | `declaration-track:9a0381b3e5a8a9550657be90356fae4075d21fc61e5fae404660336150c98feb` |
| 8 | `theorem` | [UniformSpace.metrizableSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant57cd395dfc2492244906b4cd136ca48bf553fca053e5fdb3033132f105a7d265.lean/declarations/uniformspace-metrizablespace--6a6118c6279a1ad2d5dd4147.md) | 260 | `result-track:6a6118c6279a1ad2d5dd41479cc73801952eb71eb0253ea6b89789875cd7dec5` |
| 9 | `abbrev` | [TopologicalSpace.pseudoMetrizableSpacePseudoMetric](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant57cd395dfc2492244906b4cd136ca48bf553fca053e5fdb3033132f105a7d265.lean/declarations/topologicalspace-pseudometrizablespacepseudometric--0d075a0b6a8dbcd02efdf14a.md) | 265 | `declaration-track:0d075a0b6a8dbcd02efdf14a760d48de2ac4409fb5871ffcc5856186b37b5006` |
| 10 | `example` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant57cd395dfc2492244906b4cd136ca48bf553fca053e5fdb3033132f105a7d265.lean/declarations/example--d8e0f52e596e3f84dc976ef9.md) | 271 | `declaration-track:d8e0f52e596e3f84dc976ef90414cbf5b390a960c0f0bf6ea42ef3b99b62cf0d` |
| 11 | `abbrev` | [TopologicalSpace.metrizableSpaceMetric](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant57cd395dfc2492244906b4cd136ca48bf553fca053e5fdb3033132f105a7d265.lean/declarations/topologicalspace-metrizablespacemetric--4554bc4a9f5740ac87c0e690.md) | 276 | `declaration-track:4554bc4a9f5740ac87c0e690c53795ee8f387c86906f961f21e8ff4c4dcabd3a` |
| 12 | `example` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant57cd395dfc2492244906b4cd136ca48bf553fca053e5fdb3033132f105a7d265.lean/declarations/example--6f9f095f6e7e226c64934817.md) | 281 | `declaration-track:6f9f095f6e7e226c649348170eb58ca41f6a7c902a6e03c3db4ff672cf3dbf25` |
| 13 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant57cd395dfc2492244906b4cd136ca48bf553fca053e5fdb3033132f105a7d265.lean/declarations/instance--aaf3deda7d4ae674a0cfe68d.md) | 288 | `declaration-track:aaf3deda7d4ae674a0cfe68da5bdee7ebaa4a50e56b837a15871c0a6673a62f0` |
| 14 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant57cd395dfc2492244906b4cd136ca48bf553fca053e5fdb3033132f105a7d265.lean/declarations/instance--f130b9c8bfbcf3c4ac180d4c.md) | 292 | `declaration-track:f130b9c8bfbcf3c4ac180d4ca324b98f3913e7374d31f554a804170e2095a793` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
