# Verification target: GRWTSK.Topology.Konig.Variantef919c406cb6f358bf9bffdae14806375b09054d0c3e1e02efa1c71b079fcc16

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "768f8f8d15389149f97065d52fd23914dd0f01f5",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Konig/Variantef919c406cb6f358bf9bffdae14806375b09054d0c3e1e02efa1c71b079fcc16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/Konig/Variantef919c406cb6f358bf9bffdae14806375b09054d0c3e1e02efa1c71b079fcc16.lean/index.md) · [Full source](../../../../mathematics/Topology/Konig/Variantef919c406cb6f358bf9bffdae14806375b09054d0c3e1e02efa1c71b079fcc16.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `768f8f8d15389149f97065d52fd23914dd0f01f5`.

Source path: `GRWTSK/Topology/Konig/Variantef919c406cb6f358bf9bffdae14806375b09054d0c3e1e02efa1c71b079fcc16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Konig/Variantef919c406cb6f358bf9bffdae14806375b09054d0c3e1e02efa1c71b079fcc16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Filtered.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FiniteDiagramArrow](../../../../mathematics/Topology/Konig/Variantef919c406cb6f358bf9bffdae14806375b09054d0c3e1e02efa1c71b079fcc16.lean/declarations/finitediagramarrow--64866aa71ee2d50ebaf2d572.md) | 48 | `declaration-track:64866aa71ee2d50ebaf2d572f17f62b4cef302f10023d5ab0af94c2cee82dbc9` |
| 2 | `abbrev` | [FiniteDiagram](../../../../mathematics/Topology/Konig/Variantef919c406cb6f358bf9bffdae14806375b09054d0c3e1e02efa1c71b079fcc16.lean/declarations/finitediagram--b13bf58c28d9131ff865b9a2.md) | 51 | `declaration-track:b13bf58c28d9131ff865b9a2f4ec6788fa21344654fbf6bb2f86a02bdbdc9866` |
| 3 | `def` | [partialSections](../../../../mathematics/Topology/Konig/Variantef919c406cb6f358bf9bffdae14806375b09054d0c3e1e02efa1c71b079fcc16.lean/declarations/partialsections--a8f02b955b7c8b8b9b6b98bd.md) | 57 | `declaration-track:a8f02b955b7c8b8b9b6b98bd16d39fbe54cd79ac55071eadc12fd9b62aeb1f1d` |
| 4 | `theorem` | [partialSections.nonempty](../../../../mathematics/Topology/Konig/Variantef919c406cb6f358bf9bffdae14806375b09054d0c3e1e02efa1c71b079fcc16.lean/declarations/partialsections-nonempty--9912cf4fafaa1e9abe5dfe5c.md) | 61 | `result-track:9912cf4fafaa1e9abe5dfe5c6cff7ca4b0553bc300590b7a277db1f62c391d4a` |
| 5 | `theorem` | [partialSections.directed](../../../../mathematics/Topology/Konig/Variantef919c406cb6f358bf9bffdae14806375b09054d0c3e1e02efa1c71b079fcc16.lean/declarations/partialsections-directed--76c170259891771a5251014a.md) | 74 | `result-track:76c170259891771a5251014a19ae2d22280522daaf05d0bf48ea4b9d526a79b7` |
| 6 | `theorem` | [partialSections.closed](../../../../mathematics/Topology/Konig/Variantef919c406cb6f358bf9bffdae14806375b09054d0c3e1e02efa1c71b079fcc16.lean/declarations/partialsections-closed--315482e1a1c18b289a7ac351.md) | 96 | `result-track:315482e1a1c18b289a7ac3519958480d8f6b5e519116e59f2a47db3d388f69e3` |
| 7 | `theorem` | [nonempty_limitCone_of_compact_t2_cofiltered_system](../../../../mathematics/Topology/Konig/Variantef919c406cb6f358bf9bffdae14806375b09054d0c3e1e02efa1c71b079fcc16.lean/declarations/nonempty-limitcone-of-compact-t2-cofiltered-system--c9db62d3ab6ecfede49614d3.md) | 111 | `result-track:c9db62d3ab6ecfede49614d3700a85513970222515b8b5ce3f83aec19723eea4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
