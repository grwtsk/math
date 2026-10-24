# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.Completion.Variantafb4d568bad3ca8ab82676cfa9d378ec93c8cb40f8c5c2873dc9544ebb3879b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f074fd20fe4b1df23fe4ad5eb8e9fa690143beb3",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variantafb4d568bad3ca8ab82676cfa9d378ec93c8cb40f8c5c2873dc9544ebb3879b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Completion/Variantafb4d568bad3ca8ab82676cfa9d378ec93c8cb40f8c5c2873dc9544ebb3879b5.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Completion/Variantafb4d568bad3ca8ab82676cfa9d378ec93c8cb40f8c5c2873dc9544ebb3879b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f074fd20fe4b1df23fe4ad5eb8e9fa690143beb3`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variantafb4d568bad3ca8ab82676cfa9d378ec93c8cb40f8c5c2873dc9544ebb3879b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Completion/Variantafb4d568bad3ca8ab82676cfa9d378ec93c8cb40f8c5c2873dc9544ebb3879b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Rhetorical.Hilbert.Quotient` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RhetoricalSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Completion/Variantafb4d568bad3ca8ab82676cfa9d378ec93c8cb40f8c5c2873dc9544ebb3879b5.lean/declarations/rhetoricalspace--e4f869a0ffe16a063b1c666f.md) | 28 | `declaration-track:e4f869a0ffe16a063b1c666f6f03336a67b7ab5caf615c7794ede1e558aa9add` |
| 2 | `def` | [completePreRhetorical](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Completion/Variantafb4d568bad3ca8ab82676cfa9d378ec93c8cb40f8c5c2873dc9544ebb3879b5.lean/declarations/completeprerhetorical--1b00eee01608d8800d53e1df.md) | 33 | `declaration-track:1b00eee01608d8800d53e1df688be9d9b619578d4b6bd2c5a1dca08c0817c703` |
| 3 | `def` | [rhetoricalSpace_hilbertStructure](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Completion/Variantafb4d568bad3ca8ab82676cfa9d378ec93c8cb40f8c5c2873dc9544ebb3879b5.lean/declarations/rhetoricalspace-hilbertstructure--4730e794c49b57c8cac2fcc1.md) | 38 | `declaration-track:4730e794c49b57c8cac2fcc17e0a211a0ac170279dbf89d04dc365faa9273c70` |
| 4 | `theorem` | [rhetoricalSpace_isHilbert](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Completion/Variantafb4d568bad3ca8ab82676cfa9d378ec93c8cb40f8c5c2873dc9544ebb3879b5.lean/declarations/rhetoricalspace-ishilbert--0c5b563cce6778721f52e77b.md) | 43 | `result-track:0c5b563cce6778721f52e77b35cb363cf39408a4c0a73b1629e00b6808872830` |
| 5 | `theorem` | [inner_completePreRhetorical](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Completion/Variantafb4d568bad3ca8ab82676cfa9d378ec93c8cb40f8c5c2873dc9544ebb3879b5.lean/declarations/inner-completeprerhetorical--32ae0a1110222e24bc62e550.md) | 49 | `result-track:32ae0a1110222e24bc62e550fcf42e6a8e8ae90a217a7b03aaa3f4dc86a9ae54` |
| 6 | `theorem` | [completePreRhetorical_denseRange](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Completion/Variantafb4d568bad3ca8ab82676cfa9d378ec93c8cb40f8c5c2873dc9544ebb3879b5.lean/declarations/completeprerhetorical-denserange--1bba0d07211df8433175c3fa.md) | 57 | `result-track:1bba0d07211df8433175c3faa95d3d728c06a7c6412fd17499c738f794e59f9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
