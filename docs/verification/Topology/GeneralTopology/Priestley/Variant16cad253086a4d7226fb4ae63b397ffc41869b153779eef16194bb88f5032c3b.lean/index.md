# Verification target: GRWTSK.Topology.GeneralTopology.Priestley.Variant16cad253086a4d7226fb4ae63b397ffc41869b153779eef16194bb88f5032c3b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c907d4295772f4732f7af1960ea5538ccb0e9a1",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Priestley/Variant16cad253086a4d7226fb4ae63b397ffc41869b153779eef16194bb88f5032c3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Priestley/Variant16cad253086a4d7226fb4ae63b397ffc41869b153779eef16194bb88f5032c3b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Priestley/Variant16cad253086a4d7226fb4ae63b397ffc41869b153779eef16194bb88f5032c3b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c907d4295772f4732f7af1960ea5538ccb0e9a1`.

Source path: `GRWTSK/Topology/GeneralTopology/Priestley/Variant16cad253086a4d7226fb4ae63b397ffc41869b153779eef16194bb88f5032c3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Priestley/Variant16cad253086a4d7226fb4ae63b397ffc41869b153779eef16194bb88f5032c3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Separation.Hausdorff` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Clopen` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PriestleySpace](../../../../../mathematics/Topology/GeneralTopology/Priestley/Variant16cad253086a4d7226fb4ae63b397ffc41869b153779eef16194bb88f5032c3b.lean/declarations/priestleyspace--5fa8d01619df58b310fe2d4c.md) | 46 | `declaration-track:5fa8d01619df58b310fe2d4c4a03b97819e883acd97f517e8c193efefe5be46b` |
| 2 | `theorem` | [exists_isClopen_upper_of_not_le](../../../../../mathematics/Topology/GeneralTopology/Priestley/Variant16cad253086a4d7226fb4ae63b397ffc41869b153779eef16194bb88f5032c3b.lean/declarations/exists-isclopen-upper-of-not-le--878390b191137e0954e7f834.md) | 55 | `result-track:878390b191137e0954e7f83454479f2632b6438732fda6675c3e9957635a0437` |
| 3 | `theorem` | [exists_isClopen_lower_of_not_le](../../../../../mathematics/Topology/GeneralTopology/Priestley/Variant16cad253086a4d7226fb4ae63b397ffc41869b153779eef16194bb88f5032c3b.lean/declarations/exists-isclopen-lower-of-not-le--9d7c131e9f4926d096653b7b.md) | 59 | `result-track:9d7c131e9f4926d096653b7b227d7b41ba7f07a76b77eb39a47fe6deea793654` |
| 4 | `theorem` | [exists_isClopen_upper_or_lower_of_ne](../../../../../mathematics/Topology/GeneralTopology/Priestley/Variant16cad253086a4d7226fb4ae63b397ffc41869b153779eef16194bb88f5032c3b.lean/declarations/exists-isclopen-upper-or-lower-of-ne--5ffa97250893186c9da6d649.md) | 70 | `result-track:5ffa97250893186c9da6d6494df27aa487737b59dd53f4560d582c81a376be74` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Priestley/Variant16cad253086a4d7226fb4ae63b397ffc41869b153779eef16194bb88f5032c3b.lean/declarations/instance--0df36cf3223d16fa6c137ac0.md) | 78 | `declaration-track:0df36cf3223d16fa6c137ac0fc36ed8372d89100b0823bccd95f70ae66cf2338` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
