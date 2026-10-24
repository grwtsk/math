# Verification target: GRWTSK.Topology.GeneralTopology.StablePointEmbedding.Variant8b1e025b09b8b1787cec4ba9da2d3fb0802bf10680e2b03aa1bed8a98220913d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2b135a96670f36ef09c62d7fbd06d1bce8c7ab0",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/StablePointEmbedding/Variant8b1e025b09b8b1787cec4ba9da2d3fb0802bf10680e2b03aa1bed8a98220913d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/StablePointEmbedding/Variant8b1e025b09b8b1787cec4ba9da2d3fb0802bf10680e2b03aa1bed8a98220913d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/StablePointEmbedding/Variant8b1e025b09b8b1787cec4ba9da2d3fb0802bf10680e2b03aa1bed8a98220913d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2b135a96670f36ef09c62d7fbd06d1bce8c7ab0`.

Source path: `GRWTSK/Topology/GeneralTopology/StablePointEmbedding/Variant8b1e025b09b8b1787cec4ba9da2d3fb0802bf10680e2b03aa1bed8a98220913d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/StablePointEmbedding/Variant8b1e025b09b8b1787cec4ba9da2d3fb0802bf10680e2b03aa1bed8a98220913d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Discovery.OpenElement` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Prismatic.LoopClosure` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Hausdorff` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [StableProbeFamily](../../../../../mathematics/Topology/GeneralTopology/StablePointEmbedding/Variant8b1e025b09b8b1787cec4ba9da2d3fb0802bf10680e2b03aa1bed8a98220913d.lean/declarations/stableprobefamily--86aef23b392061a9d1788de1.md) | 29 | `declaration-track:86aef23b392061a9d1788de117414de394485844776d21a2602b2be29259d24b` |
| 2 | `def` | [profile](../../../../../mathematics/Topology/GeneralTopology/StablePointEmbedding/Variant8b1e025b09b8b1787cec4ba9da2d3fb0802bf10680e2b03aa1bed8a98220913d.lean/declarations/profile--dd2134f1ecf5bfa5dae452a7.md) | 45 | `declaration-track:dd2134f1ecf5bfa5dae452a71eaa1a9c067fb41f3a7b47b39f8051947e069288` |
| 3 | `structure` | [Rigid](../../../../../mathematics/Topology/GeneralTopology/StablePointEmbedding/Variant8b1e025b09b8b1787cec4ba9da2d3fb0802bf10680e2b03aa1bed8a98220913d.lean/declarations/rigid--f83b342ca6a2fe0d5feae344.md) | 52 | `declaration-track:f83b342ca6a2fe0d5feae34422956673235db123b0b9e989247dade8604468a2` |
| 4 | `theorem` | [Rigid.isEmbedding](../../../../../mathematics/Topology/GeneralTopology/StablePointEmbedding/Variant8b1e025b09b8b1787cec4ba9da2d3fb0802bf10680e2b03aa1bed8a98220913d.lean/declarations/rigid-isembedding--c7b29a8c03bbdb8581ceb08a.md) | 60 | `result-track:c7b29a8c03bbdb8581ceb08a6d939d0f43c07030d197b871e583b8482807c620` |
| 5 | `theorem` | [Rigid.injective](../../../../../mathematics/Topology/GeneralTopology/StablePointEmbedding/Variant8b1e025b09b8b1787cec4ba9da2d3fb0802bf10680e2b03aa1bed8a98220913d.lean/declarations/rigid-injective--6d1114a1e3d5c240b5351f2a.md) | 66 | `result-track:6d1114a1e3d5c240b5351f2a17e63ea1e2f1ab730bac8fbd6b6d20df7673e6dd` |
| 6 | `def` | [CompactProbeRigidityStatement](../../../../../mathematics/Topology/GeneralTopology/StablePointEmbedding/Variant8b1e025b09b8b1787cec4ba9da2d3fb0802bf10680e2b03aa1bed8a98220913d.lean/declarations/compactproberigiditystatement--b72c1b9a42dc557bc1b20ea6.md) | 77 | `declaration-track:b72c1b9a42dc557bc1b20ea68a8a508371fe451c754442bc169c5b5cfe4993ba` |
| 7 | `def` | [compactProbeRigidityOpenElement](../../../../../mathematics/Topology/GeneralTopology/StablePointEmbedding/Variant8b1e025b09b8b1787cec4ba9da2d3fb0802bf10680e2b03aa1bed8a98220913d.lean/declarations/compactproberigidityopenelement--a22740f0db822743cf2581b5.md) | 89 | `declaration-track:a22740f0db822743cf2581b5cb36bc9b2109c34a9c0f9ef9ae7df28c7fbf98ba` |
| 8 | `theorem` | [compactProbeRigidity](../../../../../mathematics/Topology/GeneralTopology/StablePointEmbedding/Variant8b1e025b09b8b1787cec4ba9da2d3fb0802bf10680e2b03aa1bed8a98220913d.lean/declarations/compactproberigidity--2c836404ce3d213bc5836531.md) | 111 | `result-track:2c836404ce3d213bc58365316aa672656d02947fd3ed6d0429254fc616b7114d` |
| 9 | `def` | [compactProbeRigidityTheoremElement](../../../../../mathematics/Topology/GeneralTopology/StablePointEmbedding/Variant8b1e025b09b8b1787cec4ba9da2d3fb0802bf10680e2b03aa1bed8a98220913d.lean/declarations/compactproberigiditytheoremelement--514dabd2321ddf256ad40f01.md) | 124 | `declaration-track:514dabd2321ddf256ad40f01f7e8cf0ed76d76a49df4991482bba974d37bef6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
